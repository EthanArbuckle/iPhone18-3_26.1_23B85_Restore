@interface FCNewsTabiNotificationScoringEndpoint
- (FCNewsTabiNotificationScoringEndpoint)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiNotificationScoringEndpoint

- (FCNewsTabiNotificationScoringEndpoint)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = FCAppConfigurationStringValue(v4, @"packageAssetID", 0);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [[FCNewsTabiNotificationScoringConfiguration alloc] initWithDictionary:v4];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      v18.receiver = self;
      v18.super_class = FCNewsTabiNotificationScoringEndpoint;
      v11 = [(FCNewsTabiNotificationScoringEndpoint *)&v18 init];
      v12 = v11;
      if (v11)
      {
        objc_storeStrong(&v11->_packageAssetID, v6);
        objc_storeStrong(&v12->_configuration, v9);
        v13 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"eventAggregationOutputs", 0);
        if (v13)
        {
          v14 = [[FCNewsTabiEventAggregationOutputsConfiguration alloc] initWithDictionary:v13];
          eventAggregationOutputs = v12->_eventAggregationOutputs;
          v12->_eventAggregationOutputs = v14;
        }
      }

      self = v12;
      v16 = self;
    }

    else
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __60__FCNewsTabiNotificationScoringEndpoint_initWithDictionary___block_invoke_5;
      v19[3] = &unk_1E7C36F98;
      v20 = v4;
      v16 = __60__FCNewsTabiNotificationScoringEndpoint_initWithDictionary___block_invoke_5(v19);
      v10 = v20;
    }
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __60__FCNewsTabiNotificationScoringEndpoint_initWithDictionary___block_invoke;
    v21[3] = &unk_1E7C36F98;
    v22 = v4;
    v16 = __60__FCNewsTabiNotificationScoringEndpoint_initWithDictionary___block_invoke(v21);
    v7 = v22;
  }

  return v16;
}

uint64_t __60__FCNewsTabiNotificationScoringEndpoint_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiNotificationScoringEndpoint due to failure to decode packageAssetID from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __60__FCNewsTabiNotificationScoringEndpoint_initWithDictionary___block_invoke_5(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiNotificationScoringEndpoint due to failure to decode configuration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsTabiNotificationScoringEndpoint *)self packageAssetID];
  [v3 appendFormat:@"\n\tpackageAssetID: %@;", v4];

  v5 = [(FCNewsTabiNotificationScoringEndpoint *)self configuration];
  v6 = [v5 indentedDescription];
  [v3 appendFormat:@"\n\tconfiguration: %@;", v6];

  v7 = [(FCNewsTabiNotificationScoringEndpoint *)self eventAggregationOutputs];
  v8 = [v7 indentedDescription];
  [v3 appendFormat:@"\n\teventAggregationOutputs: %@;", v8];

  [v3 appendString:@"\n>"];

  return v3;
}

@end