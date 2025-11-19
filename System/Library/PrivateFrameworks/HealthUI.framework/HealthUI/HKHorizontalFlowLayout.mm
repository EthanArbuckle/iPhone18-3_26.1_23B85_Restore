@interface HKHorizontalFlowLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4;
- (HKHorizontalFlowLayout)init;
- (void)setLeadingInset:(double)a3;
- (void)setTrailingInset:(double)a3;
@end

@implementation HKHorizontalFlowLayout

- (HKHorizontalFlowLayout)init
{
  v5.receiver = self;
  v5.super_class = HKHorizontalFlowLayout;
  v2 = [(UICollectionViewFlowLayout *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UICollectionViewFlowLayout *)v2 setScrollDirection:1];
    [(UICollectionViewFlowLayout *)v3 setSectionInset:0.0, 8.0, 0.0, 8.0];
    [(UICollectionViewFlowLayout *)v3 setMinimumInteritemSpacing:8.0];
  }

  return v3;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4
{
  x = a4.x;
  v31.receiver = self;
  v31.super_class = HKHorizontalFlowLayout;
  [(HKHorizontalFlowLayout *)&v31 targetContentOffsetForProposedContentOffset:a3.x withScrollingVelocity:a3.y, a4.x, a4.y];
  v7 = v6;
  v9 = v8;
  if (self->_snapsToItemBoundaries || self->_snapsToItemCenters)
  {
    v10 = [(HKHorizontalFlowLayout *)self collectionView];
    v11 = [v10 dataSource];
    v12 = [v10 delegate];
    if (objc_opt_respondsToSelector())
    {
      [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
      v14 = v13;
      [v10 frame];
      v16 = v15 + v15;
      if ([v10 numberOfSections] >= 1)
      {
        v17 = 0;
        v18 = 0.0;
        do
        {
          v19 = [v11 collectionView:v10 numberOfItemsInSection:v17];
          if (v19 >= 1)
          {
            v20 = v19;
            v21 = 0;
            while (1)
            {
              v22 = [MEMORY[0x1E696AC88] indexPathForItem:v21 inSection:v17];
              [v12 collectionView:v10 layout:self sizeForItemAtIndexPath:v22];
              v16 = v23;

              v24 = v18 + v16;
              if (v7 > v18 && v7 < v24)
              {
                break;
              }

              v18 = v18 + v14 + v16;
              if (v20 == ++v21)
              {
                goto LABEL_19;
              }
            }

            if (x > 0.0 || x >= 0.0 && v7 - v18 >= v16 * 0.5)
            {
              v7 = v14 + v24;
            }

            else
            {
              v7 = v18;
            }
          }

LABEL_19:
          ++v17;
        }

        while (v17 < [v10 numberOfSections]);
      }

      if (self->_snapsToItemCenters)
      {
        [v10 frame];
        v7 = v7 + (v26 - v16) * -0.5;
        [v10 contentInset];
        if (v7 < -v27)
        {
          [v10 contentInset];
          v7 = -v28;
        }
      }
    }
  }

  v29 = v7;
  v30 = v9;
  result.y = v30;
  result.x = v29;
  return result;
}

- (void)setLeadingInset:(double)a3
{
  [(UICollectionViewFlowLayout *)self sectionInset];

  [(UICollectionViewFlowLayout *)self setSectionInset:?];
}

- (void)setTrailingInset:(double)a3
{
  [(UICollectionViewFlowLayout *)self sectionInset];

  [(UICollectionViewFlowLayout *)self setSectionInset:?];
}

@end