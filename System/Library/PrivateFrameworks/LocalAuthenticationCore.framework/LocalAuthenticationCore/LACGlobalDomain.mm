@interface LACGlobalDomain
+ (BOOL)releaseUIDelegate;
+ (NSData)companionAuthentication;
+ (id)sharedInstance;
+ (void)setCompanionAuthentication:(id)authentication;
@end

@implementation LACGlobalDomain

+ (BOOL)releaseUIDelegate
{
  sharedInstance = [objc_opt_self() sharedInstance];
  valueForFlagReleaseUIDelegate = [sharedInstance valueForFlagReleaseUIDelegate];

  return valueForFlagReleaseUIDelegate;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_10 != -1)
  {
    +[LACGlobalDomain sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_10;

  return v3;
}

uint64_t __33__LACGlobalDomain_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_10 = objc_alloc_init(LACGlobalDomain);

  return MEMORY[0x1EEE66BB8]();
}

+ (NSData)companionAuthentication
{
  sharedInstance = [objc_opt_self() sharedInstance];
  isa = [sharedInstance valueForFlagCompanionSessionAuthentication];

  if (isa)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v4, v6);
  }

  return isa;
}

+ (void)setCompanionAuthentication:(id)authentication
{
  if (authentication)
  {
    authenticationCopy = authentication;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  specialized static LACGlobalDomain.companionAuthentication.setter(v4, v6);
}

@end