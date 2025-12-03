@interface DBHomeButtonStateManager
- (DBHomeButtonStateManager)initWithDelegate:(id)delegate;
- (DBHomeButtonStateManagerDelegate)delegate;
- (void)_updateHomeButtonState;
- (void)dashboardRootViewController:(id)controller didChangeToViewState:(unint64_t)state;
- (void)homeViewController:(id)controller didChangeToPageType:(unint64_t)type;
@end

@implementation DBHomeButtonStateManager

- (void)_updateHomeButtonState
{
  currentViewState = [(DBHomeButtonStateManager *)self currentViewState];
  if (currentViewState == 2)
  {
    v5 = 2;
    goto LABEL_11;
  }

  if (currentViewState == 1)
  {
    v4 = [(DBHomeButtonStateManager *)self currentPageType]== 2;
  }

  else
  {
    if (currentViewState)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v4 = [(DBHomeButtonStateManager *)self currentPageType]== 1;
  }

  v5 = !v4;
LABEL_11:
  delegate = [(DBHomeButtonStateManager *)self delegate];
  [delegate homeButtonStateManager:self didChangeToDisplayState:v5];
}

- (DBHomeButtonStateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DBHomeButtonStateManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = DBHomeButtonStateManager;
  v5 = [(DBHomeButtonStateManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_currentPageType = 0;
  }

  return v6;
}

- (void)homeViewController:(id)controller didChangeToPageType:(unint64_t)type
{
  [(DBHomeButtonStateManager *)self setCurrentPageType:type];

  [(DBHomeButtonStateManager *)self _updateHomeButtonState];
}

- (void)dashboardRootViewController:(id)controller didChangeToViewState:(unint64_t)state
{
  [(DBHomeButtonStateManager *)self setCurrentViewState:state];

  [(DBHomeButtonStateManager *)self _updateHomeButtonState];
}

@end