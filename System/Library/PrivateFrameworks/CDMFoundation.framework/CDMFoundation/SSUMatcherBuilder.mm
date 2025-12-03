@interface SSUMatcherBuilder
+ (id)buildMatcher:(id)matcher error:(id *)error;
+ (id)sharedBuilder;
- (BOOL)hasMatcher:(id)matcher;
- (id)_init;
- (id)getMatcherForBuildParams:(id)params error:(id *)error;
- (unint64_t)numMatchers;
@end

@implementation SSUMatcherBuilder

+ (id)sharedBuilder
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SSUMatcherBuilder_sharedBuilder__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v15 = [(NSMutableDictionary *)selfCopy->__matchers count];
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
  v4 = selfCopy->__matchers;
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

        v9 = [(NSMutableDictionary *)selfCopy->__matchers objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v8), v16];
        matcher = [v9 matcher];
        v11 = matcher != 0;

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

  objc_sync_exit(selfCopy);
  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = SSUMatcherBuilder;
  v2 = [(SSUMatcherBuilder *)&v6 init];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  matchers = v2->__matchers;
  v2->__matchers = dictionary;

  return v2;
}

- (id)getMatcherForBuildParams:(id)params error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(NSMutableDictionary *)selfCopy->__matchers objectForKey:paramsCopy];
  matcher = [v8 matcher];
  if (matcher)
  {
    v10 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    v18 = 136315394;
    v19 = "[SSUMatcherBuilder getMatcherForBuildParams:error:]";
    v20 = 2048;
    v21 = matcher;
    v11 = "%s Returning existing SSUMatcher instance with address: %p";
    goto LABEL_19;
  }

  matcher = [objc_opt_class() buildMatcher:paramsCopy error:error];
  if (matcher)
  {
    v12 = [[SSUMatcherWeakRef alloc] initWithMatcher:matcher];
    [(NSMutableDictionary *)selfCopy->__matchers setObject:v12 forKeyedSubscript:paramsCopy];

    v10 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    v18 = 136315394;
    v19 = "[SSUMatcherBuilder getMatcherForBuildParams:error:]";
    v20 = 2048;
    v21 = matcher;
    v11 = "%s Returning newly-built SSUMatcher instance with address: %p";
LABEL_19:
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, v11, &v18, 0x16u);
LABEL_6:

    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      numMatchers = [(SSUMatcherBuilder *)selfCopy numMatchers];
      v18 = 136315394;
      v19 = "[SSUMatcherBuilder getMatcherForBuildParams:error:]";
      v20 = 2048;
      v21 = numMatchers;
      _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Total number of matchers alive: %lu", &v18, 0x16u);
    }

    goto LABEL_8;
  }

  v13 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    if (error)
    {
      localizedDescription = [*error localizedDescription];
    }

    else
    {
      localizedDescription = @"nil";
    }

    v18 = 136315394;
    v19 = "[SSUMatcherBuilder getMatcherForBuildParams:error:]";
    v20 = 2112;
    v21 = localizedDescription;
    _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s [WARN]: SSUMatcher building failed with error: %@", &v18, 0x16u);
    if (error)
    {
    }
  }

  matcher = 0;
LABEL_8:

  objc_sync_exit(selfCopy);
  v14 = *MEMORY[0x1E69E9840];

  return matcher;
}

- (BOOL)hasMatcher:(id)matcher
{
  matcherCopy = matcher;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->__matchers objectForKeyedSubscript:matcherCopy];
  v7 = v6;
  if (v6)
  {
    matcher = [v6 matcher];
    v9 = matcher != 0;
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(selfCopy);
  return v9;
}

+ (id)buildMatcher:(id)matcher error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  matcherCopy = matcher;
  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v25 = "+[SSUMatcherBuilder buildMatcher:error:]";
    _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s Building new SSUMatcher instance...", buf, 0xCu);
  }

  v7 = MEMORY[0x1E69D1490];
  cacheDirectoryURL = [matcherCopy cacheDirectoryURL];
  modelAssetsDirectoryURL = [matcherCopy modelAssetsDirectoryURL];
  datasetAssetsDirectoryURL = [matcherCopy datasetAssetsDirectoryURL];

  v23 = 0;
  v11 = [v7 directoriesWithCacheDirectoryURL:cacheDirectoryURL modelAssetsDirectoryURL:modelAssetsDirectoryURL datasetAssetsDirectoryURL:datasetAssetsDirectoryURL error:&v23];
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

      if (error)
      {
        v19 = v14;
        *error = v14;
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

    if (error)
    {
      v17 = v12;
      v13 = 0;
      *error = v12;
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