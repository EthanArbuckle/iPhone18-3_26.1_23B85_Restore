@interface _CRKBundleManager
+ (id)bundleDirectoryPath;
+ (id)sharedInstance;
- (NSSet)bundles;
- (_CRKBundleManager)init;
- (void)loadBundles;
- (void)registerBundle:(id)a3;
@end

@implementation _CRKBundleManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35___CRKBundleManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sBundleManager;

  return v2;
}

- (_CRKBundleManager)init
{
  v6.receiver = self;
  v6.super_class = _CRKBundleManager;
  v2 = [(_CRKBundleManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    bundles = v2->_bundles;
    v2->_bundles = v3;
  }

  return v2;
}

+ (id)bundleDirectoryPath
{
  if (bundleDirectoryPath_onceToken != -1)
  {
    +[_CRKBundleManager bundleDirectoryPath];
  }

  v3 = bundleDirectoryPath_sBundleDirectoryPath;

  return v3;
}

- (void)loadBundles
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [objc_opt_class() bundleDirectoryPath];
  v5 = MEMORY[0x277CF93F0];
  v6 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = v4;
    _os_log_impl(&dword_243247000, v6, OS_LOG_TYPE_INFO, "Looking for plugins in %@", buf, 0xCu);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0;
  v25 = v3;
  obj = [v3 contentsOfDirectoryAtPath:v4 error:&v29];
  v27 = v29;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v28 = *v31;
    do
    {
      v9 = 0;
      do
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        v11 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v35 = v10;
          _os_log_impl(&dword_243247000, v11, OS_LOG_TYPE_INFO, "Found plugin: %@", buf, 0xCu);
        }

        v12 = v4;
        v13 = [v4 stringByAppendingPathComponent:v10];
        v14 = [objc_opt_class() bundleClass];
        v15 = [v14 isSubclassOfClass:objc_opt_class()];
        v16 = v5;
        v17 = *v5;
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
        if (v15)
        {
          if (v18)
          {
            v19 = v17;
            v20 = NSStringFromClass(v14);
            *buf = 138412546;
            v35 = v20;
            v36 = 2112;
            v37 = v10;
            _os_log_impl(&dword_243247000, v19, OS_LOG_TYPE_INFO, "Initializing a bundle of type %@ for plugin %@", buf, 0x16u);
          }
        }

        else
        {
          if (v18)
          {
            v21 = v17;
            v22 = NSStringFromClass(v14);
            *buf = 138412546;
            v35 = v22;
            v36 = 2112;
            v37 = v10;
            _os_log_impl(&dword_243247000, v21, OS_LOG_TYPE_INFO, "Defaulting to bundle of type %@ for plugin %@", buf, 0x16u);
          }

          v14 = MEMORY[0x277CCA8D8];
        }

        v4 = v12;
        v23 = [[v14 alloc] initWithPath:v13];
        v5 = v16;
        if (!v23 || v27)
        {
          v24 = *v16;
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v35 = v13;
            v36 = 2112;
            v37 = v27;
            _os_log_error_impl(&dword_243247000, v24, OS_LOG_TYPE_ERROR, "Error loading bundle at path %@:%@", buf, 0x16u);
          }
        }

        else
        {
          [(_CRKBundleManager *)self registerBundle:v23];
        }

        ++v9;
      }

      while (v8 != v9);
      v8 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v8);
  }
}

- (void)registerBundle:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_243247000, v5, OS_LOG_TYPE_INFO, "Registering bundle: %@", &v6, 0xCu);
    }

    [(NSMutableSet *)self->_bundles addObject:v4];
  }
}

- (NSSet)bundles
{
  v2 = [(NSMutableSet *)self->_bundles copy];

  return v2;
}

@end