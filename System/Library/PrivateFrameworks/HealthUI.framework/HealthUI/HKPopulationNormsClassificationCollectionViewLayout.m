@interface HKPopulationNormsClassificationCollectionViewLayout
- (HKPopulationNormsClassificationCollectionViewLayout)init;
@end

@implementation HKPopulationNormsClassificationCollectionViewLayout

- (HKPopulationNormsClassificationCollectionViewLayout)init
{
  v5.receiver = self;
  v5.super_class = HKPopulationNormsClassificationCollectionViewLayout;
  v2 = [(UICollectionViewFlowLayout *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UICollectionViewFlowLayout *)v2 setScrollDirection:1];
    [(UICollectionViewFlowLayout *)v3 setSectionInset:0.0, 6.0, 0.0, 6.0];
    [(UICollectionViewFlowLayout *)v3 setEstimatedItemSize:0.0, 28.0];
  }

  return v3;
}

@end