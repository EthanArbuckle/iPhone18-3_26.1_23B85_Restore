@interface HMDRapportOverBLEDeviceWrapperDefaultFactory
- (id)makeWrapperWithClient:(id)client;
@end

@implementation HMDRapportOverBLEDeviceWrapperDefaultFactory

- (id)makeWrapperWithClient:(id)client
{
  clientCopy = client;
  v4 = [[HMDRapportDeviceClientWrapper alloc] initWithClient:clientCopy];

  return v4;
}

@end