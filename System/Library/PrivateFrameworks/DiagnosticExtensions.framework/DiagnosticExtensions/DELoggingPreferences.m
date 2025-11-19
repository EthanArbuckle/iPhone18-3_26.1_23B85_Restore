@interface DELoggingPreferences
+ (id)_subsystemPayloadForURL:(id)a3 error:(id *)a4;
+ (id)combinedLoggingPayloadForURLs:(id)a3 error:(id *)a4;
+ (id)loggingPayloadForURL:(id)a3 error:(id *)a4;
+ (id)managedLoggingProfilesDirectory;
+ (id)managedLoggingProfilesDirectoryForSessionIdentifier:(id)a3 createIfNeeded:(BOOL)a4 error:(id *)a5;
+ (id)removeLoggingProfileForSessionIdentifier:(id)a3 extensionIdentifier:(id)a4 error:(id *)a5;
+ (unint64_t)numberOfManagedLoggingPreferences;
+ (void)installLoggingProfile:(id)a3 sessionIdentifier:(id)a4 extensionIdentifier:(id)a5 error:(id *)a6;
@end

@implementation DELoggingPreferences

+ (void)installLoggingProfile:(id)a3 sessionIdentifier:(id)a4 extensionIdentifier:(id)a5 error:(id *)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = [a1 managedLoggingProfilesDirectoryForSessionIdentifier:a4 createIfNeeded:1 error:a6];
  v13 = [v12 URLByAppendingPathComponent:v11];

  v14 = [v13 URLByAppendingPathExtension:@"plist"];

  [v10 writeToURL:v14 error:a6];
  if (!*a6)
  {
    OSLogInstallProfilePayload();
    if (*a6)
    {
      v15 = +[DELogging fwHandle];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v18 = 138543362;
        v19 = v14;
        _os_log_impl(&dword_248AB3000, v15, OS_LOG_TYPE_INFO, "Failed to install logging preference payload. Deleting [%{public}@]", &v18, 0xCu);
      }

      v16 = [MEMORY[0x277CCAA00] defaultManager];
      [v16 removeItemAtURL:v14 error:0];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)removeLoggingProfileForSessionIdentifier:(id)a3 extensionIdentifier:(id)a4 error:(id *)a5
{
  v29[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [a1 managedLoggingProfilesDirectoryForSessionIdentifier:a3 createIfNeeded:0 error:0];
  v10 = [v9 URLByAppendingPathComponent:v8];

  v11 = [v10 URLByAppendingPathExtension:@"plist"];

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [v11 path];
  v14 = [v12 fileExistsAtPath:v13];

  v15 = 0;
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v11];
    if (v15)
    {
      OSLogRemoveProfilePayload();
      if (!*a5)
      {
        v16 = [MEMORY[0x277CCAA00] defaultManager];
        [v16 removeItemAtURL:v11 error:a5];

        v17 = [DEUtils lsDir:v9];
        v18 = [v17 count];

        if (!v18)
        {
          v19 = +[DELogging fwHandle];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v26 = 138543362;
            v27 = v9;
            _os_log_impl(&dword_248AB3000, v19, OS_LOG_TYPE_INFO, "Deleting [%{public}@]", &v26, 0xCu);
          }

          v20 = [MEMORY[0x277CCAA00] defaultManager];
          [v20 removeItemAtURL:v9 error:a5];
        }
      }

      v21 = v15;
    }

    else
    {
      v22 = MEMORY[0x277CCA9B8];
      v28 = @"url";
      v29[0] = v11;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      *a5 = [v22 errorWithDomain:@"DEExtensionErrorDomain" code:3 userInfo:v23];
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)loggingPayloadForURL:(id)a3 error:(id *)a4
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 _subsystemPayloadForURL:a3 error:a4];
  v5 = v4;
  if (v4)
  {
    v9 = @"Subsystems";
    v10[0] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)combinedLoggingPayloadForURLs:(id)a3 error:(id *)a4
{
  v26 = a4;
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v31 = 0;
        v10 = [a1 _subsystemPayloadForURL:v9 error:{&v31, v26}];
        v11 = v31;
        if (v10)
        {
          v12 = [v10 allKeys];
          v13 = [v12 firstObject];
          v14 = [v10 objectForKeyedSubscript:v13];
          v15 = [v10 allKeys];
          v16 = [v15 firstObject];
          [v29 setObject:v14 forKeyedSubscript:v16];
        }

        else
        {
          [v27 addObject:v11];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v6);
  }

  if (v26 && [v27 count])
  {
    v17 = MEMORY[0x277CCA9B8];
    v38 = @"errors";
    v18 = [MEMORY[0x277CBEA60] arrayWithArray:v27];
    v39 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *v26 = [v17 errorWithDomain:@"DEExtensionErrorDomain" code:1 userInfo:v19];
  }

  v20 = [v29 allKeys];
  v21 = [v20 count];

  if (v21)
  {
    v36 = @"Subsystems";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v29];
    v37 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)_subsystemPayloadForURL:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v5];
  if (v6)
  {
    v7 = [v5 URLByDeletingPathExtension];
    v8 = [v7 lastPathComponent];

    if (v8)
    {
      v15 = v8;
      v16 = v6;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    }

    else
    {
      if (a4)
      {
        v11 = MEMORY[0x277CCA9B8];
        v17 = @"url";
        v18 = v5;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        *a4 = [v11 errorWithDomain:@"DEExtensionErrorDomain" code:4 userInfo:v12];
      }

      v9 = 0;
    }

    goto LABEL_9;
  }

  if (a4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v19 = @"url";
    v20[0] = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [v10 errorWithDomain:@"DEExtensionErrorDomain" code:2 userInfo:v8];
    *a4 = v9 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (unint64_t)numberOfManagedLoggingPreferences
{
  v3 = objc_autoreleasePoolPush();
  v4 = [a1 managedLoggingProfilesDirectory];
  v5 = [DEUtils findAllItems:v4 includeDirs:0];
  v6 = [v5 count];

  objc_autoreleasePoolPop(v3);
  return v6;
}

+ (id)managedLoggingProfilesDirectory
{
  v2 = [DEUtils applicationSupportDirectoryForApp:@"com.apple.diagnosticextensions"];
  v3 = [v2 URLByAppendingPathComponent:@"LoggingProfiles"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = +[DELogging fwHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      +[(DELoggingPreferences *)v5];
    }

    v6 = MEMORY[0x277CBEBC0];
    v7 = NSHomeDirectory();
    v4 = [v6 fileURLWithPath:v7 isDirectory:1];
  }

  return v4;
}

+ (id)managedLoggingProfilesDirectoryForSessionIdentifier:(id)a3 createIfNeeded:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [a1 managedLoggingProfilesDirectory];
  v10 = [v9 URLByAppendingPathComponent:v8];

  if (v6)
  {
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [v10 path];
    v13 = [v11 fileExistsAtPath:v12];

    if ((v13 & 1) == 0)
    {
      v14 = [MEMORY[0x277CCAA00] defaultManager];
      [v14 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:a5];
    }
  }

  return v10;
}

@end