@interface HMDResidentDeviceManagerXPCDiscoveryRequester
- (void)residentDeviceManager:(id)manager didCompleteDiscoveryWithPrimaryResidentDevice:(id)device error:(id)error;
@end

@implementation HMDResidentDeviceManagerXPCDiscoveryRequester

- (void)residentDeviceManager:(id)manager didCompleteDiscoveryWithPrimaryResidentDevice:(id)device error:(id)error
{
  deviceCopy = device;
  errorCopy = error;
  block = [(HMDResidentDeviceManagerXPCDiscoveryRequester *)self block];
  v9 = block;
  if (block)
  {
    (*(block + 16))(block, deviceCopy, errorCopy);
  }
}

@end