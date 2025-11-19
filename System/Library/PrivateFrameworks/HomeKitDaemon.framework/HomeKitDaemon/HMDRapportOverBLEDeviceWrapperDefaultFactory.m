@interface HMDRapportOverBLEDeviceWrapperDefaultFactory
- (id)makeWrapperWithClient:(id)a3;
@end

@implementation HMDRapportOverBLEDeviceWrapperDefaultFactory

- (id)makeWrapperWithClient:(id)a3
{
  v3 = a3;
  v4 = [[HMDRapportDeviceClientWrapper alloc] initWithClient:v3];

  return v4;
}

@end