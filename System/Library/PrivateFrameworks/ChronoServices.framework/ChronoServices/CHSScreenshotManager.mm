@interface CHSScreenshotManager
+ (CHSScreenshotManager)sharedManager;
+ (NSString)basePath;
- (CHSScreenshotManager)initWithDirectory:(id)directory fileManager:(id)manager;
- (id)URLForWidget:(id)widget metrics:(id)metrics attributes:(id)attributes createIntermediateDirectories:(BOOL)directories;
- (id)_baseFileNameFromWidget:(uint64_t)widget;
- (id)allCachedSnapshotURLs;
- (id)baseURL;
- (id)baseURLForWidget:(id)widget;
- (id)finalFileNameForWidget:(void *)widget metrics:(void *)metrics attributes:;
- (id)indexingDirectoryNameForWidget:(uint64_t)widget;
- (id)snapshotContextForWidget:(id)widget metrics:(id)metrics attributes:(id)attributes;
- (void)allCachedSnapshotURLs;
- (void)deleteAllCachedScreenshots;
@end

@implementation CHSScreenshotManager

+ (CHSScreenshotManager)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CHSScreenshotManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken[0] != -1)
  {
    dispatch_once(sharedManager_onceToken, block);
  }

  v2 = sharedManager_shared;

  return v2;
}

void __37__CHSScreenshotManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) basePath];
  if (v1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/private%@", v1];
    v3 = [v2 stringByAppendingPathComponent:@"com.apple.chrono"];

    v4 = [v3 stringByAppendingPathComponent:@"snapshot-cache"];

    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:0];

    v7 = [CHSScreenshotManager alloc];
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [(CHSScreenshotManager *)v7 initWithDirectory:v5 fileManager:v8];
    v10 = sharedManager_shared;
    sharedManager_shared = v9;
  }

  else
  {
    v11 = CHSLogClientSnapshots();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195EB2000, v11, OS_LOG_TYPE_DEFAULT, "Unable to resolve base directory for snapshots.", buf, 2u);
    }

    v12 = sharedManager_shared;
    sharedManager_shared = 0;
  }
}

+ (NSString)basePath
{
  v7 = *MEMORY[0x1E69E9840];
  started = sysdir_start_search_path_enumeration_private();
  MEMORY[0x19A8C5CD0](started, v6);
  v3 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:4];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CHSScreenshotManager)initWithDirectory:(id)directory fileManager:(id)manager
{
  directoryCopy = directory;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = CHSScreenshotManager;
  v9 = [(CHSScreenshotManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_threadSafe_fileManager, manager);
    objc_storeStrong(&v10->_baseURL, directory);
  }

  return v10;
}

- (void)deleteAllCachedScreenshots
{
  v14 = *MEMORY[0x1E69E9840];
  threadSafe_fileManager = self->_threadSafe_fileManager;
  baseURL = self->_baseURL;
  v11 = 0;
  [(NSFileManager *)threadSafe_fileManager removeItemAtURL:baseURL error:&v11];
  v5 = v11;
  v6 = CHSLogClientSnapshots();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"success";
    if (v5)
    {
      v7 = v5;
    }

    *buf = 138543362;
    v13 = v7;
    _os_log_impl(&dword_195EB2000, v6, OS_LOG_TYPE_DEFAULT, "Clearing all cached client-side snapshots: %{public}@", buf, 0xCu);
  }

  v8 = self->_threadSafe_fileManager;
  path = [(NSURL *)self->_baseURL path];
  [(NSFileManager *)v8 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:0];

  v10 = *MEMORY[0x1E69E9840];
}

- (id)allCachedSnapshotURLs
{
  v26[1] = *MEMORY[0x1E69E9840];
  baseURL = self->_baseURL;
  threadSafe_fileManager = self->_threadSafe_fileManager;
  v26[0] = *MEMORY[0x1E695DA98];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v5 = [(NSFileManager *)threadSafe_fileManager enumeratorAtURL:baseURL includingPropertiesForKeys:v4 options:0 errorHandler:&__block_literal_global_5];

  v6 = [MEMORY[0x1E695DFA8] set];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v8)
  {
    v9 = *v20;
    v10 = *MEMORY[0x1E695DB78];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v18 = 0;
        [v12 getResourceValue:&v18 forKey:v10 error:0];
        v13 = v18;
        if (([v13 BOOLValue] & 1) == 0)
        {
          v14 = CHSLogClientSnapshots();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            path = [v12 path];
            [(CHSScreenshotManager *)path allCachedSnapshotURLs:buf];
          }

          [v6 addObject:v12];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t __45__CHSScreenshotManager_allCachedSnapshotURLs__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = CHSLogClientSnapshots();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __45__CHSScreenshotManager_allCachedSnapshotURLs__block_invoke_cold_1(v3, v4);
  }

  return 1;
}

- (id)snapshotContextForWidget:(id)widget metrics:(id)metrics attributes:(id)attributes
{
  attributesCopy = attributes;
  v9 = [(CHSScreenshotManager *)self URLForWidget:widget metrics:metrics attributes:attributesCopy createIntermediateDirectories:0];
  v10 = [[CHSSnapshotContext alloc] initWithURL:v9 attributes:attributesCopy fileManager:self->_threadSafe_fileManager];

  return v10;
}

- (id)baseURLForWidget:(id)widget
{
  widgetCopy = widget;
  baseURL = self->_baseURL;
  v6 = [(CHSScreenshotManager *)self indexingDirectoryNameForWidget:widgetCopy];
  v7 = [(NSURL *)baseURL URLByAppendingPathComponent:v6 isDirectory:1];

  v8 = [(CHSScreenshotManager *)self _baseFileNameFromWidget:widgetCopy];
  v9 = [v7 URLByAppendingPathComponent:v8];

  return v9;
}

- (id)indexingDirectoryNameForWidget:(uint64_t)widget
{
  v3 = a2;
  v4 = v3;
  if (widget)
  {
    kind = [v3 kind];
    uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v7 = [kind stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

    v8 = [v7 length];
    if (v8 <= 50)
    {
      v9 = 50;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 rangeOfComposedCharacterSequencesForRange:{(v9 - 50), v8 - (v9 - 50)}];
    v12 = [v7 substringWithRange:{v10, v11}];
    extensionIdentity = [v4 extensionIdentity];
    extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
    v15 = [extensionBundleIdentifier stringByAppendingPathComponent:v12];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_baseFileNameFromWidget:(uint64_t)widget
{
  v3 = a2;
  v4 = v3;
  if (widget)
  {
    v5 = CHSWidgetFamilyDescription([v3 family]);
    intentReference = [v4 intentReference];
    if ([intentReference stableHash])
    {
      v7 = MEMORY[0x1E696AEC0];
      intentReference2 = [v4 intentReference];
      v9 = [v7 stringWithFormat:@"%lld--", objc_msgSend(intentReference2, "stableHash")];
    }

    else
    {
      v9 = &stru_1F0A56DE8;
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@--%@", v5, v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)baseURL
{
  v2 = [(NSURL *)self->_baseURL copy];

  return v2;
}

- (id)URLForWidget:(id)widget metrics:(id)metrics attributes:(id)attributes createIntermediateDirectories:(BOOL)directories
{
  directoriesCopy = directories;
  widgetCopy = widget;
  metricsCopy = metrics;
  attributesCopy = attributes;
  baseURL = self->_baseURL;
  v14 = [(CHSScreenshotManager *)self indexingDirectoryNameForWidget:widgetCopy];
  v15 = [(NSURL *)baseURL URLByAppendingPathComponent:v14 isDirectory:1];

  if (directoriesCopy)
  {
    threadSafe_fileManager = self->_threadSafe_fileManager;
    path = [v15 path];
    v22 = 0;
    [(NSFileManager *)threadSafe_fileManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v22];
  }

  v18 = [(CHSScreenshotManager *)self finalFileNameForWidget:widgetCopy metrics:metricsCopy attributes:attributesCopy];
  v19 = [v15 URLByAppendingPathComponent:v18 isDirectory:0];
  v20 = [v19 URLByAppendingPathExtension:@"snapshot"];

  return v20;
}

- (id)finalFileNameForWidget:(void *)widget metrics:(void *)metrics attributes:
{
  v7 = a2;
  widgetCopy = widget;
  metricsCopy = metrics;
  v22 = widgetCopy;
  v23 = v7;
  if (self)
  {
    v10 = [(CHSScreenshotManager *)self _baseFileNameFromWidget:v7];
    _stringKeyRepresentation = [widgetCopy _stringKeyRepresentation];
    v12 = CHSScreenshotColorSchemeDescription([metricsCopy colorScheme]);
    if ([metricsCopy allowsPrivacySensitiveContent])
    {
      userWantsWidgetDataWhenPasscodeLocked = [metricsCopy userWantsWidgetDataWhenPasscodeLocked];
      v14 = @".private";
      if (userWantsWidgetDataWhenPasscodeLocked)
      {
        v14 = @".private-exception";
      }

      v15 = v14;
    }

    else
    {
      v15 = &stru_1F0A56DE8;
    }

    additionalSettingsContext = [metricsCopy additionalSettingsContext];
    if (additionalSettingsContext)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"--%@", additionalSettingsContext];
    }

    else
    {
      v17 = &stru_1F0A56DE8;
    }

    tintParameters = [metricsCopy tintParameters];
    v19 = [tintParameters hash];

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@--%lu.%@%@", v10, _stringKeyRepresentation, v17, v19, v12, v15, widgetCopy, v23];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)allCachedSnapshotURLs
{
  *buf = 138543362;
  *a3 = self;
  _os_log_debug_impl(&dword_195EB2000, log, OS_LOG_TYPE_DEBUG, "Existing client snapshot path: %{public}@", buf, 0xCu);
}

void __45__CHSScreenshotManager_allCachedSnapshotURLs__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_195EB2000, a2, OS_LOG_TYPE_ERROR, "Unexpected error iterating directories for client snapshots: error = %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end