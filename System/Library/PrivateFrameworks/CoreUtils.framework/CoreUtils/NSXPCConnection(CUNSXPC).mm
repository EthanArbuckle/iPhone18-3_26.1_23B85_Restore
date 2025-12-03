@interface NSXPCConnection(CUNSXPC)
- (id)cuValueForEntitlementNoCache:()CUNSXPC;
@end

@implementation NSXPCConnection(CUNSXPC)

- (id)cuValueForEntitlementNoCache:()CUNSXPC
{
  v5 = a3;
  uTF8String = [a3 UTF8String];
  if (uTF8String)
  {
    [self auditToken];
    v7 = xpc_copy_entitlement_for_token();
    if (v7)
    {
      uTF8String = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      uTF8String = 0;
    }
  }

  return uTF8String;
}

@end