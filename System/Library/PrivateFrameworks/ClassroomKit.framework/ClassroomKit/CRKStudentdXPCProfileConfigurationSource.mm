@interface CRKStudentdXPCProfileConfigurationSource
- (BOOL)isStudentdInstalled;
- (BOOL)shouldUsePlaceholderFile;
- (CRKStudentdXPCProfileConfigurationSource)initWithCallbackQueue:(id)queue;
- (void)fetchConfiguration:(id)configuration;
- (void)setConfiguration:(id)configuration completion:(id)completion;
@end

@implementation CRKStudentdXPCProfileConfigurationSource

- (CRKStudentdXPCProfileConfigurationSource)initWithCallbackQueue:(id)queue
{
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = CRKStudentdXPCProfileConfigurationSource;
  v6 = [(CRKStudentdXPCProfileConfigurationSource *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mCallbackQueue, queue);
    if ([(CRKStudentdXPCProfileConfigurationSource *)v7 shouldUsePlaceholderFile])
    {
      crk_iOSPlaceholderProfileURL = [MEMORY[0x277CBEBC0] crk_iOSPlaceholderProfileURL];
      uRLByDeletingLastPathComponent = [crk_iOSPlaceholderProfileURL URLByDeletingLastPathComponent];
      lastPathComponent = [crk_iOSPlaceholderProfileURL lastPathComponent];
      v11 = [[CRKDirectoryBackedConfigurationSource alloc] initWithDirectoryURL:uRLByDeletingLastPathComponent fileName:lastPathComponent callbackQueue:queueCopy];
      mPlaceholderFileConfigurationSource = v7->mPlaceholderFileConfigurationSource;
      v7->mPlaceholderFileConfigurationSource = v11;
    }

    v13 = [[CRKNonCatalystStudentDaemonProxy alloc] initWithCallbackQueue:queueCopy];
    studentDaemonProxy = v7->_studentDaemonProxy;
    v7->_studentDaemonProxy = v13;
  }

  return v7;
}

- (BOOL)isStudentdInstalled
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  crk_isStudentdInstalled = [defaultManager crk_isStudentdInstalled];

  return crk_isStudentdInstalled;
}

- (BOOL)shouldUsePlaceholderFile
{
  v3 = CRKIsiOS();
  if (v3)
  {
    LOBYTE(v3) = ![(CRKStudentdXPCProfileConfigurationSource *)self isStudentdInstalled];
  }

  return v3;
}

- (void)fetchConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([(CRKStudentdXPCProfileConfigurationSource *)self shouldUsePlaceholderFile])
  {
    [(CRKConfigurationSource *)self->mPlaceholderFileConfigurationSource fetchConfiguration:configurationCopy];
  }

  else
  {
    studentDaemonProxy = [(CRKStudentdXPCProfileConfigurationSource *)self studentDaemonProxy];
    [studentDaemonProxy fetchConfiguration:configurationCopy];
  }
}

- (void)setConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  if ([(CRKStudentdXPCProfileConfigurationSource *)self shouldUsePlaceholderFile])
  {
    if (configurationCopy)
    {
      v7 = MEMORY[0x277CBEC10];
    }

    else
    {
      v7 = 0;
    }

    [(CRKConfigurationSource *)self->mPlaceholderFileConfigurationSource setConfiguration:v7 completion:completionCopy];
  }

  else
  {
    studentDaemonProxy = [(CRKStudentdXPCProfileConfigurationSource *)self studentDaemonProxy];
    [studentDaemonProxy setConfiguration:configurationCopy completion:completionCopy];
  }
}

@end