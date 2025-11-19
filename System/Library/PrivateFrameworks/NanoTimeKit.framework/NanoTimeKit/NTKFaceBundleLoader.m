@interface NTKFaceBundleLoader
+ (id)faceBundleLoaderWithDirectories:(id)a3;
- (NTKFaceBundleLoader)initWithURLs:(id)a3;
- (id)loadFaceBundleWithIdentifier:(id)a3;
- (id)loadLegacyFaceBundleForStyle:(int64_t)a3;
- (void)_enumerateBundles:(id)a3;
- (void)_loadClassesUsingBlock:(id)a3;
- (void)enumerateFaceBundleClassesIgnoringCache:(BOOL)a3 withBlock:(id)a4;
@end

@implementation NTKFaceBundleLoader

+ (id)faceBundleLoaderWithDirectories:(id)a3
{
  v3 = a3;
  v4 = [[NTKFaceBundleLoader alloc] initWithURLs:v3];

  return v4;
}

- (NTKFaceBundleLoader)initWithURLs:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NTKFaceBundleLoader;
  v5 = [(NTKFaceBundleLoader *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_cacheLock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(NTKBundleLoader);
    loader = v6->_loader;
    v6->_loader = v7;

    v6->_loaderLock._os_unfair_lock_opaque = 0;
    v9 = [v4 copy];
    urls = v6->_urls;
    v6->_urls = v9;
  }

  return v6;
}

- (void)_enumerateBundles:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  kdebug_trace();
  os_unfair_lock_lock(&self->_loaderLock);
  v5 = self->_loader;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = self;
  obj = self->_urls;
  v23 = [(NSSet *)obj countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v23)
  {
    v6 = *v29;
    v7 = *MEMORY[0x277CBEA30];
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v10 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v33 = v9;
          _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "Looking for face bundles in %@…", buf, 0xCu);
        }

        v36 = v7;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
        v27 = 0;
        v12 = [v9 resourceValuesForKeys:v11 error:&v27];
        v13 = v27;

        v14 = [v12 objectForKey:v7];
        v15 = v14;
        if (v14)
        {
          if (([v14 BOOLValue] & 1) == 0)
          {
            [(NTKBundleLoader *)v5 resetCacheForDirectoryURL:v9];
          }
        }

        else
        {
          v16 = v7;
          v17 = v6;
          v18 = v5;
          v19 = v4;
          v20 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v33 = v9;
            v34 = 2112;
            v35 = v13;
            _os_log_error_impl(&dword_22D9C5000, v20, OS_LOG_TYPE_ERROR, "Error getting read status for URL %@ - %@", buf, 0x16u);
          }

          v4 = v19;
          v5 = v18;
          v6 = v17;
          v7 = v16;
        }

        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __41__NTKFaceBundleLoader__enumerateBundles___block_invoke;
        v25[3] = &unk_278782058;
        v26 = v4;
        [(NTKBundleLoader *)v5 enumerateBundlesFromDirectoryURL:v9 enumerator:v25];

        objc_autoreleasePoolPop(context);
      }

      v23 = [(NSSet *)obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v23);
  }

  os_unfair_lock_unlock(&v21->_loaderLock);
  kdebug_trace();
}

uint64_t __41__NTKFaceBundleLoader__enumerateBundles___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLoaded])
  {
    goto LABEL_4;
  }

  v4 = [v3 objectForInfoDictionaryKey:@"NSPrincipalClass"];
  if (v4)
  {

LABEL_4:
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, v3);
    }

    v6 = 1;
    goto LABEL_7;
  }

  v8 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __41__NTKFaceBundleLoader__enumerateBundles___block_invoke_cold_1(v3, v8);
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)_loadClassesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__NTKFaceBundleLoader__loadClassesUsingBlock___block_invoke;
  v6[3] = &unk_2787826C8;
  v7 = v4;
  v5 = v4;
  [(NTKFaceBundleLoader *)self _enumerateBundles:v6];
}

void __46__NTKFaceBundleLoader__loadClassesUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 load];
  v4 = NTKFaceBundleClassesFromBundle(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(a1 + 32) + 16))();
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)loadFaceBundleWithIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__30;
  v15 = __Block_byref_object_dispose__30;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__NTKFaceBundleLoader_loadFaceBundleWithIdentifier___block_invoke;
  v8[3] = &unk_278782080;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(NTKFaceBundleLoader *)self _enumerateBundles:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __52__NTKFaceBundleLoader_loadFaceBundleWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  if ([v4 length])
  {
    v29 = [v3 infoDictionary];
    v28 = [v29 objectForKey:@"NTKFaceBundle"];
    v5 = [v28 objectForKey:@"AdditionalIdentifiers"];
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count") + 1}];
    [v6 addObject:v4];
    v7 = [&unk_284189B60 objectForKey:*(a1 + 32)];
    if ([v7 count])
    {
      [v6 addObjectsFromArray:v7];
    }

    v27 = v7;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v6 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v10);
    }

    if ([v6 containsObject:*(a1 + 32)])
    {
      v25 = v4;
      [v3 load];
      v26 = v3;
      NTKFaceBundleClassesFromBundle(v3);
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v14 = v33 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v31;
        while (2)
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v31 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v30 + 1) + 8 * j);
            v20 = [v19 identifier];
            v21 = [v20 isEqual:*(a1 + 32)];

            if (v21)
            {
              v22 = objc_alloc_init(v19);
              v23 = *(*(a1 + 40) + 8);
              v24 = *(v23 + 40);
              *(v23 + 40) = v22;

              goto LABEL_24;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

      v4 = v25;
      v3 = v26;
    }
  }
}

- (id)loadLegacyFaceBundleForStyle:(int64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__NTKFaceBundleLoader_loadLegacyFaceBundleForStyle___block_invoke;
  v5[3] = &unk_2787826F0;
  v5[4] = &v6;
  v5[5] = a3;
  [(NTKFaceBundleLoader *)self _enumerateBundles:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__NTKFaceBundleLoader_loadLegacyFaceBundleForStyle___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v30 = [v2 infoDictionary];
  v29 = [v30 objectForKey:@"NTKFaceBundle"];
  v3 = [v29 objectForKey:@"LegacyStyles"];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = NTKFaceStyleForString(v10);
          if (v11 != -1)
          {
            v12 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
            [v4 addObject:v12];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v7);
  }

  v13 = [v2 bundleIdentifier];
  v14 = [&unk_284189B88 objectForKey:v13];

  if ([v14 count])
  {
    [v4 addObjectsFromArray:v14];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v16 = [v4 containsObject:v15];

  if (v16)
  {
    v27 = v14;
    [v2 load];
    v28 = v2;
    NTKFaceBundleClassesFromBundle(v2);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v36 = 0u;
    v17 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = objc_alloc_init(*(*(&v33 + 1) + 8 * j));
          v22 = [v21 legacyFaceStyle];
          v23 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
          v24 = [v22 isEqual:v23];

          if (v24)
          {
            v25 = *(*(a1 + 32) + 8);
            v26 = *(v25 + 40);
            *(v25 + 40) = v21;

            goto LABEL_24;
          }
        }

        v18 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_24:

    v14 = v27;
    v2 = v28;
  }
}

- (void)enumerateFaceBundleClassesIgnoringCache:(BOOL)a3 withBlock:(id)a4
{
  v4 = a3;
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    os_unfair_lock_lock(&self->_cacheLock);
    cachedFaceBundles = self->_cachedFaceBundles;
    if (cachedFaceBundles)
    {
      v8 = !v4;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v13 = cachedFaceBundles;
    }

    else
    {
      v9 = [MEMORY[0x277CBEB58] set];
      v10 = [MEMORY[0x277CBEB18] array];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __73__NTKFaceBundleLoader_enumerateFaceBundleClassesIgnoringCache_withBlock___block_invoke;
      v24[3] = &unk_278782718;
      v25 = v9;
      v26 = v10;
      v11 = v10;
      v12 = v9;
      [(NTKFaceBundleLoader *)self _loadClassesUsingBlock:v24];
      v13 = [v11 copy];
      v14 = self->_cachedFaceBundles;
      self->_cachedFaceBundles = v13;
    }

    os_unfair_lock_unlock(&self->_cacheLock);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = v13;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v20 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v6[2](v6, *(*(&v20 + 1) + 8 * v19++));
        }

        while (v17 != v19);
        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v20 objects:v27 count:16];
      }

      while (v17);
    }
  }
}

void __73__NTKFaceBundleLoader_enumerateFaceBundleClassesIgnoringCache_withBlock___block_invoke(uint64_t a1, Class aClass)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromClass(aClass);
  v5 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Loading bundle of class %@…", &v7, 0xCu);
  }

  if (([(objc_class *)aClass isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    if ([*(a1 + 32) containsObject:aClass])
    {
      v6 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412290;
        v8 = v4;
        _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Skipping %@ - Already loaded", &v7, 0xCu);
      }
    }

    else
    {
      [*(a1 + 32) addObject:aClass];
      v6 = objc_alloc_init(aClass);
      if (v6)
      {
        [*(a1 + 40) addObject:v6];
      }
    }
  }

  else
  {
    v6 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __73__NTKFaceBundleLoader_enumerateFaceBundleClassesIgnoringCache_withBlock___block_invoke_cold_1(v4, v6);
    }
  }
}

void __41__NTKFaceBundleLoader__enumerateBundles___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 bundlePath];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Skipping %@ - No NSPrincipalClass", &v4, 0xCu);
}

void __73__NTKFaceBundleLoader_enumerateFaceBundleClassesIgnoringCache_withBlock___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Skipping %@ - Unsupported class", &v2, 0xCu);
}

@end