@interface FCPaywallConfiguration
+ (id)defaultArticleHardPaywallWithLandingPageArticleID:(id)a3;
+ (id)defaultArticleSharedHardPaywallWithLandingPageArticleID:(id)a3;
+ (id)defaultArticleSharedSoftPaywallWithLandingPageArticleID:(id)a3;
+ (id)defaultArticleSoftPaywallWithLandingPageArticleID:(id)a3;
+ (id)defaultAudioArticleHardPaywallWithLandingPageArticleID:(id)a3;
+ (id)defaultAudioArticleSharedHardPaywallWithLandingPageArticleID:(id)a3;
+ (id)defaultAudioArticleSharedSoftPaywallWithLandingPageArticleID:(id)a3;
+ (id)defaultAudioArticleSoftPaywallWithLandingPageArticleID:(id)a3;
+ (id)defaultAudioFeedSoftPaywallLargePaywallWithLandingPageArticleID:(id)a3;
+ (id)defaultAudioFeedSoftPaywallSmallPaywallWithLandingPageArticleID:(id)a3;
+ (id)defaultAudioPaywallDescription;
+ (id)defaultAudioPaywallTitle;
+ (id)defaultChannelSoftPaywallWithLandingPageArticleID:(id)a3;
+ (id)defaultDeferredPaywallTopOffsetConfiguration;
+ (id)defaultMagazineFeedSoftPaywallLargePaywallWithLandingPageArticleID:(id)a3;
+ (id)defaultMagazineFeedSoftPaywallMediumPaywallWithLandingPageArticleID:(id)a3;
+ (id)defaultMagazineFeedSoftPaywallSmallPaywallWithLandingPageArticleID:(id)a3;
+ (id)defaultMagazineFeedVideoSoftPaywallLargePaywallWithLandingPageArticleID:(id)a3;
+ (id)defaultMagazineFeedVideoSoftPaywallSmallPaywallWithLandingPageArticleID:(id)a3;
+ (id)defaultPDFHardPaywallWithLandingPageArticleID:(id)a3;
+ (id)defaultPaywallDescription;
+ (id)defaultPaywallTitle;
+ (id)defaultPaywallTopOffsetConfiguration;
+ (id)defaultSmallPaywallTitle;
- (BOOL)isEqual:(id)a3;
- (FCPaywallConfiguration)init;
- (FCPaywallConfiguration)initWithConfigDictionary:(id)a3;
- (FCPaywallConfiguration)initWithPaywallType:(unint64_t)a3 title:(id)a4 descriptionTrial:(id)a5 descriptionNonTrial:(id)a6 learnMoreTitle:(id)a7 learnMoreURL:(id)a8 offersLinkTitle:(id)a9 offersLinkURL:(id)a10 offersLinkTargetType:(unint64_t)a11 externalOverridesEnabled:(BOOL)a12 subscriptionButtonConfig:(id)a13 visualSpecConfig:(id)a14 paywallTopOffsetConfig:(id)a15;
- (unint64_t)hash;
@end

@implementation FCPaywallConfiguration

- (FCPaywallConfiguration)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPaywallConfiguration init]";
    v10 = 2080;
    v11 = "FCPaywallConfiguration.m";
    v12 = 1024;
    v13 = 40;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPaywallConfiguration init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPaywallConfiguration)initWithConfigDictionary:(id)a3
{
  v3 = a3;
  v24 = FCAppConfigurationDictionaryValueWithDefaultValue(v3, @"subscriptionButton", 0);
  v19 = [[FCSubscriptionButtonConfiguration alloc] initWithConfigDictionary:v24];
  v23 = FCAppConfigurationDictionaryValueWithDefaultValue(v3, @"visualSpecification", 0);
  v14 = [[FCPaywallVisualSpecConfiguration alloc] initWithConfigDictionary:v23];
  v4 = [[FCPaywallTopOffsetConfiguration alloc] initWithConfigDictionary:v3];
  v20 = FCAppConfigurationStringValue(v3, @"paywallType", 0);
  v18 = FCPaywallTypeForValue(v20);
  v17 = FCAppConfigurationStringValue(v3, @"title", 0);
  v16 = FCAppConfigurationStringValue(v3, @"descriptionTrial", 0);
  v15 = FCAppConfigurationStringValue(v3, @"descriptionNonTrial", 0);
  v5 = FCAppConfigurationStringValue(v3, @"learnMoreTitle", 0);
  v6 = FCAppConfigurationURLValue(v3, @"learnMoreURL");
  v7 = FCAppConfigurationStringValue(v3, @"offersLinkTitle", 0);
  v8 = FCAppConfigurationURLValue(v3, @"offersLinkURL");
  v9 = FCAppConfigurationStringValue(v3, @"offersLinkTargetType", 0);
  v10 = FCPaywallOffersLinkTargetTypeForValue(v9);
  v11 = FCAppConfigurationBoolValue(v3, @"externalOverridesEnabled", 0);

  LOBYTE(v13) = v11;
  v22 = [(FCPaywallConfiguration *)self initWithPaywallType:v18 title:v17 descriptionTrial:v16 descriptionNonTrial:v15 learnMoreTitle:v5 learnMoreURL:v6 offersLinkTitle:v7 offersLinkURL:v8 offersLinkTargetType:v10 externalOverridesEnabled:v13 subscriptionButtonConfig:v19 visualSpecConfig:v14 paywallTopOffsetConfig:v4];

  return v22;
}

- (FCPaywallConfiguration)initWithPaywallType:(unint64_t)a3 title:(id)a4 descriptionTrial:(id)a5 descriptionNonTrial:(id)a6 learnMoreTitle:(id)a7 learnMoreURL:(id)a8 offersLinkTitle:(id)a9 offersLinkURL:(id)a10 offersLinkTargetType:(unint64_t)a11 externalOverridesEnabled:(BOOL)a12 subscriptionButtonConfig:(id)a13 visualSpecConfig:(id)a14 paywallTopOffsetConfig:(id)a15
{
  v19 = a4;
  v20 = a5;
  v48 = a6;
  v47 = a7;
  v21 = a8;
  v22 = v20;
  v23 = a9;
  v24 = a10;
  v46 = a13;
  v25 = a14;
  v26 = a15;
  v49.receiver = self;
  v49.super_class = FCPaywallConfiguration;
  v27 = [(FCPaywallConfiguration *)&v49 init];
  v28 = v27;
  if (v27)
  {
    v27->_paywallType = a3;
    v29 = [v19 copy];
    title = v28->_title;
    v28->_title = v29;

    v31 = [v22 copy];
    descriptionTrial = v28->_descriptionTrial;
    v28->_descriptionTrial = v31;

    v33 = [v48 copy];
    descriptionNonTrial = v28->_descriptionNonTrial;
    v28->_descriptionNonTrial = v33;

    v35 = [v47 copy];
    learnMoreTitle = v28->_learnMoreTitle;
    v28->_learnMoreTitle = v35;

    v37 = [v21 copy];
    learnMoreURL = v28->_learnMoreURL;
    v28->_learnMoreURL = v37;

    v39 = [v23 copy];
    offersLinkTitle = v28->_offersLinkTitle;
    v28->_offersLinkTitle = v39;

    v41 = [v24 copy];
    offersLinkURL = v28->_offersLinkURL;
    v28->_offersLinkURL = v41;

    v28->_offersLinkTargetType = a11;
    v28->_externalOverridesEnabled = a12;
    objc_storeStrong(&v28->_subscriptionButtonConfig, a13);
    objc_storeStrong(&v28->_visualSpecConfig, a14);
    objc_storeStrong(&v28->_paywallTopOffsetConfig, a15);
  }

  return v28;
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

  if (v6)
  {
    v7 = MEMORY[0x1E69E58C0];
    v8 = [(FCPaywallConfiguration *)self title];
    v9 = [v6 title];
    if ([v7 nf_object:v8 isEqualToObject:v9])
    {
      v10 = MEMORY[0x1E69E58C0];
      v11 = [(FCPaywallConfiguration *)self descriptionTrial];
      v12 = [v6 descriptionTrial];
      if ([v10 nf_object:v11 isEqualToObject:v12])
      {
        v13 = MEMORY[0x1E69E58C0];
        v14 = [(FCPaywallConfiguration *)self descriptionNonTrial];
        v15 = [v6 descriptionNonTrial];
        if ([v13 nf_object:v14 isEqualToObject:v15])
        {
          v46 = v14;
          v16 = MEMORY[0x1E69E58C0];
          v17 = [(FCPaywallConfiguration *)self learnMoreTitle];
          [v6 learnMoreTitle];
          v45 = v47 = v17;
          if ([v16 nf_object:v17 isEqualToObject:?])
          {
            v18 = MEMORY[0x1E69E58C0];
            v19 = [(FCPaywallConfiguration *)self learnMoreURL];
            v43 = [v6 learnMoreURL];
            v44 = v19;
            if ([v18 nf_object:v19 isEqualToObject:?])
            {
              v20 = MEMORY[0x1E69E58C0];
              v21 = [(FCPaywallConfiguration *)self offersLinkTitle];
              v41 = [v6 offersLinkTitle];
              v42 = v21;
              if ([v20 nf_object:v21 isEqualToObject:?])
              {
                v22 = MEMORY[0x1E69E58C0];
                v23 = [(FCPaywallConfiguration *)self offersLinkURL];
                v39 = [v6 offersLinkURL];
                v40 = v23;
                v24 = [v22 nf_object:v23 isEqualToObject:?];
                v14 = v46;
                if (v24 && (v25 = -[FCPaywallConfiguration offersLinkTargetType](self, "offersLinkTargetType"), v25 == [v6 offersLinkTargetType]) && (v26 = -[FCPaywallConfiguration paywallType](self, "paywallType"), v26 == objc_msgSend(v6, "paywallType")) && (v27 = -[FCPaywallConfiguration externalOverridesEnabled](self, "externalOverridesEnabled"), v27 == objc_msgSend(v6, "externalOverridesEnabled")))
                {
                  v37 = MEMORY[0x1E69E58C0];
                  v30 = [(FCPaywallConfiguration *)self subscriptionButtonConfig];
                  v31 = [v6 subscriptionButtonConfig];
                  v32 = v37;
                  v36 = v31;
                  v38 = v30;
                  if ([v32 nf_object:v30 isEqualToObject:?])
                  {
                    v35 = MEMORY[0x1E69E58C0];
                    v33 = [(FCPaywallConfiguration *)self visualSpecConfig];
                    v34 = [v6 visualSpecConfig];
                    v28 = [v35 nf_object:v33 isEqualToObject:v34];
                  }

                  else
                  {
                    v28 = 0;
                  }
                }

                else
                {
                  v28 = 0;
                }
              }

              else
              {
                v28 = 0;
                v14 = v46;
              }
            }

            else
            {
              v28 = 0;
              v14 = v46;
            }
          }

          else
          {
            v28 = 0;
            v14 = v46;
          }
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (unint64_t)hash
{
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCPaywallConfiguration paywallType](self, "paywallType")}];
  v3 = [v25 hash];
  v24 = [(FCPaywallConfiguration *)self title];
  v4 = [v24 hash];
  v23 = [(FCPaywallConfiguration *)self descriptionTrial];
  v5 = v4 ^ [v23 hash];
  v6 = [(FCPaywallConfiguration *)self descriptionNonTrial];
  v7 = v5 ^ [v6 hash];
  v8 = [(FCPaywallConfiguration *)self learnMoreTitle];
  v9 = v7 ^ [v8 hash];
  v10 = [(FCPaywallConfiguration *)self learnMoreURL];
  v11 = v9 ^ [v10 hash];
  v12 = [(FCPaywallConfiguration *)self offersLinkTitle];
  v13 = v11 ^ [v12 hash] ^ v3;
  v14 = [(FCPaywallConfiguration *)self offersLinkURL];
  v15 = [v14 hash];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCPaywallConfiguration offersLinkTargetType](self, "offersLinkTargetType")}];
  v17 = v13 ^ v15 ^ [v16 hash];
  v18 = [(FCPaywallConfiguration *)self subscriptionButtonConfig];
  v19 = [v18 hash];
  v20 = [(FCPaywallConfiguration *)self visualSpecConfig];
  v21 = v19 ^ [v20 hash];

  return v17 ^ v21;
}

+ (id)defaultArticleHardPaywallWithLandingPageArticleID:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__FCPaywallConfiguration_defaultArticleHardPaywallWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = v3;
  v4 = qword_1EDB27220;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB27220, block);
  }

  v6 = _MergedGlobals_157;
  v7 = _MergedGlobals_157;

  return v6;
}

void __76__FCPaywallConfiguration_defaultArticleHardPaywallWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v10 = +[FCPaywallConfiguration defaultPaywallTitle];
  v2 = +[FCPaywallConfiguration defaultPaywallDescription];
  v3 = +[FCPaywallConfiguration defaultPaywallTopOffsetConfiguration];
  v4 = [FCSubscriptionButtonConfiguration defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:*(a1 + 32)];
  v5 = [FCPaywallConfiguration alloc];
  v6 = +[FCPaywallVisualSpecConfiguration defaultPaywallVisualSpecConfiguration];
  LOBYTE(v9) = 0;
  v7 = [(FCPaywallConfiguration *)v5 initWithPaywallType:1 title:v10 descriptionTrial:v2 descriptionNonTrial:v2 learnMoreTitle:0 learnMoreURL:0 offersLinkTitle:0 offersLinkURL:0 offersLinkTargetType:0 externalOverridesEnabled:v9 subscriptionButtonConfig:v4 visualSpecConfig:v6 paywallTopOffsetConfig:v3];
  v8 = _MergedGlobals_157;
  _MergedGlobals_157 = v7;
}

+ (id)defaultArticleSharedHardPaywallWithLandingPageArticleID:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__FCPaywallConfiguration_defaultArticleSharedHardPaywallWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = v3;
  v4 = qword_1EDB27230;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB27230, block);
  }

  v6 = qword_1EDB27228;
  v7 = qword_1EDB27228;

  return v6;
}

void __82__FCPaywallConfiguration_defaultArticleSharedHardPaywallWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v10 = +[FCPaywallConfiguration defaultPaywallTitle];
  v2 = +[FCPaywallConfiguration defaultPaywallDescription];
  v3 = +[FCPaywallConfiguration defaultPaywallTopOffsetConfiguration];
  v4 = [FCSubscriptionButtonConfiguration defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:*(a1 + 32)];
  v5 = [FCPaywallConfiguration alloc];
  v6 = +[FCPaywallVisualSpecConfiguration defaultPaywallVisualSpecConfiguration];
  LOBYTE(v9) = 0;
  v7 = [(FCPaywallConfiguration *)v5 initWithPaywallType:2 title:v10 descriptionTrial:v2 descriptionNonTrial:v2 learnMoreTitle:0 learnMoreURL:0 offersLinkTitle:0 offersLinkURL:0 offersLinkTargetType:0 externalOverridesEnabled:v9 subscriptionButtonConfig:v4 visualSpecConfig:v6 paywallTopOffsetConfig:v3];
  v8 = qword_1EDB27228;
  qword_1EDB27228 = v7;
}

+ (id)defaultArticleSoftPaywallWithLandingPageArticleID:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__FCPaywallConfiguration_defaultArticleSoftPaywallWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = v3;
  v4 = qword_1EDB27240;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB27240, block);
  }

  v6 = qword_1EDB27238;
  v7 = qword_1EDB27238;

  return v6;
}

void __76__FCPaywallConfiguration_defaultArticleSoftPaywallWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v9 = +[FCPaywallConfiguration defaultPaywallTitle];
  v2 = +[FCPaywallConfiguration defaultPaywallDescription];
  v3 = [FCSubscriptionButtonConfiguration defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:*(a1 + 32)];
  v4 = [FCPaywallConfiguration alloc];
  v5 = +[FCPaywallVisualSpecConfiguration defaultPaywallVisualSpecConfiguration];
  LOBYTE(v8) = 0;
  v6 = [(FCPaywallConfiguration *)v4 initWithPaywallType:3 title:v9 descriptionTrial:v2 descriptionNonTrial:v2 learnMoreTitle:0 learnMoreURL:0 offersLinkTitle:0 offersLinkURL:0 offersLinkTargetType:0 externalOverridesEnabled:v8 subscriptionButtonConfig:v3 visualSpecConfig:v5 paywallTopOffsetConfig:0];
  v7 = qword_1EDB27238;
  qword_1EDB27238 = v6;
}

+ (id)defaultArticleSharedSoftPaywallWithLandingPageArticleID:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__FCPaywallConfiguration_defaultArticleSharedSoftPaywallWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = v3;
  v4 = qword_1EDB27250;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB27250, block);
  }

  v6 = qword_1EDB27248;
  v7 = qword_1EDB27248;

  return v6;
}

void __82__FCPaywallConfiguration_defaultArticleSharedSoftPaywallWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v9 = +[FCPaywallConfiguration defaultPaywallTitle];
  v2 = +[FCPaywallConfiguration defaultPaywallDescription];
  v3 = [FCSubscriptionButtonConfiguration defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:*(a1 + 32)];
  v4 = [FCPaywallConfiguration alloc];
  v5 = +[FCPaywallVisualSpecConfiguration defaultPaywallVisualSpecConfiguration];
  LOBYTE(v8) = 0;
  v6 = [(FCPaywallConfiguration *)v4 initWithPaywallType:4 title:v9 descriptionTrial:v2 descriptionNonTrial:v2 learnMoreTitle:0 learnMoreURL:0 offersLinkTitle:0 offersLinkURL:0 offersLinkTargetType:0 externalOverridesEnabled:v8 subscriptionButtonConfig:v3 visualSpecConfig:v5 paywallTopOffsetConfig:0];
  v7 = qword_1EDB27248;
  qword_1EDB27248 = v6;
}

+ (id)defaultChannelSoftPaywallWithLandingPageArticleID:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__FCPaywallConfiguration_defaultChannelSoftPaywallWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = v3;
  v4 = qword_1EDB27260;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB27260, block);
  }

  v6 = qword_1EDB27258;
  v7 = qword_1EDB27258;

  return v6;
}

void __76__FCPaywallConfiguration_defaultChannelSoftPaywallWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v2 = FCBundle();
  v10 = [v2 localizedStringForKey:@"Read ${channelName} and your favorite magazines and newspapers." value:&stru_1F2DC7DC0 table:0];

  v3 = +[FCPaywallConfiguration defaultPaywallDescription];
  v4 = [FCSubscriptionButtonConfiguration defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:*(a1 + 32)];
  v5 = [FCPaywallConfiguration alloc];
  v6 = +[FCPaywallVisualSpecConfiguration defaultPaywallVisualSpecConfiguration];
  LOBYTE(v9) = 0;
  v7 = [(FCPaywallConfiguration *)v5 initWithPaywallType:5 title:v10 descriptionTrial:v3 descriptionNonTrial:v3 learnMoreTitle:0 learnMoreURL:0 offersLinkTitle:0 offersLinkURL:0 offersLinkTargetType:0 externalOverridesEnabled:v9 subscriptionButtonConfig:v4 visualSpecConfig:v6 paywallTopOffsetConfig:0];
  v8 = qword_1EDB27258;
  qword_1EDB27258 = v7;
}

+ (id)defaultMagazineFeedSoftPaywallSmallPaywallWithLandingPageArticleID:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__FCPaywallConfiguration_defaultMagazineFeedSoftPaywallSmallPaywallWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = v3;
  v4 = qword_1EDB27270;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB27270, block);
  }

  v6 = qword_1EDB27268;
  v7 = qword_1EDB27268;

  return v6;
}

void __93__FCPaywallConfiguration_defaultMagazineFeedSoftPaywallSmallPaywallWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v9 = +[FCPaywallConfiguration defaultSmallPaywallTitle];
  v2 = +[FCPaywallConfiguration defaultPaywallDescription];
  v3 = [FCSubscriptionButtonConfiguration defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:*(a1 + 32)];
  v4 = [FCPaywallConfiguration alloc];
  v5 = +[FCPaywallVisualSpecConfiguration defaultMagazineFeedPaywallVisualSpecConfigurationSmall];
  LOBYTE(v8) = 0;
  v6 = [(FCPaywallConfiguration *)v4 initWithPaywallType:6 title:v9 descriptionTrial:v2 descriptionNonTrial:v2 learnMoreTitle:0 learnMoreURL:0 offersLinkTitle:0 offersLinkURL:0 offersLinkTargetType:0 externalOverridesEnabled:v8 subscriptionButtonConfig:v3 visualSpecConfig:v5 paywallTopOffsetConfig:0];
  v7 = qword_1EDB27268;
  qword_1EDB27268 = v6;
}

+ (id)defaultMagazineFeedSoftPaywallMediumPaywallWithLandingPageArticleID:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__FCPaywallConfiguration_defaultMagazineFeedSoftPaywallMediumPaywallWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = v3;
  v4 = qword_1EDB27280;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB27280, block);
  }

  v6 = qword_1EDB27278;
  v7 = qword_1EDB27278;

  return v6;
}

void __94__FCPaywallConfiguration_defaultMagazineFeedSoftPaywallMediumPaywallWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v9 = +[FCPaywallConfiguration defaultPaywallTitle];
  v2 = +[FCPaywallConfiguration defaultPaywallDescription];
  v3 = [FCSubscriptionButtonConfiguration defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:*(a1 + 32)];
  v4 = [FCPaywallConfiguration alloc];
  v5 = +[FCPaywallVisualSpecConfiguration defaultMagazineFeedPaywallVisualSpecConfigurationMedium];
  LOBYTE(v8) = 0;
  v6 = [(FCPaywallConfiguration *)v4 initWithPaywallType:7 title:v9 descriptionTrial:v2 descriptionNonTrial:v2 learnMoreTitle:0 learnMoreURL:0 offersLinkTitle:0 offersLinkURL:0 offersLinkTargetType:0 externalOverridesEnabled:v8 subscriptionButtonConfig:v3 visualSpecConfig:v5 paywallTopOffsetConfig:0];
  v7 = qword_1EDB27278;
  qword_1EDB27278 = v6;
}

+ (id)defaultMagazineFeedSoftPaywallLargePaywallWithLandingPageArticleID:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__FCPaywallConfiguration_defaultMagazineFeedSoftPaywallLargePaywallWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = v3;
  v4 = qword_1EDB27290;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB27290, block);
  }

  v6 = qword_1EDB27288;
  v7 = qword_1EDB27288;

  return v6;
}

void __93__FCPaywallConfiguration_defaultMagazineFeedSoftPaywallLargePaywallWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v9 = +[FCPaywallConfiguration defaultPaywallTitle];
  v2 = +[FCPaywallConfiguration defaultPaywallDescription];
  v3 = [FCSubscriptionButtonConfiguration defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:*(a1 + 32)];
  v4 = [FCPaywallConfiguration alloc];
  v5 = +[FCPaywallVisualSpecConfiguration defaultMagazineFeedPaywallVisualSpecConfigurationLarge];
  LOBYTE(v8) = 0;
  v6 = [(FCPaywallConfiguration *)v4 initWithPaywallType:8 title:v9 descriptionTrial:v2 descriptionNonTrial:v2 learnMoreTitle:0 learnMoreURL:0 offersLinkTitle:0 offersLinkURL:0 offersLinkTargetType:0 externalOverridesEnabled:v8 subscriptionButtonConfig:v3 visualSpecConfig:v5 paywallTopOffsetConfig:0];
  v7 = qword_1EDB27288;
  qword_1EDB27288 = v6;
}

+ (id)defaultMagazineFeedVideoSoftPaywallSmallPaywallWithLandingPageArticleID:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__FCPaywallConfiguration_defaultMagazineFeedVideoSoftPaywallSmallPaywallWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = v3;
  v4 = qword_1EDB272A0;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB272A0, block);
  }

  v6 = qword_1EDB27298;
  v7 = qword_1EDB27298;

  return v6;
}

void __98__FCPaywallConfiguration_defaultMagazineFeedVideoSoftPaywallSmallPaywallWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v9 = +[FCPaywallConfiguration defaultSmallPaywallTitle];
  v2 = +[FCPaywallConfiguration defaultPaywallDescription];
  v3 = [FCSubscriptionButtonConfiguration defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:*(a1 + 32)];
  v4 = [FCPaywallConfiguration alloc];
  v5 = +[FCPaywallVisualSpecConfiguration defaultMagazineFeedPaywallVisualSpecConfigurationSmall];
  LOBYTE(v8) = 0;
  v6 = [(FCPaywallConfiguration *)v4 initWithPaywallType:9 title:v9 descriptionTrial:v2 descriptionNonTrial:v2 learnMoreTitle:0 learnMoreURL:0 offersLinkTitle:0 offersLinkURL:0 offersLinkTargetType:0 externalOverridesEnabled:v8 subscriptionButtonConfig:v3 visualSpecConfig:v5 paywallTopOffsetConfig:0];
  v7 = qword_1EDB27298;
  qword_1EDB27298 = v6;
}

+ (id)defaultMagazineFeedVideoSoftPaywallLargePaywallWithLandingPageArticleID:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__FCPaywallConfiguration_defaultMagazineFeedVideoSoftPaywallLargePaywallWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = v3;
  v4 = qword_1EDB272B0;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB272B0, block);
  }

  v6 = qword_1EDB272A8;
  v7 = qword_1EDB272A8;

  return v6;
}

void __98__FCPaywallConfiguration_defaultMagazineFeedVideoSoftPaywallLargePaywallWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v9 = +[FCPaywallConfiguration defaultPaywallTitle];
  v2 = +[FCPaywallConfiguration defaultPaywallDescription];
  v3 = [FCSubscriptionButtonConfiguration defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:*(a1 + 32)];
  v4 = [FCPaywallConfiguration alloc];
  v5 = +[FCPaywallVisualSpecConfiguration defaultMagazineFeedPaywallVisualSpecConfigurationLarge];
  LOBYTE(v8) = 0;
  v6 = [(FCPaywallConfiguration *)v4 initWithPaywallType:10 title:v9 descriptionTrial:v2 descriptionNonTrial:v2 learnMoreTitle:0 learnMoreURL:0 offersLinkTitle:0 offersLinkURL:0 offersLinkTargetType:0 externalOverridesEnabled:v8 subscriptionButtonConfig:v3 visualSpecConfig:v5 paywallTopOffsetConfig:0];
  v7 = qword_1EDB272A8;
  qword_1EDB272A8 = v6;
}

+ (id)defaultPDFHardPaywallWithLandingPageArticleID:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__FCPaywallConfiguration_defaultPDFHardPaywallWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = v3;
  v4 = qword_1EDB272C0;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB272C0, block);
  }

  v6 = qword_1EDB272B8;
  v7 = qword_1EDB272B8;

  return v6;
}

void __72__FCPaywallConfiguration_defaultPDFHardPaywallWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v10 = +[FCPaywallConfiguration defaultPaywallTitle];
  v2 = +[FCPaywallConfiguration defaultPaywallDescription];
  v3 = +[FCPaywallConfiguration defaultPaywallTopOffsetConfiguration];
  v4 = [FCSubscriptionButtonConfiguration defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:*(a1 + 32)];
  v5 = [FCPaywallConfiguration alloc];
  v6 = +[FCPaywallVisualSpecConfiguration defaultPaywallVisualSpecConfiguration];
  LOBYTE(v9) = 0;
  v7 = [(FCPaywallConfiguration *)v5 initWithPaywallType:11 title:v10 descriptionTrial:v2 descriptionNonTrial:v2 learnMoreTitle:0 learnMoreURL:0 offersLinkTitle:0 offersLinkURL:0 offersLinkTargetType:0 externalOverridesEnabled:v9 subscriptionButtonConfig:v4 visualSpecConfig:v6 paywallTopOffsetConfig:v3];
  v8 = qword_1EDB272B8;
  qword_1EDB272B8 = v7;
}

+ (id)defaultAudioArticleHardPaywallWithLandingPageArticleID:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__FCPaywallConfiguration_defaultAudioArticleHardPaywallWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = v3;
  v4 = qword_1EDB272D0;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB272D0, block);
  }

  v6 = qword_1EDB272C8;
  v7 = qword_1EDB272C8;

  return v6;
}

void __81__FCPaywallConfiguration_defaultAudioArticleHardPaywallWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v10 = +[FCPaywallConfiguration defaultAudioPaywallTitle];
  v2 = +[FCPaywallConfiguration defaultAudioPaywallDescription];
  v3 = +[FCPaywallConfiguration defaultPaywallTopOffsetConfiguration];
  v4 = [FCSubscriptionButtonConfiguration defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:*(a1 + 32)];
  v5 = [FCPaywallConfiguration alloc];
  v6 = +[FCPaywallVisualSpecConfiguration defaultPaywallVisualSpecConfiguration];
  LOBYTE(v9) = 0;
  v7 = [(FCPaywallConfiguration *)v5 initWithPaywallType:1 title:v10 descriptionTrial:v2 descriptionNonTrial:v2 learnMoreTitle:0 learnMoreURL:0 offersLinkTitle:0 offersLinkURL:0 offersLinkTargetType:0 externalOverridesEnabled:v9 subscriptionButtonConfig:v4 visualSpecConfig:v6 paywallTopOffsetConfig:v3];
  v8 = qword_1EDB272C8;
  qword_1EDB272C8 = v7;
}

+ (id)defaultAudioArticleSharedHardPaywallWithLandingPageArticleID:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__FCPaywallConfiguration_defaultAudioArticleSharedHardPaywallWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = v3;
  v4 = qword_1EDB272E0;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB272E0, block);
  }

  v6 = qword_1EDB272D8;
  v7 = qword_1EDB272D8;

  return v6;
}

void __87__FCPaywallConfiguration_defaultAudioArticleSharedHardPaywallWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v10 = +[FCPaywallConfiguration defaultAudioPaywallTitle];
  v2 = +[FCPaywallConfiguration defaultAudioPaywallDescription];
  v3 = +[FCPaywallConfiguration defaultPaywallTopOffsetConfiguration];
  v4 = [FCSubscriptionButtonConfiguration defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:*(a1 + 32)];
  v5 = [FCPaywallConfiguration alloc];
  v6 = +[FCPaywallVisualSpecConfiguration defaultPaywallVisualSpecConfiguration];
  LOBYTE(v9) = 0;
  v7 = [(FCPaywallConfiguration *)v5 initWithPaywallType:2 title:v10 descriptionTrial:v2 descriptionNonTrial:v2 learnMoreTitle:0 learnMoreURL:0 offersLinkTitle:0 offersLinkURL:0 offersLinkTargetType:0 externalOverridesEnabled:v9 subscriptionButtonConfig:v4 visualSpecConfig:v6 paywallTopOffsetConfig:v3];
  v8 = qword_1EDB272D8;
  qword_1EDB272D8 = v7;
}

+ (id)defaultAudioArticleSoftPaywallWithLandingPageArticleID:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__FCPaywallConfiguration_defaultAudioArticleSoftPaywallWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = v3;
  v4 = qword_1EDB272F0;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB272F0, block);
  }

  v6 = qword_1EDB272E8;
  v7 = qword_1EDB272E8;

  return v6;
}

void __81__FCPaywallConfiguration_defaultAudioArticleSoftPaywallWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v9 = +[FCPaywallConfiguration defaultAudioPaywallTitle];
  v2 = +[FCPaywallConfiguration defaultAudioPaywallDescription];
  v3 = [FCSubscriptionButtonConfiguration defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:*(a1 + 32)];
  v4 = [FCPaywallConfiguration alloc];
  v5 = +[FCPaywallVisualSpecConfiguration defaultPaywallVisualSpecConfiguration];
  LOBYTE(v8) = 0;
  v6 = [(FCPaywallConfiguration *)v4 initWithPaywallType:3 title:v9 descriptionTrial:v2 descriptionNonTrial:v2 learnMoreTitle:0 learnMoreURL:0 offersLinkTitle:0 offersLinkURL:0 offersLinkTargetType:0 externalOverridesEnabled:v8 subscriptionButtonConfig:v3 visualSpecConfig:v5 paywallTopOffsetConfig:0];
  v7 = qword_1EDB272E8;
  qword_1EDB272E8 = v6;
}

+ (id)defaultAudioArticleSharedSoftPaywallWithLandingPageArticleID:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__FCPaywallConfiguration_defaultAudioArticleSharedSoftPaywallWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = v3;
  v4 = qword_1EDB27300;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB27300, block);
  }

  v6 = qword_1EDB272F8;
  v7 = qword_1EDB272F8;

  return v6;
}

void __87__FCPaywallConfiguration_defaultAudioArticleSharedSoftPaywallWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v9 = +[FCPaywallConfiguration defaultAudioPaywallTitle];
  v2 = +[FCPaywallConfiguration defaultAudioPaywallDescription];
  v3 = [FCSubscriptionButtonConfiguration defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:*(a1 + 32)];
  v4 = [FCPaywallConfiguration alloc];
  v5 = +[FCPaywallVisualSpecConfiguration defaultPaywallVisualSpecConfiguration];
  LOBYTE(v8) = 0;
  v6 = [(FCPaywallConfiguration *)v4 initWithPaywallType:4 title:v9 descriptionTrial:v2 descriptionNonTrial:v2 learnMoreTitle:0 learnMoreURL:0 offersLinkTitle:0 offersLinkURL:0 offersLinkTargetType:0 externalOverridesEnabled:v8 subscriptionButtonConfig:v3 visualSpecConfig:v5 paywallTopOffsetConfig:0];
  v7 = qword_1EDB272F8;
  qword_1EDB272F8 = v6;
}

+ (id)defaultAudioFeedSoftPaywallSmallPaywallWithLandingPageArticleID:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__FCPaywallConfiguration_defaultAudioFeedSoftPaywallSmallPaywallWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = v3;
  v4 = qword_1EDB27310;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB27310, block);
  }

  v6 = qword_1EDB27308;
  v7 = qword_1EDB27308;

  return v6;
}

void __90__FCPaywallConfiguration_defaultAudioFeedSoftPaywallSmallPaywallWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v9 = +[FCPaywallConfiguration defaultAudioPaywallTitle];
  v2 = +[FCPaywallConfiguration defaultAudioPaywallDescription];
  v3 = [FCSubscriptionButtonConfiguration defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:*(a1 + 32)];
  v4 = [FCPaywallConfiguration alloc];
  v5 = +[FCPaywallVisualSpecConfiguration defaultAudioFeedPaywallVisualSpecConfigurationSmall];
  LOBYTE(v8) = 0;
  v6 = [(FCPaywallConfiguration *)v4 initWithPaywallType:12 title:v9 descriptionTrial:v2 descriptionNonTrial:v2 learnMoreTitle:0 learnMoreURL:0 offersLinkTitle:0 offersLinkURL:0 offersLinkTargetType:0 externalOverridesEnabled:v8 subscriptionButtonConfig:v3 visualSpecConfig:v5 paywallTopOffsetConfig:0];
  v7 = qword_1EDB27308;
  qword_1EDB27308 = v6;
}

+ (id)defaultAudioFeedSoftPaywallLargePaywallWithLandingPageArticleID:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__FCPaywallConfiguration_defaultAudioFeedSoftPaywallLargePaywallWithLandingPageArticleID___block_invoke;
  block[3] = &unk_1E7C36EA0;
  v10 = v3;
  v4 = qword_1EDB27320;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB27320, block);
  }

  v6 = qword_1EDB27318;
  v7 = qword_1EDB27318;

  return v6;
}

void __90__FCPaywallConfiguration_defaultAudioFeedSoftPaywallLargePaywallWithLandingPageArticleID___block_invoke(uint64_t a1)
{
  v9 = +[FCPaywallConfiguration defaultAudioPaywallTitle];
  v2 = +[FCPaywallConfiguration defaultAudioPaywallDescription];
  v3 = [FCSubscriptionButtonConfiguration defaultLandingPageTargetSubscriptionButtonWithLandingPageArticleID:*(a1 + 32)];
  v4 = [FCPaywallConfiguration alloc];
  v5 = +[FCPaywallVisualSpecConfiguration defaultAudioFeedPaywallVisualSpecConfigurationSmall];
  LOBYTE(v8) = 0;
  v6 = [(FCPaywallConfiguration *)v4 initWithPaywallType:12 title:v9 descriptionTrial:v2 descriptionNonTrial:v2 learnMoreTitle:0 learnMoreURL:0 offersLinkTitle:0 offersLinkURL:0 offersLinkTargetType:0 externalOverridesEnabled:v8 subscriptionButtonConfig:v3 visualSpecConfig:v5 paywallTopOffsetConfig:0];
  v7 = qword_1EDB27318;
  qword_1EDB27318 = v6;
}

+ (id)defaultSmallPaywallTitle
{
  if (qword_1EDB27330 != -1)
  {
    dispatch_once(&qword_1EDB27330, &__block_literal_global_58);
  }

  v3 = qword_1EDB27328;

  return v3;
}

void __50__FCPaywallConfiguration_defaultSmallPaywallTitle__block_invoke()
{
  v2 = FCBundle();
  v0 = [v2 localizedStringForKey:@"Get your favorite magazines and newspapers.\nAll for one price." value:&stru_1F2DC7DC0 table:0];
  v1 = qword_1EDB27328;
  qword_1EDB27328 = v0;
}

+ (id)defaultPaywallTitle
{
  if (qword_1EDB27340 != -1)
  {
    dispatch_once(&qword_1EDB27340, &__block_literal_global_110);
  }

  v3 = qword_1EDB27338;

  return v3;
}

void __45__FCPaywallConfiguration_defaultPaywallTitle__block_invoke()
{
  v2 = FCBundle();
  v0 = [v2 localizedStringForKey:@"Get your favorite magazines and newspapers. All for one price." value:&stru_1F2DC7DC0 table:0];
  v1 = qword_1EDB27338;
  qword_1EDB27338 = v0;
}

+ (id)defaultPaywallDescription
{
  if (qword_1EDB27350 != -1)
  {
    dispatch_once(&qword_1EDB27350, &__block_literal_global_115_0);
  }

  v3 = qword_1EDB27348;

  return v3;
}

void __51__FCPaywallConfiguration_defaultPaywallDescription__block_invoke()
{
  v2 = FCBundle();
  v0 = [v2 localizedStringForKey:@"No commitment. Plan auto-renews until canceled." value:&stru_1F2DC7DC0 table:0];
  v1 = qword_1EDB27348;
  qword_1EDB27348 = v0;
}

+ (id)defaultAudioPaywallTitle
{
  if (qword_1EDB27360 != -1)
  {
    dispatch_once(&qword_1EDB27360, &__block_literal_global_120);
  }

  v3 = qword_1EDB27358;

  return v3;
}

void __50__FCPaywallConfiguration_defaultAudioPaywallTitle__block_invoke()
{
  v2 = FCBundle();
  v0 = [v2 localizedStringForKey:@"Listen to stories from top magazines and leading newspapers." value:&stru_1F2DC7DC0 table:0];
  v1 = qword_1EDB27358;
  qword_1EDB27358 = v0;
}

+ (id)defaultAudioPaywallDescription
{
  if (qword_1EDB27370 != -1)
  {
    dispatch_once(&qword_1EDB27370, &__block_literal_global_125);
  }

  v3 = qword_1EDB27368;

  return v3;
}

void __56__FCPaywallConfiguration_defaultAudioPaywallDescription__block_invoke()
{
  v2 = FCBundle();
  v0 = [v2 localizedStringForKey:@"No commitment. Plan auto-renews until canceled." value:&stru_1F2DC7DC0 table:0];
  v1 = qword_1EDB27368;
  qword_1EDB27368 = v0;
}

+ (id)defaultPaywallTopOffsetConfiguration
{
  if (qword_1EDB27380 != -1)
  {
    dispatch_once(&qword_1EDB27380, &__block_literal_global_127);
  }

  v3 = qword_1EDB27378;

  return v3;
}

uint64_t __62__FCPaywallConfiguration_defaultPaywallTopOffsetConfiguration__block_invoke()
{
  v0 = [[FCPaywallTopOffsetConfiguration alloc] initWithCompactPortraitTopOffsetRatio:0.1 compactLandscapeTopOffsetRatio:0.1 regularPortraitTopOffsetRatio:0.0 regularLandscapeTopOffsetRatio:0.3];
  v1 = qword_1EDB27378;
  qword_1EDB27378 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)defaultDeferredPaywallTopOffsetConfiguration
{
  if (qword_1EDB27390 != -1)
  {
    dispatch_once(&qword_1EDB27390, &__block_literal_global_129);
  }

  v3 = qword_1EDB27388;

  return v3;
}

uint64_t __70__FCPaywallConfiguration_defaultDeferredPaywallTopOffsetConfiguration__block_invoke()
{
  v0 = [[FCPaywallTopOffsetConfiguration alloc] initWithCompactPortraitTopOffsetRatio:0.1 compactLandscapeTopOffsetRatio:0.7 regularPortraitTopOffsetRatio:0.2 regularLandscapeTopOffsetRatio:0.7];
  v1 = qword_1EDB27388;
  qword_1EDB27388 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end