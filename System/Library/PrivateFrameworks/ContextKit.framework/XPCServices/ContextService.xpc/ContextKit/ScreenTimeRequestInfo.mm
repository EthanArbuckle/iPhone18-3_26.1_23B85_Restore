@interface ScreenTimeRequestInfo
- (NSDate)latestRequest;
@end

@implementation ScreenTimeRequestInfo

- (NSDate)latestRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_latestRequest);

  return WeakRetained;
}

@end