@interface MUImpressionsCalculatorConfiguration
- (MUImpressionsCalculatorConfiguration)initWithLogger:(id)a3 contentScrollView:(id)a4 containerViewProvider:(id)a5;
- (UIScrollView)scrollView;
- (UIView)hostingContainerView;
@end

@implementation MUImpressionsCalculatorConfiguration

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (UIView)hostingContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_cachedContainerView);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_cachedContainerView);
  }

  else
  {
    v5 = (*(self->_containerViewProvider + 2))();
    if (v5)
    {
      v6 = objc_storeWeak(&self->_cachedContainerView, v5);
      v4 = v5;
    }

    else
    {
      v7 = objc_loadWeakRetained(&self->_scrollView);
      v4 = [v7 superview];
    }
  }

  return v4;
}

- (MUImpressionsCalculatorConfiguration)initWithLogger:(id)a3 contentScrollView:(id)a4 containerViewProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = MUImpressionsCalculatorConfiguration;
  v12 = [(MUImpressionsCalculatorConfiguration *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_logger, a3);
    objc_storeWeak(&v13->_scrollView, v10);
    v14 = _Block_copy(v11);
    containerViewProvider = v13->_containerViewProvider;
    v13->_containerViewProvider = v14;
  }

  return v13;
}

@end