@interface FCNewsTabiTagCohortMembershipOutputConfiguration
- (FCNewsTabiTagCohortMembershipOutputConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiTagCohortMembershipOutputConfiguration

- (FCNewsTabiTagCohortMembershipOutputConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = FCAppConfigurationStringValue(v4, @"cohortMembershipOutputName", 0);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v12.receiver = self;
    v12.super_class = FCNewsTabiTagCohortMembershipOutputConfiguration;
    v8 = [(FCNewsTabiTagCohortMembershipOutputConfiguration *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_cohortMembershipOutputName, v6);
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__FCNewsTabiTagCohortMembershipOutputConfiguration_initWithDictionary___block_invoke;
    v13[3] = &unk_1E7C36F98;
    v14 = v4;
    v10 = __71__FCNewsTabiTagCohortMembershipOutputConfiguration_initWithDictionary___block_invoke(v13);
    v7 = v14;
  }

  return v10;
}

uint64_t __71__FCNewsTabiTagCohortMembershipOutputConfiguration_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiTagCohortMembershipOutputConfiguration due to failure to decode cohortMembershipOutputName from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsTabiTagCohortMembershipOutputConfiguration *)self cohortMembershipOutputName];
  [v3 appendFormat:@"\n\tcohortMembershipOutputName: %@;", v4];

  [v3 appendString:@"\n>"];

  return v3;
}

@end