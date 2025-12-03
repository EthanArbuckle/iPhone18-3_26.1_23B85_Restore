@interface FCPostPurchaseOnboardingConfiguration
- (BOOL)isEqual:(id)equal;
- (FCPostPurchaseOnboardingConfiguration)init;
- (FCPostPurchaseOnboardingConfiguration)initWithConfigDictionary:(id)dictionary;
- (FCPostPurchaseOnboardingConfiguration)initWithPostPurchaseOnboardingStep:(unint64_t)step landingPageArticleID:(id)d callToActionText:(id)text deepLinkURL:(id)l;
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

- (FCPostPurchaseOnboardingConfiguration)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"data", 0);
  v6 = FCAppConfigurationStringValue(dictionaryCopy, @"type", 0);

  v7 = FCPostPurchaseOnboardingStepWithValue(v6);
  v8 = FCAppConfigurationStringValue(v5, @"articleID", 0);
  v9 = FCAppConfigurationStringValue(v5, @"ctaText", 0);
  v10 = FCAppConfigurationURLValue(v5, @"url");
  v11 = [(FCPostPurchaseOnboardingConfiguration *)self initWithPostPurchaseOnboardingStep:v7 landingPageArticleID:v8 callToActionText:v9 deepLinkURL:v10];

  return v11;
}

- (FCPostPurchaseOnboardingConfiguration)initWithPostPurchaseOnboardingStep:(unint64_t)step landingPageArticleID:(id)d callToActionText:(id)text deepLinkURL:(id)l
{
  dCopy = d;
  textCopy = text;
  lCopy = l;
  v22.receiver = self;
  v22.super_class = FCPostPurchaseOnboardingConfiguration;
  v13 = [(FCPostPurchaseOnboardingConfiguration *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_postPurchaseOnboardingStep = step;
    v15 = [dCopy copy];
    landingPageArticleID = v14->_landingPageArticleID;
    v14->_landingPageArticleID = v15;

    v17 = [textCopy copy];
    callToActionText = v14->_callToActionText;
    v14->_callToActionText = v17;

    v19 = [lCopy copy];
    deepLinkURL = v14->_deepLinkURL;
    v14->_deepLinkURL = v19;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
    landingPageArticleID = [(FCPostPurchaseOnboardingConfiguration *)self landingPageArticleID];
    landingPageArticleID2 = [v6 landingPageArticleID];
    if ([v8 nf_object:landingPageArticleID isEqualToObject:landingPageArticleID2])
    {
      v11 = MEMORY[0x1E69E58C0];
      callToActionText = [(FCPostPurchaseOnboardingConfiguration *)self callToActionText];
      callToActionText2 = [v6 callToActionText];
      if ([v11 nf_object:callToActionText isEqualToObject:callToActionText2])
      {
        v14 = MEMORY[0x1E69E58C0];
        deepLinkURL = [(FCPostPurchaseOnboardingConfiguration *)self deepLinkURL];
        deepLinkURL2 = [v6 deepLinkURL];
        v17 = [v14 nf_object:deepLinkURL isEqualToObject:deepLinkURL2];
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
  landingPageArticleID = [(FCPostPurchaseOnboardingConfiguration *)self landingPageArticleID];
  v6 = [landingPageArticleID hash];
  callToActionText = [(FCPostPurchaseOnboardingConfiguration *)self callToActionText];
  v8 = v6 ^ [callToActionText hash];
  deepLinkURL = [(FCPostPurchaseOnboardingConfiguration *)self deepLinkURL];
  v10 = v8 ^ [deepLinkURL hash];

  return v10 ^ v4;
}

@end