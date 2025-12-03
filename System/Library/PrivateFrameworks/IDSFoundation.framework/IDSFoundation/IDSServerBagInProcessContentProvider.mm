@interface IDSServerBagInProcessContentProvider
- (IDSServerBagInProcessContentProvider)initWithConfig:(id)config queue:(id)queue;
- (IDSServerBagInProcessContentProvider)initWithConfig:(id)config queue:(id)queue validator:(id)validator networkLoader:(id)loader cacheLoader:(id)cacheLoader;
- (id)currentLoadedContentsWithError:(id *)error;
- (id)updateContentsIfPossibleShouldForce:(BOOL)force;
@end

@implementation IDSServerBagInProcessContentProvider

- (IDSServerBagInProcessContentProvider)initWithConfig:(id)config queue:(id)queue
{
  configCopy = config;
  queueCopy = queue;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = sub_1A7C4CD98;
  v20 = &unk_1E77E2098;
  v8 = queueCopy;
  v21 = v8;
  v9 = configCopy;
  v22 = v9;
  v10 = _Block_copy(&v17);
  v11 = [IDSServerBagNetworkLoader alloc];
  v12 = [(IDSServerBagNetworkLoader *)v11 initWithConfig:v9 queue:v8 connectionMonitorBlock:&unk_1F1AAAC40 URLSessionCreationBlock:v10, v17, v18, v19, v20];
  v13 = [[IDSServerBagValidator alloc] initWithConfig:v9];
  defaultsDomain = [v9 defaultsDomain];

  if (defaultsDomain)
  {
    defaultsDomain = [[IDSServerBagCacheLoader alloc] initWithConfig:v9 queue:v8];
  }

  v15 = [(IDSServerBagInProcessContentProvider *)self initWithConfig:v9 queue:v8 validator:v13 networkLoader:v12 cacheLoader:defaultsDomain];

  return v15;
}

- (IDSServerBagInProcessContentProvider)initWithConfig:(id)config queue:(id)queue validator:(id)validator networkLoader:(id)loader cacheLoader:(id)cacheLoader
{
  configCopy = config;
  queueCopy = queue;
  validatorCopy = validator;
  loaderCopy = loader;
  cacheLoaderCopy = cacheLoader;
  v28.receiver = self;
  v28.super_class = IDSServerBagInProcessContentProvider;
  v17 = [(IDSServerBagInProcessContentProvider *)&v28 init];
  v18 = v17;
  if (v17)
  {
    v17->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v17->_config, config);
    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v18->_validator, validator);
    objc_storeStrong(&v18->_networkLoader, loader);
    objc_storeStrong(&v18->_cacheLoader, cacheLoader);
    objc_initWeak(&location, v18);
    cacheLoader = v18->_cacheLoader;
    if (cacheLoader)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = sub_1A7C4D08C;
      v25[3] = &unk_1E77E20E0;
      objc_copyWeak(&v26, &location);
      [(IDSServerBagCacheLoader *)cacheLoader setCacheDidReloadBlock:v25, configCopy];
      objc_destroyWeak(&v26);
    }

    v20 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7C4D0F0;
    block[3] = &unk_1E77E2108;
    objc_copyWeak(&v24, &location);
    dispatch_after(v20, queueCopy, block);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v18;
}

- (id)currentLoadedContentsWithError:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  cacheLoader = self->_cacheLoader;
  if (!cacheLoader)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v23 = 0;
  v5 = [(IDSServerBagCacheLoader *)cacheLoader loadFromCacheWithError:&v23];
  v6 = v23;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    validator = self->_validator;
    v22 = 0;
    v12 = [(IDSServerBagValidator *)validator trustedContentsFromRawContents:v5 shouldReport:0 withError:&v22];
    v14 = v22;
    if (v12)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      os_unfair_lock_lock(&self->_lock);
      objc_storeStrong(&self->_loadedRawContents, v5);
      os_unfair_lock_unlock(&self->_lock);
      config = [(IDSServerBagInProcessContentProvider *)self config];
      logCategory = [config logCategory];

      if (os_log_type_enabled(logCategory, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        *buf = 138412802;
        v25 = v21;
        v26 = 2048;
        selfCopy3 = self;
        v28 = 2112;
        v29 = v12;
        _os_log_impl(&dword_1A7AD9000, logCategory, OS_LOG_TYPE_DEFAULT, "<%@:%p> cache loaded {loadedContents: %@}", buf, 0x20u);
      }

      goto LABEL_17;
    }

    logCategory = v14;
    config2 = [(IDSServerBagInProcessContentProvider *)self config];
    logCategory2 = [config2 logCategory];

    if (os_log_type_enabled(logCategory2, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      *buf = 138412802;
      v25 = v18;
      v26 = 2048;
      selfCopy3 = self;
      v28 = 2112;
      v29 = logCategory;
      _os_log_impl(&dword_1A7AD9000, logCategory2, OS_LOG_TYPE_DEFAULT, "<%@:%p> cache not validated {cacheValidationError: %@}", buf, 0x20u);
    }
  }

  else
  {
    config3 = [(IDSServerBagInProcessContentProvider *)self config];
    logCategory = [config3 logCategory];

    if (os_log_type_enabled(logCategory, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      *buf = 138412802;
      v25 = v11;
      v26 = 2048;
      selfCopy3 = self;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_1A7AD9000, logCategory, OS_LOG_TYPE_DEFAULT, "<%@:%p> cache not found {cacheLoadError: %@}", buf, 0x20u);
    }
  }

  v12 = 0;
LABEL_17:

LABEL_18:

  return v12;
}

- (id)updateContentsIfPossibleShouldForce:(BOOL)force
{
  forceCopy = force;
  v35 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  loadDate = [(IDSServerBagRawContents *)self->_loadedRawContents loadDate];
  [loadDate timeIntervalSinceNow];
  if (v6 >= 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = -v6;
  }

  [(IDSServerBagRawContents *)self->_loadedRawContents timeToLive];
  v9 = v8;
  os_unfair_lock_unlock(&self->_lock);
  v10 = v7 >= v9 || forceCopy;
  networkLoader = [(IDSServerBagInProcessContentProvider *)self networkLoader];
  isLoading = [networkLoader isLoading];

  config = [(IDSServerBagInProcessContentProvider *)self config];
  logCategory = [config logCategory];

  if (v10 == 1 && isLoading == 0)
  {
    if (os_log_type_enabled(logCategory, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = @"NO";
      *buf = 138413570;
      v24 = v18;
      v25 = 2048;
      if (forceCopy)
      {
        v19 = @"YES";
      }

      selfCopy2 = self;
      v27 = 2112;
      v28 = loadDate;
      v29 = 2048;
      v30 = v7;
      v31 = 2048;
      v32 = v9;
      v33 = 2112;
      v34 = v19;
      _os_log_impl(&dword_1A7AD9000, logCategory, OS_LOG_TYPE_DEFAULT, "<%@:%p> Ready to start loading bag {lastLoad: %@, timeSinceLoad: %f, timeToLive: %f, force: %@}", buf, 0x3Eu);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7C4D690;
    block[3] = &unk_1E77E0818;
    block[4] = self;
    dispatch_async(queue, block);
  }

  else
  {
    if (os_log_type_enabled(logCategory, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = @"NO";
      *buf = 138413570;
      v24 = v16;
      v25 = 2048;
      if (forceCopy)
      {
        v17 = @"YES";
      }

      selfCopy2 = self;
      v27 = 2112;
      v28 = loadDate;
      v29 = 2048;
      v30 = v7;
      v31 = 2048;
      v32 = v9;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&dword_1A7AD9000, logCategory, OS_LOG_TYPE_INFO, "<%@:%p> Should not start loading bag {lastLoad: %@, timeSinceLoad: %f, timeToLive: %f, force: %@}", buf, 0x3Eu);
    }
  }

  return 0;
}

@end