@interface SUUICarouselCollectionViewLayout
- (CGPoint)_collectionViewBoundsCenter;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (void)_panGestureRecognized:(id)recognized;
- (void)prepareForTransitionToLayout:(id)layout;
- (void)prepareLayout;
@end

@implementation SUUICarouselCollectionViewLayout

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = SUUICarouselCollectionViewLayout;
  v4 = [(UICollectionViewFlowLayout *)&v17 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  collectionView = [(SUUICarouselCollectionViewLayout *)self collectionView];
  delegate = [collectionView delegate];
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

          [delegate collectionView:collectionView carouselLayout:self willApplyLayoutAttributes:{*(*(&v13 + 1) + 8 * i), v13}];
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
  collectionView = [(SUUICarouselCollectionViewLayout *)self collectionView];
  panGestureRecognizer = [collectionView panGestureRecognizer];
  [panGestureRecognizer removeTarget:self action:0];

  collectionView2 = [(SUUICarouselCollectionViewLayout *)self collectionView];
  panGestureRecognizer2 = [collectionView2 panGestureRecognizer];
  [panGestureRecognizer2 addTarget:self action:sel__panGestureRecognized_];
}

- (void)prepareForTransitionToLayout:(id)layout
{
  v6.receiver = self;
  v6.super_class = SUUICarouselCollectionViewLayout;
  [(SUUICarouselCollectionViewLayout *)&v6 prepareForTransitionToLayout:layout];
  collectionView = [(SUUICarouselCollectionViewLayout *)self collectionView];
  panGestureRecognizer = [collectionView panGestureRecognizer];
  [panGestureRecognizer removeTarget:self action:0];
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity
{
  x = velocity.x;
  v42.receiver = self;
  v42.super_class = SUUICarouselCollectionViewLayout;
  [(SUUICarouselCollectionViewLayout *)&v42 targetContentOffsetForProposedContentOffset:offset.x withScrollingVelocity:offset.y, velocity.x, velocity.y];
  v7 = v6;
  collectionView = [(SUUICarouselCollectionViewLayout *)self collectionView];
  [collectionView bounds];
  v10 = v9;
  [(UICollectionViewFlowLayout *)self itemSize];
  v12 = v11;
  [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
  v14 = v12 + v13;
  startScrollingIndexPath = [(SUUICarouselCollectionViewLayout *)self startScrollingIndexPath];
  [(SUUICarouselCollectionViewLayout *)self _collectionViewBoundsCenter];
  v17 = v16;
  v19 = v18;
  collectionView2 = [(SUUICarouselCollectionViewLayout *)self collectionView];
  v21 = [collectionView2 indexPathForItemAtPoint:{v17, v19}];

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
    item2 = [startScrollingIndexPath item] - 1;
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
      item2 = [startScrollingIndexPath item] + 1;
    }

    else
    {
      item = [v21 item];
      if (item == [startScrollingIndexPath item])
      {
        v30 = startScrollingIndexPath;
      }

      else
      {
        v30 = v21;
      }

      item2 = [v30 item];
    }
  }

  v31 = -(v23 - item2 * v14);
  if (v25)
  {
    [collectionView contentSize];
    v33 = v32;
    [collectionView bounds];
    v31 = v33 - CGRectGetWidth(v44) - v31;
  }

  [collectionView contentSize];
  v35 = v34;
  [collectionView contentInset];
  v37 = v35 + v36;
  [collectionView bounds];
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
  collectionView = [(SUUICarouselCollectionViewLayout *)self collectionView];
  [collectionView bounds];
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

- (void)_panGestureRecognized:(id)recognized
{
  if ([recognized state] == 1)
  {
    [(SUUICarouselCollectionViewLayout *)self _collectionViewBoundsCenter];
    v5 = v4;
    v7 = v6;
    collectionView = [(SUUICarouselCollectionViewLayout *)self collectionView];
    v9 = [collectionView indexPathForItemAtPoint:{v5, v7}];

    [(SUUICarouselCollectionViewLayout *)self setStartScrollingIndexPath:v9];
  }
}

@end