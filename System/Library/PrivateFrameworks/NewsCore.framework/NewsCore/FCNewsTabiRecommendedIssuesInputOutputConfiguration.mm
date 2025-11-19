@interface FCNewsTabiRecommendedIssuesInputOutputConfiguration
- (FCNewsTabiRecommendedIssuesInputOutputConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiRecommendedIssuesInputOutputConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsTabiRecommendedIssuesInputOutputConfiguration *)self contextFeatureKey];
  [v3 appendFormat:@"\n\tcontextFeatureKey: %@;", v4];

  v5 = [(FCNewsTabiRecommendedIssuesInputOutputConfiguration *)self recommendedIssuePublisherOutputName];
  [v3 appendFormat:@"\n\trecommendedIssuePublisherOutputName: %@;", v5];

  v6 = [(FCNewsTabiRecommendedIssuesInputOutputConfiguration *)self recommendedIssuePublisherScoreOutputName];
  [v3 appendFormat:@"\n\trecommendedIssuePublisherScoreOutputName: %@;", v6];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiRecommendedIssuesInputOutputConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = FCAppConfigurationStringValue(v4, @"contextFeatureKey", 0);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = FCAppConfigurationStringValue(v4, @"recommendedIssuePublisherOutputName", 0);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      v11 = FCAppConfigurationStringValue(v4, @"recommendedIssuePublisherScoreOutputName", 0);
      v12 = v11;
      if (v11)
      {
        v13 = v11;
        v18.receiver = self;
        v18.super_class = FCNewsTabiRecommendedIssuesInputOutputConfiguration;
        v14 = [(FCNewsTabiRecommendedIssuesInputOutputConfiguration *)&v18 init];
        p_isa = &v14->super.isa;
        if (v14)
        {
          objc_storeStrong(&v14->_contextFeatureKey, v6);
          objc_storeStrong(p_isa + 2, v9);
          objc_storeStrong(p_isa + 3, v12);
        }

        self = p_isa;
        v16 = self;
      }

      else
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __74__FCNewsTabiRecommendedIssuesInputOutputConfiguration_initWithDictionary___block_invoke_9;
        v19[3] = &unk_1E7C36F98;
        v20 = v4;
        v16 = __74__FCNewsTabiRecommendedIssuesInputOutputConfiguration_initWithDictionary___block_invoke_9(v19);
        v13 = v20;
      }
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __74__FCNewsTabiRecommendedIssuesInputOutputConfiguration_initWithDictionary___block_invoke_8;
      v21[3] = &unk_1E7C36F98;
      v22 = v4;
      v16 = __74__FCNewsTabiRecommendedIssuesInputOutputConfiguration_initWithDictionary___block_invoke_8(v21);
      v10 = v22;
    }
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __74__FCNewsTabiRecommendedIssuesInputOutputConfiguration_initWithDictionary___block_invoke;
    v23[3] = &unk_1E7C36F98;
    v24 = v4;
    v16 = __74__FCNewsTabiRecommendedIssuesInputOutputConfiguration_initWithDictionary___block_invoke(v23);
    v7 = v24;
  }

  return v16;
}

uint64_t __74__FCNewsTabiRecommendedIssuesInputOutputConfiguration_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecommendedIssuesInputOutputConfiguration due to failure to decode contextFeatureKey from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __74__FCNewsTabiRecommendedIssuesInputOutputConfiguration_initWithDictionary___block_invoke_8(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecommendedIssuesInputOutputConfiguration due to failure to decode recommendedIssuePublisherOutputName from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __74__FCNewsTabiRecommendedIssuesInputOutputConfiguration_initWithDictionary___block_invoke_9(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecommendedIssuesInputOutputConfiguration due to failure to decode recommendedIssuePublisherScoreOutputName from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

@end