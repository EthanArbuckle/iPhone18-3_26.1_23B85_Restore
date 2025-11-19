@interface BCSPathProvider
+ (id)sharedInstance;
- (BCSPathProvider)init;
- (BCSPathProvider)initWithFileManager:(id)a3 temporaryDirectoryBuilder:(id)a4;
- (NSURL)brandLogoCacheURL;
- (NSURL)tempURL;
- (id)_setupStorageWithBaseFileURL:(id)a3 applyFileProtectionType:(id)a4 verificationToken:(BOOL *)a5;
- (id)_setupStorageWithSearchPathDirectory:(unint64_t)a3 applyFileProtectionType:(id)a4 verificationToken:(BOOL *)a5;
@end

@implementation BCSPathProvider

+ (id)sharedInstance
{
  if (_MergedGlobals_41 != -1)
  {
    dispatch_once(&_MergedGlobals_41, &__block_literal_global_7);
  }

  v3 = qword_280BCF5A0;

  return v3;
}

uint64_t __33__BCSPathProvider_sharedInstance__block_invoke()
{
  qword_280BCF5A0 = objc_alloc_init(BCSPathProvider);

  return MEMORY[0x2821F96F8]();
}

- (NSURL)tempURL
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [(BCSPathProvider *)self temporaryDirectoryBuilder];
  v5 = v4[2]();
  v6 = [v3 fileURLWithPath:v5];
  v7 = [(BCSPathProvider *)self _setupStorageWithBaseFileURL:v6 applyFileProtectionType:0 verificationToken:0];

  return v7;
}

- (BCSPathProvider)init
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(BCSPathProvider *)self initWithFileManager:v3 temporaryDirectoryBuilder:&__block_literal_global_6];

  return v4;
}

- (BCSPathProvider)initWithFileManager:(id)a3 temporaryDirectoryBuilder:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BCSPathProvider;
  v9 = [(BCSPathProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileManager, a3);
    v11 = MEMORY[0x245D07100](v8);
    temporaryDirectoryBuilder = v10->_temporaryDirectoryBuilder;
    v10->_temporaryDirectoryBuilder = v11;
  }

  return v10;
}

- (id)_setupStorageWithSearchPathDirectory:(unint64_t)a3 applyFileProtectionType:(id)a4 verificationToken:(BOOL *)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(BCSPathProvider *)self fileManager];
  v16 = 0;
  v10 = [v9 URLForDirectory:a3 inDomain:1 appropriateForURL:0 create:0 error:&v16];
  v11 = v16;

  if (v10)
  {
    v12 = [(BCSPathProvider *)self _setupStorageWithBaseFileURL:v10 applyFileProtectionType:v8 verificationToken:a5];
  }

  else
  {
    if (v11)
    {
      v13 = ABSLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_error_impl(&dword_242072000, v13, OS_LOG_TYPE_ERROR, "Unable to determine directory from NSFileManager: %@", buf, 0xCu);
      }
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_setupStorageWithBaseFileURL:(id)a3 applyFileProtectionType:(id)a4 verificationToken:(BOOL *)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 bundleIdentifier];
    v12 = [v8 URLByAppendingPathComponent:v11 isDirectory:1];

    if (v12)
    {
      v13 = [(BCSPathProvider *)self fileManager];
      v14 = [v12 path];
      v15 = [v13 fileExistsAtPath:v14];

      if ((v15 & 1) == 0)
      {
        v16 = ABSLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v28 = [v12 path];
          *buf = 138412290;
          v33 = v28;
          _os_log_debug_impl(&dword_242072000, v16, OS_LOG_TYPE_DEBUG, "Creating directory here: %@", buf, 0xCu);
        }

        v17 = [(BCSPathProvider *)self fileManager];
        v31 = 0;
        v18 = [v17 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:&v31];
        v19 = v31;

        if ((v18 & 1) == 0)
        {
          v20 = ABSLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v29 = [v12 path];
            *buf = 138543618;
            v33 = v29;
            v34 = 2112;
            v35 = v19;
            _os_log_error_impl(&dword_242072000, v20, OS_LOG_TYPE_ERROR, "Error creating directory: %{public}@ - %@}", buf, 0x16u);
          }

          v12 = 0;
        }
      }

      if (v9 && v12 && (!a5 || !*a5))
      {
        v21 = *MEMORY[0x277CBE7F8];
        v30 = 0;
        v22 = [v12 setResourceValue:v9 forKey:v21 error:&v30];
        v23 = v30;
        v24 = ABSLogCommon();
        v25 = v24;
        if (!v22 || v23)
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v33 = v23;
            _os_log_error_impl(&dword_242072000, v25, OS_LOG_TYPE_ERROR, "Failed to set the file protection level to class C on the caches directory, error: %@", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_242072000, v25, OS_LOG_TYPE_DEBUG, "Successfully set caches directory file protection level to class C", buf, 2u);
          }

          if (a5)
          {
            *a5 = 1;
          }
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSURL)brandLogoCacheURL
{
  v2 = [(BCSPathProvider *)self cachesURL];
  v3 = [v2 URLByAppendingPathComponent:@"BrandLogos" isDirectory:1];

  return v3;
}

@end