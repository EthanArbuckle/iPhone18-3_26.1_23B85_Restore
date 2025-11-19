@interface HMDResidentDeviceManagerXPCDiscoveryRequester
- (void)residentDeviceManager:(id)a3 didCompleteDiscoveryWithPrimaryResidentDevice:(id)a4 error:(id)a5;
@end

@implementation HMDResidentDeviceManagerXPCDiscoveryRequester

- (void)residentDeviceManager:(id)a3 didCompleteDiscoveryWithPrimaryResidentDevice:(id)a4 error:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [(HMDResidentDeviceManagerXPCDiscoveryRequester *)self block];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v10, v7);
  }
}

@end