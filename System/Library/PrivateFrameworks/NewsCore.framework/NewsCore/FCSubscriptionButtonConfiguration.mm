@interface FCSubscriptionButtonConfiguration
+ (id)defaultAmsSheetTargetSubscriptionButton;
+ (id)defaultArticleSubscriptionButtonWithLandingPageArticleID:(id)d;
+ (id)defaultIssueCoverSubscriptionButtonWithLandingPageArticleID:(id)d;
+ (id)defaultLandingPageSubscriptionButtonWithLandingPageArticleID:(id)d;
+ (id)defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:(id)d;
+ (id)defaultNonTrialText;
+ (id)defaultOsloSheetTargetSubscriptionButton;
+ (id)defaultSubscriptionButtonText;
+ (id)defaultTrialText;
- (BOOL)isEqual:(id)equal;
- (FCSubscriptionButtonConfiguration)init;
- (FCSubscriptionButtonConfiguration)initWithConfigDictionary:(id)dictionary;
- (FCSubscriptionButtonConfiguration)initWithSubscriptionButtonType:(unint64_t)type trialText:(id)text nonTrialText:(id)trialText buttonColor:(id)color buttonTextColor:(id)textColor targetType:(unint64_t)targetType postPurchaseActionType:(unint64_t)actionType postPurchaseURL:(id)self0 landingPageArticleID:(id)self1 dismissLandingPagePostPurchase:(BOOL)self2;
- (unint64_t)hash;
@end

@implementation FCSubscriptionButtonConfiguration

- (FCSubscriptionButtonConfiguration)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCSubscriptionButtonConfiguration init]";
    v10 = 2080;
    v11 = "FCSubscriptionButtonConfiguration.m";
    v12 = 1024;
    v13 = 35;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCSubscriptionButtonConfiguration init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCSubscriptionButtonConfiguration)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22 = FCAppConfigurationStringValue(dictionaryCopy, @"subscriptionButtonType", 0);
  v19 = FCSubscriptionButtonTypeWithValue(v22);
  v18 = FCAppConfigurationStringValue(dictionaryCopy, @"trialText", 0);
  v17 = FCAppConfigurationStringValue(dictionaryCopy, @"nonTrialText", 0);
  v20 = FCAppConfigurationStringValue(dictionaryCopy, @"buttonColor", 0);
  v16 = [FCColor nullableColorWithHexString:v20];
  v4 = FCAppConfigurationStringValue(dictionaryCopy, @"buttonTextColor", 0);
  v5 = [FCColor nullableColorWithHexString:v4];
  v6 = FCAppConfigurationStringValue(dictionaryCopy, @"targetType", 0);
  v7 = FCTargetTypeWithValue(v6);
  v8 = FCAppConfigurationStringValue(dictionaryCopy, @"postPurchaseActionType", 0);
  v9 = FCPostPurchaseActionTypeWithValue(v8);
  v10 = FCAppConfigurationURLValue(dictionaryCopy, @"postPurchaseURL");
  v11 = FCAppConfigurationStringValue(dictionaryCopy, @"landingPageArticleID", 0);
  v12 = FCAppConfigurationBoolValue(dictionaryCopy, @"dismissLandingPagePostPurchase", 0);

  LOBYTE(v15) = v12;
  v13 = [(FCSubscriptionButtonConfiguration *)self initWithSubscriptionButtonType:v19 trialText:v18 nonTrialText:v17 buttonColor:v16 buttonTextColor:v5 targetType:v7 postPurchaseActionType:v9 postPurchaseURL:v10 landingPageArticleID:v11 dismissLandingPagePostPurchase:v15];

  return v13;
}

- (FCSubscriptionButtonConfiguration)initWithSubscriptionButtonType:(unint64_t)type trialText:(id)text nonTrialText:(id)trialText buttonColor:(id)color buttonTextColor:(id)textColor targetType:(unint64_t)targetType postPurchaseActionType:(unint64_t)actionType postPurchaseURL:(id)self0 landingPageArticleID:(id)self1 dismissLandingPagePostPurchase:(BOOL)self2
{
  textCopy = text;
  trialTextCopy = trialText;
  colorCopy = color;
  textColorCopy = textColor;
  lCopy = l;
  dCopy = d;
  v35.receiver = self;
  v35.super_class = FCSubscriptionButtonConfiguration;
  v22 = [(FCSubscriptionButtonConfiguration *)&v35 init];
  v23 = v22;
  if (v22)
  {
    v22->_subscriptionButtonType = type;
    v24 = [textCopy copy];
    trialText = v23->_trialText;
    v23->_trialText = v24;

    v26 = [trialTextCopy copy];
    nonTrialText = v23->_nonTrialText;
    v23->_nonTrialText = v26;

    objc_storeStrong(&v23->_buttonColor, color);
    objc_storeStrong(&v23->_buttonTextColor, textColor);
    v23->_targetType = targetType;
    v23->_postPurchaseActionType = actionType;
    v28 = [lCopy copy];
    postPurchaseURL = v23->_postPurchaseURL;
    v23->_postPurchaseURL = v28;

    v30 = [dCopy copy];
    landingPageArticleID = v23->_landingPageArticleID;
    v23->_landingPageArticleID = v30;

    v23->_dismissLandingPagePostPurchase = purchase;
  }

  return v23;
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

  if (v6 && (v7 = -[FCSubscriptionButtonConfiguration subscriptionButtonType](self, "subscriptionButtonType"), v7 == [v6 subscriptionButtonType]) && (v8 = -[FCSubscriptionButtonConfiguration targetType](self, "targetType"), v8 == objc_msgSend(v6, "targetType")) && (v9 = -[FCSubscriptionButtonConfiguration postPurchaseActionType](self, "postPurchaseActionType"), v9 == objc_msgSend(v6, "postPurchaseActionType")) && (v10 = -[FCSubscriptionButtonConfiguration shouldDismissLandingPagePostPurchase](self, "shouldDismissLandingPagePostPurchase"), v10 == objc_msgSend(v6, "shouldDismissLandingPagePostPurchase")))
  {
    v13 = MEMORY[0x1E69E58C0];
    trialText = [(FCSubscriptionButtonConfiguration *)self trialText];
    trialText2 = [v6 trialText];
    if ([v13 nf_object:trialText isEqualToObject:trialText2])
    {
      v16 = MEMORY[0x1E69E58C0];
      nonTrialText = [(FCSubscriptionButtonConfiguration *)self nonTrialText];
      nonTrialText2 = [v6 nonTrialText];
      if ([v16 nf_object:nonTrialText isEqualToObject:nonTrialText2])
      {
        v19 = MEMORY[0x1E69E58C0];
        postPurchaseURL = [(FCSubscriptionButtonConfiguration *)self postPurchaseURL];
        postPurchaseURL2 = [v6 postPurchaseURL];
        if ([v19 nf_object:postPurchaseURL isEqualToObject:postPurchaseURL2])
        {
          v24 = MEMORY[0x1E69E58C0];
          landingPageArticleID = [(FCSubscriptionButtonConfiguration *)self landingPageArticleID];
          landingPageArticleID2 = [v6 landingPageArticleID];
          v11 = [v24 nf_object:landingPageArticleID isEqualToObject:landingPageArticleID2];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCSubscriptionButtonConfiguration subscriptionButtonType](self, "subscriptionButtonType")}];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCSubscriptionButtonConfiguration targetType](self, "targetType")}];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCSubscriptionButtonConfiguration postPurchaseActionType](self, "postPurchaseActionType")}];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCSubscriptionButtonConfiguration shouldDismissLandingPagePostPurchase](self, "shouldDismissLandingPagePostPurchase")}];
  v10 = v6 ^ v8 ^ [v9 hash];
  trialText = [(FCSubscriptionButtonConfiguration *)self trialText];
  v12 = [trialText hash];
  nonTrialText = [(FCSubscriptionButtonConfiguration *)self nonTrialText];
  v14 = v12 ^ [nonTrialText hash];
  postPurchaseURL = [(FCSubscriptionButtonConfiguration *)self postPurchaseURL];
  v16 = v14 ^ [postPurchaseURL hash];
  landingPageArticleID = [(FCSubscriptionButtonConfiguration *)self landingPageArticleID];
  v18 = v16 ^ [landingPageArticleID hash];

  return v10 ^ v18;
}

+ (id)defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:(id)d
{
  dCopy = d;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__FCSubscriptionButtonConfiguration_defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = dCopy;
  v4 = qword_1EDB274E0;
  v5 = dCopy;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB274E0, block);
  }

  v6 = _MergedGlobals_169;
  v7 = _MergedGlobals_169;

  return v6;
}

void __104__FCSubscriptionButtonConfiguration_defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v9 = +[FCSubscriptionButtonConfiguration defaultSubscriptionButtonText];
  v2 = +[FCSubscriptionButtonConfiguration defaultSubscriptionButtonText];
  v3 = [FCSubscriptionButtonConfiguration alloc];
  v4 = +[FCColor whiteColor];
  v5 = +[FCColor blackColor];
  LOBYTE(v8) = 1;
  v6 = [(FCSubscriptionButtonConfiguration *)v3 initWithSubscriptionButtonType:0 trialText:v9 nonTrialText:v2 buttonColor:v4 buttonTextColor:v5 targetType:1 postPurchaseActionType:0 postPurchaseURL:0 landingPageArticleID:*(a1 + 32) dismissLandingPagePostPurchase:v8];
  v7 = _MergedGlobals_169;
  _MergedGlobals_169 = v6;
}

+ (id)defaultOsloSheetTargetSubscriptionButton
{
  if (qword_1EDB274F0 != -1)
  {
    dispatch_once(&qword_1EDB274F0, &__block_literal_global_90);
  }

  v3 = qword_1EDB274E8;

  return v3;
}

void __77__FCSubscriptionButtonConfiguration_defaultOsloSheetTargetSubscriptionButton__block_invoke()
{
  v7 = +[FCSubscriptionButtonConfiguration defaultSubscriptionButtonText];
  v0 = +[FCSubscriptionButtonConfiguration defaultSubscriptionButtonText];
  v1 = [FCSubscriptionButtonConfiguration alloc];
  v2 = +[FCColor whiteColor];
  v3 = +[FCColor blackColor];
  LOBYTE(v6) = 1;
  v4 = [(FCSubscriptionButtonConfiguration *)v1 initWithSubscriptionButtonType:0 trialText:v7 nonTrialText:v0 buttonColor:v2 buttonTextColor:v3 targetType:2 postPurchaseActionType:0 postPurchaseURL:0 landingPageArticleID:0 dismissLandingPagePostPurchase:v6];
  v5 = qword_1EDB274E8;
  qword_1EDB274E8 = v4;
}

+ (id)defaultAmsSheetTargetSubscriptionButton
{
  if (qword_1EDB27500 != -1)
  {
    dispatch_once(&qword_1EDB27500, &__block_literal_global_66_3);
  }

  v3 = qword_1EDB274F8;

  return v3;
}

void __76__FCSubscriptionButtonConfiguration_defaultAmsSheetTargetSubscriptionButton__block_invoke()
{
  v7 = +[FCSubscriptionButtonConfiguration defaultSubscriptionButtonText];
  v0 = +[FCSubscriptionButtonConfiguration defaultSubscriptionButtonText];
  v1 = [FCSubscriptionButtonConfiguration alloc];
  v2 = +[FCColor whiteColor];
  v3 = +[FCColor blackColor];
  LOBYTE(v6) = 1;
  v4 = [(FCSubscriptionButtonConfiguration *)v1 initWithSubscriptionButtonType:0 trialText:v7 nonTrialText:v0 buttonColor:v2 buttonTextColor:v3 targetType:3 postPurchaseActionType:0 postPurchaseURL:0 landingPageArticleID:0 dismissLandingPagePostPurchase:v6];
  v5 = qword_1EDB274F8;
  qword_1EDB274F8 = v4;
}

+ (id)defaultArticleSubscriptionButtonWithLandingPageArticleID:(id)d
{
  dCopy = d;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__FCSubscriptionButtonConfiguration_defaultArticleSubscriptionButtonWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = dCopy;
  v4 = qword_1EDB27510;
  v5 = dCopy;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB27510, block);
  }

  v6 = qword_1EDB27508;
  v7 = qword_1EDB27508;

  return v6;
}

void __94__FCSubscriptionButtonConfiguration_defaultArticleSubscriptionButtonWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [FCSubscriptionButtonConfiguration alloc];
  v9 = +[FCSubscriptionButtonConfiguration defaultTrialText];
  v3 = +[FCSubscriptionButtonConfiguration defaultNonTrialText];
  v4 = +[FCColor whiteColor];
  v5 = +[FCColor blackColor];
  LOBYTE(v8) = 1;
  v6 = [(FCSubscriptionButtonConfiguration *)v2 initWithSubscriptionButtonType:1 trialText:v9 nonTrialText:v3 buttonColor:v4 buttonTextColor:v5 targetType:1 postPurchaseActionType:0 postPurchaseURL:0 landingPageArticleID:v1 dismissLandingPagePostPurchase:v8];
  v7 = qword_1EDB27508;
  qword_1EDB27508 = v6;
}

+ (id)defaultLandingPageSubscriptionButtonWithLandingPageArticleID:(id)d
{
  if (qword_1EDB27520 != -1)
  {
    dispatch_once(&qword_1EDB27520, &__block_literal_global_68_2);
  }

  v4 = qword_1EDB27518;

  return v4;
}

void __98__FCSubscriptionButtonConfiguration_defaultLandingPageSubscriptionButtonWithLandingPageArticleID___block_invoke()
{
  v0 = [FCSubscriptionButtonConfiguration alloc];
  v7 = +[FCSubscriptionButtonConfiguration defaultTrialText];
  v1 = +[FCSubscriptionButtonConfiguration defaultNonTrialText];
  v2 = +[FCColor whiteColor];
  v3 = +[FCColor blackColor];
  LOBYTE(v6) = 1;
  v4 = [(FCSubscriptionButtonConfiguration *)v0 initWithSubscriptionButtonType:2 trialText:v7 nonTrialText:v1 buttonColor:v2 buttonTextColor:v3 targetType:2 postPurchaseActionType:0 postPurchaseURL:0 landingPageArticleID:0 dismissLandingPagePostPurchase:v6];
  v5 = qword_1EDB27518;
  qword_1EDB27518 = v4;
}

+ (id)defaultIssueCoverSubscriptionButtonWithLandingPageArticleID:(id)d
{
  dCopy = d;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__FCSubscriptionButtonConfiguration_defaultIssueCoverSubscriptionButtonWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = dCopy;
  v4 = qword_1EDB27530;
  v5 = dCopy;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB27530, block);
  }

  v6 = qword_1EDB27528;
  v7 = qword_1EDB27528;

  return v6;
}

void __97__FCSubscriptionButtonConfiguration_defaultIssueCoverSubscriptionButtonWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [FCSubscriptionButtonConfiguration alloc];
  v9 = +[FCSubscriptionButtonConfiguration defaultTrialText];
  v3 = +[FCSubscriptionButtonConfiguration defaultNonTrialText];
  v4 = +[FCColor whiteColor];
  v5 = +[FCColor blackColor];
  LOBYTE(v8) = 1;
  v6 = [(FCSubscriptionButtonConfiguration *)v2 initWithSubscriptionButtonType:3 trialText:v9 nonTrialText:v3 buttonColor:v4 buttonTextColor:v5 targetType:1 postPurchaseActionType:0 postPurchaseURL:0 landingPageArticleID:v1 dismissLandingPagePostPurchase:v8];
  v7 = qword_1EDB27528;
  qword_1EDB27528 = v6;
}

+ (id)defaultSubscriptionButtonText
{
  if (qword_1EDB27540 != -1)
  {
    dispatch_once(&qword_1EDB27540, &__block_literal_global_70_1);
  }

  v3 = qword_1EDB27538;

  return v3;
}

void __66__FCSubscriptionButtonConfiguration_defaultSubscriptionButtonText__block_invoke()
{
  v2 = FCBundle();
  v0 = [v2 localizedStringForKey:@"GET STARTED" value:&stru_1F2DC7DC0 table:0];
  v1 = qword_1EDB27538;
  qword_1EDB27538 = v0;
}

+ (id)defaultTrialText
{
  if (qword_1EDB27550 != -1)
  {
    dispatch_once(&qword_1EDB27550, &__block_literal_global_78_1);
  }

  v3 = qword_1EDB27548;

  return v3;
}

void __53__FCSubscriptionButtonConfiguration_defaultTrialText__block_invoke()
{
  v2 = FCBundle();
  v0 = [v2 localizedStringForKey:@"TRY IT FREE" value:&stru_1F2DC7DC0 table:0];
  v1 = qword_1EDB27548;
  qword_1EDB27548 = v0;
}

+ (id)defaultNonTrialText
{
  if (qword_1EDB27560 != -1)
  {
    dispatch_once(&qword_1EDB27560, &__block_literal_global_83_1);
  }

  v3 = qword_1EDB27558;

  return v3;
}

void __56__FCSubscriptionButtonConfiguration_defaultNonTrialText__block_invoke()
{
  v2 = FCBundle();
  v0 = [v2 localizedStringForKey:@"START READING" value:&stru_1F2DC7DC0 table:0];
  v1 = qword_1EDB27558;
  qword_1EDB27558 = v0;
}

@end