JAVA := /opt/homebrew/opt/openjdk/bin/java
JAVAC := /opt/homebrew/opt/openjdk/bin/javac
JAR := /opt/homebrew/opt/openjdk/bin/jar

CLASS_FILES := \
	target/build/com/mojang/ld22/entity/Anvil.class \
	target/build/com/mojang/ld22/entity/Zombie.class \
	target/build/com/mojang/ld22/entity/Furnace.class \
	target/build/com/mojang/ld22/entity/Inventory.class \
	target/build/com/mojang/ld22/entity/Furniture.class \
	target/build/com/mojang/ld22/entity/Slime.class \
	target/build/com/mojang/ld22/entity/Oven.class \
	target/build/com/mojang/ld22/entity/Mob.class \
	target/build/com/mojang/ld22/entity/Workbench.class \
	target/build/com/mojang/ld22/entity/ItemEntity.class \
	target/build/com/mojang/ld22/entity/Player.class \
	target/build/com/mojang/ld22/entity/Chest.class \
	target/build/com/mojang/ld22/entity/Entity.class \
	target/build/com/mojang/ld22/entity/particle/SmashParticle.class \
	target/build/com/mojang/ld22/entity/particle/TextParticle.class \
	target/build/com/mojang/ld22/entity/particle/Particle.class \
	target/build/com/mojang/ld22/entity/Lantern.class \
	target/build/com/mojang/ld22/entity/Spark.class \
	target/build/com/mojang/ld22/entity/AirWizard.class \
	target/build/com/mojang/ld22/GameApplet.class \
	target/build/com/mojang/ld22/InputHandler.class \
	target/build/com/mojang/ld22/item/ToolType.class \
	target/build/com/mojang/ld22/item/ResourceItem.class \
	target/build/com/mojang/ld22/item/FurnitureItem.class \
	target/build/com/mojang/ld22/item/ToolItem.class \
	target/build/com/mojang/ld22/item/PowerGloveItem.class \
	target/build/com/mojang/ld22/item/resource/PlantableResource.class \
	target/build/com/mojang/ld22/item/resource/FoodResource.class \
	target/build/com/mojang/ld22/item/resource/Resource.class \
	target/build/com/mojang/ld22/item/Item.class \
	target/build/com/mojang/ld22/screen/TitleMenu.class \
	target/build/com/mojang/ld22/screen/LevelTransitionMenu.class \
	target/build/com/mojang/ld22/screen/AboutMenu.class \
	target/build/com/mojang/ld22/screen/WonMenu.class \
	target/build/com/mojang/ld22/screen/DeadMenu.class \
	target/build/com/mojang/ld22/screen/CraftingMenu.class \
	target/build/com/mojang/ld22/screen/ListItem.class \
	target/build/com/mojang/ld22/screen/Menu.class \
	target/build/com/mojang/ld22/screen/InventoryMenu.class \
	target/build/com/mojang/ld22/screen/ContainerMenu.class \
	target/build/com/mojang/ld22/screen/InstructionsMenu.class \
	target/build/com/mojang/ld22/Game.class \
	target/build/com/mojang/ld22/level/tile/InfiniteFallTile.class \
	target/build/com/mojang/ld22/level/tile/WaterTile.class \
	target/build/com/mojang/ld22/level/tile/CloudCactusTile.class \
	target/build/com/mojang/ld22/level/tile/CactusTile.class \
	target/build/com/mojang/ld22/level/tile/StoneTile.class \
	target/build/com/mojang/ld22/level/tile/OreTile.class \
	target/build/com/mojang/ld22/level/tile/RockTile.class \
	target/build/com/mojang/ld22/level/tile/Tile.class \
	target/build/com/mojang/ld22/level/tile/HoleTile.class \
	target/build/com/mojang/ld22/level/tile/TreeTile.class \
	target/build/com/mojang/ld22/level/tile/DirtTile.class \
	target/build/com/mojang/ld22/level/tile/LavaTile.class \
	target/build/com/mojang/ld22/level/tile/CloudTile.class \
	target/build/com/mojang/ld22/level/tile/WheatTile.class \
	target/build/com/mojang/ld22/level/tile/FlowerTile.class \
	target/build/com/mojang/ld22/level/tile/SaplingTile.class \
	target/build/com/mojang/ld22/level/tile/GrassTile.class \
	target/build/com/mojang/ld22/level/tile/HardRockTile.class \
	target/build/com/mojang/ld22/level/tile/SandTile.class \
	target/build/com/mojang/ld22/level/tile/FarmTile.class \
	target/build/com/mojang/ld22/level/tile/StairsTile.class \
	target/build/com/mojang/ld22/level/levelgen/LevelGen.class \
	target/build/com/mojang/ld22/level/Level.class \
	target/build/com/mojang/ld22/crafting/Crafting.class \
	target/build/com/mojang/ld22/crafting/ResourceRecipe.class \
	target/build/com/mojang/ld22/crafting/ToolRecipe.class \
	target/build/com/mojang/ld22/crafting/FurnitureRecipe.class \
	target/build/com/mojang/ld22/crafting/Recipe.class \
	target/build/com/mojang/ld22/sound/Sound.class \
	target/build/com/mojang/ld22/gfx/Sprite.class \
	target/build/com/mojang/ld22/gfx/Font.class \
	target/build/com/mojang/ld22/gfx/SpriteSheet.class \
	target/build/com/mojang/ld22/gfx/Screen.class \
	target/build/com/mojang/ld22/gfx/Color.class

RESOURCES := \
	res/playerhurt.wav \
	res/icons2.png \
	res/craft.wav \
	res/bossdeath.wav \
	res/pickup.wav \
	res/icons.png \
	res/monsterhurt.wav \
	res/death.wav \
	res/test.wav

.PHONY: build run clean

build: target/minicraft.jar

run: target/minicraft.jar
	$(JAVA) -jar $<

clean:
	rm -rf target

target/minicraft.jar: $(CLASS_FILES) $(RESOURCES)
	$(JAR) cfe $@ com.mojang.ld22.Game -C target/build . -C res .

target/build/%.class: src/%.java
	$(JAVAC) --source-path src -d target/build $<
