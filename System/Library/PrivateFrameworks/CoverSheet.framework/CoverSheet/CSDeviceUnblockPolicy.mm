@interface CSDeviceUnblockPolicy
- (BOOL)canUnblockDevice;
- (BOOL)canUnblockDeviceUsingErase;
- (CSDeviceUnblockPolicy)initWithEnvironment:(id)environment;
@end

@implementation CSDeviceUnblockPolicy

- (CSDeviceUnblockPolicy)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v9.receiver = self;
  v9.super_class = CSDeviceUnblockPolicy;
  v6 = [(CSDeviceUnblockPolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_env, environment);
  }

  return v7;
}

- (BOOL)canUnblockDeviceUsingErase
{
  if (![(CSDeviceUnblockPolicyEnvironment *)self->_env isUserRequestedEraseEnabled]|| ![(CSDeviceUnblockPolicyEnvironment *)self->_env isUserFindMyAccountPresent])
  {
    return 0;
  }

  env = self->_env;

  return [(CSDeviceUnblockPolicyEnvironment *)env isDeviceInternetConnectionActive];
}

- (BOOL)canUnblockDevice
{
  if ([(CSDeviceUnblockPolicy *)self canUnblockDeviceUsingErase])
  {
    return 1;
  }

  return [(CSDeviceUnblockPolicy *)self canUnblockDeviceUsingRecovery];
}

@end