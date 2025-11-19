@interface HMDRemoteEventRouterAccessControl
+ (id)allowAllUsersAndDevicesAccessControl;
+ (id)allowSharedAdminsAndAllDevicesAccessControl;
- (HMDRemoteEventRouterAccessControl)initWithAllowedUserTypes:(unint64_t)a3 deviceCategories:(unint64_t)a4;
@end

@implementation HMDRemoteEventRouterAccessControl

- (HMDRemoteEventRouterAccessControl)initWithAllowedUserTypes:(unint64_t)a3 deviceCategories:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = HMDRemoteEventRouterAccessControl;
  result = [(HMDRemoteEventRouterAccessControl *)&v7 init];
  if (result)
  {
    result->_allowedUserTypes = a3;
    result->_allowedDeviceTypes = a4;
  }

  return result;
}

+ (id)allowSharedAdminsAndAllDevicesAccessControl
{
  if (allowSharedAdminsAndAllDevicesAccessControl_onceToken != -1)
  {
    dispatch_once(&allowSharedAdminsAndAllDevicesAccessControl_onceToken, &__block_literal_global_2_119542);
  }

  v3 = allowSharedAdminsAndAllDevicesAccessControl_accessControlPolicy;

  return v3;
}

uint64_t __80__HMDRemoteEventRouterAccessControl_allowSharedAdminsAndAllDevicesAccessControl__block_invoke()
{
  v0 = [[HMDRemoteEventRouterAccessControl alloc] initWithAllowedUserTypes:1 deviceCategories:3];
  v1 = allowSharedAdminsAndAllDevicesAccessControl_accessControlPolicy;
  allowSharedAdminsAndAllDevicesAccessControl_accessControlPolicy = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)allowAllUsersAndDevicesAccessControl
{
  if (allowAllUsersAndDevicesAccessControl_onceToken != -1)
  {
    dispatch_once(&allowAllUsersAndDevicesAccessControl_onceToken, &__block_literal_global_119545);
  }

  v3 = allowAllUsersAndDevicesAccessControl_accessControlPolicy;

  return v3;
}

uint64_t __73__HMDRemoteEventRouterAccessControl_allowAllUsersAndDevicesAccessControl__block_invoke()
{
  v0 = [[HMDRemoteEventRouterAccessControl alloc] initWithAllowedUserTypes:7 deviceCategories:3];
  v1 = allowAllUsersAndDevicesAccessControl_accessControlPolicy;
  allowAllUsersAndDevicesAccessControl_accessControlPolicy = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end