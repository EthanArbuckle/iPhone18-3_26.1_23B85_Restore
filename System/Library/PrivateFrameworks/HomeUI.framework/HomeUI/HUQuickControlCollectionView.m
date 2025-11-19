@interface HUQuickControlCollectionView
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)touchesShouldCancelInContentView:(id)a3;
- (HUQuickControlCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
@end

@implementation HUQuickControlCollectionView

- (HUQuickControlCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  v10.receiver = self;
  v10.super_class = HUQuickControlCollectionView;
  v4 = [(HUQuickControlCollectionView *)&v10 initWithFrame:a4 collectionViewLayout:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = objc_alloc_init(HUScrollGestureRecognitionResolver);
    scrollGestureResolver = v4->_scrollGestureResolver;
    v4->_scrollGestureResolver = v5;

    [(HUScrollGestureRecognitionResolver *)v4->_scrollGestureResolver setConflictingGestureActivationDelay:0.0];
    v7 = v4->_scrollGestureResolver;
    v8 = [(HUQuickControlCollectionView *)v4 panGestureRecognizer];
    [(HUScrollGestureRecognitionResolver *)v7 addPanGestureRecognizer:v8];

    [(HUQuickControlCollectionView *)v4 setDirectionalLockEnabled:1];
  }

  return v4;
}

- (BOOL)touchesShouldCancelInContentView:(id)a3
{
  v4 = a3;
  if ([v4 isDescendantOfView:self])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HUQuickControlCollectionView;
    v5 = [(HUQuickControlCollectionView *)&v7 touchesShouldCancelInContentView:v4];
  }

  return v5;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(HUQuickControlCollectionView *)self panGestureRecognizer];
  v10 = v9;
  if (v9 == v7)
  {
    v11 = [v8 view];
    v12 = [v11 isDescendantOfView:self];

    if (v12)
    {
      v13 = [(HUQuickControlCollectionView *)self scrollGestureResolver];
      [v13 addConflictingGestureRecognizer:v8];

      v14 = 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  if ([+[HUQuickControlCollectionView superclass](HUQuickControlCollectionView "superclass")])
  {
    v16.receiver = self;
    v16.super_class = HUQuickControlCollectionView;
    v14 = [(HUQuickControlCollectionView *)&v16 gestureRecognizer:v7 shouldRecognizeSimultaneouslyWithGestureRecognizer:v8];
  }

  else
  {
    v14 = 0;
  }

LABEL_8:

  return v14;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(HUQuickControlCollectionView *)self panGestureRecognizer];
  if (v9 != v7)
  {
    goto LABEL_6;
  }

  v10 = [v8 view];
  if (([v10 isDescendantOfView:self] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v11 = [v8 view];
  v12 = [v11 hu_isDescendantOfPickerView];

  if (v12)
  {
    v13 = 1;
    goto LABEL_10;
  }

LABEL_7:
  if ([+[HUQuickControlCollectionView superclass](HUQuickControlCollectionView "superclass")])
  {
    v15.receiver = self;
    v15.super_class = HUQuickControlCollectionView;
    v13 = [(HUQuickControlCollectionView *)&v15 gestureRecognizer:v7 shouldRequireFailureOfGestureRecognizer:v8];
  }

  else
  {
    v13 = 0;
  }

LABEL_10:

  return v13;
}

@end