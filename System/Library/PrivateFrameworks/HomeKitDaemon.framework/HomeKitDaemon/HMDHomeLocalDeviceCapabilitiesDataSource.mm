@interface HMDHomeLocalDeviceCapabilitiesDataSource
- (BOOL)isResidentCapable;
- (BOOL)supportsHomeInvitation;
@end

@implementation HMDHomeLocalDeviceCapabilitiesDataSource

- (BOOL)supportsHomeInvitation
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  supportsHomeInvitation = [v2 supportsHomeInvitation];

  return supportsHomeInvitation;
}

- (BOOL)isResidentCapable
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  isResidentCapable = [v2 isResidentCapable];

  return isResidentCapable;
}

@end