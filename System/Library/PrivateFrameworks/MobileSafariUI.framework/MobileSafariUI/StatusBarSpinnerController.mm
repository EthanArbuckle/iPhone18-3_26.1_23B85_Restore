@interface StatusBarSpinnerController
- (StatusBarSpinnerController)init;
- (void)_updateProgressIndicator;
- (void)didFailLoadingResource:(id)resource;
- (void)didStartLoadingResource;
- (void)didStopLoadingResource;
- (void)updateProgressWithResource:(id)resource;
@end

@implementation StatusBarSpinnerController

- (StatusBarSpinnerController)init
{
  v6.receiver = self;
  v6.super_class = StatusBarSpinnerController;
  v2 = [(StatusBarSpinnerController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_enabled = 1;
    v4 = v2;
  }

  return v3;
}

- (void)didStartLoadingResource
{
  currentlyLoadingResourcesCount = self->_currentlyLoadingResourcesCount;
  self->_currentlyLoadingResourcesCount = currentlyLoadingResourcesCount + 1;
  if (!currentlyLoadingResourcesCount && self->_enabled)
  {
    [(StatusBarSpinnerController *)self _setResourcesLoading:1];
  }
}

- (void)didStopLoadingResource
{
  v2 = self->_currentlyLoadingResourcesCount - 1;
  self->_currentlyLoadingResourcesCount = v2;
  if (!v2 && self->_enabled)
  {
    [(StatusBarSpinnerController *)self _setResourcesLoading:0];
  }
}

- (void)updateProgressWithResource:(id)resource
{
  resourceCopy = resource;
  v5 = resourceCopy;
  if (self->_enabled)
  {
    obj = resourceCopy;
    isActive = [resourceCopy isActive];
    v5 = obj;
    if (isActive)
    {
      [obj estimatedProgress];
      v8 = v7;
      v10 = v8 < 1.0 && v8 > 0.0;
      WeakRetained = objc_loadWeakRetained(&self->_resourceWhoseProgressIsShown);
      if (WeakRetained == obj && ([obj isContentReady] & 1) == 0)
      {

        if (!v10)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      *&v12 = v8;
      [(StatusBarSpinnerController *)self _setProgress:v12];
LABEL_13:
      objc_storeWeak(&self->_resourceWhoseProgressIsShown, obj);
      v5 = obj;
    }
  }
}

- (void)didFailLoadingResource:(id)resource
{
  if ([resource isActive])
  {

    [(StatusBarSpinnerController *)self _setResourcesLoading:0];
  }
}

- (void)_updateProgressIndicator
{
  progress = self->_progress;
  v3 = progress > 0.0 && progress < 1.0;
  if (v3 || self->_resourcesLoading)
  {
    if (!self->_showingProgressIndicator)
    {
      self->_showingProgressIndicator = 1;
      +[DelayedSpinner showWithDelay];
    }
  }

  else if (self->_showingProgressIndicator)
  {
    self->_showingProgressIndicator = 0;
    +[DelayedSpinner hide];
  }
}

@end