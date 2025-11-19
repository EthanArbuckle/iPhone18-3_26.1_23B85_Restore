@interface FCPostPurchaseOnboardingConfiguration
- (BOOL)isEqual:(id)a3;
- (FCPostPurchaseOnboardingConfiguration)init;
- (FCPostPurchaseOnboardingConfiguration)initWithConfigDictionary:(id)a3;
- (FCPostPurchaseOnboardingConfiguration)initWithPostPurchaseOnboardingStep:(unint64_t)a3 landingPageArticleID:(id)a4 callToActionText:(id)a5 deepLinkURL:(id)a6;
- (unint64_t)hash;
@end

@implementation FCPostPurchaseOnboardingConfiguration

- (FCPostPurchaseOnboardingConfiguration)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPostPurchaseOnboardingConfiguration init]";
    v10 = 2080;
    v11 = "FCPostPurchaseOnboardingConfiguration.m";
    v12 = 1024;
    v13 = 26;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPostPurchaseOnboardingConfiguration init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPostPurchaseOnboardingConfiguration)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v5 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"data", 0);
  v6 = FCAppConfigurationStringValue(v4, @"type", 0);

  v7 = FCPostPurchaseOnboardingStepWithValue(v6);
  v8 = FCAppConfigurationStringValue(v5, @"articleID", 0);
  v9 = FCAppConfigurationStringValue(v5, @"ctaText", 0);
  v10 = FCAppConfigurationURLValue(v5, @"url");
  v11 = [(FCPostPurchaseOnboardingConfiguration *)self initWithPostPurchaseOnboardingStep:v7 landingPageArticleID:v8 callToActionText:v9 deepLinkURL:v10];

  return v11;
}

- (FCPostPurchaseOnboardingConfiguration)initWithPostPurchaseOnboardingStep:(unint64_t)a3 landingPageArticleID:(id)a4 callToActionText:(id)a5 deepLinkURL:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = FCPostPurchaseOnboardingConfiguration;
  v13 = [(FCPostPurchaseOnboardingConfiguration *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_postPurchaseOnboardingStep = a3;
    v15 = [v10 copy];
    landingPageArticleID = v14->_landingPageArticleID;
    v14->_landingPageArticleID = v15;

    v17 = [v11 copy];
    callToActionText = v14->_callToActionText;
    v14->_callToActionText = v17;

    v19 = [v12 copy];
    deepLinkURL = v14->_deepLinkURL;
    v14->_deepLinkURL = v19;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6 && (v7 = -[FCPostPurchaseOnboardingConfiguration postPurchaseOnboardingStep](self, "postPurchaseOnboardingStep"), v7 == [v6 postPurchaseOnboardingStep]))
  {
    v8 = MEMORY[0x1E69E58C0];
    v9 = [(FCPostPurchaseOnboardingConfiguration *)self landingPageArticleID];
    v10 = [v6 landingPageArticleID];
    if ([v8 nf_object:v9 isEqualToObject:v10])
    {
      v11 = MEMORY[0x1E69E58C0];
      v12 = [(FCPostPurchaseOnboardingConfiguration *)self callToActionText];
      v13 = [v6 callToActionText];
      if ([v11 nf_object:v12 isEqualToObject:v13])
      {
        v14 = MEMORY[0x1E69E58C0];
        v15 = [(FCPostPurchaseOnboardingConfiguration *)self deepLinkURL];
        v16 = [v6 deepLinkURL];
        v17 = [v14 nf_object:v15 isEqualToObject:v16];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCPostPurchaseOnboardingConfiguration postPurchaseOnboardingStep](self, "postPurchaseOnboardingStep")}];
  v4 = [v3 hash];
  v5 = [(FCPostPurchaseOnboardingConfiguration *)self landingPageArticleID];
  v6 = [v5 hash];
  v7 = [(FCPostPurchaseOnboardingConfiguration *)self callToActionText];
  v8 = v6 ^ [v7 hash];
  v9 = [(FCPostPurchaseOnboardingConfiguration *)self deepLinkURL];
  v10 = v8 ^ [v9 hash];

  return v10 ^ v4;
}

@end