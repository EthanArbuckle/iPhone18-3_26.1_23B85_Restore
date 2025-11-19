@interface IDSServerBagCacheLoader
- (IDSServerBagCacheLoader)initWithConfig:(id)a3 queue:(id)a4;
- (id)clearOverrideValues;
- (id)loadFromCacheWithError:(id *)a3;
- (id)loadOverrideValuesIfPresent;
- (id)writeOverrideValues:(id)a3;
- (id)writeRawContents:(id)a3;
- (void)dealloc;
@end

@implementation IDSServerBagCacheLoader

- (id)loadOverrideValuesIfPresent
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (v4)
  {
    v5 = [(IDSServerBagCacheLoader *)self config];
    v6 = [v5 defaultsDomain];

    v7 = CFPreferencesCopyValue(@"OverrideValues", v6, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (IDSServerBagCacheLoader)initWithConfig:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v15.receiver = self;
    v15.super_class = IDSServerBagCacheLoader;
    v9 = [(IDSServerBagCacheLoader *)&v15 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_config, a3);
      objc_storeStrong(&v10->_queue, a4);
      v10->_loadedNotification = 0;
      v11 = [objc_alloc(MEMORY[0x1E69956C8]) initWithCapacity:1 queue:v8 block:&unk_1F1AAA8E0];
      handleExternalLoadTaskQueue = v10->_handleExternalLoadTaskQueue;
      v10->_handleExternalLoadTaskQueue = v11;
    }

    self = v10;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)loadFromCacheWithError:(id *)a3
{
  v5 = [(IDSServerBagCacheLoader *)self config];
  v6 = [v5 defaultsDomain];

  v7 = *MEMORY[0x1E695E8B8];
  v8 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(v6, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (!self->_loadedNotification)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1A7BE72A8, @"__k_IDSServerBagFinishedLoadingDistributedNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
    self->_loadedNotification = 1;
  }

  v10 = CFPreferencesCopyValue(@"CachedBag", v6, v7, v8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    v12 = CFPreferencesCopyValue(@"CacheTime", v6, v7, v8);
    v13 = CFPreferencesCopyValue(@"Date", v6, v7, v8);
    v14 = CFPreferencesCopyValue(@"CachedSignature", v6, v7, v8);
    v15 = CFPreferencesCopyValue(@"CacheCertificate", v6, v7, v8);
    if (v13)
    {
      v16 = MEMORY[0x1E695DF00];
      [v13 doubleValue];
      v17 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v17 = 0;
    }

    v19 = [IDSServerBagRawContents alloc];
    [v12 doubleValue];
    v18 = [(IDSServerBagRawContents *)v19 initWithLoadDate:v17 timeToLive:v14 serverSignature:v15 serverCerts:v11 signedBag:?];
  }

  else if (a3)
  {
    IDSServerBagContentErrorWithUnderlyingError(300, 0);
    *a3 = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)writeRawContents:(id)a3
{
  v4 = a3;
  v5 = [(IDSServerBagCacheLoader *)self config];
  v6 = [v5 defaultsDomain];

  v7 = [(IDSServerBagCacheLoader *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A7BE7398;
  block[3] = &unk_1E77E1248;
  v12 = self;
  v13 = v6;
  v11 = v4;
  v8 = v4;
  dispatch_async(v7, block);

  return 0;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"__k_IDSServerBagFinishedLoadingDistributedNotification", 0);
  v4.receiver = self;
  v4.super_class = IDSServerBagCacheLoader;
  [(IDSServerBagCacheLoader *)&v4 dealloc];
}

- (id)writeOverrideValues:(id)a3
{
  v4 = a3;
  v5 = [(IDSServerBagCacheLoader *)self config];
  v6 = [v5 defaultsDomain];

  v7 = [v4 copy];
  v8 = v7;
  v9 = *MEMORY[0x1E695E8B8];
  v10 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"OverrideValues", v8, v6, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);

  CFPreferencesSynchronize(v6, v9, v10);
  v11 = [(IDSServerBagCacheLoader *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A7E1A378;
  block[3] = &unk_1E77E0818;
  block[4] = self;
  dispatch_async(v11, block);

  return 0;
}

- (id)clearOverrideValues
{
  v3 = [(IDSServerBagCacheLoader *)self config];
  v4 = [v3 defaultsDomain];

  v5 = *MEMORY[0x1E695E8B8];
  v6 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"OverrideValues", 0, v4, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  CFPreferencesSynchronize(v4, v5, v6);
  v7 = [(IDSServerBagCacheLoader *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A7E1A37C;
  block[3] = &unk_1E77E0818;
  block[4] = self;
  dispatch_async(v7, block);

  return 0;
}

@end