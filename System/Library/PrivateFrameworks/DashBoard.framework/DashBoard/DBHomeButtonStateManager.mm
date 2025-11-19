@interface DBHomeButtonStateManager
- (DBHomeButtonStateManager)initWithDelegate:(id)a3;
- (DBHomeButtonStateManagerDelegate)delegate;
- (void)_updateHomeButtonState;
- (void)dashboardRootViewController:(id)a3 didChangeToViewState:(unint64_t)a4;
- (void)homeViewController:(id)a3 didChangeToPageType:(unint64_t)a4;
@end

@implementation DBHomeButtonStateManager

- (void)_updateHomeButtonState
{
  v3 = [(DBHomeButtonStateManager *)self currentViewState];
  if (v3 == 2)
  {
    v5 = 2;
    goto LABEL_11;
  }

  if (v3 == 1)
  {
    v4 = [(DBHomeButtonStateManager *)self currentPageType]== 2;
  }

  else
  {
    if (v3)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v4 = [(DBHomeButtonStateManager *)self currentPageType]== 1;
  }

  v5 = !v4;
LABEL_11:
  v6 = [(DBHomeButtonStateManager *)self delegate];
  [v6 homeButtonStateManager:self didChangeToDisplayState:v5];
}

- (DBHomeButtonStateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DBHomeButtonStateManager)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DBHomeButtonStateManager;
  v5 = [(DBHomeButtonStateManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v6->_currentPageType = 0;
  }

  return v6;
}

- (void)homeViewController:(id)a3 didChangeToPageType:(unint64_t)a4
{
  [(DBHomeButtonStateManager *)self setCurrentPageType:a4];

  [(DBHomeButtonStateManager *)self _updateHomeButtonState];
}

- (void)dashboardRootViewController:(id)a3 didChangeToViewState:(unint64_t)a4
{
  [(DBHomeButtonStateManager *)self setCurrentViewState:a4];

  [(DBHomeButtonStateManager *)self _updateHomeButtonState];
}

@end