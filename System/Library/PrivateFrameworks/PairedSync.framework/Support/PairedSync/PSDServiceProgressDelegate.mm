@interface PSDServiceProgressDelegate
- (PSDActivity)service;
- (void)activityDidCompleteSending;
- (void)activityDidUpdateProgress:(float)progress;
@end

@implementation PSDServiceProgressDelegate

- (void)activityDidCompleteSending
{
  service = [(PSDServiceProgressDelegate *)self service];
  [service progressDelegateDidCompleteSending];
}

- (void)activityDidUpdateProgress:(float)progress
{
  service = [(PSDServiceProgressDelegate *)self service];
  *&v4 = progress;
  [service progressDelegateDidUpdateProgress:v4];
}

- (PSDActivity)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

@end