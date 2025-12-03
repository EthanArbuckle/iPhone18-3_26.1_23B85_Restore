@interface FCNewsTabiRecommendedTagsEndpoint
- (FCNewsTabiRecommendedTagsEndpoint)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsTabiRecommendedTagsEndpoint

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  packageAssetID = [(FCNewsTabiRecommendedTagsEndpoint *)self packageAssetID];
  indentedDescription = [packageAssetID indentedDescription];
  [v3 appendFormat:@"\n\tpackageAssetID: %@;", indentedDescription];

  configuration = [(FCNewsTabiRecommendedTagsEndpoint *)self configuration];
  indentedDescription2 = [configuration indentedDescription];
  [v3 appendFormat:@"\n\tconfiguration: %@;", indentedDescription2];

  eventAggregationOutputs = [(FCNewsTabiRecommendedTagsEndpoint *)self eventAggregationOutputs];
  indentedDescription3 = [eventAggregationOutputs indentedDescription];
  [v3 appendFormat:@"\n\teventAggregationOutputs: %@;", indentedDescription3];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiRecommendedTagsEndpoint)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = FCAppConfigurationStringValue(dictionaryCopy, @"packageAssetID", 0);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [[FCNewsTabiRecommendedTagsConfiguration alloc] initWithDictionary:dictionaryCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      v18.receiver = self;
      v18.super_class = FCNewsTabiRecommendedTagsEndpoint;
      v11 = [(FCNewsTabiRecommendedTagsEndpoint *)&v18 init];
      v12 = v11;
      if (v11)
      {
        objc_storeStrong(&v11->_packageAssetID, v6);
        objc_storeStrong(&v12->_configuration, v9);
        v13 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"eventAggregationOutputs", 0);
        if (v13)
        {
          v14 = [[FCNewsTabiEventAggregationOutputsConfiguration alloc] initWithDictionary:v13];
          eventAggregationOutputs = v12->_eventAggregationOutputs;
          v12->_eventAggregationOutputs = v14;
        }
      }

      self = v12;
      selfCopy = self;
    }

    else
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __56__FCNewsTabiRecommendedTagsEndpoint_initWithDictionary___block_invoke_5;
      v19[3] = &unk_1E7C36F98;
      v20 = dictionaryCopy;
      selfCopy = __56__FCNewsTabiRecommendedTagsEndpoint_initWithDictionary___block_invoke_5(v19);
      v10 = v20;
    }
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __56__FCNewsTabiRecommendedTagsEndpoint_initWithDictionary___block_invoke;
    v21[3] = &unk_1E7C36F98;
    v22 = dictionaryCopy;
    selfCopy = __56__FCNewsTabiRecommendedTagsEndpoint_initWithDictionary___block_invoke(v21);
    v7 = v22;
  }

  return selfCopy;
}

uint64_t __56__FCNewsTabiRecommendedTagsEndpoint_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecommendedTagsEndpoint due to failure to decode packageAssetID from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __56__FCNewsTabiRecommendedTagsEndpoint_initWithDictionary___block_invoke_5(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecommendedTagsEndpoint due to failure to decode configuration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

@end