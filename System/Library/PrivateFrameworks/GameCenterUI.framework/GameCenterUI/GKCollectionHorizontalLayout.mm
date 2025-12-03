@interface GKCollectionHorizontalLayout
- (CGSize)collectionViewContentSize;
- (double)maxHeaderHeight;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)firstValidSection;
- (int64_t)lastValidSection;
- (void)applyDefaults;
- (void)prepareLayout;
@end

@implementation GKCollectionHorizontalLayout

- (void)applyDefaults
{
  [(UICollectionViewFlowLayout *)self setScrollDirection:1];
  [(UICollectionViewFlowLayout *)self setSectionInset:8.0, 90.0, 0.0, 0.0];
  [(UICollectionViewFlowLayout *)self setMinimumInteritemSpacing:48.0];
  [(UICollectionViewFlowLayout *)self setItemSize:548.0, 300.0];
  [(UICollectionViewFlowLayout *)self setHeaderReferenceSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [(GKCollectionFocusingLayout *)self setFocusScaleFactor:1.0];
  [(GKCollectionFocusingLayout *)self setFocusHeaderOffset:24.0];
  self->_scrollStepIntegral = 0.0;
}

- (double)maxHeaderHeight
{
  collectionView = [(GKCollectionHorizontalLayout *)self collectionView];
  numberOfSections = [collectionView numberOfSections];

  if (numberOfSections < 1)
  {
    return 0.0;
  }

  v5 = 0;
  v6 = 0.0;
  do
  {
    [(GKCollectionFocusingLayout *)self sizeForHeaderInSection:v5];
    if (v7 > v6)
    {
      v6 = v7;
    }

    ++v5;
  }

  while (numberOfSections != v5);
  return v6;
}

- (void)prepareLayout
{
  collectionView = [(GKCollectionHorizontalLayout *)self collectionView];
  [collectionView bounds];
  if (v4 != 0.0)
  {
    v5 = v4;
    v68.receiver = self;
    v68.super_class = GKCollectionHorizontalLayout;
    [(GKCollectionFocusingLayout *)&v68 prepareLayout];
    numberOfSections = [collectionView numberOfSections];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v57 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:numberOfSections];
    [(GKCollectionFocusingLayout *)self sectionInset];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(GKCollectionFocusingLayout *)self topHeaderHeight];
    v15 = v9 + v14;
    [(GKCollectionHorizontalLayout *)self maxHeaderHeight];
    v17 = v15 + v16;
    extraSectionHeaderToCellSpace = self->_extraSectionHeaderToCellSpace;
    [(GKCollectionFocusingLayout *)self topHeaderHeight];
    v56 = numberOfSections;
    if (v19 > 0.0)
    {
      v20 = MEMORY[0x277D75308];
      v21 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
      v22 = [v20 layoutAttributesForSupplementaryViewOfKind:@"GKCollectionLayoutTopHeaderKind" withIndexPath:v21];
      [(GKCollectionFocusingLayout *)self setTopHeaderAttributes:v22];

      [(GKCollectionFocusingLayout *)self topHeaderHeight];
      v24 = v23;
      topHeaderAttributes = [(GKCollectionFocusingLayout *)self topHeaderAttributes];
      [topHeaderAttributes setFrame:{0.0, 0.0, v5, v24}];
    }

    v26 = v17 + extraSectionHeaderToCellSpace;
    v27 = v17 + extraSectionHeaderToCellSpace;
    if (numberOfSections >= 1)
    {
      v28 = 0;
      v29 = v5 - v11 - v13;
      v54 = *MEMORY[0x277D767D8];
      v55 = collectionView;
      v30 = v11;
      v31 = v29;
      v27 = v26;
      do
      {
        v32 = [collectionView numberOfItemsInSection:v28];
        if (v32)
        {
          v33 = v32;
          v34 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v28];
          v35 = [(NSDictionary *)self->_headerAttributes objectForKeyedSubscript:v34];
          if (!v35)
          {
            v35 = [MEMORY[0x277D75308] layoutAttributesForSupplementaryViewOfKind:v54 withIndexPath:v34];
            [v35 setZIndex:1024];
          }

          [(GKCollectionFocusingLayout *)self sizeForHeaderInSection:v28];
          [v35 setFrame:{v30, v15, v36, v37}];
          [v57 setObject:v35 forKeyedSubscript:v34];
          if (v33 >= 1)
          {
            for (i = 0; i != v33; ++i)
            {
              v39 = v34;
              v34 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:v28];

              v40 = [(NSDictionary *)self->_itemAttributes objectForKeyedSubscript:v34];

              v35 = v40;
              if (!v40)
              {
                v35 = [MEMORY[0x277D75308] layoutAttributesForCellWithIndexPath:v34];
              }

              [(GKCollectionFocusingLayout *)self sizeForItemAtIndexPath:v34];
              v43 = v41;
              if (v42 > v27)
              {
                v27 = v42;
              }

              [v35 setFrame:{v30, v26, v41, v42}];
              [dictionary setObject:v35 forKeyedSubscript:v34];
              v44 = v30 + v43;
              [(GKCollectionFocusingLayout *)self minimumInteritemSpacingForSectionAtIndex:v28];
              v30 = v44 + v45;
            }

            v31 = v44 - v11;
            collectionView = v55;
            numberOfSections = v56;
          }
        }

        ++v28;
      }

      while (v28 != numberOfSections);
      if (self->_centersItemsInExcessSpace && v31 < v29)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __45__GKCollectionHorizontalLayout_prepareLayout__block_invoke;
        aBlock[3] = &__block_descriptor_40_e42_v16__0__UICollectionViewLayoutAttributes_8l;
        *&aBlock[4] = (v29 - (v11 + v31)) * 0.5;
        v47 = _Block_copy(aBlock);
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __45__GKCollectionHorizontalLayout_prepareLayout__block_invoke_2;
        v65[3] = &unk_279669F10;
        v48 = v47;
        v66 = v48;
        [dictionary enumerateKeysAndObjectsUsingBlock:v65];
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __45__GKCollectionHorizontalLayout_prepareLayout__block_invoke_3;
        v63[3] = &unk_279669F10;
        v64 = v48;
        v49 = v48;
        [v57 enumerateKeysAndObjectsUsingBlock:v63];
      }
    }

    if (!self->_alignItemsToTop)
    {
      [collectionView frame];
      if (v26 < v50)
      {
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __45__GKCollectionHorizontalLayout_prepareLayout__block_invoke_4;
        v62[3] = &__block_descriptor_40_e42_v16__0__UICollectionViewLayoutAttributes_8l;
        *&v62[4] = (v50 - (v26 + v27)) * 0.5;
        v51 = _Block_copy(v62);
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __45__GKCollectionHorizontalLayout_prepareLayout__block_invoke_5;
        v60[3] = &unk_279669F10;
        v52 = v51;
        v61 = v52;
        [dictionary enumerateKeysAndObjectsUsingBlock:v60];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __45__GKCollectionHorizontalLayout_prepareLayout__block_invoke_6;
        v58[3] = &unk_279669F10;
        v59 = v52;
        v53 = v52;
        [v57 enumerateKeysAndObjectsUsingBlock:v58];
      }
    }

    [(GKCollectionHorizontalLayout *)self setHeaderAttributes:v57];
    [(GKCollectionHorizontalLayout *)self setItemAttributes:dictionary];
  }
}

void __45__GKCollectionHorizontalLayout_prepareLayout__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 frame];
  [v4 setFrame:*(a1 + 32) + v3];
}

void __45__GKCollectionHorizontalLayout_prepareLayout__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 frame];
  [v2 setFrame:?];
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSDictionary count](self->_itemAttributes, "count") + 1}];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  itemAttributes = self->_itemAttributes;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __66__GKCollectionHorizontalLayout_layoutAttributesForElementsInRect___block_invoke;
  v28[3] = &unk_27966DBC0;
  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  v28[4] = self;
  v11 = v8;
  v29 = v11;
  v12 = indexSet;
  v30 = v12;
  [(NSDictionary *)itemAttributes enumerateKeysAndObjectsUsingBlock:v28];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __66__GKCollectionHorizontalLayout_layoutAttributesForElementsInRect___block_invoke_2;
  v26[3] = &unk_279669F60;
  v26[4] = self;
  v13 = v11;
  v27 = v13;
  [v12 enumerateIndexesUsingBlock:v26];
  topHeaderAttributes = [(GKCollectionFocusingLayout *)self topHeaderAttributes];
  if (topHeaderAttributes)
  {
    v15 = topHeaderAttributes;
    topHeaderAttributes2 = [(GKCollectionFocusingLayout *)self topHeaderAttributes];
    [topHeaderAttributes2 frame];
    v36.origin.x = v17;
    v36.origin.y = v18;
    v36.size.width = v19;
    v36.size.height = v20;
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v21 = CGRectIntersectsRect(v35, v36);

    if (v21)
    {
      topHeaderAttributes3 = [(GKCollectionFocusingLayout *)self topHeaderAttributes];
      [v13 addObject:topHeaderAttributes3];
    }
  }

  v23 = v27;
  v24 = v13;

  return v13;
}

void __66__GKCollectionHorizontalLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  [v5 frame];
  v13.origin.x = v6;
  v13.origin.y = v7;
  v13.size.width = v8;
  v13.size.height = v9;
  if (CGRectIntersectsRect(*(a1 + 56), v13))
  {
    v10 = [*(a1 + 32) focusAdjustedAttributesForItemAttributes:v5];

    [*(a1 + 40) addObject:v10];
    [*(a1 + 48) addIndex:{objc_msgSend(v11, "section")}];
    v5 = v10;
  }
}

void __66__GKCollectionHorizontalLayout_layoutAttributesForElementsInRect___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:a2];
  v3 = [*(a1 + 32) layoutAttributesForSupplementaryViewOfKind:*MEMORY[0x277D767D8] atIndexPath:?];
  [v3 frame];
  if (v4 > 0.0)
  {
    [v3 frame];
    if (v5 > 0.0)
    {
      [*(a1 + 40) addObject:v3];
    }
  }
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(NSDictionary *)self->_itemAttributes objectForKeyedSubscript:pathCopy];
  if (v5)
  {
    v6 = v5;
    v7 = [(GKCollectionFocusingLayout *)self focusAdjustedAttributesForItemAttributes:v5];
  }

  else
  {
    v7 = [MEMORY[0x277D75308] layoutAttributesForCellWithIndexPath:pathCopy];
    [v7 setAlpha:0.0];
  }

  return v7;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  if ([kindCopy isEqualToString:@"GKCollectionLayoutTopHeaderKind"])
  {
    [(GKCollectionFocusingLayout *)self topHeaderAttributes];
  }

  else
  {
    [(NSDictionary *)self->_headerAttributes objectForKeyedSubscript:pathCopy];
  }
  v8 = ;
  if (v8)
  {
    collectionView = [(GKCollectionHorizontalLayout *)self collectionView];
    [collectionView contentOffset];
    v11 = v10;
    [collectionView contentInset];
    v13 = v12;
    numberOfSections = [collectionView numberOfSections];
    if ([pathCopy section] >= numberOfSections - 1)
    {
      v16 = 0;
      v23 = INFINITY;
    }

    else
    {
      v40 = collectionView;
      v41 = pathCopy;
      v15 = 0;
      v16 = 0;
      v17 = [pathCopy section] + 1;
      do
      {
        v18 = v16;
        v19 = v15;
        v16 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v17];

        v15 = [(GKCollectionHorizontalLayout *)self layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:v16];

        if (v17 >= numberOfSections)
        {
          break;
        }

        [v15 frame];
        ++v17;
      }

      while (v20 == 0.0);
      [v15 frame];
      if (v21 <= 0.0)
      {

        v16 = 0;
        v23 = INFINITY;
      }

      else
      {
        [v15 frame];
        v23 = v22;
      }

      collectionView = v40;
      pathCopy = v41;
    }

    [v8 frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [(GKCollectionFocusingLayout *)self sectionInset];
    if (v13 + v11 + v33 >= v26)
    {
      v34 = v13 + v11 + v33;
    }

    else
    {
      v34 = v26;
    }

    v43.origin.x = v26;
    v43.origin.y = v28;
    v43.size.width = v30;
    v43.size.height = v32;
    v35 = v23 - CGRectGetWidth(v43);
    if (v16)
    {
      v36 = [(NSDictionary *)self->_headerAttributes objectForKeyedSubscript:v16];
      [v36 frame];
      v35 = v35 - (v23 - v37);
    }

    if (v34 >= v35)
    {
      v34 = v35;
    }

    v38 = [v8 copy];

    [v38 setFrame:{v34, v28, v30, v32}];
    v24 = [(GKCollectionFocusingLayout *)self focusAdjustedAttributesForSupplementaryViewAttributes:v38];
  }

  else
  {
    v24 = [MEMORY[0x277D75308] layoutAttributesForSupplementaryViewOfKind:kindCopy withIndexPath:pathCopy];
    [v24 setAlpha:0.0];
  }

  return v24;
}

- (CGSize)collectionViewContentSize
{
  if (![(NSDictionary *)self->_itemAttributes count])
  {
    [(GKCollectionHorizontalLayout *)self prepareLayout];
  }

  [(GKCollectionFocusingLayout *)self sectionInset];
  v4 = v3;
  v6 = v5;
  firstValidSection = [(GKCollectionHorizontalLayout *)self firstValidSection];
  if (firstValidSection < 0)
  {
    v17 = *MEMORY[0x277CBF3A8];
  }

  else
  {
    v8 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:firstValidSection];
    v9 = [(NSDictionary *)self->_itemAttributes objectForKeyedSubscript:v8];
    lastValidSection = [(GKCollectionHorizontalLayout *)self lastValidSection];
    collectionView = [(GKCollectionHorizontalLayout *)self collectionView];
    v12 = [collectionView numberOfItemsInSection:lastValidSection];

    v13 = [MEMORY[0x277CCAA70] indexPathForItem:v12 - 1 inSection:lastValidSection];

    v14 = [(NSDictionary *)self->_itemAttributes objectForKeyedSubscript:v13];
    [v14 frame];
    MaxX = CGRectGetMaxX(v29);
    [v9 frame];
    v17 = MaxX - v16;
  }

  if (v6 <= 0.0)
  {
    v18 = v4;
  }

  else
  {
    v18 = v6;
  }

  v19 = v4 + v18 + v17;
  collectionView2 = [(GKCollectionHorizontalLayout *)self collectionView];
  [collectionView2 bounds];
  v22 = v21;

  if (v19 >= v22)
  {
    v22 = v19;
  }

  collectionView3 = [(GKCollectionHorizontalLayout *)self collectionView];
  [collectionView3 bounds];
  v25 = v24;

  v26 = v22;
  v27 = v25;
  result.height = v27;
  result.width = v26;
  return result;
}

- (int64_t)firstValidSection
{
  collectionView = [(GKCollectionHorizontalLayout *)self collectionView];
  numberOfSections = [collectionView numberOfSections];

  if (numberOfSections < 1)
  {
    return -1;
  }

  v5 = 0;
  while (1)
  {
    collectionView2 = [(GKCollectionHorizontalLayout *)self collectionView];
    v7 = [collectionView2 numberOfItemsInSection:v5];

    if (v7 > 0)
    {
      break;
    }

    if (numberOfSections == ++v5)
    {
      return -1;
    }
  }

  return v5;
}

- (int64_t)lastValidSection
{
  collectionView = [(GKCollectionHorizontalLayout *)self collectionView];
  numberOfSections = [collectionView numberOfSections];

  while (numberOfSections-- >= 1)
  {
    collectionView2 = [(GKCollectionHorizontalLayout *)self collectionView];
    v7 = [collectionView2 numberOfItemsInSection:numberOfSections];

    if (v7 >= 1)
    {
      return numberOfSections;
    }
  }

  return -1;
}

@end