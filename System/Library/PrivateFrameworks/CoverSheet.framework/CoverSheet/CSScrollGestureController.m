@interface CSScrollGestureController
- (BOOL)handleEvent:(id)a3;
- (CSScrollGestureController)initWithScrollableView:(id)a3;
- (CSScrollGestureControllerDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_horizontalScrollFailureGestureRecognizerChanged:(id)a3;
- (void)_updateForScrollingStrategy:(int64_t)a3 fromScrollingStrategy:(int64_t)a4;
- (void)dealloc;
- (void)invalidate;
- (void)setScrollingStrategy:(int64_t)a3;
@end

@implementation CSScrollGestureController

- (void)invalidate
{
  [(CSScrollableView *)self->_scrollableView removeGestureRecognizer:self->_horizontalFailureGestureRecognizer];
  [(CSScrollGestureController *)self setDelegate:0];

  [(CSScrollGestureController *)self setScrollingStrategy:1];
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSScrollGestureController.m" lineNumber:62 description:@"ScrollGestureController must be invalidated before it hits dealloc."];
}

- (CSScrollGestureController)initWithScrollableView:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = CSScrollGestureController;
  v6 = [(CSScrollGestureController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scrollableView, a3);
    v8 = [(CSScrollableView *)v7->_scrollableView scrollView];
    scrollView = v7->_scrollView;
    v7->_scrollView = v8;

    v10 = [(UIScrollView *)v7->_scrollView panGestureRecognizer];
    scrollViewGestureRecognizer = v7->_scrollViewGestureRecognizer;
    v7->_scrollViewGestureRecognizer = v10;

    [(UIGestureRecognizer *)v7->_scrollViewGestureRecognizer sbf_setPencilTouchesAllowed:1];
    v12 = [[CSHorizontalScrollFailureRecognizer alloc] initWithTarget:v7 action:sel__horizontalScrollFailureGestureRecognizerChanged_];
    horizontalFailureGestureRecognizer = v7->_horizontalFailureGestureRecognizer;
    v7->_horizontalFailureGestureRecognizer = v12;

    [(CSHorizontalScrollFailureRecognizer *)v7->_horizontalFailureGestureRecognizer setAllowMultiTouch:0];
    [(CSHorizontalScrollFailureRecognizer *)v7->_horizontalFailureGestureRecognizer setDelegate:v7];
    [(CSHorizontalScrollFailureRecognizer *)v7->_horizontalFailureGestureRecognizer sbf_setPencilTouchesAllowed:1];
    [(CSScrollableView *)v7->_scrollableView addGestureRecognizer:v7->_horizontalFailureGestureRecognizer];
  }

  return v7;
}

- (void)setScrollingStrategy:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_scrollingStrategy != a3)
  {
    v5 = SBLogDashBoardScrollGestures();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromCoverSheetScrollingStrategy(self->_scrollingStrategy);
      v9 = NSStringFromCoverSheetScrollingStrategy(a3);
      v10 = 138543874;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_INFO, "%{public}@: scrolling strategy changed from %@ to %@", &v10, 0x20u);
    }

    [(CSScrollGestureController *)self _updateForScrollingStrategy:a3 fromScrollingStrategy:self->_scrollingStrategy];
    self->_scrollingStrategy = a3;
  }
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 == 10 || v5 == 6)
  {
    [(CSScrollGestureController *)self setScrollingStrategy:1];
    v7 = [v4 isConsumable] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_horizontalScrollFailureGestureRecognizerChanged:(id)a3
{
  v8 = a3;
  v4 = [(CSScrollGestureController *)self horizontalFailureGestureRecognizer];

  v5 = v8;
  if (v4 == v8)
  {
    v6 = [v8 state] == 1;
    v5 = v8;
    if (v6)
    {
      if ([(UIGestureRecognizer *)self->_scrollViewGestureRecognizer state]== UIGestureRecognizerStateBegan || (v6 = [(UIGestureRecognizer *)self->_scrollViewGestureRecognizer state]== UIGestureRecognizerStateChanged, v5 = v8, v6))
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        if (objc_opt_respondsToSelector())
        {
          [WeakRetained controllerWillCancelHorizontalScrolling:self];
        }

        [(UIScrollView *)self->_scrollView _forcePanGestureToEndImmediately];
        if (objc_opt_respondsToSelector())
        {
          [WeakRetained controllerDidCancelHorizontalScrolling:self];
        }

        v5 = v8;
      }
    }
  }
}

- (id)succinctDescription
{
  v2 = [(CSScrollGestureController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = NSStringFromCoverSheetScrollingStrategy(self->_scrollingStrategy);
  [v3 appendString:v4 withName:@"scrollingStrategy"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CSScrollGestureController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(CSScrollGestureController *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_scrollViewGestureRecognizer withName:@"scrollGesture"];
  v6 = [v4 appendObject:self->_horizontalFailureGestureRecognizer withName:@"horizontalCancelGesture"];

  return v4;
}

- (void)_updateForScrollingStrategy:(int64_t)a3 fromScrollingStrategy:(int64_t)a4
{
  v7 = [(CSScrollGestureController *)self _shouldFailHorizontalSwipesForScrollingStrategy:?];
  v8 = [(CSScrollGestureController *)self _shouldAllowScrollForScrollingStrategy:a4];
  v9 = [(CSScrollGestureController *)self _shouldAllowScrollForScrollingStrategy:a3];
  v10 = [(CSScrollGestureController *)self horizontalFailureGestureRecognizer];
  [v10 setEnabled:v7];

  if (v8 != v9)
  {
    scrollView = self->_scrollView;

    [(UIScrollView *)scrollView setScrollEnabled:v9];
  }
}

- (CSScrollGestureControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end