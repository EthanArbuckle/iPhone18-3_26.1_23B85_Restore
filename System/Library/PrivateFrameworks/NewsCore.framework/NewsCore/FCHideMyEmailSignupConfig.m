@interface FCHideMyEmailSignupConfig
+ (id)defaultConfig;
- (FCHideMyEmailSignupConfig)initWithConfigDictionary:(id)a3;
- (id)initDefault;
@end

@implementation FCHideMyEmailSignupConfig

+ (id)defaultConfig
{
  if (qword_1EDB273A0 != -1)
  {
    dispatch_once(&qword_1EDB273A0, &__block_literal_global_63);
  }

  v3 = _MergedGlobals_158;

  return v3;
}

uint64_t __42__FCHideMyEmailSignupConfig_defaultConfig__block_invoke()
{
  _MergedGlobals_158 = [[FCHideMyEmailSignupConfig alloc] initDefault];

  return MEMORY[0x1EEE66BB8]();
}

- (id)initDefault
{
  v11.receiver = self;
  v11.super_class = FCHideMyEmailSignupConfig;
  v2 = [(FCHideMyEmailSignupConfig *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_isEnabled = 1;
    headline = v2->_headline;
    v2->_headline = @"Your subscription includes access on the publisher’s website.";

    subheadline = v3->_subheadline;
    v3->_headlineLineSpacing = 1.0;
    v3->_subheadline = @"The publisher will contact you with additional details. You can share your email address or keep it private.";

    ctaButtonText = v3->_ctaButtonText;
    v3->_ctaButtonText = @"Continue";

    v7 = [FCConfigHyperlinkText alloc];
    v8 = [(FCConfigHyperlinkText *)v7 initWithText:@"The publisher may use the information you choose to share in accordance with their privacy policy." links:MEMORY[0x1E695E0F0]];
    policyText = v3->_policyText;
    v3->_policyText = v8;

    v3->_useChannelFont = 1;
  }

  return v3;
}

- (FCHideMyEmailSignupConfig)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = FCHideMyEmailSignupConfig;
  v5 = [(FCHideMyEmailSignupConfig *)&v36 init];
  if (v5)
  {
    v5->_isEnabled = FCAppConfigurationBoolValue(v4, @"isEnabled", 0);
    v6 = +[FCHideMyEmailSignupConfig defaultConfig];
    v7 = [v6 headline];
    v8 = FCAppConfigurationStringValue(v4, @"headline", v7);
    headline = v5->_headline;
    v5->_headline = v8;

    v5->_headlineLineSpacing = FCAppConfigurationDoubleValue(v4, @"headlineLineSpacing", 1.0);
    v10 = +[FCHideMyEmailSignupConfig defaultConfig];
    v11 = [v10 subheadline];
    v12 = FCAppConfigurationStringValue(v4, @"subheadline", v11);
    subheadline = v5->_subheadline;
    v5->_subheadline = v12;

    v14 = +[FCHideMyEmailSignupConfig defaultConfig];
    v15 = [v14 ctaButtonText];
    v16 = FCAppConfigurationStringValue(v4, @"ctaButtonText", v15);
    ctaButtonText = v5->_ctaButtonText;
    v5->_ctaButtonText = v16;

    v18 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"policyText", 0);
    if (v18)
    {
      v19 = [[FCConfigHyperlinkText alloc] initWithConfigDictionary:v18];
      policyText = v5->_policyText;
      v5->_policyText = v19;
    }

    else
    {
      policyText = +[FCHideMyEmailSignupConfig defaultConfig];
      v21 = [policyText policyText];
      v22 = v5->_policyText;
      v5->_policyText = v21;
    }

    v5->_useChannelFont = FCAppConfigurationBoolValue(v4, @"useChannelFont", 1);
    v23 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"primaryColor", 0);
    v24 = [FCContentColorPair colorPairWithDictionary:v23];
    primaryColor = v5->_primaryColor;
    v5->_primaryColor = v24;

    v26 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"secondaryColor", 0);
    v27 = [FCContentColorPair colorPairWithDictionary:v26];
    secondaryColor = v5->_secondaryColor;
    v5->_secondaryColor = v27;

    v29 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"tertiaryColor", 0);
    v30 = [FCContentColorPair colorPairWithDictionary:v29];
    tertiaryColor = v5->_tertiaryColor;
    v5->_tertiaryColor = v30;

    v32 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"backgroundColor", 0);
    v33 = [FCContentColorPair colorPairWithDictionary:v32];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v33;
  }

  return v5;
}

@end