@interface MRAVRoutingDiscoverySession
@end

@implementation MRAVRoutingDiscoverySession

uint64_t __106__MRAVRoutingDiscoverySession_MPAVOutputDeviceRoutingDataSource___replaceOutputDevices_withOutputDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uid];
  v4 = [*(a1 + 32) uid];
  v5 = [v3 isEqual:v4];

  return v5;
}

@end