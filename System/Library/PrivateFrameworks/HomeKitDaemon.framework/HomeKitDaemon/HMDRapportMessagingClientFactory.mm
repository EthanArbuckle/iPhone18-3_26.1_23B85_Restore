@interface HMDRapportMessagingClientFactory
- (id)newRapportDeviceClientWrapperWithClient:(id)client;
@end

@implementation HMDRapportMessagingClientFactory

- (id)newRapportDeviceClientWrapperWithClient:(id)client
{
  clientCopy = client;
  v4 = [[HMDRapportDeviceClientWrapper alloc] initWithClient:clientCopy];

  return v4;
}

@end