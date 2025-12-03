@interface DOCIconService
+ (DOCIconService)shared;
+ (id)DOCLocalProviderIcon;
+ (id)SFSymbolImageProviderIcon:(id)icon;
- (DOCIconService)init;
- (id)_fetchIconFromDiskCacheForProviderID:(id)d size:(int64_t)size;
- (id)_fetchIconFromIconService:(id)service size:(int64_t)size triggerDiskUpdate:(BOOL)update;
- (id)_urlForCacheSize:(int64_t)size;
- (id)_urlForCacheSize:(int64_t)size providerBundleID:(id)d;
- (id)iconForFileProvider:(id)provider size:(int64_t)size;
- (void)_loadIconsFromDiskForSize:(int64_t)size fileManager:(id)manager;
- (void)_persistCacheForSize:(int64_t)size bundles:(id)bundles fileManager:(id)manager;
- (void)_persistIconsOnDisk;
- (void)_updateFileProvidersIcon:(id)icon skipSize:(int64_t)size;
- (void)loadIconsFromDiskIfNeeded;
@end

@implementation DOCIconService

+ (DOCIconService)shared
{
  if (shared_onceToken_1 != -1)
  {
    +[DOCIconService shared];
  }

  v3 = shared__shared;

  return v3;
}

uint64_t __24__DOCIconService_shared__block_invoke()
{
  shared__shared = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (DOCIconService)init
{
  v23.receiver = self;
  v23.super_class = DOCIconService;
  v2 = [(DOCIconService *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("com.apple.DocumentManager.DOCIconService.ioQueue", v4);
    ioQueue = v2->_ioQueue;
    v2->_ioQueue = v5;

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.DocumentManager"];
    v9 = [v8 URLByAppendingPathComponent:@"IconService"];
    cacheFolderURL = v2->_cacheFolderURL;
    v2->_cacheFolderURL = v9;

    v11 = objc_opt_new();
    v12 = objc_opt_new();
    v13 = [MEMORY[0x1E696AD98] numberWithInt:0];
    [(NSDictionary *)v11 setObject:v12 forKeyedSubscript:v13];

    v14 = objc_opt_new();
    v15 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [(NSDictionary *)v11 setObject:v14 forKeyedSubscript:v15];

    documentSourceIconCache = v2->_documentSourceIconCache;
    v2->_documentSourceIconCache = v11;
    v17 = v11;

    v18 = objc_opt_new();
    updatedProviderDomains = v2->_updatedProviderDomains;
    v2->_updatedProviderDomains = v18;

    v20 = objc_opt_new();
    providersToPersist = v2->_providersToPersist;
    v2->_providersToPersist = v20;
  }

  return v2;
}

- (void)loadIconsFromDiskIfNeeded
{
  objc_initWeak(&location, self);
  ioQueue = self->_ioQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__DOCIconService_loadIconsFromDiskIfNeeded__block_invoke;
  v4[3] = &unk_1E8782CC8;
  objc_copyWeak(&v5, &location);
  dispatch_async(ioQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __43__DOCIconService_loadIconsFromDiskIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = WeakRetained;
    objc_sync_enter(v2);
    v3 = v2[48];
    v2[48] = 1;
    objc_sync_exit(v2);

    WeakRetained = v5;
    if ((v3 & 1) == 0)
    {
      v4 = objc_opt_new();
      [v2 _loadIconsFromDiskForSize:0 fileManager:v4];
      [v2 _loadIconsFromDiskForSize:1 fileManager:v4];

      WeakRetained = v5;
    }
  }
}

+ (id)DOCLocalProviderIcon
{
  _symbolImageDefaultConfiguration = [self _symbolImageDefaultConfiguration];
  v3 = MEMORY[0x1E69DCAB8];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  doc_symbolName = [currentDevice doc_symbolName];
  v6 = [v3 _systemImageNamed:doc_symbolName withConfiguration:_symbolImageDefaultConfiguration];

  return v6;
}

+ (id)SFSymbolImageProviderIcon:(id)icon
{
  iconCopy = icon;
  identifier = [iconCopy identifier];
  if (SFSymbolImageProviderIcon__onceToken != -1)
  {
    +[DOCIconService SFSymbolImageProviderIcon:];
  }

  v5 = SFSymbolImageProviderIcon__cachedImageByDomainID;
  objc_sync_enter(v5);
  v6 = [SFSymbolImageProviderIcon__cachedImageByDomainID objectForKeyedSubscript:identifier];
  objc_sync_exit(v5);

  if (!v6)
  {
    extensionBundleURL = [iconCopy extensionBundleURL];
    v8 = [MEMORY[0x1E696AAE8] bundleWithURL:extensionBundleURL];
    v9 = [extensionBundleURL URLByAppendingPathComponent:@"Info.plist"];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v9];
    v11 = [v10 valueForKeyPath:@"CFBundleIcons.CFBundlePrimaryIcon.CFBundleSymbolName"];
    v16 = v8;
    if (v11)
    {
      v6 = [MEMORY[0x1E69DCAB8] imageNamed:v11 inBundle:v8];
      if (!v6)
      {
        v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:v11];
      }
    }

    else
    {
      v6 = 0;
    }

    v12 = SFSymbolImageProviderIcon__cachedImageByDomainID;
    objc_sync_enter(v12);
    null = v6;
    if (!v6)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    [SFSymbolImageProviderIcon__cachedImageByDomainID setObject:null forKeyedSubscript:identifier];
    if (!v6)
    {
    }

    objc_sync_exit(v12);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __44__DOCIconService_SFSymbolImageProviderIcon___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = SFSymbolImageProviderIcon__cachedImageByDomainID;
  SFSymbolImageProviderIcon__cachedImageByDomainID = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_urlForCacheSize:(int64_t)size providerBundleID:(id)d
{
  dCopy = d;
  v7 = [(DOCIconService *)self _urlForCacheSize:size];
  v8 = [v7 URLByAppendingPathComponent:dCopy];

  return v8;
}

- (id)_urlForCacheSize:(int64_t)size
{
  if (size == 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"DOCIconService.m" lineNumber:159 description:{@"[DOCIconServcie _urlForCacheSize:] received invalid or unknown DOCDocumentSourceIconSize value: %d", 2}];

    v6 = 0;
  }

  else
  {
    v4 = @"small";
    if (size)
    {
      v4 = 0;
    }

    if (size == 1)
    {
      v5 = @"large";
    }

    else
    {
      v5 = v4;
    }

    v6 = [(NSURL *)self->_cacheFolderURL URLByAppendingPathComponent:v5];
  }

  return v6;
}

- (void)_loadIconsFromDiskForSize:(int64_t)size fileManager:(id)manager
{
  v56 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  if (size >= 2)
  {
    [DOCIconService _loadIconsFromDiskForSize:fileManager:];
  }

  sizeCopy = size;
  v45 = [(DOCIconService *)self _urlForCacheSize:size];
  if (v45)
  {
    v6 = [managerCopy enumeratorAtURL:v45 includingPropertiesForKeys:0 options:1 errorHandler:0];
    v46 = objc_opt_new();
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    documentSourceIconCache = selfCopy->_documentSourceIconCache;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:sizeCopy];
    v11 = [(NSDictionary *)documentSourceIconCache objectForKeyedSubscript:v10];
    allKeys = [v11 allKeys];
    v13 = [v8 initWithArray:allKeys];

    objc_sync_exit(selfCopy);
    v43 = selfCopy;

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v6;
    v14 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v14)
    {
      v15 = *v50;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v50 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v49 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          lastPathComponent = [v17 lastPathComponent];
          if ([v13 containsObject:lastPathComponent])
          {
            v20 = *MEMORY[0x1E699A478];
            if (!*MEMORY[0x1E699A478])
            {
              DOCInitLogging();
              v20 = *MEMORY[0x1E699A478];
            }

            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = MEMORY[0x1E696AEC0];
              v22 = MEMORY[0x1E696AD98];
              v23 = v20;
              v24 = [v22 numberWithInteger:sizeCopy];
              v25 = [v21 stringWithFormat:@"[Load-All-Disk] skipping: (%@, size: %@)", lastPathComponent, v24];
              v26 = v25;
              uTF8String = [v25 UTF8String];
              *buf = 136315138;
              v54 = uTF8String;
              _os_log_impl(&dword_1E57D8000, v23, OS_LOG_TYPE_DEFAULT, "[DOCIconServiceLog] %s\n", buf, 0xCu);
            }
          }

          else
          {
            v28 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v17];
            v29 = *MEMORY[0x1E699A478];
            if (!*MEMORY[0x1E699A478])
            {
              DOCInitLogging();
              v29 = *MEMORY[0x1E699A478];
            }

            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = MEMORY[0x1E696AEC0];
              v31 = MEMORY[0x1E696AD98];
              v32 = v29;
              v33 = [v31 numberWithInteger:sizeCopy];
              v34 = [v30 stringWithFormat:@"[Load-All-Disk] loading: (%@, size: %@)", lastPathComponent, v33];
              v35 = v34;
              uTF8String2 = [v34 UTF8String];
              *buf = 136315138;
              v54 = uTF8String2;
              _os_log_impl(&dword_1E57D8000, v32, OS_LOG_TYPE_DEFAULT, "[DOCIconServiceLog] %s\n", buf, 0xCu);
            }

            if (v28 && [v28 length])
            {
              [v46 setObject:v28 forKeyedSubscript:lastPathComponent];
            }
          }

          objc_autoreleasePoolPop(v18);
        }

        v14 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v14);
    }

    v37 = v43;
    objc_sync_enter(v37);
    v38 = v43->_documentSourceIconCache;
    v39 = [MEMORY[0x1E696AD98] numberWithInteger:sizeCopy];
    v40 = [(NSDictionary *)v38 objectForKeyedSubscript:v39];
    [v40 addEntriesFromDictionary:v46];

    objc_sync_exit(v37);
  }

  else
  {
    v41 = MEMORY[0x1E699A450];
    v42 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v42 = *v41;
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [DOCIconService _loadIconsFromDiskForSize:size fileManager:v42];
    }
  }
}

- (void)_persistCacheForSize:(int64_t)size bundles:(id)bundles fileManager:(id)manager
{
  v59 = *MEMORY[0x1E69E9840];
  bundlesCopy = bundles;
  managerCopy = manager;
  if (size >= 2)
  {
    [DOCIconService _persistCacheForSize:bundles:fileManager:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  documentSourceIconCache = selfCopy->_documentSourceIconCache;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:size];
  v11 = [(NSDictionary *)documentSourceIconCache objectForKeyedSubscript:v10];
  v45 = [v11 copy];

  objc_sync_exit(selfCopy);
  sizeCopy = size;
  v46 = [(DOCIconService *)selfCopy _urlForCacheSize:size];
  v53 = 0;
  LOBYTE(v10) = [managerCopy createDirectoryAtURL:v46 withIntermediateDirectories:1 attributes:0 error:&v53];
  v12 = v53;
  if (v10)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = bundlesCopy;
    v13 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (!v13)
    {
      goto LABEL_33;
    }

    v14 = *v50;
    while (1)
    {
      v15 = 0;
      v16 = v12;
      do
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v49 + 1) + 8 * v15);
        v18 = objc_autoreleasePoolPush();
        v19 = *MEMORY[0x1E699A478];
        if (!*MEMORY[0x1E699A478])
        {
          DOCInitLogging();
          v19 = *MEMORY[0x1E699A478];
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = MEMORY[0x1E696AEC0];
          v21 = MEMORY[0x1E696AD98];
          v22 = v19;
          v23 = [v21 numberWithInteger:sizeCopy];
          v24 = [v20 stringWithFormat:@"[SaveToDisk] saving (%@, size: %@)", v17, v23];
          v25 = v24;
          uTF8String = [v24 UTF8String];
          *buf = 136315138;
          v55 = uTF8String;
          _os_log_impl(&dword_1E57D8000, v22, OS_LOG_TYPE_DEFAULT, "[DOCIconServiceLog] %s\n", buf, 0xCu);
        }

        v27 = [v45 objectForKeyedSubscript:v17];
        v28 = [v46 URLByAppendingPathComponent:v17];
        if ([v27 length])
        {
          v48 = v16;
          v29 = [v27 writeToURL:v28 options:0 error:&v48];
          v12 = v48;

          if (v29)
          {
            v47 = 66565;
            v30 = v28;
            v31 = fsctl([v28 fileSystemRepresentation], 0xC0084A44uLL, &v47, 0);
            if (v31)
            {
              v32 = *MEMORY[0x1E699A450];
              if (!*MEMORY[0x1E699A450])
              {
                DOCInitLogging();
                v32 = *MEMORY[0x1E699A450];
              }

              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v55 = v46;
                v56 = 1024;
                LODWORD(v57) = v31;
                v33 = v32;
                v34 = "Unable to make '%@' purgeable: %d";
                v35 = 18;
LABEL_31:
                _os_log_error_impl(&dword_1E57D8000, v33, OS_LOG_TYPE_ERROR, v34, buf, v35);
              }
            }
          }

          else
          {
            v37 = *MEMORY[0x1E699A450];
            if (!*MEMORY[0x1E699A450])
            {
              DOCInitLogging();
              v37 = *MEMORY[0x1E699A450];
            }

            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v55 = v28;
              v56 = 2112;
              v57 = v12;
              v33 = v37;
              v34 = "Unable to cache '%@': %@";
              v35 = 22;
              goto LABEL_31;
            }
          }
        }

        else
        {
          v36 = *MEMORY[0x1E699A450];
          if (!*MEMORY[0x1E699A450])
          {
            DOCInitLogging();
            v36 = *MEMORY[0x1E699A450];
          }

          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v55 = v28;
            v56 = 2112;
            v57 = v16;
            _os_log_error_impl(&dword_1E57D8000, v36, OS_LOG_TYPE_ERROR, "Skipping (data length is 0) write to disk cache '%@': %@", buf, 0x16u);
          }

          v12 = v16;
        }

        objc_autoreleasePoolPop(v18);
        ++v15;
        v16 = v12;
      }

      while (v13 != v15);
      v38 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
      v13 = v38;
      if (!v38)
      {
LABEL_33:

        goto LABEL_38;
      }
    }
  }

  v39 = MEMORY[0x1E699A450];
  v40 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v40 = *v39;
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    [DOCIconService _persistCacheForSize:v46 bundles:v12 fileManager:v40];
  }

LABEL_38:
}

- (void)_persistIconsOnDisk
{
  objc_initWeak(&location, self);
  ioQueue = self->_ioQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__DOCIconService__persistIconsOnDisk__block_invoke;
  v4[3] = &unk_1E8782CC8;
  objc_copyWeak(&v5, &location);
  dispatch_async(ioQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __37__DOCIconService__persistIconsOnDisk__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = WeakRetained;
    objc_sync_enter(v2);
    v3 = [v2[7] copy];
    [v2[7] removeAllObjects];
    objc_sync_exit(v2);

    v4 = objc_opt_new();
    v5 = objc_autoreleasePoolPush();
    [v2 _persistCacheForSize:0 bundles:v3 fileManager:v4];
    objc_autoreleasePoolPop(v5);
    v6 = objc_autoreleasePoolPush();
    [v2 _persistCacheForSize:1 bundles:v3 fileManager:v4];
    objc_autoreleasePoolPop(v6);

    WeakRetained = v7;
  }
}

- (id)_fetchIconFromDiskCacheForProviderID:(id)d size:(int64_t)size
{
  v34 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = [(DOCIconService *)self _urlForCacheSize:size providerBundleID:dCopy];
  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v7];
  v9 = v8;
  if (!v8)
  {
    v21 = MEMORY[0x1E699A478];
    v22 = *MEMORY[0x1E699A478];
    if (!*MEMORY[0x1E699A478])
    {
      DOCInitLogging();
      v22 = *v21;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = MEMORY[0x1E696AEC0];
      v24 = MEMORY[0x1E696AD98];
      v25 = v22;
      v26 = [v24 numberWithInteger:size];
      v27 = [v23 stringWithFormat:@"[Load-One-DISK] did not find in disk cache: (%@, size: %@)", dCopy, v26];
      *buf = 136315138;
      uTF8String = [v27 UTF8String];
      _os_log_impl(&dword_1E57D8000, v25, OS_LOG_TYPE_DEFAULT, "[DOCIconServiceLog] %s\n", buf, 0xCu);
    }

    goto LABEL_17;
  }

  if (![v8 length])
  {

    v28 = MEMORY[0x1E699A478];
    v29 = *MEMORY[0x1E699A478];
    if (!*MEMORY[0x1E699A478])
    {
      DOCInitLogging();
      v29 = *v28;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      [(DOCIconService *)v29 _fetchIconFromDiskCacheForProviderID:size size:dCopy];
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:v7 error:0];

LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v10 = MEMORY[0x1E699A478];
  v11 = *MEMORY[0x1E699A478];
  if (!*MEMORY[0x1E699A478])
  {
    DOCInitLogging();
    v11 = *v10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = MEMORY[0x1E696AD98];
    v14 = v11;
    v15 = [v13 numberWithInteger:size];
    v16 = [v12 stringWithFormat:@"[Load-One-DISK] loaded from disk cache: (%@, size: %@)", dCopy, v15];
    *buf = 136315138;
    uTF8String = [v16 UTF8String];
    _os_log_impl(&dword_1E57D8000, v14, OS_LOG_TYPE_DEFAULT, "[DOCIconServiceLog] %s\n", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  documentSourceIconCache = selfCopy->_documentSourceIconCache;
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:size];
  v20 = [(NSDictionary *)documentSourceIconCache objectForKeyedSubscript:v19];
  [v20 setObject:v9 forKeyedSubscript:dCopy];

  objc_sync_exit(selfCopy);
LABEL_18:

  return v9;
}

- (id)_fetchIconFromIconService:(id)service size:(int64_t)size triggerDiskUpdate:(BOOL)update
{
  updateCopy = update;
  v37 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  if (size >= 2)
  {
    [DOCIconService _fetchIconFromIconService:size:triggerDiskUpdate:];
  }

  genericApplicationIcon = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:serviceCopy];
  if (genericApplicationIcon)
  {
    if (size)
    {
      goto LABEL_5;
    }

LABEL_9:
    v10 = MEMORY[0x1E69A8AA0];
    goto LABEL_10;
  }

  genericApplicationIcon = [MEMORY[0x1E69A8A00] genericApplicationIcon];
  if (!size)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = 0;
  if (size == 2)
  {
    bitmapData = 0;
    goto LABEL_21;
  }

  if (size == 1)
  {
    v10 = MEMORY[0x1E69A8A78];
LABEL_10:
    v9 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*v10];
  }

  [v9 setDrawBorder:1];
  v31 = [genericApplicationIcon prepareImageForDescriptor:v9];
  bitmapData = [v31 bitmapData];
  v11 = MEMORY[0x1E699A478];
  v12 = *MEMORY[0x1E699A478];
  if (!*MEMORY[0x1E699A478])
  {
    DOCInitLogging();
    v12 = *v11;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = MEMORY[0x1E696AD98];
    v15 = v12;
    v16 = [v14 numberWithInteger:size];
    v17 = [v13 stringWithFormat:@"[Load-One-XPC] loading: (%@, size: %@)", serviceCopy, v16];
    *buf = 136315138;
    uTF8String = [v17 UTF8String];
    _os_log_impl(&dword_1E57D8000, v15, OS_LOG_TYPE_DEFAULT, "[DOCIconServiceLog] %s\n", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  documentSourceIconCache = selfCopy->_documentSourceIconCache;
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:size];
  v21 = [(NSDictionary *)documentSourceIconCache objectForKeyedSubscript:v20];
  [v21 setObject:bitmapData forKeyedSubscript:serviceCopy];

  objc_sync_exit(selfCopy);
  if (updateCopy)
  {
    v22 = dispatch_time(0, 60000000000);
    v23 = selfCopy;
    objc_sync_enter(v23);
    ioTimer = v23->_ioTimer;
    if (ioTimer)
    {
      dispatch_source_cancel(ioTimer);
      v25 = v23->_ioTimer;
      v23->_ioTimer = 0;
    }

    [(NSMutableSet *)v23->_providersToPersist addObject:serviceCopy];
    v26 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v23->_ioQueue);
    v27 = v23->_ioTimer;
    v23->_ioTimer = v26;

    objc_sync_exit(v23);
    objc_initWeak(buf, v23);
    v28 = v23->_ioTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __67__DOCIconService__fetchIconFromIconService_size_triggerDiskUpdate___block_invoke;
    handler[3] = &unk_1E8782CC8;
    objc_copyWeak(&v34, buf);
    dispatch_source_set_event_handler(v28, handler);
    dispatch_source_set_timer(v23->_ioTimer, v22, 0xFFFFFFFFFFFFFFFFLL, 0xDF8475800uLL);
    dispatch_resume(v23->_ioTimer);
    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);
  }

LABEL_21:

  return bitmapData;
}

void __67__DOCIconService__fetchIconFromIconService_size_triggerDiskUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = WeakRetained;
    objc_sync_enter(v2);
    dispatch_source_cancel(v2[4]);
    v3 = v2[4];
    v2[4] = 0;

    objc_sync_exit(v2);
    [(dispatch_source_t *)v2 _persistIconsOnDisk];
    WeakRetained = v4;
  }
}

- (void)_updateFileProvidersIcon:(id)icon skipSize:(int64_t)size
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = icon;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v8 = *MEMORY[0x1E699A390];
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      identifier = [v10 identifier];
      v12 = [identifier isEqualToString:v8];

      if (v12)
      {
        break;
      }

      objc_initWeak(&location, self);
      ioQueue = self->_ioQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__DOCIconService__updateFileProvidersIcon_skipSize___block_invoke;
      block[3] = &unk_1E8783988;
      objc_copyWeak(v17, &location);
      v17[1] = size;
      block[4] = v10;
      dispatch_async(ioQueue, block);
      objc_destroyWeak(v17);
      objc_destroyWeak(&location);
      if (v6 == ++v9)
      {
        v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void __52__DOCIconService__updateFileProvidersIcon_skipSize___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v4 = v3;
      if (*(a1 + 48) != v2)
      {
        v5 = [*(a1 + 32) extensionBundleIdentifier];
        v6 = [WeakRetained _fetchIconFromIconService:v5 size:v2 triggerDiskUpdate:1];
      }

      v3 = 0;
      v2 = 1;
    }

    while ((v4 & 1) != 0);
    v7 = WeakRetained;
    objc_sync_enter(v7);
    v8 = v7[5];
    v9 = [*(a1 + 32) extensionBundleIdentifier];
    [v8 addObject:v9];

    objc_sync_exit(v7);
  }
}

- (id)iconForFileProvider:(id)provider size:(int64_t)size
{
  v29[1] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  [(DOCIconService *)self loadIconsFromDiskIfNeeded];
  identifier = [providerCopy identifier];
  v8 = [identifier isEqualToString:*MEMORY[0x1E699A390]];

  if (v8)
  {
    v9 = +[DOCIconService DOCLocalProviderIcon];
  }

  else
  {
    v10 = [DOCIconService SFSymbolImageProviderIcon:providerCopy];
    _symbolImageDefaultConfiguration = [objc_opt_class() _symbolImageDefaultConfiguration];
    v9 = [v10 imageWithConfiguration:_symbolImageDefaultConfiguration];

    if (!v9)
    {
      if (size < 2)
      {
        extensionBundleIdentifier = [providerCopy extensionBundleIdentifier];
        selfCopy = self;
        objc_sync_enter(selfCopy);
        documentSourceIconCache = selfCopy->_documentSourceIconCache;
        v17 = [MEMORY[0x1E696AD98] numberWithInteger:size];
        v18 = [(NSDictionary *)documentSourceIconCache objectForKeyedSubscript:v17];
        v19 = [v18 objectForKeyedSubscript:extensionBundleIdentifier];

        v20 = [(NSMutableSet *)selfCopy->_updatedProviderDomains containsObject:extensionBundleIdentifier];
        if ((v20 & 1) == 0)
        {
          [(NSMutableSet *)selfCopy->_updatedProviderDomains addObject:extensionBundleIdentifier];
        }

        objc_sync_exit(selfCopy);

        if (v19 || ([(DOCIconService *)selfCopy _fetchIconFromDiskCacheForProviderID:extensionBundleIdentifier size:size], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          size = 2;
        }

        else
        {
          v19 = [(DOCIconService *)selfCopy _fetchIconFromIconService:extensionBundleIdentifier size:size triggerDiskUpdate:0];
          v20 = 0;
        }

        v21 = [objc_alloc(MEMORY[0x1E69A8988]) initWithData:v19 uuid:0];
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        traitCollection = [mainScreen traitCollection];
        [traitCollection displayScale];
        v25 = v24;

        v26 = [MEMORY[0x1E69DCAB8] imageWithCGImage:objc_msgSend(v21 scale:"CGImage") orientation:{0, v25}];
        if ((v20 & 1) == 0)
        {
          v29[0] = providerCopy;
          v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
          [(DOCIconService *)selfCopy _updateFileProvidersIcon:v27 skipSize:size];
        }

        v9 = v26;
      }

      else
      {
        v12 = MEMORY[0x1E699A450];
        v13 = *MEMORY[0x1E699A450];
        if (!*MEMORY[0x1E699A450])
        {
          DOCInitLogging();
          v13 = *v12;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [DOCIconService iconForFileProvider:size size:v13];
        }

        v9 = 0;
      }
    }
  }

  return v9;
}

- (void)_loadIconsFromDiskForSize:fileManager:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"DOCIconService.m" lineNumber:168 description:{@"Invalid cache size provided: %ld", v0}];
}

- (void)_loadIconsFromDiskForSize:(uint64_t)a1 fileManager:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1E57D8000, a2, OS_LOG_TYPE_ERROR, "Could not get url for cache size: %ld", &v2, 0xCu);
}

- (void)_persistCacheForSize:bundles:fileManager:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"DOCIconService.m" lineNumber:233 description:{@"Invalid cache size provided: %ld", v0}];
}

- (void)_persistCacheForSize:(uint64_t)a1 bundles:(uint64_t)a2 fileManager:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1E57D8000, log, OS_LOG_TYPE_ERROR, "Unable to create cache folder '%@': %@", &v3, 0x16u);
}

- (void)_fetchIconFromDiskCacheForProviderID:(uint64_t)a3 size:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  v6 = MEMORY[0x1E696AD98];
  v7 = a1;
  v8 = [v6 numberWithInteger:a2];
  v9 = [v5 stringWithFormat:@"[Load-One-DISK] encountered bad disk cache data (length = 0), deleting... (%@, size: %@)", a3, v8];
  *buf = 136315138;
  v11 = [v9 UTF8String];
  _os_log_fault_impl(&dword_1E57D8000, v7, OS_LOG_TYPE_FAULT, "[DOCIconServiceLog] %s\n", buf, 0xCu);
}

- (void)_fetchIconFromIconService:size:triggerDiskUpdate:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"DOCIconService.m" lineNumber:322 description:{@"Invalid cache size provided: %ld", v0}];
}

- (void)iconForFileProvider:(uint64_t)a1 size:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1E57D8000, a2, OS_LOG_TYPE_ERROR, "Invalid size was requested for icon: %ld", &v2, 0xCu);
}

@end