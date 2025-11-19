@interface CEKWheelScrubberCollectionViewLayout
- (CEKWheelScrubberCollectionViewLayout)init;
- (CEKWheelScrubberCollectionViewLayoutDelegate)wheelScrubberDelegate;
- (CGSize)_cachedContentSize;
- (CGSize)collectionViewContentSize;
- (UIEdgeInsets)contentInsets;
- (double)_circularlyWrapped:(double)a3 forCenter:(double)a4 radius:(double)a5 scale:(double)a6;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)prepareLayout;
- (void)setCellEffect:(int64_t)a3;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setLayoutDirection:(int64_t)a3;
- (void)setLayoutOrder:(int64_t)a3;
@end

@implementation CEKWheelScrubberCollectionViewLayout

- (CEKWheelScrubberCollectionViewLayout)init
{
  v6.receiver = self;
  v6.super_class = CEKWheelScrubberCollectionViewLayout;
  v2 = [(CEKWheelScrubberCollectionViewLayout *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_layoutDirection = 0;
    v2->_layoutOrder = 0;
    v2->_cellEffect = 0;
    v4 = v2;
  }

  return v3;
}

- (void)setContentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInsets.top), vceqq_f64(v4, *&self->_contentInsets.bottom)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    [(CEKWheelScrubberCollectionViewLayout *)self invalidateLayout];
  }
}

- (void)prepareLayout
{
  v67.receiver = self;
  v67.super_class = CEKWheelScrubberCollectionViewLayout;
  [(CEKWheelScrubberCollectionViewLayout *)&v67 prepareLayout];
  [(CEKWheelScrubberCollectionViewLayout *)self contentInsets];
  MaxY = v3;
  v6 = v5;
  v8 = v7;
  v60 = v9;
  v10 = [(CEKWheelScrubberCollectionViewLayout *)self collectionView];
  v11 = [v10 dataSource];
  v12 = [(CEKWheelScrubberCollectionViewLayout *)self layoutDirection];
  v61 = v12 == 0;
  v13 = [(CEKWheelScrubberCollectionViewLayout *)self layoutOrder];
  v64 = v11;
  v14 = [v11 collectionView:v10 numberOfItemsInSection:0];
  v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "numberOfSections") + objc_msgSend(v10, "numberOfSections") * v14 - 1}];
  if ([v10 numberOfSections])
  {
    v16 = 0;
    v62 = *MEMORY[0x1E69DDC08];
    if (v13 == 1)
    {
      v17 = -1;
    }

    else
    {
      v17 = 1;
    }

    v18 = 0.0;
    v63 = v10;
    while (1)
    {
      if (v16)
      {
        v19 = MEMORY[0x1E69DC858];
        v20 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v16];
        v21 = [v19 layoutAttributesForSupplementaryViewOfKind:v62 withIndexPath:v20];

        WeakRetained = objc_loadWeakRetained(&self->_wheelScrubberDelegate);
        v23 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v16];
        [WeakRetained wheelScrubberCollectionViewLayout:self sizeForItemAtIndexPath:v23];
        v25 = v24;

        +[CEKWheelScrubberSectionDividerView dividerViewWidth];
        v27 = v12 ? v25 : v26;
        v28 = v12 ? v26 : v25;
        [v21 setFrame:{v6, MaxY, v27, v28}];
        [v15 addObject:v21];
        +[CEKWheelScrubberSectionDividerView dividerViewWidth];
        v30 = v6 + v29;
        v31 = MaxY + v29;
        v32 = v12 ? v31 : MaxY;
        v33 = v12 ? v6 : v30;
      }

      else
      {
        v32 = MaxY;
        v33 = v6;
      }

      v34 = [v64 collectionView:v10 numberOfItemsInSection:v16];
      if (!v34)
      {
        break;
      }

      v35 = v34 - 1;
      if (v13 == 1)
      {
        v36 = v34 - 1;
      }

      else
      {
        v36 = 0;
      }

      do
      {
        v37 = [MEMORY[0x1E696AC88] indexPathForItem:v36 inSection:v16];
        v38 = objc_loadWeakRetained(&self->_wheelScrubberDelegate);
        [v38 wheelScrubberCollectionViewLayout:self sizeForItemAtIndexPath:v37];
        v40 = v39;
        v42 = v41;

        v43 = v33;
        v44 = v32;
        v45 = v40;
        v46 = v42;
        if (v12)
        {
          MaxY = CGRectGetMaxY(*&v43);
          v68.origin.x = v33;
          v68.origin.y = v32;
          v68.size.width = v40;
          v68.size.height = v42;
          MaxX = CGRectGetMaxX(v68);
          v6 = v33;
        }

        else
        {
          v6 = CGRectGetMaxX(*&v43);
          v69.origin.x = v33;
          v69.origin.y = v32;
          v69.size.width = v40;
          v69.size.height = v42;
          MaxX = CGRectGetMaxY(v69);
          MaxY = v32;
        }

        if (v18 < MaxX)
        {
          v18 = MaxX;
        }

        v48 = [MEMORY[0x1E69DC858] layoutAttributesForCellWithIndexPath:v37];
        [v48 setFrame:{v33, v32, v40, v42}];
        [v15 addObject:v48];
        v36 += v17;

        v33 = v6;
        v32 = MaxY;
      }

      while (v36 <= v35);
      ++v16;
      v10 = v63;
      if (v16 >= [v63 numberOfSections])
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v18 = 0.0;
LABEL_34:
    [v10 bounds];
    v53 = v51;
    v54 = v52;
    if (v12)
    {
      MidY = CGRectGetMidY(*&v49);
      v6 = v18;
      v18 = MaxY;
      v53 = v54;
    }

    else
    {
      MidY = CGRectGetMidX(*&v49);
    }

    v56 = v8 + v18;
    v57 = [v10 traitCollection];
    [v57 displayScale];
    v59 = v58;

    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __53__CEKWheelScrubberCollectionViewLayout_prepareLayout__block_invoke;
    v65[3] = &unk_1E7CC69B8;
    v66 = v61;
    v65[4] = self;
    *&v65[5] = MidY;
    *&v65[6] = v53 * 0.5;
    v65[7] = v59;
    [v15 enumerateObjectsUsingBlock:v65];
    [(CEKWheelScrubberCollectionViewLayout *)self _setCachedContentSize:v60 + v6, v56];
    [(CEKWheelScrubberCollectionViewLayout *)self _setCachedLayoutAttributesCells:v15];
  }
}

void __53__CEKWheelScrubberCollectionViewLayout_prepareLayout__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 frame];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  if (*(a1 + 64) == 1)
  {
    MinX = CGRectGetMinX(*&v4);
  }

  else
  {
    MinX = CGRectGetMinY(*&v4);
  }

  v13 = MinX;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  if (*(a1 + 64) == 1)
  {
    MaxX = CGRectGetMaxX(*&v14);
  }

  else
  {
    MaxX = CGRectGetMaxY(*&v14);
  }

  v19 = MaxX;
  if (![*(a1 + 32) cellEffect])
  {
    [*(a1 + 32) _circularlyWrapped:v13 forCenter:*(a1 + 40) radius:*(a1 + 48) scale:*(a1 + 56)];
    v13 = v20;
    [*(a1 + 32) _circularlyWrapped:v19 forCenter:*(a1 + 40) radius:*(a1 + 48) scale:*(a1 + 56)];
    v19 = v21;
  }

  if (*(a1 + 64) == 1)
  {
    MidX = (v19 + v13) * 0.5;
    v28.origin.x = v8;
    v28.origin.y = v9;
    v28.size.width = v10;
    v28.size.height = v11;
    MidY = CGRectGetMidY(v28);
    v24 = 0.0;
    v25 = 1.0;
    if (v10 > 0.0)
    {
      v24 = (v19 - v13) / v10;
    }
  }

  else
  {
    v29.origin.x = v8;
    v29.origin.y = v9;
    v29.size.width = v10;
    v29.size.height = v11;
    MidX = CGRectGetMidX(v29);
    MidY = (v19 + v13) * 0.5;
    v24 = 1.0;
    v25 = 0.0;
    if (v11 > 0.0)
    {
      v25 = (v19 - v13) / v11;
    }
  }

  [v3 setBounds:{0.0, 0.0, v10, v11}];
  [v3 setCenter:{MidX, MidY}];
  CGAffineTransformMakeScale(&v27, v24, v25);
  v26 = v27;
  [v3 setTransform:&v26];
}

- (double)_circularlyWrapped:(double)a3 forCenter:(double)a4 radius:(double)a5 scale:(double)a6
{
  v6 = (a3 - a4) / a5;
  v7 = -1.57079633;
  if (v6 >= -1.57079633)
  {
    v7 = v6;
    if (v6 > 1.57079633)
    {
      v7 = 1.57079633;
    }
  }

  sin(v7);

  UIRoundToScale();
  return result;
}

- (CGSize)collectionViewContentSize
{
  width = self->__cachedContentSize.width;
  height = self->__cachedContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setLayoutDirection:(int64_t)a3
{
  if (self->_layoutDirection != a3)
  {
    self->_layoutDirection = a3;
    [(CEKWheelScrubberCollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setLayoutOrder:(int64_t)a3
{
  if (self->_layoutOrder != a3)
  {
    self->_layoutOrder = a3;
    [(CEKWheelScrubberCollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setCellEffect:(int64_t)a3
{
  if (self->_cellEffect != a3)
  {
    self->_cellEffect = a3;
    [(CEKWheelScrubberCollectionViewLayout *)self invalidateLayout];
  }
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CEKWheelScrubberCollectionViewLayout *)self _cachedLayoutAttributesCells];
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__CEKWheelScrubberCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke;
  v11[3] = &unk_1E7CC69E0;
  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  v9 = v8;
  v12 = v9;
  [v7 enumerateObjectsUsingBlock:v11];

  return v9;
}

void __74__CEKWheelScrubberCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 frame];
  if (CGRectIntersectsRect(v5, *(a1 + 40)))
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = [a3 item];
  v5 = [(CEKWheelScrubberCollectionViewLayout *)self _cachedLayoutAttributesCells];
  v6 = v5;
  if ((v4 & 0x8000000000000000) != 0 || v4 >= [v5 count])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndexedSubscript:v4];
  }

  return v7;
}

- (CEKWheelScrubberCollectionViewLayoutDelegate)wheelScrubberDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_wheelScrubberDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)_cachedContentSize
{
  width = self->__cachedContentSize.width;
  height = self->__cachedContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end