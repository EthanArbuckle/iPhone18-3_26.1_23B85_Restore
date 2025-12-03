@interface NTKFaceBundleManager
+ (id)sharedManager;
- (BOOL)loadKeyDescriptor:(id)descriptor;
- (id)_generateLookupsIfNecessary;
- (id)_init;
- (id)faceBundleForBundleIdentifier:(id)identifier onDevice:(id)device forMigration:(BOOL)migration;
- (id)faceBundleForFaceStyle:(int64_t)style onDevice:(id)device;
- (void)_resetCaches;
- (void)argonUpdated:(id)updated;
- (void)dealloc;
- (void)enumerateArgonKeyDescriptorsWithBlock:(id)block;
- (void)enumerateFaceBundlesOnDevice:(id)device includingLegacy:(BOOL)legacy withBlock:(id)block;
@end

@implementation NTKFaceBundleManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__NTKFaceBundleManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken_1 != -1)
  {
    dispatch_once(&sharedManager_onceToken_1, block);
  }

  v2 = sharedManager_manager_0;

  return v2;
}

void __37__NTKFaceBundleManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = sharedManager_manager_0;
  sharedManager_manager_0 = v1;
}

- (id)_init
{
  v43.receiver = self;
  v43.super_class = NTKFaceBundleManager;
  v2 = [(NTKFaceBundleManager *)&v43 init];
  v3 = v2;
  if (v2)
  {
    v2->_lookupLock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    progressiveStyleLookup = v3->_progressiveStyleLookup;
    v3->_progressiveStyleLookup = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    progressiveBundleIDLookup = v3->_progressiveBundleIDLookup;
    v3->_progressiveBundleIDLookup = dictionary2;

    v8 = +[NTKBundleLoader rootDirectory];
    v9 = [MEMORY[0x277CBEB58] set];
    v10 = _os_feature_enabled_impl();
    if (v10)
    {
      v12 = MEMORY[0x277CBEBC0];
      v13 = [v8 stringByAppendingPathComponent:@"/AppleInternal/Library/NanoTimeKit/FaceBundles/"];
      v14 = [v12 fileURLWithPath:v13];

      v15 = [v9 addObject:v14];
      if (NTKInternalBuild(v15, v16))
      {
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __29__NTKFaceBundleManager__init__block_invoke;
        v41[3] = &unk_27877DB10;
        v42 = v14;
        if (_init_onceToken_1 != -1)
        {
          dispatch_once(&_init_onceToken_1, v41);
        }
      }
    }

    if (NTKInternalBuild(v10, v11) && _os_feature_enabled_impl())
    {
      v17 = MEMORY[0x277CBEBC0];
      v18 = [v8 stringByAppendingPathComponent:@"/AppleInternal/Library/NanoTimeKit/FaceSupport/UnencryptedBundles/"];
      v19 = [v17 fileURLWithPath:v18];

      v20 = [v9 addObject:v19];
      if (NTKInternalBuild(v20, v21))
      {
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __29__NTKFaceBundleManager__init__block_invoke_3;
        v39[3] = &unk_27877DB10;
        v40 = v19;
        if (_init_onceToken_23 != -1)
        {
          dispatch_once(&_init_onceToken_23, v39);
        }
      }

      v22 = 1;
    }

    else
    {
      v22 = 0;
    }

    v23 = MEMORY[0x277CBEBC0];
    v24 = [v8 stringByAppendingString:@"/System/Library/NanoTimeKit/FaceBundles/"];
    v25 = [v23 fileURLWithPath:v24];

    v26 = [v9 addObject:v25];
    if (NTKInternalBuild(v26, v27))
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __29__NTKFaceBundleManager__init__block_invoke_5;
      block[3] = &unk_27877DB10;
      v38 = v25;
      if (_init_onceToken_30 != -1)
      {
        dispatch_once(&_init_onceToken_30, block);
      }
    }

    if ((v22 & 1) == 0)
    {
      v28 = NTKArgonExtractorBasePath();
      v29 = NTKArgonExtractorBuildVersion();
      v30 = [v28 stringByAppendingPathComponent:v29];
      v31 = [MEMORY[0x277CBEBC0] fileURLWithPath:v30];
      [v9 addObject:v31];
    }

    v32 = [NTKFaceBundleLoader faceBundleLoaderWithDirectories:v9];
    objc_storeStrong(&v3->_loader, v32);
    v33 = CLKRunningInProcess();
    v34 = 0x277CCAB98;
    if (!v33)
    {
      v34 = 0x277CCA9A0;
    }

    defaultCenter = [*v34 defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_argonUpdated_ name:@"NTKArgonManagerDidUpdateNotificationName" object:0];
  }

  return v3;
}

void __29__NTKFaceBundleManager__init__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) path];
  v1 = [[NTKDirectoryMonitor alloc] initWithPath:v3 handler:&__block_literal_global_106];
  v2 = _init_monitor;
  _init_monitor = v1;
}

void __29__NTKFaceBundleManager__init__block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) path];
  v1 = [[NTKDirectoryMonitor alloc] initWithPath:v3 handler:&__block_literal_global_26_0];
  v2 = _init_monitor_24;
  _init_monitor_24 = v1;
}

void __29__NTKFaceBundleManager__init__block_invoke_5(uint64_t a1)
{
  v3 = [*(a1 + 32) path];
  v1 = [[NTKDirectoryMonitor alloc] initWithPath:v3 handler:&__block_literal_global_33_0];
  v2 = _init_monitor_31;
  _init_monitor_31 = v1;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = NTKFaceBundleManager;
  [(NTKFaceBundleManager *)&v4 dealloc];
}

- (void)_resetCaches
{
  v3 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Bundle manager is resetting caches…", v5, 2u);
  }

  os_unfair_lock_lock(&self->_lookupLock);
  cachedLookup = self->_cachedLookup;
  self->_cachedLookup = 0;

  os_unfair_lock_unlock(&self->_lookupLock);
}

- (void)argonUpdated:(id)updated
{
  v4 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "Bundle manager heard argon was updated…", buf, 2u);
  }

  [(NTKFaceBundleManager *)self _resetCaches];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__NTKFaceBundleManager_argonUpdated___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__NTKFaceBundleManager_argonUpdated___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NTKFaceBundleManagerDidUpdateBundlesNotificationName" object:*(a1 + 32)];
}

- (id)_generateLookupsIfNecessary
{
  os_unfair_lock_lock(&self->_lookupLock);
  cachedLookup = self->_cachedLookup;
  if (!cachedLookup)
  {
    v4 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "Generating face bundle lookups for bundle manager…", buf, 2u);
    }

    array = [MEMORY[0x277CBEB18] array];
    loader = [(NTKFaceBundleManager *)self loader];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__NTKFaceBundleManager__generateLookupsIfNecessary__block_invoke;
    v12[3] = &unk_27877E890;
    v13 = array;
    v7 = array;
    [loader enumerateFaceBundleClassesIgnoringCache:1 withBlock:v12];

    v8 = [v7 copy];
    v9 = self->_cachedLookup;
    self->_cachedLookup = v8;

    cachedLookup = self->_cachedLookup;
  }

  v10 = cachedLookup;
  os_unfair_lock_unlock(&self->_lookupLock);

  return v10;
}

void __51__NTKFaceBundleManager__generateLookupsIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  [*(a1 + 32) addObject:v4];
  objc_sync_exit(v3);
}

- (void)enumerateFaceBundlesOnDevice:(id)device includingLegacy:(BOOL)legacy withBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  blockCopy = block;
  [(NTKFaceBundleManager *)self _generateLookupsIfNecessary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v21 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        if (legacy || ([v15 legacyFaceStyle], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
        {
          if (([objc_msgSend(v15 "faceClass")] & 1) == 0)
          {
            blockCopy[2](blockCopy, v15);
          }
        }

        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }
}

- (id)faceBundleForBundleIdentifier:(id)identifier onDevice:(id)device forMigration:(BOOL)migration
{
  identifierCopy = identifier;
  deviceCopy = device;
  os_unfair_lock_lock(&self->_lookupLock);
  v10 = [(NSMutableDictionary *)self->_progressiveBundleIDLookup objectForKey:identifierCopy];
  os_unfair_lock_unlock(&self->_lookupLock);
  if (!v10)
  {
    loader = [(NTKFaceBundleManager *)self loader];
    v10 = [loader loadFaceBundleWithIdentifier:identifierCopy];

    if (v10)
    {
      os_unfair_lock_lock(&self->_lookupLock);
      [(NSMutableDictionary *)self->_progressiveBundleIDLookup setObject:v10 forKey:identifierCopy];
      os_unfair_lock_unlock(&self->_lookupLock);
      v12 = v10;
    }
  }

  faceClass = [v10 faceClass];
  legacyFaceStyle = [v10 legacyFaceStyle];

  if (legacyFaceStyle)
  {
    v15 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [NTKFaceBundleManager faceBundleForBundleIdentifier:faceClass onDevice:v15 forMigration:?];
    }
  }

  if (migration || ![(objc_class *)faceClass isRestrictedForDevice:deviceCopy]|| CLKIsFaceSnapshotService())
  {
    v16 = v10;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)faceBundleForFaceStyle:(int64_t)style onDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock(&self->_lookupLock);
  progressiveStyleLookup = self->_progressiveStyleLookup;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  v9 = [(NSMutableDictionary *)progressiveStyleLookup objectForKey:v8];

  os_unfair_lock_unlock(&self->_lookupLock);
  if (!v9)
  {
    loader = [(NTKFaceBundleManager *)self loader];
    v9 = [loader loadLegacyFaceBundleForStyle:style];

    if (v9)
    {
      os_unfair_lock_lock(&self->_lookupLock);
      v11 = self->_progressiveStyleLookup;
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:style];
      [(NSMutableDictionary *)v11 setObject:v9 forKey:v12];

      os_unfair_lock_unlock(&self->_lookupLock);
      v13 = v9;
    }
  }

  v14 = [objc_msgSend(v9 "faceClass")];

  if (v14 && !CLKIsFaceSnapshotService())
  {
    v15 = 0;
  }

  else
  {
    v15 = v9;
  }

  return v15;
}

- (void)enumerateArgonKeyDescriptorsWithBlock:(id)block
{
  v32 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    loader = self->_loader;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __62__NTKFaceBundleManager_enumerateArgonKeyDescriptorsWithBlock___block_invoke;
    v28[3] = &unk_27877E890;
    v7 = dictionary;
    v29 = v7;
    [(NTKFaceBundleLoader *)loader enumerateFaceBundleClassesIgnoringCache:0 withBlock:v28];
    v8 = v7;
    objc_sync_enter(v8);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (v10)
    {
      v19 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          unsignedIntegerValue = [v12 unsignedIntegerValue];
          v14 = [v9 objectForKey:v12];
          objc_sync_enter(v14);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v20 objects:v30 count:16];
          if (v16)
          {
            v17 = *v21;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v21 != v17)
                {
                  objc_enumerationMutation(v15);
                }

                blockCopy[2](blockCopy, unsignedIntegerValue, *(*(&v20 + 1) + 8 * j));
              }

              v16 = [v15 countByEnumeratingWithState:&v20 objects:v30 count:16];
            }

            while (v16);
          }

          objc_sync_exit(v15);
        }

        v10 = [v9 countByEnumeratingWithState:&v24 objects:v31 count:16];
      }

      while (v10);
    }

    objc_sync_exit(v9);
  }
}

void __62__NTKFaceBundleManager_enumerateArgonKeyDescriptorsWithBlock___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [NTKArgonKeyDescriptor keyDescriptorFromBundle:v2];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__NTKFaceBundleManager_enumerateArgonKeyDescriptorsWithBlock___block_invoke_2;
  aBlock[3] = &unk_278783A98;
  v16 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  if (v3)
  {
    v5 = [v2 bundleURL];
    v17[0] = *MEMORY[0x277CBEA30];
    v6 = v17[0];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v14 = 0;
    v8 = [v5 resourceValuesForKeys:v7 error:&v14];
    v9 = v14;

    v10 = [v8 objectForKey:v6];
    v11 = v10;
    if (v10)
    {
      if ([v10 BOOLValue])
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }
    }

    else
    {
      v13 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __62__NTKFaceBundleManager_enumerateArgonKeyDescriptorsWithBlock___block_invoke_cold_1(v5, v9, v13);
      }

      v12 = 0;
    }

    v4[2](v4, v12, v3);
  }
}

void __62__NTKFaceBundleManager_enumerateArgonKeyDescriptorsWithBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = [*(a1 + 32) objectForKey:v5];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 32) setObject:v7 forKey:v5];
  }

  objc_sync_exit(v6);

  v8 = v7;
  objc_sync_enter(v8);
  [v8 addObject:v9];
  objc_sync_exit(v8);
}

- (BOOL)loadKeyDescriptor:(id)descriptor
{
  v14 = *MEMORY[0x277D85DE8];
  if (descriptor)
  {
    v11 = 0;
    descriptorCopy = descriptor;
    v5 = NTKAskFaceSupportServerToAddKeyDescriptor(descriptorCopy, 3, &v11);
    v6 = v11;
    fileName = [descriptorCopy fileName];

    v8 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    v9 = v8;
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v13 = fileName;
        _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "Key descriptor %{public}@ was ingested!", buf, 0xCu);
      }

      [(NTKFaceBundleManager *)self _resetCaches];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(NTKFaceBundleManager *)fileName loadKeyDescriptor:v6, v9];
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)faceBundleForBundleIdentifier:(objc_class *)a1 onDevice:(NSObject *)a2 forMigration:.cold.1(objc_class *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromClass(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "%@: Wrong initializer is being used for a bundle with a face style - use +[NTKFace defaultFaceOfStyle:forDevice:]", &v4, 0xCu);
}

void __62__NTKFaceBundleManager_enumerateArgonKeyDescriptorsWithBlock___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2(&dword_22D9C5000, a2, a3, "Error reading status for URL %@ - %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)loadKeyDescriptor:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2(&dword_22D9C5000, a2, a3, "Key descriptor %{public}@ was NOT ingested: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end