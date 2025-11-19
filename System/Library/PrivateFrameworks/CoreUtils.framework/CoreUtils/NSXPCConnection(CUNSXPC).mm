@interface NSXPCConnection(CUNSXPC)
- (id)cuValueForEntitlementNoCache:()CUNSXPC;
@end

@implementation NSXPCConnection(CUNSXPC)

- (id)cuValueForEntitlementNoCache:()CUNSXPC
{
  v5 = a3;
  v6 = [a3 UTF8String];
  if (v6)
  {
    [a1 auditToken];
    v7 = xpc_copy_entitlement_for_token();
    if (v7)
    {
      v6 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end