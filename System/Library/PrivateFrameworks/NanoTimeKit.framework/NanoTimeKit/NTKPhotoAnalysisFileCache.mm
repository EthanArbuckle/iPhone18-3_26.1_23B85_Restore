@interface NTKPhotoAnalysisFileCache
+ (id)sharedInstance;
- (BOOL)_save;
- (NTKPhotoAnalysisFileCache)init;
- (id)photoAnalysisForIdentifier:(id)identifier;
- (void)_dirtyCache;
- (void)dealloc;
- (void)setPhotoAnalysis:(id)analysis forIdentifier:(id)identifier;
@end

@implementation NTKPhotoAnalysisFileCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_23 != -1)
  {
    +[NTKPhotoAnalysisFileCache sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_8;

  return v3;
}

void __43__NTKPhotoAnalysisFileCache_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance___sharedInstance_8;
  sharedInstance___sharedInstance_8 = v0;
}

- (NTKPhotoAnalysisFileCache)init
{
  v9.receiver = self;
  v9.super_class = NTKPhotoAnalysisFileCache;
  v2 = [(NTKPhotoAnalysisFileCache *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    taskScheduler = v2->_taskScheduler;
    v2->_taskScheduler = v3;

    if (![(NTKPhotoAnalysisFileCache *)v2 _load])
    {
      v5 = objc_opt_new();
      cache = v2->_cache;
      v2->_cache = v5;

      v2->_sequenceNumber = 100;
    }

    v7 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(NTKTaskScheduler *)self->_taskScheduler cancelAllTasks];
  v3.receiver = self;
  v3.super_class = NTKPhotoAnalysisFileCache;
  [(NTKPhotoAnalysisFileCache *)&v3 dealloc];
}

- (void)_dirtyCache
{
  if (!self->_cacheDirty)
  {
    self->_cacheDirty = 1;
    objc_initWeak(&location, self);
    taskScheduler = self->_taskScheduler;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __40__NTKPhotoAnalysisFileCache__dirtyCache__block_invoke;
    v5[3] = &unk_27877E298;
    objc_copyWeak(&v6, &location);
    v4 = [(NTKTaskScheduler *)taskScheduler scheduleTask:v5 identifier:@"com.apple.ntk.NTKPhotoAnalysisCacheEntry"];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

uint64_t __40__NTKPhotoAnalysisFileCache__dirtyCache__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _save];

  return v2;
}

- (BOOL)_save
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableDictionary *)self->_cache keysSortedByValueUsingComparator:&__block_literal_global_52_3];
  if ([v3 count] < 151)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 count] - 150;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = 100;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = v4 - 1;
        if (v4 < 1)
        {
          v14 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];
          [v14 setSequenceNumber:v9];

          v9 = (v9 + 1);
        }

        else
        {
          v13 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v21 = v11;
            _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "[photo analysis file cache] evict %@", buf, 0xCu);
          }

          [(NSMutableDictionary *)self->_cache removeObjectForKey:v11];
          v4 = v12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    LODWORD(v9) = 100;
  }

  self->_cacheDirty = 0;
  self->_sequenceNumber = v9;

  return 1;
}

uint64_t __34__NTKPhotoAnalysisFileCache__save__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  LODWORD(a2) = [a2 sequenceNumber];
  v5 = [v4 sequenceNumber];

  v6 = a2 - v5;
  if (a2 < v5)
  {
    v6 = -1;
  }

  if (v6 >= 1)
  {
    return 1;
  }

  return v6;
}

- (id)photoAnalysisForIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_cache objectForKey:identifierCopy];
  v6 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v10 = 138412290;
      v11 = identifierCopy;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "[photo analysis file cache] found %@", &v10, 0xCu);
    }

    ++self->_sequenceNumber;
    [v5 setSequenceNumber:?];
    [(NTKPhotoAnalysisFileCache *)self _dirtyCache];
    analysis = [v5 analysis];
  }

  else
  {
    if (v7)
    {
      v10 = 138412290;
      v11 = identifierCopy;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "[photo analysis file cache] not found %@", &v10, 0xCu);
    }

    analysis = 0;
  }

  return analysis;
}

- (void)setPhotoAnalysis:(id)analysis forIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  analysisCopy = analysis;
  v8 = objc_opt_new();
  ++self->_sequenceNumber;
  [v8 setSequenceNumber:?];
  [v8 setAnalysis:analysisCopy];

  [(NSMutableDictionary *)self->_cache setObject:v8 forKey:identifierCopy];
  v9 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = identifierCopy;
    _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "[photo analysis file cache] add %@", &v10, 0xCu);
  }

  [(NTKPhotoAnalysisFileCache *)self _dirtyCache];
}

@end