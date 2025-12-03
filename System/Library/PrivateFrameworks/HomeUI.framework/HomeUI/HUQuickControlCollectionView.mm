@interface HUQuickControlCollectionView
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)touchesShouldCancelInContentView:(id)view;
- (HUQuickControlCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
@end

@implementation HUQuickControlCollectionView

- (HUQuickControlCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  v10.receiver = self;
  v10.super_class = HUQuickControlCollectionView;
  v4 = [(HUQuickControlCollectionView *)&v10 initWithFrame:layout collectionViewLayout:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    v5 = objc_alloc_init(HUScrollGestureRecognitionResolver);
    scrollGestureResolver = v4->_scrollGestureResolver;
    v4->_scrollGestureResolver = v5;

    [(HUScrollGestureRecognitionResolver *)v4->_scrollGestureResolver setConflictingGestureActivationDelay:0.0];
    v7 = v4->_scrollGestureResolver;
    panGestureRecognizer = [(HUQuickControlCollectionView *)v4 panGestureRecognizer];
    [(HUScrollGestureRecognitionResolver *)v7 addPanGestureRecognizer:panGestureRecognizer];

    [(HUQuickControlCollectionView *)v4 setDirectionalLockEnabled:1];
  }

  return v4;
}

- (BOOL)touchesShouldCancelInContentView:(id)view
{
  viewCopy = view;
  if ([viewCopy isDescendantOfView:self])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HUQuickControlCollectionView;
    v5 = [(HUQuickControlCollectionView *)&v7 touchesShouldCancelInContentView:viewCopy];
  }

  return v5;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  panGestureRecognizer = [(HUQuickControlCollectionView *)self panGestureRecognizer];
  v10 = panGestureRecognizer;
  if (panGestureRecognizer == recognizerCopy)
  {
    view = [gestureRecognizerCopy view];
    v12 = [view isDescendantOfView:self];

    if (v12)
    {
      scrollGestureResolver = [(HUQuickControlCollectionView *)self scrollGestureResolver];
      [scrollGestureResolver addConflictingGestureRecognizer:gestureRecognizerCopy];

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
    v14 = [(HUQuickControlCollectionView *)&v16 gestureRecognizer:recognizerCopy shouldRecognizeSimultaneouslyWithGestureRecognizer:gestureRecognizerCopy];
  }

  else
  {
    v14 = 0;
  }

LABEL_8:

  return v14;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  panGestureRecognizer = [(HUQuickControlCollectionView *)self panGestureRecognizer];
  if (panGestureRecognizer != recognizerCopy)
  {
    goto LABEL_6;
  }

  view = [gestureRecognizerCopy view];
  if (([view isDescendantOfView:self] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  view2 = [gestureRecognizerCopy view];
  hu_isDescendantOfPickerView = [view2 hu_isDescendantOfPickerView];

  if (hu_isDescendantOfPickerView)
  {
    v13 = 1;
    goto LABEL_10;
  }

LABEL_7:
  if ([+[HUQuickControlCollectionView superclass](HUQuickControlCollectionView "superclass")])
  {
    v15.receiver = self;
    v15.super_class = HUQuickControlCollectionView;
    v13 = [(HUQuickControlCollectionView *)&v15 gestureRecognizer:recognizerCopy shouldRequireFailureOfGestureRecognizer:gestureRecognizerCopy];
  }

  else
  {
    v13 = 0;
  }

LABEL_10:

  return v13;
}

@end