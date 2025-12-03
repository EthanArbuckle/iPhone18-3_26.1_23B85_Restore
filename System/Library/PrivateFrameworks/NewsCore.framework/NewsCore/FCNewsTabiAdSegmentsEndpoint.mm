@interface FCNewsTabiAdSegmentsEndpoint
- (FCNewsTabiAdSegmentsEndpoint)init;
- (FCNewsTabiAdSegmentsEndpoint)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsTabiAdSegmentsEndpoint

- (FCNewsTabiAdSegmentsEndpoint)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCNewsTabiAdSegmentsEndpoint init]";
    v10 = 2080;
    v11 = "FCNewsTabiAdSegmentsConfiguration.m";
    v12 = 1024;
    v13 = 23;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCNewsTabiAdSegmentsEndpoint init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCNewsTabiAdSegmentsEndpoint)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = FCAppConfigurationStringValue(dictionaryCopy, @"packageAssetID", 0);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = FCAppConfigurationStringValue(dictionaryCopy, @"adSegmentsOutputName", 0);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      v20.receiver = self;
      v20.super_class = FCNewsTabiAdSegmentsEndpoint;
      v11 = [(FCNewsTabiAdSegmentsEndpoint *)&v20 init];
      if (v11)
      {
        v19.receiver = v11;
        v19.super_class = FCNewsTabiAdSegmentsEndpoint;
        v12 = [(FCNewsTabiAdSegmentsEndpoint *)&v19 init];
        v13 = v12;
        if (v12)
        {
          objc_storeStrong(&v12->_packageAssetID, v6);
          objc_storeStrong(&v13->_adSegmentsOutputName, v9);
          v14 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"eventAggregationOutputs", 0);
          if (v14)
          {
            v15 = [[FCNewsTabiEventAggregationOutputsConfiguration alloc] initWithDictionary:v14];
            eventAggregationOutputs = v13->_eventAggregationOutputs;
            v13->_eventAggregationOutputs = v15;
          }
        }
      }

      else
      {
        v13 = 0;
      }

      self = v13;
      selfCopy = self;
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __51__FCNewsTabiAdSegmentsEndpoint_initWithDictionary___block_invoke_16;
      v21[3] = &unk_1E7C36F98;
      v22 = dictionaryCopy;
      selfCopy = __51__FCNewsTabiAdSegmentsEndpoint_initWithDictionary___block_invoke_16(v21);
      v10 = v22;
    }
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __51__FCNewsTabiAdSegmentsEndpoint_initWithDictionary___block_invoke;
    v23[3] = &unk_1E7C36F98;
    v24 = dictionaryCopy;
    selfCopy = __51__FCNewsTabiAdSegmentsEndpoint_initWithDictionary___block_invoke(v23);
    v7 = v24;
  }

  return selfCopy;
}

uint64_t __51__FCNewsTabiAdSegmentsEndpoint_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiAdSegmentsEndpoint due to failure to decode packageAssetID from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __51__FCNewsTabiAdSegmentsEndpoint_initWithDictionary___block_invoke_16(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiAdSegmentsEndpoint due to failure to decode adSegmentsOutputName from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  packageAssetID = [(FCNewsTabiAdSegmentsEndpoint *)self packageAssetID];
  [v3 appendFormat:@"\n\tpackageAssetID: %@;", packageAssetID];

  adSegmentsOutputName = [(FCNewsTabiAdSegmentsEndpoint *)self adSegmentsOutputName];
  [v3 appendFormat:@"\n\tadSegmentsOutputName: %@;", adSegmentsOutputName];

  eventAggregationOutputs = [(FCNewsTabiAdSegmentsEndpoint *)self eventAggregationOutputs];
  indentedDescription = [eventAggregationOutputs indentedDescription];
  [v3 appendFormat:@"\n\teventAggregationOutputs: %@;", indentedDescription];

  [v3 appendString:@"\n>"];

  return v3;
}

@end