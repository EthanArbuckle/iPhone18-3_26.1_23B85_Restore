@interface SSUMatcherBuilder
+ (id)buildMatcher:(id)a3 error:(id *)a4;
+ (id)sharedBuilder;
- (BOOL)hasMatcher:(id)a3;
- (id)_init;
- (id)getMatcherForBuildParams:(id)a3 error:(id *)a4;
- (unint64_t)numMatchers;
@end

@implementation SSUMatcherBuilder

+ (id)sharedBuilder
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SSUMatcherBuilder_sharedBuilder__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedBuilder_once != -1)
  {
    dispatch_once(&sharedBuilder_once, block);
  }

  v2 = sharedBuilder_sharedBuilder_;

  return v2;
}

- (unint64_t)numMatchers
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v15 = [(NSMutableDictionary *)v2->__matchers count];
    *buf = 136315394;
    v22 = "[SSUMatcherBuilder numMatchers]";
    v23 = 2048;
    v24 = v15;
    _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Total number of weak ref wrapper objects in __matchers: %lu", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2->__matchers;
  v5 = 0;
  v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)v2->__matchers objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v8), v16];
        v10 = [v9 matcher];
        v11 = v10 != 0;

        v5 += v11;
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v12 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "[SSUMatcherBuilder numMatchers]";
    v23 = 2048;
    v24 = v5;
    _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s Total number of weak ref wrapper objects that contain a live matcher in __matchers: %lu", buf, 0x16u);
  }

  objc_sync_exit(v2);
  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = SSUMatcherBuilder;
  v2 = [(SSUMatcherBuilder *)&v6 init];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  matchers = v2->__matchers;
  v2->__matchers = v3;

  return v2;
}

- (id)getMatcherForBuildParams:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)v7->__matchers objectForKey:v6];
  v9 = [v8 matcher];
  if (v9)
  {
    v10 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    v18 = 136315394;
    v19 = "[SSUMatcherBuilder getMatcherForBuildParams:error:]";
    v20 = 2048;
    v21 = v9;
    v11 = "%s Returning existing SSUMatcher instance with address: %p";
    goto LABEL_19;
  }

  v9 = [objc_opt_class() buildMatcher:v6 error:a4];
  if (v9)
  {
    v12 = [[SSUMatcherWeakRef alloc] initWithMatcher:v9];
    [(NSMutableDictionary *)v7->__matchers setObject:v12 forKeyedSubscript:v6];

    v10 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    v18 = 136315394;
    v19 = "[SSUMatcherBuilder getMatcherForBuildParams:error:]";
    v20 = 2048;
    v21 = v9;
    v11 = "%s Returning newly-built SSUMatcher instance with address: %p";
LABEL_19:
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, v11, &v18, 0x16u);
LABEL_6:

    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v17 = [(SSUMatcherBuilder *)v7 numMatchers];
      v18 = 136315394;
      v19 = "[SSUMatcherBuilder getMatcherForBuildParams:error:]";
      v20 = 2048;
      v21 = v17;
      _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Total number of matchers alive: %lu", &v18, 0x16u);
    }

    goto LABEL_8;
  }

  v13 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    if (a4)
    {
      v16 = [*a4 localizedDescription];
    }

    else
    {
      v16 = @"nil";
    }

    v18 = 136315394;
    v19 = "[SSUMatcherBuilder getMatcherForBuildParams:error:]";
    v20 = 2112;
    v21 = v16;
    _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s [WARN]: SSUMatcher building failed with error: %@", &v18, 0x16u);
    if (a4)
    {
    }
  }

  v9 = 0;
LABEL_8:

  objc_sync_exit(v7);
  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)hasMatcher:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->__matchers objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 matcher];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(v5);
  return v9;
}

+ (id)buildMatcher:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v25 = "+[SSUMatcherBuilder buildMatcher:error:]";
    _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s Building new SSUMatcher instance...", buf, 0xCu);
  }

  v7 = MEMORY[0x1E69D1490];
  v8 = [v5 cacheDirectoryURL];
  v9 = [v5 modelAssetsDirectoryURL];
  v10 = [v5 datasetAssetsDirectoryURL];

  v23 = 0;
  v11 = [v7 directoriesWithCacheDirectoryURL:v8 modelAssetsDirectoryURL:v9 datasetAssetsDirectoryURL:v10 error:&v23];
  v12 = v23;

  if (v11)
  {
    v22 = 0;
    v13 = [MEMORY[0x1E69D1488] matcherWithDirectories:v11 initializeModelsPreemptively:1 error:&v22];
    v14 = v22;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v18 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v25 = "+[SSUMatcherBuilder buildMatcher:error:]";
        v26 = 2112;
        v27 = v14;
        _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, "%s Error building SSUMatcher instance: %@", buf, 0x16u);
      }

      if (a4)
      {
        v19 = v14;
        *a4 = v14;
      }
    }
  }

  else
  {
    v16 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v25 = "+[SSUMatcherBuilder buildMatcher:error:]";
      v26 = 2112;
      v27 = v12;
      _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s Error building SNLPSSUMatcherDirectories instance: %@", buf, 0x16u);
    }

    if (a4)
    {
      v17 = v12;
      v13 = 0;
      *a4 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v13;
}

uint64_t __34__SSUMatcherBuilder_sharedBuilder__block_invoke(uint64_t a1)
{
  sharedBuilder_sharedBuilder_ = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x1EEE66BB8]();
}

@end