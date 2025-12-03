@interface FCAdCategoryFeature
- (FCAdCategoryFeature)init;
- (FCAdCategoryFeature)initWithPersonalizationIdentifier:(id)identifier;
- (FCAdCategoryFeature)initWithTagID:(id)d;
@end

@implementation FCAdCategoryFeature

- (FCAdCategoryFeature)init
{
  v16 = *MEMORY[0x1E69E9840];
  [(FCAdCategoryFeature *)self initWithTagID:&stru_1F2DC7DC0];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCAdCategoryFeature init]";
    v10 = 2080;
    v11 = "FCPersonalizationFeature.m";
    v12 = 1024;
    v13 = 551;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCAdCategoryFeature init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCAdCategoryFeature)initWithTagID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = FCAdCategoryFeature;
  v6 = [(FCPersonalizationFeature *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->super._tagID, d);
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"fa1", @"+", dCopy];
    personalizationIdentifier = v7->super._personalizationIdentifier;
    v7->super._personalizationIdentifier = dCopy;
  }

  return v7;
}

- (FCAdCategoryFeature)initWithPersonalizationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [identifierCopy length];
  v6 = [@"fa1" length];
  if (v5 <= [@"+" length] + v6)
  {
    selfCopy = 0;
  }

  else
  {
    v7 = [identifierCopy substringFromIndex:{objc_msgSend(@"+", "length") + objc_msgSend(@"fa1", "length")}];
    self = [(FCAdCategoryFeature *)self initWithTagID:v7];

    selfCopy = self;
  }

  return selfCopy;
}

@end