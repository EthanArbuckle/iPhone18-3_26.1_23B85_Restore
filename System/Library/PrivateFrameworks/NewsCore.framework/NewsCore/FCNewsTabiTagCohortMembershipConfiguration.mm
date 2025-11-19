@interface FCNewsTabiTagCohortMembershipConfiguration
- (FCNewsTabiTagCohortMembershipConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiTagCohortMembershipConfiguration

- (FCNewsTabiTagCohortMembershipConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [FCNewsTabiTagCohortMembershipOutputConfiguration alloc];
  v6 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"bundleOutputConfiguration", 0);
  v7 = [(FCNewsTabiTagCohortMembershipOutputConfiguration *)v5 initWithDictionary:v6];

  if (v7)
  {
    v8 = v7;
    v9 = [FCNewsTabiTagCohortMembershipOutputConfiguration alloc];
    v10 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"nonBundleOutputConfiguration", 0);
    v11 = [(FCNewsTabiTagCohortMembershipOutputConfiguration *)v9 initWithDictionary:v10];

    if (v11)
    {
      v12 = v11;
      v17.receiver = self;
      v17.super_class = FCNewsTabiTagCohortMembershipConfiguration;
      v13 = [(FCNewsTabiTagCohortMembershipConfiguration *)&v17 init];
      p_isa = &v13->super.isa;
      if (v13)
      {
        objc_storeStrong(&v13->_bundleOutputConfiguration, v7);
        objc_storeStrong(p_isa + 2, v11);
      }

      self = p_isa;
      v15 = self;
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __65__FCNewsTabiTagCohortMembershipConfiguration_initWithDictionary___block_invoke_55;
      v18[3] = &unk_1E7C36F98;
      v19 = v4;
      v15 = __65__FCNewsTabiTagCohortMembershipConfiguration_initWithDictionary___block_invoke_55(v18);
      v12 = v19;
    }
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __65__FCNewsTabiTagCohortMembershipConfiguration_initWithDictionary___block_invoke;
    v20[3] = &unk_1E7C36F98;
    v21 = v4;
    v15 = __65__FCNewsTabiTagCohortMembershipConfiguration_initWithDictionary___block_invoke(v20);
    v8 = v21;
  }

  return v15;
}

uint64_t __65__FCNewsTabiTagCohortMembershipConfiguration_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiTagCohortMembershipConfiguration due to failure to decode bundleOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __65__FCNewsTabiTagCohortMembershipConfiguration_initWithDictionary___block_invoke_55(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiTagCohortMembershipConfiguration due to failure to decode nonBundleOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsTabiTagCohortMembershipConfiguration *)self bundleOutputConfiguration];
  v5 = [v4 indentedDescription];
  [v3 appendFormat:@"\n\tbundleOutputConfiguration: %@;", v5];

  v6 = [(FCNewsTabiTagCohortMembershipConfiguration *)self nonBundleOutputConfiguration];
  v7 = [v6 indentedDescription];
  [v3 appendFormat:@"\n\tnonBundleOutputConfiguration: %@;", v7];

  [v3 appendString:@"\n>"];

  return v3;
}

@end