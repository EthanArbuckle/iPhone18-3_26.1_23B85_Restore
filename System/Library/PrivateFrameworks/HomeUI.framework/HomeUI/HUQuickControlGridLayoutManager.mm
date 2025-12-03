@interface HUQuickControlGridLayoutManager
- (HUQuickControlGridLayoutManager)init;
- (HUQuickControlGridLayoutManager)initWithCollectionView:(id)view itemManager:(id)manager layoutOptions:(id)options;
- (NSArray)collectionSectionSettings;
- (UICollectionView)collectionView;
- (double)interItemSpacingForItemSize:(unint64_t)size layoutOptions:(id)options;
- (double)sectionTopPaddingInSection:(unint64_t)section withLayoutOptions:(id)options;
- (id)_settingsForSectionNumber:(unint64_t)number sectionIdentifier:(id)identifier layoutOptions:(id)options;
- (id)_viewProfileClassesForSection:(unint64_t)section;
- (int64_t)viewSizeSubclass;
- (unint64_t)_mostImportantItemTypeForSection:(unint64_t)section;
- (unint64_t)itemSizeForSection:(unint64_t)section;
- (unint64_t)numberOfColumnsInSection:(unint64_t)section;
- (unint64_t)titlePositionForSection:(unint64_t)section;
- (void)generateSectionSettings;
- (void)setLayoutOptions:(id)options;
@end

@implementation HUQuickControlGridLayoutManager

- (HUQuickControlGridLayoutManager)initWithCollectionView:(id)view itemManager:(id)manager layoutOptions:(id)options
{
  viewCopy = view;
  managerCopy = manager;
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = HUQuickControlGridLayoutManager;
  v11 = [(HUQuickControlGridLayoutManager *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_collectionView, viewCopy);
    objc_storeStrong(&v12->_itemManager, manager);
    objc_storeStrong(&v12->_layoutOptions, options);
    array = [MEMORY[0x277CBEB18] array];
    sectionSettingsArray = v12->_sectionSettingsArray;
    v12->_sectionSettingsArray = array;

    [(HUQuickControlGridLayoutManager *)v12 generateSectionSettings];
  }

  return v12;
}

- (HUQuickControlGridLayoutManager)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCollectionView_itemManager_layoutOptions_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlGridLayoutManager.m" lineNumber:57 description:{@"%s is unavailable; use %@ instead", "-[HUQuickControlGridLayoutManager init]", v5}];

  return 0;
}

- (void)setLayoutOptions:(id)options
{
  optionsCopy = options;
  if (self->_layoutOptions != optionsCopy)
  {
    v6 = optionsCopy;
    objc_storeStrong(&self->_layoutOptions, options);
    [(HUQuickControlGridLayoutManager *)self generateSectionSettings];
    optionsCopy = v6;
  }
}

- (NSArray)collectionSectionSettings
{
  sectionSettingsArray = [(HUQuickControlGridLayoutManager *)self sectionSettingsArray];
  v3 = [sectionSettingsArray copy];

  return v3;
}

- (unint64_t)itemSizeForSection:(unint64_t)section
{
  v34[2] = *MEMORY[0x277D85DE8];
  itemManager = [(HUQuickControlGridLayoutManager *)self itemManager];
  v6 = [itemManager displayedItemsInSection:section];
  v7 = [v6 count];

  itemManager2 = [(HUQuickControlGridLayoutManager *)self itemManager];
  objc_opt_class();
  LOBYTE(v6) = objc_opt_isKindOfClass();

  if ((v6 & 1) == 0)
  {
    viewSizeSubclass = [(HUQuickControlGridLayoutManager *)self viewSizeSubclass];
    itemManager3 = [(HUQuickControlGridLayoutManager *)self itemManager];
    v12 = [itemManager3 displayedSectionIdentifierForSectionIndex:section];

    v13 = [(HUQuickControlGridLayoutManager *)self _mostImportantItemTypeForSection:section];
    if ([v12 hasSuffix:@"supplementary"])
    {
      if (v13 == 4)
      {
        v33[0] = &unk_282490C50;
        v33[1] = &unk_282490C80;
        v34[0] = &unk_282490C68;
        v34[1] = &unk_282490C98;
        v14 = MEMORY[0x277CBEAC0];
        v15 = v34;
        v16 = v33;
LABEL_8:
        v17 = 2;
LABEL_23:
        v21 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
        v9 = HUConstantIntegerForViewSizeSubclass(viewSizeSubclass, v21);

        goto LABEL_24;
      }

      goto LABEL_18;
    }

    v9 = 2;
    if (v13 <= 1)
    {
      if (!v13)
      {
        itemManager4 = [(HUQuickControlGridLayoutManager *)self itemManager];
        v19 = [itemManager4 displayedItemsInSectionWithIdentifier:@"supplementary"];
        v20 = [v19 na_any:&__block_literal_global_26];

        if (v20)
        {
          v29[0] = &unk_282490C50;
          v29[1] = &unk_282490C80;
          v30[0] = &unk_282490CB0;
          v30[1] = &unk_282490C98;
          v14 = MEMORY[0x277CBEAC0];
          v15 = v30;
          v16 = v29;
        }

        else
        {
          v27[0] = &unk_282490C50;
          v27[1] = &unk_282490C80;
          v28[0] = &unk_282490C68;
          v28[1] = &unk_282490CC8;
          v14 = MEMORY[0x277CBEAC0];
          v15 = v28;
          v16 = v27;
        }

        goto LABEL_8;
      }

      if (v13 == 1)
      {
        if (v7 < 8)
        {
          if (v7 > 2)
          {
            v9 = 2;
          }

          else
          {
            v9 = 3;
          }

          goto LABEL_24;
        }

        v31[0] = &unk_282490C50;
        v31[1] = &unk_282490C80;
        v32[0] = &unk_282490C68;
        v32[1] = &unk_282490C98;
        v14 = MEMORY[0x277CBEAC0];
        v15 = v32;
        v16 = v31;
        goto LABEL_8;
      }

LABEL_24:

      return v9;
    }

    if (v13 == 2)
    {
      v25[0] = &unk_282490C50;
      v25[1] = &unk_282490C80;
      v26[0] = &unk_282490C68;
      v26[1] = &unk_282490CC8;
      v25[2] = &unk_282490CE0;
      v26[2] = &unk_282490CC8;
      v14 = MEMORY[0x277CBEAC0];
      v15 = v26;
      v16 = v25;
    }

    else
    {
      if (v13 != 7)
      {
        goto LABEL_24;
      }

      if (v7 != 1)
      {
LABEL_18:
        v9 = 1;
        goto LABEL_24;
      }

      v23[0] = &unk_282490C50;
      v23[1] = &unk_282490C80;
      v24[0] = &unk_282490C98;
      v24[1] = &unk_282490CC8;
      v23[2] = &unk_282490CE0;
      v24[2] = &unk_282490CC8;
      v14 = MEMORY[0x277CBEAC0];
      v15 = v24;
      v16 = v23;
    }

    v17 = 3;
    goto LABEL_23;
  }

  if (v7 > 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t __54__HUQuickControlGridLayoutManager_itemSizeForSection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)generateSectionSettings
{
  itemManager = [(HUQuickControlGridLayoutManager *)self itemManager];
  numberOfSections = [itemManager numberOfSections];

  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:numberOfSections];
  [(HUQuickControlGridLayoutManager *)self setSectionSettingsArray:v5];

  itemManager2 = [(HUQuickControlGridLayoutManager *)self itemManager];
  if ([itemManager2 sectionIndexForDisplayedSectionIdentifier:@"sensors"])
  {
    v7 = 0;
  }

  else
  {
    itemManager3 = [(HUQuickControlGridLayoutManager *)self itemManager];
    v9 = [itemManager3 displayedSectionIdentifierForSectionIndex:1];
    v7 = [v9 hasSuffix:@"grid"];
  }

  if (numberOfSections)
  {
    for (i = 0; i != numberOfSections; ++i)
    {
      itemManager4 = [(HUQuickControlGridLayoutManager *)self itemManager];
      v12 = [itemManager4 displayedSectionIdentifierForSectionIndex:i];

      layoutOptions = [(HUQuickControlGridLayoutManager *)self layoutOptions];
      v14 = [v12 isEqualToString:@"sensors"];
      v15 = off_277DB10D8;
      if ((v14 & 1) != 0 || (v16 = [(HUQuickControlGridLayoutManager *)self _mostImportantItemTypeForSection:i], v15 = off_277DB0FC8, v16 == 6))
      {
        v17 = *v15;
        layoutOptions2 = [(HUQuickControlGridLayoutManager *)self layoutOptions];
        [layoutOptions2 viewSize];
        v19 = [(__objc2_class *)v17 defaultOptionsForViewSize:?];

        layoutOptions = v19;
      }

      v20 = [(HUQuickControlGridLayoutManager *)self _settingsForSectionNumber:i sectionIdentifier:v12 layoutOptions:layoutOptions];
      if (v7 && [v12 isEqualToString:@"grid"])
      {
        [layoutOptions minimumSectionToSensorSectionSpacing];
        [v20 setSectionTopPadding:?];
      }

      else if ([v12 isEqualToString:@"sensors"])
      {
        [v20 setHorizontalAlignment:3];
      }

      sectionSettingsArray = [(HUQuickControlGridLayoutManager *)self sectionSettingsArray];
      [sectionSettingsArray addObject:v20];
    }
  }
}

- (id)_settingsForSectionNumber:(unint64_t)number sectionIdentifier:(id)identifier layoutOptions:(id)options
{
  optionsCopy = options;
  identifierCopy = identifier;
  v10 = objc_alloc_init(HUQuickControlCollectionGridLayoutSettings);
  [(HUQuickControlCollectionGridLayoutSettings *)v10 setSectionNumber:number];
  [(HUQuickControlCollectionGridLayoutSettings *)v10 setSectionIdentifier:identifierCopy];

  itemManager = [(HUQuickControlGridLayoutManager *)self itemManager];
  v12 = [itemManager titleForSection:number];
  [(HUQuickControlCollectionGridLayoutSettings *)v10 setSectionHeader:v12];

  itemManager2 = [(HUQuickControlGridLayoutManager *)self itemManager];
  v14 = [itemManager2 attributedTitleForSection:number];
  [(HUQuickControlCollectionGridLayoutSettings *)v10 setSectionAttributedHeader:v14];

  [(HUQuickControlCollectionGridLayoutSettings *)v10 setTitlePosition:[(HUQuickControlGridLayoutManager *)self titlePositionForSection:number]];
  [(HUQuickControlGridLayoutManager *)self sectionTopPaddingInSection:number withLayoutOptions:optionsCopy];
  [(HUQuickControlCollectionGridLayoutSettings *)v10 setSectionTopPadding:?];
  [optionsCopy rowSpacing];
  [(HUQuickControlCollectionGridLayoutSettings *)v10 setRowSpacing:?];
  -[HUQuickControlCollectionGridLayoutSettings setPreferredLayoutStyle:](v10, "setPreferredLayoutStyle:", [optionsCopy preferredLayoutStyle]);
  [(HUQuickControlCollectionGridLayoutSettings *)v10 setHorizontalAlignment:3];
  v15 = [(HUQuickControlGridLayoutManager *)self itemSizeForSection:number];
  [(HUQuickControlCollectionGridLayoutSettings *)v10 setItemSize:v15];
  [(HUQuickControlGridLayoutManager *)self interItemSpacingForItemSize:v15 layoutOptions:optionsCopy];
  v17 = v16;

  [(HUQuickControlCollectionGridLayoutSettings *)v10 setInteritemSpacing:v17];
  itemManager3 = [(HUQuickControlGridLayoutManager *)self itemManager];
  v19 = [itemManager3 displayedItemsInSection:number];
  v20 = [v19 count];

  v21 = [(HUQuickControlGridLayoutManager *)self numberOfColumnsInSection:number];
  [(HUQuickControlCollectionGridLayoutSettings *)v10 setNumberOfItems:v20];
  [(HUQuickControlCollectionGridLayoutSettings *)v10 setNumberOfColumns:v21];
  if (v20 <= v21)
  {
    v22 = 1;
  }

  else
  {
    v22 = vcvtpd_u64_f64(v20 / v21);
  }

  [(HUQuickControlCollectionGridLayoutSettings *)v10 setNumberOfRows:v22];

  return v10;
}

- (double)interItemSpacingForItemSize:(unint64_t)size layoutOptions:(id)options
{
  optionsCopy = options;
  v7 = optionsCopy;
  if (size > 1)
  {
    if (size == 2)
    {
      [optionsCopy interitemSpacingForRegularControlSize];
      goto LABEL_10;
    }

    if (size == 3)
    {
      [optionsCopy interitemSpacingForLargeControlSize];
      goto LABEL_10;
    }
  }

  else
  {
    if (!size)
    {
      [optionsCopy interitemSpacingForExtraSmallControlSize];
      goto LABEL_10;
    }

    if (size == 1)
    {
      [optionsCopy interitemSpacingForSmallControlSize];
LABEL_10:
      v4 = v8;
    }
  }

  return v4;
}

- (double)sectionTopPaddingInSection:(unint64_t)section withLayoutOptions:(id)options
{
  optionsCopy = options;
  v7 = optionsCopy;
  if (section)
  {
    [optionsCopy minimumSectionSpacing];
    v9 = v8;
    itemManager = [(HUQuickControlGridLayoutManager *)self itemManager];
    v11 = [itemManager displayedSectionIdentifierForSectionIndex:section];

    if ([v11 hasSuffix:@"supplementary"])
    {
      v12 = [(HUQuickControlGridLayoutManager *)self _mostImportantItemTypeForSection:section];
      v13 = [(HUQuickControlGridLayoutManager *)self _mostImportantItemTypeForSection:section - 1];
      if (v12 == 3 && v13 == 2)
      {
        [v7 thermostatSectionSpacingOverride];
        v9 = v14;
      }
    }

    else
    {
      v16 = [v11 isEqualToString:@"sensors"];
      v17 = section - 1;
      if (section != 1 && v16)
      {
        itemManager2 = [(HUQuickControlGridLayoutManager *)self itemManager];
        v19 = [itemManager2 displayedSectionIdentifierForSectionIndex:section - 1];

        itemManager3 = [(HUQuickControlGridLayoutManager *)self itemManager];
        v21 = section - 2;
        v22 = [itemManager3 displayedSectionIdentifierForSectionIndex:section - 2];

        v23 = [(HUQuickControlGridLayoutManager *)self _mostImportantItemTypeForSection:v17];
        v24 = [(HUQuickControlGridLayoutManager *)self _mostImportantItemTypeForSection:v21];
        if ([v19 hasSuffix:@"supplementary"] && objc_msgSend(v22, "hasSuffix:", @"grid") && v23 == 3 && v24 == 2)
        {
          [v7 thermostatSectionSpacingOverride];
          v9 = v25;
        }
      }
    }
  }

  else
  {
    [optionsCopy minimumNavBarToControlsSpacing];
    v9 = v15;
  }

  return v9;
}

- (unint64_t)numberOfColumnsInSection:(unint64_t)section
{
  itemManager = [(HUQuickControlGridLayoutManager *)self itemManager];
  v6 = [itemManager displayedItemsInSection:section];
  v7 = [v6 count];

  itemManager2 = [(HUQuickControlGridLayoutManager *)self itemManager];
  v9 = [itemManager2 displayedSectionIdentifierForSectionIndex:section];

  if ([v9 hasSuffix:@"grid"])
  {
    v10 = [(HUQuickControlGridLayoutManager *)self _mostImportantItemTypeForSection:section];
    v11 = 2;
    if (v7 < 2)
    {
      v11 = v7;
    }

    v12 = 1;
    if (v7 >= 4)
    {
      v12 = 2;
    }

    if (v10 == 1)
    {
      v11 = v12;
    }

    if (v10 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = v11;
    }
  }

  else if ([v9 isEqualToString:@"sensors"])
  {
    if (v7 >= 2)
    {
      v7 = 2;
    }
  }

  else
  {
    v13 = [(HUQuickControlGridLayoutManager *)self _mostImportantItemTypeForSection:section]- 3;
    v14 = 3;
    if (v7 < 3)
    {
      v14 = v7;
    }

    if (v13 < 3)
    {
      v7 = 1;
    }

    else
    {
      v7 = v14;
    }
  }

  return v7;
}

- (unint64_t)titlePositionForSection:(unint64_t)section
{
  itemManager = [(HUQuickControlGridLayoutManager *)self itemManager];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v7 = MEMORY[0x277CCA940];
  v8 = [(HUQuickControlGridLayoutManager *)self _viewProfileClassesForSection:section];
  v9 = [v7 setWithArray:v8];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __59__HUQuickControlGridLayoutManager_titlePositionForSection___block_invoke;
  v21[3] = &unk_277DB8AD8;
  v22 = v9;
  v10 = v9;
  LOBYTE(v8) = [v10 na_any:v21];
  itemManager2 = [(HUQuickControlGridLayoutManager *)self itemManager];
  v12 = [itemManager2 displayedItemsInSection:section];

  v13 = MEMORY[0x277CCA940];
  v14 = [v12 na_map:&__block_literal_global_35_2];
  v15 = [v13 setWithArray:v14];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__HUQuickControlGridLayoutManager_titlePositionForSection___block_invoke_3;
  v19[3] = &unk_277DB8B00;
  v20 = v15;
  v16 = v15;
  if ((v8 | [v16 na_any:v19]))
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  return v17;
}

uint64_t __59__HUQuickControlGridLayoutManager_titlePositionForSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) countForObject:a2];
  LODWORD(result) = [a2 isEqual:objc_opt_class()];
  if (v3 > 2)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

id __59__HUQuickControlGridLayoutManager_titlePositionForSection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 valueSource];
  v7 = [v6 primaryServiceDescriptor];
  v8 = [v7 serviceType];

  return v8;
}

- (int64_t)viewSizeSubclass
{
  layoutOptions = [(HUQuickControlGridLayoutManager *)self layoutOptions];
  viewSizeSubclass = [layoutOptions viewSizeSubclass];

  return viewSizeSubclass;
}

- (unint64_t)_mostImportantItemTypeForSection:(unint64_t)section
{
  itemManager = [(HUQuickControlGridLayoutManager *)self itemManager];
  v6 = [itemManager displayedSectionIdentifierForSectionIndex:section];

  v7 = [v6 hasSuffix:@"supplementary"];
  itemManager2 = [(HUQuickControlGridLayoutManager *)self itemManager];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(HUQuickControlGridLayoutManager *)self _viewProfileClassesForSection:section];
    v11 = v10;
    if (!v7)
    {
      goto LABEL_11;
    }

    v12 = [v10 na_any:&__block_literal_global_39];
    v13 = [v11 na_any:&__block_literal_global_42];
    v14 = [v11 na_any:&__block_literal_global_45];
    v15 = 4;
    if (!v13)
    {
      v15 = 5;
    }

    v16 = v12 ? 3 : v15;
    if ((v12 & 1) == 0 && (v13 & 1) == 0 && (v14 & 1) == 0)
    {
LABEL_11:
      v17 = [v11 na_all:&__block_literal_global_48];
      v18 = [v11 na_any:&__block_literal_global_50];
      v19 = [v11 na_any:&__block_literal_global_54];
      v20 = [v11 na_all:&__block_literal_global_57];
      v21 = 1;
      if (!v17)
      {
        v21 = 2;
      }

      v22 = 7;
      if (!v20)
      {
        v22 = 8;
      }

      if (v18)
      {
        v22 = 0;
      }

      if (v19)
      {
        v22 = v21;
      }

      if (v17)
      {
        v16 = v21;
      }

      else
      {
        v16 = v22;
      }
    }
  }

  else if (v7)
  {
    v16 = 6;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __68__HUQuickControlGridLayoutManager__mostImportantItemTypeForSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();

  return [a2 isEqual:v3];
}

uint64_t __68__HUQuickControlGridLayoutManager__mostImportantItemTypeForSection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();

  return [a2 isEqual:v3];
}

uint64_t __68__HUQuickControlGridLayoutManager__mostImportantItemTypeForSection___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();

  return [a2 isEqual:v3];
}

uint64_t __68__HUQuickControlGridLayoutManager__mostImportantItemTypeForSection___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();

  return [a2 isEqual:v3];
}

uint64_t __68__HUQuickControlGridLayoutManager__mostImportantItemTypeForSection___block_invoke_5(uint64_t a1, void *a2)
{
  if ([a2 isEqual:objc_opt_class()] & 1) != 0 || (objc_msgSend(a2, "isEqual:", objc_opt_class()))
  {
    return 1;
  }

  v4 = objc_opt_class();

  return [a2 isEqual:v4];
}

uint64_t __68__HUQuickControlGridLayoutManager__mostImportantItemTypeForSection___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();

  return [a2 isEqual:v3];
}

uint64_t __68__HUQuickControlGridLayoutManager__mostImportantItemTypeForSection___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();

  return [a2 isEqual:v3];
}

- (id)_viewProfileClassesForSection:(unint64_t)section
{
  itemManager = [(HUQuickControlGridLayoutManager *)self itemManager];
  v6 = [itemManager displayedItemsInSection:section];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__HUQuickControlGridLayoutManager__viewProfileClassesForSection___block_invoke;
  v10[3] = &unk_277DB8B48;
  v10[4] = self;
  v7 = [v6 na_map:v10];
  v8 = [v7 na_map:&__block_literal_global_61_0];

  return v8;
}

id __65__HUQuickControlGridLayoutManager__viewProfileClassesForSection___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 itemManager];
  v5 = [v4 quickControlContextForItem:v3];

  return v5;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

@end