@interface FCPaywallTopOffsetConfiguration
- (FCPaywallTopOffsetConfiguration)init;
- (FCPaywallTopOffsetConfiguration)initWithCompactPortraitTopOffsetRatio:(double)ratio compactLandscapeTopOffsetRatio:(double)offsetRatio regularPortraitTopOffsetRatio:(double)topOffsetRatio regularLandscapeTopOffsetRatio:(double)landscapeTopOffsetRatio;
- (FCPaywallTopOffsetConfiguration)initWithConfigDictionary:(id)dictionary;
@end

@implementation FCPaywallTopOffsetConfiguration

- (FCPaywallTopOffsetConfiguration)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPaywallTopOffsetConfiguration init]";
    v10 = 2080;
    v11 = "FCPaywallTopOffsetConfiguration.m";
    v12 = 1024;
    v13 = 16;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPaywallTopOffsetConfiguration init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPaywallTopOffsetConfiguration)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7.receiver = self;
  v7.super_class = FCPaywallTopOffsetConfiguration;
  v5 = [(FCPaywallTopOffsetConfiguration *)&v7 init];
  if (v5)
  {
    v5->_compactPortraitTopOffsetRatio = FCAppConfigurationDoubleValue(dictionaryCopy, @"compactPortraitTopOffsetRatio", 0.0);
    v5->_compactLandscapeTopOffsetRatio = FCAppConfigurationDoubleValue(dictionaryCopy, @"compactLandscapeTopOffsetRatio", 0.0);
    v5->_regularPortraitTopOffsetRatio = FCAppConfigurationDoubleValue(dictionaryCopy, @"regularPortraitTopOffsetRatio", 0.0);
    v5->_regularLandscapeTopOffsetRatio = FCAppConfigurationDoubleValue(dictionaryCopy, @"regularLandscapeTopOffsetRatio", 0.0);
  }

  return v5;
}

- (FCPaywallTopOffsetConfiguration)initWithCompactPortraitTopOffsetRatio:(double)ratio compactLandscapeTopOffsetRatio:(double)offsetRatio regularPortraitTopOffsetRatio:(double)topOffsetRatio regularLandscapeTopOffsetRatio:(double)landscapeTopOffsetRatio
{
  v11.receiver = self;
  v11.super_class = FCPaywallTopOffsetConfiguration;
  result = [(FCPaywallTopOffsetConfiguration *)&v11 init];
  if (result)
  {
    result->_compactPortraitTopOffsetRatio = ratio;
    result->_compactLandscapeTopOffsetRatio = offsetRatio;
    result->_regularPortraitTopOffsetRatio = topOffsetRatio;
    result->_regularLandscapeTopOffsetRatio = landscapeTopOffsetRatio;
  }

  return result;
}

@end