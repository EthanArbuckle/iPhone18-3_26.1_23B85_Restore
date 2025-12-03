@interface CRKFileBasedKeyedDataStore
+ (id)excludedFromiCloudBackupStoreWithDirectoryURL:(id)l;
- (BOOL)removeAllDataWithError:(id *)error;
- (BOOL)removeDataForKey:(id)key error:(id *)error;
- (BOOL)setData:(id)data forKey:(id)key error:(id *)error;
- (CRKFileBasedKeyedDataStore)init;
- (CRKFileBasedKeyedDataStore)initWithDirectoryURL:(id)l directoryResourceValuesByKey:(id)key;
- (id)URLForKey:(id)key;
- (id)dataForKey:(id)key error:(id *)error;
- (void)updateExistingDirectoryResourceValues;
@end

@implementation CRKFileBasedKeyedDataStore

- (CRKFileBasedKeyedDataStore)init
{
  crk_uniqueTemporaryDirectoryURL = [MEMORY[0x277CBEBC0] crk_uniqueTemporaryDirectoryURL];
  v4 = [(CRKFileBasedKeyedDataStore *)self initWithDirectoryURL:crk_uniqueTemporaryDirectoryURL];

  return v4;
}

+ (id)excludedFromiCloudBackupStoreWithDirectoryURL:(id)l
{
  v10[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [self alloc];
  v9 = *MEMORY[0x277CBE878];
  v10[0] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v5 initWithDirectoryURL:lCopy directoryResourceValuesByKey:v6];

  return v7;
}

- (CRKFileBasedKeyedDataStore)initWithDirectoryURL:(id)l directoryResourceValuesByKey:(id)key
{
  lCopy = l;
  keyCopy = key;
  if (!lCopy)
  {
    [CRKFileBasedKeyedDataStore initWithDirectoryURL:a2 directoryResourceValuesByKey:self];
  }

  v17.receiver = self;
  v17.super_class = CRKFileBasedKeyedDataStore;
  v10 = [(CRKFileBasedKeyedDataStore *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_directoryURL, l);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    fileManager = v11->_fileManager;
    v11->_fileManager = defaultManager;

    v14 = [keyCopy copy];
    directoryResourceValuesByKey = v11->_directoryResourceValuesByKey;
    v11->_directoryResourceValuesByKey = v14;

    [(CRKFileBasedKeyedDataStore *)v11 updateExistingDirectoryResourceValues];
  }

  return v11;
}

- (BOOL)setData:(id)data forKey:(id)key error:(id *)error
{
  dataCopy = data;
  keyCopy = key;
  if (!dataCopy)
  {
    v15 = [(CRKFileBasedKeyedDataStore *)self removeDataForKey:keyCopy error:error];
    goto LABEL_9;
  }

  fileManager = [(CRKFileBasedKeyedDataStore *)self fileManager];
  directoryURL = [(CRKFileBasedKeyedDataStore *)self directoryURL];
  path = [directoryURL path];
  v13 = [fileManager fileExistsAtPath:path];

  if ((v13 & 1) == 0)
  {
    fileManager2 = [(CRKFileBasedKeyedDataStore *)self fileManager];
    directoryURL2 = [(CRKFileBasedKeyedDataStore *)self directoryURL];
    v18 = [fileManager2 createDirectoryAtURL:directoryURL2 withIntermediateDirectories:1 attributes:0 error:error];

    if (!v18)
    {
      goto LABEL_8;
    }

    directoryResourceValuesByKey = [(CRKFileBasedKeyedDataStore *)self directoryResourceValuesByKey];
    if (![directoryResourceValuesByKey count])
    {

      goto LABEL_3;
    }

    directoryURL3 = [(CRKFileBasedKeyedDataStore *)self directoryURL];
    directoryResourceValuesByKey2 = [(CRKFileBasedKeyedDataStore *)self directoryResourceValuesByKey];
    v22 = [directoryURL3 setResourceValues:directoryResourceValuesByKey2 error:error];

    if (!v22)
    {
LABEL_8:
      v15 = 0;
      goto LABEL_9;
    }
  }

LABEL_3:
  v14 = [(CRKFileBasedKeyedDataStore *)self URLForKey:keyCopy];
  v15 = [dataCopy writeToURL:v14 options:1 error:error];

LABEL_9:
  return v15;
}

- (id)dataForKey:(id)key error:(id *)error
{
  keyCopy = key;
  if (![(CRKFileBasedKeyedDataStore *)self isKeyValid:keyCopy])
  {
    v9 = 0;
    goto LABEL_12;
  }

  v7 = MEMORY[0x277CBEA90];
  v8 = [(CRKFileBasedKeyedDataStore *)self URLForKey:keyCopy];
  v15 = 0;
  v9 = [v7 dataWithContentsOfURL:v8 options:0 error:&v15];
  v10 = v15;

  if (v9)
  {
    goto LABEL_8;
  }

  domain = [v10 domain];
  if (([domain isEqualToString:*MEMORY[0x277CCA050]] & 1) == 0)
  {

    goto LABEL_8;
  }

  code = [v10 code];

  if (code != 260)
  {
LABEL_8:
    if (error && v10)
    {
      v13 = v10;
      *error = v10;
    }

    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

LABEL_12:

  return v9;
}

- (BOOL)removeDataForKey:(id)key error:(id *)error
{
  keyCopy = key;
  if ([(CRKFileBasedKeyedDataStore *)self isKeyValid:keyCopy])
  {
    fileManager = [(CRKFileBasedKeyedDataStore *)self fileManager];
    v8 = [(CRKFileBasedKeyedDataStore *)self URLForKey:keyCopy];
    v9 = [fileManager crk_safeRemoveItemAtURL:v8 error:error];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)removeAllDataWithError:(id *)error
{
  fileManager = [(CRKFileBasedKeyedDataStore *)self fileManager];
  directoryURL = [(CRKFileBasedKeyedDataStore *)self directoryURL];
  LOBYTE(error) = [fileManager crk_safeRemoveItemAtURL:directoryURL error:error];

  return error;
}

- (void)updateExistingDirectoryResourceValues
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  directoryURL = [a2 directoryURL];
  verboseDescription = [a3 verboseDescription];
  v8 = 138543618;
  v9 = directoryURL;
  v10 = 2114;
  v11 = verboseDescription;
  _os_log_error_impl(&dword_243550000, selfCopy, OS_LOG_TYPE_ERROR, "Failed to set resource values for directory %{public}@. Error: %{public}@", &v8, 0x16u);
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  if (![(CRKFileBasedKeyedDataStore *)self isKeyValid:keyCopy])
  {
    [(CRKFileBasedKeyedDataStore *)a2 URLForKey:keyCopy];
  }

  directoryURL = [(CRKFileBasedKeyedDataStore *)self directoryURL];
  v7 = [directoryURL URLByAppendingPathComponent:keyCopy];

  return v7;
}

- (void)initWithDirectoryURL:(uint64_t)a1 directoryResourceValuesByKey:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKFileBasedKeyedDataStore.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"directoryURL"}];
}

- (void)URLForKey:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CRKFileBasedKeyedDataStore.m" lineNumber:126 description:{@"key %@ is invalid", a3}];
}

@end