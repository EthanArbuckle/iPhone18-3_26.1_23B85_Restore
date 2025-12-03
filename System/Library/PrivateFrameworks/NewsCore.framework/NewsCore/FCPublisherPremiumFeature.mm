@interface FCPublisherPremiumFeature
- (FCPublisherPremiumFeature)init;
- (FCPublisherPremiumFeature)initWithPersonalizationIdentifier:(id)identifier;
- (FCPublisherPremiumFeature)initWithTagID:(id)d;
@end

@implementation FCPublisherPremiumFeature

- (FCPublisherPremiumFeature)init
{
  v16 = *MEMORY[0x1E69E9840];
  [(FCPublisherPremiumFeature *)self initWithTagID:0];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPublisherPremiumFeature init]";
    v10 = 2080;
    v11 = "FCPersonalizationFeature.m";
    v12 = 1024;
    v13 = 813;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPublisherPremiumFeature init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPublisherPremiumFeature)initWithTagID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = FCPublisherPremiumFeature;
  v6 = [(FCPersonalizationFeature *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if (dCopy)
    {
      objc_storeStrong(&v6->super._tagID, d);
    }

    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"f5", @"+", dCopy];
    personalizationIdentifier = v7->super._personalizationIdentifier;
    v7->super._personalizationIdentifier = dCopy;
  }

  return v7;
}

- (FCPublisherPremiumFeature)initWithPersonalizationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [identifierCopy rangeOfString:@"+"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = 0;
  }

  else
  {
    v8 = [identifierCopy substringWithRange:{v5 + v6, objc_msgSend(identifierCopy, "length") - (v5 + v6)}];
    self = [(FCPublisherPremiumFeature *)self initWithTagID:v8];

    selfCopy = self;
  }

  return selfCopy;
}

@end