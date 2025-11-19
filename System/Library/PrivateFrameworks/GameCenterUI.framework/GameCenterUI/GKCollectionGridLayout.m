@interface GKCollectionGridLayout
- (CGSize)collectionViewContentSize;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (int64_t)lastValidSection;
- (void)applyDefaults;
- (void)prepareLayout;
- (void)setAutoWidthColumns:(int64_t)a3;
@end

@implementation GKCollectionGridLayout

- (void)applyDefaults
{
  [(UICollectionViewFlowLayout *)self setScrollDirection:0];
  [(UICollectionViewFlowLayout *)self setSectionInset:8.0, 0.0, 0.0, 0.0];
  [(UICollectionViewFlowLayout *)self setMinimumInteritemSpacing:0.0];
  [(UICollectionViewFlowLayout *)self setMinimumLineSpacing:12.0];
  [(UICollectionViewFlowLayout *)self setItemSize:144.0, 70.0];
  [(UICollectionViewFlowLayout *)self setHeaderReferenceSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [(GKCollectionFocusingLayout *)self setFocusScaleFactor:1.0];
  [(GKCollectionGridLayout *)self setAutoWidthColumns:0];
  [(GKCollectionFocusingLayout *)self setFocusHeaderOffset:0.0];
  [(GKCollectionGridLayout *)self setShouldPerformInitialScrollToContentInsetTop:0];

  [(GKCollectionGridLayout *)self setDidPerformInitialContentInsetScroll:0];
}

- (void)setAutoWidthColumns:(int64_t)a3
{
  if (self->_autoWidthColumns != a3)
  {
    self->_autoWidthColumns = a3;
    [(GKCollectionGridLayout *)self invalidateLayout];
  }
}

- (void)prepareLayout
{
  v3 = [(GKCollectionGridLayout *)self collectionView];
  [v3 bounds];
  if (v4 != 0.0)
  {
    v5 = v4;
    v92.receiver = self;
    v92.super_class = GKCollectionGridLayout;
    [(GKCollectionFocusingLayout *)&v92 prepareLayout];
    v6 = [(GKCollectionGridLayout *)self collectionView];
    [v6 contentInset];
    v8 = v7;
    v10 = v9;
    v12 = v11;

    if ([(GKCollectionGridLayout *)self shouldPerformInitialScrollToContentInsetTop]&& ![(GKCollectionGridLayout *)self didPerformInitialContentInsetScroll]&& v8 > 0.0)
    {
      [v3 contentOffset];
      [v3 setContentOffset:0 animated:?];
      [(GKCollectionGridLayout *)self setDidPerformInitialContentInsetScroll:1];
    }

    v13 = [v3 numberOfSections];
    v14 = [MEMORY[0x277CBEB38] dictionary];
    v81 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v13];
    v79 = v13;
    v80 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v13];
    [(GKCollectionFocusingLayout *)self sectionInset];
    v77 = v16;
    v78 = v15;
    v18 = v17;
    v20 = v19;
    [(GKCollectionFocusingLayout *)self topHeaderHeight];
    v22 = v21;
    v84 = v18;
    if (self->_sectionInsetRelativeWithContentInset)
    {
      v23 = v5 - v18 - v20 - v10 - v12;
    }

    else
    {
      v23 = v5 - v18 - v20;
    }

    [(GKCollectionFocusingLayout *)self topHeaderHeight];
    if (v24 > 0.0)
    {
      v25 = MEMORY[0x277D75308];
      v26 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
      v27 = [v25 layoutAttributesForSupplementaryViewOfKind:@"GKCollectionLayoutTopHeaderKind" withIndexPath:v26];
      [(GKCollectionFocusingLayout *)self setTopHeaderAttributes:v27];

      [(GKCollectionFocusingLayout *)self topHeaderHeight];
      v29 = v28;
      v30 = [(GKCollectionFocusingLayout *)self topHeaderAttributes];
      [v30 setFrame:{0.0, 0.0, v5, v29}];
    }

    if (v79 >= 1)
    {
      v31 = 0;
      v75 = *MEMORY[0x277D767D8];
      v74 = *(MEMORY[0x277CBF3A8] + 8);
      v73 = *MEMORY[0x277D767D0];
      v32 = v23;
      v76 = v3;
      while (1)
      {
        v33 = [v3 numberOfItemsInSection:v31];
        v34 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v31];
        v35 = [(NSDictionary *)self->_headerAttributes objectForKeyedSubscript:v34];
        if (!v35)
        {
          v35 = [MEMORY[0x277D75308] layoutAttributesForSupplementaryViewOfKind:v75 withIndexPath:v34];
          [v35 setZIndex:1024];
        }

        v36 = v78 + v22;
        [(GKCollectionFocusingLayout *)self sizeForHeaderInSection:v31];
        if (v38 > 0.0 && v37 == 0.0)
        {
          v40 = v23;
        }

        else
        {
          v40 = v37;
        }

        [v35 setFrame:{v84, v36, v40, v38}];
        [v81 setObject:v35 forKeyedSubscript:v34];
        [v35 frame];
        v42 = v41;
        extraSectionHeaderToCellSpace = self->_extraSectionHeaderToCellSpace;
        [(GKCollectionFocusingLayout *)self minimumInteritemSpacingForSectionAtIndex:v31];
        v45 = v44;
        autoWidthColumns = self->_autoWidthColumns;
        v83 = 0.0;
        if (autoWidthColumns >= 1)
        {
          v83 = (v23 - v44 * (autoWidthColumns - 1)) / autoWidthColumns;
        }

        v47 = v36 + v42 + extraSectionHeaderToCellSpace + 0.0;
        [(GKCollectionFocusingLayout *)self minimumLineSpacingForSectionAtIndex:v31];
        v49 = v48;
        if (v33 >= 1)
        {
          break;
        }

        v58 = v48 + v74;
LABEL_38:
        v60 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v31];

        v61 = [(GKCollectionGridLayout *)self footerAttributes];
        v62 = [v61 objectForKeyedSubscript:v60];

        v3 = v76;
        if (!v62)
        {
          v62 = [MEMORY[0x277D75308] layoutAttributesForSupplementaryViewOfKind:v73 withIndexPath:v60];
          [v62 setZIndex:1024];
        }

        v63 = v58 + v47;
        [(GKCollectionFocusingLayout *)self sizeForFooterInSection:v31];
        v66 = v65;
        if (v65 > 0.0 && v64 == 0.0)
        {
          v68 = v23;
        }

        else
        {
          v68 = v64;
        }

        [v62 setFrame:{v84, v63, v68, v65}];
        [v80 setObject:v62 forKeyedSubscript:v60];
        v22 = v77 + v63 + v66;

        if (++v31 == v79)
        {
          if (self->_centersItemsInExcessSpace && v32 < v23)
          {
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 3221225472;
            aBlock[2] = __39__GKCollectionGridLayout_prepareLayout__block_invoke;
            aBlock[3] = &__block_descriptor_40_e42_v16__0__UICollectionViewLayoutAttributes_8l;
            *&aBlock[4] = (v23 - (v84 + v32)) * 0.5;
            v69 = _Block_copy(aBlock);
            v89[0] = MEMORY[0x277D85DD0];
            v89[1] = 3221225472;
            v89[2] = __39__GKCollectionGridLayout_prepareLayout__block_invoke_2;
            v89[3] = &unk_279669F10;
            v70 = v69;
            v90 = v70;
            [v14 enumerateKeysAndObjectsUsingBlock:v89];
            v87[0] = MEMORY[0x277D85DD0];
            v87[1] = 3221225472;
            v87[2] = __39__GKCollectionGridLayout_prepareLayout__block_invoke_3;
            v87[3] = &unk_279669F10;
            v71 = v70;
            v88 = v71;
            [v81 enumerateKeysAndObjectsUsingBlock:v87];
            v85[0] = MEMORY[0x277D85DD0];
            v85[1] = 3221225472;
            v85[2] = __39__GKCollectionGridLayout_prepareLayout__block_invoke_4;
            v85[3] = &unk_279669F10;
            v86 = v71;
            v72 = v71;
            [v80 enumerateKeysAndObjectsUsingBlock:v85];
          }

          goto LABEL_50;
        }
      }

      v82 = v34;
      v50 = 0;
      v51 = v23;
      v52 = v84;
      while (1)
      {
        v53 = [MEMORY[0x277CCAA70] indexPathForItem:v50 inSection:v31];
        v54 = [(NSDictionary *)self->_itemAttributes objectForKeyedSubscript:v53];

        v35 = v54;
        if (!v54)
        {
          v35 = [MEMORY[0x277D75308] layoutAttributesForCellWithIndexPath:v53];
        }

        [(GKCollectionFocusingLayout *)self sizeForItemAtIndexPath:v53];
        if (v55 == 0.0)
        {
          break;
        }

        v57 = v55;
        if (v55 > v23)
        {
          goto LABEL_32;
        }

LABEL_33:
        v58 = v49 + v56;
        if (v57 > v51)
        {
          v47 = v47 + v49 + v56;
          v52 = v84;
        }

        [v35 setFrame:{v52, v47, v57, v56}];
        [v14 setObject:v35 forKeyedSubscript:v53];
        v59 = v57 + v52;
        v52 = v45 + v59;
        v51 = v84 + v23 - (v45 + v59);

        if (v33 == ++v50)
        {
          v32 = v59 - v84;
          v34 = v82;
          goto LABEL_38;
        }
      }

      v57 = v83;
      if (self->_autoWidthColumns)
      {
        goto LABEL_33;
      }

      v57 = v51;
      if (v51 > 0.0)
      {
        goto LABEL_33;
      }

LABEL_32:
      v57 = v23;
      goto LABEL_33;
    }

LABEL_50:
    [(GKCollectionGridLayout *)self setHeaderAttributes:v81];
    [(GKCollectionGridLayout *)self setFooterAttributes:v80];
    [(GKCollectionGridLayout *)self setItemAttributes:v14];
  }
}

void __39__GKCollectionGridLayout_prepareLayout__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 frame];
  [v4 setFrame:*(a1 + 32) + v3];
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSDictionary count](self->_itemAttributes, "count") + 1}];
  v9 = [(GKCollectionGridLayout *)self sectionsThatShowHeaderWhenEmpty];
  if (v9)
  {
    v10 = [(GKCollectionGridLayout *)self sectionsThatShowHeaderWhenEmpty];
    v11 = [v10 mutableCopy];
  }

  else
  {
    v11 = [MEMORY[0x277CCAB58] indexSetWithIndex:0];
  }

  v12 = [(GKCollectionGridLayout *)self sectionsThatShowFootersWhenEmpty];
  if (v12)
  {
    v13 = [(GKCollectionGridLayout *)self sectionsThatShowFootersWhenEmpty];
    v14 = [v13 mutableCopy];
  }

  else
  {
    v14 = [MEMORY[0x277CCAB58] indexSetWithIndex:0];
  }

  itemAttributes = self->_itemAttributes;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __60__GKCollectionGridLayout_layoutAttributesForElementsInRect___block_invoke;
  v41[3] = &unk_279669F38;
  v45 = x;
  v46 = y;
  v47 = width;
  v48 = height;
  v41[4] = self;
  v16 = v8;
  v42 = v16;
  v17 = v11;
  v43 = v17;
  v18 = v14;
  v44 = v18;
  [(NSDictionary *)itemAttributes enumerateKeysAndObjectsUsingBlock:v41];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __60__GKCollectionGridLayout_layoutAttributesForElementsInRect___block_invoke_2;
  v39[3] = &unk_279669F60;
  v39[4] = self;
  v19 = v16;
  v40 = v19;
  [v17 enumerateIndexesUsingBlock:v39];
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __60__GKCollectionGridLayout_layoutAttributesForElementsInRect___block_invoke_3;
  v36 = &unk_279669F60;
  v37 = self;
  v20 = v19;
  v38 = v20;
  [v18 enumerateIndexesUsingBlock:&v33];
  v21 = [(GKCollectionFocusingLayout *)self topHeaderAttributes:v33];
  if (v21)
  {
    v22 = v21;
    v23 = [(GKCollectionFocusingLayout *)self topHeaderAttributes];
    [v23 frame];
    v50.origin.x = v24;
    v50.origin.y = v25;
    v50.size.width = v26;
    v50.size.height = v27;
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    v28 = CGRectIntersectsRect(v49, v50);

    if (v28)
    {
      v29 = [(GKCollectionFocusingLayout *)self topHeaderAttributes];
      [v20 addObject:v29];
    }
  }

  v30 = v38;
  v31 = v20;

  return v20;
}

void __60__GKCollectionGridLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  [v5 frame];
  v13.origin.x = v6;
  v13.origin.y = v7;
  v13.size.width = v8;
  v13.size.height = v9;
  if (CGRectIntersectsRect(*(a1 + 64), v13))
  {
    v10 = [*(a1 + 32) focusAdjustedAttributesForItemAttributes:v5];

    [*(a1 + 40) addObject:v10];
    [*(a1 + 48) addIndex:{objc_msgSend(v11, "section")}];
    [*(a1 + 56) addIndex:{objc_msgSend(v11, "section")}];
    v5 = v10;
  }
}

void __60__GKCollectionGridLayout_layoutAttributesForElementsInRect___block_invoke_2(uint64_t a1, uint64_t a2)
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

void __60__GKCollectionGridLayout_layoutAttributesForElementsInRect___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:a2];
  v3 = [*(a1 + 32) layoutAttributesForSupplementaryViewOfKind:*MEMORY[0x277D767D0] atIndexPath:?];
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

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_itemAttributes objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = v5;
    v7 = [(GKCollectionFocusingLayout *)self focusAdjustedAttributesForItemAttributes:v5];
  }

  else
  {
    v7 = [MEMORY[0x277D75308] layoutAttributesForCellWithIndexPath:v4];
    [v7 setAlpha:0.0];
  }

  return v7;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"GKCollectionLayoutTopHeaderKind"])
  {
    v8 = [(GKCollectionFocusingLayout *)self topHeaderAttributes];
  }

  else
  {
    if (![v6 isEqualToString:*MEMORY[0x277D767D8]])
    {
      v11 = [(GKCollectionGridLayout *)self footerAttributes];
      v9 = [v11 objectForKeyedSubscript:v7];

      if (v9)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    }

    v8 = [(NSDictionary *)self->_headerAttributes objectForKeyedSubscript:v7];
  }

  v9 = v8;
  if (v8)
  {
LABEL_6:
    v10 = [(GKCollectionFocusingLayout *)self focusAdjustedAttributesForSupplementaryViewAttributes:v9];

    goto LABEL_9;
  }

LABEL_8:
  v10 = [MEMORY[0x277D75308] layoutAttributesForSupplementaryViewOfKind:v6 withIndexPath:v7];
  [v10 setAlpha:0.0];
LABEL_9:

  return v10;
}

- (CGSize)collectionViewContentSize
{
  if (![(NSDictionary *)self->_itemAttributes count])
  {
    [(GKCollectionGridLayout *)self prepareLayout];
  }

  MaxY = *(MEMORY[0x277CBF3A8] + 8);
  v4 = [(GKCollectionGridLayout *)self lastValidSection];
  v40 = MaxY;
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v4;
    v6 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v4];
    v7 = [(NSDictionary *)self->_footerAttributes objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      [v7 frame];
      MaxY = CGRectGetMaxY(v42);
    }

    else
    {
      v9 = [(GKCollectionGridLayout *)self collectionView];
      v10 = [v9 numberOfItemsInSection:v5];

      v11 = [MEMORY[0x277CCAA70] indexPathForItem:v10 - 1 inSection:v5];
      v12 = [(NSDictionary *)self->_itemAttributes objectForKeyedSubscript:v11];
      [v12 frame];
      MaxY = CGRectGetMaxY(v43);
    }
  }

  v13 = [(GKCollectionGridLayout *)self collectionView];
  v14 = [v13 numberOfSections];

  [(GKCollectionFocusingLayout *)self sectionInset];
  v16 = v15;
  [(GKCollectionFocusingLayout *)self sectionInset];
  v18 = v17;
  [(GKCollectionFocusingLayout *)self topHeaderHeight];
  v20 = v19;
  v21 = [(GKCollectionGridLayout *)self collectionView];
  [v21 bounds];
  v23 = v22;

  v24 = [(GKCollectionGridLayout *)self collectionView];
  [v24 adjustedContentInset];
  v26 = v25;
  v28 = v27;

  v29 = [(GKCollectionGridLayout *)self collectionView];
  [v29 bounds];
  v31 = v30;

  if (self->_sectionInsetRelativeWithContentInset)
  {
    v32 = [(GKCollectionGridLayout *)self collectionView];
    [v32 contentInset];
    v34 = v31 - v33;
    v35 = [(GKCollectionGridLayout *)self collectionView];
    [v35 contentInset];
    v31 = v34 - v36;
  }

  v37 = v23 - (v26 + v28);
  v38 = v20 + MaxY + v16 * v14 + v18 * v14;
  if (v40 >= v37)
  {
    v37 = v40;
  }

  if (v38 < v37)
  {
    v38 = v37;
  }

  v39 = v31;
  result.height = v38;
  result.width = v39;
  return result;
}

- (int64_t)lastValidSection
{
  v3 = [(GKCollectionGridLayout *)self collectionView];
  v4 = [v3 numberOfSections];

  while (v4-- >= 1)
  {
    v6 = [(GKCollectionGridLayout *)self collectionView];
    v7 = [v6 numberOfItemsInSection:v4];

    if (v7 >= 1)
    {
      return v4;
    }
  }

  return -1;
}

@end