@interface MapsSuggestionsFeatureFlagCondition
- (BOOL)isTrue;
- (MapsSuggestionsFeatureFlagCondition)initWithFeatureFlag:(id)a3;
@end

@implementation MapsSuggestionsFeatureFlagCondition

- (MapsSuggestionsFeatureFlagCondition)initWithFeatureFlag:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"MapsSuggestionsFeatureFlagCondition_%@", v5];
    v11.receiver = self;
    v11.super_class = MapsSuggestionsFeatureFlagCondition;
    v7 = [(MapsSuggestionsBaseCondition *)&v11 initWithName:v6];

    if (v7)
    {
      objc_storeStrong(&v7->_featureFlag, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFeatureFlagCondition.m";
      v14 = 1024;
      v15 = 53;
      v16 = 2082;
      v17 = "[MapsSuggestionsFeatureFlagCondition initWithFeatureFlag:]";
      v18 = 2082;
      v19 = "nil == (featureFlag)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a feature flag", buf, 0x26u);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)isTrue
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = GEOIsFeatureActive();
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    featureFlag = self->_featureFlag;
    v7 = 138412546;
    v8 = featureFlag;
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Checking featureFlag %@: %d", &v7, 0x12u);
  }

  if (v3)
  {
    return GEOConfigGetBOOL();
  }

  else
  {
    return 0;
  }
}

@end