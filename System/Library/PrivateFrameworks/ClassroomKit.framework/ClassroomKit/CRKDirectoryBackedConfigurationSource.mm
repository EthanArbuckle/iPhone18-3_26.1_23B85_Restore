@interface CRKDirectoryBackedConfigurationSource
- (BOOL)isDirectoryEmpty:(id)empty;
- (CRKDirectoryBackedConfigurationSource)init;
- (CRKDirectoryBackedConfigurationSource)initWithDirectoryURL:(id)l fileName:(id)name callbackQueue:(id)queue;
- (void)fileBackedConfigurationSource:(id)source didDeleteConfigurationAtURL:(id)l inDirectory:(id)directory;
- (void)setConfiguration:(id)configuration completion:(id)completion;
@end

@implementation CRKDirectoryBackedConfigurationSource

- (CRKDirectoryBackedConfigurationSource)init
{
  crk_uniqueTemporaryFileURL = [MEMORY[0x277CBEBC0] crk_uniqueTemporaryFileURL];
  uRLByDeletingLastPathComponent = [crk_uniqueTemporaryFileURL URLByDeletingLastPathComponent];
  lastPathComponent = [crk_uniqueTemporaryFileURL lastPathComponent];
  v6 = [(CRKDirectoryBackedConfigurationSource *)self initWithDirectoryURL:uRLByDeletingLastPathComponent fileName:lastPathComponent];

  return v6;
}

- (CRKDirectoryBackedConfigurationSource)initWithDirectoryURL:(id)l fileName:(id)name callbackQueue:(id)queue
{
  lCopy = l;
  nameCopy = name;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = CRKDirectoryBackedConfigurationSource;
  v12 = [(CRKDirectoryBackedConfigurationSource *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mDirectoryURL, l);
    v14 = [(NSURL *)v13->mDirectoryURL URLByAppendingPathComponent:nameCopy];
    v15 = [[CRKFileBackedConfigurationSource alloc] initWithFileURL:v14 callbackQueue:queueCopy];
    mFileBackedSource = v13->mFileBackedSource;
    v13->mFileBackedSource = v15;

    [(CRKFileBackedConfigurationSource *)v13->mFileBackedSource setDelegate:v13];
  }

  return v13;
}

- (void)setConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  mFileBackedSource = self->mFileBackedSource;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__CRKDirectoryBackedConfigurationSource_setConfiguration_completion___block_invoke;
  v10[3] = &unk_278DC19D0;
  v10[4] = self;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = mFileBackedSource;
  [(CRKFileBackedConfigurationSource *)v9 setConfiguration:configuration completion:v10];
}

void __69__CRKDirectoryBackedConfigurationSource_setConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;

  (*(*(a1 + 40) + 16))();
}

- (void)fileBackedConfigurationSource:(id)source didDeleteConfigurationAtURL:(id)l inDirectory:(id)directory
{
  directoryCopy = directory;
  if ([(CRKDirectoryBackedConfigurationSource *)self isDirectoryEmpty:directoryCopy])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v11 = 0;
    v8 = [defaultManager crk_safeRemoveItemAtURL:directoryCopy error:&v11];
    v9 = v11;

    if ((v8 & 1) == 0)
    {
      v10 = _CRKLogGeneral_18();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CRKDirectoryBackedConfigurationSource fileBackedConfigurationSource:v9 didDeleteConfigurationAtURL:? inDirectory:?];
      }
    }
  }
}

- (BOOL)isDirectoryEmpty:(id)empty
{
  v3 = MEMORY[0x277CCAA00];
  emptyCopy = empty;
  defaultManager = [v3 defaultManager];
  v11 = 0;
  v6 = [defaultManager contentsOfDirectoryAtURL:emptyCopy includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:&v11];

  v7 = v11;
  if (!v6)
  {
    v8 = _CRKLogGeneral_18();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CRKDirectoryBackedConfigurationSource isDirectoryEmpty:v7];
    }
  }

  v9 = [v6 count] == 0;

  return v9;
}

- (void)fileBackedConfigurationSource:(void *)a1 didDeleteConfigurationAtURL:inDirectory:.cold.1(void *a1)
{
  v1 = [a1 verboseDescription];
  OUTLINED_FUNCTION_0_3(&dword_243550000, v2, v3, "Failed to delete directory after configuration was removed: %{public}@", v4, v5, v6, v7, 2u);
}

- (void)isDirectoryEmpty:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 verboseDescription];
  OUTLINED_FUNCTION_0_3(&dword_243550000, v2, v3, "Failed to check if directory is empty: %{public}@", v4, v5, v6, v7, 2u);
}

@end