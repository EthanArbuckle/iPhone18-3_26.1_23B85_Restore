@interface HUCCMosaicLayout
+ (id)allLandscapeLayouts;
+ (id)allPortraitLayouts;
+ (id)sortDescriptors;
- (BOOL)isComplete;
- (HUCCMosaicLayout)initWithLayoutType:(unint64_t)type;
- (NSArray)arrangedItems;
- (NSMutableArray)accessories;
- (NSMutableArray)fillers;
- (NSMutableArray)scenes;
- (id)description;
- (void)_addAccessoryItem:(id)item;
- (void)_addFillerItem:(id)item;
- (void)_addSceneItem:(id)item;
- (void)_registerPossibleMiss;
- (void)_sizeAllItems;
- (void)addItem:(id)item;
@end

@implementation HUCCMosaicLayout

- (HUCCMosaicLayout)initWithLayoutType:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = HUCCMosaicLayout;
  v4 = [(HUCCMosaicLayout *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_layoutType = type;
    if (type <= 4)
    {
      if (type > 2)
      {
        if (type == 3)
        {
          v4->_accessoriesNeeded = 2;
          *&v4->_priority = vdupq_n_s64(2uLL);
          v6 = @"HUCCLayoutPortraitTwoScenesTwoAccessories";
        }

        else
        {
          v4->_accessoriesNeeded = 6;
          *&v4->_priority = xmmword_20D5C35D0;
          v6 = @"HUCCLayoutPortraitSixAccessories";
        }

        goto LABEL_23;
      }

      if (type == 1)
      {
        v4->_scenesNeeded = 0;
        v4->_accessoriesNeeded = 0;
        v4->_priority = 1;
LABEL_22:
        v6 = @"HUCCLayoutPortraitHomeOnly";
        goto LABEL_23;
      }

      if (type == 2)
      {
        v4->_accessoriesNeeded = 4;
        *&v4->_priority = xmmword_20D5CA450;
        v6 = @"HUCCLayoutPortraitOneSceneFourAccessories";
        goto LABEL_23;
      }
    }

    else
    {
      if (type <= 6)
      {
        if (type == 5)
        {
          v4->_accessoriesNeeded = 0;
          *&v4->_priority = xmmword_20D5CA460;
          v6 = @"HUCCLayoutPortraitThreeScenes";
        }

        else
        {
          v4->_scenesNeeded = 0;
          v4->_accessoriesNeeded = 0;
          v4->_priority = 1;
          v6 = @"HUCCLayoutLandscapeHomeOnly";
        }

        goto LABEL_23;
      }

      switch(type)
      {
        case 7uLL:
          v4->_accessoriesNeeded = 0;
          *&v4->_priority = vdupq_n_s64(2uLL);
          v6 = @"HUCCLayoutLandscapeTwoScenes";
          goto LABEL_23;
        case 8uLL:
          v4->_accessoriesNeeded = 4;
          *&v4->_priority = xmmword_20D5C35D0;
          v6 = @"HUCCLayoutLandscapeFourAccessories";
          goto LABEL_23;
        case 9uLL:
          v4->_accessoriesNeeded = 2;
          *&v4->_priority = xmmword_20D5CA450;
          v6 = @"HUCCLayoutLandscapeOneSceneTwoAccessories";
LABEL_23:
          layoutDescription = v5->_layoutDescription;
          v5->_layoutDescription = &v6->isa;

          v5->_numberOfFilledItems = v5->_accessoriesNeeded + v5->_scenesNeeded;
          v5->_numberOfMisses = 0;
          return v5;
      }
    }

    NSLog(&cfstr_UnknownGridLay.isa, type);
    v5->_scenesNeeded = 0;
    v5->_accessoriesNeeded = 0;
    *&v5->_layoutType = vdupq_n_s64(1uLL);
    goto LABEL_22;
  }

  return v5;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  layoutDescription = [(HUCCMosaicLayout *)self layoutDescription];
  v4 = [v2 stringWithFormat:@"HUCCMosaicLayout - %@", layoutDescription];

  return v4;
}

- (NSMutableArray)scenes
{
  scenes = self->_scenes;
  if (!scenes)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_scenes;
    self->_scenes = array;

    scenes = self->_scenes;
  }

  return scenes;
}

- (NSMutableArray)accessories
{
  accessories = self->_accessories;
  if (!accessories)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_accessories;
    self->_accessories = array;

    accessories = self->_accessories;
  }

  return accessories;
}

- (NSMutableArray)fillers
{
  fillers = self->_fillers;
  if (!fillers)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_fillers;
    self->_fillers = array;

    fillers = self->_fillers;
  }

  return fillers;
}

- (void)addItem:(id)item
{
  itemCopy = item;
  itemType = [itemCopy itemType];
  if (itemType <= 1)
  {
    if (itemType)
    {
      v5 = itemType == 1;
      v6 = itemCopy;
      if (!v5)
      {
        goto LABEL_13;
      }

      [(HUCCMosaicLayout *)self _addSceneItem:itemCopy];
    }

    else
    {
      [(HUCCMosaicLayout *)self setHomeItem:itemCopy];
    }

LABEL_12:
    v6 = itemCopy;
    goto LABEL_13;
  }

  if (itemType == 2)
  {
    [(HUCCMosaicLayout *)self _addAccessoryItem:itemCopy];
    goto LABEL_12;
  }

  v5 = itemType == 3;
  v6 = itemCopy;
  if (v5)
  {
    [(HUCCMosaicLayout *)self _addFillerItem:itemCopy];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_addSceneItem:(id)item
{
  itemCopy = item;
  if ([(HUCCMosaicLayout *)self scenesNeeded])
  {
    scenes = [(HUCCMosaicLayout *)self scenes];
    [scenes addObject:itemCopy];

    [(HUCCMosaicLayout *)self setScenesNeeded:[(HUCCMosaicLayout *)self scenesNeeded]- 1];
  }

  else
  {
    [(HUCCMosaicLayout *)self _registerPossibleMiss];
  }
}

- (void)_addAccessoryItem:(id)item
{
  itemCopy = item;
  if ([(HUCCMosaicLayout *)self accessoriesNeeded])
  {
    accessories = [(HUCCMosaicLayout *)self accessories];
    [accessories addObject:itemCopy];

    [(HUCCMosaicLayout *)self setAccessoriesNeeded:[(HUCCMosaicLayout *)self accessoriesNeeded]- 1];
  }

  else
  {
    [(HUCCMosaicLayout *)self _registerPossibleMiss];
  }
}

- (void)_addFillerItem:(id)item
{
  itemCopy = item;
  fillers = [(HUCCMosaicLayout *)self fillers];
  [fillers addObject:itemCopy];

  v6 = [(HUCCMosaicLayout *)self accessoriesNeeded]- 1;

  [(HUCCMosaicLayout *)self setAccessoriesNeeded:v6];
}

- (void)_registerPossibleMiss
{
  if (![(HUCCMosaicLayout *)self isComplete])
  {
    v3 = [(HUCCMosaicLayout *)self numberOfMisses]+ 1;

    [(HUCCMosaicLayout *)self setNumberOfMisses:v3];
  }
}

- (BOOL)isComplete
{
  homeItem = [(HUCCMosaicLayout *)self homeItem];
  v4 = homeItem && ![(HUCCMosaicLayout *)self scenesNeeded]&& [(HUCCMosaicLayout *)self accessoriesNeeded]== 0;

  return v4;
}

- (void)_sizeAllItems
{
  v32 = *MEMORY[0x277D85DE8];
  layoutType = [(HUCCMosaicLayout *)self layoutType];
  homeItem = [(HUCCMosaicLayout *)self homeItem];
  v5 = homeItem;
  v6 = 2;
  if (layoutType == 6)
  {
    v6 = 4;
  }

  if (layoutType == 1)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  [homeItem setItemSize:v7];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  scenes = [(HUCCMosaicLayout *)self scenes];
  v9 = [scenes countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(scenes);
        }

        [*(*(&v27 + 1) + 8 * v12++) setItemSize:2];
      }

      while (v10 != v12);
      v10 = [scenes countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  accessories = [(HUCCMosaicLayout *)self accessories];
  v14 = [accessories count];

  if (v14)
  {
    v15 = 0;
    do
    {
      accessories2 = [(HUCCMosaicLayout *)self accessories];
      v17 = [accessories2 objectAtIndexedSubscript:v15];

      [v17 setItemSize:1];
      ++v15;
      accessories3 = [(HUCCMosaicLayout *)self accessories];
      v19 = [accessories3 count];
    }

    while (v15 < v19);
  }

  fillers = [(HUCCMosaicLayout *)self fillers];
  v21 = [fillers count];

  if (v21)
  {
    v22 = 0;
    do
    {
      fillers2 = [(HUCCMosaicLayout *)self fillers];
      v24 = [fillers2 objectAtIndexedSubscript:v22];

      [v24 setItemSize:1];
      ++v22;
      fillers3 = [(HUCCMosaicLayout *)self fillers];
      v26 = [fillers3 count];
    }

    while (v22 < v26);
  }
}

- (NSArray)arrangedItems
{
  [(HUCCMosaicLayout *)self _sizeAllItems];
  array = [MEMORY[0x277CBEB18] array];
  homeItem = [(HUCCMosaicLayout *)self homeItem];
  [array na_safeAddObject:homeItem];

  scenes = [(HUCCMosaicLayout *)self scenes];
  [array na_safeAddObjectsFromArray:scenes];

  accessories = [(HUCCMosaicLayout *)self accessories];
  [array na_safeAddObjectsFromArray:accessories];

  fillers = [(HUCCMosaicLayout *)self fillers];
  [array na_safeAddObjectsFromArray:fillers];

  return array;
}

+ (id)sortDescriptors
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:0 ascending:0 comparator:&__block_literal_global_5];
  v3 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:0 ascending:0 comparator:&__block_literal_global_35];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

uint64_t __35__HUCCMosaicLayout_sortDescriptors__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 numberOfFilledItems];
  if (v6 >= [v5 numberOfFilledItems])
  {
    v8 = [v4 numberOfFilledItems];
    v7 = v8 > [v5 numberOfFilledItems];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t __35__HUCCMosaicLayout_sortDescriptors__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 numberOfMisses];
  if (v6 >= [v5 numberOfMisses])
  {
    v8 = [v4 numberOfMisses];
    if (v8 <= [v5 numberOfMisses])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (id)allPortraitLayouts
{
  array = [MEMORY[0x277CBEB18] array];
  v3 = [[HUCCMosaicLayout alloc] initWithLayoutType:4];
  [array addObject:v3];

  v4 = [[HUCCMosaicLayout alloc] initWithLayoutType:2];
  [array addObject:v4];

  v5 = [[HUCCMosaicLayout alloc] initWithLayoutType:3];
  [array addObject:v5];

  v6 = [[HUCCMosaicLayout alloc] initWithLayoutType:5];
  [array addObject:v6];

  v7 = [[HUCCMosaicLayout alloc] initWithLayoutType:1];
  [array addObject:v7];

  return array;
}

+ (id)allLandscapeLayouts
{
  array = [MEMORY[0x277CBEB18] array];
  v3 = [[HUCCMosaicLayout alloc] initWithLayoutType:7];
  [array addObject:v3];

  v4 = [[HUCCMosaicLayout alloc] initWithLayoutType:8];
  [array addObject:v4];

  v5 = [[HUCCMosaicLayout alloc] initWithLayoutType:9];
  [array addObject:v5];

  v6 = [[HUCCMosaicLayout alloc] initWithLayoutType:6];
  [array addObject:v6];

  return array;
}

@end