@interface CRKStudentdXPCProfileConfigurationSource
- (BOOL)isStudentdInstalled;
- (BOOL)shouldUsePlaceholderFile;
- (CRKStudentdXPCProfileConfigurationSource)initWithCallbackQueue:(id)a3;
- (void)fetchConfiguration:(id)a3;
- (void)setConfiguration:(id)a3 completion:(id)a4;
@end

@implementation CRKStudentdXPCProfileConfigurationSource

- (CRKStudentdXPCProfileConfigurationSource)initWithCallbackQueue:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = CRKStudentdXPCProfileConfigurationSource;
  v6 = [(CRKStudentdXPCProfileConfigurationSource *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mCallbackQueue, a3);
    if ([(CRKStudentdXPCProfileConfigurationSource *)v7 shouldUsePlaceholderFile])
    {
      v8 = [MEMORY[0x277CBEBC0] crk_iOSPlaceholderProfileURL];
      v9 = [v8 URLByDeletingLastPathComponent];
      v10 = [v8 lastPathComponent];
      v11 = [[CRKDirectoryBackedConfigurationSource alloc] initWithDirectoryURL:v9 fileName:v10 callbackQueue:v5];
      mPlaceholderFileConfigurationSource = v7->mPlaceholderFileConfigurationSource;
      v7->mPlaceholderFileConfigurationSource = v11;
    }

    v13 = [[CRKNonCatalystStudentDaemonProxy alloc] initWithCallbackQueue:v5];
    studentDaemonProxy = v7->_studentDaemonProxy;
    v7->_studentDaemonProxy = v13;
  }

  return v7;
}

- (BOOL)isStudentdInstalled
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 crk_isStudentdInstalled];

  return v3;
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

- (void)fetchConfiguration:(id)a3
{
  v5 = a3;
  if ([(CRKStudentdXPCProfileConfigurationSource *)self shouldUsePlaceholderFile])
  {
    [(CRKConfigurationSource *)self->mPlaceholderFileConfigurationSource fetchConfiguration:v5];
  }

  else
  {
    v4 = [(CRKStudentdXPCProfileConfigurationSource *)self studentDaemonProxy];
    [v4 fetchConfiguration:v5];
  }
}

- (void)setConfiguration:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(CRKStudentdXPCProfileConfigurationSource *)self shouldUsePlaceholderFile])
  {
    if (v9)
    {
      v7 = MEMORY[0x277CBEC10];
    }

    else
    {
      v7 = 0;
    }

    [(CRKConfigurationSource *)self->mPlaceholderFileConfigurationSource setConfiguration:v7 completion:v6];
  }

  else
  {
    v8 = [(CRKStudentdXPCProfileConfigurationSource *)self studentDaemonProxy];
    [v8 setConfiguration:v9 completion:v6];
  }
}

@end