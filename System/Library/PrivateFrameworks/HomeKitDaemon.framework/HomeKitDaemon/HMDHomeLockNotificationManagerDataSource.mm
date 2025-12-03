@interface HMDHomeLockNotificationManagerDataSource
- (BOOL)isResidentCapable;
@end

@implementation HMDHomeLockNotificationManagerDataSource

- (BOOL)isResidentCapable
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  isResidentCapable = [v2 isResidentCapable];

  return isResidentCapable;
}

@end