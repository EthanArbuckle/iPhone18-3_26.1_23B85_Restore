@interface HMDRegistry
+ (id)installGlobalRegistryForDaemon;
+ (id)shared;
- (HMDAccountRegistry)accountRegistry;
- (HMDAppleAccountManager)appleAccountManager;
- (HMDIDSServiceManager)idsServiceManager;
- (HMDRegistry)init;
- (HMDRemoteAccountManager)remoteAccountManager;
@end

@implementation HMDRegistry

+ (id)shared
{
  if (qword_281530EB0 != -1)
  {
    swift_once();
  }

  v3 = qword_281530EB8;

  return v3;
}

- (HMDRegistry)init
{
  v3.receiver = self;
  v3.super_class = HMDRegistry;
  return [(HMDRegistry *)&v3 init];
}

- (HMDAccountRegistry)accountRegistry
{
  v2 = sub_253236AF8();

  return v2;
}

- (HMDAppleAccountManager)appleAccountManager
{
  v2 = sub_253236C18();

  return v2;
}

- (HMDIDSServiceManager)idsServiceManager
{
  v2 = sub_253236D38();

  return v2;
}

- (HMDRemoteAccountManager)remoteAccountManager
{
  v2 = sub_253236E58();

  return v2;
}

+ (id)installGlobalRegistryForDaemon
{
  if (qword_281531030 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281531038);
  if (!off_281531040)
  {
    off_281531040 = sub_25322D2BC(0x65446E6F6D656144, 0xED0000746C756166);
  }

  os_unfair_lock_unlock(&dword_281531038);
  shared = [objc_opt_self() shared];

  return shared;
}

@end