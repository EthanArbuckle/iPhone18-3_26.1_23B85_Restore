@interface GamePolicyPrivilegedAppXPC
+ (id)GamePolicyPrivilegedAppClientInterface;
+ (id)GamePolicyPrivilegedAppServerInterface;
@end

@implementation GamePolicyPrivilegedAppXPC

+ (id)GamePolicyPrivilegedAppServerInterface
{
  v2 = _s10GamePolicy0aB16PrivilegedAppXPCC0abcD15ServerInterfaceSo14NSXPCInterfaceCyFZ_0();

  return v2;
}

+ (id)GamePolicyPrivilegedAppClientInterface
{
  v2 = _s10GamePolicy0aB16PrivilegedAppXPCC0abcD15ClientInterfaceSo14NSXPCInterfaceCyFZ_0();

  return v2;
}

@end