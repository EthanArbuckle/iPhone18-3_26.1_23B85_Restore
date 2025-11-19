@interface NSURL(CAMURLUtilities)
- (CAMURLConfigurationRequest)configurationRequest;
- (id)_caseSensitiveQueryKeysAndValues;
- (uint64_t)isConfigurationURL;
- (void)configurationRequest;
@end

@implementation NSURL(CAMURLUtilities)

- (uint64_t)isConfigurationURL
{
  v1 = [a1 host];
  v2 = [v1 isEqualToString:CAMURLUtilitiesConfigurationURLHost];

  return v2;
}

- (CAMURLConfigurationRequest)configurationRequest
{
  v2 = [a1 _caseSensitiveQueryKeysAndValues];
  v3 = [[CAMURLConfigurationRequest alloc] initWithQueryDictionary:v2];
  if (!v3)
  {
    v4 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(CAMURLUtilities) *)a1 configurationRequest];
    }
  }

  return v3;
}

- (id)_caseSensitiveQueryKeysAndValues
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v2 = [v1 queryItems];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v9 value];
        if ([v10 length] && objc_msgSend(v11, "length"))
        {
          [v3 setObject:v11 forKey:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

- (void)configurationRequest
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 absoluteString];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Invalid or incomplete camera configuration URL: %{public}@", &v4, 0xCu);
}

@end