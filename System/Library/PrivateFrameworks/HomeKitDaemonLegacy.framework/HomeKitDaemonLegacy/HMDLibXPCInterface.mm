@interface HMDLibXPCInterface
- (id)copyXPCEntitlementValueForConnection:(id)connection entitlement:(id)entitlement;
- (id)createXPCMachServiceWithName:(id)name queue:(id)queue flags:(unint64_t)flags;
@end

@implementation HMDLibXPCInterface

- (id)copyXPCEntitlementValueForConnection:(id)connection entitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  connectionCopy = connection;
  [entitlement UTF8String];
  v8 = xpc_connection_copy_entitlement_value();

  return v8;
}

- (id)createXPCMachServiceWithName:(id)name queue:(id)queue flags:(unint64_t)flags
{
  nameCopy = name;
  queueCopy = queue;
  mach_service = xpc_connection_create_mach_service([name UTF8String], queueCopy, flags);

  return mach_service;
}

@end