@interface FCNewsTabiTagScoringConfiguration
- (FCNewsTabiTagScoringConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsTabiTagScoringConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  bundleOutputConfiguration = [(FCNewsTabiTagScoringConfiguration *)self bundleOutputConfiguration];
  indentedDescription = [bundleOutputConfiguration indentedDescription];
  [v3 appendFormat:@"\n\tbundleOutputConfiguration: %@;", indentedDescription];

  [(FCNewsTabiTagScoringConfiguration *)self minimumChannelScoreForGrouping];
  [v3 appendFormat:@"\n\tminimumChannelScoreForGrouping: %.4f;", v6];
  nonBundleOutputConfiguration = [(FCNewsTabiTagScoringConfiguration *)self nonBundleOutputConfiguration];
  indentedDescription2 = [nonBundleOutputConfiguration indentedDescription];
  [v3 appendFormat:@"\n\tnonBundleOutputConfiguration: %@;", indentedDescription2];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiTagScoringConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [FCNewsTabiTagScoringOutputConfiguration alloc];
  v6 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"bundleOutputConfiguration", 0);
  v7 = [(FCNewsTabiTagScoringOutputConfiguration *)v5 initWithDictionary:v6];

  if (v7)
  {
    v8 = v7;
    v9 = [FCNewsTabiTagScoringOutputConfiguration alloc];
    v10 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"nonBundleOutputConfiguration", 0);
    v11 = [(FCNewsTabiTagScoringOutputConfiguration *)v9 initWithDictionary:v10];

    if (v11)
    {
      v12 = v11;
      v17.receiver = self;
      v17.super_class = FCNewsTabiTagScoringConfiguration;
      v13 = [(FCNewsTabiTagScoringConfiguration *)&v17 init];
      v14 = v13;
      if (v13)
      {
        objc_storeStrong(&v13->_bundleOutputConfiguration, v7);
        v14->_minimumChannelScoreForGrouping = FCAppConfigurationDoubleValue(dictionaryCopy, @"minimumChannelScoreForGrouping", 0.03);
        objc_storeStrong(&v14->_nonBundleOutputConfiguration, v11);
      }

      self = v14;
      selfCopy = self;
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __56__FCNewsTabiTagScoringConfiguration_initWithDictionary___block_invoke_58;
      v18[3] = &unk_1E7C36F98;
      v19 = dictionaryCopy;
      selfCopy = __56__FCNewsTabiTagScoringConfiguration_initWithDictionary___block_invoke_58(v18);
      v12 = v19;
    }
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __56__FCNewsTabiTagScoringConfiguration_initWithDictionary___block_invoke;
    v20[3] = &unk_1E7C36F98;
    v21 = dictionaryCopy;
    selfCopy = __56__FCNewsTabiTagScoringConfiguration_initWithDictionary___block_invoke(v20);
    v8 = v21;
  }

  return selfCopy;
}

uint64_t __56__FCNewsTabiTagScoringConfiguration_initWithDictionary___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCTabiConfigurationLog;
  if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v7 = [v5 description];
    v8 = 138543362;
    v9 = v7;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiTagScoringConfiguration due to failure to decode bundleOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __56__FCNewsTabiTagScoringConfiguration_initWithDictionary___block_invoke_58(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCTabiConfigurationLog;
  if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v7 = [v5 description];
    v8 = 138543362;
    v9 = v7;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiTagScoringConfiguration due to failure to decode nonBundleOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

@end