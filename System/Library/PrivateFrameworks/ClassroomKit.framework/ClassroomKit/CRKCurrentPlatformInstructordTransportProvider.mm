@interface CRKCurrentPlatformInstructordTransportProvider
- (CRKCurrentPlatformInstructordTransportProvider)initWithStudentDaemonProxy:(id)proxy classroomAppBundleURL:(id)l instructordBundleIdentifier:(id)identifier;
- (id)makeProviderForCurrentPlatformWithStudentDaemonProxy:(id)proxy;
@end

@implementation CRKCurrentPlatformInstructordTransportProvider

- (CRKCurrentPlatformInstructordTransportProvider)initWithStudentDaemonProxy:(id)proxy classroomAppBundleURL:(id)l instructordBundleIdentifier:(id)identifier
{
  proxyCopy = proxy;
  lCopy = l;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = CRKCurrentPlatformInstructordTransportProvider;
  v11 = [(CRKCurrentPlatformInstructordTransportProvider *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_classroomAppBundleURL, l);
    v13 = [identifierCopy copy];
    instructordBundleIdentifier = v12->_instructordBundleIdentifier;
    v12->_instructordBundleIdentifier = v13;

    v15 = [(CRKCurrentPlatformInstructordTransportProvider *)v12 makeProviderForCurrentPlatformWithStudentDaemonProxy:proxyCopy];
    mBaseProvider = v12->mBaseProvider;
    v12->mBaseProvider = v15;
  }

  return v12;
}

- (id)makeProviderForCurrentPlatformWithStudentDaemonProxy:(id)proxy
{
  proxyCopy = proxy;
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v6 = [processInfo crk_hasEntitlement:@"com.apple.studentd-access" withValue:MEMORY[0x277CBEC38]];

  if (v6)
  {
    v7 = [CRKStudentdBackedInstructordTransportProvider alloc];
    classroomAppBundleURL = [(CRKCurrentPlatformInstructordTransportProvider *)self classroomAppBundleURL];
    instructordBundleIdentifier = [(CRKCurrentPlatformInstructordTransportProvider *)self instructordBundleIdentifier];
    v10 = [(CRKStudentdBackedInstructordTransportProvider *)v7 initWithStudentDaemonProxy:proxyCopy classroomAppBundleURL:classroomAppBundleURL instructordBundleIdentifier:instructordBundleIdentifier];
  }

  else
  {
    v10 = objc_opt_new();
  }

  return v10;
}

@end