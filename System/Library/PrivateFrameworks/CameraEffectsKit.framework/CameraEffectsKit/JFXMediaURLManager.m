@interface JFXMediaURLManager
+ (BOOL)ODRAssetsAreEmbedded;
+ (BOOL)_createDirectoryAtURL:(id)a3 error:(id *)a4;
+ (id)_capturedPhotoURL:(id *)a3 isHEIF:(BOOL)a4;
+ (id)_photoExportURL:(id *)a3 isHEIF:(BOOL)a4;
+ (id)_tempFileURLWithDirectory:(id)a3 file:(id)a4 error:(id *)a5;
+ (id)_temporaryPhotoURL:(id *)a3 fileName:(id)a4;
+ (id)audioRecordingURL:(id *)a3;
+ (id)cachedExportFileURLWithError:(id *)a3;
+ (id)capturedPhotoURL:(id *)a3 isHEIF:(BOOL)a4;
+ (id)photoExportURL:(id *)a3 isHEIF:(BOOL)a4;
+ (id)sharedInstance;
+ (id)temporaryPhotoURL:(id *)a3 fileName:(id)a4;
+ (id)videoExportURL:(id *)a3;
+ (id)videoRecordingFolderURL:(id *)a3;
+ (void)_cleanupDirectory:(id)a3;
+ (void)cleanupTemporaryDirectories;
+ (void)jfx_cleanupOldProjects;
- (JTFileURLSource)urlSource;
@end

@implementation JFXMediaURLManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_11 != -1)
  {
    +[JFXMediaURLManager sharedInstance];
  }

  v3 = sharedInstance_fileManager;

  return v3;
}

uint64_t __36__JFXMediaURLManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(JFXMediaURLManager);
  v1 = sharedInstance_fileManager;
  sharedInstance_fileManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)videoRecordingFolderURL:(id *)a3
{
  v5 = [a1 _tempFileURLWithDirectory:@"VideoRecordings" file:@"foo.bar" error:a3];
  v6 = [v5 URLByDeletingLastPathComponent];

  if (v6 && !*a3 && (![a1 _createDirectoryAtURL:v6 error:a3] || *a3))
  {

    v6 = 0;
  }

  return v6;
}

+ (id)videoExportURL:(id *)a3
{
  v5 = [a1 _videoExportURL:?];
  v6 = v5;
  if (v5)
  {
    if (!*a3)
    {
      v7 = [v5 URLByDeletingLastPathComponent];
      v8 = [a1 _createDirectoryAtURL:v7 error:a3];

      if (!v8 || *a3)
      {

        v6 = 0;
      }
    }
  }

  return v6;
}

+ (id)capturedPhotoURL:(id *)a3 isHEIF:(BOOL)a4
{
  v6 = [a1 _capturedPhotoURL:a3 isHEIF:a4];
  v7 = v6;
  if (v6)
  {
    if (!*a3)
    {
      v8 = [v6 URLByDeletingLastPathComponent];
      v9 = [a1 _createDirectoryAtURL:v8 error:a3];

      if (!v9 || *a3)
      {

        v7 = 0;
      }
    }
  }

  return v7;
}

+ (id)photoExportURL:(id *)a3 isHEIF:(BOOL)a4
{
  v6 = [a1 _photoExportURL:a3 isHEIF:a4];
  v7 = v6;
  if (v6)
  {
    if (!*a3)
    {
      v8 = [v6 URLByDeletingLastPathComponent];
      v9 = [a1 _createDirectoryAtURL:v8 error:a3];

      if (!v9 || *a3)
      {

        v7 = 0;
      }
    }
  }

  return v7;
}

+ (id)temporaryPhotoURL:(id *)a3 fileName:(id)a4
{
  v6 = [a1 _temporaryPhotoURL:a3 fileName:a4];
  v7 = v6;
  if (v6)
  {
    if (!*a3)
    {
      v8 = [v6 URLByDeletingLastPathComponent];
      v9 = [a1 _createDirectoryAtURL:v8 error:a3];

      if (!v9 || *a3)
      {

        v7 = 0;
      }
    }
  }

  return v7;
}

+ (id)audioRecordingURL:(id *)a3
{
  v5 = [a1 _audioRecordingURL:?];
  v6 = v5;
  if (v5)
  {
    if (!*a3)
    {
      v7 = [v5 URLByDeletingLastPathComponent];
      v8 = [a1 _createDirectoryAtURL:v7 error:a3];

      if (!v8 || *a3)
      {

        v6 = 0;
      }
    }
  }

  return v6;
}

+ (id)cachedExportFileURLWithError:(id *)a3
{
  v5 = +[JFXMediaURLManager sharedInstance];
  v6 = [v5 urlSource];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = +[JFXMediaURLManager sharedInstance];
    v9 = [v8 urlSource];
    v10 = [v9 cachedExportFileURLWithError:a3];

    if (!v10)
    {
      goto LABEL_12;
    }

    v20 = 0;
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [v10 path];
    v13 = [v11 fileExistsAtPath:v12 isDirectory:&v20];

    if (v13 && v20 == 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v14 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:a3];

    if (!v10 || a3 && *a3)
    {
      goto LABEL_12;
    }

    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [v15 bundleIdentifier];

    v17 = [v10 URLByAppendingPathComponent:v16 isDirectory:1];

    v10 = [v17 URLByAppendingPathComponent:@"Exports" isDirectory:1];
  }

  if ([a1 _createDirectoryAtURL:v10 error:a3])
  {
LABEL_11:
    v10 = v10;
    v18 = v10;
    goto LABEL_13;
  }

LABEL_12:
  v18 = 0;
LABEL_13:

  return v18;
}

+ (void)jfx_cleanupOldProjects
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = NSTemporaryDirectory();
  v5 = [v3 contentsOfDirectoryAtPath:v4 error:0];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v19 = 0;
        v12 = [a1 cachedExportFileURLWithError:&v19];
        v13 = v19;
        v14 = [v12 lastPathComponent];

        if (([v11 isEqualToString:v14] & 1) == 0)
        {
          v15 = MEMORY[0x277CBEBC0];
          v16 = NSTemporaryDirectory();
          v17 = [v16 stringByAppendingPathComponent:v11];
          v18 = [v15 fileURLWithPath:v17];
          [a1 _cleanupDirectory:v18];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }
}

+ (void)cleanupTemporaryDirectories
{
  [a1 jfx_cleanupOldProjects];
  v10 = 0;
  v3 = [a1 videoRecordingFolderURL:&v10];
  if (v3)
  {
    [a1 _cleanupDirectory:v3];
  }

  v4 = [a1 _capturedPhotoURL:0 isHEIF:0];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 URLByDeletingLastPathComponent];
    [a1 _cleanupDirectory:v6];
  }

  v7 = [a1 _audioRecordingURL:0];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 URLByDeletingLastPathComponent];
    [a1 _cleanupDirectory:v9];
  }
}

+ (id)_temporaryPhotoURL:(id *)a3 fileName:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = @"photo";
  if (v6 && [(__CFString *)v6 length])
  {
    v8 = v7;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.png", v8];
  v10 = [a1 _tempFileURLWithDirectory:@"TemporaryPhotos" file:v9 error:a3];

  return v10;
}

+ (id)_capturedPhotoURL:(id *)a3 isHEIF:(BOOL)a4
{
  v6 = @"jpg";
  if (a4)
  {
    v6 = @"heic";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"photo.%@", v6];
  v8 = [a1 _tempFileURLWithDirectory:@"CapturedPhotos" file:v7 error:a3];

  return v8;
}

+ (id)_photoExportURL:(id *)a3 isHEIF:(BOOL)a4
{
  v6 = @"jpg";
  if (a4)
  {
    v6 = @"heic";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"photo.%@", v6];
  v8 = [a1 _tempFileURLWithDirectory:@"Exports" file:v7 error:a3];

  return v8;
}

+ (void)_cleanupDirectory:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v29 = 0;
  v5 = [v4 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:0 error:&v29];
  v6 = v29;

  if (v6)
  {
    v7 = [v6 domain];
    if ([v7 isEqual:*MEMORY[0x277CCA050]])
    {
      v8 = [v6 code];

      if (v8 == 260)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v12 = JFXLog_file();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(JFXMediaURLManager *)v5 _cleanupDirectory:v6, v12];
    }
  }

  else
  {
    if ([v5 count])
    {
      v9 = JFXLog_modelAssetManagement();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v3 lastPathComponent];
        v11 = [v5 count];
        *buf = 138412546;
        v31 = v10;
        v32 = 1024;
        LODWORD(v33) = v11;
        _os_log_impl(&dword_242A3B000, v9, OS_LOG_TYPE_DEFAULT, "clean up directory %@: %u items", buf, 0x12u);
      }
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v22 = v5;
      v23 = v3;
      v6 = 0;
      v15 = *v26;
      do
      {
        v16 = 0;
        v17 = v6;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v25 + 1) + 8 * v16);
          v19 = [MEMORY[0x277CCAA00] defaultManager];
          v24 = v17;
          v20 = [v19 removeItemAtURL:v18 error:&v24];
          v6 = v24;

          if ((v20 & 1) == 0)
          {
            v21 = JFXLog_file();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v31 = v18;
              v32 = 2112;
              v33 = v6;
              _os_log_debug_impl(&dword_242A3B000, v21, OS_LOG_TYPE_DEBUG, "Error removing %@ %@", buf, 0x16u);
            }
          }

          ++v16;
          v17 = v6;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v14);
      v5 = v22;
      v3 = v23;
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_26:
}

+ (id)_tempFileURLWithDirectory:(id)a3 file:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v9 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:a5];

  if (!v10 || a5 && *a5)
  {
    v11 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [v12 bundleIdentifier];

    v14 = [v10 URLByAppendingPathComponent:v13 isDirectory:1];

    v15 = [v14 URLByAppendingPathComponent:v7 isDirectory:1];

    v16 = [v15 URLByAppendingPathComponent:v8 isDirectory:0];

    v17 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = [v16 path];
    v19 = [v17 fileExistsAtPath:v18];

    if (v19)
    {
      v20 = [MEMORY[0x277CCAA00] defaultManager];
      [v20 removeItemAtURL:v16 error:0];
    }

    v10 = v16;

    v11 = v10;
  }

  return v11;
}

+ (BOOL)_createDirectoryAtURL:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CCAA00];
  v6 = a3;
  v7 = [v5 defaultManager];
  LOBYTE(a4) = [v7 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:a4];

  return a4;
}

+ (BOOL)ODRAssetsAreEmbedded
{
  if (ODRAssetsAreEmbedded_onceToken != -1)
  {
    +[JFXMediaURLManager ODRAssetsAreEmbedded];
  }

  return ODRAssetsAreEmbedded_isEmbedded;
}

void __42__JFXMediaURLManager_ODRAssetsAreEmbedded__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundlePath];
  v2 = [v1 stringByAppendingPathComponent:@"OnDemandResources"];

  v4 = 0;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(v1) = [v3 fileExistsAtPath:v2 isDirectory:&v4];

  if (v1 && v4 == 1)
  {
    ODRAssetsAreEmbedded_isEmbedded = 1;
  }
}

- (JTFileURLSource)urlSource
{
  WeakRetained = objc_loadWeakRetained(&self->_urlSource);

  return WeakRetained;
}

+ (void)_cleanupDirectory:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_242A3B000, log, OS_LOG_TYPE_DEBUG, "Error getting temporary directory contents %@ %@", &v3, 0x16u);
}

@end