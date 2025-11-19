@interface NTKCFaceDetailCustomPhotosFlowLayout
- (NTKCFaceDetailCustomPhotosFlowLayout)init;
- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)a3 withTargetPosition:(CGPoint)a4;
@end

@implementation NTKCFaceDetailCustomPhotosFlowLayout

- (NTKCFaceDetailCustomPhotosFlowLayout)init
{
  v10.receiver = self;
  v10.super_class = NTKCFaceDetailCustomPhotosFlowLayout;
  v2 = [(UICollectionViewFlowLayout *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(NTKCFaceDetailCustomPhotosFlowLayout *)v2 _setWantsRightToLeftHorizontalMirroringIfNeeded:1];
    if (NTKCScreenStyle() == -1)
    {
      v6 = 2.0;
    }

    else
    {
      v4 = [MEMORY[0x277D759A0] mainScreen];
      [v4 scale];
      v6 = 2.0 / v5;
    }

    [(UICollectionViewFlowLayout *)v3 setMinimumInteritemSpacing:v6];
    [(UICollectionViewFlowLayout *)v3 setMinimumLineSpacing:v6];
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 bounds];
    v8 = (CGRectGetWidth(v11) + v6 * -3.0) * 0.25;

    [(UICollectionViewFlowLayout *)v3 setItemSize:v8, v8];
    [(UICollectionViewFlowLayout *)v3 setSectionInset:v6, 0.0, v6, 0.0];
  }

  return v3;
}

- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)a3 withTargetPosition:(CGPoint)a4
{
  v8.receiver = self;
  v8.super_class = NTKCFaceDetailCustomPhotosFlowLayout;
  v4 = [(NTKCFaceDetailCustomPhotosFlowLayout *)&v8 layoutAttributesForInteractivelyMovingItemAtIndexPath:a3 withTargetPosition:a4.x, a4.y];
  CGAffineTransformMakeScale(&v7, 1.2, 1.2);
  v6 = v7;
  [v4 setTransform:&v6];

  return v4;
}

@end