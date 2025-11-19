@interface GKCollectionColumnLayout
- (CGSize)collectionViewContentSize;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)applyDefaults;
- (void)prepareLayout;
@end

@implementation GKCollectionColumnLayout

- (void)applyDefaults
{
  [(UICollectionViewFlowLayout *)self setScrollDirection:0];
  [(UICollectionViewFlowLayout *)self setSectionInset:8.0, 0.0, 0.0, 0.0];
  [(UICollectionViewFlowLayout *)self setMinimumInteritemSpacing:16.0];
  [(UICollectionViewFlowLayout *)self setMinimumLineSpacing:8.0];
  [(UICollectionViewFlowLayout *)self setItemSize:144.0, 70.0];
  [(UICollectionViewFlowLayout *)self setHeaderReferenceSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [(GKCollectionFocusingLayout *)self setFocusScaleFactor:1.0];
  [(GKCollectionFocusingLayout *)self setFocusHeaderOffset:0.0];

  [(GKCollectionFocusingLayout *)self setHeaderToItemSpacing:8.0];
}

- (void)prepareLayout
{
  v3 = [(GKCollectionColumnLayout *)self collectionView];
  [v3 bounds];
  if (v4 != 0.0)
  {
    v5 = v4;
    v78.receiver = self;
    v78.super_class = GKCollectionColumnLayout;
    [(GKCollectionFocusingLayout *)&v78 prepareLayout];
    v6 = [v3 numberOfSections];
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v76 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v6];
    v70 = [MEMORY[0x277CBEB38] dictionary];
    v75 = [MEMORY[0x277CBEB38] dictionary];
    [(GKCollectionFocusingLayout *)self sectionInset];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = 0.0;
    v15 = 0.0;
    v16 = v6 - 1;
    if (v6 > 1)
    {
      v17 = 0;
      do
      {
        [(GKCollectionFocusingLayout *)self minimumInteritemSpacingForSectionAtIndex:v17];
        v15 = v15 + v18;
        ++v17;
      }

      while (v16 != v17);
    }

    v19 = v5 - v11 - v13;
    v20 = (v19 - v15) / v6;
    v21 = 0.0;
    if (v6 >= 1)
    {
      v22 = 0;
      v14 = 0.0;
      do
      {
        v23 = [v3 numberOfItemsInSection:v22];
        if (v23 >= 1)
        {
          v24 = v23;
          for (i = 0; i != v24; ++i)
          {
            v26 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:v22];
            [(GKCollectionFocusingLayout *)self sizeForItemAtIndexPath:v26];
            if (v27 == 0.0)
            {
              v27 = v20;
            }

            if (v14 < v27)
            {
              v14 = v27;
            }
          }
        }

        [(GKCollectionFocusingLayout *)self sizeForHeaderInSection:v22];
        if (v14 < v28)
        {
          v14 = v28;
        }

        if (v22 < v16)
        {
          [(GKCollectionFocusingLayout *)self minimumInteritemSpacingForSectionAtIndex:v22];
          v21 = v21 + v29;
        }

        ++v22;
      }

      while (v22 != v6);
    }

    if (v20 >= v14)
    {
      v30 = v14;
    }

    else
    {
      v30 = v20;
    }

    if (v14 > 0.0)
    {
      v20 = v30;
    }

    v31 = v19 - (v21 + v20 * v6);
    if (v31 > 0.0)
    {
      v11 = v11 + v31 * 0.5;
    }

    [(GKCollectionFocusingLayout *)self topHeaderHeight];
    v33 = v32;
    [(GKCollectionFocusingLayout *)self topHeaderHeight];
    if (v34 > 0.0)
    {
      v35 = MEMORY[0x277D75308];
      v36 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
      v37 = [v35 layoutAttributesForSupplementaryViewOfKind:@"GKCollectionLayoutTopHeaderKind" withIndexPath:v36];
      [(GKCollectionFocusingLayout *)self setTopHeaderAttributes:v37];

      [(GKCollectionFocusingLayout *)self topHeaderHeight];
      v39 = v38;
      v40 = [(GKCollectionFocusingLayout *)self topHeaderAttributes];
      [v40 setFrame:{0.0, 0.0, v5, v39}];
    }

    if (v6 >= 1)
    {
      v41 = 0;
      v42 = v9 + v33;
      v71 = *MEMORY[0x277D767D0];
      v72 = *MEMORY[0x277D767D8];
      v73 = v6;
      v74 = v3;
      do
      {
        v43 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v41];
        v44 = [(NSDictionary *)self->_headerAttributes objectForKeyedSubscript:v43];
        if (!v44)
        {
          v44 = [MEMORY[0x277D75308] layoutAttributesForSupplementaryViewOfKind:v72 withIndexPath:v43];
          [v44 setZIndex:1024];
        }

        [(GKCollectionFocusingLayout *)self sizeForHeaderInSection:v41];
        if (v46 > 0.0 && v45 == 0.0)
        {
          v48 = v20;
        }

        else
        {
          v48 = v45;
        }

        [v44 setFrame:{v11, v42, v48, v46}];
        v77 = v43;
        [v76 setObject:v44 forKeyedSubscript:v43];
        [v44 frame];
        v50 = v42 + v49;
        [(GKCollectionFocusingLayout *)self headerToItemSpacing];
        v52 = v51 + v50;
        v53 = [v3 numberOfItemsInSection:v41];
        if (v53 < 1)
        {
          v57 = v44;
        }

        else
        {
          v54 = v53;
          for (j = 0; j != v54; ++j)
          {
            v56 = [MEMORY[0x277CCAA70] indexPathForItem:j inSection:v41];
            v57 = [(NSDictionary *)self->_itemAttributes objectForKeyedSubscript:v56];

            if (!v57)
            {
              v57 = [MEMORY[0x277D75308] layoutAttributesForCellWithIndexPath:v56];
            }

            [(GKCollectionFocusingLayout *)self sizeForItemAtIndexPath:v56];
            v60 = v59;
            if (v58 == 0.0)
            {
              v61 = v20;
            }

            else
            {
              v61 = v58;
            }

            [v57 setFrame:{v11, v52, v61, v59}];
            [v7 setObject:v57 forKeyedSubscript:v56];
            [(GKCollectionFocusingLayout *)self minimumLineSpacingForSectionAtIndex:v41];
            v52 = v52 + v60 + v62;

            v44 = v57;
          }
        }

        v63 = [(GKCollectionColumnLayout *)self footerAttributes];
        v64 = [v63 objectForKeyedSubscript:v77];

        if (!v64)
        {
          v64 = [MEMORY[0x277D75308] layoutAttributesForSupplementaryViewOfKind:v71 withIndexPath:v77];
          [v64 setZIndex:1024];
        }

        [(GKCollectionFocusingLayout *)self sizeForFooterInSection:v41];
        if (v66 > 0.0 && v65 == 0.0)
        {
          v68 = v20;
        }

        else
        {
          v68 = v65;
        }

        [v64 setFrame:{v11 + 12.0, v52, v68, v66}];
        [v75 setObject:v64 forKeyedSubscript:v77];
        [(GKCollectionFocusingLayout *)self minimumInteritemSpacingForSectionAtIndex:v41];
        v11 = v11 + v20 + v69;

        ++v41;
        v3 = v74;
      }

      while (v41 != v73);
    }

    [(GKCollectionColumnLayout *)self setHeaderAttributes:v76];
    [(GKCollectionColumnLayout *)self setItemAttributes:v7];
    [(GKCollectionColumnLayout *)self setDecorationAttributes:v70];
    [(GKCollectionColumnLayout *)self setFooterAttributes:v75];
  }
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSDictionary count](self->_itemAttributes, "count") + 1}];
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v51[3] = 0x7FEFFFFFFFFFFFFFLL;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v50[3] = 0x10000000000000;
  itemAttributes = self->_itemAttributes;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __62__GKCollectionColumnLayout_layoutAttributesForElementsInRect___block_invoke;
  v42[3] = &unk_27966B038;
  v42[4] = self;
  v44 = v51;
  v45 = v50;
  v46 = x;
  v47 = y;
  v48 = width;
  v49 = height;
  v10 = v8;
  v43 = v10;
  [(NSDictionary *)itemAttributes enumerateKeysAndObjectsUsingBlock:v42];
  headerAttributes = self->_headerAttributes;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __62__GKCollectionColumnLayout_layoutAttributesForElementsInRect___block_invoke_2;
  v36[3] = &unk_27966B060;
  v38 = x;
  v39 = y;
  v40 = width;
  v41 = height;
  v36[4] = self;
  v12 = v10;
  v37 = v12;
  [(NSDictionary *)headerAttributes enumerateKeysAndObjectsUsingBlock:v36];
  footerAttributes = self->_footerAttributes;
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __62__GKCollectionColumnLayout_layoutAttributesForElementsInRect___block_invoke_3;
  v29 = &unk_27966B060;
  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;
  v30 = self;
  v14 = v12;
  v31 = v14;
  [(NSDictionary *)footerAttributes enumerateKeysAndObjectsUsingBlock:&v26];
  v15 = [(GKCollectionFocusingLayout *)self topHeaderAttributes:v26];
  if (v15)
  {
    v16 = [(GKCollectionFocusingLayout *)self topHeaderAttributes];
    [v16 frame];
    v54.origin.x = v17;
    v54.origin.y = v18;
    v54.size.width = v19;
    v54.size.height = v20;
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    v21 = CGRectIntersectsRect(v53, v54);

    if (v21)
    {
      v22 = [(GKCollectionFocusingLayout *)self topHeaderAttributes];
      [v14 addObject:v22];
    }
  }

  v23 = v31;
  v24 = v14;

  _Block_object_dispose(v50, 8);
  _Block_object_dispose(v51, 8);

  return v24;
}

void __62__GKCollectionColumnLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) focusAdjustedAttributesForItemAttributes:?];
  [v10 frame];
  MinY = CGRectGetMinY(v12);
  [v10 frame];
  MaxY = CGRectGetMaxY(v13);
  v4 = *(*(a1 + 48) + 8);
  if (MinY < *(v4 + 24))
  {
    *(v4 + 24) = MinY;
  }

  v5 = *(*(a1 + 56) + 8);
  if (MaxY > *(v5 + 24))
  {
    *(v5 + 24) = MaxY;
  }

  [v10 frame];
  v14.origin.x = v6;
  v14.origin.y = v7;
  v14.size.width = v8;
  v14.size.height = v9;
  if (CGRectIntersectsRect(*(a1 + 64), v14))
  {
    [*(a1 + 40) addObject:v10];
  }
}

void __62__GKCollectionColumnLayout_layoutAttributesForElementsInRect___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  [v13 frame];
  v15.origin.x = v4;
  v15.origin.y = v5;
  v15.size.width = v6;
  v15.size.height = v7;
  if (!CGRectIntersectsRect(*(a1 + 48), v15) || (([v13 frame], v9 == *MEMORY[0x277CBF3A8]) ? (v10 = v8 == *(MEMORY[0x277CBF3A8] + 8)) : (v10 = 0), v10))
  {
    v12 = v13;
  }

  else
  {
    v11 = [*(a1 + 32) focusAdjustedAttributesForSupplementaryViewAttributes:v13];

    [*(a1 + 40) addObject:v11];
    v12 = v11;
  }
}

void __62__GKCollectionColumnLayout_layoutAttributesForElementsInRect___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  [v13 frame];
  v15.origin.x = v4;
  v15.origin.y = v5;
  v15.size.width = v6;
  v15.size.height = v7;
  if (!CGRectIntersectsRect(*(a1 + 48), v15) || (([v13 frame], v9 == *MEMORY[0x277CBF3A8]) ? (v10 = v8 == *(MEMORY[0x277CBF3A8] + 8)) : (v10 = 0), v10))
  {
    v12 = v13;
  }

  else
  {
    v11 = [*(a1 + 32) focusAdjustedAttributesForSupplementaryViewAttributes:v13];

    [*(a1 + 40) addObject:v11];
    v12 = v11;
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
    if ([v6 isEqualToString:*MEMORY[0x277D767D8]])
    {
      v9 = 608;
    }

    else
    {
      v9 = 624;
    }

    v8 = [*(&self->super.super.super.super.isa + v9) objectForKeyedSubscript:v7];
  }

  v10 = v8;
  if (v8)
  {
    v11 = [(GKCollectionFocusingLayout *)self focusAdjustedAttributesForSupplementaryViewAttributes:v8];
  }

  else
  {
    v11 = [MEMORY[0x277D75308] layoutAttributesForSupplementaryViewOfKind:v6 withIndexPath:v7];
    [v11 setAlpha:0.0];
  }

  return v11;
}

- (CGSize)collectionViewContentSize
{
  if (![(NSDictionary *)self->_itemAttributes count])
  {
    [(GKCollectionColumnLayout *)self prepareLayout];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3010000000;
  v30 = &unk_24E43C07A;
  v31 = *MEMORY[0x277CBF3A8];
  v3 = [(GKCollectionColumnLayout *)self collectionView];
  v4 = [v3 numberOfSections];

  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [(GKCollectionColumnLayout *)self collectionView];
      v7 = [v6 numberOfItemsInSection:i];

      if (v7 >= 1)
      {
        v8 = [MEMORY[0x277CCAA70] indexPathForItem:v7 - 1 inSection:i];
        v9 = [(NSDictionary *)self->_itemAttributes objectForKeyedSubscript:v8];
        v10 = v28[5];
        [v9 frame];
        MaxY = CGRectGetMaxY(v33);
        if (v10 >= MaxY)
        {
          MaxY = v10;
        }

        v28[5] = MaxY;
      }
    }
  }

  v12 = [(GKCollectionColumnLayout *)self footerAttributes];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __53__GKCollectionColumnLayout_collectionViewContentSize__block_invoke;
  v26[3] = &unk_27966B088;
  v26[4] = &v27;
  [v12 enumerateKeysAndObjectsUsingBlock:v26];

  [(GKCollectionFocusingLayout *)self sectionInset];
  v28[5] = v13 + v28[5];
  [(GKCollectionFocusingLayout *)self topHeaderHeight];
  v15 = v14 + v28[5];
  v28[5] = v15;
  v16 = [(GKCollectionColumnLayout *)self collectionView];
  [v16 bounds];
  v18 = v17;

  if (v15 >= v18)
  {
    v19 = v15;
  }

  else
  {
    v19 = v18;
  }

  v28[5] = v19;
  v20 = [(GKCollectionColumnLayout *)self collectionView];
  [v20 bounds];
  *(v28 + 4) = v21;

  v22 = v28[4];
  v23 = v28[5];
  _Block_object_dispose(&v27, 8);
  v24 = v22;
  v25 = v23;
  result.height = v25;
  result.width = v24;
  return result;
}

void __53__GKCollectionColumnLayout_collectionViewContentSize__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (([v7 isHidden] & 1) == 0)
  {
    [v7 size];
    if (v4 > 0.0)
    {
      v5 = *(*(*(a1 + 32) + 8) + 40);
      [v7 frame];
      MaxY = CGRectGetMaxY(v9);
      if (v5 >= MaxY)
      {
        MaxY = v5;
      }

      *(*(*(a1 + 32) + 8) + 40) = MaxY;
    }
  }
}

@end