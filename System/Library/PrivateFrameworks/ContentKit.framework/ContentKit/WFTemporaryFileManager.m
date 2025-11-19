@interface WFTemporaryFileManager
+ (BOOL)isTemporaryFile:(id)a3;
+ (id)createSharedTemporaryDirectoryWithFilename:(id)a3;
+ (id)createSharedTemporaryFileWithFilename:(id)a3;
+ (id)createTemporaryDirectoryWithFilename:(id)a3;
+ (id)createTemporaryDirectoryWithFilename:(id)a3 inDirectory:(id)a4;
+ (id)createTemporaryFileWithFilename:(id)a3;
+ (id)createTemporaryFileWithFilename:(id)a3 inDirectory:(id)a4;
+ (id)createUniqueDirectoryInDirectory:(id)a3;
+ (id)proposedFileURLForFilename:(id)a3 atTheRootOfDirectory:(id)a4 isDirectory:(BOOL)a5;
+ (id)proposedFileURLForFilename:(id)a3 inDirectory:(id)a4 isDirectory:(BOOL)a5;
+ (id)proposedSharedTemporaryFileURLForFilename:(id)a3 isDirectory:(BOOL)a4;
+ (id)proposedTemporaryFileURLForFilename:(id)a3 isDirectory:(BOOL)a4;
+ (id)sharedAppGroupDirectoryURL;
+ (id)sharedShortcutsAppGroupDirectoryURL;
+ (id)sharedTemporaryDirectoryURL;
+ (id)temporaryDirectoryURL;
+ (id)wf_uncachedContainerURLForSecurityApplicationGroupIdentifier:(id)a3 error:(id *)a4;
+ (void)clearTemporaryFiles;
+ (void)configureBackupFlagAtURL:(id)a3;
+ (void)configureBackupFlagIfNecessary;
+ (void)configureFileProtectionAtPath:(id)a3;
+ (void)configureTemporaryDirectoryProtectionIfNecessary;
+ (void)createSharedDirectoryIfNecessary;
+ (void)markDirectoryAsPurgeableAtURL:(id)a3;
+ (void)setUpDirectories;
@end

@implementation WFTemporaryFileManager

+ (void)setUpDirectories
{
  [a1 createSharedDirectoryIfNecessary];
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__WFTemporaryFileManager_setUpDirectories__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v3, block);
}

+ (id)sharedTemporaryDirectoryURL
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a1 sharedAppGroupDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"Temporary" isDirectory:1];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [v3 URLByAppendingPathComponent:v5 isDirectory:1];

  if (!v6)
  {
    v7 = getWFTemporaryFileManagerLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "+[WFTemporaryFileManager sharedTemporaryDirectoryURL]";
      _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_ERROR, "%s sharedTemporaryDirectoryURL should not be nil", &v9, 0xCu);
    }
  }

  return v6;
}

+ (id)sharedAppGroupDirectoryURL
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [a1 appGroupIdentifier];
  v5 = [v3 containerURLForSecurityApplicationGroupIdentifier:v4];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [a1 appGroupIdentifier];
    v10 = 0;
    v5 = [a1 wf_uncachedContainerURLForSecurityApplicationGroupIdentifier:v7 error:&v10];
    v6 = v10;

    if (!v5)
    {
      v8 = getWFTemporaryFileManagerLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "+[WFTemporaryFileManager sharedAppGroupDirectoryURL]";
        v13 = 2114;
        v14 = v6;
        _os_log_impl(&dword_21E1BD000, v8, OS_LOG_TYPE_ERROR, "%s sharedAppGroupDirectoryURL should not be nil: %{public}@", buf, 0x16u);
      }

      v5 = 0;
    }
  }

  return v5;
}

+ (void)createSharedDirectoryIfNecessary
{
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [a1 sharedTemporaryDirectoryURL];
  [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:0];
}

void __45__WFTemporaryFileManager_clearTemporaryFiles__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) removeItemAtURL:*(*(&v7 + 1) + 8 * v6++) error:{0, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (void)configureBackupFlagIfNecessary
{
  v3 = [a1 sharedTemporaryDirectoryURL];
  [a1 configureBackupFlagAtURL:v3];
}

+ (void)clearTemporaryFiles
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = objc_opt_new();
  v5 = [a1 temporaryDirectoryURL];
  v6 = [v3 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:0 error:0];
  [v4 addObjectsFromArray:v6];

  v7 = [a1 sharedTemporaryDirectoryURL];
  v8 = [v3 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:0 options:0 error:0];
  [v4 addObjectsFromArray:v8];

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_BACKGROUND, 0);

  v11 = dispatch_queue_create("WFInitializeProcessWithDatabase temporary file clearing", v10);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__WFTemporaryFileManager_clearTemporaryFiles__block_invoke;
  v14[3] = &unk_278347FF0;
  v15 = v4;
  v16 = v3;
  v12 = v3;
  v13 = v4;
  dispatch_async(v11, v14);
}

+ (id)temporaryDirectoryURL
{
  v22 = *MEMORY[0x277D85DE8];
  if (temporaryDirectoryURL_onceToken != -1)
  {
    dispatch_once(&temporaryDirectoryURL_onceToken, &__block_literal_global_70);
  }

  if ((temporaryDirectoryURL_hasCheckedDirectoryExists & 1) == 0)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [temporaryDirectoryURL_URL path];
    v5 = [v3 fileExistsAtPath:v4 isDirectory:0];

    if (v5)
    {
      temporaryDirectoryURL_hasCheckedDirectoryExists = 1;
      v6 = getWFFilesLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [temporaryDirectoryURL_URL path];
        *buf = 136315394;
        v19 = "+[WFTemporaryFileManager temporaryDirectoryURL]";
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_21E1BD000, v6, OS_LOG_TYPE_DEFAULT, "%s Found an existing temporary directory at %@", buf, 0x16u);
      }
    }

    else
    {
      v8 = getWFFilesLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [temporaryDirectoryURL_URL path];
        *buf = 136315394;
        v19 = "+[WFTemporaryFileManager temporaryDirectoryURL]";
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_21E1BD000, v8, OS_LOG_TYPE_DEFAULT, "%s Creating a new temporary directory at %@", buf, 0x16u);
      }

      v10 = [MEMORY[0x277CCAA00] defaultManager];
      v17 = 0;
      v11 = [v10 createDirectoryAtURL:temporaryDirectoryURL_URL withIntermediateDirectories:1 attributes:0 error:&v17];
      v6 = v17;

      if (v11)
      {
        temporaryDirectoryURL_hasCheckedDirectoryExists = 1;
        v12 = getWFFilesLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v19 = "+[WFTemporaryFileManager temporaryDirectoryURL]";
          _os_log_impl(&dword_21E1BD000, v12, OS_LOG_TYPE_DEFAULT, "%s Successfully created process temporary directory, I will set it up.", buf, 0xCu);
        }

        v13 = dispatch_get_global_queue(0, 0);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __47__WFTemporaryFileManager_temporaryDirectoryURL__block_invoke_75;
        v16[3] = &__block_descriptor_40_e5_v8__0l;
        v16[4] = a1;
        dispatch_async(v13, v16);
      }

      else
      {
        v13 = getWFFilesLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v19 = "+[WFTemporaryFileManager temporaryDirectoryURL]";
          v20 = 2112;
          v21 = v6;
          _os_log_impl(&dword_21E1BD000, v13, OS_LOG_TYPE_ERROR, "%s Failed to create process temporary directory with error: %@", buf, 0x16u);
        }
      }
    }
  }

  v14 = temporaryDirectoryURL_URL;

  return v14;
}

void __47__WFTemporaryFileManager_temporaryDirectoryURL__block_invoke()
{
  v17 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = v1;
  v3 = @"com.apple.shortcuts.unknown";
  if (v1)
  {
    v3 = v1;
  }

  v4 = v3;

  v5 = _sandbox_in_a_container();
  v6 = getWFFilesLogObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v15 = 136315138;
      v16 = "+[WFTemporaryFileManager temporaryDirectoryURL]_block_invoke";
      _os_log_impl(&dword_21E1BD000, v6, OS_LOG_TYPE_DEFAULT, "%s No access to Shortcuts Temporary Data Vault, but containerized, using container's NSTemporaryDirectory()", &v15, 0xCu);
    }

    v8 = MEMORY[0x277CBEBC0];
    v9 = NSTemporaryDirectory();
    v10 = [v8 fileURLWithPath:v9 isDirectory:1];
    v11 = temporaryDirectoryURL_URL;
    temporaryDirectoryURL_URL = v10;
  }

  else
  {
    if (v7)
    {
      v15 = 136315138;
      v16 = "+[WFTemporaryFileManager temporaryDirectoryURL]_block_invoke";
      _os_log_impl(&dword_21E1BD000, v6, OS_LOG_TYPE_DEFAULT, "%s No access to Shortcuts Temporary Data Vault, and not containerized, using system NSTemporaryDirectory() with suffix", &v15, 0xCu);
    }

    v12 = MEMORY[0x277CBEBC0];
    v9 = NSTemporaryDirectory();
    v11 = [v12 fileURLWithPath:v9 isDirectory:1];
    v13 = [v11 URLByAppendingPathComponent:v4 isDirectory:1];
    v14 = temporaryDirectoryURL_URL;
    temporaryDirectoryURL_URL = v13;
  }
}

uint64_t __42__WFTemporaryFileManager_setUpDirectories__block_invoke(uint64_t a1)
{
  [*(a1 + 32) configureTemporaryDirectoryProtectionIfNecessary];
  v2 = *(a1 + 32);

  return [v2 configureBackupFlagIfNecessary];
}

+ (void)configureTemporaryDirectoryProtectionIfNecessary
{
  v3 = [a1 temporaryDirectoryURL];
  v4 = [v3 path];
  [a1 configureFileProtectionAtPath:v4];

  v6 = [a1 sharedTemporaryDirectoryURL];
  v5 = [v6 path];
  [a1 configureFileProtectionAtPath:v5];
}

+ (BOOL)isTemporaryFile:(id)a3
{
  v3 = a3;
  v4 = +[WFTemporaryFileManager temporaryDirectoryURL];
  v5 = +[WFTemporaryFileManager sharedTemporaryDirectoryURL];
  if ([v3 wf_proposedFileIsContainedByDirectoryAtURL:v4])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v3 wf_proposedFileIsContainedByDirectoryAtURL:v5];
  }

  return v6;
}

+ (id)createSharedTemporaryFileWithFilename:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedTemporaryDirectoryURL];
  v6 = [a1 createTemporaryFileWithFilename:v4 inDirectory:v5];

  return v6;
}

+ (id)createTemporaryFileWithFilename:(id)a3
{
  v4 = a3;
  v5 = [a1 temporaryDirectoryURL];
  v6 = [a1 createTemporaryFileWithFilename:v4 inDirectory:v5];

  return v6;
}

+ (id)createTemporaryFileWithFilename:(id)a3 inDirectory:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"WFTemporaryFileManager.m" lineNumber:405 description:{@"Invalid parameter not satisfying: %@", @"filename"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:a2 object:a1 file:@"WFTemporaryFileManager.m" lineNumber:406 description:{@"Invalid parameter not satisfying: %@", @"directory"}];

LABEL_3:
  v10 = [v9 URLByAppendingPathComponent:v7 isDirectory:0];
  v11 = v10;
  if (v10)
  {
    v12 = open([v10 fileSystemRepresentation], 2562, 420);
    if (v12 != -1)
    {
      close(v12);
      v13 = v11;
      goto LABEL_12;
    }

    if (*__error() == 17)
    {
      v14 = [a1 createUniqueDirectoryInDirectory:v9];
      v13 = [a1 createTemporaryFileWithFilename:v7 inDirectory:v14];

      goto LABEL_12;
    }

    v15 = getWFTemporaryFileManagerLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *__error();
      *buf = 136315394;
      v21 = "+[WFTemporaryFileManager createTemporaryFileWithFilename:inDirectory:]";
      v22 = 1026;
      v23 = v16;
      _os_log_impl(&dword_21E1BD000, v15, OS_LOG_TYPE_ERROR, "%s Failed to create temporary file, errno=%{public}d", buf, 0x12u);
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

+ (id)createTemporaryDirectoryWithFilename:(id)a3
{
  v4 = a3;
  v5 = [a1 temporaryDirectoryURL];
  v6 = [a1 createTemporaryDirectoryWithFilename:v4 inDirectory:v5];

  return v6;
}

+ (id)createSharedTemporaryDirectoryWithFilename:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedTemporaryDirectoryURL];
  v6 = [a1 createTemporaryDirectoryWithFilename:v4 inDirectory:v5];

  return v6;
}

+ (id)createTemporaryDirectoryWithFilename:(id)a3 inDirectory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"WFTemporaryFileManager.m" lineNumber:379 description:{@"Invalid parameter not satisfying: %@", @"filename"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:a1 file:@"WFTemporaryFileManager.m" lineNumber:380 description:{@"Invalid parameter not satisfying: %@", @"directory"}];

LABEL_3:
  v10 = [v9 URLByAppendingPathComponent:v7 isDirectory:1];
  if (!v10)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = 0;
  v12 = [v11 createDirectoryAtURL:v10 withIntermediateDirectories:0 attributes:0 error:&v21];
  v13 = v21;

  if (v12)
  {
LABEL_9:
    v17 = v10;
    goto LABEL_12;
  }

  v14 = [v13 domain];
  if ([v14 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v15 = [v13 code];

    if (v15 == 516)
    {
      v16 = [a1 createUniqueDirectoryInDirectory:v9];
      v17 = [a1 createTemporaryDirectoryWithFilename:v7 inDirectory:v16];

      goto LABEL_12;
    }
  }

  else
  {
  }

  v17 = 0;
LABEL_12:

  return v17;
}

+ (id)proposedSharedTemporaryFileURLForFilename:(id)a3 isDirectory:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 sharedTemporaryDirectoryURL];
  v8 = [a1 proposedFileURLForFilename:v6 inDirectory:v7 isDirectory:v4];

  return v8;
}

+ (id)proposedTemporaryFileURLForFilename:(id)a3 isDirectory:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 temporaryDirectoryURL];
  v8 = [a1 proposedFileURLForFilename:v6 inDirectory:v7 isDirectory:v4];

  return v8;
}

+ (id)proposedFileURLForFilename:(id)a3 atTheRootOfDirectory:(id)a4 isDirectory:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"WFTemporaryFileManager.m" lineNumber:335 description:{@"Invalid parameter not satisfying: %@", @"filename"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v30 = [MEMORY[0x277CCA890] currentHandler];
  [v30 handleFailureInMethod:a2 object:a1 file:@"WFTemporaryFileManager.m" lineNumber:336 description:{@"Invalid parameter not satisfying: %@", @"directory"}];

LABEL_3:
  v31 = a2;
  v32 = a1;
  v12 = [v11 URLByAppendingPathComponent:v9 isDirectory:v5];
  if (v12)
  {
    v13 = v12;
    v14 = 2;
    do
    {
      v15 = [MEMORY[0x277CCAA00] defaultManager];
      v16 = [v13 path];
      v17 = [v15 fileExistsAtPath:v16];

      if (!v17)
      {
        goto LABEL_13;
      }

      v18 = v11;
      v19 = v9;
      if (v11)
      {
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v23 = [MEMORY[0x277CCA890] currentHandler];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSURL * _Nonnull WFFileURLByAppendingIterationCount(NSURL * _Nonnull __strong, NSString * _Nonnull __strong, BOOL, NSUInteger)"}];
        [v23 handleFailureInFunction:v24 file:@"WFTemporaryFileManager.m" lineNumber:296 description:{@"Invalid parameter not satisfying: %@", @"directory"}];

        if (!v9)
        {
LABEL_11:
          v25 = [MEMORY[0x277CCA890] currentHandler];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSURL * _Nonnull WFFileURLByAppendingIterationCount(NSURL * _Nonnull __strong, NSString * _Nonnull __strong, BOOL, NSUInteger)"}];
          [v25 handleFailureInFunction:v26 file:@"WFTemporaryFileManager.m" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"filename"}];
        }
      }

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"-%lu", v14];
      v21 = [v19 wf_filenameTruncatedToMaximumLengthWithSuffix:v20];
      v22 = [v18 URLByAppendingPathComponent:v21 isDirectory:v5];

      ++v14;
      v13 = v22;
    }

    while (v22);
  }

  v27 = [MEMORY[0x277CCA890] currentHandler];
  [v27 handleFailureInMethod:v31 object:v32 file:@"WFTemporaryFileManager.m" lineNumber:346 description:@"fileURL should not be nil"];

  v13 = 0;
LABEL_13:

  return v13;
}

+ (id)proposedFileURLForFilename:(id)a3 inDirectory:(id)a4 isDirectory:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"WFTemporaryFileManager.m" lineNumber:321 description:{@"Invalid parameter not satisfying: %@", @"filename"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_10:
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"WFTemporaryFileManager.m" lineNumber:322 description:{@"Invalid parameter not satisfying: %@", @"directory"}];

    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_3:
  v12 = [v11 URLByAppendingPathComponent:v9 isDirectory:v5];
  if (v12)
  {
    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [v12 path];
    v15 = [v13 fileExistsAtPath:v14];

    if (v15)
    {
      v16 = [a1 createUniqueDirectoryInDirectory:v11];
      v17 = [v16 URLByAppendingPathComponent:v9 isDirectory:v5];

      v12 = v17;
    }
  }

  return v12;
}

+ (id)createUniqueDirectoryInDirectory:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"WFTemporaryFileManager.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"directory"}];
  }

  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];

  v8 = [v5 URLByAppendingPathComponent:v7 isDirectory:1];
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = 0;
  v10 = [v9 createDirectoryAtURL:v8 withIntermediateDirectories:0 attributes:0 error:&v16];
  v11 = v16;

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v13 = getWFTemporaryFileManagerLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = "+[WFTemporaryFileManager createUniqueDirectoryInDirectory:]";
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_21E1BD000, v13, OS_LOG_TYPE_ERROR, "%s Failed to create unique directory (%@): %@", buf, 0x20u);
    }

    v12 = 0;
  }

  return v12;
}

+ (void)markDirectoryAsPurgeableAtURL:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a3 fileSystemRepresentation];
  v14 = 73733;
  v4 = open(v3, 0);
  if (v4 < 0)
  {
    v8 = getWFFilesLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = __error();
      v13 = strerror(*v12);
      *buf = 136315650;
      v16 = "+[WFTemporaryFileManager markDirectoryAsPurgeableAtURL:]";
      v17 = 2080;
      v18 = v3;
      v19 = 2080;
      v20 = v13;
      v11 = "%s Could not get file descriptor to %s with error: %s";
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  v5 = v4;
  v6 = ffsctl(v4, 0xC0084A44uLL, &v14, 0);
  v7 = getWFFilesLogObject();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = __error();
      v10 = strerror(*v9);
      *buf = 136315650;
      v16 = "+[WFTemporaryFileManager markDirectoryAsPurgeableAtURL:]";
      v17 = 2080;
      v18 = v3;
      v19 = 2080;
      v20 = v10;
      v11 = "%s Failed to mark %s as purgeable with error: %s";
LABEL_7:
      _os_log_impl(&dword_21E1BD000, v8, OS_LOG_TYPE_ERROR, v11, buf, 0x20u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v16 = "+[WFTemporaryFileManager markDirectoryAsPurgeableAtURL:]";
    v17 = 2080;
    v18 = v3;
    _os_log_impl(&dword_21E1BD000, v8, OS_LOG_TYPE_DEBUG, "%s Marked shared temp directory %s as purgeable", buf, 0x16u);
  }

  close(v5);
}

+ (void)configureBackupFlagAtURL:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"WFTemporaryFileManager.m" lineNumber:221 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  v21 = 0;
  v6 = *MEMORY[0x277CBE878];
  v20 = 0;
  v7 = [v5 getResourceValue:&v21 forKey:v6 error:&v20];
  v8 = v21;
  v9 = v20;
  if ((v7 & 1) == 0)
  {
    v13 = getWFTemporaryFileManagerLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "+[WFTemporaryFileManager configureBackupFlagAtURL:]";
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_21E1BD000, v13, OS_LOG_TYPE_ERROR, "%s Error checking backup flag at %@: %@", buf, 0x20u);
    }

    goto LABEL_14;
  }

  if (([v8 BOOLValue] & 1) == 0)
  {
    v19 = v9;
    v10 = [v5 setResourceValue:MEMORY[0x277CBEC38] forKey:v6 error:&v19];
    v11 = v19;

    v12 = getWFTemporaryFileManagerLogObject();
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v23 = "+[WFTemporaryFileManager configureBackupFlagAtURL:]";
        v24 = 2112;
        v25 = v5;
        v14 = "%s Set backup flag at %@";
        v15 = v13;
        v16 = OS_LOG_TYPE_INFO;
        v17 = 22;
LABEL_12:
        _os_log_impl(&dword_21E1BD000, v15, v16, v14, buf, v17);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "+[WFTemporaryFileManager configureBackupFlagAtURL:]";
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = v11;
      v14 = "%s Error setting backup flag at %@: %@";
      v15 = v13;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 32;
      goto LABEL_12;
    }

    v9 = v11;
LABEL_14:
  }
}

+ (void)configureFileProtectionAtPath:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"WFTemporaryFileManager.m" lineNumber:202 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v6 = getWFFilesLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v23 = "+[WFTemporaryFileManager configureFileProtectionAtPath:]";
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_21E1BD000, v6, OS_LOG_TYPE_DEBUG, "%s Configuring file protection at path: %@", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = 0;
  v8 = [v7 attributesOfItemAtPath:v5 error:&v19];
  v9 = v19;
  if (v9)
  {
    v10 = v9;
    v11 = getWFFilesLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "+[WFTemporaryFileManager configureFileProtectionAtPath:]";
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_21E1BD000, v11, OS_LOG_TYPE_ERROR, "%s Failed to read attributes of path %@: %@", buf, 0x20u);
    }
  }

  else
  {
    v12 = *MEMORY[0x277CCA1B0];
    v13 = [v8 objectForKey:*MEMORY[0x277CCA1B0]];
    v11 = v13;
    if (v13 && (v14 = *MEMORY[0x277CCA1A0], ([v13 isEqualToString:*MEMORY[0x277CCA1A0]]& 1) == 0))
    {
      v20 = v12;
      v21 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v18 = 0;
      [v7 setAttributes:v15 ofItemAtPath:v5 error:&v18];
      v10 = v18;

      if (v10)
      {
        v16 = getWFFilesLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v23 = "+[WFTemporaryFileManager configureFileProtectionAtPath:]";
          v24 = 2112;
          v25 = v10;
          _os_log_impl(&dword_21E1BD000, v16, OS_LOG_TYPE_ERROR, "%s Failed to set file protection attributes: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }
}

uint64_t __47__WFTemporaryFileManager_temporaryDirectoryURL__block_invoke_75(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [temporaryDirectoryURL_URL path];
  [v2 configureFileProtectionAtPath:v3];

  [*(a1 + 32) configureBackupFlagAtURL:temporaryDirectoryURL_URL];
  v4 = *(a1 + 32);
  v5 = temporaryDirectoryURL_URL;

  return [v4 markDirectoryAsPurgeableAtURL:v5];
}

+ (id)sharedShortcutsAppGroupDirectoryURL
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.is.workflow.shortcuts"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v8 = 0;
    v4 = [a1 wf_uncachedContainerURLForSecurityApplicationGroupIdentifier:@"group.is.workflow.shortcuts" error:&v8];
    v5 = v8;
    if (!v4)
    {
      v6 = getWFTemporaryFileManagerLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "+[WFTemporaryFileManager sharedShortcutsAppGroupDirectoryURL]";
        v11 = 2114;
        v12 = v5;
        _os_log_impl(&dword_21E1BD000, v6, OS_LOG_TYPE_ERROR, "%s sharedShortcutsAppGroupDirectoryURL should not be nil: %{public}@", buf, 0x16u);
      }

      v4 = 0;
    }
  }

  return v4;
}

+ (id)wf_uncachedContainerURLForSecurityApplicationGroupIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![v6 length])
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"WFTemporaryFileManager.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"groupIdentifier.length"}];
  }

  [v6 UTF8String];
  v7 = container_create_or_lookup_path_for_current_user();
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v7 isDirectory:1 relativeToURL:0];
    free(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end