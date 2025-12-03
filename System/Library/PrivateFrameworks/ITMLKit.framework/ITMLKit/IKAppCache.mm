@interface IKAppCache
+ (id)_appContextDelegateSelectors;
- (BOOL)appContext:(id)context validateDOMDocument:(id)document inContext:(id)inContext error:(id *)error;
- (BOOL)respondsToSelector:(SEL)selector;
- (IKAppCache)initWithApplication:(id)application;
- (IKAppCacheDelegate)delegate;
- (IKAppContextDelegate)appContextDelegate;
- (IKApplication)app;
- (id)_cacheFileURLForAppJS:(id)s checksum:(id)checksum error:(id *)error;
- (id)_validatedChecksumForScript:(id)script error:(id *)error;
- (id)deviceConfigForContext:(id)context;
- (id)modalControllerForContext:(id)context;
- (id)navigationControllerForContext:(id)context;
- (id)objectForMediaItem:(id)item;
- (id)objectForPlayer:(id)player;
- (id)objectForPlaylist:(id)playlist;
- (id)tabBarForContext:(id)context;
- (void)_checkManifest;
- (void)_cleanupValidationContext;
- (void)_loadManifest;
- (void)_storeManifest;
- (void)appContext:(id)context didFailWithError:(id)error;
- (void)appContext:(id)context didStartWithOptions:(id)options validatedJSString:(id)string;
- (void)appContext:(id)context evaluateAppJavaScriptInContext:(id)inContext;
- (void)appContext:(id)context needsReloadWithUrgency:(unint64_t)urgency options:(id)options;
- (void)appJSURLWithCompletion:(id)completion;
- (void)cleanBlobStorageWithCompletion:(id)completion;
- (void)refreshWithCompletion:(id)completion;
- (void)updateCacheWithValidatedJS:(id)s completion:(id)completion;
@end

@implementation IKAppCache

- (IKAppCache)initWithApplication:(id)application
{
  v39 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  if (objc_opt_respondsToSelector())
  {
    appJSCachePath = [applicationCopy appJSCachePath];
  }

  else
  {
    appJSCachePath = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    appLocalJSURL = [applicationCopy appLocalJSURL];
  }

  else
  {
    appLocalJSURL = 0;
  }

  if ([appJSCachePath isFileURL])
  {
    selfCopy = [appJSCachePath path];
    if (selfCopy)
    {
      v36 = 0;
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v9 = [defaultManager fileExistsAtPath:selfCopy isDirectory:&v36];

      if ((v9 & 1) == 0)
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v35 = 0;
        v11 = [defaultManager2 createDirectoryAtPath:selfCopy withIntermediateDirectories:1 attributes:0 error:&v35];
        v12 = v35;

        v36 = v11;
        if (!v11)
        {
          v28 = ITMLKitGetLogObject(2);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [IKAppCache initWithApplication:];
          }

          goto LABEL_25;
        }
      }

      if (v36 != 1)
      {
        goto LABEL_26;
      }

      v34.receiver = self;
      v34.super_class = IKAppCache;
      v13 = [(IKAppCache *)&v34 init];
      self = v13;
      if (!v13)
      {
        goto LABEL_26;
      }

      v13->_status = 0;
      objc_storeWeak(&v13->_app, applicationCopy);
      self->_shouldIgnoreHTTPCache = 1;
      v14 = MEMORY[0x277CCACA8];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v12 = [v14 stringWithFormat:@"%@.ITML.cache", bundleIdentifier];

      v17 = v12;
      v18 = dispatch_queue_create([v12 cStringUsingEncoding:1], 0);
      appCacheQueue = self->_appCacheQueue;
      self->_appCacheQueue = v18;

      v20 = self->_appCacheQueue;
      v21 = dispatch_get_global_queue(17, 0);
      dispatch_set_target_queue(v20, v21);

      dispatch_queue_set_specific(self->_appCacheQueue, "kIKAppCacheQueueTag", self, 0);
      v22 = [MEMORY[0x277CBEBC0] fileURLWithPath:selfCopy];
      appJSFileURL = self->_appJSFileURL;
      self->_appJSFileURL = v22;

      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      path = [(IKAppCache *)appLocalJSURL path];
      LODWORD(v21) = [defaultManager3 fileExistsAtPath:path];

      if (v21)
      {
        v26 = appLocalJSURL;
        p_super = &self->_appLocalJSFileURL->super;
        self->_appLocalJSFileURL = v26;
      }

      else
      {
        p_super = ITMLKitGetLogObject(2);
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v38 = appLocalJSURL;
          _os_log_impl(&dword_2549A4000, p_super, OS_LOG_TYPE_INFO, "Bundle JS does not exist at %@", buf, 0xCu);
        }
      }

      v29 = ITMLKitGetLogObject(2);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = selfCopy;
        _os_log_impl(&dword_2549A4000, v29, OS_LOG_TYPE_INFO, "Cache created with cache path: %@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __34__IKAppCache_initWithApplication___block_invoke;
      v32[3] = &unk_279799438;
      objc_copyWeak(&v33, buf);
      [(IKAppCache *)self _performAsync:v32];
      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);
LABEL_25:

LABEL_26:
      self = self;

      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

void __34__IKAppCache_initWithApplication___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _loadManifest];
    WeakRetained = v2;
  }
}

- (void)appJSURLWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __37__IKAppCache_appJSURLWithCompletion___block_invoke;
    v5[3] = &unk_279799460;
    objc_copyWeak(&v7, &location);
    v6 = completionCopy;
    [(IKAppCache *)self _performAsync:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __37__IKAppCache_appJSURLWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained status];

  if (v3 != 2)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    [v4 _loadManifest];
  }

  v5 = *(a1 + 32);
  v9 = objc_loadWeakRetained((a1 + 40));
  v6 = [v9 currentAppJSURL];
  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = [v7 currentAppJSChecksum];
  (*(v5 + 16))(v5, v6, v8);
}

- (void)_storeManifest
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(IKAppCache *)self status]>= 2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    appLocalJSChecksum = [(IKAppCache *)self appLocalJSChecksum];

    if (appLocalJSChecksum)
    {
      appLocalJSChecksum2 = [(IKAppCache *)self appLocalJSChecksum];
      [v3 setObject:appLocalJSChecksum2 forKey:@"IKAppCacheManifestAppLocalJSChecksumKey"];
    }

    appJSChecksum = [(IKAppCache *)self appJSChecksum];

    if (appJSChecksum)
    {
      appJSChecksum2 = [(IKAppCache *)self appJSChecksum];
      [v3 setObject:appJSChecksum2 forKey:@"IKAppCacheManifestAppJSChecksumKey"];
    }

    appJSChecksumHistory = [(IKAppCache *)self appJSChecksumHistory];

    if (appJSChecksumHistory)
    {
      appJSChecksumHistory2 = [(IKAppCache *)self appJSChecksumHistory];
      [v3 setObject:appJSChecksumHistory2 forKey:@"IKAppCacheManifestChecksumHistoryKey"];
    }

    v10 = _IKMobileGestaltForKey();
    if (v10)
    {
      [v3 setObject:v10 forKey:@"IKAppCacheManifestBuildVersionKey"];
    }

    v19 = 0;
    v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:0 error:&v19];
    v12 = v19;
    if (v11)
    {
      appJSFileURL = [(IKAppCache *)self appJSFileURL];
      path = [appJSFileURL path];
      v15 = [path stringByAppendingPathComponent:@"manifest.json"];

      v16 = ITMLKitGetLogObject(2);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v21 = v3;
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&dword_2549A4000, v16, OS_LOG_TYPE_INFO, "Storing manifest %@ to %@", buf, 0x16u);
      }

      if (([v11 writeToFile:v15 atomically:1] & 1) == 0)
      {
        v17 = ITMLKitGetLogObject(2);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [IKAppCache _storeManifest];
        }
      }
    }

    else
    {
      v15 = ITMLKitGetLogObject(2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [IKAppCache _storeManifest];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_loadManifest
{
  v35 = *MEMORY[0x277D85DE8];
  if (![(IKAppCache *)self status])
  {
    appJSFileURL = [(IKAppCache *)self appJSFileURL];
    path = [appJSFileURL path];
    v5 = [path stringByAppendingPathComponent:@"manifest.json"];

    v6 = ITMLKitGetLogObject(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = v5;
      _os_log_impl(&dword_2549A4000, v6, OS_LOG_TYPE_INFO, "Loading manifest from %@", buf, 0xCu);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [defaultManager fileExistsAtPath:v5];

    if (v8)
    {
      v30 = 0;
      v9 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5 options:0 error:&v30];
      v10 = v30;
      if (v9)
      {
        v29 = 0;
        v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v9 options:0 error:&v29];
        v12 = v29;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v14 = ITMLKitGetLogObject(2);
        v15 = v14;
        if (isKindOfClass)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v32 = v11;
            _os_log_impl(&dword_2549A4000, v15, OS_LOG_TYPE_INFO, "Successfully parsed manifest: %@", buf, 0xCu);
          }

          v16 = [v11 objectForKey:@"IKAppCacheManifestChecksumHistoryKey"];
          v17 = [v16 mutableCopy];
          v18 = v17;
          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
          }

          appJSChecksumHistory = self->_appJSChecksumHistory;
          self->_appJSChecksumHistory = v19;

          v21 = [v11 objectForKey:@"IKAppCacheManifestAppLocalJSChecksumKey"];
          appLocalJSChecksum = self->_appLocalJSChecksum;
          self->_appLocalJSChecksum = v21;

          v23 = [v11 objectForKey:@"IKAppCacheManifestAppJSChecksumKey"];
          appJSChecksum = self->_appJSChecksum;
          self->_appJSChecksum = v23;

          v15 = _IKMobileGestaltForKey();
          v25 = [v11 objectForKey:@"IKAppCacheManifestBuildVersionKey"];
          if (([v15 isEqualToString:v25]& 1) == 0 && self->_appJSChecksum)
          {
            v26 = ITMLKitGetLogObject(2);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v32 = v15;
              v33 = 2112;
              v34 = v25;
              _os_log_impl(&dword_2549A4000, v26, OS_LOG_TYPE_INFO, "Build version mismatched (%@ != %@). Clearing cached appJS.", buf, 0x16u);
            }

            [(NSArray *)self->_appJSChecksumHistory addObject:self->_appJSChecksum];
            v27 = self->_appJSChecksum;
            self->_appJSChecksum = 0;
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [IKAppCache _loadManifest];
        }
      }

      else
      {
        v12 = ITMLKitGetLogObject(2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [IKAppCache _loadManifest];
        }
      }
    }

    self->_status = 1;
  }

  [(IKAppCache *)self _checkManifest];
  v28 = *MEMORY[0x277D85DE8];
}

- (void)_checkManifest
{
  v59 = *MEMORY[0x277D85DE8];
  if ([(IKAppCache *)self status]!= 1)
  {
    goto LABEL_42;
  }

  v3 = ITMLKitGetLogObject(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2549A4000, v3, OS_LOG_TYPE_INFO, "Checking manifest...", buf, 2u);
  }

  appLocalJSFileURL = [(IKAppCache *)self appLocalJSFileURL];
  path = [appLocalJSFileURL path];

  v6 = _IKFileHash(path);
  appJSChecksum = [(IKAppCache *)self appJSChecksum];
  if (appJSChecksum)
  {
    appJSFileURL = [(IKAppCache *)self appJSFileURL];
    path2 = [appJSFileURL path];
    appJSChecksum2 = [(IKAppCache *)self appJSChecksum];
    v11 = [path2 stringByAppendingPathComponent:appJSChecksum2];
  }

  else
  {
    v11 = 0;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v48 = 0;
  v13 = [defaultManager attributesOfItemAtPath:path error:&v48];
  v14 = v48;

  if (!v13)
  {
    v15 = ITMLKitGetLogObject(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [IKAppCache _checkManifest];
    }
  }

  v44 = v14;
  v16 = *MEMORY[0x277CCA108];
  v17 = [v13 objectForKey:*MEMORY[0x277CCA108]];
  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v47 = 0;
  v19 = [defaultManager2 attributesOfItemAtPath:v11 error:&v47];
  v20 = v47;

  if (!v19)
  {
    v21 = ITMLKitGetLogObject(2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [IKAppCache _checkManifest];
    }
  }

  v22 = [v19 objectForKey:{v16, v20}];
  v23 = v22;
  v45 = v13;
  v46 = v11;
  if (!v17 || !v22)
  {
    if (!v17 || v22)
    {
      if (v17 || !v22)
      {
        v27 = ITMLKitGetLogObject(2);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2549A4000, v27, OS_LOG_TYPE_INFO, "appLocal and app JS both do not exist, returning nil.", buf, 2u);
        }

        v26 = 0;
        goto LABEL_39;
      }

      v26 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11];
      ITMLKitGetLogObject(2);
      v27 = v33 = v11;
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        goto LABEL_39;
      }

      *buf = 138412290;
      v50 = v33;
      v28 = "appLocal does not exists and appJS (%@) exists, using appLocal JS.";
    }

    else
    {
      v26 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];
      objc_storeStrong(&self->_appLocalJSChecksum, v6);
      v27 = ITMLKitGetLogObject(2);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        goto LABEL_39;
      }

      *buf = 138412290;
      v50 = path;
      v28 = "appLocal (%@) exists and appJS does not exists, using appLocal JS.";
    }

    v31 = v27;
    v32 = 12;
    goto LABEL_35;
  }

  appLocalJSChecksum = [(IKAppCache *)self appLocalJSChecksum];
  v25 = [v6 isEqualToString:appLocalJSChecksum];

  if ((v25 & 1) != 0 || [v17 compare:v23] != 1)
  {
    v26 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11];
    ITMLKitGetLogObject(2);
    v27 = v29 = v11;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v30 = @"changed";
      *buf = 138413314;
      if (v25)
      {
        v30 = @"unchanged";
      }

      v50 = v30;
      v51 = 2112;
      v52 = path;
      v53 = 2112;
      v54 = v17;
      v55 = 2112;
      v56 = v29;
      v57 = 2112;
      v58 = v23;
      v28 = "appLocal %@ (%@ : %@) and app (%@ : %@) JS exists, using app JS since its newer.";
      goto LABEL_29;
    }
  }

  else
  {
    v26 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];
    objc_storeStrong(&self->_appLocalJSChecksum, v6);
    v27 = ITMLKitGetLogObject(2);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      v50 = @"changed";
      v51 = 2112;
      v52 = path;
      v53 = 2112;
      v54 = v17;
      v55 = 2112;
      v56 = v46;
      v57 = 2112;
      v58 = v23;
      v28 = "appLocal is %@ (%@ : %@) and app (%@ : %@) JS exists, using bundle since its checksum has changed and it has a newer than appJS.";
LABEL_29:
      v31 = v27;
      v32 = 52;
LABEL_35:
      _os_log_impl(&dword_2549A4000, v31, OS_LOG_TYPE_INFO, v28, buf, v32);
    }
  }

LABEL_39:
  v34 = v6;

  path3 = [(NSURL *)v26 path];
  v36 = _IKFileHash(path3);

  v37 = ITMLKitGetLogObject(2);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v50 = v26;
    _os_log_impl(&dword_2549A4000, v37, OS_LOG_TYPE_INFO, "Current application JS URL: %@", buf, 0xCu);
  }

  currentAppJSURL = self->_currentAppJSURL;
  self->_currentAppJSURL = v26;
  v39 = v26;

  currentAppJSChecksum = self->_currentAppJSChecksum;
  self->_currentAppJSChecksum = v36;
  v41 = v36;

  self->_status = 2;
  [(IKAppCache *)self _storeManifest];

LABEL_42:
  v42 = *MEMORY[0x277D85DE8];
}

- (void)refreshWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__IKAppCache_refreshWithCompletion___block_invoke;
  v6[3] = &unk_279799460;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(IKAppCache *)self _performAsync:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __36__IKAppCache_refreshWithCompletion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained validationContext];

    if (v4)
    {
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IKAppCacheErrorDomain" code:2 userInfo:0];
        (*(v5 + 16))(v5, 0, v6);
      }
    }

    else
    {
      v7 = ITMLKitGetLogObject(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2549A4000, v7, OS_LOG_TYPE_INFO, "Creating validation context for cache refresh...", buf, 2u);
      }

      v8 = MEMORY[0x259C21BA0](*(a1 + 32));
      v9 = *(v3 + 15);
      *(v3 + 15) = v8;

      v10 = [v3 app];
      if (objc_opt_respondsToSelector())
      {
        v11 = [v10 bagBootURLKey];
      }

      else
      {
        v11 = 0;
      }

      v12 = ITMLKitGetLogObject(2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        if (v11)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"bagBootURLKey: %@", v11];
        }

        else
        {
          [v10 appJSURL];
        }
        v13 = ;
        *buf = 138412290;
        v20 = v13;
        _os_log_impl(&dword_2549A4000, v12, OS_LOG_TYPE_INFO, "Using %@ for cache refresh validation context...", buf, 0xCu);
      }

      v14 = [[IKAppContext alloc] initWithApplication:v10 mode:1000 cache:0 delegate:v3];
      [(IKAppContext *)v14 setRemoteInspectionEnabled:0];
      objc_storeStrong(v3 + 14, v14);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__IKAppCache_refreshWithCompletion___block_invoke_51;
      block[3] = &unk_279799488;
      v18 = v14;
      v15 = v14;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)cleanBlobStorageWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__IKAppCache_cleanBlobStorageWithCompletion___block_invoke;
  v6[3] = &unk_2797994B0;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v6[4] = self;
  v7 = v5;
  [(IKAppCache *)self _performAsync:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __45__IKAppCache_cleanBlobStorageWithCompletion___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained appJSChecksumHistory];
  v4 = [v3 copy];

  v5 = ITMLKitGetLogObject(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v42 = [v4 count];
    _os_log_impl(&dword_2549A4000, v5, OS_LOG_TYPE_INFO, "Blob Storage clean of %lu entries requested...", buf, 0xCu);
  }

  v6 = objc_loadWeakRetained((a1 + 48));
  v7 = v6;
  if (v6)
  {
    v8 = [v6 validationContext];

    if (!v8)
    {
      v33 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v32 = v4;
      v12 = v4;
      v13 = [v12 countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v36;
        do
        {
          v16 = 0;
          do
          {
            if (*v36 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v35 + 1) + 8 * v16);
            v18 = [*(a1 + 32) appJSFileURL];
            v19 = [v18 URLByAppendingPathComponent:v17];
            v20 = [v19 path];

            v21 = [MEMORY[0x277CCAA00] defaultManager];
            LODWORD(v18) = [v21 fileExistsAtPath:v20];

            if (v18)
            {
              v22 = [MEMORY[0x277CCAA00] defaultManager];
              v34 = 0;
              v23 = [v22 removeItemAtPath:v20 error:&v34];
              v24 = v34;

              if ((v23 & 1) == 0)
              {
                [v33 addObject:v24];
                v25 = ITMLKitGetLogObject(2);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v42 = v20;
                  v43 = 2112;
                  v44 = v24;
                  _os_log_error_impl(&dword_2549A4000, v25, OS_LOG_TYPE_ERROR, "Failed to remove %@ when cleaning blob storage: %@", buf, 0x16u);
                }
              }
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v35 objects:v45 count:16];
        }

        while (v14);
      }

      v26 = [v7 appJSChecksumHistory];
      [v26 removeAllObjects];

      v27 = ITMLKitGetLogObject(2);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2549A4000, v27, OS_LOG_TYPE_INFO, "Blob Storage clean completed...", buf, 2u);
      }

      v4 = v32;
      v11 = v33;
      if (*(a1 + 40))
      {
        if ([v33 count])
        {
          v28 = MEMORY[0x277CCA9B8];
          v39 = @"IKAppCacheUnderlyingErrorsKey";
          v40 = v33;
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
          v30 = [v28 errorWithDomain:@"IKAppCacheErrorDomain" code:0 userInfo:v29];
        }

        else
        {
          v30 = 0;
        }

        (*(*(a1 + 40) + 16))();
      }

      goto LABEL_29;
    }

    v9 = ITMLKitGetLogObject(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2549A4000, v9, OS_LOG_TYPE_INFO, "Blob Storage clean stopped because of ongoing validation...", buf, 2u);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IKAppCacheErrorDomain" code:2 userInfo:0];
      (*(v10 + 16))(v10, 0, v11);
LABEL_29:
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  _appContextDelegateSelectors = [objc_opt_class() _appContextDelegateSelectors];
  v6 = NSStringFromSelector(selector);
  v7 = [_appContextDelegateSelectors containsObject:v6];

  if (v7)
  {
    appContextDelegate = [(IKAppCache *)self appContextDelegate];
    v9 = objc_opt_respondsToSelector();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = IKAppCache;
    v9 = [(IKAppCache *)&v11 respondsToSelector:selector];
  }

  return v9 & 1;
}

- (void)appContext:(id)context didStartWithOptions:(id)options validatedJSString:(id)string
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  optionsCopy = options;
  stringCopy = string;
  v11 = ITMLKitGetLogObject(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    resolvedBootURL = [contextCopy resolvedBootURL];
    *buf = 138412290;
    v20 = resolvedBootURL;
    _os_log_impl(&dword_2549A4000, v11, OS_LOG_TYPE_INFO, "Validation context succeeded for %@...", buf, 0xCu);
  }

  validationCompletionHandler = [(IKAppCache *)self validationCompletionHandler];
  [contextCopy stop];
  objc_initWeak(buf, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__IKAppCache_appContext_didStartWithOptions_validatedJSString___block_invoke;
  v16[3] = &unk_2797994D8;
  v14 = validationCompletionHandler;
  v17 = v14;
  objc_copyWeak(&v18, buf);
  v16[4] = self;
  [(IKAppCache *)self updateCacheWithValidatedJS:stringCopy completion:v16];
  objc_destroyWeak(&v18);

  objc_destroyWeak(buf);
  v15 = *MEMORY[0x277D85DE8];
}

void __63__IKAppCache_appContext_didStartWithOptions_validatedJSString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v12, v5);
  }

  if (v12)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v8 = [WeakRetained delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained((a1 + 48));
      v11 = [v10 delegate];
      [v11 appCache:*(a1 + 32) didUpdateWithChecksum:v12];
    }
  }
}

- (void)appContext:(id)context didFailWithError:(id)error
{
  contextCopy = context;
  errorCopy = error;
  v8 = ITMLKitGetLogObject(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(IKAppCache *)contextCopy appContext:errorCopy didFailWithError:v8];
  }

  validationCompletionHandler = [(IKAppCache *)self validationCompletionHandler];
  [contextCopy stop];
  if (validationCompletionHandler)
  {
    (validationCompletionHandler)[2](validationCompletionHandler, 0, errorCopy);
  }

  [(IKAppCache *)self _cleanupValidationContext];
}

- (void)_cleanupValidationContext
{
  v3 = ITMLKitGetLogObject(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_2549A4000, v3, OS_LOG_TYPE_INFO, "Cleaning up validation context...", v5, 2u);
  }

  validationContext = self->_validationContext;
  self->_validationContext = 0;

  [(IKAppCache *)self setValidationCompletionHandler:0];
}

- (void)appContext:(id)context evaluateAppJavaScriptInContext:(id)inContext
{
  contextCopy = context;
  inContextCopy = inContext;
  appContextDelegate = [(IKAppCache *)self appContextDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    appContextDelegate2 = [(IKAppCache *)self appContextDelegate];
    [appContextDelegate2 appContext:contextCopy evaluateAppJavaScriptInContext:inContextCopy];
  }
}

- (BOOL)appContext:(id)context validateDOMDocument:(id)document inContext:(id)inContext error:(id *)error
{
  contextCopy = context;
  documentCopy = document;
  inContextCopy = inContext;
  appContextDelegate = [(IKAppCache *)self appContextDelegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    appContextDelegate2 = [(IKAppCache *)self appContextDelegate];
    v16 = [appContextDelegate2 appContext:contextCopy validateDOMDocument:documentCopy inContext:inContextCopy error:error];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)deviceConfigForContext:(id)context
{
  contextCopy = context;
  appContextDelegate = [(IKAppCache *)self appContextDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    appContextDelegate2 = [(IKAppCache *)self appContextDelegate];
    v8 = [appContextDelegate2 deviceConfigForContext:contextCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)navigationControllerForContext:(id)context
{
  contextCopy = context;
  appContextDelegate = [(IKAppCache *)self appContextDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    appContextDelegate2 = [(IKAppCache *)self appContextDelegate];
    v8 = [appContextDelegate2 navigationControllerForContext:contextCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tabBarForContext:(id)context
{
  contextCopy = context;
  appContextDelegate = [(IKAppCache *)self appContextDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    appContextDelegate2 = [(IKAppCache *)self appContextDelegate];
    v8 = [appContextDelegate2 tabBarForContext:contextCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)modalControllerForContext:(id)context
{
  contextCopy = context;
  appContextDelegate = [(IKAppCache *)self appContextDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    appContextDelegate2 = [(IKAppCache *)self appContextDelegate];
    v8 = [appContextDelegate2 navigationControllerForContext:contextCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)objectForPlayer:(id)player
{
  playerCopy = player;
  appContextDelegate = [(IKAppCache *)self appContextDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    appContextDelegate2 = [(IKAppCache *)self appContextDelegate];
    v8 = [appContextDelegate2 objectForPlayer:playerCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)objectForPlaylist:(id)playlist
{
  playlistCopy = playlist;
  appContextDelegate = [(IKAppCache *)self appContextDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    appContextDelegate2 = [(IKAppCache *)self appContextDelegate];
    v8 = [appContextDelegate2 objectForPlaylist:playlistCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)objectForMediaItem:(id)item
{
  itemCopy = item;
  appContextDelegate = [(IKAppCache *)self appContextDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    appContextDelegate2 = [(IKAppCache *)self appContextDelegate];
    v8 = [appContextDelegate2 objectForMediaItem:itemCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)appContext:(id)context needsReloadWithUrgency:(unint64_t)urgency options:(id)options
{
  contextCopy = context;
  optionsCopy = options;
  appContextDelegate = [(IKAppCache *)self appContextDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    appContextDelegate2 = [(IKAppCache *)self appContextDelegate];
    [appContextDelegate2 appContext:contextCopy needsReloadWithUrgency:urgency options:optionsCopy];
  }
}

- (id)_validatedChecksumForScript:(id)script error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = _IKStringHash(script);
  appLocalJSChecksum = [(IKAppCache *)self appLocalJSChecksum];
  v8 = [appLocalJSChecksum isEqualToString:v6];

  if (v8)
  {
    v9 = ITMLKitGetLogObject(2);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    v15 = 138412290;
    v16 = v6;
    v10 = "New AppJS checksum matched current appLocalJS checksum: %@";
    goto LABEL_7;
  }

  appJSChecksum = [(IKAppCache *)self appJSChecksum];
  v12 = [appJSChecksum isEqualToString:v6];

  if (!v12)
  {
    goto LABEL_11;
  }

  v9 = ITMLKitGetLogObject(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = v6;
    v10 = "New AppJS checksum matched currently cached AppJS checksum: %@";
LABEL_7:
    _os_log_impl(&dword_2549A4000, v9, OS_LOG_TYPE_INFO, v10, &v15, 0xCu);
  }

LABEL_8:

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"IKAppCacheErrorDomain" code:1 userInfo:0];
    *error = v6 = 0;
  }

  else
  {
    v6 = 0;
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)updateCacheWithValidatedJS:(id)s completion:(id)completion
{
  sCopy = s;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__IKAppCache_updateCacheWithValidatedJS_completion___block_invoke;
  v10[3] = &unk_279799500;
  objc_copyWeak(&v13, &location);
  v8 = sCopy;
  v11 = v8;
  v9 = completionCopy;
  v12 = v9;
  [(IKAppCache *)self _performAsync:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __52__IKAppCache_updateCacheWithValidatedJS_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v12 = 0;
  v4 = [WeakRetained _validatedChecksumForScript:v3 error:&v12];
  v5 = v12;

  if (v4)
  {
    v6 = objc_loadWeakRetained((a1 + 48));
    v7 = *(a1 + 32);
    v11 = v5;
    v8 = [v6 _cacheFileURLForAppJS:v7 checksum:v4 error:&v11];
    v9 = v11;

    v5 = v9;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v4, v5);
  }
}

- (id)_cacheFileURLForAppJS:(id)s checksum:(id)checksum error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  sCopy = s;
  checksumCopy = checksum;
  if ([sCopy length])
  {
    v10 = MEMORY[0x277CBEBC0];
    appJSFileURL = [(IKAppCache *)self appJSFileURL];
    path = [appJSFileURL path];
    v13 = [path stringByAppendingPathComponent:checksumCopy];
    v14 = [v10 fileURLWithPath:v13];

    v15 = [sCopy dataUsingEncoding:4];
    v16 = ITMLKitGetLogObject(2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v42 = v14;
      _os_log_impl(&dword_2549A4000, v16, OS_LOG_TYPE_INFO, "Writing validated Javascript to %@", buf, 0xCu);
    }

    path2 = [v14 path];
    v18 = [v15 writeToFile:path2 atomically:1];

    if (v18)
    {
      v34 = v15;
      obj = v14;
      appJSChecksum = [(IKAppCache *)self appJSChecksum];

      if (appJSChecksum)
      {
        appJSChecksumHistory = [(IKAppCache *)self appJSChecksumHistory];
        appJSChecksum2 = [(IKAppCache *)self appJSChecksum];
        [appJSChecksumHistory addObject:appJSChecksum2];
      }

      v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      appJSChecksumHistory2 = [(IKAppCache *)self appJSChecksumHistory];
      v24 = [appJSChecksumHistory2 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v37;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v37 != v26)
            {
              objc_enumerationMutation(appJSChecksumHistory2);
            }

            v28 = *(*(&v36 + 1) + 8 * i);
            if ([v28 isEqualToString:checksumCopy])
            {
              [v22 addObject:v28];
            }
          }

          v25 = [appJSChecksumHistory2 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v25);
      }

      appJSChecksumHistory3 = [(IKAppCache *)self appJSChecksumHistory];
      [appJSChecksumHistory3 removeObjectsInArray:v22];

      objc_storeStrong(&self->_appJSChecksum, checksum);
      v14 = obj;
      objc_storeStrong(&self->_currentAppJSURL, obj);
      objc_storeStrong(&self->_currentAppJSChecksum, checksum);
      [(IKAppCache *)self _storeManifest];
      v30 = obj;

      v15 = v34;
    }

    else
    {
      v31 = ITMLKitGetLogObject(2);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [IKAppCache _cacheFileURLForAppJS:checksum:error:];
      }

      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"IKAppCacheErrorDomain" code:0 userInfo:0];
        *error = v30 = 0;
      }

      else
      {
        v30 = 0;
      }
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"IKAppCacheErrorDomain" code:0 userInfo:0];
    *error = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)_appContextDelegateSelectors
{
  if (_appContextDelegateSelectors_onceToken != -1)
  {
    +[IKAppCache _appContextDelegateSelectors];
  }

  v3 = _appContextDelegateSelectors_selectors;

  return v3;
}

void __42__IKAppCache__appContextDelegateSelectors__block_invoke()
{
  outCount = 0;
  v0 = objc_getProtocol("IKAppContextDelegate");
  v1 = protocol_copyMethodDescriptionList(v0, 0, 1, &outCount);

  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:outCount];
  v3 = _appContextDelegateSelectors_selectors;
  _appContextDelegateSelectors_selectors = v2;

  if (outCount)
  {
    v4 = 0;
    p_name = &v1->name;
    do
    {
      v6 = *p_name;
      p_name += 2;
      v7 = _appContextDelegateSelectors_selectors;
      v8 = NSStringFromSelector(v6);
      [v7 addObject:v8];

      ++v4;
    }

    while (v4 < outCount);
  }

  free(v1);
  v9 = objc_getProtocol("IKAppContextDelegate");
  v10 = protocol_copyMethodDescriptionList(v9, 1, 1, &outCount);

  if (outCount)
  {
    v11 = 0;
    v12 = &v10->name;
    do
    {
      v13 = *v12;
      v12 += 2;
      v14 = _appContextDelegateSelectors_selectors;
      v15 = NSStringFromSelector(v13);
      [v14 addObject:v15];

      ++v11;
    }

    while (v11 < outCount);
  }

  free(v10);
}

- (IKAppContextDelegate)appContextDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appContextDelegate);

  return WeakRetained;
}

- (IKAppCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (IKApplication)app
{
  WeakRetained = objc_loadWeakRetained(&self->_app);

  return WeakRetained;
}

@end