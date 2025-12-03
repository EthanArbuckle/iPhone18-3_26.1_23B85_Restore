@interface CSScrollGestureController
- (BOOL)handleEvent:(id)event;
- (CSScrollGestureController)initWithScrollableView:(id)view;
- (CSScrollGestureControllerDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_horizontalScrollFailureGestureRecognizerChanged:(id)changed;
- (void)_updateForScrollingStrategy:(int64_t)strategy fromScrollingStrategy:(int64_t)scrollingStrategy;
- (void)dealloc;
- (void)invalidate;
- (void)setScrollingStrategy:(int64_t)strategy;
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"CSScrollGestureController.m" lineNumber:62 description:@"ScrollGestureController must be invalidated before it hits dealloc."];
}

- (CSScrollGestureController)initWithScrollableView:(id)view
{
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = CSScrollGestureController;
  v6 = [(CSScrollGestureController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scrollableView, view);
    scrollView = [(CSScrollableView *)v7->_scrollableView scrollView];
    scrollView = v7->_scrollView;
    v7->_scrollView = scrollView;

    panGestureRecognizer = [(UIScrollView *)v7->_scrollView panGestureRecognizer];
    scrollViewGestureRecognizer = v7->_scrollViewGestureRecognizer;
    v7->_scrollViewGestureRecognizer = panGestureRecognizer;

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

- (void)setScrollingStrategy:(int64_t)strategy
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_scrollingStrategy != strategy)
  {
    v5 = SBLogDashBoardScrollGestures();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromCoverSheetScrollingStrategy(self->_scrollingStrategy);
      v9 = NSStringFromCoverSheetScrollingStrategy(strategy);
      v10 = 138543874;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_INFO, "%{public}@: scrolling strategy changed from %@ to %@", &v10, 0x20u);
    }

    [(CSScrollGestureController *)self _updateForScrollingStrategy:strategy fromScrollingStrategy:self->_scrollingStrategy];
    self->_scrollingStrategy = strategy;
  }
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  type = [eventCopy type];
  if (type == 10 || type == 6)
  {
    [(CSScrollGestureController *)self setScrollingStrategy:1];
    v7 = [eventCopy isConsumable] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_horizontalScrollFailureGestureRecognizerChanged:(id)changed
{
  changedCopy = changed;
  horizontalFailureGestureRecognizer = [(CSScrollGestureController *)self horizontalFailureGestureRecognizer];

  v5 = changedCopy;
  if (horizontalFailureGestureRecognizer == changedCopy)
  {
    v6 = [changedCopy state] == 1;
    v5 = changedCopy;
    if (v6)
    {
      if ([(UIGestureRecognizer *)self->_scrollViewGestureRecognizer state]== UIGestureRecognizerStateBegan || (v6 = [(UIGestureRecognizer *)self->_scrollViewGestureRecognizer state]== UIGestureRecognizerStateChanged, v5 = changedCopy, v6))
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

        v5 = changedCopy;
      }
    }
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CSScrollGestureController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = NSStringFromCoverSheetScrollingStrategy(self->_scrollingStrategy);
  [v3 appendString:v4 withName:@"scrollingStrategy"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CSScrollGestureController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(CSScrollGestureController *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_scrollViewGestureRecognizer withName:@"scrollGesture"];
  v6 = [succinctDescriptionBuilder appendObject:self->_horizontalFailureGestureRecognizer withName:@"horizontalCancelGesture"];

  return succinctDescriptionBuilder;
}

- (void)_updateForScrollingStrategy:(int64_t)strategy fromScrollingStrategy:(int64_t)scrollingStrategy
{
  v7 = [(CSScrollGestureController *)self _shouldFailHorizontalSwipesForScrollingStrategy:?];
  v8 = [(CSScrollGestureController *)self _shouldAllowScrollForScrollingStrategy:scrollingStrategy];
  v9 = [(CSScrollGestureController *)self _shouldAllowScrollForScrollingStrategy:strategy];
  horizontalFailureGestureRecognizer = [(CSScrollGestureController *)self horizontalFailureGestureRecognizer];
  [horizontalFailureGestureRecognizer setEnabled:v7];

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