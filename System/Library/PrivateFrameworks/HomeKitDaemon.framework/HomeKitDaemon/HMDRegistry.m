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
  if (qword_281401C48 != -1)
  {
    swift_once();
  }

  v3 = qword_281401C50;

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
  v2 = sub_229657BA8();

  return v2;
}

- (HMDAppleAccountManager)appleAccountManager
{
  v2 = sub_229657CC8();

  return v2;
}

- (HMDIDSServiceManager)idsServiceManager
{
  v2 = sub_229657DE8();

  return v2;
}

- (HMDRemoteAccountManager)remoteAccountManager
{
  v2 = sub_229657F08();

  return v2;
}

+ (id)installGlobalRegistryForDaemon
{
  if (qword_281401E88 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281401E90);
  if (!off_281401E98)
  {
    off_281401E98 = sub_22989D2C4(0x65446E6F6D656144, 0xED0000746C756166);
  }

  os_unfair_lock_unlock(&dword_281401E90);
  v2 = [objc_opt_self() shared];

  return v2;
}

@end