@interface GKCollectionFocusingLayout
- (CGSize)sizeForFooterInSection:(int64_t)a3;
- (CGSize)sizeForHeaderInSection:(int64_t)a3;
- (CGSize)sizeForItemAtIndexPath:(id)a3;
- (GKCollectionFocusingLayout)init;
- (UIEdgeInsets)sectionInset;
- (double)minimumInteritemSpacingForSectionAtIndex:(int64_t)a3;
- (double)minimumLineSpacingForSectionAtIndex:(int64_t)a3;
- (id)focusAdjustedAttributesForItemAttributes:(id)a3;
- (id)focusAdjustedAttributesForSupplementaryViewAttributes:(id)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)_updateFocusFrameForCellAtIndexPath:(id)a3;
- (void)_updateFocusOffsetsForSectionHeadersWithAnimationCoordinator:(id)a3;
- (void)awakeFromNib;
- (void)setFocusedIndexPath:(id)a3;
@end

@implementation GKCollectionFocusingLayout

- (GKCollectionFocusingLayout)init
{
  v5.receiver = self;
  v5.super_class = GKCollectionFocusingLayout;
  v2 = [(UICollectionViewFlowLayout *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_focusHeaderOffset = 20.0;
    [(GKCollectionFocusingLayout *)v2 applyDefaults];
  }

  return v3;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = GKCollectionFocusingLayout;
  [(GKCollectionFocusingLayout *)&v3 awakeFromNib];
  [(GKCollectionFocusingLayout *)self applyDefaults];
}

- (void)setFocusedIndexPath:(id)a3
{
  v5 = a3;
  focusedIndexPath = self->_focusedIndexPath;
  if (focusedIndexPath != v5)
  {
    v7 = focusedIndexPath;
    objc_storeStrong(&self->_focusedIndexPath, a3);
    v8 = MEMORY[0x277D75D18];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __50__GKCollectionFocusingLayout_setFocusedIndexPath___block_invoke;
    v13 = &unk_279669E48;
    v14 = self;
    v15 = v7;
    v9 = v7;
    [v8 animateWithDuration:4 delay:&v10 options:0 animations:0.3 completion:0.0];
    [(GKCollectionFocusingLayout *)self invalidateLayout:v10];
  }
}

double *__50__GKCollectionFocusingLayout_setFocusedIndexPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateFocusOffsetsForSectionHeadersWithAnimationCoordinator:0];
  result = *(a1 + 32);
  if (result[70] != 1.0)
  {
    [result _updateFocusFrameForCellAtIndexPath:*(a1 + 40)];
    v3 = *(a1 + 32);
    v4 = v3[71];

    return [v3 _updateFocusFrameForCellAtIndexPath:v4];
  }

  return result;
}

- (void)_updateFocusOffsetsForSectionHeadersWithAnimationCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(GKCollectionFocusingLayout *)self collectionView];
  v6 = [v5 numberOfSections];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = 0;
    v9 = *MEMORY[0x277D767D8];
    v10 = 0x277CCA000uLL;
    v29 = self;
    do
    {
      v11 = [*(v10 + 2672) indexPathForItem:0 inSection:v8];
      v12 = [v5 _visibleSupplementaryViewOfKind:v9 atIndexPath:v11];
      if (v12)
      {
        v13 = [(GKCollectionFocusingLayout *)self layoutAttributesForSupplementaryViewOfKind:v9 atIndexPath:v11];
        [v12 frame];
        v15 = v14;
        [v13 frame];
        if (v15 != v16)
        {
          [v12 frame];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          [v13 frame];
          v24 = v23;
          if (v4)
          {
            [v12 frame];
            v25 = v10;
            v27 = v26 <= v24;
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __91__GKCollectionFocusingLayout__updateFocusOffsetsForSectionHeadersWithAnimationCoordinator___block_invoke;
            v30[3] = &unk_27966CC48;
            v31 = v12;
            v32 = v18;
            v33 = v24;
            v34 = v20;
            v35 = v22;
            v28 = v27;
            v10 = v25;
            self = v29;
            [v4 addCoordinatedAnimationsForAnimation:v28 animations:v30 completion:0];
          }

          else
          {
            [v12 setFrame:{v18, v23, v20, v22}];
            [v12 layoutIfNeeded];
          }
        }
      }

      ++v8;
    }

    while (v7 != v8);
  }
}

uint64_t __91__GKCollectionFocusingLayout__updateFocusOffsetsForSectionHeadersWithAnimationCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_updateFocusFrameForCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v21 = v4;
    v6 = [(GKCollectionFocusingLayout *)self collectionView];
    v7 = [v6 cellForItemAtIndexPath:v21];

    if (v7)
    {
      v8 = [(GKCollectionFocusingLayout *)self layoutAttributesForItemAtIndexPath:v21];
      [v7 frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      [v8 frame];
      v24.origin.x = v17;
      v24.origin.y = v18;
      v24.size.width = v19;
      v24.size.height = v20;
      v23.origin.x = v10;
      v23.origin.y = v12;
      v23.size.width = v14;
      v23.size.height = v16;
      if (!CGRectEqualToRect(v23, v24))
      {
        [v8 frame];
        [v7 setFrame:?];
        [v7 layoutIfNeeded];
      }
    }

    v5 = v21;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (UIEdgeInsets)sectionInset
{
  v22.receiver = self;
  v22.super_class = GKCollectionFocusingLayout;
  [(UICollectionViewFlowLayout *)&v22 sectionInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(GKCollectionFocusingLayout *)self collectionView];
  v12 = [v11 delegate];

  if (objc_opt_respondsToSelector())
  {
    v13 = [(GKCollectionFocusingLayout *)self collectionView];
    [v12 collectionView:v13 layout:self insetForSectionAtIndex:0];
    v4 = v14;
    v6 = v15;
    v8 = v16;
    v10 = v17;
  }

  v18 = v4;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (double)minimumInteritemSpacingForSectionAtIndex:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = GKCollectionFocusingLayout;
  [(UICollectionViewFlowLayout *)&v12 minimumInteritemSpacing];
  v6 = v5;
  v7 = [(GKCollectionFocusingLayout *)self collectionView];
  v8 = [v7 delegate];

  if (objc_opt_respondsToSelector())
  {
    v9 = [(GKCollectionFocusingLayout *)self collectionView];
    [v8 collectionView:v9 layout:self minimumInteritemSpacingForSectionAtIndex:a3];
    v6 = v10;
  }

  return v6;
}

- (double)minimumLineSpacingForSectionAtIndex:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = GKCollectionFocusingLayout;
  [(UICollectionViewFlowLayout *)&v12 minimumLineSpacing];
  v6 = v5;
  v7 = [(GKCollectionFocusingLayout *)self collectionView];
  v8 = [v7 delegate];

  if (objc_opt_respondsToSelector())
  {
    v9 = [(GKCollectionFocusingLayout *)self collectionView];
    [v8 collectionView:v9 layout:self minimumLineSpacingForSectionAtIndex:a3];
    v6 = v10;
  }

  return v6;
}

- (CGSize)sizeForItemAtIndexPath:(id)a3
{
  v4 = a3;
  [(UICollectionViewFlowLayout *)self itemSize];
  v6 = v5;
  v8 = v7;
  v9 = [(GKCollectionFocusingLayout *)self collectionView];
  v10 = [v9 delegate];

  if (objc_opt_respondsToSelector())
  {
    v11 = [(GKCollectionFocusingLayout *)self collectionView];
    [v10 collectionView:v11 layout:self sizeForItemAtIndexPath:v4];
    v6 = v12;
    v8 = v13;
  }

  v14 = v6;
  v15 = v8;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)sizeForHeaderInSection:(int64_t)a3
{
  [(UICollectionViewFlowLayout *)self headerReferenceSize];
  v6 = v5;
  v8 = v7;
  v9 = [(GKCollectionFocusingLayout *)self collectionView];
  v10 = [v9 delegate];

  if (objc_opt_respondsToSelector())
  {
    v11 = [(GKCollectionFocusingLayout *)self collectionView];
    [v10 collectionView:v11 layout:self referenceSizeForHeaderInSection:a3];
    v6 = v12;
    v8 = v13;
  }

  v14 = v6;
  v15 = v8;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)sizeForFooterInSection:(int64_t)a3
{
  [(UICollectionViewFlowLayout *)self footerReferenceSize];
  v6 = v5;
  v8 = v7;
  v9 = [(GKCollectionFocusingLayout *)self collectionView];
  v10 = [v9 delegate];

  if (objc_opt_respondsToSelector())
  {
    v11 = [(GKCollectionFocusingLayout *)self collectionView];
    [v10 collectionView:v11 layout:self referenceSizeForFooterInSection:a3];
    v6 = v12;
    v8 = v13;
  }

  v14 = v6;
  v15 = v8;
  result.height = v15;
  result.width = v14;
  return result;
}

- (id)focusAdjustedAttributesForItemAttributes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_focusScaleFactor != 1.0)
  {
    v6 = [v4 indexPath];
    v7 = [(GKCollectionFocusingLayout *)self focusedIndexPath];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      v9 = [v5 copy];

      [v9 frame];
      [v9 setFrame:{v12 - (self->_focusScaleFactor * v10 - v10) * 0.5, v13 - (self->_focusScaleFactor * v11 - v11) * 0.5, self->_focusScaleFactor * v10, self->_focusScaleFactor * v11}];
      v5 = v9;
    }
  }

  return v5;
}

- (id)focusAdjustedAttributesForSupplementaryViewAttributes:(id)a3
{
  v4 = a3;
  focusedIndexPath = self->_focusedIndexPath;
  v6 = v4;
  if (focusedIndexPath)
  {
    v7 = [(NSIndexPath *)focusedIndexPath section];
    v8 = [v4 indexPath];
    if (v7 < [v8 section])
    {
      goto LABEL_3;
    }

    v9 = [v4 representedElementKind];
    v10 = [v9 isEqual:*MEMORY[0x277D767D8]];

    v6 = v4;
    if (v10)
    {
      v8 = [(GKCollectionFocusingLayout *)self layoutAttributesForItemAtIndexPath:self->_focusedIndexPath];
      [v4 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      [v8 frame];
      v23 = v19;
      v24 = v20;
      v25 = v21;
      v26 = v22;
      if (self->_focusScaleFactor == 1.0)
      {
        v23 = v19 - (v21 * 1.208 - v21) * 0.5;
        v24 = v20 - (v22 * 1.208 - v22) * 0.5;
        v26 = v22 * 1.208;
        v25 = v21 * 1.208;
      }

      v34.origin.x = v12;
      v34.origin.y = v14;
      v34.size.width = v16;
      v34.size.height = v18;
      rect = v18;
      MaxX = CGRectGetMaxX(v34);
      v35.origin.x = v23;
      v35.origin.y = v24;
      v35.size.width = v25;
      v35.size.height = v26;
      if (MaxX >= CGRectGetMinX(v35))
      {
        v36.origin.x = v23;
        v36.origin.y = v24;
        v36.size.width = v25;
        v36.size.height = v26;
        MinY = CGRectGetMinY(v36);
        v37.origin.x = v12;
        v37.origin.y = v14;
        v37.size.width = v16;
        v37.size.height = rect;
        v29 = MinY - CGRectGetMaxY(v37);
        v38.origin.x = v23;
        v38.origin.y = v24;
        v38.size.width = v25;
        v38.size.height = v26;
        if (v29 < CGRectGetHeight(v38) * 0.5)
        {
          v30 = v14 - self->_focusHeaderOffset;
          v6 = [v4 copy];

          [v6 setFrame:{v12, v30, v16, rect}];
          goto LABEL_4;
        }
      }

LABEL_3:
      v6 = v4;
LABEL_4:
    }
  }

  return v6;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v7.receiver = self;
  v7.super_class = GKCollectionFocusingLayout;
  v4 = [(UICollectionViewFlowLayout *)&v7 layoutAttributesForItemAtIndexPath:a3];
  v5 = [(GKCollectionFocusingLayout *)self focusAdjustedAttributesForItemAttributes:v4];

  return v5;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v8.receiver = self;
  v8.super_class = GKCollectionFocusingLayout;
  v5 = [(UICollectionViewFlowLayout *)&v8 layoutAttributesForSupplementaryViewOfKind:a3 atIndexPath:a4];
  v6 = [(GKCollectionFocusingLayout *)self focusAdjustedAttributesForSupplementaryViewAttributes:v5];

  return v6;
}

@end