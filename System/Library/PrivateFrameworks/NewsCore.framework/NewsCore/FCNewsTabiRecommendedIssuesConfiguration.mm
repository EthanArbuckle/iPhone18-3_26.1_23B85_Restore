@interface FCNewsTabiRecommendedIssuesConfiguration
- (FCNewsTabiRecommendedIssuesConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiRecommendedIssuesConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsTabiRecommendedIssuesConfiguration *)self bundleInputOutputConfiguration];
  v5 = [v4 indentedDescription];
  [v3 appendFormat:@"\n\tbundleInputOutputConfiguration: %@;", v5];

  v6 = [(FCNewsTabiRecommendedIssuesConfiguration *)self nonBundleInputOutputConfiguration];
  v7 = [v6 indentedDescription];
  [v3 appendFormat:@"\n\tnonBundleInputOutputConfiguration: %@;", v7];

  v8 = [(FCNewsTabiRecommendedIssuesConfiguration *)self userContextConfiguration];
  v9 = [v8 indentedDescription];
  [v3 appendFormat:@"\n\tuserContextConfiguration: %@;", v9];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiRecommendedIssuesConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [FCNewsTabiRecommendedIssuesInputOutputConfiguration alloc];
  v6 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"bundleInputOutputConfiguration", 0);
  v7 = [(FCNewsTabiRecommendedIssuesInputOutputConfiguration *)v5 initWithDictionary:v6];

  if (v7)
  {
    v8 = v7;
    v9 = [FCNewsTabiRecommendedIssuesInputOutputConfiguration alloc];
    v10 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"nonBundleInputOutputConfiguration", 0);
    v11 = [(FCNewsTabiRecommendedIssuesInputOutputConfiguration *)v9 initWithDictionary:v10];

    if (v11)
    {
      v12 = v11;
      v20.receiver = self;
      v20.super_class = FCNewsTabiRecommendedIssuesConfiguration;
      v13 = [(FCNewsTabiRecommendedIssuesConfiguration *)&v20 init];
      v14 = v13;
      if (v13)
      {
        objc_storeStrong(&v13->_bundleInputOutputConfiguration, v7);
        objc_storeStrong(&v14->_nonBundleInputOutputConfiguration, v11);
        v15 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"userContextConfiguration", 0);
        v16 = [[FCNewsTabiRecommendedIssuesUserContextConfiguration alloc] initWithDictionary:v15];
        userContextConfiguration = v14->_userContextConfiguration;
        v14->_userContextConfiguration = v16;
      }

      self = v14;
      v18 = self;
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __63__FCNewsTabiRecommendedIssuesConfiguration_initWithDictionary___block_invoke_58;
      v21[3] = &unk_1E7C36F98;
      v22 = v4;
      v18 = __63__FCNewsTabiRecommendedIssuesConfiguration_initWithDictionary___block_invoke_58(v21);
      v12 = v22;
    }
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __63__FCNewsTabiRecommendedIssuesConfiguration_initWithDictionary___block_invoke;
    v23[3] = &unk_1E7C36F98;
    v24 = v4;
    v18 = __63__FCNewsTabiRecommendedIssuesConfiguration_initWithDictionary___block_invoke(v23);
    v8 = v24;
  }

  return v18;
}

uint64_t __63__FCNewsTabiRecommendedIssuesConfiguration_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecommendedIssuesConfiguration due to failure to decode bundleInputOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __63__FCNewsTabiRecommendedIssuesConfiguration_initWithDictionary___block_invoke_58(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecommendedIssuesConfiguration due to failure to decode nonBundleInputOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

@end