@interface FCNewsTabiRecipeTagSuggestionsOutputConfiguration
- (FCNewsTabiRecipeTagSuggestionsOutputConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiRecipeTagSuggestionsOutputConfiguration

- (FCNewsTabiRecipeTagSuggestionsOutputConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = FCAppConfigurationStringValue(v4, @"channelIDsOutputName", 0);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = FCAppConfigurationStringValue(v4, @"topicIDsOutputName", 0);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      v11 = FCAppConfigurationStringValue(v4, @"channelScoresOutputName", 0);
      v12 = v11;
      if (v11)
      {
        v21 = v11;
        v13 = FCAppConfigurationStringValue(v4, @"topicScoresOutputName", 0);
        v14 = v13;
        if (v13)
        {
          v15 = v13;
          v22.receiver = self;
          v22.super_class = FCNewsTabiRecipeTagSuggestionsOutputConfiguration;
          v16 = [(FCNewsTabiRecipeTagSuggestionsOutputConfiguration *)&v22 init];
          p_isa = &v16->super.isa;
          if (v16)
          {
            objc_storeStrong(&v16->_channelIDsOutputName, v6);
            objc_storeStrong(p_isa + 2, v9);
            objc_storeStrong(p_isa + 3, v12);
            objc_storeStrong(p_isa + 4, v14);
          }

          self = p_isa;
          v18 = self;
        }

        else
        {
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __72__FCNewsTabiRecipeTagSuggestionsOutputConfiguration_initWithDictionary___block_invoke_13;
          v23[3] = &unk_1E7C36F98;
          v24 = v4;
          v18 = __72__FCNewsTabiRecipeTagSuggestionsOutputConfiguration_initWithDictionary___block_invoke_13(v23);
          v15 = v24;
        }

        v19 = v21;
      }

      else
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __72__FCNewsTabiRecipeTagSuggestionsOutputConfiguration_initWithDictionary___block_invoke_12;
        v25[3] = &unk_1E7C36F98;
        v26 = v4;
        v18 = __72__FCNewsTabiRecipeTagSuggestionsOutputConfiguration_initWithDictionary___block_invoke_12(v25);
        v19 = v26;
      }
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __72__FCNewsTabiRecipeTagSuggestionsOutputConfiguration_initWithDictionary___block_invoke_11;
      v27[3] = &unk_1E7C36F98;
      v28 = v4;
      v18 = __72__FCNewsTabiRecipeTagSuggestionsOutputConfiguration_initWithDictionary___block_invoke_11(v27);
      v10 = v28;
    }
  }

  else
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __72__FCNewsTabiRecipeTagSuggestionsOutputConfiguration_initWithDictionary___block_invoke;
    v29[3] = &unk_1E7C36F98;
    v30 = v4;
    v18 = __72__FCNewsTabiRecipeTagSuggestionsOutputConfiguration_initWithDictionary___block_invoke(v29);
    v7 = v30;
  }

  return v18;
}

uint64_t __72__FCNewsTabiRecipeTagSuggestionsOutputConfiguration_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeTagSuggestionsOutputConfiguration due to failure to decode channelIDsOutputName from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __72__FCNewsTabiRecipeTagSuggestionsOutputConfiguration_initWithDictionary___block_invoke_11(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeTagSuggestionsOutputConfiguration due to failure to decode topicIDsOutputName from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __72__FCNewsTabiRecipeTagSuggestionsOutputConfiguration_initWithDictionary___block_invoke_12(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeTagSuggestionsOutputConfiguration due to failure to decode channelScoresOutputName from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __72__FCNewsTabiRecipeTagSuggestionsOutputConfiguration_initWithDictionary___block_invoke_13(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeTagSuggestionsOutputConfiguration due to failure to decode topicScoresOutputName from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsTabiRecipeTagSuggestionsOutputConfiguration *)self channelIDsOutputName];
  [v3 appendFormat:@"\n\tchannelIDsOutputName: %@;", v4];

  v5 = [(FCNewsTabiRecipeTagSuggestionsOutputConfiguration *)self topicIDsOutputName];
  [v3 appendFormat:@"\n\ttopicIDsOutputName: %@;", v5];

  v6 = [(FCNewsTabiRecipeTagSuggestionsOutputConfiguration *)self channelScoresOutputName];
  [v3 appendFormat:@"\n\tchannelScoresOutputName: %@;", v6];

  v7 = [(FCNewsTabiRecipeTagSuggestionsOutputConfiguration *)self topicScoresOutputName];
  [v3 appendFormat:@"\n\ttopicScoresOutputName: %@;", v7];

  [v3 appendString:@"\n>"];

  return v3;
}

@end