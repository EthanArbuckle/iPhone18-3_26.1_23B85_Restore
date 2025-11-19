@interface CAMBarsAccessibilityHUDManager
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CAMBarsAccessibilityHUDManager)initWithView:(id)a3 delegate:(id)a4 cancelsTouchesInView:(BOOL)a5;
- (CAMBarsAccessibilityHUDManagerDelegate)delegate;
- (CAMBarsAccessibilityHUDManagerGestureProvider)view;
- (CGPoint)locationOfAccessibilityGestureInView:(id)a3;
- (void)_handleAccessibilityLongPressGesture:(id)a3;
@end

@implementation CAMBarsAccessibilityHUDManager

- (CAMBarsAccessibilityHUDManager)initWithView:(id)a3 delegate:(id)a4 cancelsTouchesInView:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = CAMBarsAccessibilityHUDManager;
  v10 = [(CAMBarsAccessibilityHUDManager *)&v15 init];
  v11 = v10;
  if (v10)
  {
    [(CAMBarsAccessibilityHUDManager *)v10 setDelegate:v9];
    [(CAMBarsAccessibilityHUDManager *)v11 setView:v8];
    v12 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v11 action:sel__handleAccessibilityLongPressGesture_];
    [v12 setMinimumPressDuration:0.15];
    [v12 setDelegate:v11];
    [v12 setCancelsTouchesInView:v5];
    [(CAMBarsAccessibilityHUDManager *)v11 _setAccessibilityLongPressGestureRecognizer:v12];
    v13 = [(CAMBarsAccessibilityHUDManager *)v11 view];
    [v13 addGestureRecognizer:v12];
  }

  return v11;
}

- (CGPoint)locationOfAccessibilityGestureInView:(id)a3
{
  v4 = a3;
  v5 = [(CAMBarsAccessibilityHUDManager *)self _accessibilityLongPressGestureRecognizer];
  [v5 locationInView:v4];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(CAMBarsAccessibilityHUDManager *)self _accessibilityLongPressGestureRecognizer];
  v7 = [v5 isEqual:v6];

  return v7;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = [(CAMBarsAccessibilityHUDManager *)self view];
  v5 = [v4 traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  if (!IsAccessibilityCategory)
  {
    return 0;
  }

  v8 = [(CAMBarsAccessibilityHUDManager *)self view];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) == 0)
  {
    return 1;
  }

  v10 = [(CAMBarsAccessibilityHUDManager *)self view];
  v11 = [v10 shouldAccessibilityGestureBeginForHUDManager:self];

  return v11;
}

- (void)_handleAccessibilityLongPressGesture:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [a3 state];
  switch(v4)
  {
    case 3:
      v17 = [(CAMBarsAccessibilityHUDManager *)self delegate];
      [v17 dismissAccessibilityHUDViewForAccessibilityHUDManager:self];

      v18 = [(CAMBarsAccessibilityHUDManager *)self view];
      [v18 selectedByAccessibilityHUDManager:self];
      break;
    case 2:
LABEL_12:
      v13 = [(CAMBarsAccessibilityHUDManager *)self view];
      v14 = [v13 hudItemForAccessibilityHUDManager:self];

      v15 = [(CAMBarsAccessibilityHUDManager *)self delegate];
      v16 = v15;
      if (v14)
      {
        [v15 accessibilityHUDManager:self wantsToShowHUDItem:v14];
      }

      else
      {
        [v15 dismissAccessibilityHUDViewForAccessibilityHUDManager:self];
      }

      return;
    case 1:
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v5 = [(CAMBarsAccessibilityHUDManager *)self view];
      v6 = [v5 touchingRecognizersToCancel];

      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v19 + 1) + 8 * i);
            v12 = [v11 isEnabled];
            [v11 setEnabled:0];
            [v11 setEnabled:v12];
          }

          v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v8);
      }

      goto LABEL_12;
    default:
      v18 = [(CAMBarsAccessibilityHUDManager *)self delegate];
      [v18 dismissAccessibilityHUDViewForAccessibilityHUDManager:self];
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