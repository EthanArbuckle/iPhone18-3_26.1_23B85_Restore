@interface FCTagIDFeature
- (FCTagIDFeature)init;
- (FCTagIDFeature)initWithPersonalizationIdentifier:(id)identifier;
- (FCTagIDFeature)initWithTagID:(id)d;
- (double)featureWeightWithConfigurableValues:(id)values publisherID:(id)d;
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

- (FCTagIDFeature)initWithTagID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = FCTagIDFeature;
  v6 = [(FCPersonalizationFeature *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->super._tagID, d);
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"f3", @"+", dCopy];
    personalizationIdentifier = v7->super._personalizationIdentifier;
    v7->super._personalizationIdentifier = dCopy;
  }

  return v7;
}

- (FCTagIDFeature)initWithPersonalizationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [identifierCopy length];
  v6 = [@"f3" length];
  if (v5 <= [@"+" length] + v6)
  {
    selfCopy = 0;
  }

  else
  {
    v7 = [identifierCopy substringFromIndex:{objc_msgSend(@"+", "length") + objc_msgSend(@"f3", "length")}];
    self = [(FCTagIDFeature *)self initWithTagID:v7];

    selfCopy = self;
  }

  return selfCopy;
}

- (double)featureWeightWithConfigurableValues:(id)values publisherID:(id)d
{
  valuesCopy = values;
  dCopy = d;
  tagID = [(FCPersonalizationFeature *)self tagID];
  v9 = [tagID isEqualToString:dCopy];

  v10 = 1.0;
  if (v9)
  {
    [valuesCopy publisherAggregateWeight];
    v10 = v11;
  }

  return v10;
}

@end