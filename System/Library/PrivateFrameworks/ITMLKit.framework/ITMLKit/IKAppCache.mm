@interface IKAppCache
+ (id)_appContextDelegateSelectors;
- (BOOL)appContext:(id)a3 validateDOMDocument:(id)a4 inContext:(id)a5 error:(id *)a6;
- (BOOL)respondsToSelector:(SEL)a3;
- (IKAppCache)initWithApplication:(id)a3;
- (IKAppCacheDelegate)delegate;
- (IKAppContextDelegate)appContextDelegate;
- (IKApplication)app;
- (id)_cacheFileURLForAppJS:(id)a3 checksum:(id)a4 error:(id *)a5;
- (id)_validatedChecksumForScript:(id)a3 error:(id *)a4;
- (id)deviceConfigForContext:(id)a3;
- (id)modalControllerForContext:(id)a3;
- (id)navigationControllerForContext:(id)a3;
- (id)objectForMediaItem:(id)a3;
- (id)objectForPlayer:(id)a3;
- (id)objectForPlaylist:(id)a3;
- (id)tabBarForContext:(id)a3;
- (void)_checkManifest;
- (void)_cleanupValidationContext;
- (void)_loadManifest;
- (void)_storeManifest;
- (void)appContext:(id)a3 didFailWithError:(id)a4;
- (void)appContext:(id)a3 didStartWithOptions:(id)a4 validatedJSString:(id)a5;
- (void)appContext:(id)a3 evaluateAppJavaScriptInContext:(id)a4;
- (void)appContext:(id)a3 needsReloadWithUrgency:(unint64_t)a4 options:(id)a5;
- (void)appJSURLWithCompletion:(id)a3;
- (void)cleanBlobStorageWithCompletion:(id)a3;
- (void)refreshWithCompletion:(id)a3;
- (void)updateCacheWithValidatedJS:(id)a3 completion:(id)a4;
@end

@implementation IKAppCache

- (IKAppCache)initWithApplication:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 appJSCachePath];
  }

  else
  {
    v5 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 appLocalJSURL];
  }

  else
  {
    v6 = 0;
  }

  if ([v5 isFileURL])
  {
    v7 = [v5 path];
    if (v7)
    {
      v36 = 0;
      v8 = [MEMORY[0x277CCAA00] defaultManager];
      v9 = [v8 fileExistsAtPath:v7 isDirectory:&v36];

      if ((v9 & 1) == 0)
      {
        v10 = [MEMORY[0x277CCAA00] defaultManager];
        v35 = 0;
        v11 = [v10 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v35];
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
      objc_storeWeak(&v13->_app, v4);
      self->_shouldIgnoreHTTPCache = 1;
      v14 = MEMORY[0x277CCACA8];
      v15 = [MEMORY[0x277CCA8D8] mainBundle];
      v16 = [v15 bundleIdentifier];
      v12 = [v14 stringWithFormat:@"%@.ITML.cache", v16];

      v17 = v12;
      v18 = dispatch_queue_create([v12 cStringUsingEncoding:1], 0);
      appCacheQueue = self->_appCacheQueue;
      self->_appCacheQueue = v18;

      v20 = self->_appCacheQueue;
      v21 = dispatch_get_global_queue(17, 0);
      dispatch_set_target_queue(v20, v21);

      dispatch_queue_set_specific(self->_appCacheQueue, "kIKAppCacheQueueTag", self, 0);
      v22 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
      appJSFileURL = self->_appJSFileURL;
      self->_appJSFileURL = v22;

      v24 = [MEMORY[0x277CCAA00] defaultManager];
      v25 = [(IKAppCache *)v6 path];
      LODWORD(v21) = [v24 fileExistsAtPath:v25];

      if (v21)
      {
        v26 = v6;
        p_super = &self->_appLocalJSFileURL->super;
        self->_appLocalJSFileURL = v26;
      }

      else
      {
        p_super = ITMLKitGetLogObject(2);
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v38 = v6;
          _os_log_impl(&dword_2549A4000, p_super, OS_LOG_TYPE_INFO, "Bundle JS does not exist at %@", buf, 0xCu);
        }
      }

      v29 = ITMLKitGetLogObject(2);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = v7;
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

      v7 = self;
    }
  }

  else
  {
    v7 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v7;
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

- (void)appJSURLWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __37__IKAppCache_appJSURLWithCompletion___block_invoke;
    v5[3] = &unk_279799460;
    objc_copyWeak(&v7, &location);
    v6 = v4;
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
    v4 = [(IKAppCache *)self appLocalJSChecksum];

    if (v4)
    {
      v5 = [(IKAppCache *)self appLocalJSChecksum];
      [v3 setObject:v5 forKey:@"IKAppCacheManifestAppLocalJSChecksumKey"];
    }

    v6 = [(IKAppCache *)self appJSChecksum];

    if (v6)
    {
      v7 = [(IKAppCache *)self appJSChecksum];
      [v3 setObject:v7 forKey:@"IKAppCacheManifestAppJSChecksumKey"];
    }

    v8 = [(IKAppCache *)self appJSChecksumHistory];

    if (v8)
    {
      v9 = [(IKAppCache *)self appJSChecksumHistory];
      [v3 setObject:v9 forKey:@"IKAppCacheManifestChecksumHistoryKey"];
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
      v13 = [(IKAppCache *)self appJSFileURL];
      v14 = [v13 path];
      v15 = [v14 stringByAppendingPathComponent:@"manifest.json"];

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
    v3 = [(IKAppCache *)self appJSFileURL];
    v4 = [v3 path];
    v5 = [v4 stringByAppendingPathComponent:@"manifest.json"];

    v6 = ITMLKitGetLogObject(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = v5;
      _os_log_impl(&dword_2549A4000, v6, OS_LOG_TYPE_INFO, "Loading manifest from %@", buf, 0xCu);
    }

    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v7 fileExistsAtPath:v5];

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

  v4 = [(IKAppCache *)self appLocalJSFileURL];
  v5 = [v4 path];

  v6 = _IKFileHash(v5);
  v7 = [(IKAppCache *)self appJSChecksum];
  if (v7)
  {
    v8 = [(IKAppCache *)self appJSFileURL];
    v9 = [v8 path];
    v10 = [(IKAppCache *)self appJSChecksum];
    v11 = [v9 stringByAppendingPathComponent:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v48 = 0;
  v13 = [v12 attributesOfItemAtPath:v5 error:&v48];
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
  v18 = [MEMORY[0x277CCAA00] defaultManager];
  v47 = 0;
  v19 = [v18 attributesOfItemAtPath:v11 error:&v47];
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
      v26 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
      objc_storeStrong(&self->_appLocalJSChecksum, v6);
      v27 = ITMLKitGetLogObject(2);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        goto LABEL_39;
      }

      *buf = 138412290;
      v50 = v5;
      v28 = "appLocal (%@) exists and appJS does not exists, using appLocal JS.";
    }

    v31 = v27;
    v32 = 12;
    goto LABEL_35;
  }

  v24 = [(IKAppCache *)self appLocalJSChecksum];
  v25 = [v6 isEqualToString:v24];

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
      v52 = v5;
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
    v26 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    objc_storeStrong(&self->_appLocalJSChecksum, v6);
    v27 = ITMLKitGetLogObject(2);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      v50 = @"changed";
      v51 = 2112;
      v52 = v5;
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

  v35 = [(NSURL *)v26 path];
  v36 = _IKFileHash(v35);

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

- (void)refreshWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__IKAppCache_refreshWithCompletion___block_invoke;
  v6[3] = &unk_279799460;
  objc_copyWeak(&v8, &location);
  v5 = v4;
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

- (void)cleanBlobStorageWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__IKAppCache_cleanBlobStorageWithCompletion___block_invoke;
  v6[3] = &unk_2797994B0;
  objc_copyWeak(&v8, &location);
  v5 = v4;
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

- (BOOL)respondsToSelector:(SEL)a3
{
  v5 = [objc_opt_class() _appContextDelegateSelectors];
  v6 = NSStringFromSelector(a3);
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [(IKAppCache *)self appContextDelegate];
    v9 = objc_opt_respondsToSelector();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = IKAppCache;
    v9 = [(IKAppCache *)&v11 respondsToSelector:a3];
  }

  return v9 & 1;
}

- (void)appContext:(id)a3 didStartWithOptions:(id)a4 validatedJSString:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ITMLKitGetLogObject(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v8 resolvedBootURL];
    *buf = 138412290;
    v20 = v12;
    _os_log_impl(&dword_2549A4000, v11, OS_LOG_TYPE_INFO, "Validation context succeeded for %@...", buf, 0xCu);
  }

  v13 = [(IKAppCache *)self validationCompletionHandler];
  [v8 stop];
  objc_initWeak(buf, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__IKAppCache_appContext_didStartWithOptions_validatedJSString___block_invoke;
  v16[3] = &unk_2797994D8;
  v14 = v13;
  v17 = v14;
  objc_copyWeak(&v18, buf);
  v16[4] = self;
  [(IKAppCache *)self updateCacheWithValidatedJS:v10 completion:v16];
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

- (void)appContext:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ITMLKitGetLogObject(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(IKAppCache *)v6 appContext:v7 didFailWithError:v8];
  }

  v9 = [(IKAppCache *)self validationCompletionHandler];
  [v6 stop];
  if (v9)
  {
    (v9)[2](v9, 0, v7);
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

- (void)appContext:(id)a3 evaluateAppJavaScriptInContext:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(IKAppCache *)self appContextDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(IKAppCache *)self appContextDelegate];
    [v9 appContext:v10 evaluateAppJavaScriptInContext:v6];
  }
}

- (BOOL)appContext:(id)a3 validateDOMDocument:(id)a4 inContext:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(IKAppCache *)self appContextDelegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(IKAppCache *)self appContextDelegate];
    v16 = [v15 appContext:v10 validateDOMDocument:v11 inContext:v12 error:a6];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)deviceConfigForContext:(id)a3
{
  v4 = a3;
  v5 = [(IKAppCache *)self appContextDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(IKAppCache *)self appContextDelegate];
    v8 = [v7 deviceConfigForContext:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)navigationControllerForContext:(id)a3
{
  v4 = a3;
  v5 = [(IKAppCache *)self appContextDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(IKAppCache *)self appContextDelegate];
    v8 = [v7 navigationControllerForContext:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tabBarForContext:(id)a3
{
  v4 = a3;
  v5 = [(IKAppCache *)self appContextDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(IKAppCache *)self appContextDelegate];
    v8 = [v7 tabBarForContext:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)modalControllerForContext:(id)a3
{
  v4 = a3;
  v5 = [(IKAppCache *)self appContextDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(IKAppCache *)self appContextDelegate];
    v8 = [v7 navigationControllerForContext:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)objectForPlayer:(id)a3
{
  v4 = a3;
  v5 = [(IKAppCache *)self appContextDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(IKAppCache *)self appContextDelegate];
    v8 = [v7 objectForPlayer:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)objectForPlaylist:(id)a3
{
  v4 = a3;
  v5 = [(IKAppCache *)self appContextDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(IKAppCache *)self appContextDelegate];
    v8 = [v7 objectForPlaylist:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)objectForMediaItem:(id)a3
{
  v4 = a3;
  v5 = [(IKAppCache *)self appContextDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(IKAppCache *)self appContextDelegate];
    v8 = [v7 objectForMediaItem:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)appContext:(id)a3 needsReloadWithUrgency:(unint64_t)a4 options:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [(IKAppCache *)self appContextDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(IKAppCache *)self appContextDelegate];
    [v11 appContext:v12 needsReloadWithUrgency:a4 options:v8];
  }
}

- (id)_validatedChecksumForScript:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = _IKStringHash(a3);
  v7 = [(IKAppCache *)self appLocalJSChecksum];
  v8 = [v7 isEqualToString:v6];

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

  v11 = [(IKAppCache *)self appJSChecksum];
  v12 = [v11 isEqualToString:v6];

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

  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"IKAppCacheErrorDomain" code:1 userInfo:0];
    *a4 = v6 = 0;
  }

  else
  {
    v6 = 0;
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)updateCacheWithValidatedJS:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__IKAppCache_updateCacheWithValidatedJS_completion___block_invoke;
  v10[3] = &unk_279799500;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
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

- (id)_cacheFileURLForAppJS:(id)a3 checksum:(id)a4 error:(id *)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 length])
  {
    v10 = MEMORY[0x277CBEBC0];
    v11 = [(IKAppCache *)self appJSFileURL];
    v12 = [v11 path];
    v13 = [v12 stringByAppendingPathComponent:v9];
    v14 = [v10 fileURLWithPath:v13];

    v15 = [v8 dataUsingEncoding:4];
    v16 = ITMLKitGetLogObject(2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v42 = v14;
      _os_log_impl(&dword_2549A4000, v16, OS_LOG_TYPE_INFO, "Writing validated Javascript to %@", buf, 0xCu);
    }

    v17 = [v14 path];
    v18 = [v15 writeToFile:v17 atomically:1];

    if (v18)
    {
      v34 = v15;
      obj = v14;
      v19 = [(IKAppCache *)self appJSChecksum];

      if (v19)
      {
        v20 = [(IKAppCache *)self appJSChecksumHistory];
        v21 = [(IKAppCache *)self appJSChecksum];
        [v20 addObject:v21];
      }

      v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v23 = [(IKAppCache *)self appJSChecksumHistory];
      v24 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v36 + 1) + 8 * i);
            if ([v28 isEqualToString:v9])
            {
              [v22 addObject:v28];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v25);
      }

      v29 = [(IKAppCache *)self appJSChecksumHistory];
      [v29 removeObjectsInArray:v22];

      objc_storeStrong(&self->_appJSChecksum, a4);
      v14 = obj;
      objc_storeStrong(&self->_currentAppJSURL, obj);
      objc_storeStrong(&self->_currentAppJSChecksum, a4);
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

      if (a5)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"IKAppCacheErrorDomain" code:0 userInfo:0];
        *a5 = v30 = 0;
      }

      else
      {
        v30 = 0;
      }
    }
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"IKAppCacheErrorDomain" code:0 userInfo:0];
    *a5 = v30 = 0;
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