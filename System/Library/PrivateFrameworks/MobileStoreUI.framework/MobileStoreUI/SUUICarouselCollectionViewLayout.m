@interface SUUICarouselCollectionViewLayout
- (CGPoint)_collectionViewBoundsCenter;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (void)_panGestureRecognized:(id)a3;
- (void)prepareForTransitionToLayout:(id)a3;
- (void)prepareLayout;
@end

@implementation SUUICarouselCollectionViewLayout

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = SUUICarouselCollectionViewLayout;
  v4 = [(UICollectionViewFlowLayout *)&v17 layoutAttributesForElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = [(SUUICarouselCollectionViewLayout *)self collectionView];
  v6 = [v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 collectionView:v5 carouselLayout:self willApplyLayoutAttributes:{*(*(&v13 + 1) + 8 * i), v13}];
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return v4;
}

- (void)prepareLayout
{
  v7.receiver = self;
  v7.super_class = SUUICarouselCollectionViewLayout;
  [(UICollectionViewFlowLayout *)&v7 prepareLayout];
  v3 = [(SUUICarouselCollectionViewLayout *)self collectionView];
  v4 = [v3 panGestureRecognizer];
  [v4 removeTarget:self action:0];

  v5 = [(SUUICarouselCollectionViewLayout *)self collectionView];
  v6 = [v5 panGestureRecognizer];
  [v6 addTarget:self action:sel__panGestureRecognized_];
}

- (void)prepareForTransitionToLayout:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUUICarouselCollectionViewLayout;
  [(SUUICarouselCollectionViewLayout *)&v6 prepareForTransitionToLayout:a3];
  v4 = [(SUUICarouselCollectionViewLayout *)self collectionView];
  v5 = [v4 panGestureRecognizer];
  [v5 removeTarget:self action:0];
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4
{
  x = a4.x;
  v42.receiver = self;
  v42.super_class = SUUICarouselCollectionViewLayout;
  [(SUUICarouselCollectionViewLayout *)&v42 targetContentOffsetForProposedContentOffset:a3.x withScrollingVelocity:a3.y, a4.x, a4.y];
  v7 = v6;
  v8 = [(SUUICarouselCollectionViewLayout *)self collectionView];
  [v8 bounds];
  v10 = v9;
  [(UICollectionViewFlowLayout *)self itemSize];
  v12 = v11;
  [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
  v14 = v12 + v13;
  v15 = [(SUUICarouselCollectionViewLayout *)self startScrollingIndexPath];
  [(SUUICarouselCollectionViewLayout *)self _collectionViewBoundsCenter];
  v17 = v16;
  v19 = v18;
  v20 = [(SUUICarouselCollectionViewLayout *)self collectionView];
  v21 = [v20 indexPathForItemAtPoint:{v17, v19}];

  v22 = (v10 - v14) * 0.5;
  v23 = floorf(v22);
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  v25 = ShouldReverseLayoutDirection;
  if (ShouldReverseLayoutDirection)
  {
    v26 = x > 0.0;
  }

  else
  {
    v26 = x < 0.0;
  }

  if (v26)
  {
    v27 = [v15 item] - 1;
  }

  else
  {
    if (ShouldReverseLayoutDirection)
    {
      v28 = x < 0.0;
    }

    else
    {
      v28 = x > 0.0;
    }

    if (v28)
    {
      v27 = [v15 item] + 1;
    }

    else
    {
      v29 = [v21 item];
      if (v29 == [v15 item])
      {
        v30 = v15;
      }

      else
      {
        v30 = v21;
      }

      v27 = [v30 item];
    }
  }

  v31 = -(v23 - v27 * v14);
  if (v25)
  {
    [v8 contentSize];
    v33 = v32;
    [v8 bounds];
    v31 = v33 - CGRectGetWidth(v44) - v31;
  }

  [v8 contentSize];
  v35 = v34;
  [v8 contentInset];
  v37 = v35 + v36;
  [v8 bounds];
  if (v31 >= v37 - v38)
  {
    v39 = v37 - v38;
  }

  else
  {
    v39 = v31;
  }

  v40 = v39;
  v41 = v7;
  result.y = v41;
  result.x = v40;
  return result;
}

- (CGPoint)_collectionViewBoundsCenter
{
  v2 = [(SUUICarouselCollectionViewLayout *)self collectionView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  MidY = CGRectGetMidY(v16);
  v13 = MidX;
  result.y = MidY;
  result.x = v13;
  return result;
}

- (void)_panGestureRecognized:(id)a3
{
  if ([a3 state] == 1)
  {
    [(SUUICarouselCollectionViewLayout *)self _collectionViewBoundsCenter];
    v5 = v4;
    v7 = v6;
    v8 = [(SUUICarouselCollectionViewLayout *)self collectionView];
    v9 = [v8 indexPathForItemAtPoint:{v5, v7}];

    [(SUUICarouselCollectionViewLayout *)self setStartScrollingIndexPath:v9];
  }
}

@end