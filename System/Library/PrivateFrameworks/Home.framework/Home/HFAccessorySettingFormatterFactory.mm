@interface HFAccessorySettingFormatterFactory
+ (id)_announceEnabledFormatter;
+ (id)_audioAnalysisEnabledFormatter;
+ (id)_doorbellChimeEnabledFormatter;
+ (id)_siriFormatter;
+ (id)_siriOutputVoiceFormatter;
+ (id)_siriPersonalRequestsFormatter;
+ (id)_siriRecognitionLanguageFormatter;
+ (id)defaultFactory;
- (HFAccessorySettingFormatterFactory)init;
- (id)_buildFormatterForKey:(id)a3;
- (id)formatterForKey:(id)a3;
- (id)formatterForKey:(id)a3 copy:(BOOL)a4;
@end

@implementation HFAccessorySettingFormatterFactory

+ (id)defaultFactory
{
  if (_MergedGlobals_331 != -1)
  {
    dispatch_once(&_MergedGlobals_331, &__block_literal_global_78_4);
  }

  v3 = qword_280E03E20;

  return v3;
}

void __52__HFAccessorySettingFormatterFactory_defaultFactory__block_invoke_2()
{
  v0 = objc_opt_new();
  v1 = qword_280E03E20;
  qword_280E03E20 = v0;
}

- (HFAccessorySettingFormatterFactory)init
{
  v6.receiver = self;
  v6.super_class = HFAccessorySettingFormatterFactory;
  v2 = [(HFAccessorySettingFormatterFactory *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    formattersForKey = v2->_formattersForKey;
    v2->_formattersForKey = v3;
  }

  return v2;
}

- (id)formatterForKey:(id)a3 copy:(BOOL)a4
{
  v4 = a4;
  v5 = [(HFAccessorySettingFormatterFactory *)self formatterForKey:a3];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 copy];

    v6 = v7;
  }

  return v6;
}

- (id)formatterForKey:(id)a3
{
  v4 = a3;
  v5 = [(HFAccessorySettingFormatterFactory *)self formattersForKey];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __54__HFAccessorySettingFormatterFactory_formatterForKey___block_invoke;
  v12 = &unk_277E02DF0;
  v13 = self;
  v14 = v4;
  v6 = v4;
  v7 = [v5 na_objectForKey:v6 withDefaultValue:&v9];

  if (!v7)
  {
    NSLog(&cfstr_RequestedNilFo.isa, v9, v10, v11, v12, v13, v14);
  }

  return v7;
}

- (id)_buildFormatterForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"AccessorySettingsDefaultFormatter"])
  {
    v5 = [HFSimpleFormatter alloc];
    v6 = &__block_literal_global_89_0;
LABEL_5:
    v7 = [(HFSimpleFormatter *)v5 initWithFormatterBlock:v6];
LABEL_6:
    v8 = v7;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"AccessorySettingsAccessibilitySecondsFormatter"])
  {
    v5 = [HFSimpleFormatter alloc];
    v6 = &__block_literal_global_104_1;
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"SiriFormatter"])
  {
    v7 = [objc_opt_class() _siriFormatter];
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"SiriRecognitionLanguageFormatter"])
  {
    v7 = [objc_opt_class() _siriRecognitionLanguageFormatter];
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"SiriOutputVoiceFormatter"])
  {
    v7 = [objc_opt_class() _siriOutputVoiceFormatter];
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"SiriPersonalRequestsFormatter"])
  {
    v7 = [objc_opt_class() _siriPersonalRequestsFormatter];
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"AnnounceEnabledFormatter"])
  {
    v7 = [objc_opt_class() _announceEnabledFormatter];
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"AnnounceFooterTitleFormatter"])
  {
    v10 = [HFSimpleFormatter alloc];
    v11 = &__block_literal_global_112_1;
LABEL_22:
    v12 = [(HFSimpleFormatter *)v10 initWithFormatterBlock:v11];
LABEL_23:
    v8 = v12;
    v13 = [(HFAccessorySettingFormatterFactory *)self formattersForKey];
    [v13 setObject:v8 forKey:v4];

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"AudioAnalysisEnabledFormatter"])
  {
    v7 = [objc_opt_class() _audioAnalysisEnabledFormatter];
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"AudioAnalysisFooterTitleFormatter"])
  {
    v10 = [HFSimpleFormatter alloc];
    v11 = &__block_literal_global_389;
    goto LABEL_22;
  }

  if ([v4 isEqualToString:@"HFHomePodAnalyticImproveSiriDictationFooter"])
  {
    v14 = [HFSimpleFormatter alloc];
    v15 = &__block_literal_global_395;
LABEL_30:
    v12 = [(HFSimpleFormatter *)v14 initWithAttributedFormatterBlock:v15];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:@"DoorbellChimeEnabledFormatter"])
  {
    v7 = [objc_opt_class() _doorbellChimeEnabledFormatter];
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"AccessorySettingsProfileCountFormatter"])
  {
    v12 = objc_opt_new();
    goto LABEL_23;
  }

  if ([v4 isEqualToString:@"PrimaryUserAccountFormatterKey"])
  {
    v12 = __60__HFAccessorySettingFormatterFactory__buildFormatterForKey___block_invoke_6();
    goto LABEL_23;
  }

  if ([v4 isEqualToString:@"AllowExplicitContentFormatter"])
  {
    v10 = [HFSimpleFormatter alloc];
    v11 = &__block_literal_global_417;
    goto LABEL_22;
  }

  if ([v4 isEqualToString:@"PlaybackInfluencesFormatter"])
  {
    v12 = __60__HFAccessorySettingFormatterFactory__buildFormatterForKey___block_invoke_2_421();
    goto LABEL_23;
  }

  if ([v4 isEqualToString:@"SiriFooterTitleFormatter"])
  {
    v14 = [HFSimpleFormatter alloc];
    v15 = &__block_literal_global_432;
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"LocationFooterTitleFormatter"])
  {
    v14 = [HFSimpleFormatter alloc];
    v15 = &__block_literal_global_441_0;
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"AirPlayFooterTitleFormatter"])
  {
    v10 = [HFSimpleFormatter alloc];
    v11 = &__block_literal_global_450_0;
    goto LABEL_22;
  }

  if ([v4 isEqualToString:@"VoiceFeedbackHeaderTitleFormatter"])
  {
    v10 = [HFSimpleFormatter alloc];
    v11 = &__block_literal_global_456_0;
    goto LABEL_22;
  }

  if ([v4 isEqualToString:@"VoiceFeedbackFooterTitleFormatter"])
  {
    v10 = [HFSimpleFormatter alloc];
    v11 = &__block_literal_global_461_0;
    goto LABEL_22;
  }

  if ([v4 isEqualToString:@"SiriTriggerPhraseSettingFormatter"])
  {
    v10 = [HFSimpleFormatter alloc];
    v11 = &__block_literal_global_466;
    goto LABEL_22;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

id __60__HFAccessorySettingFormatterFactory__buildFormatterForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = @"HFAccessorySettingGroupItemOff";
  if (v2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (objc_opt_respondsToSelector())
    {
      if ([v2 BOOLValue])
      {
        v3 = @"HFAccessorySettingGroupItemOn";
      }
    }

    else
    {
      NSLog(&cfstr_YouReAttemptin.isa, 0);
    }
  }

  v4 = _HFLocalizedStringWithDefaultValue(v3, v3, 1);

  return v4;
}

id __60__HFAccessorySettingFormatterFactory__buildFormatterForKey___block_invoke_2()
{
  v0 = AXFormatNumberWithOptions();
  v7 = HFLocalizedStringWithFormat(@"HFAccessibilitySecondsFormatString", @"%@", v1, v2, v3, v4, v5, v6, v0);

  return v7;
}

id __60__HFAccessorySettingFormatterFactory__buildFormatterForKey___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_282584A38])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v2;
  if ([v5 conformsToProtocol:&unk_28252AE98])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 accessories];
  v9 = [v8 anyObject];

  if (v4)
  {
    objc_opt_class();
    v10 = [v4 accessories];
    v11 = [v10 anyObject];
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v9 = v13;
  }

  v14 = [v9 hf_userFriendlyLocalizedLowercaseDescription];
  v21 = HFLocalizedStringWithFormat(@"HFAnnounceFooterText", @"%@", v15, v16, v17, v18, v19, v20, v14);

  return v21;
}

id __60__HFAccessorySettingFormatterFactory__buildFormatterForKey___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_282584A38])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v2;
  if ([v5 conformsToProtocol:&unk_28252AE98])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 accessories];
  v9 = [v8 anyObject];

  if (v4)
  {
    objc_opt_class();
    v10 = [v4 accessories];
    v11 = [v10 anyObject];
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v9 = v13;
  }

  v14 = [v9 hf_userFriendlyLocalizedLowercaseDescription];
  v21 = HFLocalizedStringWithFormat(@"HFAudioAnalysisFooterText", @"%@", v15, v16, v17, v18, v19, v20, v14);

  return v21;
}

id __60__HFAccessorySettingFormatterFactory__buildFormatterForKey___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _HFLocalizedStringWithDefaultValue(@"HFHomePodAnalyticImproveSiriDictationFooter", @"HFHomePodAnalyticImproveSiriDictationFooter", 1);
  v5 = _HFLocalizedStringWithDefaultValue(@"HFHomePodAnalyticImproveSiriDictationFooterLink", @"HFHomePodAnalyticImproveSiriDictationFooterLink", 1);
  v6 = objc_alloc(MEMORY[0x277CCAB48]);
  v7 = [v4 stringByAppendingString:@" "];
  v8 = [v6 initWithString:v7];

  v9 = objc_alloc(MEMORY[0x277CCA898]);
  v15 = *MEMORY[0x277D740E8];
  v10 = +[HFURLComponents aboutImproveSiriAndDictationURL];
  v16[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v9 initWithString:v5 attributes:v11];
  [v8 appendAttributedString:v12];

  [v8 addAttributes:v3 range:{0, objc_msgSend(v8, "length")}];
  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

HFSimpleFormatter *__60__HFAccessorySettingFormatterFactory__buildFormatterForKey___block_invoke_6()
{
  v0 = [[HFSimpleFormatter alloc] initWithFormatterBlock:&__block_literal_global_411];

  return v0;
}

__CFString *__60__HFAccessorySettingFormatterFactory__buildFormatterForKey___block_invoke_7(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = &unk_282584A38;
  v4 = v2;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  if ([v4 conformsToProtocol:v3])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v5;
  if (!v6)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v10 = NSStringFromProtocol(v3);
    [v8 handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v10}];

LABEL_7:
    v7 = 0;
  }

  if (v7)
  {
    v11 = [v7 hf_appleMusicCurrentLoggedInAccount];
    v12 = [v11 username];
    if ([v7 hf_supportsPreferredMediaUser] && objc_msgSend(v7, "hf_preferredUserSelectionType") == 1)
    {
      v13 = [v7 hf_preferredMediaUser];
      v14 = [v13 name];

      v12 = v14;
    }

    v15 = HFLogForCategory(0x39uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Media account value:  %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = &stru_2824B1A78;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

HFSimpleFormatter *__60__HFAccessorySettingFormatterFactory__buildFormatterForKey___block_invoke_2_421()
{
  v0 = [[HFSimpleFormatter alloc] initWithFormatterBlock:&__block_literal_global_426];

  return v0;
}

id __60__HFAccessorySettingFormatterFactory__buildFormatterForKey___block_invoke_3_424(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = &unk_282584A38;
  v4 = v2;
  v5 = v4;
  if (v4)
  {
    if ([v4 conformsToProtocol:v3])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v5;
    if (v6)
    {
      goto LABEL_8;
    }

    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v10 = NSStringFromProtocol(v3);
    [v8 handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v10}];
  }

  v7 = 0;
LABEL_8:

  if (v7)
  {
    v11 = [v7 hf_settingsValueManager];
    v12 = [v11 valueForSettingAtKeyPath:@"root.music.playbackInfluencesForYou"];
    v13 = [v12 BOOLValue];

    if (v13)
    {
      v14 = @"HFAccessorySettingGroupItemOn";
    }

    else
    {
      v14 = @"HFAccessorySettingGroupItemOff";
    }

    v15 = _HFLocalizedStringWithDefaultValue(v14, v14, 1);
  }

  else
  {
    v15 = _HFLocalizedStringWithDefaultValue(@"HFPlaybackInfluencesSettingNever", @"HFPlaybackInfluencesSettingNever", 1);
  }

  return v15;
}

id __60__HFAccessorySettingFormatterFactory__buildFormatterForKey___block_invoke_4_430(uint64_t a1, uint64_t a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _HFLocalizedStringWithDefaultValue(@"HFSiriFooterPrivacyText", @"HFSiriFooterPrivacyText", 1);
  v5 = _HFLocalizedStringWithDefaultValue(@"HFPrivacyFooterSectionTypeSiri", @"HFPrivacyFooterSectionTypeSiri", 1);
  v6 = objc_alloc(MEMORY[0x277CCAB48]);
  v7 = [v4 stringByAppendingString:@" "];
  v8 = [v6 initWithString:v7];

  v9 = objc_alloc(MEMORY[0x277CCA898]);
  v15 = *MEMORY[0x277D740E8];
  v10 = +[HFURLComponents siriPrivacyURL];
  v16[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v9 initWithString:v5 attributes:v11];
  [v8 appendAttributedString:v12];

  [v8 addAttributes:v3 range:{0, objc_msgSend(v8, "length")}];
  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

id __60__HFAccessorySettingFormatterFactory__buildFormatterForKey___block_invoke_5_439(uint64_t a1, uint64_t a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _HFLocalizedStringWithDefaultValue(@"HFLocationFooterPrivacyText", @"HFLocationFooterPrivacyText", 1);
  v5 = _HFLocalizedStringWithDefaultValue(@"HFPrivacyFooterSectionTypeLocationServices", @"HFPrivacyFooterSectionTypeLocationServices", 1);
  v6 = objc_alloc(MEMORY[0x277CCAB48]);
  v7 = [v4 stringByAppendingString:@" "];
  v8 = [v6 initWithString:v7];

  v9 = objc_alloc(MEMORY[0x277CCA898]);
  v15 = *MEMORY[0x277D740E8];
  v10 = +[HFURLComponents locationPrivacyURL];
  v16[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v9 initWithString:v5 attributes:v11];
  [v8 appendAttributedString:v12];

  [v8 addAttributes:v3 range:{0, objc_msgSend(v8, "length")}];
  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

id __60__HFAccessorySettingFormatterFactory__buildFormatterForKey___block_invoke_9(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v2 = @"HFAccessorySettingGroupItemOn";
  }

  else
  {
    v2 = @"HFAccessorySettingGroupItemOff";
  }

  v3 = _HFLocalizedStringWithDefaultValue(v2, v2, 1);

  return v3;
}

+ (id)_siriFormatter
{
  v2 = [[HFSimpleFormatter alloc] initWithFormatterBlock:&__block_literal_global_468];

  return v2;
}

id __52__HFAccessorySettingFormatterFactory__siriFormatter__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_282584A38])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 mediaProfiles];

  v6 = [v5 anyObject];
  v7 = [v6 hf_mediaAccessoryCommonSettingsManager];

  v8 = [v7 settingValueForKeyPath:HFAllowHeySiriSettingKeyPath];
  v9 = [v7 settingValueForKeyPath:HFTapToAccessSiriSettingKeyPath];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && (([v8 BOOLValue] & 1) != 0 || objc_msgSend(v10, "BOOLValue")))
  {
    v12 = @"HFAccessorySettingGroupItemOn";
  }

  else
  {
    v12 = @"HFAccessorySettingGroupItemOff";
  }

  v13 = _HFLocalizedStringWithDefaultValue(v12, v12, 1);

  return v13;
}

+ (id)_siriRecognitionLanguageFormatter
{
  v2 = [[HFSimpleFormatter alloc] initWithFormatterBlock:&__block_literal_global_470];

  return v2;
}

id __71__HFAccessorySettingFormatterFactory__siriRecognitionLanguageFormatter__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = v3;
  if (!v5)
  {
    objc_opt_class();
    v7 = v3;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = [(HFSiriLanguageOption *)v9 title];
    }

    else
    {
      objc_opt_class();
      v11 = v7;
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v10 = v12;
    }

    v6 = [[HFSiriLanguageOption alloc] initWithSerializedRepresentation:v10];
  }

  objc_opt_class();
  v13 = v3;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    v16 = [[HFSiriLanguageOption alloc] initWithHomeKitSettingLanguageValue:v15];

    v6 = v16;
  }

  v17 = [(HFSiriLanguageOption *)v6 localizedRecognitionLanguage];

  return v17;
}

+ (id)_siriOutputVoiceFormatter
{
  v2 = [[HFSimpleFormatter alloc] initWithFormatterBlock:&__block_literal_global_475];

  return v2;
}

id __63__HFAccessorySettingFormatterFactory__siriOutputVoiceFormatter__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = v3;
  if (!v5)
  {
    objc_opt_class();
    v7 = v3;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = [(HFSiriLanguageOption *)v9 title];
    }

    else
    {
      objc_opt_class();
      v11 = v7;
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v10 = v12;
    }

    v6 = [[HFSiriLanguageOption alloc] initWithSerializedRepresentation:v10];
  }

  objc_opt_class();
  v13 = v3;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    v16 = [[HFSiriLanguageOption alloc] initWithHomeKitSettingLanguageValue:v15];

    v6 = v16;
  }

  v17 = [(HFSiriLanguageOption *)v6 localizedOutputVoice];

  return v17;
}

+ (id)_siriPersonalRequestsFormatter
{
  v2 = [[HFSimpleFormatter alloc] initWithFormatterBlock:&__block_literal_global_478];

  return v2;
}

id __68__HFAccessorySettingFormatterFactory__siriPersonalRequestsFormatter__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 accessories];
  v4 = [v2 hf_home];
  v5 = [v4 currentUser];
  v6 = [v2 hf_home];
  v7 = [v5 assistantAccessControlForHome:v6];

  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v9 = [v7 accessories];
  v10 = [v8 initWithArray:v9];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__HFAccessorySettingFormatterFactory__siriPersonalRequestsFormatter__block_invoke_2;
  v17[3] = &unk_277DF3888;
  v18 = v10;
  v11 = v10;
  if ([v3 na_all:v17])
  {
    if ([v7 allowUnauthenticatedRequests])
    {
      v12 = @"HFSiriPersonalRequestsValueOn";
      goto LABEL_8;
    }

    v13 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v2;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "Forcing PR OFF for %@ because the user previously had allowUnauthenticatedRequests set to NO", buf, 0xCu);
    }
  }

  v12 = @"HFSiriPersonalRequestsValueOff";
LABEL_8:
  v14 = _HFLocalizedStringWithDefaultValue(v12, v12, 1);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_announceEnabledFormatter
{
  v2 = [[HFSimpleFormatter alloc] initWithFormatterBlock:&__block_literal_global_488_0];

  return v2;
}

id __63__HFAccessorySettingFormatterFactory__announceEnabledFormatter__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_282584A38])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 hf_settingsValueManager];
  v6 = [v4 settings];
  v7 = [v6 hf_accessorySettingAtKeyPath:@"root.announce.enabled"];

  objc_opt_class();
  if (v7)
  {
    v8 = [v5 valueForSetting:v7];
  }

  else
  {
    v8 = v2;
  }

  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = @"HFAnnounceEnabledValueOff";
  if (v11 && [v11 BOOLValue])
  {
    v12 = @"HFAnnounceEnabledValueOn";
  }

  v13 = _HFLocalizedStringWithDefaultValue(v12, v12, 1);

  return v13;
}

+ (id)_audioAnalysisEnabledFormatter
{
  v2 = [[HFSimpleFormatter alloc] initWithFormatterBlock:&__block_literal_global_496_0];

  return v2;
}

id __68__HFAccessorySettingFormatterFactory__audioAnalysisEnabledFormatter__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_282584A38])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 hf_settingsValueManager];
  v6 = [v4 settings];
  v7 = [v6 hf_accessorySettingAtKeyPath:@"root.audioAnalysis.enabled"];

  objc_opt_class();
  if (v7)
  {
    v8 = [v5 valueForSetting:v7];
  }

  else
  {
    v8 = v2;
  }

  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = @"HFAudioAnalysisEnabledValueOff";
    if ([v11 BOOLValue])
    {
      v13 = [v4 hf_home];
      v14 = [v13 audioAnalysisClassifierOptions];

      if (v14)
      {
        v12 = @"HFAudioAnalysisEnabledValueOn";
      }
    }
  }

  else
  {
    v12 = @"HFAudioAnalysisEnabledValueOff";
  }

  v15 = _HFLocalizedStringWithDefaultValue(v12, v12, 1);

  return v15;
}

+ (id)_doorbellChimeEnabledFormatter
{
  v2 = [[HFSimpleFormatter alloc] initWithFormatterBlock:&__block_literal_global_504_0];

  return v2;
}

id __68__HFAccessorySettingFormatterFactory__doorbellChimeEnabledFormatter__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_home];
  v3 = [v2 hf_allHomePodsOrStereoPairs];
  v4 = [v3 count];

  v5 = [v2 hf_allHomePodsOrStereoPairsThatWillChime];
  v6 = [v5 count];

  v7 = [v2 hf_allSiriEndPointProfileContainersThatWillChime];
  v8 = [v7 count] + v6;

  v9 = [v2 hf_allSiriEndPointProfileContainers];
  v10 = [v9 count];

  if (!v8)
  {
    v11 = @"HFChimeOnAccessories_ValueOff";
    goto LABEL_5;
  }

  if (v8 == v10 + v4)
  {
    v11 = @"HFChimeOnAccessories_ValueAll";
LABEL_5:
    v12 = _HFLocalizedStringWithDefaultValue(v11, v11, 1);
    goto LABEL_7;
  }

  v13 = MEMORY[0x277CCABB8];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v12 = [v13 localizedStringFromNumber:v14 numberStyle:0];

LABEL_7:

  return v12;
}

@end