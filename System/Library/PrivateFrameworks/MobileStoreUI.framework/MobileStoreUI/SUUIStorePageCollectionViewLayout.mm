@interface SUUIStorePageCollectionViewLayout
- (BOOL)_allowsBackdropDecorationForItemPinningConfiguration:(id)configuration atIndexPath:(id)path;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGRect)_pinningFrameForStartingFrame:(CGRect)frame itemPinningConfiguration:(id)configuration atIndexPath:(id)path;
- (CGRect)_targetFrameForStartingFrame:(CGRect)frame itemPinningConfiguration:(id)configuration layoutInformation:(id)information atIndexPath:(id)path returningIsPinning:(BOOL *)pinning;
- (CGSize)collectionViewContentSize;
- (SUUIStorePageCollectionViewLayout)init;
- (UIEdgeInsets)_pinningContentInsetForItemPinningConfiguration:(id)configuration atIndexPath:(id)path;
- (id)_getCollectionViewUpdateItemForItemFromIndex:(int64_t)index initalLayout:(BOOL)layout;
- (id)_indexPathsForBackgroundGradients;
- (id)_indexPathsForPinningItems;
- (id)_itemPinningConfigurationForItemAtIndexPath:(id)path;
- (id)_itemPinningLayoutInformationForItemAtIndexPath:(id)path;
- (id)_layoutAttributesForGradientDecorationViewAtIndexPath:(id)path currentAttributes:(id)attributes;
- (id)_layoutAttributesForPinnedBackdropDecorationViewAtIndexPath:(id)path pinningConfiguration:(id)configuration layoutInformation:(id)information;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForUnpinnedItemAtIndexPath:(id)path;
- (id)pinnedLayoutAttributesForItemsInRect:(CGRect)rect;
- (int64_t)_pinnedBackdropViewStyle;
- (int64_t)_pinningGroupForItemPinningConfiguration:(id)configuration atIndexPath:(id)path;
- (int64_t)_pinningStyleForItemPinningConfiguration:(id)configuration atIndexPath:(id)path;
- (int64_t)_pinningTransitionStyleForItemPinningConfiguration:(id)configuration atIndexPath:(id)path;
- (void)_alginCellsToTop:(id)top;
- (void)_appendAdditionalLayoutAttributesForPinningItemsInRect:(CGRect)rect toArray:(id)array;
- (void)_calculatePinningLayoutInformation;
- (void)_configureCellLayoutAttributes:(id)attributes forItemWithPinningConfiguration:(id)configuration layoutInformation:(id)information atIndexPath:(id)path allowPinning:(BOOL)pinning returningIsPinning:(BOOL *)isPinning;
- (void)_invalidatePinningLayoutInformation;
- (void)_updateItemsLayoutForRect:(CGRect)rect;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareForCollectionViewUpdates:(id)updates;
- (void)prepareLayout;
- (void)setAllowsPinningTransitions:(BOOL)transitions;
- (void)setBackdropGroupName:(id)name;
- (void)setExpandChildPageSectionsIndexSet:(id)set;
@end

@implementation SUUIStorePageCollectionViewLayout

- (SUUIStorePageCollectionViewLayout)init
{
  v9[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = SUUIStorePageCollectionViewLayout;
  v2 = [(UICollectionViewFlowLayout *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_allowsPinningTransitions = 1;
    [(UICollectionViewFlowLayout *)v2 setMinimumInteritemSpacing:0.0];
    [(UICollectionViewFlowLayout *)v3 setMinimumLineSpacing:0.0];
    v4 = *MEMORY[0x277D768F8];
    v8[0] = *MEMORY[0x277D768E8];
    v8[1] = v4;
    v9[0] = &unk_286BBE178;
    v9[1] = &unk_286BBE178;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
    [(UICollectionViewFlowLayout *)v3 _setRowAlignmentsOptions:v5];

    [(SUUIStorePageCollectionViewLayout *)v3 registerClass:objc_opt_class() forDecorationViewOfKind:0x286AED1E0];
    [(SUUIStorePageCollectionViewLayout *)v3 registerClass:objc_opt_class() forDecorationViewOfKind:0x286AFBAC0];
  }

  return v3;
}

- (void)setExpandChildPageSectionsIndexSet:(id)set
{
  v4 = [set copy];
  expandChildPageSectionsIndexSet = self->_expandChildPageSectionsIndexSet;
  self->_expandChildPageSectionsIndexSet = v4;

  if (!self->_expandChildPageSectionsIndexSet)
  {
    updateItems = self->_updateItems;
    self->_updateItems = 0;
  }
}

- (CGSize)collectionViewContentSize
{
  v5.receiver = self;
  v5.super_class = SUUIStorePageCollectionViewLayout;
  [(UICollectionViewFlowLayout *)&v5 collectionViewContentSize];
  if (self->_overrideContentWidth > 0.00000011920929)
  {
    overrideContentWidth = self->_overrideContentWidth;
  }

  result.height = v4;
  result.width = overrideContentWidth;
  return result;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  pathCopy = path;
  v29.receiver = self;
  v29.super_class = SUUIStorePageCollectionViewLayout;
  v5 = [(SUUIStorePageCollectionViewLayout *)&v29 initialLayoutAttributesForAppearingItemAtIndexPath:pathCopy];
  expandChildPageSectionsIndexSet = self->_expandChildPageSectionsIndexSet;
  if (expandChildPageSectionsIndexSet && -[NSIndexSet containsIndex:](expandChildPageSectionsIndexSet, "containsIndex:", [pathCopy section]) && self->_updateItems)
  {
    v7 = -[SUUIStorePageCollectionViewLayout _getCollectionViewUpdateItemForItemFromIndex:initalLayout:](self, "_getCollectionViewUpdateItemForItemFromIndex:initalLayout:", [pathCopy section], 1);
    updateAction = [v7 updateAction];
    if (!v7 || updateAction)
    {
      goto LABEL_13;
    }

    collectionView = [(SUUIStorePageCollectionViewLayout *)self collectionView];
    firstIndex = [(NSIndexSet *)self->_expandChildPageSectionsIndexSet firstIndex];
    numberOfSections = [collectionView numberOfSections];
    v12 = numberOfSections - [(NSIndexSet *)self->_expandChildPageSectionsIndexSet count];
    if (firstIndex >= v12)
    {
      v16 = [collectionView numberOfItemsInSection:v12 - 1];
      v17 = 5.0;
      v15 = v12 - 1;
      if (v12 < 1)
      {
        goto LABEL_12;
      }

      v13 = v16 - 1;
      if (v16 < 1)
      {
        goto LABEL_12;
      }

      v14 = MEMORY[0x277CCAA70];
    }

    else
    {
      v13 = [collectionView numberOfItemsInSection:firstIndex - 1] - 1;
      v14 = MEMORY[0x277CCAA70];
      v15 = firstIndex - 1;
    }

    v18 = [v14 indexPathForItem:v13 inSection:v15];
    v19 = [collectionView cellForItemAtIndexPath:v18];

    [v19 frame];
    v21 = v20;
    [v19 frame];
    v23 = v21 + v22;

    v17 = v23 + 5.0;
LABEL_12:
    [v5 frame];
    v25 = v24;
    [v5 frame];
    v27 = v26;
    [v5 frame];
    [v5 setFrame:{v25, v17, v27}];

LABEL_13:
  }

  return v5;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path
{
  pathCopy = path;
  v28.receiver = self;
  v28.super_class = SUUIStorePageCollectionViewLayout;
  v5 = [(SUUIStorePageCollectionViewLayout *)&v28 finalLayoutAttributesForDisappearingItemAtIndexPath:pathCopy];
  expandChildPageSectionsIndexSet = self->_expandChildPageSectionsIndexSet;
  if (expandChildPageSectionsIndexSet && -[NSIndexSet containsIndex:](expandChildPageSectionsIndexSet, "containsIndex:", [pathCopy section]) && self->_updateItems)
  {
    v7 = -[SUUIStorePageCollectionViewLayout _getCollectionViewUpdateItemForItemFromIndex:initalLayout:](self, "_getCollectionViewUpdateItemForItemFromIndex:initalLayout:", [pathCopy section], 0);
    updateAction = [v7 updateAction];
    if (!v7 || updateAction != 1)
    {
      goto LABEL_13;
    }

    collectionView = [(SUUIStorePageCollectionViewLayout *)self collectionView];
    firstIndex = [(NSIndexSet *)self->_expandChildPageSectionsIndexSet firstIndex];
    numberOfSections = [collectionView numberOfSections];
    if (firstIndex >= numberOfSections)
    {
      v15 = numberOfSections;
      v16 = [collectionView numberOfItemsInSection:numberOfSections - 1];
      v17 = 0.0;
      v14 = v15 - 1;
      if (v15 < 1)
      {
        goto LABEL_12;
      }

      v12 = v16 - 1;
      if (v16 < 1)
      {
        goto LABEL_12;
      }

      v13 = MEMORY[0x277CCAA70];
    }

    else
    {
      v12 = [collectionView numberOfItemsInSection:firstIndex - 1] - 1;
      v13 = MEMORY[0x277CCAA70];
      v14 = firstIndex - 1;
    }

    v18 = [v13 indexPathForItem:v12 inSection:v14];
    v19 = [collectionView cellForItemAtIndexPath:v18];

    [v19 frame];
    v21 = v20;
    [v19 frame];
    v17 = v21 + v22;

LABEL_12:
    [v5 frame];
    v24 = v23;
    [v5 frame];
    v26 = v25;
    [v5 frame];
    [v5 setFrame:{v24, v17, v26}];

LABEL_13:
  }

  return v5;
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  v27.receiver = self;
  v27.super_class = SUUIStorePageCollectionViewLayout;
  v8 = [(UICollectionViewFlowLayout *)&v27 invalidationContextForBoundsChange:?];
  collectionView = [(SUUIStorePageCollectionViewLayout *)self collectionView];
  [collectionView bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  scrollDirection = [(UICollectionViewFlowLayout *)self scrollDirection];
  v19 = y != v13;
  if (height == v17)
  {
    v20 = 0;
  }

  else
  {
    v19 = 1;
    v20 = 1;
  }

  v21 = x != v11;
  if (width == v15)
  {
    v22 = 0;
  }

  else
  {
    v21 = 1;
    v22 = 1;
  }

  if (scrollDirection)
  {
    v21 = 0;
    v22 = 0;
  }

  if (scrollDirection == 1)
  {
    v23 = v19;
  }

  else
  {
    v23 = v21;
  }

  if (scrollDirection == 1)
  {
    v24 = v20;
  }

  else
  {
    v24 = v22;
  }

  [v8 setInvalidateFlowLayoutAttributes:v23];
  [v8 setInvalidateFlowLayoutDelegateMetrics:v24];
  if (([v8 invalidateEverything] & 1) == 0 && (objc_msgSend(v8, "invalidateDataSourceCounts") & 1) == 0)
  {
    _indexPathsForPinningItems = [(SUUIStorePageCollectionViewLayout *)self _indexPathsForPinningItems];
    if ([_indexPathsForPinningItems count])
    {
      [v8 invalidateItemsAtIndexPaths:_indexPathsForPinningItems];
      [v8 invalidateDecorationElementsOfKind:0x286AED1E0 atIndexPaths:_indexPathsForPinningItems];
    }
  }

  return v8;
}

- (void)invalidateLayoutWithContext:(id)context
{
  contextCopy = context;
  if (([contextCopy invalidateDataSourceCounts] & 1) != 0 || objc_msgSend(contextCopy, "invalidateEverything"))
  {
    self->_hasValidPinnedBackdropViewStyle = 0;
    indexPathToItemPinningConfiguration = self->_indexPathToItemPinningConfiguration;
    self->_indexPathToItemPinningConfiguration = 0;

    indexPathsForPinningItems = self->_indexPathsForPinningItems;
    self->_indexPathsForPinningItems = 0;

    indexPathsForGradientItems = self->_indexPathsForGradientItems;
    self->_indexPathsForGradientItems = 0;

    self->_hasValidIndexPathsForPinningItems = 0;
    self->_hasValidGradientIndexPaths = 0;
    [(SUUIStorePageCollectionViewLayout *)self _invalidatePinningLayoutInformation];
  }

  if (([contextCopy invalidateFlowLayoutAttributes] & 1) != 0 || (objc_msgSend(contextCopy, "invalidateFlowLayoutDelegateMetrics") & 1) != 0 || objc_msgSend(contextCopy, "invalidateItemPinningLayoutInformation"))
  {
    [(SUUIStorePageCollectionViewLayout *)self _invalidatePinningLayoutInformation];
  }

  if ([contextCopy invalidatePinnedBackdropViewStyle])
  {
    self->_hasValidPinnedBackdropViewStyle = 0;
  }

  v8.receiver = self;
  v8.super_class = SUUIStorePageCollectionViewLayout;
  [(UICollectionViewFlowLayout *)&v8 invalidateLayoutWithContext:contextCopy];
}

- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  if ([kindCopy isEqualToString:0x286AED1E0])
  {
    v8 = [(SUUIStorePageCollectionViewLayout *)self _itemPinningConfigurationForItemAtIndexPath:pathCopy];
    v9 = [(SUUIStorePageCollectionViewLayout *)self _itemPinningLayoutInformationForItemAtIndexPath:pathCopy];
    v10 = [(SUUIStorePageCollectionViewLayout *)self _layoutAttributesForPinnedBackdropDecorationViewAtIndexPath:pathCopy pinningConfiguration:v8 layoutInformation:v9];

    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (![kindCopy isEqualToString:0x286AFBAC0] || (+[UICollectionViewLayoutAttributes layoutAttributesForDecorationViewOfKind:withIndexPath:](SUUIGridViewGradientLayoutAttributes, "layoutAttributesForDecorationViewOfKind:withIndexPath:", 0x286AFBAC0, pathCopy), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_6:
    v12.receiver = self;
    v12.super_class = SUUIStorePageCollectionViewLayout;
    v10 = [(SUUIStorePageCollectionViewLayout *)&v12 layoutAttributesForDecorationViewOfKind:kindCopy atIndexPath:pathCopy];
  }

LABEL_7:

  return v10;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v37 = *MEMORY[0x277D85DE8];
  ++self->_inLayoutAttributesForElementsCount;
  v35.receiver = self;
  v35.super_class = SUUIStorePageCollectionViewLayout;
  v8 = [(UICollectionViewFlowLayout *)&v35 layoutAttributesForElementsInRect:?];
  v9 = [v8 mutableCopy];

  [(SUUIStorePageCollectionViewLayout *)self _appendAdditionalLayoutAttributesForPinningItemsInRect:v9 toArray:x, y, width, height];
  --self->_inLayoutAttributesForElementsCount;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v29 = 0;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        indexPath = [v15 indexPath];
        if (![v15 representedElementCategory])
        {
          _indexPathsForPinningItems = [(SUUIStorePageCollectionViewLayout *)self _indexPathsForPinningItems];
          v18 = [_indexPathsForPinningItems containsObject:indexPath];

          if (v18)
          {
            v19 = [(SUUIStorePageCollectionViewLayout *)self _itemPinningLayoutInformationForItemAtIndexPath:indexPath];
            v20 = [(SUUIStorePageCollectionViewLayout *)self _itemPinningConfigurationForItemAtIndexPath:indexPath];
          }

          else
          {
            v20 = 0;
            v19 = 0;
          }

          v30 = 0;
          [(SUUIStorePageCollectionViewLayout *)self _configureCellLayoutAttributes:v15 forItemWithPinningConfiguration:v20 layoutInformation:v19 atIndexPath:indexPath allowPinning:v18 returningIsPinning:&v30];
          if (v30 == 1 && [(SUUIStorePageCollectionViewLayout *)self _allowsBackdropDecorationForItemPinningConfiguration:v20 atIndexPath:indexPath])
          {
            v21 = [(SUUIStorePageCollectionViewLayout *)self _layoutAttributesForPinnedBackdropDecorationViewAtIndexPath:indexPath pinningConfiguration:v20 layoutInformation:v19];
            if (v21)
            {
              v22 = v29;
              if (!v29)
              {
                v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
              }

              [v22 addObject:{v21, v22}];
            }
          }
        }

        _indexPathsForBackgroundGradients = [(SUUIStorePageCollectionViewLayout *)self _indexPathsForBackgroundGradients];
        v24 = [_indexPathsForBackgroundGradients containsObject:indexPath];

        if (v24)
        {
          v25 = [(SUUIStorePageCollectionViewLayout *)self _layoutAttributesForGradientDecorationViewAtIndexPath:indexPath currentAttributes:v15];
          if (v25)
          {
            v26 = v29;
            if (!v29)
            {
              v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
            }

            [v26 addObject:{v25, v26}];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v12);
  }

  else
  {
    v29 = 0;
  }

  v27 = v29;
  if ([v29 count])
  {
    [v10 addObjectsFromArray:v29];
  }

  [(SUUIStorePageCollectionViewLayout *)self _alginCellsToTop:v10, v29];

  return v10;
}

- (void)_alginCellsToTop:(id)top
{
  v59 = *MEMORY[0x277D85DE8];
  topCopy = top;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _indexPathsForPinningItems = [(SUUIStorePageCollectionViewLayout *)self _indexPathsForPinningItems];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v8 = topCopy;
  v9 = [v8 countByEnumeratingWithState:&v53 objects:v58 count:16];
  v47 = v5;
  if (v9)
  {
    v10 = v9;
    v11 = *v54;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v54 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v53 + 1) + 8 * i);
        indexPath = [v13 indexPath];
        v15 = [_indexPathsForPinningItems containsObject:indexPath];

        if ((v15 & 1) == 0 && ![v13 representedElementCategory])
        {
          [v13 frame];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          if ([v6 count])
          {
            v24 = 0;
            rect = v23;
            while (1)
            {
              v25 = [v6 objectAtIndex:v24];
              [v25 CGRectValue];
              v27 = v26;
              v29 = v28;
              v31 = v30;
              v33 = v32;
              v60.origin.x = v17;
              v60.origin.y = v19;
              v60.size.width = v21;
              v60.size.height = v23;
              MidY = CGRectGetMidY(v60);
              v61.origin.x = v27;
              v61.origin.y = v29;
              v61.size.width = v31;
              v61.size.height = v33;
              if (MidY > CGRectGetMinY(v61))
              {
                v62.origin.x = v17;
                v62.origin.y = v19;
                v62.size.width = v21;
                v62.size.height = rect;
                v35 = CGRectGetMidY(v62);
                v63.origin.x = v27;
                v63.origin.y = v29;
                v63.size.width = v31;
                v63.size.height = v33;
                if (v35 < CGRectGetMaxY(v63))
                {
                  break;
                }
              }

              ++v24;
              v23 = rect;
              if (v24 >= [v6 count])
              {
                goto LABEL_13;
              }
            }

            v37 = [v5 objectAtIndex:v24];
            [v37 addObject:v13];
            v64.origin.x = v27;
            v64.origin.y = v29;
            v64.size.width = v31;
            v64.size.height = v33;
            v66.origin.x = v17;
            v66.origin.y = v19;
            v66.size.width = v21;
            v66.size.height = rect;
            v65 = CGRectUnion(v64, v66);
            v38 = [MEMORY[0x277CCAE60] valueWithCGRect:{v65.origin.x, v65.origin.y, v65.size.width, v65.size.height}];
            [v6 replaceObjectAtIndex:v24 withObject:v38];

            v5 = v47;
          }

          else
          {
LABEL_13:
            v36 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v13, 0}];
            [v5 addObject:v36];

            v25 = [MEMORY[0x277CCAE60] valueWithCGRect:{v17, v19, v21, v23}];
            [v6 addObject:v25];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v10);
  }

  if ([v6 count])
  {
    v39 = 0;
    do
    {
      v40 = [v6 objectAtIndex:v39];
      [v40 CGRectValue];
      v41 = [v5 objectAtIndex:v39];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v42 = [v41 countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v50;
        do
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v50 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v49 + 1) + 8 * j);
            [v46 frame];
            [v46 setFrame:?];
          }

          v43 = [v41 countByEnumeratingWithState:&v49 objects:v57 count:16];
        }

        while (v43);
      }

      ++v39;
      v5 = v47;
    }

    while (v39 < [v6 count]);
  }
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = SUUIStorePageCollectionViewLayout;
  v5 = [(UICollectionViewFlowLayout *)&v12 layoutAttributesForItemAtIndexPath:pathCopy];
  v6 = v5;
  if (!self->_inLayoutAttributesForElementsCount && ![v5 representedElementCategory])
  {
    _indexPathsForPinningItems = [(SUUIStorePageCollectionViewLayout *)self _indexPathsForPinningItems];
    v8 = [_indexPathsForPinningItems containsObject:pathCopy];

    if (v8)
    {
      v9 = [(SUUIStorePageCollectionViewLayout *)self _itemPinningLayoutInformationForItemAtIndexPath:pathCopy];
      v10 = [(SUUIStorePageCollectionViewLayout *)self _itemPinningConfigurationForItemAtIndexPath:pathCopy];
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    [(SUUIStorePageCollectionViewLayout *)self _configureCellLayoutAttributes:v6 forItemWithPinningConfiguration:v10 layoutInformation:v9 atIndexPath:pathCopy allowPinning:v8 returningIsPinning:0];
  }

  return v6;
}

- (void)prepareForCollectionViewUpdates:(id)updates
{
  v21 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(NSArray *)updatesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(updatesCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        [(SUUIStorePageCollectionViewLayout *)self _invalidatePinningLayoutInformation];
        indexPathBeforeUpdate = [v9 indexPathBeforeUpdate];
        if (indexPathBeforeUpdate)
        {
          v11 = [(NSMapTable *)self->_indexPathToItemPinningConfiguration objectForKey:indexPathBeforeUpdate];
          if (v11)
          {
            indexPathAfterUpdate = [v9 indexPathAfterUpdate];
            [(NSMapTable *)self->_indexPathToItemPinningConfiguration removeObjectForKey:indexPathBeforeUpdate];
            if (indexPathAfterUpdate)
            {
              [(NSMapTable *)self->_indexPathToItemPinningConfiguration setObject:v11 forKey:indexPathAfterUpdate];
            }
          }
        }
      }

      v6 = [(NSArray *)updatesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  updateItems = self->_updateItems;
  self->_updateItems = updatesCopy;
  v14 = updatesCopy;

  v15.receiver = self;
  v15.super_class = SUUIStorePageCollectionViewLayout;
  [(SUUIStorePageCollectionViewLayout *)&v15 prepareForCollectionViewUpdates:v14];
}

- (void)prepareLayout
{
  v14.receiver = self;
  v14.super_class = SUUIStorePageCollectionViewLayout;
  [(UICollectionViewFlowLayout *)&v14 prepareLayout];
  collectionView = [(SUUIStorePageCollectionViewLayout *)self collectionView];
  delegate = [collectionView delegate];
  *&self->_collectionViewDelegateFlags = *&self->_collectionViewDelegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_collectionViewDelegateFlags = *&self->_collectionViewDelegateFlags & 0xFD | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *&self->_collectionViewDelegateFlags = *&self->_collectionViewDelegateFlags & 0xFB | v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  *&self->_collectionViewDelegateFlags = *&self->_collectionViewDelegateFlags & 0xF7 | v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = 16;
  }

  else
  {
    v8 = 0;
  }

  *&self->_collectionViewDelegateFlags = *&self->_collectionViewDelegateFlags & 0xEF | v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = 32;
  }

  else
  {
    v9 = 0;
  }

  *&self->_collectionViewDelegateFlags = *&self->_collectionViewDelegateFlags & 0xDF | v9;
  backgroundColor = [collectionView backgroundColor];
  collectionViewBackgroundColor = self->_collectionViewBackgroundColor;
  self->_collectionViewBackgroundColor = backgroundColor;

  _indexPathsForPinningItems = [(SUUIStorePageCollectionViewLayout *)self _indexPathsForPinningItems];
  _indexPathsForBackgroundGradients = [(SUUIStorePageCollectionViewLayout *)self _indexPathsForBackgroundGradients];
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  y = change.origin.y;
  v10.receiver = self;
  v10.super_class = SUUIStorePageCollectionViewLayout;
  if ([(UICollectionViewFlowLayout *)&v10 shouldInvalidateLayoutForBoundsChange:change.origin.x, change.origin.y, change.size.width, change.size.height])
  {
    return 1;
  }

  _indexPathsForPinningItems = [(SUUIStorePageCollectionViewLayout *)self _indexPathsForPinningItems];
  if ([_indexPathsForPinningItems count])
  {
    collectionView = [(SUUIStorePageCollectionViewLayout *)self collectionView];
    [collectionView bounds];
    v5 = y != v8;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateItemsLayoutForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (self->_overrideContentWidth >= 0.00000011920929)
  {
    collectionView = [(SUUIStorePageCollectionViewLayout *)self collectionView];
    [collectionView setOverrideBoundsWidth:self->_overrideContentWidth];
    v9.receiver = self;
    v9.super_class = SUUIStorePageCollectionViewLayout;
    [(SUUIStorePageCollectionViewLayout *)&v9 _updateItemsLayoutForRect:x, y, width, height];
    [collectionView setOverrideBoundsWidth:0.0];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SUUIStorePageCollectionViewLayout;
    [(SUUIStorePageCollectionViewLayout *)&v10 _updateItemsLayoutForRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  }
}

- (id)layoutAttributesForUnpinnedItemAtIndexPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = SUUIStorePageCollectionViewLayout;
  v5 = [(UICollectionViewFlowLayout *)&v12 layoutAttributesForItemAtIndexPath:pathCopy];
  v6 = v5;
  if (!self->_inLayoutAttributesForElementsCount && ![v5 representedElementCategory])
  {
    _indexPathsForPinningItems = [(SUUIStorePageCollectionViewLayout *)self _indexPathsForPinningItems];
    v8 = [_indexPathsForPinningItems containsObject:pathCopy];

    if (v8)
    {
      v9 = [(SUUIStorePageCollectionViewLayout *)self _itemPinningLayoutInformationForItemAtIndexPath:pathCopy];
      v10 = [(SUUIStorePageCollectionViewLayout *)self _itemPinningConfigurationForItemAtIndexPath:pathCopy];
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    [(SUUIStorePageCollectionViewLayout *)self _configureCellLayoutAttributes:v6 forItemWithPinningConfiguration:v10 layoutInformation:v9 atIndexPath:pathCopy allowPinning:0 returningIsPinning:0];
  }

  return v6;
}

- (id)pinnedLayoutAttributesForItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v31 = *MEMORY[0x277D85DE8];
  ++self->_inLayoutAttributesForElementsCount;
  v29.receiver = self;
  v29.super_class = SUUIStorePageCollectionViewLayout;
  v8 = [(UICollectionViewFlowLayout *)&v29 layoutAttributesForElementsInRect:?];
  v9 = [v8 mutableCopy];

  [(SUUIStorePageCollectionViewLayout *)self _appendAdditionalLayoutAttributesForPinningItemsInRect:v9 toArray:x, y, width, height];
  --self->_inLayoutAttributesForElementsCount;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v23 = 0;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        if (![v15 representedElementCategory])
        {
          indexPath = [v15 indexPath];
          _indexPathsForPinningItems = [(SUUIStorePageCollectionViewLayout *)self _indexPathsForPinningItems];
          v18 = [_indexPathsForPinningItems containsObject:indexPath];

          if (v18)
          {
            v19 = [(SUUIStorePageCollectionViewLayout *)self _itemPinningLayoutInformationForItemAtIndexPath:indexPath];
            v20 = [(SUUIStorePageCollectionViewLayout *)self _itemPinningConfigurationForItemAtIndexPath:indexPath];
          }

          else
          {
            v20 = 0;
            v19 = 0;
          }

          v24 = 0;
          [(SUUIStorePageCollectionViewLayout *)self _configureCellLayoutAttributes:v15 forItemWithPinningConfiguration:v20 layoutInformation:v19 atIndexPath:indexPath allowPinning:v18 returningIsPinning:&v24];
          if (v24 == 1)
          {
            [v15 frame];
            [(SUUIStorePageCollectionViewLayout *)self _pinningFrameForStartingFrame:v20 itemPinningConfiguration:indexPath atIndexPath:?];
            [v15 setFrame:?];
            v21 = v23;
            if (!v23)
            {
              v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
            }

            [v21 addObject:{v15, v21}];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v12);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)setAllowsPinningTransitions:(BOOL)transitions
{
  if (self->_allowsPinningTransitions != transitions)
  {
    self->_allowsPinningTransitions = transitions;
    [(SUUIStorePageCollectionViewLayout *)self _invalidatePinningLayoutInformation];
    v5 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
    [v5 setInvalidateItemPinningLayoutInformation:1];
    [(SUUIStorePageCollectionViewLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setBackdropGroupName:(id)name
{
  nameCopy = name;
  backdropGroupName = self->_backdropGroupName;
  if (backdropGroupName != nameCopy)
  {
    v10 = nameCopy;
    backdropGroupName = [(NSString *)backdropGroupName isEqualToString:nameCopy];
    nameCopy = v10;
    if ((backdropGroupName & 1) == 0)
    {
      v6 = [(NSString *)v10 copy];
      v7 = self->_backdropGroupName;
      self->_backdropGroupName = v6;

      _indexPathsForPinningItems = [(SUUIStorePageCollectionViewLayout *)self _indexPathsForPinningItems];
      if ([_indexPathsForPinningItems count])
      {
        v9 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
        [v9 setInvalidateItemPinningLayoutInformation:0];
        [v9 setInvalidateFlowLayoutDelegateMetrics:0];
        [v9 setInvalidateFlowLayoutAttributes:0];
        [v9 invalidateDecorationElementsOfKind:0x286AED1E0 atIndexPaths:_indexPathsForPinningItems];
        [(SUUIStorePageCollectionViewLayout *)self invalidateLayoutWithContext:v9];
      }

      nameCopy = v10;
    }
  }

  MEMORY[0x2821F96F8](backdropGroupName, nameCopy);
}

- (BOOL)_allowsBackdropDecorationForItemPinningConfiguration:(id)configuration atIndexPath:(id)path
{
  v4 = [(SUUIStorePageCollectionViewLayout *)self _pinningStyleForItemPinningConfiguration:configuration atIndexPath:path];
  if (v4)
  {
    v5 = v4 == 3;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (void)_appendAdditionalLayoutAttributesForPinningItemsInRect:(CGRect)rect toArray:(id)array
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v47 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  [(SUUIStorePageCollectionViewLayout *)self _indexPathsForPinningItems];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v9 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    do
    {
      v12 = 0;
      v32 = sel_layoutAttributesForItemAtIndexPath_;
      v34 = v10;
      do
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v41 + 1) + 8 * v12);
        v14 = [(SUUIStorePageCollectionViewLayout *)self _itemPinningLayoutInformationForItemAtIndexPath:v13, v32];
        [v14 availablePinningFrame];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v48.origin.x = v16;
        v48.origin.y = v18;
        v48.size.width = v20;
        v48.size.height = v22;
        v49.origin.x = x;
        v49.origin.y = y;
        v49.size.width = width;
        v49.size.height = height;
        if (CGRectIntersectsRect(v48, v49))
        {
          selfCopy = self;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v24 = arrayCopy;
          v25 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v38;
            while (2)
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v38 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                indexPath = [*(*(&v37 + 1) + 8 * i) indexPath];
                v30 = [indexPath isEqual:v13];

                if (v30)
                {
                  self = selfCopy;
                  goto LABEL_17;
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
              if (v26)
              {
                continue;
              }

              break;
            }
          }

          self = selfCopy;
          v36.receiver = selfCopy;
          v36.super_class = SUUIStorePageCollectionViewLayout;
          v31 = objc_msgSendSuper2(&v36, v32, v13);
          [v24 addObject:v31];
          v24 = v31;
LABEL_17:

          v10 = v34;
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v10);
  }
}

- (void)_calculatePinningLayoutInformation
{
  [(NSMapTable *)self->_indexPathToPinningLayoutInformation removeAllObjects];
  collectionView = [(SUUIStorePageCollectionViewLayout *)self collectionView];
  [collectionView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  _indexPathsForPinningItems = [(SUUIStorePageCollectionViewLayout *)self _indexPathsForPinningItems];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x4010000000;
  v34[3] = "";
  v13 = *(MEMORY[0x277D768C8] + 16);
  v35 = *MEMORY[0x277D768C8];
  v36 = v13;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x4010000000;
  v31[3] = "";
  v32 = v35;
  v33 = v13;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__SUUIStorePageCollectionViewLayout__calculatePinningLayoutInformation__block_invoke;
  v15[3] = &unk_2798F7DE8;
  v15[4] = self;
  v17 = v34;
  v18 = v30;
  v19 = v28;
  v20 = v31;
  v21 = v29;
  v22 = v27;
  v14 = _indexPathsForPinningItems;
  v16 = v14;
  v23 = v5;
  v24 = v7;
  v25 = v9;
  v26 = v11;
  [v14 enumerateObjectsUsingBlock:v15];

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v34, 8);
}

void __71__SUUIStorePageCollectionViewLayout__calculatePinningLayoutInformation__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) _itemPinningConfigurationForItemAtIndexPath:v5];
  v7 = [*(a1 + 32) _pinningStyleForItemPinningConfiguration:v6 atIndexPath:v5];
  if (!v7)
  {
    goto LABEL_60;
  }

  v8 = v7;
  v77.receiver = *(a1 + 32);
  v77.super_class = SUUIStorePageCollectionViewLayout;
  v9 = objc_msgSendSuper2(&v77, sel_layoutAttributesForItemAtIndexPath_, v5);
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [*(a1 + 32) _pinningContentInsetForItemPinningConfiguration:v6 atIndexPath:v5];
  if (!a3)
  {
    v22 = *(*(a1 + 48) + 8);
    v22[4] = v18;
    v22[5] = v19;
    v22[6] = v20;
    v22[7] = v21;
    *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 48) + 8) + 32) + *(*(*(a1 + 56) + 8) + 24);
  }

  v23 = v8;
  if (*(*(*(a1 + 64) + 8) + 24) != v8)
  {
    v24 = *(*(a1 + 72) + 8);
    v24[4] = v18;
    v24[5] = v19;
    v24[6] = v20;
    v24[7] = v21;
    v23 = *(*(*(a1 + 64) + 8) + 24);
  }

  v25 = -v21 - v19;
  v27 = v8 != 1 && v23 != 1;
  if (v23 != 5 && !v27)
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  v28 = v11 - v19;
  v29 = v13 - v18;
  v30 = v15 - v25;
  v31 = v17 - (-v20 - v18);
  v74 = v20;
  v71 = v13 - v18;
  v72 = v28;
  v69 = v31;
  v70 = v30;
  if (v8 == 3)
  {
    if (a3)
    {
      v32 = v28;
      v33 = v30;
      rect = CGRectGetMinY(*(&v29 - 1));
    }

    else
    {
      rect = 2.22507386e-308;
    }

LABEL_21:
    v78.origin.x = v11;
    v78.origin.y = v13;
    v78.size.width = v15;
    v78.size.height = v17;
    MinY = CGRectGetMinY(v78);
    v37 = *(*(*(a1 + 88) + 8) + 24);
    if (v37 > 0.0)
    {
      MinY = MinY - (v37 - *(*(*(a1 + 72) + 8) + 32));
    }

    goto LABEL_23;
  }

  v34 = v28;
  v35 = v30;
  rect = CGRectGetMinY(*(&v29 - 1));
  if (v8 != 1)
  {
    goto LABEL_21;
  }

  MinY = *(*(*(a1 + 80) + 8) + 24);
LABEL_23:
  v73 = MinY;
  v75 = v17;
  [v9 frame];
  MaxY = CGRectGetMaxY(v79);
  if (v8 != 3 && [*(a1 + 40) count] - 1 == a3)
  {
    MaxY = 1.79769313e308;
  }

  MinX = CGRectGetMinX(*(a1 + 96));
  Width = CGRectGetWidth(*(a1 + 96));
  if (v8 == 5)
  {
    MinX = CGRectGetMinX(*(a1 + 96));
    v41 = CGRectGetWidth(*(a1 + 96));
    rect = 2.22507386e-308;
    v42 = 1.79769313e308;
  }

  else
  {
    v41 = Width;
    v42 = MaxY - rect;
    if (v8 == 3)
    {
      goto LABEL_47;
    }
  }

  if (a3 >= 1)
  {
    v64 = v15;
    v65 = v13;
    v66 = v11;
    v67 = v9;
    v68 = v6;
    while (1)
    {
      v43 = [*(a1 + 40) objectAtIndex:{a3 - 1, *&v64, *&v65, *&v66, v67, v68}];
      v44 = [*(a1 + 32) _itemPinningConfigurationForItemAtIndexPath:v43];
      v45 = [*(a1 + 32) _pinningStyleForItemPinningConfiguration:v44 atIndexPath:v43];
      v46 = [*(*(a1 + 32) + 592) objectForKey:v43];
      [v46 availablePinningFrame];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;
      if (v8 == 1)
      {
        break;
      }

      if (v8 == 4 || v8 == 2)
      {
        if (v8 == 4 || v45 == 2)
        {
          v82.origin.x = MinX;
          v82.origin.y = rect;
          v82.size.width = v41;
          v82.size.height = v42;
          v55 = CGRectGetMaxY(v82);
          LODWORD(v45) = 0;
        }

        else
        {
          if (v45 != 1)
          {
            goto LABEL_39;
          }

          v80.origin.x = MinX;
          v80.origin.y = rect;
          v80.size.width = v41;
          v80.size.height = v42;
          v55 = CGRectGetMinY(v80);
        }

LABEL_42:
        v83.origin.x = v48;
        v83.origin.y = v50;
        v83.size.width = v52;
        v83.size.height = v54;
        v54 = v55 - CGRectGetMinY(v83);
        goto LABEL_44;
      }

      LODWORD(v45) = 1;
LABEL_44:
      [v46 setAvailablePinningFrame:{v48, v50, v52, v54}];

      if (a3 >= 2)
      {
        --a3;
        if (!v45)
        {
          continue;
        }
      }

      v9 = v67;
      v6 = v68;
      v13 = v65;
      v11 = v66;
      v15 = v64;
      goto LABEL_47;
    }

    if (v45 == 3)
    {
LABEL_39:
      LODWORD(v45) = 0;
      goto LABEL_44;
    }

    v81.origin.x = MinX;
    v81.origin.y = rect;
    v81.size.width = v41;
    v81.size.height = v42;
    v55 = CGRectGetMinY(v81);
    LODWORD(v45) = 1;
    goto LABEL_42;
  }

LABEL_47:
  v56 = objc_alloc_init(SUUIStorePageItemPinningLayoutInformation);
  [(SUUIStorePageItemPinningLayoutInformation *)v56 setAvailablePinningFrame:MinX, rect, v41, v42];
  [(SUUIStorePageItemPinningLayoutInformation *)v56 setLayoutAttributesFrame:v11, v13, v15, v75];
  [(SUUIStorePageItemPinningLayoutInformation *)v56 setAfterPinningLocationYAdditions:v73];
  [(SUUIStorePageItemPinningLayoutInformation *)v56 setBeforePinningLocationYAdditions:*(*(*(a1 + 56) + 8) + 24)];
  v57 = *(*(a1 + 32) + 592);
  if (!v57)
  {
    v58 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:{objc_msgSend(*(a1 + 40), "count")}];
    v59 = *(a1 + 32);
    v60 = *(v59 + 592);
    *(v59 + 592) = v58;

    v57 = *(*(a1 + 32) + 592);
  }

  [v57 setObject:v56 forKey:v5];
  if (v8 <= 5 && ((1 << v8) & 0x34) != 0)
  {
    v84.origin.y = v71;
    v84.origin.x = v72;
    v84.size.height = v69;
    v84.size.width = v70;
    *(*(*(a1 + 80) + 8) + 24) = CGRectGetHeight(v84) + *(*(*(a1 + 80) + 8) + 24);
  }

  v61 = [*(a1 + 32) _itemPinningConfigurationForItemAtIndexPath:v5];
  v62 = [*(a1 + 32) _pinningGroupForItemPinningConfiguration:v61 atIndexPath:v5];
  if (v8 == 3 && (*(*(*(a1 + 88) + 8) + 24) == 0.0 || v62 == 1))
  {
    v85.origin.x = v11;
    v85.origin.y = v13;
    v85.size.width = v15;
    v85.size.height = v75;
    *(*(*(a1 + 88) + 8) + 24) = CGRectGetHeight(v85) + *(*(*(a1 + 88) + 8) + 24);
  }

  v86.origin.x = v11;
  v86.origin.y = v13;
  v86.size.width = v15;
  v86.size.height = v75;
  *(*(*(a1 + 56) + 8) + 24) = v74 + CGRectGetHeight(v86) + *(*(*(a1 + 56) + 8) + 24);
  *(*(*(a1 + 64) + 8) + 24) = v8;

LABEL_60:
}

- (void)_configureCellLayoutAttributes:(id)attributes forItemWithPinningConfiguration:(id)configuration layoutInformation:(id)information atIndexPath:(id)path allowPinning:(BOOL)pinning returningIsPinning:(BOOL *)isPinning
{
  pinningCopy = pinning;
  attributesCopy = attributes;
  configurationCopy = configuration;
  informationCopy = information;
  pathCopy = path;
  collectionView = [(SUUIStorePageCollectionViewLayout *)self collectionView];
  v19 = collectionView;
  if (self->_rendersWithPerspective)
  {
    [collectionView bounds];
    x = v40.origin.x;
    y = v40.origin.y;
    width = v40.size.width;
    height = v40.size.height;
    CGRectGetMidX(v40);
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    CGRectGetMidY(v41);
    [attributesCopy center];
    UIDistanceBetweenPoints();
    [attributesCopy setZIndex:-fabs(v24)];
  }

  if ((*&self->_collectionViewDelegateFlags & 0x20) != 0)
  {
    delegate = [v19 delegate];
    [delegate collectionView:v19 layout:self willApplyLayoutAttributes:attributesCopy];
  }

  v39 = 0;
  [attributesCopy frame];
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  if (pinningCopy)
  {
    [(SUUIStorePageCollectionViewLayout *)self _targetFrameForStartingFrame:configurationCopy itemPinningConfiguration:informationCopy layoutInformation:pathCopy atIndexPath:&v39 returningIsPinning:v26, v27, v28, v29];
    v30 = v34;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    if (v39)
    {
      [attributesCopy setZIndex:{objc_msgSend(pathCopy, "section") + 200}];
      if ([(SUUIStorePageCollectionViewLayout *)self _allowsBackdropDecorationForItemPinningConfiguration:configurationCopy atIndexPath:pathCopy])
      {
        clearColor = [MEMORY[0x277D75348] clearColor];
        [attributesCopy setBackgroundColor:clearColor];
      }
    }
  }

  [attributesCopy setFrame:{v30, v31, v32, v33}];
  if (isPinning)
  {
    *isPinning = v39;
  }
}

- (id)_getCollectionViewUpdateItemForItemFromIndex:(int64_t)index initalLayout:(BOOL)layout
{
  layoutCopy = layout;
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_updateItems;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (layoutCopy)
        {
          [v11 indexPathAfterUpdate];
        }

        else
        {
          [v11 indexPathBeforeUpdate];
        }
        v12 = ;
        section = [v12 section];

        if (section == index)
        {
          v14 = v11;
          goto LABEL_14;
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (id)_indexPathsForBackgroundGradients
{
  if (!self->_hasValidGradientIndexPaths)
  {
    collectionView = [(SUUIStorePageCollectionViewLayout *)self collectionView];
    delegate = [collectionView delegate];
    v5 = [delegate indexPathsForGradientItemsInCollectionView:collectionView layout:self];
    indexPathsForGradientItems = self->_indexPathsForGradientItems;
    if (indexPathsForGradientItems != v5 && ![(NSArray *)indexPathsForGradientItems isEqualToArray:v5])
    {
      v7 = [(NSArray *)v5 copy];
      v8 = self->_indexPathsForGradientItems;
      self->_indexPathsForGradientItems = v7;
    }

    self->_hasValidGradientIndexPaths = 1;
  }

  v9 = self->_indexPathsForGradientItems;

  return v9;
}

- (id)_indexPathsForPinningItems
{
  v26 = *MEMORY[0x277D85DE8];
  if (!self->_hasValidIndexPathsForPinningItems)
  {
    collectionView = [(SUUIStorePageCollectionViewLayout *)self collectionView];
    delegate = [collectionView delegate];
    v5 = delegate;
    if (*&self->_collectionViewDelegateFlags)
    {
      v6 = [delegate indexPathsForPinningItemsInCollectionView:collectionView layout:self];
    }

    else
    {
      v6 = 0;
    }

    indexPathsForPinningItems = self->_indexPathsForPinningItems;
    if (indexPathsForPinningItems != v6 && ![(NSArray *)indexPathsForPinningItems isEqualToArray:v6])
    {
      v19 = v5;
      v20 = collectionView;
      v8 = self->_indexPathsForPinningItems;
      v9 = [(NSArray *)v6 copy];
      v10 = self->_indexPathsForPinningItems;
      self->_indexPathsForPinningItems = v9;

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = v8;
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            if (![(NSArray *)self->_indexPathsForPinningItems containsObject:v16, v19, v20, v21])
            {
              [(NSMapTable *)self->_indexPathToItemPinningConfiguration removeObjectForKey:v16];
            }
          }

          v13 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v13);
      }

      v5 = v19;
      collectionView = v20;
    }

    self->_hasValidIndexPathsForPinningItems = 1;
  }

  v17 = self->_indexPathsForPinningItems;

  return v17;
}

- (void)_invalidatePinningLayoutInformation
{
  indexPathToPinningLayoutInformation = self->_indexPathToPinningLayoutInformation;
  self->_indexPathToPinningLayoutInformation = 0;

  self->_hasValidPinningLayoutInformation = 0;
}

- (id)_itemPinningConfigurationForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v5 = [(NSMapTable *)self->_indexPathToItemPinningConfiguration objectForKey:pathCopy];
    if (!v5)
    {
      v5 = objc_alloc_init(SUUIStorePageItemPinningConfiguration);
      indexPathToItemPinningConfiguration = self->_indexPathToItemPinningConfiguration;
      if (!indexPathToItemPinningConfiguration)
      {
        v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:1];
        v8 = self->_indexPathToItemPinningConfiguration;
        self->_indexPathToItemPinningConfiguration = v7;

        indexPathToItemPinningConfiguration = self->_indexPathToItemPinningConfiguration;
      }

      [(NSMapTable *)indexPathToItemPinningConfiguration setObject:v5 forKey:pathCopy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_itemPinningLayoutInformationForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    if (!self->_hasValidPinningLayoutInformation)
    {
      [(SUUIStorePageCollectionViewLayout *)self _calculatePinningLayoutInformation];
      self->_hasValidPinningLayoutInformation = 1;
    }

    v5 = [(NSMapTable *)self->_indexPathToPinningLayoutInformation objectForKey:pathCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_layoutAttributesForPinnedBackdropDecorationViewAtIndexPath:(id)path pinningConfiguration:(id)configuration layoutInformation:(id)information
{
  pathCopy = path;
  configurationCopy = configuration;
  informationCopy = information;
  collectionView = [(SUUIStorePageCollectionViewLayout *)self collectionView];
  v12 = [(UICollectionViewLayoutAttributes *)SUUIStorePagePinnedBackdropLayoutAttributes layoutAttributesForDecorationViewOfKind:0x286AED1E0 withIndexPath:pathCopy];
  [v12 setBackdropGroupName:self->_backdropGroupName];
  if (![(SUUIStorePageCollectionViewLayout *)self _allowsBackdropDecorationForItemPinningConfiguration:configurationCopy atIndexPath:pathCopy])
  {
    v20 = 1;
    v14 = 0.0;
    goto LABEL_21;
  }

  v41 = 0;
  [informationCopy layoutAttributesFrame];
  [(SUUIStorePageCollectionViewLayout *)self _targetFrameForStartingFrame:configurationCopy itemPinningConfiguration:informationCopy layoutInformation:pathCopy atIndexPath:&v41 returningIsPinning:?];
  v13 = v41;
  v14 = 0.0;
  if (v41 == 1)
  {
    [(SUUIStorePageCollectionViewLayout *)self _pinningFrameForStartingFrame:configurationCopy itemPinningConfiguration:pathCopy atIndexPath:?];
    [v12 setFrame:?];
    [v12 setZIndex:150];
    v15 = [(SUUIStorePageCollectionViewLayout *)self _pinningTransitionStyleForItemPinningConfiguration:configurationCopy atIndexPath:pathCopy];
    if (v15)
    {
      v16 = v15;
      _pinnedBackdropViewStyle = [(SUUIStorePageCollectionViewLayout *)self _pinnedBackdropViewStyle];
      v18 = _pinnedBackdropViewStyle;
      if (_pinnedBackdropViewStyle)
      {
        if (_pinnedBackdropViewStyle == 2)
        {
          v19 = 2030;
        }

        else
        {
          if (_pinnedBackdropViewStyle != 1)
          {
            goto LABEL_13;
          }

          v19 = 2010;
        }

        [v12 setBackdropStyle:v19];
        v21 = 0;
      }

      else
      {
        v21 = 1;
      }

      [v12 setHidesBackdropView:v21];
LABEL_13:
      if (v16 == 2)
      {
        v14 = 1.0;
      }

      else if (v16 == 1)
      {
        v14 = 1.0;
        if (!v18)
        {
          [collectionView _effectiveContentInset];
          v23 = v22;
          [collectionView contentOffset];
          v25 = v23 + v24;
          v40.receiver = self;
          v40.super_class = SUUIStorePageCollectionViewLayout;
          v26 = [(UICollectionViewFlowLayout *)&v40 layoutAttributesForItemAtIndexPath:pathCopy];
          [v26 frame];
          [(SUUIStorePageCollectionViewLayout *)self _pinningFrameForStartingFrame:configurationCopy itemPinningConfiguration:pathCopy atIndexPath:?];
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;
          [informationCopy afterPinningLocationYAdditions];
          v36 = v25 + v35;
          v43.origin.x = v28;
          v43.origin.y = v30;
          v43.size.width = v32;
          v43.size.height = v34;
          v37 = v36 - CGRectGetMinY(v43);
          v44.origin.x = v28;
          v44.origin.y = v30;
          v44.size.width = v32;
          v44.size.height = v34;
          v38 = v37 / fmin(CGRectGetHeight(v44), 6.0);
          if (v38 > 1.0)
          {
            v38 = 1.0;
          }

          v14 = fmax(v38, 0.0);
        }
      }
    }
  }

  v20 = v13 ^ 1u;
LABEL_21:
  [v12 setBackdropColor:self->_collectionViewBackgroundColor];
  [v12 setTransitionProgress:v14];
  [v12 setHidden:v20];

  return v12;
}

- (id)_layoutAttributesForGradientDecorationViewAtIndexPath:(id)path currentAttributes:(id)attributes
{
  pathCopy = path;
  attributesCopy = attributes;
  collectionView = [(SUUIStorePageCollectionViewLayout *)self collectionView];
  v9 = [collectionView numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}];
  v10 = [(SUUIStorePageCollectionViewLayout *)self layoutAttributesForDecorationViewOfKind:0x286AFBAC0 atIndexPath:pathCopy];
  [collectionView bounds];
  [attributesCopy size];
  v12 = v11;
  [attributesCopy frame];
  if (v9 >= 2)
  {
    v17 = v13;
    v18 = v14;
    v19 = v15;
    v20 = v16;
    for (i = 1; i != v9; ++i)
    {
      v22 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:{objc_msgSend(pathCopy, "section")}];
      v23 = [(SUUIStorePageCollectionViewLayout *)self layoutAttributesForItemAtIndexPath:v22];

      [v23 frame];
      MaxY = CGRectGetMaxY(v37);
      v38.origin.x = v17;
      v38.origin.y = v18;
      v38.size.width = v19;
      v38.size.height = v20;
      if (MaxY > CGRectGetMaxY(v38))
      {
        [v23 frame];
        v25 = CGRectGetMaxY(v39);
        v40.origin.x = v17;
        v40.origin.y = v18;
        v40.size.width = v19;
        v40.size.height = v20;
        v12 = v12 + v25 - CGRectGetMaxY(v40);
        [v23 frame];
        v17 = v26;
        v18 = v27;
        v19 = v28;
        v20 = v29;
      }
    }
  }

  [v10 frame];
  [attributesCopy frame];
  v31 = v30;
  [attributesCopy frame];
  [v10 setFrame:v31];
  [v10 setZIndex:-1];
  delegate = [collectionView delegate];
  v33 = [delegate backgroundColorForSection:{objc_msgSend(pathCopy, "section")}];
  v34 = [v33 copy];

  [v10 setGradientColor:v34];
  [v10 setHidden:0];

  return v10;
}

- (int64_t)_pinnedBackdropViewStyle
{
  if (!self->_hasValidPinnedBackdropViewStyle)
  {
    self->_pinnedBackdropViewStyle = 0;
    v8 = 0.0;
    collectionView = [(SUUIStorePageCollectionViewLayout *)self collectionView];
    backgroundColor = [collectionView backgroundColor];
    v5 = [backgroundColor getWhite:&v8 alpha:0];

    if (v5)
    {
      if (v8 > 0.999999881)
      {
        v6 = 1;
LABEL_7:
        self->_pinnedBackdropViewStyle = v6;
        goto LABEL_8;
      }

      if (v8 <= 0.215686275)
      {
        v6 = 2;
        goto LABEL_7;
      }
    }

LABEL_8:
    self->_hasValidPinnedBackdropViewStyle = 1;
  }

  return self->_pinnedBackdropViewStyle;
}

- (UIEdgeInsets)_pinningContentInsetForItemPinningConfiguration:(id)configuration atIndexPath:(id)path
{
  configurationCopy = configuration;
  pathCopy = path;
  if (([configurationCopy hasValidPinningContentInset] & 1) == 0)
  {
    if ((*&self->_collectionViewDelegateFlags & 2) != 0)
    {
      collectionView = [(SUUIStorePageCollectionViewLayout *)self collectionView];
      delegate = [collectionView delegate];
      [delegate collectionView:collectionView layout:self pinningContentInsetForItemAtIndexPath:pathCopy];
      v8 = v14;
      v9 = v15;
      v10 = v16;
      v11 = v17;
    }

    else
    {
      v8 = *MEMORY[0x277D768C8];
      v9 = *(MEMORY[0x277D768C8] + 8);
      v10 = *(MEMORY[0x277D768C8] + 16);
      v11 = *(MEMORY[0x277D768C8] + 24);
    }

    [configurationCopy setPinningContentInset:{v8, v9, v10, v11}];
  }

  [configurationCopy pinningContentInset];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.right = v29;
  result.bottom = v28;
  result.left = v27;
  result.top = v26;
  return result;
}

- (CGRect)_pinningFrameForStartingFrame:(CGRect)frame itemPinningConfiguration:(id)configuration atIndexPath:(id)path
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SUUIStorePageCollectionViewLayout *)self _pinningContentInsetForItemPinningConfiguration:configuration atIndexPath:path];
  v10 = -v9;
  v13 = y - v12;
  v15 = width - (-v11 - v14);
  v16 = height - (v10 - v12);
  v17 = x - v14;
  v18 = v13;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (int64_t)_pinningStyleForItemPinningConfiguration:(id)configuration atIndexPath:(id)path
{
  configurationCopy = configuration;
  pathCopy = path;
  if (([configurationCopy hasValidPinningStyle] & 1) == 0)
  {
    if ((*&self->_collectionViewDelegateFlags & 4) != 0)
    {
      collectionView = [(SUUIStorePageCollectionViewLayout *)self collectionView];
      delegate = [collectionView delegate];
      v8 = [delegate collectionView:collectionView layout:self pinningStyleForItemAtIndexPath:pathCopy];
    }

    else
    {
      v8 = 0;
    }

    [configurationCopy setPinningStyle:v8];
  }

  pinningStyle = [configurationCopy pinningStyle];

  return pinningStyle;
}

- (int64_t)_pinningGroupForItemPinningConfiguration:(id)configuration atIndexPath:(id)path
{
  configurationCopy = configuration;
  pathCopy = path;
  if (([configurationCopy hasValidPinningGroup] & 1) == 0)
  {
    if ((*&self->_collectionViewDelegateFlags & 8) != 0)
    {
      collectionView = [(SUUIStorePageCollectionViewLayout *)self collectionView];
      delegate = [collectionView delegate];
      v8 = [delegate collectionView:collectionView layout:self pinningGroupForItemAtIndexPath:pathCopy];
    }

    else
    {
      v8 = 0;
    }

    [configurationCopy setPinningGroup:v8];
  }

  pinningGroup = [configurationCopy pinningGroup];

  return pinningGroup;
}

- (int64_t)_pinningTransitionStyleForItemPinningConfiguration:(id)configuration atIndexPath:(id)path
{
  configurationCopy = configuration;
  pathCopy = path;
  if (self->_allowsPinningTransitions)
  {
    if (([configurationCopy hasValidPinningTransitionStyle] & 1) == 0)
    {
      if ((*&self->_collectionViewDelegateFlags & 0x10) != 0)
      {
        collectionView = [(SUUIStorePageCollectionViewLayout *)self collectionView];
        delegate = [collectionView delegate];
        v8 = [delegate collectionView:collectionView layout:self pinningTransitionStyleForItemAtIndexPath:pathCopy];
      }

      else
      {
        v8 = 0;
      }

      [configurationCopy setPinningTransitionStyle:v8];
    }

    pinningTransitionStyle = [configurationCopy pinningTransitionStyle];
  }

  else
  {
    pinningTransitionStyle = 0;
  }

  return pinningTransitionStyle;
}

- (CGRect)_targetFrameForStartingFrame:(CGRect)frame itemPinningConfiguration:(id)configuration layoutInformation:(id)information atIndexPath:(id)path returningIsPinning:(BOOL *)pinning
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  informationCopy = information;
  pathCopy = path;
  [(SUUIStorePageCollectionViewLayout *)self _pinningContentInsetForItemPinningConfiguration:configurationCopy atIndexPath:pathCopy];
  v90 = x;
  v91 = width;
  v21 = x - v20;
  v23 = y - v22;
  v24 = width - (-v19 - v20);
  v25 = height;
  v26 = height - (-v18 - v22);
  collectionView = [(SUUIStorePageCollectionViewLayout *)self collectionView];
  [collectionView contentOffset];
  v29 = v28;
  [collectionView _effectiveContentInset];
  v31 = v29 + v30;
  v32 = [(SUUIStorePageCollectionViewLayout *)self _pinningStyleForItemPinningConfiguration:configurationCopy atIndexPath:pathCopy];
  v33 = 0;
  if (v32 <= 2)
  {
    if (v32 == 1)
    {
      [informationCopy afterPinningLocationYAdditions];
      v51 = v31 + v50;
      v99.origin.x = v21;
      v99.origin.y = v23;
      v99.size.width = v24;
      v99.size.height = v26;
      v52 = v51 - CGRectGetMinY(v99);
      if (v52 <= 0.00000011920929)
      {
        _indexPathsForPinningItems = [(SUUIStorePageCollectionViewLayout *)self _indexPathsForPinningItems];
        v77 = _indexPathsForPinningItems;
        v35 = v90;
        v34 = v91;
        if (!_indexPathsForPinningItems || (v78 = [_indexPathsForPinningItems indexOfObject:pathCopy], v78 == 0x7FFFFFFFFFFFFFFFLL) || (v79 = v78 - 1, v78 < 1) || v79 >= objc_msgSend(v77, "count"))
        {
          v33 = 0;
        }

        else
        {
          v80 = [v77 objectAtIndex:v79];
          v89 = [(SUUIStorePageCollectionViewLayout *)self _itemPinningLayoutInformationForItemAtIndexPath:v80];
          v81 = [(SUUIStorePageCollectionViewLayout *)self _itemPinningConfigurationForItemAtIndexPath:v80];
          v82 = [(SUUIStorePageCollectionViewLayout *)self _pinningStyleForItemPinningConfiguration:v81 atIndexPath:v80];
          v33 = 0;
          if (v82 && v82 != 3)
          {
            [v89 layoutAttributesFrame];
            [(SUUIStorePageCollectionViewLayout *)self _pinningFrameForStartingFrame:v81 itemPinningConfiguration:v80 atIndexPath:?];
            v33 = v52 + CGRectGetHeight(v103) > 0.00000011920929;
          }
        }

        if (pinning)
        {
          goto LABEL_43;
        }

        goto LABEL_44;
      }

      v41 = y + v52;
    }

    else
    {
      if (v32 != 2)
      {
        goto LABEL_41;
      }

      [informationCopy afterPinningLocationYAdditions];
      v39 = v31 + v38;
      v96.origin.x = v21;
      v96.origin.y = v23;
      v96.size.width = v24;
      v96.size.height = v26;
      v40 = v39 - CGRectGetMinY(v96);
      if (v40 <= 0.00000011920929)
      {
        v33 = 0;
        goto LABEL_41;
      }

      v41 = y + v40;
    }

    [informationCopy availablePinningFrame];
    v54 = v53;
    v56 = v55;
    v87 = v58;
    v88 = v57;
    v35 = v90;
    v34 = v91;
    [(SUUIStorePageCollectionViewLayout *)self _pinningFrameForStartingFrame:configurationCopy itemPinningConfiguration:pathCopy atIndexPath:v90, v41, v91, v25];
    MaxY = CGRectGetMaxY(v100);
    v60 = v54;
    v61 = v56;
    v63 = v87;
    v62 = v88;
    goto LABEL_21;
  }

  if (v32 != 3)
  {
    if (v32 != 4)
    {
      v35 = v90;
      v34 = v91;
      if (v32 == 5)
      {
        if (y > v29)
        {
          [collectionView bounds];
          v36 = v29 + CGRectGetHeight(v92);
          v93.origin.x = v90;
          v93.origin.y = y;
          v93.size.width = v91;
          v93.size.height = v25;
          if (y > v36 - CGRectGetHeight(v93))
          {
            [collectionView bounds];
            v37 = v29 + CGRectGetHeight(v94);
            v95.origin.x = v90;
            v95.origin.y = y;
            v95.size.width = v91;
            v95.size.height = v25;
            y = v37 - CGRectGetHeight(v95);
            goto LABEL_24;
          }

          goto LABEL_28;
        }

        v33 = 1;
        y = v29;
        if (!pinning)
        {
          goto LABEL_44;
        }

LABEL_43:
        *pinning = v33;
        goto LABEL_44;
      }

      goto LABEL_42;
    }

    [informationCopy beforePinningLocationYAdditions];
    v48 = v31 + v47;
    v35 = v90;
    v34 = v91;
    v98.origin.x = v90;
    v98.origin.y = y;
    v98.size.width = v91;
    v98.size.height = v25;
    v49 = v48 - CGRectGetMinY(v98);
    if (v49 < -0.00000011920929)
    {
      v33 = 0;
      y = y + v49;
      if (!pinning)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    [informationCopy afterPinningLocationYAdditions];
    v66 = v31 + v65;
    v101.origin.x = v90;
    v101.origin.y = y;
    v101.size.width = v91;
    v101.size.height = v25;
    v67 = v66 - CGRectGetMinY(v101);
    if (v67 <= 0.00000011920929)
    {
LABEL_28:
      v33 = 0;
      if (!pinning)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v41 = y + v67;
    [informationCopy availablePinningFrame];
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    [(SUUIStorePageCollectionViewLayout *)self _pinningFrameForStartingFrame:configurationCopy itemPinningConfiguration:pathCopy atIndexPath:v90, v41, v91, v25];
    MaxY = CGRectGetMaxY(v102);
    v60 = v69;
    v61 = v71;
    v62 = v73;
    v63 = v75;
    v35 = v90;
    v34 = v91;
LABEL_21:
    v64 = MaxY - CGRectGetMaxY(*&v60);
    if (v64 <= 0.00000011920929)
    {
      y = v41;
    }

    else
    {
      y = v41 - v64;
    }

LABEL_24:
    v33 = 1;
    if (!pinning)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  [informationCopy beforePinningLocationYAdditions];
  v43 = v31 + v42;
  v97.origin.x = v21;
  v97.origin.y = v23;
  v97.size.width = v24;
  v97.size.height = v26;
  v44 = v43 - CGRectGetMinY(v97);
  v45 = v44 < -0.00000011920929;
  v33 = v44 < -0.00000011920929;
  v46 = y + v44;
  if (v45)
  {
    y = v46;
  }

LABEL_41:
  v35 = v90;
  v34 = v91;
LABEL_42:
  if (pinning)
  {
    goto LABEL_43;
  }

LABEL_44:

  v83 = v35;
  v84 = y;
  v85 = v34;
  v86 = v25;
  result.size.height = v86;
  result.size.width = v85;
  result.origin.y = v84;
  result.origin.x = v83;
  return result;
}

@end