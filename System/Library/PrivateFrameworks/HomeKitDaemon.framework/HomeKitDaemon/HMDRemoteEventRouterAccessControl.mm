@interface HMDRemoteEventRouterAccessControl
+ (id)allowAllUsersAndDevicesAccessControl;
+ (id)allowSharedAdminsAndAllDevicesAccessControl;
- (HMDRemoteEventRouterAccessControl)initWithAllowedUserTypes:(unint64_t)types deviceCategories:(unint64_t)categories;
@end

@implementation HMDRemoteEventRouterAccessControl

- (HMDRemoteEventRouterAccessControl)initWithAllowedUserTypes:(unint64_t)types deviceCategories:(unint64_t)categories
{
  v7.receiver = self;
  v7.super_class = HMDRemoteEventRouterAccessControl;
  result = [(HMDRemoteEventRouterAccessControl *)&v7 init];
  if (result)
  {
    result->_allowedUserTypes = types;
    result->_allowedDeviceTypes = categories;
  }

  return result;
}

+ (id)allowSharedAdminsAndAllDevicesAccessControl
{
  if (allowSharedAdminsAndAllDevicesAccessControl_onceToken != -1)
  {
    dispatch_once(&allowSharedAdminsAndAllDevicesAccessControl_onceToken, &__block_literal_global_2_181543);
  }

  v3 = allowSharedAdminsAndAllDevicesAccessControl_accessControlPolicy;

  return v3;
}

void __80__HMDRemoteEventRouterAccessControl_allowSharedAdminsAndAllDevicesAccessControl__block_invoke()
{
  v0 = [[HMDRemoteEventRouterAccessControl alloc] initWithAllowedUserTypes:1 deviceCategories:3];
  v1 = allowSharedAdminsAndAllDevicesAccessControl_accessControlPolicy;
  allowSharedAdminsAndAllDevicesAccessControl_accessControlPolicy = v0;
}

+ (id)allowAllUsersAndDevicesAccessControl
{
  if (allowAllUsersAndDevicesAccessControl_onceToken != -1)
  {
    dispatch_once(&allowAllUsersAndDevicesAccessControl_onceToken, &__block_literal_global_181546);
  }

  v3 = allowAllUsersAndDevicesAccessControl_accessControlPolicy;

  return v3;
}

void __73__HMDRemoteEventRouterAccessControl_allowAllUsersAndDevicesAccessControl__block_invoke()
{
  v0 = [[HMDRemoteEventRouterAccessControl alloc] initWithAllowedUserTypes:7 deviceCategories:3];
  v1 = allowAllUsersAndDevicesAccessControl_accessControlPolicy;
  allowAllUsersAndDevicesAccessControl_accessControlPolicy = v0;
}

@end