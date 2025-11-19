@interface HMDLibXPCInterface
- (id)copyXPCEntitlementValueForConnection:(id)a3 entitlement:(id)a4;
- (id)createXPCMachServiceWithName:(id)a3 queue:(id)a4 flags:(unint64_t)a5;
@end

@implementation HMDLibXPCInterface

- (id)copyXPCEntitlementValueForConnection:(id)a3 entitlement:(id)a4
{
  v6 = a4;
  v7 = a3;
  [a4 UTF8String];
  v8 = xpc_connection_copy_entitlement_value();

  return v8;
}

- (id)createXPCMachServiceWithName:(id)a3 queue:(id)a4 flags:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  mach_service = xpc_connection_create_mach_service([a3 UTF8String], v9, a5);

  return mach_service;
}

@end