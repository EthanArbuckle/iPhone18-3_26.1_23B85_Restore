@interface FBKSPendingConsent
- (FBKSPendingConsent)initWithDictionary:(id)dictionary;
- (NSString)consentTypeString;
@end

@implementation FBKSPendingConsent

- (FBKSPendingConsent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v46.receiver = self;
  v46.super_class = FBKSPendingConsent;
  v5 = [(FBKSPendingConsent *)&v46 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    ID = v5->_ID;
    v5->_ID = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    v9 = _FBKSNilIfNSNull(v8);
    v10 = v9;
    if (v9 && ([v9 isEqualToString:&stru_1F25DB460] & 1) == 0)
    {
      lowercaseString = [v10 lowercaseString];

      v11 = [lowercaseString isEqualToString:@"confidentiality_agreement"];
      v10 = lowercaseString;
    }

    else
    {
      v11 = 0;
    }

    v5->_type = v11;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"icon"];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = @"person.crop.circle";
    }

    objc_storeStrong(&v5->_symbolImageName, v15);

    v16 = [dictionaryCopy objectForKeyedSubscript:@"learn_more"];
    v17 = _FBKSNilIfNSNull(v16);

    v18 = [MEMORY[0x1E695DFF8] URLWithString:v17];
    learnMoreURL = v5->_learnMoreURL;
    v5->_learnMoreURL = v18;

    v20 = [dictionaryCopy objectForKeyedSubscript:@"properties"];
    v5->_isRequired = [v20 containsObject:@"PARTICIPANT_REQUIRED"];

    v21 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
      title = v5->_title;
      v5->_title = v23;
    }

    else
    {
      title = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v25 = [title localizedStringForKey:@"CONSENT_DEFAULT_TITLE" value:@"Apple and Your Privacy" table:0];
      v26 = v5->_title;
      v5->_title = v25;
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"text"];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
      bodyText = v5->_bodyText;
      v5->_bodyText = v29;
    }

    else
    {
      bodyText = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v31 = [bodyText localizedStringForKey:@"CONSENT_DEFAULT_BODY" value:@"Please read the following terms to continue." table:0];
      v32 = v5->_bodyText;
      v5->_bodyText = v31;
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"agree_text_button"];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
      agreeButtonText = v5->_agreeButtonText;
      v5->_agreeButtonText = v35;
    }

    else
    {
      agreeButtonText = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v37 = [agreeButtonText localizedStringForKey:@"CONSENT_DEFAULT_ACCEPT" value:@"Accept" table:0];
      v38 = v5->_agreeButtonText;
      v5->_agreeButtonText = v37;
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"decline_text_button"];
    v40 = v39;
    if (v39)
    {
      v41 = v39;
      declineButtonText = v5->_declineButtonText;
      v5->_declineButtonText = v41;
    }

    else
    {
      declineButtonText = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v43 = [declineButtonText localizedStringForKey:@"CONSENT_DEFAULT_DECLINE" value:@"Decline" table:0];
      v44 = v5->_declineButtonText;
      v5->_declineButtonText = v43;
    }
  }

  return v5;
}

- (NSString)consentTypeString
{
  if ([(FBKSPendingConsent *)self type]== 1)
  {
    return @"confidentiality_agreement";
  }

  else
  {
    return 0;
  }
}

@end