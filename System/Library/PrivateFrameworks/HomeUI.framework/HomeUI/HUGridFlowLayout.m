@interface HUGridFlowLayout
- (HUGridFlowLayout)parentGridLayout;
- (id)_modifiedLayoutAttributesForAttributes:(id)a3;
- (id)initForRTL:(BOOL)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)a3 withTargetPosition:(CGPoint)a4;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)_updateContainingGridLayout;
- (void)applyOverrideAttributes:(id)a3 toItem:(id)a4 atIndexPath:(id)a5;
- (void)clearAllOverrideAttributesForItems:(id)a3;
- (void)clearOverrideAttributesForItem:(id)a3 atIndexPath:(id)a4;
- (void)invalidateLayout;
- (void)prepareLayout;
- (void)registerChildGridLayout:(id)a3;
- (void)setLayoutOptions:(id)a3;
- (void)unregisterChildGridLayout:(id)a3;
@end

@implementation HUGridFlowLayout

- (id)initForRTL:(BOOL)a3
{
  self->_shouldFlipForRTL = a3;
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

    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    childGridLayouts = v3->_childGridLayouts;
    v3->_childGridLayouts = v8;
  }

  return v3;
}

- (void)setLayoutOptions:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([(HUGridLayoutOptions *)self->_layoutOptions isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_layoutOptions, a3);
    -[UICollectionViewFlowLayout setScrollDirection:](self, "setScrollDirection:", [v5 scrollDirection]);
    [v5 rowSpacing];
    [(UICollectionViewFlowLayout *)self setMinimumLineSpacing:?];
    [v5 columnSpacing];
    [(UICollectionViewFlowLayout *)self setMinimumInteritemSpacing:?];
    [v5 sectionLeadingMargin];
    v7 = v6;
    [v5 sectionTrailingMargin];
    [(UICollectionViewFlowLayout *)self setSectionInset:0.0, v7, 0.0, v8];
    v12 = MEMORY[0x277D85DD0];
    v13 = v5;
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

- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)a3 withTargetPosition:(CGPoint)a4
{
  v6.receiver = self;
  v6.super_class = HUGridFlowLayout;
  v4 = [(HUGridFlowLayout *)&v6 layoutAttributesForInteractivelyMovingItemAtIndexPath:a3 withTargetPosition:a4.x, a4.y];
  [v4 setAlpha:0.8];

  return v4;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = HUGridFlowLayout;
  v4 = [(UICollectionViewFlowLayout *)&v12 layoutAttributesForElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v7.receiver = self;
  v7.super_class = HUGridFlowLayout;
  v4 = [(UICollectionViewFlowLayout *)&v7 layoutAttributesForItemAtIndexPath:a3];
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
  v3 = [(HUGridFlowLayout *)self childGridLayouts];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidateLayout];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
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

- (void)applyOverrideAttributes:(id)a3 toItem:(id)a4 atIndexPath:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if ([v8 conformsToProtocol:&unk_2824C0788])
  {
    v11 = [v8 homeKitObject];
    v12 = [v11 uniqueIdentifier];

    v13 = [(HUGridFlowLayout *)self indexPathsByItems];
    v14 = v13;
    v15 = v9;
    v16 = v12;
  }

  else
  {
    if ([v8 conformsToProtocol:&unk_2824C0828])
    {
      v14 = v8;
      v13 = [(HUGridFlowLayout *)self indexPathsByItems];
      v12 = v13;
    }

    else
    {
      v12 = [(HUGridFlowLayout *)self indexPathsByItems];
      v14 = [v8 latestResults];
      v13 = v12;
    }

    v15 = v9;
    v16 = v14;
  }

  [v13 setObject:v15 forKey:v16];

  v17 = [(HUGridFlowLayout *)self overrideAttributesByIndexPath];
  [v17 setObject:v10 forKeyedSubscript:v9];

  v18 = HFLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(HUGridFlowLayout *)self indexPathsByItems];
    v20 = [(HUGridFlowLayout *)self overrideAttributesByIndexPath];
    v21 = 136316162;
    v22 = "[HUGridFlowLayout applyOverrideAttributes:toItem:atIndexPath:]";
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v19;
    v29 = 2112;
    v30 = v20;
    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%s. applied attributes to item %@ at indexPath %@. indexPathsByItems = %@, overrideAttributesByIndexPath = %@", &v21, 0x34u);
  }

  [(HUGridFlowLayout *)self invalidateLayout];
}

- (void)clearOverrideAttributesForItem:(id)a3 atIndexPath:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(HUGridFlowLayout *)self indexPathsByItems];
    v10 = [(HUGridFlowLayout *)self overrideAttributesByIndexPath];
    v20 = 136316162;
    v21 = "[HUGridFlowLayout clearOverrideAttributesForItem:atIndexPath:]";
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%s. clearing attributes to item %@ at indexPath %@. Before clearing: indexPathsByItems = %@, overrideAttributesByIndexPath = %@", &v20, 0x34u);
  }

  if ([v6 conformsToProtocol:&unk_2824C0788])
  {
    v11 = [v6 homeKitObject];
    v12 = [v11 uniqueIdentifier];

    v13 = [(HUGridFlowLayout *)self indexPathsByItems];
    v14 = v13;
    v15 = v12;
  }

  else
  {
    if ([v6 conformsToProtocol:&unk_2824C0828])
    {
      v14 = v6;
      v13 = [(HUGridFlowLayout *)self indexPathsByItems];
      v12 = v13;
    }

    else
    {
      v12 = [(HUGridFlowLayout *)self indexPathsByItems];
      v14 = [v6 latestResults];
      v13 = v12;
    }

    v15 = v14;
  }

  [v13 removeObjectForKey:v15];

  v16 = [(HUGridFlowLayout *)self overrideAttributesByIndexPath];
  [v16 removeObjectForKey:v7];

  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(HUGridFlowLayout *)self indexPathsByItems];
    v19 = [(HUGridFlowLayout *)self overrideAttributesByIndexPath];
    v20 = 136316162;
    v21 = "[HUGridFlowLayout clearOverrideAttributesForItem:atIndexPath:]";
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v18;
    v28 = 2112;
    v29 = v19;
    _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%s. clearing attributes to item %@ at indexPath %@. After clearing: indexPathsByItems = %@, overrideAttributesByIndexPath = %@", &v20, 0x34u);
  }

  [(HUGridFlowLayout *)self invalidateLayout];
}

- (void)clearAllOverrideAttributesForItems:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUGridFlowLayout *)self overrideAttributesByIndexPath];
  v6 = [v5 count];

  if (v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(HUGridFlowLayout *)self indexPathsByItems];
      v9 = [(HUGridFlowLayout *)self overrideAttributesByIndexPath];
      *buf = 136315906;
      v51 = "[HUGridFlowLayout clearAllOverrideAttributesForItems:]";
      v52 = 2112;
      v53 = v4;
      v54 = 2112;
      v55 = v8;
      v56 = 2112;
      v57 = v9;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%s. clearing all attributes for items %@. Before clearing: indexPathsByItems = %@, overrideAttributesByIndexPath = %@", buf, 0x2Au);
    }

    v10 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v39 = v4;
    v11 = v4;
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
            v18 = [v17 homeKitObject];
            v19 = [v18 uniqueIdentifier];

            [v10 addObject:v19];
          }

          else if ([v16 conformsToProtocol:&unk_2824C0828])
          {
            [v10 addObject:v16];
          }

          else
          {
            v20 = [v16 latestResults];
            [v10 addObject:v20];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v13);
    }

    v21 = MEMORY[0x277CBEB98];
    v22 = [(HUGridFlowLayout *)self indexPathsByItems];
    v23 = [v22 allKeys];
    v24 = [v21 setWithArray:v23];

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
    v27 = [v10 allObjects];
    v28 = [v27 countByEnumeratingWithState:&v40 objects:v48 count:16];
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
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v40 + 1) + 8 * j);
          v33 = [(HUGridFlowLayout *)self indexPathsByItems];
          v34 = [v33 objectForKey:v32];

          if (v34)
          {
            [v26 addObject:v34];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v29);
    }

    v35 = HFLogForCategory();
    v4 = v39;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v51 = "[HUGridFlowLayout clearAllOverrideAttributesForItems:]";
      v52 = 2112;
      v53 = v26;
      _os_log_impl(&dword_20CEB6000, v35, OS_LOG_TYPE_DEFAULT, "%s. clearing all attributes for items. indexPathsToInvalidate = %@", buf, 0x16u);
    }

    v36 = [(HUGridFlowLayout *)self indexPathsByItems];
    [v36 removeAllObjects];

    v37 = [(HUGridFlowLayout *)self overrideAttributesByIndexPath];
    [v37 removeAllObjects];

    v38 = objc_alloc_init(MEMORY[0x277D752F8]);
    [v38 invalidateItemsAtIndexPaths:v26];
    [(UICollectionViewFlowLayout *)self invalidateLayoutWithContext:v38];
  }
}

- (void)_updateContainingGridLayout
{
  v3 = [(HUGridFlowLayout *)self collectionView];
  v4 = [v3 superview];

  while (v4)
  {
    objc_opt_class();
    v5 = v4;
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
      v9 = [v5 collectionViewLayout];
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      if (v11)
      {
        v12 = [(HUGridFlowLayout *)self parentGridLayout];

        if (v11 != v12)
        {
          v13 = [(HUGridFlowLayout *)self parentGridLayout];
          [v13 unregisterChildGridLayout:self];

          [v11 registerChildGridLayout:self];
        }
      }
    }

    v4 = [v5 superview];
  }
}

- (void)registerChildGridLayout:(id)a3
{
  v5 = a3;
  v4 = [(HUGridFlowLayout *)self childGridLayouts];
  [v4 addObject:v5];

  [v5 setParentGridLayout:self];
}

- (void)unregisterChildGridLayout:(id)a3
{
  v5 = a3;
  v4 = [(HUGridFlowLayout *)self childGridLayouts];
  [v4 removeObject:v5];

  [v5 setParentGridLayout:0];
}

- (id)_modifiedLayoutAttributesForAttributes:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_LayoutAttribut.isa, v4);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v4 representedElementCategory])
  {
    v7 = [v4 indexPath];
    v5 = [v4 copy];
    v8 = [(HUGridFlowLayout *)self overrideAttributesByIndexPath];
    v9 = [v8 objectForKeyedSubscript:v7];

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

    v10 = [(HUGridFlowLayout *)self collectionView];
    v11 = [v10 delegate];

    if (objc_opt_respondsToSelector())
    {
      v12 = [(HUGridFlowLayout *)self collectionView];
      v13 = [v11 collectionView:v12 gridLayout:self wantsScrollingAdjustmentsForItemAtIndexPath:v7];

      if (v13)
      {
        [v5 setZIndex:-1000];
        v40 = [(HUGridFlowLayout *)self collectionView];
        [v40 contentOffset];
        v15 = v14;
        v16 = [(HUGridFlowLayout *)self collectionView];
        [v16 contentInset];
        v18 = v15 + v17;
        v19 = [(HUGridFlowLayout *)self collectionView];
        [v19 contentOffset];
        v21 = v20;
        v22 = [(HUGridFlowLayout *)self collectionView];
        [v22 contentInset];
        v24 = v21 + v23;
        v25 = [(HUGridFlowLayout *)self collectionView];
        [v25 _systemContentInset];
        v27 = v24 + v26;

        if (objc_opt_respondsToSelector())
        {
          v28 = [(HUGridFlowLayout *)self collectionView];
          [v11 collectionView:v28 gridLayout:self alphaForItemAtIndexPath:v7 scrollDistance:{v18, v27}];
          [v5 setAlpha:?];
        }

        if (objc_opt_respondsToSelector())
        {
          v29 = [(HUGridFlowLayout *)self collectionView];
          [v11 collectionView:v29 gridLayout:self positionOffsetForItemAtIndexPath:v7 scrollDistance:{v18, v27}];
          v31 = v30;
          v33 = v32;

          [v5 center];
          [v5 setCenter:{v31 + v34, v33 + v35}];
        }

        v36 = [(HUGridFlowLayout *)self collectionView];
        v37 = [v36 delegate];
        v38 = objc_opt_respondsToSelector();

        if (v38)
        {
          v39 = [(HUGridFlowLayout *)self collectionView];
          [v5 frame];
          if (v11)
          {
            [v11 collectionView:v39 gridLayout:self transformForItemAtIndexPath:v7 cellFrame:? scrollDistance:? offset:?];
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
    v5 = v4;
  }

  return v5;
}

- (HUGridFlowLayout)parentGridLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_parentGridLayout);

  return WeakRetained;
}

@end