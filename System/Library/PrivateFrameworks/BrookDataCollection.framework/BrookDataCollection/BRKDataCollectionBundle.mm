@interface BRKDataCollectionBundle
+ (id)defaultLogDirectory;
- (BOOL)packageBundleToPath:(id *)path filePrioritization:(id)prioritization;
- (BOOL)removeBundle;
- (BRKDataCollectionBundle)initWithFolderNamed:(id)named;
- (id)_writerForClass:(Class)class file:(id)file configuration:(id)configuration;
- (id)accelerationWriterForFile:(id)file;
- (id)accelerationWriterForFile:(id)file valueCount:(unint64_t)count;
- (id)audioWriterForFile:(id)file;
- (id)logWriterForFile:(id)file;
- (void)_writeData:(id)data toFile:(id)file updateManifest:(BOOL)manifest;
- (void)closeWriterForFile:(id)file;
- (void)removeBundle;
- (void)writeJSON:(id)n toFile:(id)file;
@end

@implementation BRKDataCollectionBundle

+ (id)defaultLogDirectory
{
  if (defaultLogDirectory_onceToken != -1)
  {
    +[BRKDataCollectionBundle defaultLogDirectory];
  }

  v3 = defaultLogDirectory_LogDirectory;

  return v3;
}

void __46__BRKDataCollectionBundle_defaultLogDirectory__block_invoke()
{
  v2 = NSHomeDirectory();
  v0 = [v2 stringByAppendingPathComponent:@"Library/Logs/Brook"];
  v1 = defaultLogDirectory_LogDirectory;
  defaultLogDirectory_LogDirectory = v0;
}

- (BRKDataCollectionBundle)initWithFolderNamed:(id)named
{
  namedCopy = named;
  v18.receiver = self;
  v18.super_class = BRKDataCollectionBundle;
  v6 = [(BRKDataCollectionBundle *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_folderName, named);
    defaultLogDirectory = [objc_opt_class() defaultLogDirectory];
    v9 = [defaultLogDirectory stringByAppendingPathComponent:namedCopy];
    basePath = v7->_basePath;
    v7->_basePath = v9;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    writers = v7->_writers;
    v7->_writers = dictionary;

    v13 = [MEMORY[0x277CBEB58] set];
    manifest = v7->_manifest;
    v7->_manifest = v13;

    v7->_writersLock._os_unfair_lock_opaque = 0;
    settingsForActiveDevice = [MEMORY[0x277CF3480] settingsForActiveDevice];
    settings = v7->_settings;
    v7->_settings = settingsForActiveDevice;
  }

  return v7;
}

- (void)writeJSON:(id)n toFile:(id)file
{
  v6 = MEMORY[0x277CCAAA0];
  v9 = 0;
  fileCopy = file;
  v8 = [v6 dataWithJSONObject:n options:4 error:&v9];
  [(BRKDataCollectionBundle *)self writeData:v8 toFile:fileCopy];
}

- (void)_writeData:(id)data toFile:(id)file updateManifest:(BOOL)manifest
{
  manifestCopy = manifest;
  dataCopy = data;
  fileCopy = file;
  if (dataCopy && [(BRKSettings *)self->_settings isDataCollectionEnabled])
  {
    if (manifestCopy)
    {
      [(NSMutableSet *)self->_manifest addObject:fileCopy];
    }

    v10 = [(NSString *)self->_basePath stringByAppendingPathComponent:fileCopy];
    stringByDeletingLastPathComponent = [v10 stringByDeletingLastPathComponent];
    BRKCreateDirectory();

    if (([dataCopy writeToFile:v10 atomically:1] & 1) == 0)
    {
      v12 = BRKLoggingObjectForDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(BRKDataCollectionBundle *)v10 _writeData:v12 toFile:v13 updateManifest:v14, v15, v16, v17, v18];
      }
    }
  }
}

- (id)accelerationWriterForFile:(id)file
{
  fileCopy = file;
  v5 = [(BRKDataCollectionBundle *)self _writerForClass:objc_opt_class() file:fileCopy configuration:0];

  return v5;
}

- (id)accelerationWriterForFile:(id)file valueCount:(unint64_t)count
{
  fileCopy = file;
  v7 = objc_opt_class();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__BRKDataCollectionBundle_accelerationWriterForFile_valueCount___block_invoke;
  v10[3] = &__block_descriptor_40_e19_v16__0__BRKWriter_8l;
  v10[4] = count;
  v8 = [(BRKDataCollectionBundle *)self _writerForClass:v7 file:fileCopy configuration:v10];

  return v8;
}

- (id)audioWriterForFile:(id)file
{
  fileCopy = file;
  v5 = [(BRKDataCollectionBundle *)self _writerForClass:objc_opt_class() file:fileCopy configuration:0];

  return v5;
}

- (id)logWriterForFile:(id)file
{
  fileCopy = file;
  v5 = [(BRKDataCollectionBundle *)self _writerForClass:objc_opt_class() file:fileCopy configuration:0];

  return v5;
}

- (id)_writerForClass:(Class)class file:(id)file configuration:(id)configuration
{
  fileCopy = file;
  configurationCopy = configuration;
  os_unfair_lock_lock(&self->_writersLock);
  v10 = [(NSMutableDictionary *)self->_writers objectForKeyedSubscript:fileCopy];
  os_unfair_lock_unlock(&self->_writersLock);
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v10;
      v11 = v10;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (![(BRKSettings *)self->_settings isDataCollectionEnabled])
  {
    v10 = 0;
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v12 = [(NSString *)self->_basePath stringByAppendingPathComponent:fileCopy];
  stringByDeletingLastPathComponent = [v12 stringByDeletingLastPathComponent];
  BRKCreateDirectory();

  [(NSMutableSet *)self->_manifest addObject:fileCopy];
  v14 = [[class alloc] initWithPath:v12];
  if (configurationCopy)
  {
    configurationCopy[2](configurationCopy, v14);
  }

  os_unfair_lock_lock(&self->_writersLock);
  [(NSMutableDictionary *)self->_writers setObject:v14 forKeyedSubscript:fileCopy];
  os_unfair_lock_unlock(&self->_writersLock);
  v10 = v14;

  v11 = v10;
LABEL_10:

  return v11;
}

- (void)closeWriterForFile:(id)file
{
  fileCopy = file;
  os_unfair_lock_lock(&self->_writersLock);
  v5 = [(NSMutableDictionary *)self->_writers objectForKeyedSubscript:fileCopy];
  [(NSMutableDictionary *)self->_writers setObject:0 forKeyedSubscript:fileCopy];

  os_unfair_lock_unlock(&self->_writersLock);
  if (objc_opt_respondsToSelector())
  {
    [v5 performSelector:sel_close];
  }
}

- (BOOL)packageBundleToPath:(id *)path filePrioritization:(id)prioritization
{
  v56 = *MEMORY[0x277D85DE8];
  prioritizationCopy = prioritization;
  if (![(BRKSettings *)self->_settings isDataCollectionEnabled])
  {
    v32 = 0;
    goto LABEL_31;
  }

  pathCopy = path;
  os_unfair_lock_lock(&self->_writersLock);
  v7 = [(NSMutableDictionary *)self->_writers copy];
  os_unfair_lock_unlock(&self->_writersLock);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v52;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(BRKDataCollectionBundle *)self closeWriterForFile:*(*(&v51 + 1) + 8 * i), pathCopy];
      }

      v10 = [v8 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v10);
  }

  v46 = prioritizationCopy;
  v13 = [prioritizationCopy mutableCopy];
  for (j = 0; ; j = v48)
  {
    allObjects = [(NSMutableSet *)self->_manifest allObjects];
    path = [allObjects componentsJoinedByString:@"\n"];

    v17 = [path dataUsingEncoding:4];
    [(BRKDataCollectionBundle *)self _writeData:v17 toFile:@"manifest" updateManifest:0];
    v18 = MEMORY[0x277D051A8];
    v19 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_basePath];
    v20 = [v18 archiveDirectoryAt:v19 deleteOriginal:0];

    if (!v20)
    {
      v23 = BRKLoggingObjectForDomain();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [BRKDataCollectionBundle packageBundleToPath:v23 filePrioritization:?];
      }

LABEL_25:

      v32 = 0;
LABEL_26:
      prioritizationCopy = v46;
      goto LABEL_30;
    }

    if (BRKFileSize() < 1900001)
    {
      break;
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v50 = 0;
    v22 = [defaultManager removeItemAtURL:v20 error:&v50];
    v23 = v50;

    if ((v22 & 1) == 0)
    {
      v35 = BRKLoggingObjectForDomain();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [(BRKDataCollectionBundle *)v23 packageBundleToPath:v35 filePrioritization:v36, v37, v38, v39, v40, v41];
      }

      goto LABEL_25;
    }

    if (![v13 count])
    {
      goto LABEL_25;
    }

    v24 = v13;
    v25 = v17;
    v47 = path;
    v48 = v20;
    lastObject = [v24 lastObject];
    v27 = v24;
    [v24 removeLastObject];
    v28 = [(NSString *)self->_basePath stringByAppendingPathComponent:lastObject];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v49 = v23;
    v30 = [defaultManager2 removeItemAtPath:v28 error:&v49];
    v31 = v49;

    if ((v30 & 1) == 0)
    {
      v42 = BRKLoggingObjectForDomain();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [(BRKDataCollectionBundle *)lastObject packageBundleToPath:v31 filePrioritization:v42];
      }

      v32 = 0;
      prioritizationCopy = v46;
      path = v47;
      v13 = v27;
      v20 = v48;
      goto LABEL_30;
    }

    [(NSMutableSet *)self->_manifest removeObject:lastObject];

    v13 = v27;
  }

  BRKMarkFilePurgeable();
  path = [v20 path];
  v33 = [path length];
  v32 = v33 != 0;
  if (!v33)
  {
    goto LABEL_26;
  }

  v32 = 1;
  self->_isPackaged = 1;
  prioritizationCopy = v46;
  if (pathCopy)
  {
    v34 = path;
    *pathCopy = path;
  }

LABEL_30:

LABEL_31:
  v43 = *MEMORY[0x277D85DE8];
  return v32;
}

- (BOOL)removeBundle
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  basePath = self->_basePath;
  p_basePath = &self->_basePath;
  v16 = 0;
  v6 = [defaultManager removeItemAtPath:basePath error:&v16];
  v7 = v16;

  if ((v6 & 1) == 0)
  {
    v8 = BRKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(BRKDataCollectionBundle *)p_basePath removeBundle:v8];
    }
  }

  return v6;
}

- (void)_writeData:(uint64_t)a3 toFile:(uint64_t)a4 updateManifest:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_241ED9000, a2, a3, "Unable to write data to path %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)packageBundleToPath:(uint64_t)a3 filePrioritization:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_241ED9000, a2, a3, "Unable to remove archive for resize %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)packageBundleToPath:(os_log_t)log filePrioritization:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_241ED9000, log, OS_LOG_TYPE_ERROR, "Unable to remove file %@ for resize %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)removeBundle
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*self);
  OUTLINED_FUNCTION_0_0(&dword_241ED9000, a2, a3, "Unable to remove bundle path %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end