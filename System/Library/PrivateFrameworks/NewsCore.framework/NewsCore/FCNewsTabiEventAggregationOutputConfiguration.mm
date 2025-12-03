@interface FCNewsTabiEventAggregationOutputConfiguration
- (FCNewsTabiEventAggregationOutputConfiguration)initWithDictionary:(id)dictionary;
- (FCNewsTabiEventAggregationOutputConfiguration)initWithOutputs:(id)outputs;
- (id)description;
@end

@implementation FCNewsTabiEventAggregationOutputConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  outputNames = [(FCNewsTabiEventAggregationOutputConfiguration *)self outputNames];
  indentedDescription = [outputNames indentedDescription];
  [v3 appendFormat:@"\n\toutputNames: %@;", indentedDescription];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiEventAggregationOutputConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"outputNames", 0);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v12.receiver = self;
    v12.super_class = FCNewsTabiEventAggregationOutputConfiguration;
    v8 = [(FCNewsTabiEventAggregationOutputConfiguration *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_outputNames, v6);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__FCNewsTabiEventAggregationOutputConfiguration_initWithDictionary___block_invoke;
    v13[3] = &unk_1E7C36F98;
    v14 = dictionaryCopy;
    selfCopy = __68__FCNewsTabiEventAggregationOutputConfiguration_initWithDictionary___block_invoke(v13);
    v7 = v14;
  }

  return selfCopy;
}

uint64_t __68__FCNewsTabiEventAggregationOutputConfiguration_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiEventAggregationOutputConfiguration due to failure to decode outputNames from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (FCNewsTabiEventAggregationOutputConfiguration)initWithOutputs:(id)outputs
{
  outputsCopy = outputs;
  v5 = MEMORY[0x1E695DFD8];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__FCNewsTabiEventAggregationOutputConfiguration_initWithOutputs___block_invoke;
  v15[3] = &unk_1E7C371F8;
  v6 = outputsCopy;
  v16 = v6;
  v7 = [v5 fc_set:v15];
  if ([v7 count])
  {
    v14.receiver = self;
    v14.super_class = FCNewsTabiEventAggregationOutputConfiguration;
    v8 = [(FCNewsTabiEventAggregationOutputConfiguration *)&v14 init];
    if (v8)
    {
      allObjects = [v7 allObjects];
      outputNames = v8->_outputNames;
      v8->_outputNames = allObjects;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v12 = FCTabiConfigurationLog;
    if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiEventAggregationOutputConfiguration from external outputs due to their being no outputs specified", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

void __65__FCNewsTabiEventAggregationOutputConfiguration_initWithOutputs___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) outputNames];
        [v3 fc_safelyAddObjects:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end