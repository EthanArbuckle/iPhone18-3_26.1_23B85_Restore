@interface CRKCurrentPlatformProfileConfigurationSource
- (CRKCurrentPlatformProfileConfigurationSource)initWithStudentDaemonProxy:(id)proxy callbackQueue:(id)queue;
- (id)makeSourceForCurrentPlatformWithCallbackQueue:(id)queue;
@end

@implementation CRKCurrentPlatformProfileConfigurationSource

- (CRKCurrentPlatformProfileConfigurationSource)initWithStudentDaemonProxy:(id)proxy callbackQueue:(id)queue
{
  proxyCopy = proxy;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = CRKCurrentPlatformProfileConfigurationSource;
  v9 = [(CRKCurrentPlatformProfileConfigurationSource *)&v16 init];
  if (v9)
  {
    v10 = objc_opt_new();
    makeFeatureFlags = [v10 makeFeatureFlags];
    featureFlags = v9->_featureFlags;
    v9->_featureFlags = makeFeatureFlags;

    v13 = [(CRKCurrentPlatformProfileConfigurationSource *)v9 makeSourceForCurrentPlatformWithCallbackQueue:queueCopy];
    mBaseSource = v9->mBaseSource;
    v9->mBaseSource = v13;

    objc_storeStrong(&v9->_studentDaemonProxy, proxy);
  }

  return v9;
}

- (id)makeSourceForCurrentPlatformWithCallbackQueue:(id)queue
{
  v4 = MEMORY[0x277CCAC38];
  queueCopy = queue;
  processInfo = [v4 processInfo];
  v7 = [processInfo crk_hasEntitlement:@"com.apple.studentd-access" withValue:MEMORY[0x277CBEC38]];

  if (v7)
  {
    studentDaemonProxy = [(CRKCurrentPlatformProfileConfigurationSource *)self studentDaemonProxy];
    v9 = studentDaemonProxy;
    if (studentDaemonProxy)
    {
      v10 = studentDaemonProxy;
    }

    else
    {
      v10 = objc_opt_new();
    }

    v12 = v10;

    v11 = [[CRKStudentdCatalystProfileConfigurationSource alloc] initWithStudentDaemonProxy:v12 callbackQueue:queueCopy];
    queueCopy = v12;
  }

  else
  {
    v11 = [[CRKStudentdXPCProfileConfigurationSource alloc] initWithCallbackQueue:queueCopy];
  }

  return v11;
}

@end