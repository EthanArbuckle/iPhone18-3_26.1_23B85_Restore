@interface DEDCloudKitExtensionsUtil
+ (id)copyFiles:(id)files toDirectory:(id)directory;
+ (id)getAllFilesInSessionDirectoryForSessionID:(id)d;
+ (id)getCompletedExtensionFromAllExtensions:(id)extensions;
+ (id)getOutputDirectories:(id)directories withProcessingMap:(id)map progressHandler:(id)handler;
+ (id)getVerifiedExtensionDirectoriesFromCompletedExtensions:(id)extensions forSession:(id)session;
+ (void)updateELSSnapshotStatus:(unint64_t)status;
@end

@implementation DEDCloudKitExtensionsUtil

+ (id)getCompletedExtensionFromAllExtensions:(id)extensions
{
  v18 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = extensionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        stringValue = [*(*(&v13 + 1) + 8 * i) stringValue];
        [v4 addObject:stringValue];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)getVerifiedExtensionDirectoriesFromCompletedExtensions:(id)extensions forSession:(id)session
{
  v29 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  sessionCopy = session;
  v7 = objc_opt_new();
  v22 = sessionCopy;
  identifier = [sessionCopy identifier];
  v9 = [v7 directoryForBugSessionIdentifier:identifier];

  v21 = v9;
  v10 = [MEMORY[0x277D051E0] lsDir:v9];
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v15 = *MEMORY[0x277D07700];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        lastPathComponent = [v17 lastPathComponent];
        if ([extensionsCopy containsObject:lastPathComponent] && (objc_msgSend(MEMORY[0x277D051E0], "isValidDirectory:", v17) & 1) != 0)
        {
          [v23 setValue:v17 forKey:lastPathComponent];
        }

        else
        {
          [MEMORY[0x277D07730] createLoggingEventWith:v15 postfix:lastPathComponent];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)getOutputDirectories:(id)directories withProcessingMap:(id)map progressHandler:(id)handler
{
  v53 = *MEMORY[0x277D85DE8];
  directoriesCopy = directories;
  mapCopy = map;
  handlerCopy = handler;
  v7 = +[DEDConfiguration sharedInstance];
  v25 = os_log_create([v7 loggingSubsystem], "ded-cloudkit-finisher");

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (handlerCopy)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = directoriesCopy;
    v31 = [obj countByEnumeratingWithState:&v47 objects:v52 count:{16, v25, dictionary}];
    if (v31)
    {
      v8 = 0;
      v29 = *v48;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v48 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v47 + 1) + 8 * i);
          v34 = [obj objectForKey:v10];
          v33 = [mapCopy objectForKey:v10];
          v11 = [v33 objectForKey:@"package"];
          if ([v11 isEqualToString:@"parent-directory"])
          {
            if ([MEMORY[0x277D051E0] isValidDirectory:v34])
            {
              v8 += [MEMORY[0x277D051A8] directorySizeOf:v34];
            }
          }

          else
          {
            v12 = [MEMORY[0x277D051E0] lsDir:v34];
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v13 = [v12 countByEnumeratingWithState:&v43 objects:v51 count:16];
            if (v13)
            {
              v14 = *v44;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v44 != v14)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v16 = *(*(&v43 + 1) + 8 * j);
                  if ([MEMORY[0x277D051E0] isValidDirectory:v16])
                  {
                    v8 += [MEMORY[0x277D051A8] directorySizeOf:v16];
                  }
                }

                v13 = [v12 countByEnumeratingWithState:&v43 objects:v51 count:16];
              }

              while (v13);
            }
          }
        }

        v31 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v31);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __84__DEDCloudKitExtensionsUtil_getOutputDirectories_withProcessingMap_progressHandler___block_invoke;
  v35[3] = &unk_278F671B8;
  v17 = mapCopy;
  v36 = v17;
  v18 = v25;
  v37 = v18;
  v19 = handlerCopy;
  v39 = v19;
  v40 = v42;
  v41 = v8;
  v20 = dictionary;
  v38 = v20;
  [directoriesCopy enumerateKeysAndObjectsUsingBlock:v35];
  v21 = v38;
  v22 = v20;

  _Block_object_dispose(v42, 8);
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __84__DEDCloudKitExtensionsUtil_getOutputDirectories_withProcessingMap_progressHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v36 = a3;
  v38 = v5;
  v32 = [*(a1 + 32) objectForKey:v5];
  v31 = [v32 objectForKey:@"package"];
  v41 = [v32 objectForKey:@"compression"];
  v39 = [MEMORY[0x277CBEB18] array];
  v40 = [v31 isEqualToString:@"flat-directories"];
  if (v40)
  {
    v6 = [MEMORY[0x277D051E0] lsDir:v36];
  }

  else
  {
    v56[0] = v36;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v7)
  {
    v8 = *v48;
    v35 = *MEMORY[0x277D076F8];
    v34 = *MEMORY[0x277D076F0];
    v33 = *MEMORY[0x277D076E8];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v47 + 1) + 8 * i);
        v11 = *(a1 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v10;
          _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "Processing file/directory (%{public}@)", buf, 0xCu);
        }

        if (v40 && ([MEMORY[0x277D051E0] isValidDirectory:v10] & 1) == 0)
        {
          v20 = *(a1 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v10;
            *&buf[12] = 2112;
            *&buf[14] = v38;
            _os_log_impl(&dword_248AD7000, v20, OS_LOG_TYPE_DEFAULT, "Skipping file compression when flatterned directory requested (%{public}@) (%@)", buf, 0x16u);
          }

          goto LABEL_21;
        }

        if (v41 && ([v41 BOOLValue] & 1) == 0)
        {
          v21 = *(a1 + 40);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v10;
            *&buf[12] = 2112;
            *&buf[14] = v38;
            _os_log_impl(&dword_248AD7000, v21, OS_LOG_TYPE_DEFAULT, "Skipping file/directory compression when not requested (%{public}@) (%@)", buf, 0x16u);
          }

LABEL_21:
          [v39 addObject:v10];
          continue;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v54 = 0;
        v12 = [v36 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", v38, v12];
        [MEMORY[0x277D07730] createLoggingEventWith:v35 postfix:v38];
        v14 = *(a1 + 40);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v51 = 138543362;
          v52 = v10;
          _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_DEFAULT, "Compressing folder... (%{public}@)", v51, 0xCu);
        }

        v15 = *(a1 + 56);
        if (v15)
        {
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __84__DEDCloudKitExtensionsUtil_getOutputDirectories_withProcessingMap_progressHandler___block_invoke_34;
          v42[3] = &unk_278F67190;
          v44 = buf;
          v16 = v15;
          v17 = *(a1 + 64);
          v18 = *(a1 + 72);
          v43 = v16;
          v45 = v17;
          v46 = v18;
          v19 = MEMORY[0x24C1E5320](v42);
        }

        else
        {
          v19 = 0;
        }

        if ([MEMORY[0x277D051E0] isValidDirectory:v10])
        {
          [MEMORY[0x277D051A8] archiveDirectoryAt:v10 deleteOriginal:1 progressHandler:v19];
        }

        else
        {
          [MEMORY[0x277D051A8] archiveFile:v10 deleteOriginal:1 progressHandler:v19];
        }
        v22 = ;
        *(*(*(a1 + 64) + 8) + 24) += *(*&buf[8] + 24);
        v23 = *(a1 + 40);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v51 = 0;
          _os_log_impl(&dword_248AD7000, v23, OS_LOG_TYPE_DEFAULT, "Finished compressing", v51, 2u);
        }

        if (v22)
        {
          [v39 addObject:v22];
          [MEMORY[0x277D07730] createLoggingEventWith:v34 postfix:v13];
        }

        else
        {
          [MEMORY[0x277D07730] createLoggingEventWith:v33 postfix:v13];
          v24 = *(a1 + 40);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *v51 = 138543362;
            v52 = v10;
            _os_log_error_impl(&dword_248AD7000, v24, OS_LOG_TYPE_ERROR, "Error compressing: %{public}@", v51, 0xCu);
          }
        }

        _Block_object_dispose(buf, 8);
      }

      v7 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v7);
  }

  v25 = [v39 count];
  v26 = *(a1 + 40);
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (v25)
  {
    if (v27)
    {
      v28 = v26;
      v29 = [v39 count];
      *buf = 134218242;
      *&buf[4] = v29;
      *&buf[12] = 2112;
      *&buf[14] = v38;
      _os_log_impl(&dword_248AD7000, v28, OS_LOG_TYPE_DEFAULT, "Adding (%lu) files to %@ for upload", buf, 0x16u);
    }

    [*(a1 + 48) setValue:v39 forKey:v38];
  }

  else if (v27)
  {
    *buf = 138412290;
    *&buf[4] = v38;
    _os_log_impl(&dword_248AD7000, v26, OS_LOG_TYPE_DEFAULT, "No files to %@ for upload", buf, 0xCu);
  }

  v30 = *MEMORY[0x277D85DE8];
}

+ (void)updateELSSnapshotStatus:(unint64_t)status
{
  mEMORY[0x277D07738] = [MEMORY[0x277D07738] sharedManager];
  snapshot = [mEMORY[0x277D07738] snapshot];

  [snapshot setStatus:status];
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D076B8], 0}];
  [snapshot refreshKeyPaths:v5];
}

+ (id)getAllFilesInSessionDirectoryForSessionID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_opt_new();
  v6 = [v5 directoryForBugSessionIdentifier:dCopy];

  v7 = [MEMORY[0x277D051E0] lsDir:v6];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (([MEMORY[0x277D051E0] isValidDirectory:v12] & 1) == 0)
        {
          [v4 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)copyFiles:(id)files toDirectory:(id)directory
{
  v18 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  directoryCopy = directory;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [filesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(filesCopy);
        }

        [MEMORY[0x277D051E0] copyFile:*(*(&v13 + 1) + 8 * v10++) toDir:directoryCopy];
      }

      while (v8 != v10);
      v8 = [filesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
  return directoryCopy;
}

@end