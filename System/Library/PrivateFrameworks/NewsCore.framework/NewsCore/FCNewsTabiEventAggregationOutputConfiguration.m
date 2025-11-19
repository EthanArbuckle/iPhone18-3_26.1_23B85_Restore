@interface FCNewsTabiEventAggregationOutputConfiguration
- (FCNewsTabiEventAggregationOutputConfiguration)initWithDictionary:(id)a3;
- (FCNewsTabiEventAggregationOutputConfiguration)initWithOutputs:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiEventAggregationOutputConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsTabiEventAggregationOutputConfiguration *)self outputNames];
  v5 = [v4 indentedDescription];
  [v3 appendFormat:@"\n\toutputNames: %@;", v5];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiEventAggregationOutputConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = FCAppConfigurationArrayValueWithDefaultValue(v4, @"outputNames", 0);
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
    v10 = self;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__FCNewsTabiEventAggregationOutputConfiguration_initWithDictionary___block_invoke;
    v13[3] = &unk_1E7C36F98;
    v14 = v4;
    v10 = __68__FCNewsTabiEventAggregationOutputConfiguration_initWithDictionary___block_invoke(v13);
    v7 = v14;
  }

  return v10;
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

- (FCNewsTabiEventAggregationOutputConfiguration)initWithOutputs:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__FCNewsTabiEventAggregationOutputConfiguration_initWithOutputs___block_invoke;
  v15[3] = &unk_1E7C371F8;
  v6 = v4;
  v16 = v6;
  v7 = [v5 fc_set:v15];
  if ([v7 count])
  {
    v14.receiver = self;
    v14.super_class = FCNewsTabiEventAggregationOutputConfiguration;
    v8 = [(FCNewsTabiEventAggregationOutputConfiguration *)&v14 init];
    if (v8)
    {
      v9 = [v7 allObjects];
      outputNames = v8->_outputNames;
      v8->_outputNames = v9;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v12 = FCTabiConfigurationLog;
    if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiEventAggregationOutputConfiguration from external outputs due to their being no outputs specified", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
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