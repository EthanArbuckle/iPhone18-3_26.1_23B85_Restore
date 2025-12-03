@interface _UIDocumentPickerFlowLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGSize)collectionViewContentSize;
@end

@implementation _UIDocumentPickerFlowLayout

- (CGSize)collectionViewContentSize
{
  v14.receiver = self;
  v14.super_class = _UIDocumentPickerFlowLayout;
  [(UICollectionViewFlowLayout *)&v14 collectionViewContentSize];
  v4 = v3;
  v6 = v5;
  collectionView = [(_UIDocumentPickerFlowLayout *)self collectionView];
  [collectionView bounds];
  v9 = v8;
  [(_UIDocumentPickerFlowLayout *)self contentSizeAdjustment];
  v11 = fmax(v6, v10 + v9);

  v12 = v4;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  scrollDirection = [(UICollectionViewFlowLayout *)self scrollDirection];
  collectionView = [(_UIDocumentPickerFlowLayout *)self collectionView];
  [collectionView bounds];
  v11 = v10;
  v13 = v12;

  if (!scrollDirection && v11 != width || scrollDirection == 1 && v13 != height)
  {
    return 1;
  }

  v15.receiver = self;
  v15.super_class = _UIDocumentPickerFlowLayout;
  return [(UICollectionViewFlowLayout *)&v15 shouldInvalidateLayoutForBoundsChange:x, y, width, height];
}

@end