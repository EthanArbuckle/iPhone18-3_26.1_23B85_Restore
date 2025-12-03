@interface CKSearchCollectionView
- (CGRect)gradientFrame;
- (UIEdgeInsets)marginInsets;
- (id)dequeueReusableCellWithReuseIdentifier:(id)identifier forIndexPath:(id)path;
- (id)dequeueReusableSupplementaryViewOfKind:(id)kind withReuseIdentifier:(id)identifier forIndexPath:(id)path;
- (void)_ck_setEditing:(BOOL)editing;
- (void)setContentOffset:(CGPoint)offset;
- (void)setDataSource:(id)source;
@end

@implementation CKSearchCollectionView

- (id)dequeueReusableCellWithReuseIdentifier:(id)identifier forIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = CKSearchCollectionView;
  v5 = [(CKSearchCollectionView *)&v7 dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:path];
  if (objc_opt_respondsToSelector())
  {
    [(CKSearchCollectionView *)self marginInsets];
    [v5 setMarginInsets:?];
  }

  return v5;
}

- (id)dequeueReusableSupplementaryViewOfKind:(id)kind withReuseIdentifier:(id)identifier forIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = CKSearchCollectionView;
  v6 = [(CKSearchCollectionView *)&v13 dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:identifier forIndexPath:path];
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
  layer = [v6 layer];

  [layer setZPosition:v10];
LABEL_8:

  return v6;
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  if (![(CKSearchCollectionView *)self suppressDatasourceUpdates])
  {
    v5.receiver = self;
    v5.super_class = CKSearchCollectionView;
    [(CKSearchCollectionView *)&v5 setDataSource:sourceCopy];
  }
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
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

- (void)_ck_setEditing:(BOOL)editing
{
  if (self->__ck_editing != editing)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->__ck_editing = editing;
    if (!editing)
    {
      indexPathsForSelectedItems = [(CKSearchCollectionView *)self indexPathsForSelectedItems];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __41__CKSearchCollectionView__ck_setEditing___block_invoke;
      v7[3] = &unk_1E72F42A8;
      v7[4] = self;
      [indexPathsForSelectedItems enumerateObjectsUsingBlock:v7];
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