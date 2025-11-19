@interface FCTagIDFeature
- (FCTagIDFeature)init;
- (FCTagIDFeature)initWithPersonalizationIdentifier:(id)a3;
- (FCTagIDFeature)initWithTagID:(id)a3;
- (double)featureWeightWithConfigurableValues:(id)a3 publisherID:(id)a4;
@end

@implementation FCTagIDFeature

- (FCTagIDFeature)init
{
  v16 = *MEMORY[0x1E69E9840];
  [(FCTagIDFeature *)self initWithTagID:&stru_1F2DC7DC0];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCTagIDFeature init]";
    v10 = 2080;
    v11 = "FCPersonalizationFeature.m";
    v12 = 1024;
    v13 = 700;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCTagIDFeature init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCTagIDFeature)initWithTagID:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = FCTagIDFeature;
  v6 = [(FCPersonalizationFeature *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->super._tagID, a3);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"f3", @"+", v5];
    personalizationIdentifier = v7->super._personalizationIdentifier;
    v7->super._personalizationIdentifier = v8;
  }

  return v7;
}

- (FCTagIDFeature)initWithPersonalizationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  v6 = [@"f3" length];
  if (v5 <= [@"+" length] + v6)
  {
    v8 = 0;
  }

  else
  {
    v7 = [v4 substringFromIndex:{objc_msgSend(@"+", "length") + objc_msgSend(@"f3", "length")}];
    self = [(FCTagIDFeature *)self initWithTagID:v7];

    v8 = self;
  }

  return v8;
}

- (double)featureWeightWithConfigurableValues:(id)a3 publisherID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FCPersonalizationFeature *)self tagID];
  v9 = [v8 isEqualToString:v7];

  v10 = 1.0;
  if (v9)
  {
    [v6 publisherAggregateWeight];
    v10 = v11;
  }

  return v10;
}

@end