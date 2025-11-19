@interface HMDUserDataControllerTimerCreator
- (id)createExponentialBackoffTimerForZoneFetch;
@end

@implementation HMDUserDataControllerTimerCreator

- (id)createExponentialBackoffTimerForZoneFetch
{
  v2 = [objc_alloc(MEMORY[0x277D0F7B0]) initWithMinimumTimeInterval:3 maximumTimeInterval:0 exponentialFactor:1.0 options:86400.0];

  return v2;
}

@end