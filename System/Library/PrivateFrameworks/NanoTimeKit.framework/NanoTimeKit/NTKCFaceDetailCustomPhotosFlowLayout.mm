@interface NTKCFaceDetailCustomPhotosFlowLayout
- (NTKCFaceDetailCustomPhotosFlowLayout)init;
- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)path withTargetPosition:(CGPoint)position;
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
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v6 = 2.0 / v5;
    }

    [(UICollectionViewFlowLayout *)v3 setMinimumInteritemSpacing:v6];
    [(UICollectionViewFlowLayout *)v3 setMinimumLineSpacing:v6];
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 bounds];
    v8 = (CGRectGetWidth(v11) + v6 * -3.0) * 0.25;

    [(UICollectionViewFlowLayout *)v3 setItemSize:v8, v8];
    [(UICollectionViewFlowLayout *)v3 setSectionInset:v6, 0.0, v6, 0.0];
  }

  return v3;
}

- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)path withTargetPosition:(CGPoint)position
{
  v8.receiver = self;
  v8.super_class = NTKCFaceDetailCustomPhotosFlowLayout;
  v4 = [(NTKCFaceDetailCustomPhotosFlowLayout *)&v8 layoutAttributesForInteractivelyMovingItemAtIndexPath:path withTargetPosition:position.x, position.y];
  CGAffineTransformMakeScale(&v7, 1.2, 1.2);
  v6 = v7;
  [v4 setTransform:&v6];

  return v4;
}

@end