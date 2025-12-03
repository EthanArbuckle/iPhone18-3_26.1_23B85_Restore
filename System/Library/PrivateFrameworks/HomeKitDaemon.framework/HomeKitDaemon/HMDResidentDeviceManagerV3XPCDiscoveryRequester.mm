@interface HMDResidentDeviceManagerV3XPCDiscoveryRequester
- (void)residentDeviceManager:(id)manager didCompleteDiscoveryWithPrimaryResidentDevice:(id)device error:(id)error;
@end

@implementation HMDResidentDeviceManagerV3XPCDiscoveryRequester

- (void)residentDeviceManager:(id)manager didCompleteDiscoveryWithPrimaryResidentDevice:(id)device error:(id)error
{
  deviceCopy = device;
  errorCopy = error;
  block = [(HMDResidentDeviceManagerV3XPCDiscoveryRequester *)self block];
  v9 = block;
  if (block)
  {
    (*(block + 16))(block, deviceCopy, errorCopy);
  }
}

@end