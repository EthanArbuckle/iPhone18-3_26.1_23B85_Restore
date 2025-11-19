@interface HMDRapportMessagingClientFactory
- (id)newRapportDeviceClientWrapperWithClient:(id)a3;
@end

@implementation HMDRapportMessagingClientFactory

- (id)newRapportDeviceClientWrapperWithClient:(id)a3
{
  v3 = a3;
  v4 = [[HMDRapportDeviceClientWrapper alloc] initWithClient:v3];

  return v4;
}

@end