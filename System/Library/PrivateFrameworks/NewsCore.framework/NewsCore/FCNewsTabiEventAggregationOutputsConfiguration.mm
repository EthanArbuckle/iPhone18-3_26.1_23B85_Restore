@interface FCNewsTabiEventAggregationOutputsConfiguration
- (FCNewsTabiEventAggregationOutputsConfiguration)initWithDictionary:(id)dictionary;
- (FCNewsTabiEventAggregationOutputsConfiguration)initWithOutputs:(id)outputs;
- (id)description;
@end

@implementation FCNewsTabiEventAggregationOutputsConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  bundleOutputConfiguration = [(FCNewsTabiEventAggregationOutputsConfiguration *)self bundleOutputConfiguration];
  indentedDescription = [bundleOutputConfiguration indentedDescription];
  [v3 appendFormat:@"\n\tbundleOutputConfiguration: %@;", indentedDescription];

  nonBundleOutputConfiguration = [(FCNewsTabiEventAggregationOutputsConfiguration *)self nonBundleOutputConfiguration];
  indentedDescription2 = [nonBundleOutputConfiguration indentedDescription];
  [v3 appendFormat:@"\n\tnonBundleOutputConfiguration: %@;", indentedDescription2];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiEventAggregationOutputsConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [FCNewsTabiEventAggregationOutputConfiguration alloc];
  v6 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"bundleOutputConfiguration", 0);
  v7 = [(FCNewsTabiEventAggregationOutputConfiguration *)v5 initWithDictionary:v6];

  if (v7)
  {
    v8 = v7;
    v9 = [FCNewsTabiEventAggregationOutputConfiguration alloc];
    v10 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"nonBundleOutputConfiguration", 0);
    v11 = [(FCNewsTabiEventAggregationOutputConfiguration *)v9 initWithDictionary:v10];

    if (v11)
    {
      v12 = v11;
      v17.receiver = self;
      v17.super_class = FCNewsTabiEventAggregationOutputsConfiguration;
      v13 = [(FCNewsTabiEventAggregationOutputsConfiguration *)&v17 init];
      p_isa = &v13->super.isa;
      if (v13)
      {
        objc_storeStrong(&v13->_bundleOutputConfiguration, v7);
        objc_storeStrong(p_isa + 2, v11);
      }

      self = p_isa;
      selfCopy = self;
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __69__FCNewsTabiEventAggregationOutputsConfiguration_initWithDictionary___block_invoke_5;
      v18[3] = &unk_1E7C36F98;
      v19 = dictionaryCopy;
      selfCopy = __69__FCNewsTabiEventAggregationOutputsConfiguration_initWithDictionary___block_invoke_5(v18);
      v12 = v19;
    }
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __69__FCNewsTabiEventAggregationOutputsConfiguration_initWithDictionary___block_invoke;
    v20[3] = &unk_1E7C36F98;
    v21 = dictionaryCopy;
    selfCopy = __69__FCNewsTabiEventAggregationOutputsConfiguration_initWithDictionary___block_invoke(v20);
    v8 = v21;
  }

  return selfCopy;
}

uint64_t __69__FCNewsTabiEventAggregationOutputsConfiguration_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiEventAggregationOutputsConfiguration due to failure to decode bundleOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __69__FCNewsTabiEventAggregationOutputsConfiguration_initWithDictionary___block_invoke_5(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiEventAggregationOutputsConfiguration due to failure to decode nonBundleOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (FCNewsTabiEventAggregationOutputsConfiguration)initWithOutputs:(id)outputs
{
  outputsCopy = outputs;
  if ([outputsCopy count])
  {
    v17.receiver = self;
    v17.super_class = FCNewsTabiEventAggregationOutputsConfiguration;
    v5 = [(FCNewsTabiEventAggregationOutputsConfiguration *)&v17 init];
    if (v5)
    {
      v6 = [FCNewsTabiEventAggregationOutputConfiguration alloc];
      v7 = [outputsCopy fc_arrayByTransformingWithBlock:&__block_literal_global_9];
      v8 = [(FCNewsTabiEventAggregationOutputConfiguration *)v6 initWithOutputs:v7];
      bundleOutputConfiguration = v5->_bundleOutputConfiguration;
      v5->_bundleOutputConfiguration = v8;

      v10 = [FCNewsTabiEventAggregationOutputConfiguration alloc];
      v11 = [outputsCopy fc_arrayByTransformingWithBlock:&__block_literal_global_11];
      v12 = [(FCNewsTabiEventAggregationOutputConfiguration *)v10 initWithOutputs:v11];
      nonBundleOutputConfiguration = v5->_nonBundleOutputConfiguration;
      v5->_nonBundleOutputConfiguration = v12;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    v15 = FCTabiConfigurationLog;
    if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiEventAggregationOutputsConfiguration with external outputs because external outputs were empty", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end