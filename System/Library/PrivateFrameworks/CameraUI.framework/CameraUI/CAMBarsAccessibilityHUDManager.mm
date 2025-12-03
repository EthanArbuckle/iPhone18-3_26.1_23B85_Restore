@interface CAMBarsAccessibilityHUDManager
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CAMBarsAccessibilityHUDManager)initWithView:(id)view delegate:(id)delegate cancelsTouchesInView:(BOOL)inView;
- (CAMBarsAccessibilityHUDManagerDelegate)delegate;
- (CAMBarsAccessibilityHUDManagerGestureProvider)view;
- (CGPoint)locationOfAccessibilityGestureInView:(id)view;
- (void)_handleAccessibilityLongPressGesture:(id)gesture;
@end

@implementation CAMBarsAccessibilityHUDManager

- (CAMBarsAccessibilityHUDManager)initWithView:(id)view delegate:(id)delegate cancelsTouchesInView:(BOOL)inView
{
  inViewCopy = inView;
  viewCopy = view;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = CAMBarsAccessibilityHUDManager;
  v10 = [(CAMBarsAccessibilityHUDManager *)&v15 init];
  v11 = v10;
  if (v10)
  {
    [(CAMBarsAccessibilityHUDManager *)v10 setDelegate:delegateCopy];
    [(CAMBarsAccessibilityHUDManager *)v11 setView:viewCopy];
    v12 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v11 action:sel__handleAccessibilityLongPressGesture_];
    [v12 setMinimumPressDuration:0.15];
    [v12 setDelegate:v11];
    [v12 setCancelsTouchesInView:inViewCopy];
    [(CAMBarsAccessibilityHUDManager *)v11 _setAccessibilityLongPressGestureRecognizer:v12];
    view = [(CAMBarsAccessibilityHUDManager *)v11 view];
    [view addGestureRecognizer:v12];
  }

  return v11;
}

- (CGPoint)locationOfAccessibilityGestureInView:(id)view
{
  viewCopy = view;
  _accessibilityLongPressGestureRecognizer = [(CAMBarsAccessibilityHUDManager *)self _accessibilityLongPressGestureRecognizer];
  [_accessibilityLongPressGestureRecognizer locationInView:viewCopy];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  _accessibilityLongPressGestureRecognizer = [(CAMBarsAccessibilityHUDManager *)self _accessibilityLongPressGestureRecognizer];
  v7 = [recognizerCopy isEqual:_accessibilityLongPressGestureRecognizer];

  return v7;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  view = [(CAMBarsAccessibilityHUDManager *)self view];
  traitCollection = [view traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (!IsAccessibilityCategory)
  {
    return 0;
  }

  view2 = [(CAMBarsAccessibilityHUDManager *)self view];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) == 0)
  {
    return 1;
  }

  view3 = [(CAMBarsAccessibilityHUDManager *)self view];
  v11 = [view3 shouldAccessibilityGestureBeginForHUDManager:self];

  return v11;
}

- (void)_handleAccessibilityLongPressGesture:(id)gesture
{
  v24 = *MEMORY[0x1E69E9840];
  state = [gesture state];
  switch(state)
  {
    case 3:
      delegate = [(CAMBarsAccessibilityHUDManager *)self delegate];
      [delegate dismissAccessibilityHUDViewForAccessibilityHUDManager:self];

      view = [(CAMBarsAccessibilityHUDManager *)self view];
      [view selectedByAccessibilityHUDManager:self];
      break;
    case 2:
LABEL_12:
      view2 = [(CAMBarsAccessibilityHUDManager *)self view];
      v14 = [view2 hudItemForAccessibilityHUDManager:self];

      delegate2 = [(CAMBarsAccessibilityHUDManager *)self delegate];
      v16 = delegate2;
      if (v14)
      {
        [delegate2 accessibilityHUDManager:self wantsToShowHUDItem:v14];
      }

      else
      {
        [delegate2 dismissAccessibilityHUDViewForAccessibilityHUDManager:self];
      }

      return;
    case 1:
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      view3 = [(CAMBarsAccessibilityHUDManager *)self view];
      touchingRecognizersToCancel = [view3 touchingRecognizersToCancel];

      v7 = [touchingRecognizersToCancel countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v20;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(touchingRecognizersToCancel);
            }

            v11 = *(*(&v19 + 1) + 8 * i);
            isEnabled = [v11 isEnabled];
            [v11 setEnabled:0];
            [v11 setEnabled:isEnabled];
          }

          v8 = [touchingRecognizersToCancel countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v8);
      }

      goto LABEL_12;
    default:
      view = [(CAMBarsAccessibilityHUDManager *)self delegate];
      [view dismissAccessibilityHUDViewForAccessibilityHUDManager:self];
      break;
  }
}

- (CAMBarsAccessibilityHUDManagerGestureProvider)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (CAMBarsAccessibilityHUDManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end