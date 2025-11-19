@interface CRKCurrentPlatformInstructordTransportProvider
- (CRKCurrentPlatformInstructordTransportProvider)initWithStudentDaemonProxy:(id)a3 classroomAppBundleURL:(id)a4 instructordBundleIdentifier:(id)a5;
- (id)makeProviderForCurrentPlatformWithStudentDaemonProxy:(id)a3;
@end

@implementation CRKCurrentPlatformInstructordTransportProvider

- (CRKCurrentPlatformInstructordTransportProvider)initWithStudentDaemonProxy:(id)a3 classroomAppBundleURL:(id)a4 instructordBundleIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = CRKCurrentPlatformInstructordTransportProvider;
  v11 = [(CRKCurrentPlatformInstructordTransportProvider *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_classroomAppBundleURL, a4);
    v13 = [v10 copy];
    instructordBundleIdentifier = v12->_instructordBundleIdentifier;
    v12->_instructordBundleIdentifier = v13;

    v15 = [(CRKCurrentPlatformInstructordTransportProvider *)v12 makeProviderForCurrentPlatformWithStudentDaemonProxy:v8];
    mBaseProvider = v12->mBaseProvider;
    v12->mBaseProvider = v15;
  }

  return v12;
}

- (id)makeProviderForCurrentPlatformWithStudentDaemonProxy:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAC38] processInfo];
  v6 = [v5 crk_hasEntitlement:@"com.apple.studentd-access" withValue:MEMORY[0x277CBEC38]];

  if (v6)
  {
    v7 = [CRKStudentdBackedInstructordTransportProvider alloc];
    v8 = [(CRKCurrentPlatformInstructordTransportProvider *)self classroomAppBundleURL];
    v9 = [(CRKCurrentPlatformInstructordTransportProvider *)self instructordBundleIdentifier];
    v10 = [(CRKStudentdBackedInstructordTransportProvider *)v7 initWithStudentDaemonProxy:v4 classroomAppBundleURL:v8 instructordBundleIdentifier:v9];
  }

  else
  {
    v10 = objc_opt_new();
  }

  return v10;
}

@end