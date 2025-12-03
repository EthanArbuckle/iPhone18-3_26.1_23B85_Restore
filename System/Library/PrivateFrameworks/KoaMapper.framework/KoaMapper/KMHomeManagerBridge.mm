@interface KMHomeManagerBridge
- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block;
- (KMHomeManagerBridge)init;
- (KMHomeManagerBridge)initWithHomeManager:(id)manager setupTimeout:(double)timeout;
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation KMHomeManagerBridge

- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block
{
  v60 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v6 = KMIntentVocabularyAuthorization;
  v7 = KMLogContextCore;
  if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
  {
    v8 = MEMORY[0x277CCABB0];
    setupTimeout = self->_setupTimeout;
    v10 = v7;
    v11 = [v8 numberWithDouble:setupTimeout];
    *buf = 136315394;
    v57 = "[KMHomeManagerBridge enumerateItemsWithError:usingBlock:]";
    v58 = 2112;
    v59 = v11;
    _os_log_impl(&dword_2559DF000, v10, OS_LOG_TYPE_INFO, "%s Waiting up to %@ seconds for home manager setup", buf, 0x16u);
  }

  setupSema = self->_setupSema;
  v13 = dispatch_time(0, (self->_setupTimeout * 1000000000.0));
  if (dispatch_semaphore_wait(setupSema, v13))
  {
    v14 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v57 = "[KMHomeManagerBridge enumerateItemsWithError:usingBlock:]";
      _os_log_impl(&dword_2559DF000, v14, OS_LOG_TYPE_INFO, "%s Timed out waiting for home manager setup", buf, 0xCu);
    }

    v15 = 0;
  }

  else
  {
    homes = [(HMHomeManager *)self->_homeManager homes];
    v17 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v36 = MEMORY[0x277CCABB0];
      v37 = v17;
      v38 = [v36 numberWithUnsignedInteger:{objc_msgSend(homes, "count")}];
      *buf = 136315394;
      v57 = "[KMHomeManagerBridge enumerateItemsWithError:usingBlock:]";
      v58 = 2112;
      v59 = v38;
      _os_log_debug_impl(&dword_2559DF000, v37, OS_LOG_TYPE_DEBUG, "%s Home manager is ready. homesCount: %@", buf, 0x16u);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v18 = homes;
    v19 = [v18 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v19)
    {
      v20 = 0;
      v21 = *v51;
      v42 = v18;
      v40 = *v51;
      while (2)
      {
        v22 = 0;
        v23 = v20;
        v41 = v19;
        do
        {
          if (*v51 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v50 + 1) + 8 * v22);
          context = objc_autoreleasePoolPush();
          itemMapper = self->_itemMapper;
          v49 = v23;
          v26 = [(KVItemMapper *)itemMapper mapObject:v24 error:&v49];
          v20 = v49;

          if (!v26)
          {
            vtable = v6[47].vtable;
            if (os_log_type_enabled(vtable, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v57 = "[KMHomeManagerBridge enumerateItemsWithError:usingBlock:]";
              v58 = 2112;
              v59 = v20;
              _os_log_error_impl(&dword_2559DF000, vtable, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(context);

            KVSetError();
            v15 = 0;
            goto LABEL_28;
          }

          v43 = v20;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v27 = v26;
          v28 = [v27 countByEnumeratingWithState:&v45 objects:v54 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v46;
            while (2)
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v46 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = *(*(&v45 + 1) + 8 * i);
                v33 = objc_autoreleasePoolPush();
                LODWORD(v32) = blockCopy[2](blockCopy, v32);
                objc_autoreleasePoolPop(v33);
                if (!v32)
                {

                  objc_autoreleasePoolPop(context);
                  v18 = v42;

                  v15 = 0;
                  v20 = v43;
                  goto LABEL_28;
                }
              }

              v29 = [v27 countByEnumeratingWithState:&v45 objects:v54 count:16];
              if (v29)
              {
                continue;
              }

              break;
            }
          }

          objc_autoreleasePoolPop(context);
          ++v22;
          v18 = v42;
          v20 = v43;
          v23 = v43;
          v21 = v40;
          v6 = KMIntentVocabularyAuthorization;
        }

        while (v22 != v41);
        v19 = [v42 countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }

      v15 = 1;
    }

    else
    {
      v15 = 1;
      v20 = v18;
    }

LABEL_28:
  }

  v34 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = KMLogContextCore;
  if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[KMHomeManagerBridge homeManagerDidUpdateHomes:]";
    _os_log_impl(&dword_2559DF000, v4, OS_LOG_TYPE_INFO, "%s homeManagerDidUpdateHomes being invoked", &v6, 0xCu);
  }

  dispatch_semaphore_signal(self->_setupSema);
  v5 = *MEMORY[0x277D85DE8];
}

- (KMHomeManagerBridge)initWithHomeManager:(id)manager setupTimeout:(double)timeout
{
  v28 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v23.receiver = self;
  v23.super_class = KMHomeManagerBridge;
  v8 = [(KMHomeManagerBridge *)&v23 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v8->_homeManager, manager);
  if (!v9->_homeManager)
  {
    v17 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[KMHomeManagerBridge initWithHomeManager:setupTimeout:]";
      _os_log_error_impl(&dword_2559DF000, v17, OS_LOG_TYPE_ERROR, "%s Cannot initialize KMHomeManagerBridge with nil homeManager", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v10 = dispatch_semaphore_create(0);
  setupSema = v9->_setupSema;
  v9->_setupSema = v10;

  v9->_setupTimeout = timeout;
  v12 = objc_initWeak(&location, v9);
  [(HMHomeManager *)v9->_homeManager setDelegate:v9];

  v21 = 0;
  v13 = [objc_alloc(MEMORY[0x277D22D30]) initWithObjectClass:objc_opt_class() error:&v21];
  v14 = v21;
  itemMapper = v9->_itemMapper;
  v9->_itemMapper = v13;

  if (!v9->_itemMapper)
  {
    v18 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[KMHomeManagerBridge initWithHomeManager:setupTimeout:]";
      v26 = 2112;
      v27 = v14;
      _os_log_error_impl(&dword_2559DF000, v18, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    objc_destroyWeak(&location);
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  objc_destroyWeak(&location);
LABEL_5:
  v16 = v9;
LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (KMHomeManagerBridge)init
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v3 = getHMMutableHomeManagerConfigurationClass_softClass;
  v21 = getHMMutableHomeManagerConfigurationClass_softClass;
  if (!getHMMutableHomeManagerConfigurationClass_softClass)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getHMMutableHomeManagerConfigurationClass_block_invoke;
    v16 = &unk_279805BF8;
    v17 = &v18;
    __getHMMutableHomeManagerConfigurationClass_block_invoke(&v13);
    v3 = v19[3];
  }

  v4 = v3;
  _Block_object_dispose(&v18, 8);
  v5 = [[v3 alloc] initWithOptions:1025 cachePolicy:0];
  [v5 setDiscretionary:0];
  v6 = objc_opt_new();
  [v5 setDelegateQueue:v6];

  v7 = objc_alloc_init(KM_HMFLocationAuthorization);
  [v5 setLocationAuthorization:v7];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v8 = getHMHomeManagerClass_softClass;
  v21 = getHMHomeManagerClass_softClass;
  if (!getHMHomeManagerClass_softClass)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getHMHomeManagerClass_block_invoke;
    v16 = &unk_279805BF8;
    v17 = &v18;
    __getHMHomeManagerClass_block_invoke(&v13);
    v8 = v19[3];
  }

  v9 = v8;
  _Block_object_dispose(&v18, 8);
  v10 = [[v8 alloc] initWithHomeMangerConfiguration:v5];
  v11 = [[KMHomeManagerBridge alloc] initWithHomeManager:v10 setupTimeout:30.0];

  return v11;
}

@end