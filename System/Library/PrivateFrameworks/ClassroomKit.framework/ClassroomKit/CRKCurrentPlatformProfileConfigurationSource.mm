@interface CRKCurrentPlatformProfileConfigurationSource
- (CRKCurrentPlatformProfileConfigurationSource)initWithStudentDaemonProxy:(id)a3 callbackQueue:(id)a4;
- (id)makeSourceForCurrentPlatformWithCallbackQueue:(id)a3;
@end

@implementation CRKCurrentPlatformProfileConfigurationSource

- (CRKCurrentPlatformProfileConfigurationSource)initWithStudentDaemonProxy:(id)a3 callbackQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CRKCurrentPlatformProfileConfigurationSource;
  v9 = [(CRKCurrentPlatformProfileConfigurationSource *)&v16 init];
  if (v9)
  {
    v10 = objc_opt_new();
    v11 = [v10 makeFeatureFlags];
    featureFlags = v9->_featureFlags;
    v9->_featureFlags = v11;

    v13 = [(CRKCurrentPlatformProfileConfigurationSource *)v9 makeSourceForCurrentPlatformWithCallbackQueue:v8];
    mBaseSource = v9->mBaseSource;
    v9->mBaseSource = v13;

    objc_storeStrong(&v9->_studentDaemonProxy, a3);
  }

  return v9;
}

- (id)makeSourceForCurrentPlatformWithCallbackQueue:(id)a3
{
  v4 = MEMORY[0x277CCAC38];
  v5 = a3;
  v6 = [v4 processInfo];
  v7 = [v6 crk_hasEntitlement:@"com.apple.studentd-access" withValue:MEMORY[0x277CBEC38]];

  if (v7)
  {
    v8 = [(CRKCurrentPlatformProfileConfigurationSource *)self studentDaemonProxy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_opt_new();
    }

    v12 = v10;

    v11 = [[CRKStudentdCatalystProfileConfigurationSource alloc] initWithStudentDaemonProxy:v12 callbackQueue:v5];
    v5 = v12;
  }

  else
  {
    v11 = [[CRKStudentdXPCProfileConfigurationSource alloc] initWithCallbackQueue:v5];
  }

  return v11;
}

@end