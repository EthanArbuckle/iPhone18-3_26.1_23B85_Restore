@interface SUUISwooshCollectionViewLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity;
- (SUUISwooshCollectionViewLayout)init;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
@end

@implementation SUUISwooshCollectionViewLayout

- (SUUISwooshCollectionViewLayout)init
{
  v5.receiver = self;
  v5.super_class = SUUISwooshCollectionViewLayout;
  v2 = [(UICollectionViewFlowLayout *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UICollectionViewFlowLayout *)v2 setMinimumLineSpacing:0.0];
    [(UICollectionViewFlowLayout *)v3 setMinimumInteritemSpacing:0.0];
    [(UICollectionViewFlowLayout *)v3 setScrollDirection:1];
  }

  return v3;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = SUUISwooshCollectionViewLayout;
  v4 = [(UICollectionViewFlowLayout *)&v14 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * i) setBackgroundColor:self->_backgroundColor];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  return v4;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity
{
  x = velocity.x;
  v31.receiver = self;
  v31.super_class = SUUISwooshCollectionViewLayout;
  [(SUUISwooshCollectionViewLayout *)&v31 targetContentOffsetForProposedContentOffset:offset.x withScrollingVelocity:offset.y, velocity.x, velocity.y];
  v7 = v6;
  v9 = v8;
  if (self->_snapsToItemBoundaries || self->_snapsToItemCenters)
  {
    collectionView = [(SUUISwooshCollectionViewLayout *)self collectionView];
    dataSource = [collectionView dataSource];
    delegate = [collectionView delegate];
    if (objc_opt_respondsToSelector())
    {
      [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
      v14 = v13;
      [collectionView frame];
      v16 = v15 + v15;
      if ([collectionView numberOfSections] >= 1)
      {
        v17 = 0;
        v18 = 0.0;
        do
        {
          v19 = [dataSource collectionView:collectionView numberOfItemsInSection:v17];
          if (v19 >= 1)
          {
            v20 = v19;
            v21 = 0;
            while (1)
            {
              v22 = [MEMORY[0x277CCAA70] indexPathForItem:v21 inSection:v17];
              [delegate collectionView:collectionView layout:self sizeForItemAtIndexPath:v22];
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

        while (v17 < [collectionView numberOfSections]);
      }

      if (self->_snapsToItemCenters)
      {
        [collectionView frame];
        v7 = v7 + (v26 - v16) * -0.5;
        [collectionView contentInset];
        if (v7 < -v27)
        {
          [collectionView contentInset];
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

@end