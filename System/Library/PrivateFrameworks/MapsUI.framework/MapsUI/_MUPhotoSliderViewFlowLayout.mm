@interface _MUPhotoSliderViewFlowLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
@end

@implementation _MUPhotoSliderViewFlowLayout

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  v5 = [(_MUPhotoSliderViewFlowLayout *)self collectionView:change.origin.x];
  [v5 bounds];
  v8 = width != v6 || height != v7;

  return v8;
}

@end