@interface HLPURLSessionACAuthContext
+ (id)defaultContext;
- (HLPURLSessionACAuthContext)initWithAppIdentifier:(id)identifier enviromentIdentifier:(id)enviromentIdentifier interactivity:(id)interactivity;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HLPURLSessionACAuthContext

+ (id)defaultContext
{
  if (defaultContext_onceToken != -1)
  {
    +[HLPURLSessionACAuthContext defaultContext];
  }

  v3 = defaultContext_context;

  return v3;
}

uint64_t __44__HLPURLSessionACAuthContext_defaultContext__block_invoke()
{
  v0 = [[HLPURLSessionACAuthContext alloc] initWithAppIdentifier:@"170617" enviromentIdentifier:@"APPLECONNECT.APPLE.COM" interactivity:@"0"];
  v1 = defaultContext_context;
  defaultContext_context = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (HLPURLSessionACAuthContext)initWithAppIdentifier:(id)identifier enviromentIdentifier:(id)enviromentIdentifier interactivity:(id)interactivity
{
  identifierCopy = identifier;
  enviromentIdentifierCopy = enviromentIdentifier;
  interactivityCopy = interactivity;
  v15.receiver = self;
  v15.super_class = HLPURLSessionACAuthContext;
  v12 = [(HLPURLSessionACAuthContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_appIdentifier, identifier);
    objc_storeStrong(&v13->_enviromentIdentifier, enviromentIdentifier);
    objc_storeStrong(&v13->_interactivityMode, interactivity);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  appIdentifier = [(HLPURLSessionACAuthContext *)self appIdentifier];
  [v4 setAppIdentifier:appIdentifier];

  enviromentIdentifier = [(HLPURLSessionACAuthContext *)self enviromentIdentifier];
  [v4 setEnviromentIdentifier:enviromentIdentifier];

  interactivityMode = [(HLPURLSessionACAuthContext *)self interactivityMode];
  [v4 setInteractivityMode:interactivityMode];

  clientIdentifier = [(HLPURLSessionACAuthContext *)self clientIdentifier];
  [v4 setClientIdentifier:clientIdentifier];

  return v4;
}

@end