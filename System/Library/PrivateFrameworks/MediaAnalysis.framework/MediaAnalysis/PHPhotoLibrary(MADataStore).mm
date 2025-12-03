@interface PHPhotoLibrary(MADataStore)
- (id)mad_fetchRequest;
- (uint64_t)mad_checkCoreDataErrorIndicatorFileExistence;
- (uint64_t)mad_clearCoreDataErrorIndicatorFile;
- (uint64_t)mad_performAnalysisDataStoreChanges:()MADataStore error:;
- (void)mad_createCoreDataErrorIndicatorFileForError:()MADataStore;
- (void)mad_handleCoreDataError:()MADataStore;
@end

@implementation PHPhotoLibrary(MADataStore)

- (uint64_t)mad_checkCoreDataErrorIndicatorFileExistence
{
  v18 = *MEMORY[0x1E69E9840];
  vcp_mediaAnalysisDirectory = [self vcp_mediaAnalysisDirectory];
  v2 = vcp_mediaAnalysisDirectory;
  if (vcp_mediaAnalysisDirectory)
  {
    v3 = [vcp_mediaAnalysisDirectory stringByAppendingPathComponent:@"coredata_error.plist"];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [defaultManager fileExistsAtPath:v3];

    if (v5)
    {
      v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:0];
      v13 = 0;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v6 error:&v13];
      v8 = v13;
      v9 = MediaAnalysisLogLevel();
      if (v8)
      {
        if (v9 >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v15 = v6;
          v16 = 2112;
          v17 = v8;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD] Failed to read CoreData error indicator file at %@ - %@", buf, 0x16u);
        }
      }

      else if (v9 >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v7 objectForKeyedSubscript:@"timestamp"];
        v11 = [v7 objectForKeyedSubscript:@"error"];
        *buf = 138412546;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MACD] Detected CoreData error indicator file created at %@ with error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD] Unable to determine directory for CoreData error indicator file", buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)mad_createCoreDataErrorIndicatorFileForError:()MADataStore
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  vcp_mediaAnalysisDirectory = [self vcp_mediaAnalysisDirectory];
  if (vcp_mediaAnalysisDirectory)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if ([defaultManager fileExistsAtPath:vcp_mediaAnalysisDirectory])
    {
      v7 = 0;
    }

    else
    {
      v28 = *MEMORY[0x1E696A370];
      v8 = [MEMORY[0x1E696AD98] numberWithShort:493];
      v29[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v19 = 0;
      v10 = [defaultManager createDirectoryAtPath:vcp_mediaAnalysisDirectory withIntermediateDirectories:1 attributes:v9 error:&v19];
      v7 = v19;

      if ((v10 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v21 = v7;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD] Failed to create directory for CoreData error indicator file - %@", buf, 0xCu);
        }

        goto LABEL_16;
      }
    }

    v26[0] = @"timestamp";
    v11 = [MEMORY[0x1E695DF00] now];
    v26[1] = @"error";
    v27[0] = v11;
    v12 = [v4 description];
    v27[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

    v14 = [vcp_mediaAnalysisDirectory stringByAppendingPathComponent:@"coredata_error.plist"];
    v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14 isDirectory:0];
    v18 = 0;
    v16 = [v13 writeToURL:v15 error:&v18];
    v17 = v18;
    if ((v16 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD] Failed to write %@ to %@: %@", buf, 0x20u);
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MACD] Created CoreData error indicator file at %@", buf, 0xCu);
    }

LABEL_16:
    goto LABEL_17;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD] Unable to determine directory for CoreData error indicator file", buf, 2u);
  }

LABEL_17:
}

- (void)mad_handleCoreDataError:()MADataStore
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  userInfo = [v4 userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E695D488]];

  if (v6)
  {
    intValue = [v6 intValue];
    if ([objc_opt_class() mad_requiresRebuildForCoreDataError:intValue])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        [PHPhotoLibrary(MADataStore) mad_handleCoreDataError:intValue];
      }

      [self mad_createCoreDataErrorIndicatorFileForError:v4];
      v8 = [MADPhotosDataStoreClient dataStoreFileSizeInBytesForPhotoLibrary:self];
      v9 = +[VCPMADCoreAnalyticsManager sharedManager];
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{5 * (v8 / 0x500000), @"DatabaseSize"}];
      v14[0] = v10;
      v14[1] = MEMORY[0x1E695E118];
      v13[1] = @"IsDatabaseRebuilt";
      v13[2] = @"PhotoLibraryScale";
      v14[2] = @"U";
      v13[3] = @"RebuiltErrorCode";
      v11 = [MEMORY[0x1E696AD98] numberWithInt:intValue];
      v14[3] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
      [v9 sendEvent:@"com.apple.mediaanalysisd.DatabaseInformation" withAnalytics:v12];

      exit(1);
    }
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MACD] Encountered non-sqlite error %@, skip handling", buf, 0xCu);
  }
}

- (uint64_t)mad_clearCoreDataErrorIndicatorFile
{
  v15 = *MEMORY[0x1E69E9840];
  vcp_mediaAnalysisDirectory = [self vcp_mediaAnalysisDirectory];
  v2 = vcp_mediaAnalysisDirectory;
  if (vcp_mediaAnalysisDirectory)
  {
    v3 = [vcp_mediaAnalysisDirectory stringByAppendingPathComponent:@"coredata_error.plist"];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [defaultManager fileExistsAtPath:v3];

    if (v5)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v10 = 0;
      v7 = [defaultManager2 removeItemAtPath:v3 error:&v10];
      v8 = v10;

      if ((v7 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v12 = v3;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD] Failed to remove CoreData error indicator file at %@ - %@", buf, 0x16u);
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD] Unable to determine directory for CoreData error indicator file", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)mad_fetchRequest
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MADPhotosDataStoreClient sharedContextForPhotoLibrary:self];
  if (v2)
  {
    v3 = [MADFetchRequest fetchRequestWithManagedObjectContext:v2];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      photoLibraryURL = [self photoLibraryURL];
      path = [photoLibraryURL path];
      v11 = 138412290;
      v12 = path;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD] Failed to create fetch request for photo library %@", &v11, 0xCu);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      photoLibraryURL2 = [self photoLibraryURL];
      path2 = [photoLibraryURL2 path];
      v11 = 138412290;
      v12 = path2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD] Failed to obtain shared MOC for photo library %@", &v11, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (uint64_t)mad_performAnalysisDataStoreChanges:()MADataStore error:
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = mach_continuous_time();
  v8 = [MADPhotosDataStoreClient sharedContextForPhotoLibrary:self];
  if (v8)
  {
    v9 = [MADChangeRequest changeRequestWithManagedObjectContext:v8];
    if (v9)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __73__PHPhotoLibrary_MADataStore__mad_performAnalysisDataStoreChanges_error___block_invoke;
      v21[3] = &unk_1E834FC88;
      v25 = v7;
      v24 = v6;
      v22 = v9;
      selfCopy = self;
      v20 = 0;
      v10 = [v8 mad_performAndSaveChanges:v21 error:&v20];
      v11 = v20;
      if ((v10 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          photoLibraryURL = [self photoLibraryURL];
          path = [photoLibraryURL path];
          *buf = 138412546;
          v27 = path;
          v28 = 2112;
          v29 = v11;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD] Failed to perform and save changes on photo library %@: %@", buf, 0x16u);
        }

        [self mad_handleCoreDataError:v11];
        if (a4)
        {
          v14 = v11;
          *a4 = v11;
        }
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        photoLibraryURL2 = [self photoLibraryURL];
        path2 = [photoLibraryURL2 path];
        *buf = 138412290;
        v27 = path2;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD] Failed to create change request for photo library %@", buf, 0xCu);
      }

      v10 = 1;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      photoLibraryURL3 = [self photoLibraryURL];
      path3 = [photoLibraryURL3 path];
      *buf = 138412290;
      v27 = path3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD] Failed to obtain shared MOC for photo library %@", buf, 0xCu);
    }

    v10 = 1;
  }

  return v10;
}

- (void)mad_handleCoreDataError:()MADataStore .cold.1(int a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "[MACD] Encountered error with code %d, requiring database rebuild", v1, 8u);
}

@end