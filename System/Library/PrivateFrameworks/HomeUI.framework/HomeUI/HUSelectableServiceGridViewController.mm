@interface HUSelectableServiceGridViewController
+ (id)defaultItemProviderCreatorWithOptions:(unint64_t)options;
+ (id)transformationBlockWithOptions:(unint64_t)options;
- (BOOL)_shouldShowToggleButtonForSection:(int64_t)section;
- (BOOL)serviceGridItemManager:(id)manager shouldHideItem:(id)item;
- (HFSetDiff)selectedItems;
- (HUSelectableServiceGridViewController)initWithItemManager:(id)manager;
- (HUSelectableServiceGridViewController)initWithServiceGridItemManager:(id)manager;
- (HUServiceGridItemManager)serviceGridItemManager;
- (double)headerViewHeightForSectionIndex:(unint64_t)index;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)_addAllServicesInSectionFromButton:(id)button;
- (void)_addItemToSelection:(id)selection;
- (void)_deleteItemFromSelection:(id)selection;
- (void)_removeAllServicesInSectionFromButton:(id)button;
- (void)_setSelected:(BOOL)selected forItemsInSection:(int64_t)section;
- (void)_updateSelectionState:(BOOL)state forCell:(id)cell;
- (void)_updateToggleStateForSection:(int64_t)section headerViewCell:(id)cell;
- (void)addItemToSelection:(id)selection;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)deleteItemFromSelection:(id)selection;
- (void)itemManagerDidUpdate:(id)update;
- (void)setSelectedItems:(id)items;
@end

@implementation HUSelectableServiceGridViewController

+ (id)transformationBlockWithOptions:(unint64_t)options
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__HUSelectableServiceGridViewController_transformationBlockWithOptions___block_invoke;
  aBlock[3] = &__block_descriptor_40_e33___HFTransformItem_16__0__HFItem_8l;
  aBlock[4] = options;
  v3 = _Block_copy(aBlock);

  return v3;
}

id __72__HUSelectableServiceGridViewController_transformationBlockWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  if ([v3 conformsToProtocol:&unk_28251AFC0])
  {
    v4 = objc_opt_class();
  }

  v5 = [v4 alloc];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HUSelectableServiceGridViewController_transformationBlockWithOptions___block_invoke_2;
  v10[3] = &unk_277DBB668;
  v6 = *(a1 + 32);
  v11 = v3;
  v12 = v6;
  v7 = v3;
  v8 = [v5 initWithSourceItem:v7 transformationBlock:v10];

  return v8;
}

id __72__HUSelectableServiceGridViewController_transformationBlockWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:&unk_282492138 forKeyedSubscript:*MEMORY[0x277D14068]];
  if (*(a1 + 40))
  {
    [v3 removeObjectForKey:*MEMORY[0x277D13E20]];
  }

  if ([*(a1 + 32) conformsToProtocol:&unk_28251B560] && (objc_msgSend(*(a1 + 32), "containsActions") & 1) == 0)
  {
    v4 = *(a1 + 40);
    if ((v4 & 2) != 0)
    {
      v5 = _HULocalizedStringWithDefaultValue(@"HUSceneServicePickerItemDescriptionNoActionableCharacteristics", @"HUSceneServicePickerItemDescriptionNoActionableCharacteristics", 1);
      [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13E20]];

      v4 = *(a1 + 40);
    }

    if ((v4 & 4) != 0)
    {
      [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    }
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    v6 = *MEMORY[0x277D13E88];
    v7 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13E88]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = MEMORY[0x277D14738];
      v9 = v7;
      v10 = [v8 alloc];
      v11 = [v9 identifier];

      v12 = [v10 initWithIdentifier:v11 incrementalState:&unk_2824935A0];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_15:

        goto LABEL_16;
      }

      v13 = MEMORY[0x277D14440];
      v14 = v7;
      v15 = [v13 alloc];
      v11 = [v14 packageIdentifier];

      v12 = [v15 initWithPackageIdentifier:v11 state:*MEMORY[0x277D13758]];
    }

    v16 = v12;

    [v3 setObject:v16 forKeyedSubscript:v6];
    goto LABEL_15;
  }

LABEL_16:
  v17 = [v3 copy];

  return v17;
}

+ (id)defaultItemProviderCreatorWithOptions:(unint64_t)options
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__HUSelectableServiceGridViewController_defaultItemProviderCreatorWithOptions___block_invoke;
  v5[3] = &__block_descriptor_48_e25___NSArray_16__0__HMHome_8l;
  v5[4] = self;
  v5[5] = options;
  v3 = _Block_copy(v5);

  return v3;
}

id __79__HUSelectableServiceGridViewController_defaultItemProviderCreatorWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() transformationBlockWithOptions:*(a1 + 40)];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = objc_alloc_init(MEMORY[0x277D148D0]);
  v7 = [objc_alloc(MEMORY[0x277D14AD0]) initWithHome:v3 serviceTypes:0];
  [v7 setValueSource:v6];
  v14 = [objc_alloc(MEMORY[0x277D14C38]) initWithSourceProvider:v7 transformationBlock:v4];
  [v5 addObject:?];
  v8 = [objc_alloc(MEMORY[0x277D14AB8]) initWithHome:v3];
  [v8 setValueSource:v6];
  v9 = [objc_alloc(MEMORY[0x277D14C38]) initWithSourceProvider:v8 transformationBlock:v4];
  [v5 addObject:v9];
  v10 = [objc_alloc(MEMORY[0x277D147F0]) initWithHome:v3 includeSiriEndPointProfiles:1];
  v11 = [objc_alloc(MEMORY[0x277D14C38]) initWithSourceProvider:v10 transformationBlock:v4];
  [v5 addObject:v11];
  if ((*(a1 + 40) & 0x10) != 0)
  {
    v12 = [objc_alloc(MEMORY[0x277D143A8]) initWithHome:v3 actionSetItemStyle:0];
    [v12 setValueSource:v6];
    [v5 addObject:v12];
  }

  return v5;
}

- (HUSelectableServiceGridViewController)initWithServiceGridItemManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = HUSelectableServiceGridViewController;
  v5 = [(HUServiceGridViewController *)&v12 initWithItemManager:managerCopy];
  v6 = v5;
  if (v5)
  {
    [(HUServiceGridViewController *)v5 setShouldShowLoadingState:0];
    objc_storeWeak(&v6->_serviceGridItemManager, managerCopy);
    v7 = objc_alloc(MEMORY[0x277D14868]);
    v8 = [MEMORY[0x277CBEB98] set];
    v9 = [v7 initWithFromSet:v8];
    mutableSelectedItems = v6->_mutableSelectedItems;
    v6->_mutableSelectedItems = v9;

    v6->_allowsEmptySelection = 1;
    v6->_allowsMultipleSelection = 1;
  }

  return v6;
}

- (HUSelectableServiceGridViewController)initWithItemManager:(id)manager
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithServiceGridItemManager_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUSelectableServiceGridViewController.m" lineNumber:145 description:{@"%s is unavailable; use %@ instead", "-[HUSelectableServiceGridViewController initWithItemManager:]", v6}];

  return 0;
}

- (HFSetDiff)selectedItems
{
  mutableSelectedItems = [(HUSelectableServiceGridViewController *)self mutableSelectedItems];
  v3 = [mutableSelectedItems copy];

  return v3;
}

- (void)setSelectedItems:(id)items
{
  v42 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = [itemsCopy mutableCopy];
  mutableSelectedItems = self->_mutableSelectedItems;
  self->_mutableSelectedItems = v4;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  collectionView = [(HUSelectableServiceGridViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v8 = [indexPathsForVisibleItems countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        collectionView2 = [(HUSelectableServiceGridViewController *)self collectionView];
        v14 = [collectionView2 cellForItemAtIndexPath:v12];

        if (v14 && [v14 conformsToProtocol:&unk_2824D1FD8])
        {
          itemManager = [(HUItemCollectionViewController *)self itemManager];
          v16 = [itemManager displayedItemAtIndexPath:v12];

          toSet = [itemsCopy toSet];
          v18 = [toSet containsObject:v16];

          [(HUSelectableServiceGridViewController *)self _updateSelectionState:v18 forCell:v14];
        }
      }

      v9 = [indexPathsForVisibleItems countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v9);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  collectionView3 = [(HUSelectableServiceGridViewController *)self collectionView];
  v20 = *MEMORY[0x277D767D8];
  v21 = [collectionView3 indexPathsForVisibleSupplementaryElementsOfKind:*MEMORY[0x277D767D8]];

  v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v32 + 1) + 8 * j);
        objc_opt_class();
        collectionView4 = [(HUSelectableServiceGridViewController *)self collectionView];
        v28 = [collectionView4 supplementaryViewForElementKind:v20 atIndexPath:v26];
        if (objc_opt_isKindOfClass())
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;

        if (v30)
        {
          -[HUSelectableServiceGridViewController _updateToggleStateForSection:headerViewCell:](self, "_updateToggleStateForSection:headerViewCell:", [v26 section], v30);
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v23);
  }
}

- (void)_addAllServicesInSectionFromButton:(id)button
{
  v4 = [button tag];

  [(HUSelectableServiceGridViewController *)self _setSelected:1 forItemsInSection:v4];
}

- (void)_removeAllServicesInSectionFromButton:(id)button
{
  v4 = [button tag];

  [(HUSelectableServiceGridViewController *)self _setSelected:0 forItemsInSection:v4];
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = HUSelectableServiceGridViewController;
  [(HUServiceGridViewController *)&v17 configureCell:cellCopy forItem:itemCopy];
  if ([cellCopy conformsToProtocol:&unk_2824D1FD8])
  {
    v8 = cellCopy;
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v10 = [itemManager indexPathForItem:itemCopy];
    v11 = [(HUSelectableServiceGridViewController *)self canSelectItem:itemCopy indexPath:v10];

    if (v11)
    {
      v12 = [HUCheckmarkAccessoryView alloc];
      v13 = [(HUCheckmarkAccessoryView *)v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      [v8 setAccessoryView:v13];

      mutableSelectedItems = [(HUSelectableServiceGridViewController *)self mutableSelectedItems];
      toSet = [mutableSelectedItems toSet];
      v16 = [toSet containsObject:itemCopy];
    }

    else
    {
      [v8 setAccessoryView:0];
      v16 = 0;
    }

    [(HUSelectableServiceGridViewController *)self _updateSelectionState:v16 forCell:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setDisableContinuousIconAnimation:1];
    }
  }
}

- (void)itemManagerDidUpdate:(id)update
{
  v23 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = HUSelectableServiceGridViewController;
  [(HUItemCollectionViewController *)&v21 itemManagerDidUpdate:update];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  collectionView = [(HUSelectableServiceGridViewController *)self collectionView];
  v5 = *MEMORY[0x277D767D8];
  v6 = [collectionView indexPathsForVisibleSupplementaryElementsOfKind:*MEMORY[0x277D767D8]];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        objc_opt_class();
        collectionView2 = [(HUSelectableServiceGridViewController *)self collectionView];
        v13 = [collectionView2 supplementaryViewForElementKind:v5 atIndexPath:v11];
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v15)
        {
          -[HUSelectableServiceGridViewController _updateToggleStateForSection:headerViewCell:](self, "_updateToggleStateForSection:headerViewCell:", [v11 section], v15);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }
}

- (double)headerViewHeightForSectionIndex:(unint64_t)index
{
  prominentInsetGroupedHeaderConfiguration = [MEMORY[0x277D756E0] prominentInsetGroupedHeaderConfiguration];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v7 = [itemManager titleForSection:index];

  [prominentInsetGroupedHeaderConfiguration setText:v7];
  v8 = [objc_alloc(MEMORY[0x277D756E8]) initWithConfiguration:prominentInsetGroupedHeaderConfiguration];
  [v8 systemLayoutSizeFittingSize:{1.79769313e308, 1.79769313e308}];
  v10 = v9;

  return v10;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = HUSelectableServiceGridViewController;
  [(HUItemCollectionViewController *)&v20 collectionView:view didSelectItemAtIndexPath:pathCopy];
  collectionView = [(HUSelectableServiceGridViewController *)self collectionView];
  v8 = [collectionView cellForItemAtIndexPath:pathCopy];

  if ([v8 conformsToProtocol:&unk_2824D1FD8])
  {
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v10 = [itemManager displayedItemAtIndexPath:pathCopy];

    if ([(HUSelectableServiceGridViewController *)self canSelectItem:v10 indexPath:pathCopy])
    {
      mutableSelectedItems = [(HUSelectableServiceGridViewController *)self mutableSelectedItems];
      toSet = [mutableSelectedItems toSet];
      v13 = [toSet containsObject:v10];

      if (v13)
      {
        [(HUSelectableServiceGridViewController *)self deleteItemFromSelection:v10];
      }

      else
      {
        [(HUSelectableServiceGridViewController *)self addItemToSelection:v10];
      }

      [(HUSelectableServiceGridViewController *)self didChangeSelection];
    }

    objc_opt_class();
    collectionView2 = [(HUSelectableServiceGridViewController *)self collectionView];
    v15 = *MEMORY[0x277D767D8];
    v16 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{objc_msgSend(pathCopy, "section")}];
    v17 = [collectionView2 supplementaryViewForElementKind:v15 atIndexPath:v16];
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if (v19)
    {
      -[HUSelectableServiceGridViewController _updateToggleStateForSection:headerViewCell:](self, "_updateToggleStateForSection:headerViewCell:", [pathCopy section], v19);
    }
  }
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v46[1] = *MEMORY[0x277D85DE8];
  kindCopy = kind;
  pathCopy = path;
  v10 = *MEMORY[0x277D767D8];
  viewCopy = view;
  if (([kindCopy isEqualToString:v10] & 1) == 0)
  {
    NSLog(&cfstr_AskedForAViewF.isa, kindCopy);
  }

  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v13 = [itemManager titleForSection:{objc_msgSend(pathCopy, "section")}];

  if (!v13)
  {
    NSLog(&cfstr_AskedForHeader.isa, pathCopy);
  }

  objc_opt_class();
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v15 forIndexPath:pathCopy];

  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  prominentInsetGroupedHeaderConfiguration = [MEMORY[0x277D756E0] prominentInsetGroupedHeaderConfiguration];
  v20 = -[HUServiceGridViewController layoutOptionsForSection:](self, "layoutOptionsForSection:", [pathCopy section]);
  [prominentInsetGroupedHeaderConfiguration directionalLayoutMargins];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [v20 sectionLeadingMargin];
  [prominentInsetGroupedHeaderConfiguration setDirectionalLayoutMargins:{v22, v24 + v29, v26, v28}];
  [prominentInsetGroupedHeaderConfiguration setText:v13];
  [v18 setContentConfiguration:prominentInsetGroupedHeaderConfiguration];
  clearConfiguration = [MEMORY[0x277D751C0] clearConfiguration];
  [v18 setBackgroundConfiguration:clearConfiguration];

  [v18 directionalLayoutMargins];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  [v20 sectionTrailingMargin];
  [v18 setDirectionalLayoutMargins:{v32, v34, v36, v38 + v39}];
  v40 = [MEMORY[0x277D75220] buttonWithType:1];
  secondaryTextProperties = [prominentInsetGroupedHeaderConfiguration secondaryTextProperties];
  font = [secondaryTextProperties font];
  [v40 setFont:font];

  [v40 setTag:{objc_msgSend(pathCopy, "section")}];
  v43 = [objc_alloc(MEMORY[0x277D75250]) initWithCustomView:v40 placement:1];
  [v43 setReservedLayoutWidth:0.0];
  [v43 setMaintainsFixedSize:0];
  [v43 setHidden:{-[HUSelectableServiceGridViewController _shouldShowToggleButtonForSection:](self, "_shouldShowToggleButtonForSection:", objc_msgSend(pathCopy, "section")) ^ 1}];
  v46[0] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
  [v18 setAccessories:v44];

  -[HUSelectableServiceGridViewController _updateToggleStateForSection:headerViewCell:](self, "_updateToggleStateForSection:headerViewCell:", [pathCopy section], v18);

  return v18;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v15.receiver = self;
  v15.super_class = HUSelectableServiceGridViewController;
  pathCopy = path;
  cellCopy = cell;
  [(HUControllableItemCollectionViewController *)&v15 collectionView:view willDisplayCell:cellCopy forItemAtIndexPath:pathCopy];
  v10 = [(HUItemCollectionViewController *)self itemManager:v15.receiver];
  v11 = [v10 displayedItemAtIndexPath:pathCopy];

  mutableSelectedItems = [(HUSelectableServiceGridViewController *)self mutableSelectedItems];
  toSet = [mutableSelectedItems toSet];
  v14 = [toSet containsObject:v11];

  [(HUSelectableServiceGridViewController *)self _updateSelectionState:v14 forCell:cellCopy];
}

- (void)deleteItemFromSelection:(id)selection
{
  selectionCopy = selection;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v5 = [itemManager indexPathForItem:selectionCopy];

  collectionView = [(HUSelectableServiceGridViewController *)self collectionView];
  v7 = [collectionView cellForItemAtIndexPath:v5];
  if ([v7 conformsToProtocol:&unk_2824D1FD8])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    if (-[HUSelectableServiceGridViewController allowsEmptySelection](self, "allowsEmptySelection") || (-[HUSelectableServiceGridViewController mutableSelectedItems](self, "mutableSelectedItems"), v10 = objc_claimAutoreleasedReturnValue(), [v10 toSet], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10, v12 >= 2))
    {
      [(HUSelectableServiceGridViewController *)self _deleteItemFromSelection:selectionCopy];
      [(HUSelectableServiceGridViewController *)self _updateSelectionState:0 forCell:v9];
    }
  }
}

- (void)addItemToSelection:(id)selection
{
  v30 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v6 = [itemManager indexPathForItem:selectionCopy];

  collectionView = [(HUSelectableServiceGridViewController *)self collectionView];
  v8 = [collectionView cellForItemAtIndexPath:v6];
  if ([v8 conformsToProtocol:&unk_2824D1FD8])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    if (![(HUSelectableServiceGridViewController *)self allowsMultipleSelection])
    {
      v23 = v6;
      v24 = selectionCopy;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      mutableSelectedItems = [(HUSelectableServiceGridViewController *)self mutableSelectedItems];
      toSet = [mutableSelectedItems toSet];
      v13 = [toSet copy];

      v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v26;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v25 + 1) + 8 * i);
            [(HUSelectableServiceGridViewController *)self _deleteItemFromSelection:v18];
            itemManager2 = [(HUItemCollectionViewController *)self itemManager];
            v20 = [itemManager2 indexPathForItem:v18];

            if (v20)
            {
              collectionView2 = [(HUSelectableServiceGridViewController *)self collectionView];
              v22 = [collectionView2 cellForItemAtIndexPath:v20];

              if (v22 && [v22 conformsToProtocol:&unk_2824D1FD8])
              {
                [(HUSelectableServiceGridViewController *)self _updateSelectionState:0 forCell:v22];
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v15);
      }

      v6 = v23;
      selectionCopy = v24;
    }

    [(HUSelectableServiceGridViewController *)self _addItemToSelection:selectionCopy];
    [(HUSelectableServiceGridViewController *)self _updateSelectionState:1 forCell:v10];
  }
}

- (BOOL)serviceGridItemManager:(id)manager shouldHideItem:(id)item
{
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&unk_28251AFC0])
  {
    v5 = itemCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    services = [v6 services];
    v9 = [services na_map:&__block_literal_global_239];

    itemServiceTypesToHide = [objc_opt_class() itemServiceTypesToHide];
    v11 = [itemServiceTypesToHide intersectsSet:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_updateSelectionState:(BOOL)state forCell:(id)cell
{
  stateCopy = state;
  cellCopy = cell;
  objc_opt_class();
  accessoryView = [cellCopy accessoryView];

  if (objc_opt_isKindOfClass())
  {
    v7 = accessoryView;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 setChecked:stateCopy];
}

- (void)_setSelected:(BOOL)selected forItemsInSection:(int64_t)section
{
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v8 = [itemManager displayedItemsInSection:section];

  if (selected || -[HUSelectableServiceGridViewController allowsEmptySelection](self, "allowsEmptySelection") || (-[HUSelectableServiceGridViewController mutableSelectedItems](self, "mutableSelectedItems"), v9 = objc_claimAutoreleasedReturnValue(), [v9 toSet], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "mutableCopy"), v10, v9, objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", v8), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "minusSet:", v12), v12, v13 = objc_msgSend(v11, "count"), v11, v13))
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__HUSelectableServiceGridViewController__setSelected_forItemsInSection___block_invoke;
    v20[3] = &unk_277DC2880;
    selectedCopy = selected;
    v20[4] = self;
    v20[5] = section;
    [v8 enumerateObjectsUsingBlock:v20];
    objc_opt_class();
    collectionView = [(HUSelectableServiceGridViewController *)self collectionView];
    v15 = *MEMORY[0x277D767D8];
    v16 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:section];
    v17 = [collectionView supplementaryViewForElementKind:v15 atIndexPath:v16];
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if (v19)
    {
      [(HUSelectableServiceGridViewController *)self _updateToggleStateForSection:section headerViewCell:v19];
    }

    [(HUSelectableServiceGridViewController *)self didChangeSelection];
  }
}

void __72__HUSelectableServiceGridViewController__setSelected_forItemsInSection___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:*(a1 + 40)];
  if (*(a1 + 48) == 1 && [*(a1 + 32) canSelectItem:v8 indexPath:v5])
  {
    [*(a1 + 32) _addItemToSelection:v8];
  }

  else
  {
    [*(a1 + 32) _deleteItemFromSelection:v8];
  }

  v6 = [*(a1 + 32) collectionView];
  v7 = [v6 cellForItemAtIndexPath:v5];

  if (v7 && [v7 conformsToProtocol:&unk_2824D1FD8])
  {
    [*(a1 + 32) _updateSelectionState:*(a1 + 48) forCell:v7];
  }
}

- (void)_updateToggleStateForSection:(int64_t)section headerViewCell:(id)cell
{
  cellCopy = cell;
  if ([(HUSelectableServiceGridViewController *)self _wantsToggleButtonForSection:section])
  {
    objc_opt_class();
    accessories = [cellCopy accessories];
    firstObject = [accessories firstObject];
    if (objc_opt_isKindOfClass())
    {
      v9 = firstObject;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    objc_opt_class();
    customView = [v10 customView];
    if (objc_opt_isKindOfClass())
    {
      v12 = customView;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    [v13 removeTarget:self action:0 forControlEvents:64];
    if ([(HUSelectableServiceGridViewController *)self _shouldShowToggleButtonForSection:section])
    {
      v36 = v13;
      v37 = v10;
      v38 = cellCopy;
      itemManager = [(HUItemCollectionViewController *)self itemManager];
      v15 = [itemManager displayedItemsInSection:section];
      v16 = [v15 count];

      v17 = 0;
      if (v16)
      {
        v18 = 0;
        do
        {
          v19 = [MEMORY[0x277CCAA70] indexPathForItem:v18 inSection:section];
          itemManager2 = [(HUItemCollectionViewController *)self itemManager];
          v21 = [itemManager2 displayedItemAtIndexPath:v19];

          mutableSelectedItems = [(HUSelectableServiceGridViewController *)self mutableSelectedItems];
          toSet = [mutableSelectedItems toSet];
          v24 = [toSet containsObject:v21];

          v17 += v24;
          ++v18;
          itemManager3 = [(HUItemCollectionViewController *)self itemManager];
          v26 = [itemManager3 displayedItemsInSection:section];
          v27 = [v26 count];
        }

        while (v18 < v27);
      }

      v28 = MEMORY[0x277D75D18];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __85__HUSelectableServiceGridViewController__updateToggleStateForSection_headerViewCell___block_invoke_2;
      v39[3] = &unk_277DC28A8;
      v29 = &v40;
      v30 = v41;
      v13 = v36;
      v10 = v37;
      v40 = v37;
      v41[0] = v36;
      v43 = v17;
      v41[1] = self;
      cellCopy = v38;
      v42 = v38;
      v31 = v36;
      v32 = v37;
      [v28 performWithoutAnimation:v39];
    }

    else
    {
      v33 = MEMORY[0x277D75D18];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __85__HUSelectableServiceGridViewController__updateToggleStateForSection_headerViewCell___block_invoke;
      v44[3] = &unk_277DB7558;
      v29 = &v45;
      v30 = &v46;
      v45 = v13;
      v46 = v10;
      v34 = v13;
      v35 = v10;
      [v33 performWithoutAnimation:v44];
    }
  }
}

uint64_t __85__HUSelectableServiceGridViewController__updateToggleStateForSection_headerViewCell___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTitle:0 forState:0];
  v2 = *(a1 + 40);

  return [v2 setHidden:1];
}

uint64_t __85__HUSelectableServiceGridViewController__updateToggleStateForSection_headerViewCell___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHidden:0];
  v2 = *(a1 + 64);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = @"HUSelectableServiceGridSectionButtonRemoveAll";
  }

  else
  {
    v4 = @"HUSelectableServiceGridSectionButtonAddAll";
  }

  if (v2)
  {
    v5 = &selRef__removeAllServicesInSectionFromButton_;
  }

  else
  {
    v5 = &selRef__addAllServicesInSectionFromButton_;
  }

  v6 = _HULocalizedStringWithDefaultValue(v4, v4, 1);
  [v3 setTitle:v6 forState:0];

  [*(a1 + 40) addTarget:*(a1 + 48) action:*v5 forControlEvents:64];
  v7 = *(a1 + 56);

  return [v7 setNeedsLayout];
}

- (BOOL)_shouldShowToggleButtonForSection:(int64_t)section
{
  if (![(HUSelectableServiceGridViewController *)self _wantsToggleButtonForSection:?])
  {
    return 0;
  }

  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v6 = [itemManager displayedItemsInSection:section];
  v7 = [v6 count];

  if (v7 < 2)
  {
    return 0;
  }

  serviceGridItemManager = [(HUSelectableServiceGridViewController *)self serviceGridItemManager];
  v9 = [serviceGridItemManager actionSetSectionIndex] != section && -[HUSelectableServiceGridViewController allowsMultipleSelection](self, "allowsMultipleSelection");

  return v9;
}

- (void)_addItemToSelection:(id)selection
{
  selectionCopy = selection;
  mutableSelectedItems = [(HUSelectableServiceGridViewController *)self mutableSelectedItems];
  [mutableSelectedItems addObject:selectionCopy];

  [(HUSelectableServiceGridViewController *)self didSelectItem:selectionCopy];
}

- (void)_deleteItemFromSelection:(id)selection
{
  selectionCopy = selection;
  mutableSelectedItems = [(HUSelectableServiceGridViewController *)self mutableSelectedItems];
  [mutableSelectedItems deleteObject:selectionCopy];

  [(HUSelectableServiceGridViewController *)self didDeselectItem:selectionCopy];
}

- (HUServiceGridItemManager)serviceGridItemManager
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceGridItemManager);

  return WeakRetained;
}

@end