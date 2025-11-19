@interface BRKDataCollectionBundle
+ (id)defaultLogDirectory;
- (BOOL)packageBundleToPath:(id *)a3 filePrioritization:(id)a4;
- (BOOL)removeBundle;
- (BRKDataCollectionBundle)initWithFolderNamed:(id)a3;
- (id)_writerForClass:(Class)a3 file:(id)a4 configuration:(id)a5;
- (id)accelerationWriterForFile:(id)a3;
- (id)accelerationWriterForFile:(id)a3 valueCount:(unint64_t)a4;
- (id)audioWriterForFile:(id)a3;
- (id)logWriterForFile:(id)a3;
- (void)_writeData:(id)a3 toFile:(id)a4 updateManifest:(BOOL)a5;
- (void)closeWriterForFile:(id)a3;
- (void)removeBundle;
- (void)writeJSON:(id)a3 toFile:(id)a4;
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

- (BRKDataCollectionBundle)initWithFolderNamed:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = BRKDataCollectionBundle;
  v6 = [(BRKDataCollectionBundle *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_folderName, a3);
    v8 = [objc_opt_class() defaultLogDirectory];
    v9 = [v8 stringByAppendingPathComponent:v5];
    basePath = v7->_basePath;
    v7->_basePath = v9;

    v11 = [MEMORY[0x277CBEB38] dictionary];
    writers = v7->_writers;
    v7->_writers = v11;

    v13 = [MEMORY[0x277CBEB58] set];
    manifest = v7->_manifest;
    v7->_manifest = v13;

    v7->_writersLock._os_unfair_lock_opaque = 0;
    v15 = [MEMORY[0x277CF3480] settingsForActiveDevice];
    settings = v7->_settings;
    v7->_settings = v15;
  }

  return v7;
}

- (void)writeJSON:(id)a3 toFile:(id)a4
{
  v6 = MEMORY[0x277CCAAA0];
  v9 = 0;
  v7 = a4;
  v8 = [v6 dataWithJSONObject:a3 options:4 error:&v9];
  [(BRKDataCollectionBundle *)self writeData:v8 toFile:v7];
}

- (void)_writeData:(id)a3 toFile:(id)a4 updateManifest:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v8 && [(BRKSettings *)self->_settings isDataCollectionEnabled])
  {
    if (v5)
    {
      [(NSMutableSet *)self->_manifest addObject:v9];
    }

    v10 = [(NSString *)self->_basePath stringByAppendingPathComponent:v9];
    v11 = [v10 stringByDeletingLastPathComponent];
    BRKCreateDirectory();

    if (([v8 writeToFile:v10 atomically:1] & 1) == 0)
    {
      v12 = BRKLoggingObjectForDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(BRKDataCollectionBundle *)v10 _writeData:v12 toFile:v13 updateManifest:v14, v15, v16, v17, v18];
      }
    }
  }
}

- (id)accelerationWriterForFile:(id)a3
{
  v4 = a3;
  v5 = [(BRKDataCollectionBundle *)self _writerForClass:objc_opt_class() file:v4 configuration:0];

  return v5;
}

- (id)accelerationWriterForFile:(id)a3 valueCount:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__BRKDataCollectionBundle_accelerationWriterForFile_valueCount___block_invoke;
  v10[3] = &__block_descriptor_40_e19_v16__0__BRKWriter_8l;
  v10[4] = a4;
  v8 = [(BRKDataCollectionBundle *)self _writerForClass:v7 file:v6 configuration:v10];

  return v8;
}

- (id)audioWriterForFile:(id)a3
{
  v4 = a3;
  v5 = [(BRKDataCollectionBundle *)self _writerForClass:objc_opt_class() file:v4 configuration:0];

  return v5;
}

- (id)logWriterForFile:(id)a3
{
  v4 = a3;
  v5 = [(BRKDataCollectionBundle *)self _writerForClass:objc_opt_class() file:v4 configuration:0];

  return v5;
}

- (id)_writerForClass:(Class)a3 file:(id)a4 configuration:(id)a5
{
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&self->_writersLock);
  v10 = [(NSMutableDictionary *)self->_writers objectForKeyedSubscript:v8];
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

  v12 = [(NSString *)self->_basePath stringByAppendingPathComponent:v8];
  v13 = [v12 stringByDeletingLastPathComponent];
  BRKCreateDirectory();

  [(NSMutableSet *)self->_manifest addObject:v8];
  v14 = [[a3 alloc] initWithPath:v12];
  if (v9)
  {
    v9[2](v9, v14);
  }

  os_unfair_lock_lock(&self->_writersLock);
  [(NSMutableDictionary *)self->_writers setObject:v14 forKeyedSubscript:v8];
  os_unfair_lock_unlock(&self->_writersLock);
  v10 = v14;

  v11 = v10;
LABEL_10:

  return v11;
}

- (void)closeWriterForFile:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_writersLock);
  v5 = [(NSMutableDictionary *)self->_writers objectForKeyedSubscript:v4];
  [(NSMutableDictionary *)self->_writers setObject:0 forKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_writersLock);
  if (objc_opt_respondsToSelector())
  {
    [v5 performSelector:sel_close];
  }
}

- (BOOL)packageBundleToPath:(id *)a3 filePrioritization:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (![(BRKSettings *)self->_settings isDataCollectionEnabled])
  {
    v32 = 0;
    goto LABEL_31;
  }

  v45 = a3;
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

        [(BRKDataCollectionBundle *)self closeWriterForFile:*(*(&v51 + 1) + 8 * i), v45];
      }

      v10 = [v8 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v10);
  }

  v46 = v6;
  v13 = [v6 mutableCopy];
  for (j = 0; ; j = v48)
  {
    v15 = [(NSMutableSet *)self->_manifest allObjects];
    v16 = [v15 componentsJoinedByString:@"\n"];

    v17 = [v16 dataUsingEncoding:4];
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
      v6 = v46;
      goto LABEL_30;
    }

    if (BRKFileSize() < 1900001)
    {
      break;
    }

    v21 = [MEMORY[0x277CCAA00] defaultManager];
    v50 = 0;
    v22 = [v21 removeItemAtURL:v20 error:&v50];
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
    v47 = v16;
    v48 = v20;
    v26 = [v24 lastObject];
    v27 = v24;
    [v24 removeLastObject];
    v28 = [(NSString *)self->_basePath stringByAppendingPathComponent:v26];
    v29 = [MEMORY[0x277CCAA00] defaultManager];
    v49 = v23;
    v30 = [v29 removeItemAtPath:v28 error:&v49];
    v31 = v49;

    if ((v30 & 1) == 0)
    {
      v42 = BRKLoggingObjectForDomain();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [(BRKDataCollectionBundle *)v26 packageBundleToPath:v31 filePrioritization:v42];
      }

      v32 = 0;
      v6 = v46;
      v16 = v47;
      v13 = v27;
      v20 = v48;
      goto LABEL_30;
    }

    [(NSMutableSet *)self->_manifest removeObject:v26];

    v13 = v27;
  }

  BRKMarkFilePurgeable();
  v16 = [v20 path];
  v33 = [v16 length];
  v32 = v33 != 0;
  if (!v33)
  {
    goto LABEL_26;
  }

  v32 = 1;
  self->_isPackaged = 1;
  v6 = v46;
  if (v45)
  {
    v34 = v16;
    *v45 = v16;
  }

LABEL_30:

LABEL_31:
  v43 = *MEMORY[0x277D85DE8];
  return v32;
}

- (BOOL)removeBundle
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  basePath = self->_basePath;
  p_basePath = &self->_basePath;
  v16 = 0;
  v6 = [v3 removeItemAtPath:basePath error:&v16];
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
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_241ED9000, a2, a3, "Unable to remove bundle path %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end