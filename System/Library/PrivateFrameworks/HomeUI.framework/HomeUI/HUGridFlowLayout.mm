@interface HUGridFlowLayout
- (HUGridFlowLayout)parentGridLayout;
- (id)_modifiedLayoutAttributesForAttributes:(id)attributes;
- (id)initForRTL:(BOOL)l;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)path withTargetPosition:(CGPoint)position;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)_updateContainingGridLayout;
- (void)applyOverrideAttributes:(id)attributes toItem:(id)item atIndexPath:(id)path;
- (void)clearAllOverrideAttributesForItems:(id)items;
- (void)clearOverrideAttributesForItem:(id)item atIndexPath:(id)path;
- (void)invalidateLayout;
- (void)prepareLayout;
- (void)registerChildGridLayout:(id)layout;
- (void)setLayoutOptions:(id)options;
- (void)unregisterChildGridLayout:(id)layout;
@end

@implementation HUGridFlowLayout

- (id)initForRTL:(BOOL)l
{
  self->_shouldFlipForRTL = l;
  v11.receiver = self;
  v11.super_class = HUGridFlowLayout;
  v3 = [(UICollectionViewFlowLayout *)&v11 init];
  if (v3)
  {
    v4 = objc_opt_new();
    indexPathsByItems = v3->_indexPathsByItems;
    v3->_indexPathsByItems = v4;

    v6 = objc_opt_new();
    overrideAttributesByIndexPath = v3->_overrideAttributesByIndexPath;
    v3->_overrideAttributesByIndexPath = v6;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    childGridLayouts = v3->_childGridLayouts;
    v3->_childGridLayouts = weakObjectsHashTable;
  }

  return v3;
}

- (void)setLayoutOptions:(id)options
{
  v15[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (([(HUGridLayoutOptions *)self->_layoutOptions isEqual:optionsCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_layoutOptions, options);
    -[UICollectionViewFlowLayout setScrollDirection:](self, "setScrollDirection:", [optionsCopy scrollDirection]);
    [optionsCopy rowSpacing];
    [(UICollectionViewFlowLayout *)self setMinimumLineSpacing:?];
    [optionsCopy columnSpacing];
    [(UICollectionViewFlowLayout *)self setMinimumInteritemSpacing:?];
    [optionsCopy sectionLeadingMargin];
    v7 = v6;
    [optionsCopy sectionTrailingMargin];
    [(UICollectionViewFlowLayout *)self setSectionInset:0.0, v7, 0.0, v8];
    v12 = MEMORY[0x277D85DD0];
    v13 = optionsCopy;
    if ([v13 columnStyle])
    {
      v9 = 0;
    }

    else
    {
      v9 = 3;
    }

    v14 = *MEMORY[0x277D768E8];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [(UICollectionViewFlowLayout *)self _setRowAlignmentsOptions:v11];

    [(HUGridFlowLayout *)self invalidateLayout];
  }
}

uint64_t __37__HUGridFlowLayout_setLayoutOptions___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) columnStyle])
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)path withTargetPosition:(CGPoint)position
{
  v6.receiver = self;
  v6.super_class = HUGridFlowLayout;
  v4 = [(HUGridFlowLayout *)&v6 layoutAttributesForInteractivelyMovingItemAtIndexPath:path withTargetPosition:position.x, position.y];
  [v4 setAlpha:0.8];

  return v4;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v12.receiver = self;
  v12.super_class = HUGridFlowLayout;
  v4 = [(UICollectionViewFlowLayout *)&v12 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HUGridFlowLayout_layoutAttributesForElementsInRect___block_invoke;
  v10[3] = &unk_277DBF210;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v4 enumerateObjectsUsingBlock:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

void __54__HUGridFlowLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _modifiedLayoutAttributesForAttributes:a2];
  [*(a1 + 40) addObject:v3];
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = HUGridFlowLayout;
  v4 = [(UICollectionViewFlowLayout *)&v7 layoutAttributesForItemAtIndexPath:path];
  v5 = [(HUGridFlowLayout *)self _modifiedLayoutAttributesForAttributes:v4];

  return v5;
}

- (void)invalidateLayout
{
  v14 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = HUGridFlowLayout;
  [(HUGridFlowLayout *)&v12 invalidateLayout];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  childGridLayouts = [(HUGridFlowLayout *)self childGridLayouts];
  v4 = [childGridLayouts countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(childGridLayouts);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidateLayout];
      }

      while (v5 != v7);
      v5 = [childGridLayouts countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)prepareLayout
{
  v3.receiver = self;
  v3.super_class = HUGridFlowLayout;
  [(UICollectionViewFlowLayout *)&v3 prepareLayout];
  [(HUGridFlowLayout *)self _updateContainingGridLayout];
}

- (void)applyOverrideAttributes:(id)attributes toItem:(id)item atIndexPath:(id)path
{
  v31 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  pathCopy = path;
  attributesCopy = attributes;
  if ([itemCopy conformsToProtocol:&unk_2824C0788])
  {
    homeKitObject = [itemCopy homeKitObject];
    uniqueIdentifier = [homeKitObject uniqueIdentifier];

    indexPathsByItems = [(HUGridFlowLayout *)self indexPathsByItems];
    latestResults = indexPathsByItems;
    v15 = pathCopy;
    v16 = uniqueIdentifier;
  }

  else
  {
    if ([itemCopy conformsToProtocol:&unk_2824C0828])
    {
      latestResults = itemCopy;
      indexPathsByItems = [(HUGridFlowLayout *)self indexPathsByItems];
      uniqueIdentifier = indexPathsByItems;
    }

    else
    {
      uniqueIdentifier = [(HUGridFlowLayout *)self indexPathsByItems];
      latestResults = [itemCopy latestResults];
      indexPathsByItems = uniqueIdentifier;
    }

    v15 = pathCopy;
    v16 = latestResults;
  }

  [indexPathsByItems setObject:v15 forKey:v16];

  overrideAttributesByIndexPath = [(HUGridFlowLayout *)self overrideAttributesByIndexPath];
  [overrideAttributesByIndexPath setObject:attributesCopy forKeyedSubscript:pathCopy];

  v18 = HFLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    indexPathsByItems2 = [(HUGridFlowLayout *)self indexPathsByItems];
    overrideAttributesByIndexPath2 = [(HUGridFlowLayout *)self overrideAttributesByIndexPath];
    v21 = 136316162;
    v22 = "[HUGridFlowLayout applyOverrideAttributes:toItem:atIndexPath:]";
    v23 = 2112;
    v24 = itemCopy;
    v25 = 2112;
    v26 = pathCopy;
    v27 = 2112;
    v28 = indexPathsByItems2;
    v29 = 2112;
    v30 = overrideAttributesByIndexPath2;
    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%s. applied attributes to item %@ at indexPath %@. indexPathsByItems = %@, overrideAttributesByIndexPath = %@", &v21, 0x34u);
  }

  [(HUGridFlowLayout *)self invalidateLayout];
}

- (void)clearOverrideAttributesForItem:(id)item atIndexPath:(id)path
{
  v30 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  pathCopy = path;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    indexPathsByItems = [(HUGridFlowLayout *)self indexPathsByItems];
    overrideAttributesByIndexPath = [(HUGridFlowLayout *)self overrideAttributesByIndexPath];
    v20 = 136316162;
    v21 = "[HUGridFlowLayout clearOverrideAttributesForItem:atIndexPath:]";
    v22 = 2112;
    v23 = itemCopy;
    v24 = 2112;
    v25 = pathCopy;
    v26 = 2112;
    v27 = indexPathsByItems;
    v28 = 2112;
    v29 = overrideAttributesByIndexPath;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%s. clearing attributes to item %@ at indexPath %@. Before clearing: indexPathsByItems = %@, overrideAttributesByIndexPath = %@", &v20, 0x34u);
  }

  if ([itemCopy conformsToProtocol:&unk_2824C0788])
  {
    homeKitObject = [itemCopy homeKitObject];
    uniqueIdentifier = [homeKitObject uniqueIdentifier];

    indexPathsByItems2 = [(HUGridFlowLayout *)self indexPathsByItems];
    latestResults = indexPathsByItems2;
    v15 = uniqueIdentifier;
  }

  else
  {
    if ([itemCopy conformsToProtocol:&unk_2824C0828])
    {
      latestResults = itemCopy;
      indexPathsByItems2 = [(HUGridFlowLayout *)self indexPathsByItems];
      uniqueIdentifier = indexPathsByItems2;
    }

    else
    {
      uniqueIdentifier = [(HUGridFlowLayout *)self indexPathsByItems];
      latestResults = [itemCopy latestResults];
      indexPathsByItems2 = uniqueIdentifier;
    }

    v15 = latestResults;
  }

  [indexPathsByItems2 removeObjectForKey:v15];

  overrideAttributesByIndexPath2 = [(HUGridFlowLayout *)self overrideAttributesByIndexPath];
  [overrideAttributesByIndexPath2 removeObjectForKey:pathCopy];

  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    indexPathsByItems3 = [(HUGridFlowLayout *)self indexPathsByItems];
    overrideAttributesByIndexPath3 = [(HUGridFlowLayout *)self overrideAttributesByIndexPath];
    v20 = 136316162;
    v21 = "[HUGridFlowLayout clearOverrideAttributesForItem:atIndexPath:]";
    v22 = 2112;
    v23 = itemCopy;
    v24 = 2112;
    v25 = pathCopy;
    v26 = 2112;
    v27 = indexPathsByItems3;
    v28 = 2112;
    v29 = overrideAttributesByIndexPath3;
    _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%s. clearing attributes to item %@ at indexPath %@. After clearing: indexPathsByItems = %@, overrideAttributesByIndexPath = %@", &v20, 0x34u);
  }

  [(HUGridFlowLayout *)self invalidateLayout];
}

- (void)clearAllOverrideAttributesForItems:(id)items
{
  v58 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  overrideAttributesByIndexPath = [(HUGridFlowLayout *)self overrideAttributesByIndexPath];
  v6 = [overrideAttributesByIndexPath count];

  if (v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      indexPathsByItems = [(HUGridFlowLayout *)self indexPathsByItems];
      overrideAttributesByIndexPath2 = [(HUGridFlowLayout *)self overrideAttributesByIndexPath];
      *buf = 136315906;
      v51 = "[HUGridFlowLayout clearAllOverrideAttributesForItems:]";
      v52 = 2112;
      v53 = itemsCopy;
      v54 = 2112;
      v55 = indexPathsByItems;
      v56 = 2112;
      v57 = overrideAttributesByIndexPath2;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%s. clearing all attributes for items %@. Before clearing: indexPathsByItems = %@, overrideAttributesByIndexPath = %@", buf, 0x2Au);
    }

    v10 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v39 = itemsCopy;
    v11 = itemsCopy;
    v12 = [v11 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v45;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v45 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v44 + 1) + 8 * i);
          if ([v16 conformsToProtocol:&unk_2824C0788])
          {
            v17 = v16;
            homeKitObject = [v17 homeKitObject];
            uniqueIdentifier = [homeKitObject uniqueIdentifier];

            [v10 addObject:uniqueIdentifier];
          }

          else if ([v16 conformsToProtocol:&unk_2824C0828])
          {
            [v10 addObject:v16];
          }

          else
          {
            latestResults = [v16 latestResults];
            [v10 addObject:latestResults];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v13);
    }

    v21 = MEMORY[0x277CBEB98];
    indexPathsByItems2 = [(HUGridFlowLayout *)self indexPathsByItems];
    allKeys = [indexPathsByItems2 allKeys];
    v24 = [v21 setWithArray:allKeys];

    [v10 intersectSet:v24];
    v25 = HFLogForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v51 = "[HUGridFlowLayout clearAllOverrideAttributesForItems:]";
      v52 = 2112;
      v53 = v10;
      _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "%s. keyItems = %@", buf, 0x16u);
    }

    v26 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    allObjects = [v10 allObjects];
    v28 = [allObjects countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v41;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v41 != v30)
          {
            objc_enumerationMutation(allObjects);
          }

          v32 = *(*(&v40 + 1) + 8 * j);
          indexPathsByItems3 = [(HUGridFlowLayout *)self indexPathsByItems];
          v34 = [indexPathsByItems3 objectForKey:v32];

          if (v34)
          {
            [v26 addObject:v34];
          }
        }

        v29 = [allObjects countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v29);
    }

    v35 = HFLogForCategory();
    itemsCopy = v39;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v51 = "[HUGridFlowLayout clearAllOverrideAttributesForItems:]";
      v52 = 2112;
      v53 = v26;
      _os_log_impl(&dword_20CEB6000, v35, OS_LOG_TYPE_DEFAULT, "%s. clearing all attributes for items. indexPathsToInvalidate = %@", buf, 0x16u);
    }

    indexPathsByItems4 = [(HUGridFlowLayout *)self indexPathsByItems];
    [indexPathsByItems4 removeAllObjects];

    overrideAttributesByIndexPath3 = [(HUGridFlowLayout *)self overrideAttributesByIndexPath];
    [overrideAttributesByIndexPath3 removeAllObjects];

    v38 = objc_alloc_init(MEMORY[0x277D752F8]);
    [v38 invalidateItemsAtIndexPaths:v26];
    [(UICollectionViewFlowLayout *)self invalidateLayoutWithContext:v38];
  }
}

- (void)_updateContainingGridLayout
{
  collectionView = [(HUGridFlowLayout *)self collectionView];
  superview = [collectionView superview];

  while (superview)
  {
    objc_opt_class();
    v5 = superview;
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (isKindOfClass)
    {
      objc_opt_class();
      collectionViewLayout = [v5 collectionViewLayout];
      if (objc_opt_isKindOfClass())
      {
        v10 = collectionViewLayout;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      if (v11)
      {
        parentGridLayout = [(HUGridFlowLayout *)self parentGridLayout];

        if (v11 != parentGridLayout)
        {
          parentGridLayout2 = [(HUGridFlowLayout *)self parentGridLayout];
          [parentGridLayout2 unregisterChildGridLayout:self];

          [v11 registerChildGridLayout:self];
        }
      }
    }

    superview = [v5 superview];
  }
}

- (void)registerChildGridLayout:(id)layout
{
  layoutCopy = layout;
  childGridLayouts = [(HUGridFlowLayout *)self childGridLayouts];
  [childGridLayouts addObject:layoutCopy];

  [layoutCopy setParentGridLayout:self];
}

- (void)unregisterChildGridLayout:(id)layout
{
  layoutCopy = layout;
  childGridLayouts = [(HUGridFlowLayout *)self childGridLayouts];
  [childGridLayouts removeObject:layoutCopy];

  [layoutCopy setParentGridLayout:0];
}

- (id)_modifiedLayoutAttributesForAttributes:(id)attributes
{
  attributesCopy = attributes;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_LayoutAttribut.isa, attributesCopy);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![attributesCopy representedElementCategory])
  {
    indexPath = [attributesCopy indexPath];
    v5 = [attributesCopy copy];
    overrideAttributesByIndexPath = [(HUGridFlowLayout *)self overrideAttributesByIndexPath];
    v9 = [overrideAttributesByIndexPath objectForKeyedSubscript:indexPath];

    if (v9)
    {
      [v9 transform];
      v44 = v47;
      v45 = v48;
      v46 = v49;
      [v5 setTransform:&v44];
      [v9 alpha];
      [v5 setAlpha:?];
      [v5 setZIndex:{objc_msgSend(v9, "zIndex")}];
    }

    collectionView = [(HUGridFlowLayout *)self collectionView];
    delegate = [collectionView delegate];

    if (objc_opt_respondsToSelector())
    {
      collectionView2 = [(HUGridFlowLayout *)self collectionView];
      v13 = [delegate collectionView:collectionView2 gridLayout:self wantsScrollingAdjustmentsForItemAtIndexPath:indexPath];

      if (v13)
      {
        [v5 setZIndex:-1000];
        collectionView3 = [(HUGridFlowLayout *)self collectionView];
        [collectionView3 contentOffset];
        v15 = v14;
        collectionView4 = [(HUGridFlowLayout *)self collectionView];
        [collectionView4 contentInset];
        v18 = v15 + v17;
        collectionView5 = [(HUGridFlowLayout *)self collectionView];
        [collectionView5 contentOffset];
        v21 = v20;
        collectionView6 = [(HUGridFlowLayout *)self collectionView];
        [collectionView6 contentInset];
        v24 = v21 + v23;
        collectionView7 = [(HUGridFlowLayout *)self collectionView];
        [collectionView7 _systemContentInset];
        v27 = v24 + v26;

        if (objc_opt_respondsToSelector())
        {
          collectionView8 = [(HUGridFlowLayout *)self collectionView];
          [delegate collectionView:collectionView8 gridLayout:self alphaForItemAtIndexPath:indexPath scrollDistance:{v18, v27}];
          [v5 setAlpha:?];
        }

        if (objc_opt_respondsToSelector())
        {
          collectionView9 = [(HUGridFlowLayout *)self collectionView];
          [delegate collectionView:collectionView9 gridLayout:self positionOffsetForItemAtIndexPath:indexPath scrollDistance:{v18, v27}];
          v31 = v30;
          v33 = v32;

          [v5 center];
          [v5 setCenter:{v31 + v34, v33 + v35}];
        }

        collectionView10 = [(HUGridFlowLayout *)self collectionView];
        delegate2 = [collectionView10 delegate];
        v38 = objc_opt_respondsToSelector();

        if (v38)
        {
          collectionView11 = [(HUGridFlowLayout *)self collectionView];
          [v5 frame];
          if (delegate)
          {
            [delegate collectionView:collectionView11 gridLayout:self transformForItemAtIndexPath:indexPath cellFrame:? scrollDistance:? offset:?];
          }

          else
          {
            v42 = 0u;
            v43 = 0u;
            v41 = 0u;
          }

          v44 = v41;
          v45 = v42;
          v46 = v43;
          [v5 setTransform:&v44];
        }
      }
    }
  }

  else
  {
    v5 = attributesCopy;
  }

  return v5;
}

- (HUGridFlowLayout)parentGridLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_parentGridLayout);

  return WeakRetained;
}

@end