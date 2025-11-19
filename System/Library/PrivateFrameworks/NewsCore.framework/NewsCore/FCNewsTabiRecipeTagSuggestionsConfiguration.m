@interface FCNewsTabiRecipeTagSuggestionsConfiguration
- (FCNewsTabiRecipeTagSuggestionsConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiRecipeTagSuggestionsConfiguration

- (FCNewsTabiRecipeTagSuggestionsConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [FCNewsTabiRecipeTagSuggestionsOutputConfiguration alloc];
  v6 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"bundleOutputConfiguration", 0);
  v7 = [(FCNewsTabiRecipeTagSuggestionsOutputConfiguration *)v5 initWithDictionary:v6];

  if (v7)
  {
    v8 = v7;
    v9 = [FCNewsTabiRecipeTagSuggestionsOutputConfiguration alloc];
    v10 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"nonBundleOutputConfiguration", 0);
    v11 = [(FCNewsTabiRecipeTagSuggestionsOutputConfiguration *)v9 initWithDictionary:v10];

    if (v11)
    {
      v12 = v11;
      v13 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"eventAggregationConfiguration", 0);
      v14 = v13;
      if (v13)
      {
        v23 = v12;
        v15 = v13;
        v16 = [[FCNewsTabiRecipeEventAggregationConfiguration alloc] initWithDictionary:v15];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
          v24.receiver = self;
          v24.super_class = FCNewsTabiRecipeTagSuggestionsConfiguration;
          v19 = [(FCNewsTabiRecipeTagSuggestionsConfiguration *)&v24 init];
          p_isa = &v19->super.isa;
          if (v19)
          {
            objc_storeStrong(&v19->_bundleOutputConfiguration, v7);
            objc_storeStrong(p_isa + 2, v11);
            objc_storeStrong(p_isa + 3, v17);
          }

          self = p_isa;
          v21 = self;
        }

        else
        {
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __66__FCNewsTabiRecipeTagSuggestionsConfiguration_initWithDictionary___block_invoke_11;
          v25[3] = &unk_1E7C36F98;
          v26 = v15;
          v21 = __66__FCNewsTabiRecipeTagSuggestionsConfiguration_initWithDictionary___block_invoke_11(v25);
          v18 = v26;
        }

        v12 = v23;
      }

      else
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __66__FCNewsTabiRecipeTagSuggestionsConfiguration_initWithDictionary___block_invoke_9;
        v27[3] = &unk_1E7C36F98;
        v28 = v4;
        v21 = __66__FCNewsTabiRecipeTagSuggestionsConfiguration_initWithDictionary___block_invoke_9(v27);
        v15 = v28;
      }
    }

    else
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __66__FCNewsTabiRecipeTagSuggestionsConfiguration_initWithDictionary___block_invoke_8;
      v29[3] = &unk_1E7C36F98;
      v30 = v4;
      v21 = __66__FCNewsTabiRecipeTagSuggestionsConfiguration_initWithDictionary___block_invoke_8(v29);
      v12 = v30;
    }
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __66__FCNewsTabiRecipeTagSuggestionsConfiguration_initWithDictionary___block_invoke;
    v31[3] = &unk_1E7C36F98;
    v32 = v4;
    v21 = __66__FCNewsTabiRecipeTagSuggestionsConfiguration_initWithDictionary___block_invoke(v31);
    v8 = v32;
  }

  return v21;
}

uint64_t __66__FCNewsTabiRecipeTagSuggestionsConfiguration_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeTagSuggestionsOutputConfiguration due to failure to decode bundleOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __66__FCNewsTabiRecipeTagSuggestionsConfiguration_initWithDictionary___block_invoke_8(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeTagSuggestionsOutputConfiguration due to failure to decode nonBundleOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __66__FCNewsTabiRecipeTagSuggestionsConfiguration_initWithDictionary___block_invoke_9(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeEventAggregationConfiguration due to failure to decode event aggregation configuration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __66__FCNewsTabiRecipeTagSuggestionsConfiguration_initWithDictionary___block_invoke_11(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeEventAggregationConfiguration due to failure to decode configuration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsTabiRecipeTagSuggestionsConfiguration *)self bundleOutputConfiguration];
  v5 = [v4 indentedDescription];
  [v3 appendFormat:@"\n\tbundleOutputConfiguration: %@", v5];

  v6 = [(FCNewsTabiRecipeTagSuggestionsConfiguration *)self nonBundleOutputConfiguration];
  v7 = [v6 indentedDescription];
  [v3 appendFormat:@"\n\tnonBundleOutputConfiguration: %@", v7];

  v8 = [(FCNewsTabiRecipeTagSuggestionsConfiguration *)self eventAggregationConfiguration];
  v9 = [v8 indentedDescription];
  [v3 appendFormat:@"\n\teventAggregationConfiguration: %@;", v9];

  [v3 appendString:@"\n>"];

  return v3;
}

@end