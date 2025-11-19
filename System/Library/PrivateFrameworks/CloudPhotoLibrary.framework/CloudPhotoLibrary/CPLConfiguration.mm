@interface CPLConfiguration
- (BOOL)allowsLocalConflictResolutionWhenOverQuota;
- (BOOL)isComputeStateTaskUploadEnabled;
- (BOOL)shouldCheckEPPCapability;
- (BOOL)shouldDisableEPP;
- (CPLConfiguration)initWithClientLibraryBaseURL:(id)a3 configurationURL:(id)a4 minUpdateInterval:(double)a5 updateIntervalKey:(id)a6;
- (CPLConfiguration)initWithClientLibraryBaseURL:(id)a3 minUpdateInterval:(double)a4 updateIntervalKey:(id)a5;
- (CPLConfigurationDictionary)configurationDictionary;
- (NSDate)lastUpdateDate;
- (id)valueForKey:(id)a3;
- (int64_t)maximumComputeStatesToUploadPerBatch;
- (void)_load;
- (void)_save;
- (void)_updateConfigurationDictionary:(id)a3;
- (void)check;
- (void)configurationFetcher:(id)a3 didUpdateConfigurationDictionary:(id)a4 configurationHasChanged:(BOOL)a5;
- (void)invalidate;
- (void)refetchFromDisk;
- (void)setIsComputeStateTaskUploadEnabled:(BOOL)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
- (void)updateConfigurationDictionary:(id)a3;
@end

@implementation CPLConfiguration

- (NSDate)lastUpdateDate
{
  v2 = [(CPLConfiguration *)self configurationDictionary];
  v3 = [v2 lastUpdateDate];

  return v3;
}

- (void)invalidate
{
  lock = self->_lock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CPLConfiguration_invalidate__block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_sync(lock, block);
}

void __30__CPLConfiguration_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __36__CPLConfiguration_setValue_forKey___block_invoke;
  v14[3] = &unk_1E861B1C8;
  v14[4] = self;
  v15 = v7;
  v16 = v6;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_10131;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = lock;
  v11 = v6;
  v12 = v7;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __36__CPLConfiguration_setValue_forKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _load];
  v2 = [*(*(a1 + 32) + 8) copyConfigurationDictionaryWithUpdatedKey:*(a1 + 40) value:*(a1 + 48)];
  [*(a1 + 32) _updateConfigurationDictionary:v2];
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10050;
  v16 = __Block_byref_object_dispose__10051;
  v17 = 0;
  lock = self->_lock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__CPLConfiguration_valueForKey___block_invoke;
  block[3] = &unk_1E861F868;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(lock, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __32__CPLConfiguration_valueForKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _load];
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)refetchFromDisk
{
  lock = self->_lock;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__CPLConfiguration_refetchFromDisk__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_10131;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = lock;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __35__CPLConfiguration_refetchFromDisk__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (void)updateConfigurationDictionary:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CPLConfiguration_updateConfigurationDictionary___block_invoke;
  v7[3] = &unk_1E861B290;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(lock, v7);
}

- (CPLConfigurationDictionary)configurationDictionary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10050;
  v10 = __Block_byref_object_dispose__10051;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__CPLConfiguration_configurationDictionary__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__CPLConfiguration_configurationDictionary__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _load];
  v2 = *(*(a1 + 32) + 8);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)_updateConfigurationDictionary:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_lock);
  v5 = [(CPLConfigurationDictionary *)self->_configurationDictionary lastUpdateDate];
  configurationDictionaryUniquifier = self->_configurationDictionaryUniquifier;
  if (configurationDictionaryUniquifier)
  {
    v7 = configurationDictionaryUniquifier[2](configurationDictionaryUniquifier, v4);
  }

  else
  {
    v7 = v4;
  }

  configurationDictionary = self->_configurationDictionary;
  self->_configurationDictionary = v7;

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLConfigurationOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_configurationDictionary;
      v11 = [(NSURL *)self->_configurationFileURL path];
      if (v5)
      {
        v12 = [CPLDateFormatter stringFromDateAgo:v5 now:0];
      }

      else
      {
        v12 = @"never";
      }

      v14 = 134218498;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Updated configuration %p at %@. Last update was %{public}@", &v14, 0x20u);
      if (v5)
      {
      }
    }
  }

  [(CPLConfiguration *)self _save];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_load
{
  v3 = self;
  v41 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_lock);
  if (!*(v3 + 8))
  {
    v4 = [CPLConfigurationDictionary alloc];
    v5 = *(v3 + 16);
    v6 = *(v3 + 72);
    v7 = *(v3 + 64);
    v34 = 0;
    v8 = [(CPLConfigurationDictionary *)v4 initWithContentsOfURL:v5 refreshIntervalKey:v6 minRefreshInterval:&v34 error:v7];
    v9 = v34;
    v10 = *(v3 + 8);
    *(v3 + 8) = v8;

    if (*(v3 + 8))
    {
      v11 = *(v3 + 80);
      if (v11)
      {
        v12 = (*(v11 + 16))();
        v13 = *(v3 + 8);
        *(v3 + 8) = v12;

        if (!*(v3 + 8))
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v31 = __CPLGenericOSLogDomain();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_1DC05A000, v31, OS_LOG_TYPE_ERROR, "Uniquifying configuration dictionary returned a nil value", buf, 2u);
            }
          }

          v32 = [MEMORY[0x1E696AAA8] currentHandler];
          v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLConfiguration.m"];
          [v32 handleFailureInMethod:a2 object:v3 file:v33 lineNumber:209 description:@"Uniquifying configuration dictionary returned a nil value"];

          abort();
        }
      }

      if (_CPLSilentLogging)
      {
        goto LABEL_24;
      }

      v14 = __CPLConfigurationOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(v3 + 8);
        v16 = [*(v3 + 16) path];
        v17 = [*(v3 + 8) lastUpdateDate];
        if (v17)
        {
          v3 = [*(v3 + 8) lastUpdateDate];
          v18 = [CPLDateFormatter stringFromDateAgo:v3 now:0];
        }

        else
        {
          v18 = @"never";
        }

        *buf = 134218498;
        v36 = v15;
        v37 = 2112;
        v38 = v16;
        v39 = 2114;
        v40 = v18;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "Loaded configuration %p at %@. Last update was %{public}@", buf, 0x20u);
        if (v17)
        {
        }
      }

LABEL_23:

LABEL_24:
      goto LABEL_25;
    }

    v19 = [MEMORY[0x1E696AC08] defaultManager];
    v20 = [v19 cplIsFileDoesNotExistError:v9];

    if (v20)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v21 = __CPLConfigurationOSLogDomain();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [*(v3 + 16) path];
          *buf = 138412290;
          v36 = v22;
          v23 = "Configuration does not exist at %@ - will use built-in one";
          v24 = v21;
          v25 = OS_LOG_TYPE_DEFAULT;
          v26 = 12;
LABEL_16:
          _os_log_impl(&dword_1DC05A000, v24, v25, v23, buf, v26);

          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = __CPLConfigurationOSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [*(v3 + 16) path];
        *buf = 138412546;
        v36 = v22;
        v37 = 2112;
        v38 = v9;
        v23 = "Failed to load saved configuration at %@ - will use built-in one: %@";
        v24 = v21;
        v25 = OS_LOG_TYPE_ERROR;
        v26 = 22;
        goto LABEL_16;
      }

LABEL_17:
    }

    v27 = [CPLConfigurationDictionary alloc];
    v14 = [*(v3 + 56) lastPathComponent];
    v28 = [(CPLConfigurationDictionary *)v27 initWithConfigurationName:v14 refreshIntervalKey:*(v3 + 72) minRefreshInterval:*(v3 + 64)];
    v29 = *(v3 + 8);
    *(v3 + 8) = v28;

    goto LABEL_23;
  }

LABEL_25:
  v30 = *MEMORY[0x1E69E9840];
}

- (void)_save
{
  v20 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_lock);
  v3 = [(CPLConfigurationDictionary *)self->_configurationDictionary lastUpdateDate];

  if (v3)
  {
    configurationDictionary = self->_configurationDictionary;
    configurationFileURL = self->_configurationFileURL;
    v15 = 0;
    v6 = [(CPLConfigurationDictionary *)configurationDictionary writeToURL:configurationFileURL error:&v15];
    v7 = v15;
    if (v6)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLConfigurationOSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [(NSURL *)self->_configurationFileURL path];
          *buf = 138412290;
          v17 = v9;
          v10 = "Wrote configuration to %@";
          v11 = v8;
          v12 = OS_LOG_TYPE_DEFAULT;
          v13 = 12;
LABEL_12:
          _os_log_impl(&dword_1DC05A000, v11, v12, v10, buf, v13);

          goto LABEL_13;
        }

        goto LABEL_13;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLConfigurationOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [(NSURL *)self->_configurationFileURL path];
        *buf = 138412546;
        v17 = v9;
        v18 = 2112;
        v19 = v7;
        v10 = "Failed to write configuration to %@: %@";
        v11 = v8;
        v12 = OS_LOG_TYPE_ERROR;
        v13 = 22;
        goto LABEL_12;
      }

LABEL_13:
    }

LABEL_14:

    goto LABEL_15;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLConfigurationOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NSURL *)self->_configurationFileURL path];
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Not saving built-in configuration to %@", buf, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_14;
  }

LABEL_15:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)configurationFetcher:(id)a3 didUpdateConfigurationDictionary:(id)a4 configurationHasChanged:(BOOL)a5
{
  v11 = a4;
  lock = self->_lock;
  v8 = a3;
  dispatch_assert_queue_V2(lock);
  configurationFetcher = self->_configurationFetcher;

  if (configurationFetcher == v8)
  {
    [(CPLConfiguration *)self _updateConfigurationDictionary:v11];
    v10 = self->_configurationFetcher;
    self->_configurationFetcher = 0;
  }
}

- (void)check
{
  lock = self->_lock;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __25__CPLConfiguration_check__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_10131;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = lock;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __25__CPLConfiguration_check__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if ((*(result + 48) & 1) == 0 && !*(result + 80))
  {
    [result _load];
    result = [*(*(a1 + 32) + 8) isStale];
    if (result)
    {
      if (!*(*(a1 + 32) + 32))
      {
        v3 = [[CPLConfigurationFetcher alloc] initWithConfigurationURL:*(*(a1 + 32) + 56) delegate:*(a1 + 32) queue:*(*(a1 + 32) + 40)];
        v4 = *(a1 + 32);
        v5 = *(v4 + 32);
        *(v4 + 32) = v3;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v6 = __CPLConfigurationOSLogDomain();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [*(*(a1 + 32) + 16) path];
          v9 = 138412290;
          v10 = v7;
          _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Configuration at %@ will be fetched now", &v9, 0xCu);
        }
      }

      result = [*(*(a1 + 32) + 32) fetchConfigurationDictionary:*(*(a1 + 32) + 8)];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (CPLConfiguration)initWithClientLibraryBaseURL:(id)a3 minUpdateInterval:(double)a4 updateIntervalKey:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = _CPLConfigurationDefaultURL();
  v11 = [(CPLConfiguration *)self initWithClientLibraryBaseURL:v9 configurationURL:v10 minUpdateInterval:v8 updateIntervalKey:a4];

  return v11;
}

- (CPLConfiguration)initWithClientLibraryBaseURL:(id)a3 configurationURL:(id)a4 minUpdateInterval:(double)a5 updateIntervalKey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = CPLConfiguration;
  v13 = [(CPLConfiguration *)&v22 init];
  if (v13)
  {
    v14 = [v11 lastPathComponent];
    v15 = [v10 URLByAppendingPathComponent:v14 isDirectory:0];
    configurationFileURL = v13->_configurationFileURL;
    v13->_configurationFileURL = v15;

    v17 = [v11 copy];
    configurationURL = v13->_configurationURL;
    v13->_configurationURL = v17;

    v19 = dispatch_queue_create("com.apple.cpl.configuration", 0);
    lock = v13->_lock;
    v13->_lock = v19;

    v13->_minUpdateInterval = a5;
    objc_storeStrong(&v13->_updateIntervalKey, a6);
  }

  return v13;
}

- (BOOL)shouldCheckEPPCapability
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"CPLDisableEPPCapabilityCheck"];

  if (v4)
  {
    return 0;
  }

  v6 = [(CPLConfiguration *)self valueForKey:@"epp.capability-check"];
  v5 = [v6 integerValue] < 2;

  return v5;
}

- (BOOL)shouldDisableEPP
{
  v2 = [(CPLConfiguration *)self valueForKey:@"epp.auto-enable"];
  v3 = [v2 integerValue] > 0;

  return v3;
}

- (void)setIsComputeStateTaskUploadEnabled:(BOOL)a3
{
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  [(CPLConfiguration *)self setValue:v5 forKey:@"compute-state.upload-task"];
}

- (BOOL)isComputeStateTaskUploadEnabled
{
  v2 = [(CPLConfiguration *)self valueForKey:@"compute-state.upload-task"];
  v3 = [v2 integerValue] < 3;

  return v3;
}

- (int64_t)maximumComputeStatesToUploadPerBatch
{
  v2 = [(CPLConfiguration *)self valueForKey:@"max.num.computeStatesToUploadPerBatch"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 350;
  }

  return v4;
}

- (BOOL)allowsLocalConflictResolutionWhenOverQuota
{
  v2 = [(CPLConfiguration *)self valueForKey:@"over-quota.local-conflict-resolution"];
  v3 = !v2 || (objc_opt_respondsToSelector() & 1) == 0 || [v2 integerValue] == 1;

  return v3;
}

@end