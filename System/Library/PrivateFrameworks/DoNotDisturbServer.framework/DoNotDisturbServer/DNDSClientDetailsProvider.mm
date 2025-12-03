@interface DNDSClientDetailsProvider
+ (id)_defaultModuleDirectories;
- (DNDSClientDetailsProvider)init;
- (id)clientDetailsForIdentifier:(id)identifier applicationBundleURL:(id)l;
- (id)findClientDetailsForIdentifier:(id)identifier;
- (void)_loadPreloadBundles;
@end

@implementation DNDSClientDetailsProvider

- (DNDSClientDetailsProvider)init
{
  v6.receiver = self;
  v6.super_class = DNDSClientDetailsProvider;
  v2 = [(DNDSClientDetailsProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    detailsByIdentifier = v2->_detailsByIdentifier;
    v2->_detailsByIdentifier = v3;

    [(DNDSClientDetailsProvider *)v2 _loadPreloadBundles];
  }

  return v2;
}

- (id)findClientDetailsForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->_detailsByIdentifier;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_detailsByIdentifier objectForKey:identifierCopy];
  objc_sync_exit(v5);

  return v6;
}

- (id)clientDetailsForIdentifier:(id)identifier applicationBundleURL:(id)l
{
  v27[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  lCopy = l;
  v8 = self->_detailsByIdentifier;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)self->_detailsByIdentifier objectForKey:identifierCopy];
  if (!v9)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__DNDSClientDetailsProvider_clientDetailsForIdentifier_applicationBundleURL___block_invoke;
    aBlock[3] = &unk_278F8B558;
    aBlock[4] = self;
    v10 = _Block_copy(aBlock);
    v11 = v10[2](v10, identifierCopy);
    v9 = v11;
    if (lCopy && !v11)
    {
      v9 = [DNDSClientDetails detailsForClientIdentifier:identifierCopy applicationBundleURL:lCopy];
    }

    if (!v9)
    {
      if ([identifierCopy isEqualToString:@"com.apple.donotdisturb.private.schedule"])
      {
        goto LABEL_11;
      }

      if (![identifierCopy hasSuffix:@".private.schedule"])
      {
        goto LABEL_11;
      }

      v12 = [(NSMutableDictionary *)self->_detailsByIdentifier objectForKey:@"com.apple.donotdisturb.private.schedule"];
      if (!v12)
      {
        v12 = v10[2](v10, @"com.apple.donotdisturb.private.schedule");
        [(NSMutableDictionary *)self->_detailsByIdentifier setObject:v12 forKey:@"com.apple.donotdisturb.private.schedule"];
        if (!v12)
        {
          goto LABEL_11;
        }
      }

      v24 = [DNDSClientDetails alloc];
      v27[0] = identifierCopy;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
      isResolutionContextAssumingDeviceUILocked = [v12 isResolutionContextAssumingDeviceUILocked];
      isUserInteractionClient = [v12 isUserInteractionClient];
      isPersistentAssertionClient = [v12 isPersistentAssertionClient];
      isSyncSuppressedClient = [v12 isSyncSuppressedClient];
      isIOS14SyncSuppressedClient = [v12 isIOS14SyncSuppressedClient];
      BYTE1(v21) = [v12 forcesAssertionStatusUpdate];
      LOBYTE(v21) = isIOS14SyncSuppressedClient;
      v9 = [(DNDSClientDetails *)v24 initWithClientIdentifier:identifierCopy identifiers:v13 resolutionContextAssumingDeviceUILocked:isResolutionContextAssumingDeviceUILocked userInteractionClient:isUserInteractionClient persistentAssertionClient:isPersistentAssertionClient syncSuppressedClient:isSyncSuppressedClient iOS14SyncSuppressedClient:v21 forcesAssertionStatusUpdate:?];

      if (!v9)
      {
LABEL_11:
        v17 = [DNDSClientDetails alloc];
        v26 = identifierCopy;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
        LOWORD(v21) = 0;
        v9 = [(DNDSClientDetails *)v17 initWithClientIdentifier:identifierCopy identifiers:v18 resolutionContextAssumingDeviceUILocked:0 userInteractionClient:0 persistentAssertionClient:0 syncSuppressedClient:0 iOS14SyncSuppressedClient:v21 forcesAssertionStatusUpdate:?];
      }
    }

    [(NSMutableDictionary *)self->_detailsByIdentifier setObject:v9 forKey:identifierCopy];
  }

  objc_sync_exit(v8);

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

id __77__DNDSClientDetailsProvider_clientDetailsForIdentifier_applicationBundleURL___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(a1 + 32);
  obj = [objc_opt_class() _defaultModuleDirectories];
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v18 + 1) + 8 * i) URLByAppendingPathComponent:v3];
        v10 = [v9 URLByAppendingPathExtension:@"bundle"];

        v11 = [MEMORY[0x277CCAA00] defaultManager];
        v12 = [v10 path];
        v13 = [v11 fileExistsAtPath:v12];

        if (v13)
        {
          v14 = [DNDSClientDetails detailsForBundleAtURL:v10];

          goto LABEL_11;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_defaultModuleDirectories
{
  if (_defaultModuleDirectories_onceToken != -1)
  {
    +[DNDSClientDetailsProvider _defaultModuleDirectories];
  }

  v3 = _defaultModuleDirectories_directories;

  return v3;
}

void __54__DNDSClientDetailsProvider__defaultModuleDirectories__block_invoke()
{
  v5 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  if (os_variant_has_internal_content())
  {
    v0 = [MEMORY[0x277CCACA8] pathWithComponents:&unk_285C53C18];
    v1 = [v5 arrayByAddingObject:v0];

    v2 = v1;
  }

  else
  {
    v2 = v5;
  }

  v6 = v2;
  v3 = [v2 bs_map:&__block_literal_global_22];
  v4 = _defaultModuleDirectories_directories;
  _defaultModuleDirectories_directories = v3;
}

id __54__DNDSClientDetailsProvider__defaultModuleDirectories__block_invoke_2(uint64_t a1, void *a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEBC0];
  v3 = a2;
  v4 = BSSystemRootDirectory();
  v9[0] = v4;
  v9[1] = v3;
  v9[2] = @"DoNotDisturb";
  v9[3] = @"ClientBundles";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  v6 = [v2 fileURLWithPathComponents:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_loadPreloadBundles
{
  v29 = *MEMORY[0x277D85DE8];
  _defaultModuleDirectories = [objc_opt_class() _defaultModuleDirectories];
  v18 = [_defaultModuleDirectories bs_mapNoNulls:&__block_literal_global_32];

  bs_flatten = [v18 bs_flatten];
  v16 = [bs_flatten bs_filter:&__block_literal_global_35];
  v4 = [v16 bs_mapNoNulls:&__block_literal_global_41];
  obj = self->_detailsByIdentifier;
  objc_sync_enter(obj);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        identifiers = [v9 identifiers];
        v11 = [identifiers countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = *v20;
          do
          {
            v13 = 0;
            do
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(identifiers);
              }

              [(NSMutableDictionary *)self->_detailsByIdentifier setObject:v9 forKey:*(*(&v19 + 1) + 8 * v13++)];
            }

            while (v11 != v13);
            v11 = [identifiers countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v11);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  objc_sync_exit(obj);
  v14 = *MEMORY[0x277D85DE8];
}

id __48__DNDSClientDetailsProvider__loadPreloadBundles__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAA00];
  v3 = a2;
  v4 = [v2 defaultManager];
  v5 = [v4 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:1 error:0];

  return v5;
}

uint64_t __48__DNDSClientDetailsProvider__loadPreloadBundles__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 path];
  v3 = [v2 hasSuffix:@".preload.bundle"];

  return v3;
}

@end