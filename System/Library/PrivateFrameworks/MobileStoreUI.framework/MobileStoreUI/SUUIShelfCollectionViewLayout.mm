@interface SUUIShelfCollectionViewLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity;
- (CGSize)collectionViewContentSize;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
@end

@implementation SUUIShelfCollectionViewLayout

- (CGSize)collectionViewContentSize
{
  [(SUUIShelfLayoutData *)self->_layoutData totalContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  array = [MEMORY[0x277CBEB18] array];
  [(SUUIShelfLayoutData *)self->_layoutData contentInset];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  v52 = 0;
  v53 = &v52;
  v54 = 0x3010000000;
  v56 = 0;
  v57 = 0;
  v55 = "";
  [(SUUIShelfLayoutData *)self->_layoutData columnSpacing];
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v17 = v10;
  if (ShouldReverseLayoutDirection)
  {
    v37 = v8;
    v18 = v14;
    v19 = x;
    v20 = v16;
    [(SUUIShelfLayoutData *)self->_layoutData totalContentSize];
    v17 = v21 - v10;
    v16 = v20;
    x = v19;
    v14 = v18;
    v8 = v37;
  }

  v22 = x + v10;
  v23 = width - (v10 + v14);
  *&v51[3] = v17;
  layoutData = self->_layoutData;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __67__SUUIShelfCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke;
  v49[3] = &unk_2798FC200;
  v50 = ShouldReverseLayoutDirection ^ 1;
  *&v49[6] = v22;
  *&v49[7] = y + v8;
  *&v49[8] = v23;
  *&v49[9] = height - (v8 + v12);
  v49[4] = v51;
  v49[5] = &v52;
  v49[10] = v16;
  [(SUUIShelfLayoutData *)layoutData enumerateColumnsUsingBlock:v49];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3010000000;
  v47 = 0;
  v48 = 0;
  v46 = "";
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  *&v42[3] = v8;
  v25 = self->_layoutData;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __67__SUUIShelfCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke_2;
  v41[3] = &unk_2798FC228;
  *&v41[6] = v22;
  *&v41[7] = y + v8;
  *&v41[8] = v23;
  *&v41[9] = height - (v8 + v12);
  v41[4] = v42;
  v41[5] = &v43;
  [(SUUIShelfLayoutData *)v25 enumerateRowsUsingBlock:v41];
  collectionView = [(SUUIShelfCollectionViewLayout *)self collectionView];
  delegate = [collectionView delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    delegate = 0;
  }

  v28 = [collectionView numberOfItemsInSection:0];
  numberOfRows = [(SUUIShelfLayoutData *)self->_layoutData numberOfRows];
  v29 = v53;
  v30 = v53[4];
  if (v30 < v53[5] + v30)
  {
    v31 = v44;
    v32 = v30 * numberOfRows;
    do
    {
      v33 = v31[4];
      if (v33 < v31[5] + v33)
      {
        do
        {
          if ((v32 + v33) < v28)
          {
            v34 = [MEMORY[0x277CCAA70] indexPathForItem:? inSection:?];
            v35 = [(SUUIShelfCollectionViewLayout *)self layoutAttributesForItemAtIndexPath:v34];

            [delegate collectionView:collectionView layout:self willApplyLayoutAttributes:v35];
            [array addObject:v35];

            v31 = v44;
          }

          ++v33;
        }

        while (v33 < v31[5] + v31[4]);
        v29 = v53;
      }

      ++v30;
      v32 += numberOfRows;
    }

    while (v30 < v29[5] + v29[4]);
  }

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(v51, 8);
  _Block_object_dispose(&v52, 8);

  return array;
}

double __67__SUUIShelfCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, uint64_t a2, BOOL *a3, double a4)
{
  if (*(a1 + 88) == 1)
  {
    MaxX = *(*(*(a1 + 32) + 8) + 24);
    v9 = *(a1 + 48);
  }

  else
  {
    MaxX = CGRectGetMaxX(*(a1 + 48));
    v9 = *(*(*(a1 + 32) + 8) + 24);
  }

  if (MaxX <= v9)
  {
    *(*(*(a1 + 40) + 8) + 32) = a2;
  }

  *(*(*(a1 + 40) + 8) + 40) = a2 - *(*(*(a1 + 40) + 8) + 32) + 1;
  v10 = *(*(*(a1 + 32) + 8) + 24);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  if (*(a1 + 88) == 1)
  {
    v15 = v10 >= CGRectGetMaxX(*&v11) - a4;
  }

  else
  {
    v15 = v10 <= CGRectGetMinX(*&v11) + a4;
  }

  *a3 = v15;
  v16 = *(a1 + 80) + a4;
  v17 = *(*(a1 + 32) + 8);
  if (!*(a1 + 88))
  {
    v16 = -v16;
  }

  result = *(v17 + 24) + v16;
  *(v17 + 24) = result;
  return result;
}

double __67__SUUIShelfCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke_2(uint64_t a1, uint64_t a2, BOOL *a3, double a4)
{
  if (*(*(*(a1 + 32) + 8) + 24) <= *(a1 + 56))
  {
    *(*(*(a1 + 40) + 8) + 32) = a2;
  }

  *(*(*(a1 + 40) + 8) + 40) = a2 - *(*(*(a1 + 40) + 8) + 32) + 1;
  v6 = *(*(*(a1 + 32) + 8) + 24);
  *a3 = v6 >= CGRectGetMaxY(*(a1 + 48)) - a4;
  v7 = *(*(a1 + 32) + 8);
  result = *(v7 + 24) + a4;
  *(v7 + 24) = result;
  return result;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [objc_msgSend(objc_opt_class() "layoutAttributesClass")];
  collectionView = [(SUUIShelfCollectionViewLayout *)self collectionView];
  backgroundColor = [collectionView backgroundColor];
  [v5 setBackgroundColor:backgroundColor];

  [(SUUIShelfLayoutData *)self->_layoutData contentInset];
  v9 = v8;
  v11 = v10;
  item = [pathCopy item];
  numberOfRows = [(SUUIShelfLayoutData *)self->_layoutData numberOfRows];
  v14 = item / numberOfRows;
  if (storeShouldReverseLayoutDirection())
  {
    for (i = [(SUUIShelfLayoutData *)self->_layoutData numberOfColumns]- 1; i > v14; --i)
    {
      [(SUUIShelfLayoutData *)self->_layoutData columnWidthForIndex:i];
      v17 = v16;
      [(SUUIShelfLayoutData *)self->_layoutData columnSpacing];
      v11 = v11 + v17 + v18;
    }
  }

  else if (v14 >= 1)
  {
    for (j = 0; j != v14; ++j)
    {
      [(SUUIShelfLayoutData *)self->_layoutData columnWidthForIndex:j];
      v21 = v20;
      [(SUUIShelfLayoutData *)self->_layoutData columnSpacing];
      v11 = v11 + v21 + v22;
    }
  }

  v23 = item % numberOfRows;
  if (v23 >= 1)
  {
    for (k = 0; k != v23; ++k)
    {
      [(SUUIShelfLayoutData *)self->_layoutData rowHeightForIndex:k];
      v9 = v9 + v25;
    }
  }

  [(SUUIShelfLayoutData *)self->_layoutData rowHeightForIndex:v23];
  v27 = v26;
  [(SUUIShelfLayoutData *)self->_layoutData columnWidthForIndex:v14];
  [v5 setFrame:{v11, v9, v28, v27}];

  return v5;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3010000000;
  v22 = 0;
  v23 = 0;
  v21 = "";
  v17.receiver = self;
  v17.super_class = SUUIShelfCollectionViewLayout;
  [(SUUIShelfCollectionViewLayout *)&v17 targetContentOffsetForProposedContentOffset:offset.x withScrollingVelocity:offset.y, velocity.x];
  v22 = v7;
  v23 = v8;
  [(SUUIShelfLayoutData *)self->_layoutData columnSpacing];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  layoutData = self->_layoutData;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __99__SUUIShelfCollectionViewLayout_targetContentOffsetForProposedContentOffset_withScrollingVelocity___block_invoke;
  v15[3] = &unk_2798FC250;
  v15[5] = &v18;
  v15[6] = v16;
  *&v15[7] = x;
  *&v15[8] = y;
  v15[9] = v10;
  v15[4] = self;
  [(SUUIShelfLayoutData *)layoutData enumerateColumnsUsingBlock:v15];
  v11 = v19[4];
  v12 = v19[5];
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v18, 8);
  v13 = v11;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

double __99__SUUIShelfCollectionViewLayout_targetContentOffsetForProposedContentOffset_withScrollingVelocity___block_invoke(uint64_t a1, double a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 32);
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 24);
  v10 = v9 + a2;
  if (v7 > v9 && v7 < v10)
  {
    v13 = *(a1 + 56);
    if (v13 > 0.0 || v13 >= 0.0 && v7 - v9 >= a2 * 0.5)
    {
      v9 = v10 + *(a1 + 72);
    }

    *(v6 + 32) = v9;
    v14 = [*(a1 + 32) collectionView];
    v15 = *(*(*(a1 + 40) + 8) + 32);
    [v14 contentSize];
    v17 = v16;
    [v14 bounds];
    v19 = v17 - v18;
    if (v15 < v17 - v18)
    {
      v19 = v15;
    }

    *(*(*(a1 + 40) + 8) + 32) = v19;
    *a4 = 1;

    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 24);
  }

  result = *(a1 + 72) + a2 + v9;
  *(v8 + 24) = result;
  return result;
}

@end