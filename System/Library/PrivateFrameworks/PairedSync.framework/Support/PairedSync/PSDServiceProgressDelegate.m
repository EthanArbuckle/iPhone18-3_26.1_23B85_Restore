@interface PSDServiceProgressDelegate
- (PSDActivity)service;
- (void)activityDidCompleteSending;
- (void)activityDidUpdateProgress:(float)a3;
@end

@implementation PSDServiceProgressDelegate

- (void)activityDidCompleteSending
{
  v2 = [(PSDServiceProgressDelegate *)self service];
  [v2 progressDelegateDidCompleteSending];
}

- (void)activityDidUpdateProgress:(float)a3
{
  v5 = [(PSDServiceProgressDelegate *)self service];
  *&v4 = a3;
  [v5 progressDelegateDidUpdateProgress:v4];
}

- (PSDActivity)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

@end