@interface _MUPhotoSliderViewFlowLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
@end

@implementation _MUPhotoSliderViewFlowLayout

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v5 = [(_MUPhotoSliderViewFlowLayout *)self collectionView:a3.origin.x];
  [v5 bounds];
  v8 = width != v6 || height != v7;

  return v8;
}

@end