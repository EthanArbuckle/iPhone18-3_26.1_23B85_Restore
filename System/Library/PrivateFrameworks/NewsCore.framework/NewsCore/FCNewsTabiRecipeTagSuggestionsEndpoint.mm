@interface FCNewsTabiRecipeTagSuggestionsEndpoint
- (FCNewsTabiRecipeTagSuggestionsEndpoint)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiRecipeTagSuggestionsEndpoint

- (FCNewsTabiRecipeTagSuggestionsEndpoint)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = FCAppConfigurationStringValue(v4, @"packageAssetID", 0);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [[FCNewsTabiRecipeTagSuggestionsConfiguration alloc] initWithDictionary:v4];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      v15.receiver = self;
      v15.super_class = FCNewsTabiRecipeTagSuggestionsEndpoint;
      v11 = [(FCNewsTabiRecipeTagSuggestionsEndpoint *)&v15 init];
      p_isa = &v11->super.isa;
      if (v11)
      {
        objc_storeStrong(&v11->_packageAssetID, v6);
        objc_storeStrong(p_isa + 2, v9);
      }

      self = p_isa;
      v13 = self;
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __61__FCNewsTabiRecipeTagSuggestionsEndpoint_initWithDictionary___block_invoke_52;
      v16[3] = &unk_1E7C36F98;
      v17 = v4;
      v13 = __61__FCNewsTabiRecipeTagSuggestionsEndpoint_initWithDictionary___block_invoke_52(v16);
      v10 = v17;
    }
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __61__FCNewsTabiRecipeTagSuggestionsEndpoint_initWithDictionary___block_invoke;
    v18[3] = &unk_1E7C36F98;
    v19 = v4;
    v13 = __61__FCNewsTabiRecipeTagSuggestionsEndpoint_initWithDictionary___block_invoke(v18);
    v7 = v19;
  }

  return v13;
}

uint64_t __61__FCNewsTabiRecipeTagSuggestionsEndpoint_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeTagSuggestionsEndpoint due to failure to decode packageAssetID from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __61__FCNewsTabiRecipeTagSuggestionsEndpoint_initWithDictionary___block_invoke_52(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeTagSuggestionsConfiguration due to failure to decode configuration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsTabiRecipeTagSuggestionsEndpoint *)self packageAssetID];
  [v3 appendFormat:@"\n\tpackageAssetID: %@;", v4];

  v5 = [(FCNewsTabiRecipeTagSuggestionsEndpoint *)self configuration];
  v6 = [v5 indentedDescription];
  [v3 appendFormat:@"\n\tconfiguration: %@;", v6];

  [v3 appendString:@"\n>"];

  return v3;
}

@end