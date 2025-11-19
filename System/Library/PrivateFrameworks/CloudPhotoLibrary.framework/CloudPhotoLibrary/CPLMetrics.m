@interface CPLMetrics
- (CPLMetrics)initWithClientLibraryBaseURL:(id)a3;
- (id)metricsDescription;
- (int64_t)countForKey:(id)a3;
- (void)_loadIfNecessary;
- (void)_save;
- (void)forceLoad;
- (void)incrementCountForKey:(id)a3;
- (void)resetMetrics;
@end

@implementation CPLMetrics

- (id)metricsDescription
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8387;
  v15 = __Block_byref_object_dispose__8388;
  v16 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __32__CPLMetrics_metricsDescription__block_invoke;
  v8 = &unk_1E861F818;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

void __32__CPLMetrics_metricsDescription__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _loadIfNecessary];
  if ([*(*(a1 + 32) + 16) count])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = [*(*(a1 + 32) + 16) allKeys];
    v4 = [v3 sortedArrayUsingSelector:sel_compare_];

    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [*(a1 + 32) countForKey:v9];
          if (v10 >= 1)
          {
            v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ = %ld", v9, v10];
            [v2 addObject:v11];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    v12 = [v2 componentsJoinedByString:@"\n"];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)incrementCountForKey:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __35__CPLMetrics_incrementCountForKey___block_invoke;
  v9 = &unk_1E861B290;
  v10 = self;
  v5 = v4;
  v11 = v5;
  v6 = v7;
  os_unfair_lock_lock(&self->_lock);
  v8(v6);
  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __35__CPLMetrics_incrementCountForKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  v3 = [v2 integerValue];

  v4 = *(*(a1 + 32) + 16);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3 + 1];
  [v4 setValue:v5 forKey:*(a1 + 40)];

  v6 = *(a1 + 32);

  return [v6 _save];
}

- (int64_t)countForKey:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __26__CPLMetrics_countForKey___block_invoke;
  v11 = &unk_1E861F868;
  v12 = self;
  v14 = &v15;
  v5 = v4;
  v13 = v5;
  v6 = v9;
  os_unfair_lock_lock(&self->_lock);
  v10(v6);
  os_unfair_lock_unlock(&self->_lock);

  v7 = v16[3];
  _Block_object_dispose(&v15, 8);

  return v7;
}

void __26__CPLMetrics_countForKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v2 integerValue];
}

- (void)resetMetrics
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __26__CPLMetrics_resetMetrics__block_invoke;
  v7 = &unk_1E861A940;
  v8 = self;
  v3 = v5;
  os_unfair_lock_lock(&self->_lock);
  v6(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v4 postNotificationName:@"CPLMetricsDidChangeNotification" object:0];
}

uint64_t __26__CPLMetrics_resetMetrics__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = *(a1 + 32);

  return [v5 _save];
}

- (void)_save
{
  os_unfair_lock_assert_owner(&self->_lock);
  metricsFileURL = self->_metricsFileURL;
  metrics = self->_metrics;

  [(NSMutableDictionary *)metrics writeToURL:metricsFileURL atomically:1];
}

- (void)_loadIfNecessary
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_metrics)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfURL:self->_metricsFileURL];
    v6 = v3;
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    metrics = self->_metrics;
    self->_metrics = v4;
  }
}

- (void)forceLoad
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = __23__CPLMetrics_forceLoad__block_invoke;
  v6 = &unk_1E861A940;
  v7 = self;
  v3 = v4;
  os_unfair_lock_lock(&self->_lock);
  v5(v3);
  os_unfair_lock_unlock(&self->_lock);
}

void __23__CPLMetrics_forceLoad__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

- (CPLMetrics)initWithClientLibraryBaseURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPLMetrics;
  v5 = [(CPLMetrics *)&v9 init];
  if (v5)
  {
    v6 = [v4 URLByAppendingPathComponent:@"metrics.plist"];
    metricsFileURL = v5->_metricsFileURL;
    v5->_metricsFileURL = v6;

    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

@end