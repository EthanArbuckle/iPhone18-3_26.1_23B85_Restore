@interface CRKFileBasedKeyedDataStore
+ (id)excludedFromiCloudBackupStoreWithDirectoryURL:(id)a3;
- (BOOL)removeAllDataWithError:(id *)a3;
- (BOOL)removeDataForKey:(id)a3 error:(id *)a4;
- (BOOL)setData:(id)a3 forKey:(id)a4 error:(id *)a5;
- (CRKFileBasedKeyedDataStore)init;
- (CRKFileBasedKeyedDataStore)initWithDirectoryURL:(id)a3 directoryResourceValuesByKey:(id)a4;
- (id)URLForKey:(id)a3;
- (id)dataForKey:(id)a3 error:(id *)a4;
- (void)updateExistingDirectoryResourceValues;
@end

@implementation CRKFileBasedKeyedDataStore

- (CRKFileBasedKeyedDataStore)init
{
  v3 = [MEMORY[0x277CBEBC0] crk_uniqueTemporaryDirectoryURL];
  v4 = [(CRKFileBasedKeyedDataStore *)self initWithDirectoryURL:v3];

  return v4;
}

+ (id)excludedFromiCloudBackupStoreWithDirectoryURL:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 alloc];
  v9 = *MEMORY[0x277CBE878];
  v10[0] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v5 initWithDirectoryURL:v4 directoryResourceValuesByKey:v6];

  return v7;
}

- (CRKFileBasedKeyedDataStore)initWithDirectoryURL:(id)a3 directoryResourceValuesByKey:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [CRKFileBasedKeyedDataStore initWithDirectoryURL:a2 directoryResourceValuesByKey:self];
  }

  v17.receiver = self;
  v17.super_class = CRKFileBasedKeyedDataStore;
  v10 = [(CRKFileBasedKeyedDataStore *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_directoryURL, a3);
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    fileManager = v11->_fileManager;
    v11->_fileManager = v12;

    v14 = [v9 copy];
    directoryResourceValuesByKey = v11->_directoryResourceValuesByKey;
    v11->_directoryResourceValuesByKey = v14;

    [(CRKFileBasedKeyedDataStore *)v11 updateExistingDirectoryResourceValues];
  }

  return v11;
}

- (BOOL)setData:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v15 = [(CRKFileBasedKeyedDataStore *)self removeDataForKey:v9 error:a5];
    goto LABEL_9;
  }

  v10 = [(CRKFileBasedKeyedDataStore *)self fileManager];
  v11 = [(CRKFileBasedKeyedDataStore *)self directoryURL];
  v12 = [v11 path];
  v13 = [v10 fileExistsAtPath:v12];

  if ((v13 & 1) == 0)
  {
    v16 = [(CRKFileBasedKeyedDataStore *)self fileManager];
    v17 = [(CRKFileBasedKeyedDataStore *)self directoryURL];
    v18 = [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:a5];

    if (!v18)
    {
      goto LABEL_8;
    }

    v19 = [(CRKFileBasedKeyedDataStore *)self directoryResourceValuesByKey];
    if (![v19 count])
    {

      goto LABEL_3;
    }

    v20 = [(CRKFileBasedKeyedDataStore *)self directoryURL];
    v21 = [(CRKFileBasedKeyedDataStore *)self directoryResourceValuesByKey];
    v22 = [v20 setResourceValues:v21 error:a5];

    if (!v22)
    {
LABEL_8:
      v15 = 0;
      goto LABEL_9;
    }
  }

LABEL_3:
  v14 = [(CRKFileBasedKeyedDataStore *)self URLForKey:v9];
  v15 = [v8 writeToURL:v14 options:1 error:a5];

LABEL_9:
  return v15;
}

- (id)dataForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![(CRKFileBasedKeyedDataStore *)self isKeyValid:v6])
  {
    v9 = 0;
    goto LABEL_12;
  }

  v7 = MEMORY[0x277CBEA90];
  v8 = [(CRKFileBasedKeyedDataStore *)self URLForKey:v6];
  v15 = 0;
  v9 = [v7 dataWithContentsOfURL:v8 options:0 error:&v15];
  v10 = v15;

  if (v9)
  {
    goto LABEL_8;
  }

  v11 = [v10 domain];
  if (([v11 isEqualToString:*MEMORY[0x277CCA050]] & 1) == 0)
  {

    goto LABEL_8;
  }

  v12 = [v10 code];

  if (v12 != 260)
  {
LABEL_8:
    if (a4 && v10)
    {
      v13 = v10;
      *a4 = v10;
    }

    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

LABEL_12:

  return v9;
}

- (BOOL)removeDataForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(CRKFileBasedKeyedDataStore *)self isKeyValid:v6])
  {
    v7 = [(CRKFileBasedKeyedDataStore *)self fileManager];
    v8 = [(CRKFileBasedKeyedDataStore *)self URLForKey:v6];
    v9 = [v7 crk_safeRemoveItemAtURL:v8 error:a4];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)removeAllDataWithError:(id *)a3
{
  v5 = [(CRKFileBasedKeyedDataStore *)self fileManager];
  v6 = [(CRKFileBasedKeyedDataStore *)self directoryURL];
  LOBYTE(a3) = [v5 crk_safeRemoveItemAtURL:v6 error:a3];

  return a3;
}

- (void)updateExistingDirectoryResourceValues
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 directoryURL];
  v7 = [a3 verboseDescription];
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_243550000, v5, OS_LOG_TYPE_ERROR, "Failed to set resource values for directory %{public}@. Error: %{public}@", &v8, 0x16u);
}

- (id)URLForKey:(id)a3
{
  v5 = a3;
  if (![(CRKFileBasedKeyedDataStore *)self isKeyValid:v5])
  {
    [(CRKFileBasedKeyedDataStore *)a2 URLForKey:v5];
  }

  v6 = [(CRKFileBasedKeyedDataStore *)self directoryURL];
  v7 = [v6 URLByAppendingPathComponent:v5];

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