@interface _UIDocumentPickerFlowLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
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
  v7 = [(_UIDocumentPickerFlowLayout *)self collectionView];
  [v7 bounds];
  v9 = v8;
  [(_UIDocumentPickerFlowLayout *)self contentSizeAdjustment];
  v11 = fmax(v6, v10 + v9);

  v12 = v4;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UICollectionViewFlowLayout *)self scrollDirection];
  v9 = [(_UIDocumentPickerFlowLayout *)self collectionView];
  [v9 bounds];
  v11 = v10;
  v13 = v12;

  if (!v8 && v11 != width || v8 == 1 && v13 != height)
  {
    return 1;
  }

  v15.receiver = self;
  v15.super_class = _UIDocumentPickerFlowLayout;
  return [(UICollectionViewFlowLayout *)&v15 shouldInvalidateLayoutForBoundsChange:x, y, width, height];
}

@end