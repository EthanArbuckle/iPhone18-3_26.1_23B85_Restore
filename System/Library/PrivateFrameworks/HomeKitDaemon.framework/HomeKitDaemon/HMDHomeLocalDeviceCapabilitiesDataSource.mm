@interface HMDHomeLocalDeviceCapabilitiesDataSource
- (BOOL)isResidentCapable;
- (BOOL)supportsHomeInvitation;
@end

@implementation HMDHomeLocalDeviceCapabilitiesDataSource

- (BOOL)supportsHomeInvitation
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  v3 = [v2 supportsHomeInvitation];

  return v3;
}

- (BOOL)isResidentCapable
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  v3 = [v2 isResidentCapable];

  return v3;
}

@end