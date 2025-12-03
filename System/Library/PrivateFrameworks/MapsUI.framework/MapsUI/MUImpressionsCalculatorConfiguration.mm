@interface MUImpressionsCalculatorConfiguration
- (MUImpressionsCalculatorConfiguration)initWithLogger:(id)logger contentScrollView:(id)view containerViewProvider:(id)provider;
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
    superview = objc_loadWeakRetained(&self->_cachedContainerView);
  }

  else
  {
    v5 = (*(self->_containerViewProvider + 2))();
    if (v5)
    {
      v6 = objc_storeWeak(&self->_cachedContainerView, v5);
      superview = v5;
    }

    else
    {
      v7 = objc_loadWeakRetained(&self->_scrollView);
      superview = [v7 superview];
    }
  }

  return superview;
}

- (MUImpressionsCalculatorConfiguration)initWithLogger:(id)logger contentScrollView:(id)view containerViewProvider:(id)provider
{
  loggerCopy = logger;
  viewCopy = view;
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = MUImpressionsCalculatorConfiguration;
  v12 = [(MUImpressionsCalculatorConfiguration *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_logger, logger);
    objc_storeWeak(&v13->_scrollView, viewCopy);
    v14 = _Block_copy(providerCopy);
    containerViewProvider = v13->_containerViewProvider;
    v13->_containerViewProvider = v14;
  }

  return v13;
}

@end