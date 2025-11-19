@interface HUCCMosaicLayout
+ (id)allLandscapeLayouts;
+ (id)allPortraitLayouts;
+ (id)sortDescriptors;
- (BOOL)isComplete;
- (HUCCMosaicLayout)initWithLayoutType:(unint64_t)a3;
- (NSArray)arrangedItems;
- (NSMutableArray)accessories;
- (NSMutableArray)fillers;
- (NSMutableArray)scenes;
- (id)description;
- (void)_addAccessoryItem:(id)a3;
- (void)_addFillerItem:(id)a3;
- (void)_addSceneItem:(id)a3;
- (void)_registerPossibleMiss;
- (void)_sizeAllItems;
- (void)addItem:(id)a3;
@end

@implementation HUCCMosaicLayout

- (HUCCMosaicLayout)initWithLayoutType:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = HUCCMosaicLayout;
  v4 = [(HUCCMosaicLayout *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_layoutType = a3;
    if (a3 <= 4)
    {
      if (a3 > 2)
      {
        if (a3 == 3)
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

      if (a3 == 1)
      {
        v4->_scenesNeeded = 0;
        v4->_accessoriesNeeded = 0;
        v4->_priority = 1;
LABEL_22:
        v6 = @"HUCCLayoutPortraitHomeOnly";
        goto LABEL_23;
      }

      if (a3 == 2)
      {
        v4->_accessoriesNeeded = 4;
        *&v4->_priority = xmmword_20D5CA450;
        v6 = @"HUCCLayoutPortraitOneSceneFourAccessories";
        goto LABEL_23;
      }
    }

    else
    {
      if (a3 <= 6)
      {
        if (a3 == 5)
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

      switch(a3)
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

    NSLog(&cfstr_UnknownGridLay.isa, a3);
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
  v3 = [(HUCCMosaicLayout *)self layoutDescription];
  v4 = [v2 stringWithFormat:@"HUCCMosaicLayout - %@", v3];

  return v4;
}

- (NSMutableArray)scenes
{
  scenes = self->_scenes;
  if (!scenes)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_scenes;
    self->_scenes = v4;

    scenes = self->_scenes;
  }

  return scenes;
}

- (NSMutableArray)accessories
{
  accessories = self->_accessories;
  if (!accessories)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_accessories;
    self->_accessories = v4;

    accessories = self->_accessories;
  }

  return accessories;
}

- (NSMutableArray)fillers
{
  fillers = self->_fillers;
  if (!fillers)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_fillers;
    self->_fillers = v4;

    fillers = self->_fillers;
  }

  return fillers;
}

- (void)addItem:(id)a3
{
  v7 = a3;
  v4 = [v7 itemType];
  if (v4 <= 1)
  {
    if (v4)
    {
      v5 = v4 == 1;
      v6 = v7;
      if (!v5)
      {
        goto LABEL_13;
      }

      [(HUCCMosaicLayout *)self _addSceneItem:v7];
    }

    else
    {
      [(HUCCMosaicLayout *)self setHomeItem:v7];
    }

LABEL_12:
    v6 = v7;
    goto LABEL_13;
  }

  if (v4 == 2)
  {
    [(HUCCMosaicLayout *)self _addAccessoryItem:v7];
    goto LABEL_12;
  }

  v5 = v4 == 3;
  v6 = v7;
  if (v5)
  {
    [(HUCCMosaicLayout *)self _addFillerItem:v7];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_addSceneItem:(id)a3
{
  v5 = a3;
  if ([(HUCCMosaicLayout *)self scenesNeeded])
  {
    v4 = [(HUCCMosaicLayout *)self scenes];
    [v4 addObject:v5];

    [(HUCCMosaicLayout *)self setScenesNeeded:[(HUCCMosaicLayout *)self scenesNeeded]- 1];
  }

  else
  {
    [(HUCCMosaicLayout *)self _registerPossibleMiss];
  }
}

- (void)_addAccessoryItem:(id)a3
{
  v5 = a3;
  if ([(HUCCMosaicLayout *)self accessoriesNeeded])
  {
    v4 = [(HUCCMosaicLayout *)self accessories];
    [v4 addObject:v5];

    [(HUCCMosaicLayout *)self setAccessoriesNeeded:[(HUCCMosaicLayout *)self accessoriesNeeded]- 1];
  }

  else
  {
    [(HUCCMosaicLayout *)self _registerPossibleMiss];
  }
}

- (void)_addFillerItem:(id)a3
{
  v4 = a3;
  v5 = [(HUCCMosaicLayout *)self fillers];
  [v5 addObject:v4];

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
  v3 = [(HUCCMosaicLayout *)self homeItem];
  v4 = v3 && ![(HUCCMosaicLayout *)self scenesNeeded]&& [(HUCCMosaicLayout *)self accessoriesNeeded]== 0;

  return v4;
}

- (void)_sizeAllItems
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(HUCCMosaicLayout *)self layoutType];
  v4 = [(HUCCMosaicLayout *)self homeItem];
  v5 = v4;
  v6 = 2;
  if (v3 == 6)
  {
    v6 = 4;
  }

  if (v3 == 1)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  [v4 setItemSize:v7];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [(HUCCMosaicLayout *)self scenes];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v27 + 1) + 8 * v12++) setItemSize:2];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  v13 = [(HUCCMosaicLayout *)self accessories];
  v14 = [v13 count];

  if (v14)
  {
    v15 = 0;
    do
    {
      v16 = [(HUCCMosaicLayout *)self accessories];
      v17 = [v16 objectAtIndexedSubscript:v15];

      [v17 setItemSize:1];
      ++v15;
      v18 = [(HUCCMosaicLayout *)self accessories];
      v19 = [v18 count];
    }

    while (v15 < v19);
  }

  v20 = [(HUCCMosaicLayout *)self fillers];
  v21 = [v20 count];

  if (v21)
  {
    v22 = 0;
    do
    {
      v23 = [(HUCCMosaicLayout *)self fillers];
      v24 = [v23 objectAtIndexedSubscript:v22];

      [v24 setItemSize:1];
      ++v22;
      v25 = [(HUCCMosaicLayout *)self fillers];
      v26 = [v25 count];
    }

    while (v22 < v26);
  }
}

- (NSArray)arrangedItems
{
  [(HUCCMosaicLayout *)self _sizeAllItems];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HUCCMosaicLayout *)self homeItem];
  [v3 na_safeAddObject:v4];

  v5 = [(HUCCMosaicLayout *)self scenes];
  [v3 na_safeAddObjectsFromArray:v5];

  v6 = [(HUCCMosaicLayout *)self accessories];
  [v3 na_safeAddObjectsFromArray:v6];

  v7 = [(HUCCMosaicLayout *)self fillers];
  [v3 na_safeAddObjectsFromArray:v7];

  return v3;
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
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [[HUCCMosaicLayout alloc] initWithLayoutType:4];
  [v2 addObject:v3];

  v4 = [[HUCCMosaicLayout alloc] initWithLayoutType:2];
  [v2 addObject:v4];

  v5 = [[HUCCMosaicLayout alloc] initWithLayoutType:3];
  [v2 addObject:v5];

  v6 = [[HUCCMosaicLayout alloc] initWithLayoutType:5];
  [v2 addObject:v6];

  v7 = [[HUCCMosaicLayout alloc] initWithLayoutType:1];
  [v2 addObject:v7];

  return v2;
}

+ (id)allLandscapeLayouts
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [[HUCCMosaicLayout alloc] initWithLayoutType:7];
  [v2 addObject:v3];

  v4 = [[HUCCMosaicLayout alloc] initWithLayoutType:8];
  [v2 addObject:v4];

  v5 = [[HUCCMosaicLayout alloc] initWithLayoutType:9];
  [v2 addObject:v5];

  v6 = [[HUCCMosaicLayout alloc] initWithLayoutType:6];
  [v2 addObject:v6];

  return v2;
}

@end