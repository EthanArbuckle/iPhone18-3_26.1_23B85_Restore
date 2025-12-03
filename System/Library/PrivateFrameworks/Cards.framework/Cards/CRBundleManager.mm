@interface CRBundleManager
+ (id)bundleDirectoryPath;
+ (id)sharedInstance;
- (CRBundleManager)init;
- (void)_getBundlesOnCurrentQueueWithCompletion:(id)completion;
- (void)getBundlesWithCompletion:(id)completion;
@end

@implementation CRBundleManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CRBundleManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sBundleManager;

  return v2;
}

uint64_t __33__CRBundleManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sBundleManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (CRBundleManager)init
{
  v7.receiver = self;
  v7.super_class = CRBundleManager;
  v2 = [(CRBundleManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.cards.CRBundleManager.serial-queue", v3);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;
  }

  return v2;
}

+ (id)bundleDirectoryPath
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = CPSystemRootDirectory();
  v12[0] = v4;
  v12[1] = @"System";
  v5 = MEMORY[0x277CCACA8];
  bundleDirectoryName = [self bundleDirectoryName];
  v7 = [v5 stringWithFormat:@"/Library/%@/Plugins", bundleDirectoryName];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v9 = [v3 pathWithComponents:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)getBundlesWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CRBundleManager_getBundlesWithCompletion___block_invoke;
  block[3] = &unk_278DA58C8;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __44__CRBundleManager_getBundlesWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _getBundlesOnCurrentQueueWithCompletion:v3];
  }

  else
  {
    if (!v3)
    {
      goto LABEL_6;
    }

    v4 = 0;
    (*(v3 + 16))(v3, 0, 0);
  }

  WeakRetained = v4;
LABEL_6:
}

- (void)_getBundlesOnCurrentQueueWithCompletion:(id)completion
{
  v58 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = completionCopy;
  if (!self->_bundles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    bundles = self->_bundles;
    self->_bundles = v6;

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    bundleDirectoryPath = [objc_opt_class() bundleDirectoryPath];
    v10 = CRLogContextCards;
    if (os_log_type_enabled(CRLogContextCards, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v54 = bundleDirectoryPath;
      _os_log_impl(&dword_24327C000, v10, OS_LOG_TYPE_INFO, "Looking for plugins in %@", buf, 0xCu);
    }

    if ([defaultManager fileExistsAtPath:bundleDirectoryPath])
    {
      v43 = defaultManager;
      v44 = v5;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v48 = 0;
      v11 = [defaultManager contentsOfDirectoryAtPath:bundleDirectoryPath error:&v48];
      v42 = v48;
      obj = v11;
      v12 = [v11 countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v50;
        v15 = @"bundle";
        do
        {
          v16 = 0;
          v45 = v13;
          do
          {
            if (*v50 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v49 + 1) + 8 * v16);
            v18 = [bundleDirectoryPath stringByAppendingPathComponent:v17];
            pathExtension = [v18 pathExtension];
            v20 = [pathExtension isEqualToString:v15];

            v21 = CRLogContextCards;
            v22 = os_log_type_enabled(CRLogContextCards, OS_LOG_TYPE_INFO);
            if (v20)
            {
              v23 = v15;
              v24 = bundleDirectoryPath;
              if (v22)
              {
                *buf = 138412290;
                v54 = v17;
                _os_log_impl(&dword_24327C000, v21, OS_LOG_TYPE_INFO, "Found bundle: %@", buf, 0xCu);
              }

              selfCopy = self;
              bundleClass = [objc_opt_class() bundleClass];
              v27 = [bundleClass isSubclassOfClass:objc_opt_class()];
              v28 = CRLogContextCards;
              v29 = os_log_type_enabled(CRLogContextCards, OS_LOG_TYPE_INFO);
              if (v27)
              {
                if (v29)
                {
                  v30 = v28;
                  v31 = NSStringFromClass(bundleClass);
                  *buf = 138412546;
                  v54 = v31;
                  v55 = 2112;
                  v56 = v17;
                  _os_log_impl(&dword_24327C000, v30, OS_LOG_TYPE_INFO, "Initializing a bundle of type %@ for plugin %@", buf, 0x16u);
                }
              }

              else
              {
                if (v29)
                {
                  v32 = v28;
                  v33 = NSStringFromClass(bundleClass);
                  *buf = 138412546;
                  v54 = v33;
                  v55 = 2112;
                  v56 = v17;
                  _os_log_impl(&dword_24327C000, v32, OS_LOG_TYPE_INFO, "Defaulting to bundle of type %@ for plugin %@", buf, 0x16u);
                }

                bundleClass = MEMORY[0x277CCA8D8];
              }

              self = selfCopy;
              v34 = [[bundleClass alloc] initWithPath:v18];
              v47 = 0;
              [v34 loadAndReturnError:&v47];
              v35 = v47;
              v36 = v35;
              v37 = CRLogContextCards;
              bundleDirectoryPath = v24;
              if (!v34 || v35)
              {
                v15 = v23;
                v13 = v45;
                if (os_log_type_enabled(CRLogContextCards, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v54 = v18;
                  v55 = 2112;
                  v56 = v36;
                  _os_log_error_impl(&dword_24327C000, v37, OS_LOG_TYPE_ERROR, "Error loading bundle at path %@: %@", buf, 0x16u);
                }
              }

              else
              {
                v15 = v23;
                if (os_log_type_enabled(CRLogContextCards, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v54 = v34;
                  _os_log_impl(&dword_24327C000, v37, OS_LOG_TYPE_INFO, "Registering bundle: %@", buf, 0xCu);
                }

                [(NSMutableSet *)self->_bundles addObject:v34];
                v13 = v45;
              }
            }

            else if (v22)
            {
              *buf = 138412290;
              v54 = v17;
              _os_log_impl(&dword_24327C000, v21, OS_LOG_TYPE_INFO, "File is not a bundle, continuing: %@", buf, 0xCu);
            }

            ++v16;
          }

          while (v13 != v16);
          v13 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
        }

        while (v13);
      }

      v38 = v42;
      if (!v42)
      {
        defaultManager = v43;
        v5 = v44;
        if (!v44)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v39 = CRLogContextCards;
      defaultManager = v43;
      v5 = v44;
      if (os_log_type_enabled(CRLogContextCards, OS_LOG_TYPE_ERROR))
      {
        [(CRBundleManager *)bundleDirectoryPath _getBundlesOnCurrentQueueWithCompletion:v42, v39];
        if (!v44)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v40 = CRLogContextCards;
      if (os_log_type_enabled(CRLogContextCards, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v54 = bundleDirectoryPath;
        _os_log_impl(&dword_24327C000, v40, OS_LOG_TYPE_INFO, "Bundle directory doesn't exist at path %@", buf, 0xCu);
      }

      v38 = 0;
    }

    if (!v5)
    {
LABEL_42:

      goto LABEL_43;
    }

LABEL_41:
    (v5)[2](v5, self->_bundles, v38);
    goto LABEL_42;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
  }

LABEL_43:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_getBundlesOnCurrentQueueWithCompletion:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_24327C000, log, OS_LOG_TYPE_ERROR, "Error loading bundles at path %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end