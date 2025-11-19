@interface CKSearchCollectionView
- (CGRect)gradientFrame;
- (UIEdgeInsets)marginInsets;
- (id)dequeueReusableCellWithReuseIdentifier:(id)a3 forIndexPath:(id)a4;
- (id)dequeueReusableSupplementaryViewOfKind:(id)a3 withReuseIdentifier:(id)a4 forIndexPath:(id)a5;
- (void)_ck_setEditing:(BOOL)a3;
- (void)setContentOffset:(CGPoint)a3;
- (void)setDataSource:(id)a3;
@end

@implementation CKSearchCollectionView

- (id)dequeueReusableCellWithReuseIdentifier:(id)a3 forIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = CKSearchCollectionView;
  v5 = [(CKSearchCollectionView *)&v7 dequeueReusableCellWithReuseIdentifier:a3 forIndexPath:a4];
  if (objc_opt_respondsToSelector())
  {
    [(CKSearchCollectionView *)self marginInsets];
    [v5 setMarginInsets:?];
  }

  return v5;
}

- (id)dequeueReusableSupplementaryViewOfKind:(id)a3 withReuseIdentifier:(id)a4 forIndexPath:(id)a5
{
  v13.receiver = self;
  v13.super_class = CKSearchCollectionView;
  v6 = [(CKSearchCollectionView *)&v13 dequeueReusableSupplementaryViewOfKind:a3 withReuseIdentifier:a4 forIndexPath:a5];
  if (objc_opt_respondsToSelector())
  {
    [(CKSearchCollectionView *)self marginInsets];
    [v6 setMarginInsets:?];
  }

  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v7 = v6;
    [objc_opt_class() desiredZPositionForMode:{-[CKSearchCollectionView mode](self, "mode")}];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_8;
    }

    v9 = v6;
    [objc_opt_class() desiredZPosition];
  }

  v10 = v8;
  v11 = [v6 layer];

  [v11 setZPosition:v10];
LABEL_8:

  return v6;
}

- (void)setDataSource:(id)a3
{
  v4 = a3;
  if (![(CKSearchCollectionView *)self suppressDatasourceUpdates])
  {
    v5.receiver = self;
    v5.super_class = CKSearchCollectionView;
    [(CKSearchCollectionView *)&v5 setDataSource:v4];
  }
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(CKSearchCollectionView *)self lockContentOffset])
  {
    [(CKSearchCollectionView *)self contentOffset];
    if (x != v7 || y != v6)
    {
      v9.receiver = self;
      v9.super_class = CKSearchCollectionView;
      [(CKSearchCollectionView *)&v9 setContentOffset:x, y];
    }
  }
}

- (void)_ck_setEditing:(BOOL)a3
{
  if (self->__ck_editing != a3)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->__ck_editing = a3;
    if (!a3)
    {
      v6 = [(CKSearchCollectionView *)self indexPathsForSelectedItems];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __41__CKSearchCollectionView__ck_setEditing___block_invoke;
      v7[3] = &unk_1E72F42A8;
      v7[4] = self;
      [v6 enumerateObjectsUsingBlock:v7];
    }
  }
}

- (CGRect)gradientFrame
{
  [(CKSearchCollectionView *)self frame];
  v4 = v3;
  v6 = v5;
  [(CKSearchCollectionView *)self adjustedContentInset];
  v8 = v7 + 0.0;
  v10 = v9 + 0.0;
  v12 = v4 - (v7 + v11);
  v14 = v6 - (v9 + v13);
  [(CKSearchCollectionView *)self contentSize];
  if (v14 <= v15)
  {
    v16 = v10;
  }

  else
  {
    v16 = v10 + v15 - v14;
  }

  v17 = v8;
  v18 = v12;
  v19 = v14;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v16;
  result.origin.x = v17;
  return result;
}

- (UIEdgeInsets)marginInsets
{
  top = self->_marginInsets.top;
  left = self->_marginInsets.left;
  bottom = self->_marginInsets.bottom;
  right = self->_marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end