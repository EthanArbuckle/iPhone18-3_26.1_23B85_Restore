@interface MapsSuggestionsFeatureFlagCondition
- (BOOL)isTrue;
- (MapsSuggestionsFeatureFlagCondition)initWithFeatureFlag:(id)flag;
@end

@implementation MapsSuggestionsFeatureFlagCondition

- (MapsSuggestionsFeatureFlagCondition)initWithFeatureFlag:(id)flag
{
  v20 = *MEMORY[0x1E69E9840];
  flagCopy = flag;
  if (flagCopy)
  {
    flagCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"MapsSuggestionsFeatureFlagCondition_%@", flagCopy];
    v11.receiver = self;
    v11.super_class = MapsSuggestionsFeatureFlagCondition;
    v7 = [(MapsSuggestionsBaseCondition *)&v11 initWithName:flagCopy];

    if (v7)
    {
      objc_storeStrong(&v7->_featureFlag, flag);
    }

    self = v7;
    selfCopy = self;
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

    selfCopy = 0;
  }

  return selfCopy;
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