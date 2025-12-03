@interface JFXMediaURLManager
+ (BOOL)ODRAssetsAreEmbedded;
+ (BOOL)_createDirectoryAtURL:(id)l error:(id *)error;
+ (id)_capturedPhotoURL:(id *)l isHEIF:(BOOL)f;
+ (id)_photoExportURL:(id *)l isHEIF:(BOOL)f;
+ (id)_tempFileURLWithDirectory:(id)directory file:(id)file error:(id *)error;
+ (id)_temporaryPhotoURL:(id *)l fileName:(id)name;
+ (id)audioRecordingURL:(id *)l;
+ (id)cachedExportFileURLWithError:(id *)error;
+ (id)capturedPhotoURL:(id *)l isHEIF:(BOOL)f;
+ (id)photoExportURL:(id *)l isHEIF:(BOOL)f;
+ (id)sharedInstance;
+ (id)temporaryPhotoURL:(id *)l fileName:(id)name;
+ (id)videoExportURL:(id *)l;
+ (id)videoRecordingFolderURL:(id *)l;
+ (void)_cleanupDirectory:(id)directory;
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

+ (id)videoRecordingFolderURL:(id *)l
{
  v5 = [self _tempFileURLWithDirectory:@"VideoRecordings" file:@"foo.bar" error:l];
  uRLByDeletingLastPathComponent = [v5 URLByDeletingLastPathComponent];

  if (uRLByDeletingLastPathComponent && !*l && (![self _createDirectoryAtURL:uRLByDeletingLastPathComponent error:l] || *l))
  {

    uRLByDeletingLastPathComponent = 0;
  }

  return uRLByDeletingLastPathComponent;
}

+ (id)videoExportURL:(id *)l
{
  v5 = [self _videoExportURL:?];
  v6 = v5;
  if (v5)
  {
    if (!*l)
    {
      uRLByDeletingLastPathComponent = [v5 URLByDeletingLastPathComponent];
      v8 = [self _createDirectoryAtURL:uRLByDeletingLastPathComponent error:l];

      if (!v8 || *l)
      {

        v6 = 0;
      }
    }
  }

  return v6;
}

+ (id)capturedPhotoURL:(id *)l isHEIF:(BOOL)f
{
  v6 = [self _capturedPhotoURL:l isHEIF:f];
  v7 = v6;
  if (v6)
  {
    if (!*l)
    {
      uRLByDeletingLastPathComponent = [v6 URLByDeletingLastPathComponent];
      v9 = [self _createDirectoryAtURL:uRLByDeletingLastPathComponent error:l];

      if (!v9 || *l)
      {

        v7 = 0;
      }
    }
  }

  return v7;
}

+ (id)photoExportURL:(id *)l isHEIF:(BOOL)f
{
  v6 = [self _photoExportURL:l isHEIF:f];
  v7 = v6;
  if (v6)
  {
    if (!*l)
    {
      uRLByDeletingLastPathComponent = [v6 URLByDeletingLastPathComponent];
      v9 = [self _createDirectoryAtURL:uRLByDeletingLastPathComponent error:l];

      if (!v9 || *l)
      {

        v7 = 0;
      }
    }
  }

  return v7;
}

+ (id)temporaryPhotoURL:(id *)l fileName:(id)name
{
  v6 = [self _temporaryPhotoURL:l fileName:name];
  v7 = v6;
  if (v6)
  {
    if (!*l)
    {
      uRLByDeletingLastPathComponent = [v6 URLByDeletingLastPathComponent];
      v9 = [self _createDirectoryAtURL:uRLByDeletingLastPathComponent error:l];

      if (!v9 || *l)
      {

        v7 = 0;
      }
    }
  }

  return v7;
}

+ (id)audioRecordingURL:(id *)l
{
  v5 = [self _audioRecordingURL:?];
  v6 = v5;
  if (v5)
  {
    if (!*l)
    {
      uRLByDeletingLastPathComponent = [v5 URLByDeletingLastPathComponent];
      v8 = [self _createDirectoryAtURL:uRLByDeletingLastPathComponent error:l];

      if (!v8 || *l)
      {

        v6 = 0;
      }
    }
  }

  return v6;
}

+ (id)cachedExportFileURLWithError:(id *)error
{
  v5 = +[JFXMediaURLManager sharedInstance];
  urlSource = [v5 urlSource];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = +[JFXMediaURLManager sharedInstance];
    urlSource2 = [v8 urlSource];
    v10 = [urlSource2 cachedExportFileURLWithError:error];

    if (!v10)
    {
      goto LABEL_12;
    }

    v20 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v10 path];
    v13 = [defaultManager fileExistsAtPath:path isDirectory:&v20];

    if (v13 && v20 == 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [defaultManager2 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:error];

    if (!v10 || error && *error)
    {
      goto LABEL_12;
    }

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v17 = [v10 URLByAppendingPathComponent:bundleIdentifier isDirectory:1];

    v10 = [v17 URLByAppendingPathComponent:@"Exports" isDirectory:1];
  }

  if ([self _createDirectoryAtURL:v10 error:error])
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
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = NSTemporaryDirectory();
  v5 = [defaultManager contentsOfDirectoryAtPath:v4 error:0];

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
        v12 = [self cachedExportFileURLWithError:&v19];
        v13 = v19;
        lastPathComponent = [v12 lastPathComponent];

        if (([v11 isEqualToString:lastPathComponent] & 1) == 0)
        {
          v15 = MEMORY[0x277CBEBC0];
          v16 = NSTemporaryDirectory();
          v17 = [v16 stringByAppendingPathComponent:v11];
          v18 = [v15 fileURLWithPath:v17];
          [self _cleanupDirectory:v18];
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
  [self jfx_cleanupOldProjects];
  v10 = 0;
  v3 = [self videoRecordingFolderURL:&v10];
  if (v3)
  {
    [self _cleanupDirectory:v3];
  }

  v4 = [self _capturedPhotoURL:0 isHEIF:0];
  v5 = v4;
  if (v4)
  {
    uRLByDeletingLastPathComponent = [v4 URLByDeletingLastPathComponent];
    [self _cleanupDirectory:uRLByDeletingLastPathComponent];
  }

  v7 = [self _audioRecordingURL:0];
  v8 = v7;
  if (v7)
  {
    uRLByDeletingLastPathComponent2 = [v7 URLByDeletingLastPathComponent];
    [self _cleanupDirectory:uRLByDeletingLastPathComponent2];
  }
}

+ (id)_temporaryPhotoURL:(id *)l fileName:(id)name
{
  nameCopy = name;
  v7 = nameCopy;
  v8 = @"photo";
  if (nameCopy && [(__CFString *)nameCopy length])
  {
    v8 = v7;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.png", v8];
  v10 = [self _tempFileURLWithDirectory:@"TemporaryPhotos" file:v9 error:l];

  return v10;
}

+ (id)_capturedPhotoURL:(id *)l isHEIF:(BOOL)f
{
  v6 = @"jpg";
  if (f)
  {
    v6 = @"heic";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"photo.%@", v6];
  v8 = [self _tempFileURLWithDirectory:@"CapturedPhotos" file:v7 error:l];

  return v8;
}

+ (id)_photoExportURL:(id *)l isHEIF:(BOOL)f
{
  v6 = @"jpg";
  if (f)
  {
    v6 = @"heic";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"photo.%@", v6];
  v8 = [self _tempFileURLWithDirectory:@"Exports" file:v7 error:l];

  return v8;
}

+ (void)_cleanupDirectory:(id)directory
{
  v35 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v29 = 0;
  v5 = [defaultManager contentsOfDirectoryAtURL:directoryCopy includingPropertiesForKeys:0 options:0 error:&v29];
  v6 = v29;

  if (v6)
  {
    domain = [v6 domain];
    if ([domain isEqual:*MEMORY[0x277CCA050]])
    {
      code = [v6 code];

      if (code == 260)
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
        lastPathComponent = [directoryCopy lastPathComponent];
        v11 = [v5 count];
        *buf = 138412546;
        v31 = lastPathComponent;
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
      v23 = directoryCopy;
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
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          v24 = v17;
          v20 = [defaultManager2 removeItemAtURL:v18 error:&v24];
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
      directoryCopy = v23;
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_26:
}

+ (id)_tempFileURLWithDirectory:(id)directory file:(id)file error:(id *)error
{
  directoryCopy = directory;
  fileCopy = file;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:error];

  if (!v10 || error && *error)
  {
    v11 = 0;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v14 = [v10 URLByAppendingPathComponent:bundleIdentifier isDirectory:1];

    v15 = [v14 URLByAppendingPathComponent:directoryCopy isDirectory:1];

    v16 = [v15 URLByAppendingPathComponent:fileCopy isDirectory:0];

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    path = [v16 path];
    v19 = [defaultManager2 fileExistsAtPath:path];

    if (v19)
    {
      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager3 removeItemAtURL:v16 error:0];
    }

    v10 = v16;

    v11 = v10;
  }

  return v11;
}

+ (BOOL)_createDirectoryAtURL:(id)l error:(id *)error
{
  v5 = MEMORY[0x277CCAA00];
  lCopy = l;
  defaultManager = [v5 defaultManager];
  LOBYTE(error) = [defaultManager createDirectoryAtURL:lCopy withIntermediateDirectories:1 attributes:0 error:error];

  return error;
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