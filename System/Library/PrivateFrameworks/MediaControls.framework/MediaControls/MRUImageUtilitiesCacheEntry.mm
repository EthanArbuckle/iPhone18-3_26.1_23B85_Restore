@interface MRUImageUtilitiesCacheEntry
- (CGSize)fittingSize;
- (void)cancelEvictionTimer;
- (void)dealloc;
- (void)startEvictionTimer;
@end

@implementation MRUImageUtilitiesCacheEntry

- (void)startEvictionTimer
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69B0B08] currentSettings];
  v4 = [v3 verboseImageLoadingLogging];

  if (v4)
  {
    v5 = MCLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(MRUImageUtilitiesCacheEntry *)self identifier];
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] Start eviction timer for entry with id: %@", buf, 0xCu);
    }
  }

  objc_initWeak(buf, self);
  v7 = MEMORY[0x1E69B14D8];
  v8 = MEMORY[0x1E69E96A0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__MRUImageUtilitiesCacheEntry_startEvictionTimer__block_invoke;
  v10[3] = &unk_1E7663AE8;
  objc_copyWeak(&v11, buf);
  v9 = [v7 timerWithInterval:0 repeats:MEMORY[0x1E69E96A0] queue:v10 block:300.0];
  [(MRUImageUtilitiesCacheEntry *)self setEvictionTimer:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __49__MRUImageUtilitiesCacheEntry_startEvictionTimer__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[MRUImageLoaderCoordinator sharedCoordinator];
    v3 = [v2 registeredLoaderArtworkIdentifiers];
    v4 = [WeakRetained identifier];
    v5 = [v3 containsObject:v4];

    if ((v5 & 1) == 0)
    {
      v6 = [MEMORY[0x1E69B0B08] currentSettings];
      v7 = [v6 verboseImageLoadingLogging];

      if (v7)
      {
        v8 = MCLogCategoryDefault();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [WeakRetained identifier];
          v12 = 138412290;
          v13 = v9;
          _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] Evicting entry with id: %@", &v12, 0xCu);
        }
      }

      v10 = +[MRUImageUtilities cache];
      v11 = [WeakRetained identifier];
      [v10 removeObjectForKey:v11];
    }
  }
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69B0B08] currentSettings];
  v4 = [v3 verboseImageLoadingLogging];

  if (v4)
  {
    v5 = MCLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(MRUImageUtilitiesCacheEntry *)self identifier];
      *buf = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] Dealloc entry with id: %@", buf, 0xCu);
    }
  }

  v7.receiver = self;
  v7.super_class = MRUImageUtilitiesCacheEntry;
  [(MRUImageUtilitiesCacheEntry *)&v7 dealloc];
}

- (void)cancelEvictionTimer
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(MRUImageUtilitiesCacheEntry *)self evictionTimer];

  if (v3)
  {
    v4 = [MEMORY[0x1E69B0B08] currentSettings];
    v5 = [v4 verboseImageLoadingLogging];

    if (v5)
    {
      v6 = MCLogCategoryDefault();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(MRUImageUtilitiesCacheEntry *)self identifier];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] Cancel eviction timer for entry with id: %@", &v9, 0xCu);
      }
    }

    v8 = [(MRUImageUtilitiesCacheEntry *)self evictionTimer];
    [v8 invalidate];

    [(MRUImageUtilitiesCacheEntry *)self setEvictionTimer:0];
  }
}

- (CGSize)fittingSize
{
  width = self->_fittingSize.width;
  height = self->_fittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end