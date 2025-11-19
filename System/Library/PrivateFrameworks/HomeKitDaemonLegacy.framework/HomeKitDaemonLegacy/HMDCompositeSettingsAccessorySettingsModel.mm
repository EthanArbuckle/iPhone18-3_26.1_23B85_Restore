@interface HMDCompositeSettingsAccessorySettingsModel
+ (id)allKeyPaths;
+ (id)hmbProperties;
- (id)keyPathsToSettingMetadata;
- (id)keyPathsToSettings;
- (id)keyPathsToSettingsForMigration;
- (void)setSetting:(id)a3 forKeyPath:(id)a4 withError:(id *)a5;
@end

@implementation HMDCompositeSettingsAccessorySettingsModel

+ (id)allKeyPaths
{
  if (allKeyPaths_onceToken != -1)
  {
    dispatch_once(&allKeyPaths_onceToken, &__block_literal_global_305);
  }

  v3 = allKeyPaths_allKeyPaths;

  return v3;
}

void __57__HMDCompositeSettingsAccessorySettingsModel_allKeyPaths__block_invoke()
{
  v0 = allKeyPaths_allKeyPaths;
  allKeyPaths_allKeyPaths = &unk_286626F20;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_82647 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_82647, &__block_literal_global_82648);
  }

  v3 = hmbProperties_properties_82649;

  return v3;
}

void __59__HMDCompositeSettingsAccessorySettingsModel_hmbProperties__block_invoke()
{
  v76[72] = *MEMORY[0x277D85DE8];
  v75[0] = @"root_siri_soundAlert_value";
  v74 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[0] = v74;
  v75[1] = @"root_siri_soundAlert_readVersion";
  v73 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[1] = v73;
  v75[2] = @"root_siri_soundAlert_writeVersion";
  v72 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[2] = v72;
  v75[3] = @"root_siri_lightWhenUsingSiri_value";
  v71 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[3] = v71;
  v75[4] = @"root_siri_lightWhenUsingSiri_readVersion";
  v70 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[4] = v70;
  v75[5] = @"root_siri_lightWhenUsingSiri_writeVersion";
  v69 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[5] = v69;
  v75[6] = @"root_siri_siriEnabled_value";
  v68 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[6] = v68;
  v75[7] = @"root_siri_siriEnabled_readVersion";
  v67 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[7] = v67;
  v75[8] = @"root_siri_siriEnabled_writeVersion";
  v66 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[8] = v66;
  v75[9] = @"root_siri_language_inputLanguageCodeValueName";
  v65 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[9] = v65;
  v75[10] = @"root_siri_language_outputLanguageVoiceCodeValueName";
  v64 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[10] = v64;
  v75[11] = @"root_siri_language_outputLanguageGenderCodeValueName";
  v63 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[11] = v63;
  v75[12] = @"root_siri_language_voiceNameValueName";
  v62 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[12] = v62;
  v75[13] = @"root_siri_language_readVersion";
  v61 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[13] = v61;
  v75[14] = @"root_siri_language_writeVersion";
  v60 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[14] = v60;
  v75[15] = @"root_home_dismissedHomePodHasNonMemberMediaAccountWarning_value";
  v59 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[15] = v59;
  v75[16] = @"root_home_dismissedHomePodHasNonMemberMediaAccountWarning_readVersion";
  v58 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[16] = v58;
  v75[17] = @"root_home_dismissedHomePodHasNonMemberMediaAccountWarning_writeVersion";
  v57 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[17] = v57;
  v75[18] = @"root_locationServices_enabled_value";
  v56 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[18] = v56;
  v75[19] = @"root_locationServices_enabled_readVersion";
  v55 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[19] = v55;
  v75[20] = @"root_locationServices_enabled_writeVersion";
  v54 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[20] = v54;
  v75[21] = @"root_doorbellChime_enabled_value";
  v53 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[21] = v53;
  v75[22] = @"root_doorbellChime_enabled_readVersion";
  v52 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[22] = v52;
  v75[23] = @"root_doorbellChime_enabled_writeVersion";
  v51 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[23] = v51;
  v75[24] = @"root_announce_enabled_value";
  v50 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[24] = v50;
  v75[25] = @"root_announce_enabled_readVersion";
  v49 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[25] = v49;
  v75[26] = @"root_announce_enabled_writeVersion";
  v48 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[26] = v48;
  v75[27] = @"root_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_value";
  v47 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[27] = v47;
  v75[28] = @"root_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_readVersion";
  v46 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[28] = v46;
  v75[29] = @"root_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_writeVersion";
  v45 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[29] = v45;
  v75[30] = @"root_general_accessibility_vision_voiceOver_enabled_value";
  v44 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[30] = v44;
  v75[31] = @"root_general_accessibility_vision_voiceOver_enabled_readVersion";
  v43 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[31] = v43;
  v75[32] = @"root_general_accessibility_vision_voiceOver_enabled_writeVersion";
  v42 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[32] = v42;
  v75[33] = @"root_general_accessibility_vision_voiceOver_audioDuckingEnabled_value";
  v41 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[33] = v41;
  v75[34] = @"root_general_accessibility_vision_voiceOver_audioDuckingEnabled_readVersion";
  v40 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[34] = v40;
  v75[35] = @"root_general_accessibility_vision_voiceOver_audioDuckingEnabled_writeVersion";
  v39 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[35] = v39;
  v75[36] = @"root_general_accessibility_vision_speakingRateSection_speakingRate_value";
  v38 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[36] = v38;
  v75[37] = @"root_general_accessibility_vision_speakingRateSection_speakingRate_readVersion";
  v37 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[37] = v37;
  v75[38] = @"root_general_accessibility_vision_speakingRateSection_speakingRate_writeVersion";
  v36 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[38] = v36;
  v75[39] = @"root_general_accessibility_interaction_holdDuration_enabled_value";
  v35 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[39] = v35;
  v75[40] = @"root_general_accessibility_interaction_holdDuration_enabled_readVersion";
  v34 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[40] = v34;
  v75[41] = @"root_general_accessibility_interaction_holdDuration_enabled_writeVersion";
  v33 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[41] = v33;
  v75[42] = @"root_general_accessibility_interaction_holdDuration_seconds_value";
  v32 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[42] = v32;
  v75[43] = @"root_general_accessibility_interaction_holdDuration_seconds_readVersion";
  v31 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[43] = v31;
  v75[44] = @"root_general_accessibility_interaction_holdDuration_seconds_writeVersion";
  v30 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[44] = v30;
  v75[45] = @"root_general_accessibility_interaction_touchAccommodations_enabled_value";
  v29 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[45] = v29;
  v75[46] = @"root_general_accessibility_interaction_touchAccommodations_enabled_readVersion";
  v28 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[46] = v28;
  v75[47] = @"root_general_accessibility_interaction_touchAccommodations_enabled_writeVersion";
  v27 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[47] = v27;
  v75[48] = @"root_general_accessibility_interaction_ignoreRepeat_enabled_value";
  v26 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[48] = v26;
  v75[49] = @"root_general_accessibility_interaction_ignoreRepeat_enabled_readVersion";
  v25 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[49] = v25;
  v75[50] = @"root_general_accessibility_interaction_ignoreRepeat_enabled_writeVersion";
  v24 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[50] = v24;
  v75[51] = @"root_general_accessibility_interaction_ignoreRepeat_seconds_value";
  v23 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[51] = v23;
  v75[52] = @"root_general_accessibility_interaction_ignoreRepeat_seconds_readVersion";
  v22 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[52] = v22;
  v75[53] = @"root_general_accessibility_interaction_ignoreRepeat_seconds_writeVersion";
  v21 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[53] = v21;
  v75[54] = @"root_general_analytics_shareSiriAnalytics_value";
  v20 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[54] = v20;
  v75[55] = @"root_general_analytics_shareSiriAnalytics_readVersion";
  v19 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[55] = v19;
  v75[56] = @"root_general_analytics_shareSiriAnalytics_writeVersion";
  v18 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[56] = v18;
  v75[57] = @"root_general_analytics_shareSpeakerAnalytics_value";
  v17 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[57] = v17;
  v75[58] = @"root_general_analytics_shareSpeakerAnalytics_readVersion";
  v16 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[58] = v16;
  v75[59] = @"root_general_analytics_shareSpeakerAnalytics_writeVersion";
  v15 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[59] = v15;
  v75[60] = @"root_music_allowExplicitContent_value";
  v14 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[60] = v14;
  v75[61] = @"root_music_allowExplicitContent_readVersion";
  v13 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[61] = v13;
  v75[62] = @"root_music_allowExplicitContent_writeVersion";
  v12 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[62] = v12;
  v75[63] = @"root_airPlay_airPlayEnabled_value";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[63] = v0;
  v75[64] = @"root_airPlay_airPlayEnabled_readVersion";
  v1 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[64] = v1;
  v75[65] = @"root_airPlay_airPlayEnabled_writeVersion";
  v2 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[65] = v2;
  v75[66] = @"root_siriEndpoint_enabled_value";
  v3 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[66] = v3;
  v75[67] = @"root_siriEndpoint_enabled_readVersion";
  v4 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[67] = v4;
  v75[68] = @"root_siriEndpoint_enabled_writeVersion";
  v5 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[68] = v5;
  v75[69] = @"root_general_accessibility_interaction_tapAssistance_selection_value";
  v6 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[69] = v6;
  v75[70] = @"root_general_accessibility_interaction_tapAssistance_selection_readVersion";
  v7 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[70] = v7;
  v75[71] = @"root_general_accessibility_interaction_tapAssistance_selection_writeVersion";
  v8 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v76[71] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:72];
  v10 = hmbProperties_properties_82649;
  hmbProperties_properties_82649 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setSetting:(id)a3 forKeyPath:(id)a4 withError:(id *)a5
{
  v127 = a3;
  v8 = a4;
  if ([v8 isEqualToString:&stru_286509E58])
  {
    if (!a5)
    {
      goto LABEL_141;
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = 3;
    goto LABEL_4;
  }

  if ([v8 isEqualToString:@"root.siri.soundAlert"])
  {
    v11 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_siri_soundAlert_value:v14];

      v15 = [v13 writeVersion];
      v16 = [v15 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_siri_soundAlert_writeVersion:v16];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_siri_soundAlert_readVersion:v18];
LABEL_137:

LABEL_140:
      goto LABEL_141;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.siri.lightWhenUsingSiri"])
  {
    v19 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v13 = v20;

    if (v13)
    {
      v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_siri_lightWhenUsingSiri_value:v21];

      v22 = [v13 writeVersion];
      v23 = [v22 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_siri_lightWhenUsingSiri_writeVersion:v23];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_siri_lightWhenUsingSiri_readVersion:v18];
      goto LABEL_137;
    }

LABEL_138:
    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    }

    goto LABEL_140;
  }

  if ([v8 isEqualToString:@"root.siri.siriEnabled"])
  {
    v24 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v13 = v25;

    if (v13)
    {
      v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_siri_siriEnabled_value:v26];

      v27 = [v13 writeVersion];
      v28 = [v27 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_siri_siriEnabled_writeVersion:v28];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_siri_siriEnabled_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.siri.language"])
  {
    v29 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v13 = v30;

    if (v13)
    {
      v31 = [v13 inputLanguageCode];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_siri_language_inputLanguageCodeValueName:v31];

      v32 = [v13 outputVoiceGenderCode];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_siri_language_outputLanguageGenderCodeValueName:v32];

      v33 = [v13 outputVoiceLanguageCode];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_siri_language_outputLanguageVoiceCodeValueName:v33];

      v34 = [v13 voiceName];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_siri_language_voiceNameValueName:v34];

      v35 = [v13 writeVersion];
      v36 = [v35 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_siri_language_writeVersion:v36];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_siri_language_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.home.dismissedHomePodHasNonMemberMediaAccountWarning"])
  {
    v37 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v13 = v38;

    if (v13)
    {
      v39 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_home_dismissedHomePodHasNonMemberMediaAccountWarning_value:v39];

      v40 = [v13 writeVersion];
      v41 = [v40 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_home_dismissedHomePodHasNonMemberMediaAccountWarning_writeVersion:v41];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_home_dismissedHomePodHasNonMemberMediaAccountWarning_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.locationServices.enabled"])
  {
    v42 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    v13 = v43;

    if (v13)
    {
      v44 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_locationServices_enabled_value:v44];

      v45 = [v13 writeVersion];
      v46 = [v45 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_locationServices_enabled_writeVersion:v46];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_locationServices_enabled_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.doorbellChime.enabled"])
  {
    v47 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }

    v13 = v48;

    if (v13)
    {
      v49 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_doorbellChime_enabled_value:v49];

      v50 = [v13 writeVersion];
      v51 = [v50 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_doorbellChime_enabled_writeVersion:v51];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_doorbellChime_enabled_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.announce.enabled"])
  {
    v52 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    v13 = v53;

    if (v13)
    {
      v54 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_announce_enabled_value:v54];

      v55 = [v13 writeVersion];
      v56 = [v55 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_announce_enabled_writeVersion:v56];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_announce_enabled_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.general.accessibility.vision.doubleTapSettings.timeoutSettings.timeoutInterval"])
  {
    v57 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    v13 = v58;

    if (v13)
    {
      v59 = [v13 numberValue];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_value:v59];

      v60 = [v13 writeVersion];
      v61 = [v60 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_writeVersion:v61];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.general.accessibility.vision.voiceOver.enabled"])
  {
    v62 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = v62;
    }

    else
    {
      v63 = 0;
    }

    v13 = v63;

    if (v13)
    {
      v64 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_vision_voiceOver_enabled_value:v64];

      v65 = [v13 writeVersion];
      v66 = [v65 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_vision_voiceOver_enabled_writeVersion:v66];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_vision_voiceOver_enabled_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.general.accessibility.vision.voiceOver.audioDuckingEnabled"])
  {
    v67 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v68 = v67;
    }

    else
    {
      v68 = 0;
    }

    v13 = v68;

    if (v13)
    {
      v69 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_vision_voiceOver_audioDuckingEnabled_value:v69];

      v70 = [v13 writeVersion];
      v71 = [v70 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_vision_voiceOver_audioDuckingEnabled_writeVersion:v71];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_vision_voiceOver_audioDuckingEnabled_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.general.accessibility.vision.speakingRateSection.speakingRate"])
  {
    v72 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v73 = v72;
    }

    else
    {
      v73 = 0;
    }

    v13 = v73;

    if (v13)
    {
      v74 = [v13 numberValue];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_vision_speakingRateSection_speakingRate_value:v74];

      v75 = [v13 writeVersion];
      v76 = [v75 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_vision_speakingRateSection_speakingRate_writeVersion:v76];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_vision_speakingRateSection_speakingRate_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.general.accessibility.interaction.holdDuration.enabled"])
  {
    v77 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v78 = v77;
    }

    else
    {
      v78 = 0;
    }

    v13 = v78;

    if (v13)
    {
      v79 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_interaction_holdDuration_enabled_value:v79];

      v80 = [v13 writeVersion];
      v81 = [v80 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_interaction_holdDuration_enabled_writeVersion:v81];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_interaction_holdDuration_enabled_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.general.accessibility.interaction.holdDuration.seconds"])
  {
    v82 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v83 = v82;
    }

    else
    {
      v83 = 0;
    }

    v13 = v83;

    if (v13)
    {
      v84 = [v13 numberValue];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_interaction_holdDuration_seconds_value:v84];

      v85 = [v13 writeVersion];
      v86 = [v85 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_interaction_holdDuration_seconds_writeVersion:v86];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_interaction_holdDuration_seconds_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.general.accessibility.interaction.touchAccommodations.enabled"])
  {
    v87 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v88 = v87;
    }

    else
    {
      v88 = 0;
    }

    v13 = v88;

    if (v13)
    {
      v89 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_interaction_touchAccommodations_enabled_value:v89];

      v90 = [v13 writeVersion];
      v91 = [v90 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_interaction_touchAccommodations_enabled_writeVersion:v91];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_interaction_touchAccommodations_enabled_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.general.accessibility.interaction.ignoreRepeat.enabled"])
  {
    v92 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v93 = v92;
    }

    else
    {
      v93 = 0;
    }

    v13 = v93;

    if (v13)
    {
      v94 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_interaction_ignoreRepeat_enabled_value:v94];

      v95 = [v13 writeVersion];
      v96 = [v95 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_interaction_ignoreRepeat_enabled_writeVersion:v96];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_interaction_ignoreRepeat_enabled_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.general.accessibility.interaction.ignoreRepeat.seconds"])
  {
    v97 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v98 = v97;
    }

    else
    {
      v98 = 0;
    }

    v13 = v98;

    if (v13)
    {
      v99 = [v13 numberValue];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_interaction_ignoreRepeat_seconds_value:v99];

      v100 = [v13 writeVersion];
      v101 = [v100 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_interaction_ignoreRepeat_seconds_writeVersion:v101];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_accessibility_interaction_ignoreRepeat_seconds_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.general.analytics.shareSiriAnalytics"])
  {
    v102 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v103 = v102;
    }

    else
    {
      v103 = 0;
    }

    v13 = v103;

    if (v13)
    {
      v104 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_analytics_shareSiriAnalytics_value:v104];

      v105 = [v13 writeVersion];
      v106 = [v105 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_analytics_shareSiriAnalytics_writeVersion:v106];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_analytics_shareSiriAnalytics_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.general.analytics.shareSpeakerAnalytics"])
  {
    v107 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v108 = v107;
    }

    else
    {
      v108 = 0;
    }

    v13 = v108;

    if (v13)
    {
      v109 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_analytics_shareSpeakerAnalytics_value:v109];

      v110 = [v13 writeVersion];
      v111 = [v110 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_analytics_shareSpeakerAnalytics_writeVersion:v111];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_general_analytics_shareSpeakerAnalytics_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.music.allowExplicitContent"])
  {
    v112 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v113 = v112;
    }

    else
    {
      v113 = 0;
    }

    v13 = v113;

    if (v13)
    {
      v114 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_music_allowExplicitContent_value:v114];

      v115 = [v13 writeVersion];
      v116 = [v115 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_music_allowExplicitContent_writeVersion:v116];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_music_allowExplicitContent_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.airPlay.airPlayEnabled"])
  {
    v117 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v118 = v117;
    }

    else
    {
      v118 = 0;
    }

    v13 = v118;

    if (v13)
    {
      v119 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_airPlay_airPlayEnabled_value:v119];

      v120 = [v13 writeVersion];
      v121 = [v120 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_airPlay_airPlayEnabled_writeVersion:v121];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_airPlay_airPlayEnabled_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if ([v8 isEqualToString:@"root.siriEndpoint.enabled"])
  {
    v122 = v127;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v123 = v122;
    }

    else
    {
      v123 = 0;
    }

    v13 = v123;

    if (v13)
    {
      v124 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_siriEndpoint_enabled_value:v124];

      v125 = [v13 writeVersion];
      v126 = [v125 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_siriEndpoint_enabled_writeVersion:v126];

      v17 = [v13 readVersion];
      v18 = [v17 versionString];
      [(HMDCompositeSettingsAccessorySettingsModel *)self setRoot_siriEndpoint_enabled_readVersion:v18];
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  if (a5)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = 5;
LABEL_4:
    *a5 = [v9 hmfErrorWithCode:v10];
  }

LABEL_141:
}

- (id)keyPathsToSettingsForMigration
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_soundAlert_value];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_soundAlert_readVersion];
  if (!v6)
  {

    goto LABEL_7;
  }

  v7 = v6;
  v8 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_soundAlert_writeVersion];

  if (!v8)
  {
LABEL_7:
    v13 = [HMDCompositeBoolSetting alloc];
    v14 = +[HMDHomeKitVersion version7];
    v15 = +[HMDHomeKitVersion version7];
    v16 = [(HMDCompositeBoolSetting *)v13 initWithValue:0 readVersion:v14 writeVersion:v15];
    [v3 setObject:v16 forKeyedSubscript:@"root.siri.soundAlert"];
    goto LABEL_8;
  }

  v9 = +[HMDHomeKitVersion version7];
  v10 = objc_alloc(MEMORY[0x277D0F940]);
  v11 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_soundAlert_readVersion];
  v12 = [v10 initWithString:v11];
  if ([v9 isGreaterThanVersion:v12])
  {
  }

  else
  {
    v56 = +[HMDHomeKitVersion version7];
    v57 = objc_alloc(MEMORY[0x277D0F940]);
    v58 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_soundAlert_writeVersion];
    v59 = [v57 initWithString:v58];
    v60 = [v56 isGreaterThanVersion:v59];

    if (!v60)
    {
      goto LABEL_9;
    }
  }

  v61 = [HMDCompositeBoolSetting alloc];
  v14 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_soundAlert_value];
  v62 = [v14 BOOLValue];
  v15 = +[HMDHomeKitVersion version7];
  v16 = +[HMDHomeKitVersion version7];
  v63 = [(HMDCompositeBoolSetting *)v61 initWithValue:v62 readVersion:v15 writeVersion:v16];
  [v3 setObject:v63 forKeyedSubscript:@"root.siri.soundAlert"];

LABEL_8:
LABEL_9:
  v17 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_lightWhenUsingSiri_value];
  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = v17;
  v19 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_lightWhenUsingSiri_readVersion];
  if (!v19)
  {

    goto LABEL_15;
  }

  v20 = v19;
  v21 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_lightWhenUsingSiri_writeVersion];

  if (!v21)
  {
LABEL_15:
    v26 = [HMDCompositeBoolSetting alloc];
    v27 = +[HMDHomeKitVersion version7];
    v28 = +[HMDHomeKitVersion version7];
    v29 = [(HMDCompositeBoolSetting *)v26 initWithValue:0 readVersion:v27 writeVersion:v28];
    [v3 setObject:v29 forKeyedSubscript:@"root.siri.lightWhenUsingSiri"];
    goto LABEL_16;
  }

  v22 = +[HMDHomeKitVersion version7];
  v23 = objc_alloc(MEMORY[0x277D0F940]);
  v24 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_lightWhenUsingSiri_readVersion];
  v25 = [v23 initWithString:v24];
  if ([v22 isGreaterThanVersion:v25])
  {
  }

  else
  {
    v64 = +[HMDHomeKitVersion version7];
    v65 = objc_alloc(MEMORY[0x277D0F940]);
    v66 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_lightWhenUsingSiri_writeVersion];
    v67 = [v65 initWithString:v66];
    v68 = [v64 isGreaterThanVersion:v67];

    if (!v68)
    {
      goto LABEL_17;
    }
  }

  v69 = [HMDCompositeBoolSetting alloc];
  v27 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_lightWhenUsingSiri_value];
  v70 = [v27 BOOLValue];
  v28 = +[HMDHomeKitVersion version7];
  v29 = +[HMDHomeKitVersion version7];
  v71 = [(HMDCompositeBoolSetting *)v69 initWithValue:v70 readVersion:v28 writeVersion:v29];
  [v3 setObject:v71 forKeyedSubscript:@"root.siri.lightWhenUsingSiri"];

LABEL_16:
LABEL_17:
  v30 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_siriEnabled_value];
  if (!v30)
  {
    goto LABEL_23;
  }

  v31 = v30;
  v32 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_siriEnabled_readVersion];
  if (!v32)
  {

    goto LABEL_23;
  }

  v33 = v32;
  v34 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_siriEnabled_writeVersion];

  if (!v34)
  {
LABEL_23:
    v39 = [HMDCompositeBoolSetting alloc];
    v40 = +[HMDHomeKitVersion version7];
    v41 = +[HMDHomeKitVersion version7];
    v42 = [(HMDCompositeBoolSetting *)v39 initWithValue:0 readVersion:v40 writeVersion:v41];
    [v3 setObject:v42 forKeyedSubscript:@"root.siri.siriEnabled"];
LABEL_24:

    goto LABEL_25;
  }

  v35 = +[HMDHomeKitVersion version7];
  v36 = objc_alloc(MEMORY[0x277D0F940]);
  v37 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_siriEnabled_readVersion];
  v38 = [v36 initWithString:v37];
  if ([v35 isGreaterThanVersion:v38])
  {

LABEL_37:
    v77 = [HMDCompositeBoolSetting alloc];
    v40 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_siriEnabled_value];
    v78 = [v40 BOOLValue];
    v41 = +[HMDHomeKitVersion version7];
    v42 = +[HMDHomeKitVersion version7];
    v79 = [(HMDCompositeBoolSetting *)v77 initWithValue:v78 readVersion:v41 writeVersion:v42];
    [v3 setObject:v79 forKeyedSubscript:@"root.siri.siriEnabled"];

    goto LABEL_24;
  }

  v72 = +[HMDHomeKitVersion version7];
  v73 = objc_alloc(MEMORY[0x277D0F940]);
  v74 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_siriEnabled_writeVersion];
  v75 = [v73 initWithString:v74];
  v76 = [v72 isGreaterThanVersion:v75];

  if (v76)
  {
    goto LABEL_37;
  }

LABEL_25:
  v43 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_inputLanguageCodeValueName];
  if (!v43)
  {
LABEL_41:
    v80 = [HMDCompositeLanguageSetting alloc];
    v81 = +[HMDHomeKitVersion version7];
    v82 = +[HMDHomeKitVersion version7];
    v83 = [(HMDCompositeLanguageSetting *)v80 initWithInputLanguage:@"en-US" outputVoiceLanguageCode:@"en-US" outputVoiceGenderCode:@"f" voiceName:0 readVersion:v81 writeVersion:v82];
    [v3 setObject:v83 forKeyedSubscript:@"root.siri.language"];
    goto LABEL_42;
  }

  v44 = v43;
  v45 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_readVersion];
  if (!v45)
  {
LABEL_40:

    goto LABEL_41;
  }

  v46 = v45;
  v47 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_writeVersion];
  if (!v47)
  {
LABEL_39:

    goto LABEL_40;
  }

  v48 = v47;
  v49 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_outputLanguageVoiceCodeValueName];
  if (!v49)
  {

    goto LABEL_39;
  }

  v50 = v49;
  v51 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_outputLanguageGenderCodeValueName];

  if (!v51)
  {
    goto LABEL_41;
  }

  v52 = +[HMDHomeKitVersion version7];
  v53 = objc_alloc(MEMORY[0x277D0F940]);
  v54 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_readVersion];
  v55 = [v53 initWithString:v54];
  if ([v52 isGreaterThanVersion:v55])
  {
  }

  else
  {
    v460 = +[HMDHomeKitVersion version7];
    v461 = objc_alloc(MEMORY[0x277D0F940]);
    v462 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_writeVersion];
    v463 = [v461 initWithString:v462];
    v464 = [v460 isGreaterThanVersion:v463];

    if (!v464)
    {
      goto LABEL_43;
    }
  }

  v465 = [HMDCompositeLanguageSetting alloc];
  v81 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_inputLanguageCodeValueName];
  v82 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_outputLanguageVoiceCodeValueName];
  v83 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_outputLanguageGenderCodeValueName];
  v466 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_voiceNameValueName];
  v467 = +[HMDHomeKitVersion version7];
  v468 = +[HMDHomeKitVersion version7];
  v469 = [(HMDCompositeLanguageSetting *)v465 initWithInputLanguage:v81 outputVoiceLanguageCode:v82 outputVoiceGenderCode:v83 voiceName:v466 readVersion:v467 writeVersion:v468];
  [v3 setObject:v469 forKeyedSubscript:@"root.siri.language"];

LABEL_42:
LABEL_43:
  v84 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_home_dismissedHomePodHasNonMemberMediaAccountWarning_value];
  if (!v84)
  {
    goto LABEL_49;
  }

  v85 = v84;
  v86 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_home_dismissedHomePodHasNonMemberMediaAccountWarning_readVersion];
  if (!v86)
  {

    goto LABEL_49;
  }

  v87 = v86;
  v88 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_home_dismissedHomePodHasNonMemberMediaAccountWarning_writeVersion];

  if (!v88)
  {
LABEL_49:
    v93 = [HMDCompositeBoolSetting alloc];
    v94 = +[HMDHomeKitVersion version7];
    v95 = +[HMDHomeKitVersion version7];
    v96 = [(HMDCompositeBoolSetting *)v93 initWithValue:0 readVersion:v94 writeVersion:v95];
    [v3 setObject:v96 forKeyedSubscript:@"root.home.dismissedHomePodHasNonMemberMediaAccountWarning"];
    goto LABEL_50;
  }

  v89 = +[HMDHomeKitVersion version7];
  v90 = objc_alloc(MEMORY[0x277D0F940]);
  v91 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_home_dismissedHomePodHasNonMemberMediaAccountWarning_readVersion];
  v92 = [v90 initWithString:v91];
  if ([v89 isGreaterThanVersion:v92])
  {
  }

  else
  {
    v320 = +[HMDHomeKitVersion version7];
    v321 = objc_alloc(MEMORY[0x277D0F940]);
    v322 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_home_dismissedHomePodHasNonMemberMediaAccountWarning_writeVersion];
    v323 = [v321 initWithString:v322];
    v324 = [v320 isGreaterThanVersion:v323];

    if (!v324)
    {
      goto LABEL_51;
    }
  }

  v325 = [HMDCompositeBoolSetting alloc];
  v94 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_home_dismissedHomePodHasNonMemberMediaAccountWarning_value];
  v326 = [v94 BOOLValue];
  v95 = +[HMDHomeKitVersion version7];
  v96 = +[HMDHomeKitVersion version7];
  v327 = [(HMDCompositeBoolSetting *)v325 initWithValue:v326 readVersion:v95 writeVersion:v96];
  [v3 setObject:v327 forKeyedSubscript:@"root.home.dismissedHomePodHasNonMemberMediaAccountWarning"];

LABEL_50:
LABEL_51:
  v97 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_locationServices_enabled_value];
  if (!v97)
  {
    goto LABEL_57;
  }

  v98 = v97;
  v99 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_locationServices_enabled_readVersion];
  if (!v99)
  {

    goto LABEL_57;
  }

  v100 = v99;
  v101 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_locationServices_enabled_writeVersion];

  if (!v101)
  {
LABEL_57:
    v106 = [HMDCompositeBoolSetting alloc];
    v107 = +[HMDHomeKitVersion version7];
    v108 = +[HMDHomeKitVersion version7];
    v109 = [(HMDCompositeBoolSetting *)v106 initWithValue:0 readVersion:v107 writeVersion:v108];
    [v3 setObject:v109 forKeyedSubscript:@"root.locationServices.enabled"];
    goto LABEL_58;
  }

  v102 = +[HMDHomeKitVersion version7];
  v103 = objc_alloc(MEMORY[0x277D0F940]);
  v104 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_locationServices_enabled_readVersion];
  v105 = [v103 initWithString:v104];
  if ([v102 isGreaterThanVersion:v105])
  {
  }

  else
  {
    v328 = +[HMDHomeKitVersion version7];
    v329 = objc_alloc(MEMORY[0x277D0F940]);
    v330 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_locationServices_enabled_writeVersion];
    v331 = [v329 initWithString:v330];
    v332 = [v328 isGreaterThanVersion:v331];

    if (!v332)
    {
      goto LABEL_59;
    }
  }

  v333 = [HMDCompositeBoolSetting alloc];
  v107 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_locationServices_enabled_value];
  v334 = [v107 BOOLValue];
  v108 = +[HMDHomeKitVersion version7];
  v109 = +[HMDHomeKitVersion version7];
  v335 = [(HMDCompositeBoolSetting *)v333 initWithValue:v334 readVersion:v108 writeVersion:v109];
  [v3 setObject:v335 forKeyedSubscript:@"root.locationServices.enabled"];

LABEL_58:
LABEL_59:
  v110 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_doorbellChime_enabled_value];
  if (!v110)
  {
    goto LABEL_65;
  }

  v111 = v110;
  v112 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_doorbellChime_enabled_readVersion];
  if (!v112)
  {

    goto LABEL_65;
  }

  v113 = v112;
  v114 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_doorbellChime_enabled_writeVersion];

  if (!v114)
  {
LABEL_65:
    v119 = [HMDCompositeBoolSetting alloc];
    v120 = +[HMDHomeKitVersion version7];
    v121 = +[HMDHomeKitVersion version7];
    v122 = [(HMDCompositeBoolSetting *)v119 initWithValue:0 readVersion:v120 writeVersion:v121];
    [v3 setObject:v122 forKeyedSubscript:@"root.doorbellChime.enabled"];
    goto LABEL_66;
  }

  v115 = +[HMDHomeKitVersion version7];
  v116 = objc_alloc(MEMORY[0x277D0F940]);
  v117 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_doorbellChime_enabled_readVersion];
  v118 = [v116 initWithString:v117];
  if ([v115 isGreaterThanVersion:v118])
  {
  }

  else
  {
    v336 = +[HMDHomeKitVersion version7];
    v337 = objc_alloc(MEMORY[0x277D0F940]);
    v338 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_doorbellChime_enabled_writeVersion];
    v339 = [v337 initWithString:v338];
    v340 = [v336 isGreaterThanVersion:v339];

    if (!v340)
    {
      goto LABEL_67;
    }
  }

  v341 = [HMDCompositeBoolSetting alloc];
  v120 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_doorbellChime_enabled_value];
  v342 = [v120 BOOLValue];
  v121 = +[HMDHomeKitVersion version7];
  v122 = +[HMDHomeKitVersion version7];
  v343 = [(HMDCompositeBoolSetting *)v341 initWithValue:v342 readVersion:v121 writeVersion:v122];
  [v3 setObject:v343 forKeyedSubscript:@"root.doorbellChime.enabled"];

LABEL_66:
LABEL_67:
  v123 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_announce_enabled_value];
  if (!v123)
  {
    goto LABEL_73;
  }

  v124 = v123;
  v125 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_announce_enabled_readVersion];
  if (!v125)
  {

    goto LABEL_73;
  }

  v126 = v125;
  v127 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_announce_enabled_writeVersion];

  if (!v127)
  {
LABEL_73:
    v132 = [HMDCompositeBoolSetting alloc];
    v133 = +[HMDHomeKitVersion version7];
    v134 = +[HMDHomeKitVersion version7];
    v135 = [(HMDCompositeBoolSetting *)v132 initWithValue:0 readVersion:v133 writeVersion:v134];
    [v3 setObject:v135 forKeyedSubscript:@"root.announce.enabled"];
    goto LABEL_74;
  }

  v128 = +[HMDHomeKitVersion version7];
  v129 = objc_alloc(MEMORY[0x277D0F940]);
  v130 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_announce_enabled_readVersion];
  v131 = [v129 initWithString:v130];
  if ([v128 isGreaterThanVersion:v131])
  {
  }

  else
  {
    v344 = +[HMDHomeKitVersion version7];
    v345 = objc_alloc(MEMORY[0x277D0F940]);
    v346 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_announce_enabled_writeVersion];
    v347 = [v345 initWithString:v346];
    v348 = [v344 isGreaterThanVersion:v347];

    if (!v348)
    {
      goto LABEL_75;
    }
  }

  v349 = [HMDCompositeBoolSetting alloc];
  v133 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_announce_enabled_value];
  v350 = [v133 BOOLValue];
  v134 = +[HMDHomeKitVersion version7];
  v135 = +[HMDHomeKitVersion version7];
  v351 = [(HMDCompositeBoolSetting *)v349 initWithValue:v350 readVersion:v134 writeVersion:v135];
  [v3 setObject:v351 forKeyedSubscript:@"root.announce.enabled"];

LABEL_74:
LABEL_75:
  v136 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_value];
  if (!v136)
  {
    goto LABEL_81;
  }

  v137 = v136;
  v138 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_readVersion];
  if (!v138)
  {

    goto LABEL_81;
  }

  v139 = v138;
  v140 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_writeVersion];

  if (!v140)
  {
LABEL_81:
    v145 = [HMDCompositeNumberSetting alloc];
    v146 = +[HMDHomeKitVersion version7];
    v147 = +[HMDHomeKitVersion version7];
    v148 = [(HMDCompositeNumberSetting *)v145 initWithValue:&unk_286628528 readVersion:v146 writeVersion:v147];
    [v3 setObject:v148 forKeyedSubscript:@"root.general.accessibility.vision.doubleTapSettings.timeoutSettings.timeoutInterval"];
    goto LABEL_82;
  }

  v141 = +[HMDHomeKitVersion version7];
  v142 = objc_alloc(MEMORY[0x277D0F940]);
  v143 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_readVersion];
  v144 = [v142 initWithString:v143];
  if ([v141 isGreaterThanVersion:v144])
  {
  }

  else
  {
    v352 = +[HMDHomeKitVersion version7];
    v353 = objc_alloc(MEMORY[0x277D0F940]);
    v354 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_writeVersion];
    v355 = [v353 initWithString:v354];
    v356 = [v352 isGreaterThanVersion:v355];

    if (!v356)
    {
      goto LABEL_83;
    }
  }

  v357 = [HMDCompositeNumberSetting alloc];
  v146 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_value];
  v147 = +[HMDHomeKitVersion version7];
  v148 = +[HMDHomeKitVersion version7];
  v358 = [(HMDCompositeNumberSetting *)v357 initWithValue:v146 readVersion:v147 writeVersion:v148];
  [v3 setObject:v358 forKeyedSubscript:@"root.general.accessibility.vision.doubleTapSettings.timeoutSettings.timeoutInterval"];

LABEL_82:
LABEL_83:
  v149 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_enabled_value];
  if (!v149)
  {
    goto LABEL_89;
  }

  v150 = v149;
  v151 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_enabled_readVersion];
  if (!v151)
  {

    goto LABEL_89;
  }

  v152 = v151;
  v153 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_enabled_writeVersion];

  if (!v153)
  {
LABEL_89:
    v158 = [HMDCompositeBoolSetting alloc];
    v159 = +[HMDHomeKitVersion version7];
    v160 = +[HMDHomeKitVersion version7];
    v161 = [(HMDCompositeBoolSetting *)v158 initWithValue:0 readVersion:v159 writeVersion:v160];
    [v3 setObject:v161 forKeyedSubscript:@"root.general.accessibility.vision.voiceOver.enabled"];
    goto LABEL_90;
  }

  v154 = +[HMDHomeKitVersion version7];
  v155 = objc_alloc(MEMORY[0x277D0F940]);
  v156 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_enabled_readVersion];
  v157 = [v155 initWithString:v156];
  if ([v154 isGreaterThanVersion:v157])
  {
  }

  else
  {
    v359 = +[HMDHomeKitVersion version7];
    v360 = objc_alloc(MEMORY[0x277D0F940]);
    v361 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_enabled_writeVersion];
    v362 = [v360 initWithString:v361];
    v363 = [v359 isGreaterThanVersion:v362];

    if (!v363)
    {
      goto LABEL_91;
    }
  }

  v364 = [HMDCompositeBoolSetting alloc];
  v159 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_enabled_value];
  v365 = [v159 BOOLValue];
  v160 = +[HMDHomeKitVersion version7];
  v161 = +[HMDHomeKitVersion version7];
  v366 = [(HMDCompositeBoolSetting *)v364 initWithValue:v365 readVersion:v160 writeVersion:v161];
  [v3 setObject:v366 forKeyedSubscript:@"root.general.accessibility.vision.voiceOver.enabled"];

LABEL_90:
LABEL_91:
  v162 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_audioDuckingEnabled_value];
  if (!v162)
  {
    goto LABEL_97;
  }

  v163 = v162;
  v164 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_audioDuckingEnabled_readVersion];
  if (!v164)
  {

    goto LABEL_97;
  }

  v165 = v164;
  v166 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_audioDuckingEnabled_writeVersion];

  if (!v166)
  {
LABEL_97:
    v171 = [HMDCompositeBoolSetting alloc];
    v172 = +[HMDHomeKitVersion version7];
    v173 = +[HMDHomeKitVersion version7];
    v174 = [(HMDCompositeBoolSetting *)v171 initWithValue:0 readVersion:v172 writeVersion:v173];
    [v3 setObject:v174 forKeyedSubscript:@"root.general.accessibility.vision.voiceOver.audioDuckingEnabled"];
    goto LABEL_98;
  }

  v167 = +[HMDHomeKitVersion version7];
  v168 = objc_alloc(MEMORY[0x277D0F940]);
  v169 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_audioDuckingEnabled_readVersion];
  v170 = [v168 initWithString:v169];
  if ([v167 isGreaterThanVersion:v170])
  {
  }

  else
  {
    v367 = +[HMDHomeKitVersion version7];
    v368 = objc_alloc(MEMORY[0x277D0F940]);
    v369 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_audioDuckingEnabled_writeVersion];
    v370 = [v368 initWithString:v369];
    v371 = [v367 isGreaterThanVersion:v370];

    if (!v371)
    {
      goto LABEL_99;
    }
  }

  v372 = [HMDCompositeBoolSetting alloc];
  v172 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_audioDuckingEnabled_value];
  v373 = [v172 BOOLValue];
  v173 = +[HMDHomeKitVersion version7];
  v174 = +[HMDHomeKitVersion version7];
  v374 = [(HMDCompositeBoolSetting *)v372 initWithValue:v373 readVersion:v173 writeVersion:v174];
  [v3 setObject:v374 forKeyedSubscript:@"root.general.accessibility.vision.voiceOver.audioDuckingEnabled"];

LABEL_98:
LABEL_99:
  v175 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_speakingRateSection_speakingRate_value];
  if (!v175)
  {
    goto LABEL_105;
  }

  v176 = v175;
  v177 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_speakingRateSection_speakingRate_readVersion];
  if (!v177)
  {

    goto LABEL_105;
  }

  v178 = v177;
  v179 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_speakingRateSection_speakingRate_writeVersion];

  if (!v179)
  {
LABEL_105:
    v184 = [HMDCompositeNumberSetting alloc];
    v185 = +[HMDHomeKitVersion version7];
    v186 = +[HMDHomeKitVersion version7];
    v187 = [(HMDCompositeNumberSetting *)v184 initWithValue:&unk_286628540 readVersion:v185 writeVersion:v186];
    [v3 setObject:v187 forKeyedSubscript:@"root.general.accessibility.vision.speakingRateSection.speakingRate"];
    goto LABEL_106;
  }

  v180 = +[HMDHomeKitVersion version7];
  v181 = objc_alloc(MEMORY[0x277D0F940]);
  v182 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_speakingRateSection_speakingRate_readVersion];
  v183 = [v181 initWithString:v182];
  if ([v180 isGreaterThanVersion:v183])
  {
  }

  else
  {
    v375 = +[HMDHomeKitVersion version7];
    v376 = objc_alloc(MEMORY[0x277D0F940]);
    v377 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_speakingRateSection_speakingRate_writeVersion];
    v378 = [v376 initWithString:v377];
    v379 = [v375 isGreaterThanVersion:v378];

    if (!v379)
    {
      goto LABEL_107;
    }
  }

  v380 = [HMDCompositeNumberSetting alloc];
  v185 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_speakingRateSection_speakingRate_value];
  v186 = +[HMDHomeKitVersion version7];
  v187 = +[HMDHomeKitVersion version7];
  v381 = [(HMDCompositeNumberSetting *)v380 initWithValue:v185 readVersion:v186 writeVersion:v187];
  [v3 setObject:v381 forKeyedSubscript:@"root.general.accessibility.vision.speakingRateSection.speakingRate"];

LABEL_106:
LABEL_107:
  v188 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_enabled_value];
  if (!v188)
  {
    goto LABEL_113;
  }

  v189 = v188;
  v190 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_enabled_readVersion];
  if (!v190)
  {

    goto LABEL_113;
  }

  v191 = v190;
  v192 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_enabled_writeVersion];

  if (!v192)
  {
LABEL_113:
    v197 = [HMDCompositeBoolSetting alloc];
    v198 = +[HMDHomeKitVersion version7];
    v199 = +[HMDHomeKitVersion version7];
    v200 = [(HMDCompositeBoolSetting *)v197 initWithValue:0 readVersion:v198 writeVersion:v199];
    [v3 setObject:v200 forKeyedSubscript:@"root.general.accessibility.interaction.holdDuration.enabled"];
    goto LABEL_114;
  }

  v193 = +[HMDHomeKitVersion version7];
  v194 = objc_alloc(MEMORY[0x277D0F940]);
  v195 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_enabled_readVersion];
  v196 = [v194 initWithString:v195];
  if ([v193 isGreaterThanVersion:v196])
  {
  }

  else
  {
    v382 = +[HMDHomeKitVersion version7];
    v383 = objc_alloc(MEMORY[0x277D0F940]);
    v384 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_enabled_writeVersion];
    v385 = [v383 initWithString:v384];
    v386 = [v382 isGreaterThanVersion:v385];

    if (!v386)
    {
      goto LABEL_115;
    }
  }

  v387 = [HMDCompositeBoolSetting alloc];
  v198 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_enabled_value];
  v388 = [v198 BOOLValue];
  v199 = +[HMDHomeKitVersion version7];
  v200 = +[HMDHomeKitVersion version7];
  v389 = [(HMDCompositeBoolSetting *)v387 initWithValue:v388 readVersion:v199 writeVersion:v200];
  [v3 setObject:v389 forKeyedSubscript:@"root.general.accessibility.interaction.holdDuration.enabled"];

LABEL_114:
LABEL_115:
  v201 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_seconds_value];
  if (!v201)
  {
    goto LABEL_121;
  }

  v202 = v201;
  v203 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_seconds_readVersion];
  if (!v203)
  {

    goto LABEL_121;
  }

  v204 = v203;
  v205 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_seconds_writeVersion];

  if (!v205)
  {
LABEL_121:
    v210 = [HMDCompositeNumberSetting alloc];
    v211 = +[HMDHomeKitVersion version7];
    v212 = +[HMDHomeKitVersion version7];
    v213 = [(HMDCompositeNumberSetting *)v210 initWithValue:&unk_286628558 readVersion:v211 writeVersion:v212];
    [v3 setObject:v213 forKeyedSubscript:@"root.general.accessibility.interaction.holdDuration.seconds"];
    goto LABEL_122;
  }

  v206 = +[HMDHomeKitVersion version7];
  v207 = objc_alloc(MEMORY[0x277D0F940]);
  v208 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_seconds_readVersion];
  v209 = [v207 initWithString:v208];
  if ([v206 isGreaterThanVersion:v209])
  {
  }

  else
  {
    v390 = +[HMDHomeKitVersion version7];
    v391 = objc_alloc(MEMORY[0x277D0F940]);
    v392 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_seconds_writeVersion];
    v393 = [v391 initWithString:v392];
    v394 = [v390 isGreaterThanVersion:v393];

    if (!v394)
    {
      goto LABEL_123;
    }
  }

  v395 = [HMDCompositeNumberSetting alloc];
  v211 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_seconds_value];
  v212 = +[HMDHomeKitVersion version7];
  v213 = +[HMDHomeKitVersion version7];
  v396 = [(HMDCompositeNumberSetting *)v395 initWithValue:v211 readVersion:v212 writeVersion:v213];
  [v3 setObject:v396 forKeyedSubscript:@"root.general.accessibility.interaction.holdDuration.seconds"];

LABEL_122:
LABEL_123:
  v214 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_touchAccommodations_enabled_value];
  if (!v214)
  {
    goto LABEL_129;
  }

  v215 = v214;
  v216 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_touchAccommodations_enabled_readVersion];
  if (!v216)
  {

    goto LABEL_129;
  }

  v217 = v216;
  v218 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_touchAccommodations_enabled_writeVersion];

  if (!v218)
  {
LABEL_129:
    v223 = [HMDCompositeBoolSetting alloc];
    v224 = +[HMDHomeKitVersion version7];
    v225 = +[HMDHomeKitVersion version7];
    v226 = [(HMDCompositeBoolSetting *)v223 initWithValue:0 readVersion:v224 writeVersion:v225];
    [v3 setObject:v226 forKeyedSubscript:@"root.general.accessibility.interaction.touchAccommodations.enabled"];
    goto LABEL_130;
  }

  v219 = +[HMDHomeKitVersion version7];
  v220 = objc_alloc(MEMORY[0x277D0F940]);
  v221 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_touchAccommodations_enabled_readVersion];
  v222 = [v220 initWithString:v221];
  if ([v219 isGreaterThanVersion:v222])
  {
  }

  else
  {
    v397 = +[HMDHomeKitVersion version7];
    v398 = objc_alloc(MEMORY[0x277D0F940]);
    v399 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_touchAccommodations_enabled_writeVersion];
    v400 = [v398 initWithString:v399];
    v401 = [v397 isGreaterThanVersion:v400];

    if (!v401)
    {
      goto LABEL_131;
    }
  }

  v402 = [HMDCompositeBoolSetting alloc];
  v224 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_touchAccommodations_enabled_value];
  v403 = [v224 BOOLValue];
  v225 = +[HMDHomeKitVersion version7];
  v226 = +[HMDHomeKitVersion version7];
  v404 = [(HMDCompositeBoolSetting *)v402 initWithValue:v403 readVersion:v225 writeVersion:v226];
  [v3 setObject:v404 forKeyedSubscript:@"root.general.accessibility.interaction.touchAccommodations.enabled"];

LABEL_130:
LABEL_131:
  v227 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_enabled_value];
  if (!v227)
  {
    goto LABEL_137;
  }

  v228 = v227;
  v229 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_enabled_readVersion];
  if (!v229)
  {

    goto LABEL_137;
  }

  v230 = v229;
  v231 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_enabled_writeVersion];

  if (!v231)
  {
LABEL_137:
    v236 = [HMDCompositeBoolSetting alloc];
    v237 = +[HMDHomeKitVersion version7];
    v238 = +[HMDHomeKitVersion version7];
    v239 = [(HMDCompositeBoolSetting *)v236 initWithValue:0 readVersion:v237 writeVersion:v238];
    [v3 setObject:v239 forKeyedSubscript:@"root.general.accessibility.interaction.ignoreRepeat.enabled"];
    goto LABEL_138;
  }

  v232 = +[HMDHomeKitVersion version7];
  v233 = objc_alloc(MEMORY[0x277D0F940]);
  v234 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_enabled_readVersion];
  v235 = [v233 initWithString:v234];
  if ([v232 isGreaterThanVersion:v235])
  {
  }

  else
  {
    v405 = +[HMDHomeKitVersion version7];
    v406 = objc_alloc(MEMORY[0x277D0F940]);
    v407 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_enabled_writeVersion];
    v408 = [v406 initWithString:v407];
    v409 = [v405 isGreaterThanVersion:v408];

    if (!v409)
    {
      goto LABEL_139;
    }
  }

  v410 = [HMDCompositeBoolSetting alloc];
  v237 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_enabled_value];
  v411 = [v237 BOOLValue];
  v238 = +[HMDHomeKitVersion version7];
  v239 = +[HMDHomeKitVersion version7];
  v412 = [(HMDCompositeBoolSetting *)v410 initWithValue:v411 readVersion:v238 writeVersion:v239];
  [v3 setObject:v412 forKeyedSubscript:@"root.general.accessibility.interaction.ignoreRepeat.enabled"];

LABEL_138:
LABEL_139:
  v240 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_seconds_value];
  if (!v240)
  {
    goto LABEL_145;
  }

  v241 = v240;
  v242 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_seconds_readVersion];
  if (!v242)
  {

    goto LABEL_145;
  }

  v243 = v242;
  v244 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_seconds_writeVersion];

  if (!v244)
  {
LABEL_145:
    v249 = [HMDCompositeNumberSetting alloc];
    v250 = +[HMDHomeKitVersion version7];
    v251 = +[HMDHomeKitVersion version7];
    v252 = [(HMDCompositeNumberSetting *)v249 initWithValue:&unk_286628558 readVersion:v250 writeVersion:v251];
    [v3 setObject:v252 forKeyedSubscript:@"root.general.accessibility.interaction.ignoreRepeat.seconds"];
    goto LABEL_146;
  }

  v245 = +[HMDHomeKitVersion version7];
  v246 = objc_alloc(MEMORY[0x277D0F940]);
  v247 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_seconds_readVersion];
  v248 = [v246 initWithString:v247];
  if ([v245 isGreaterThanVersion:v248])
  {
  }

  else
  {
    v413 = +[HMDHomeKitVersion version7];
    v414 = objc_alloc(MEMORY[0x277D0F940]);
    v415 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_seconds_writeVersion];
    v416 = [v414 initWithString:v415];
    v417 = [v413 isGreaterThanVersion:v416];

    if (!v417)
    {
      goto LABEL_147;
    }
  }

  v418 = [HMDCompositeNumberSetting alloc];
  v250 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_seconds_value];
  v251 = +[HMDHomeKitVersion version7];
  v252 = +[HMDHomeKitVersion version7];
  v419 = [(HMDCompositeNumberSetting *)v418 initWithValue:v250 readVersion:v251 writeVersion:v252];
  [v3 setObject:v419 forKeyedSubscript:@"root.general.accessibility.interaction.ignoreRepeat.seconds"];

LABEL_146:
LABEL_147:
  v253 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSiriAnalytics_value];
  if (!v253)
  {
    goto LABEL_153;
  }

  v254 = v253;
  v255 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSiriAnalytics_readVersion];
  if (!v255)
  {

    goto LABEL_153;
  }

  v256 = v255;
  v257 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSiriAnalytics_writeVersion];

  if (!v257)
  {
LABEL_153:
    v262 = [HMDCompositeBoolSetting alloc];
    v263 = +[HMDHomeKitVersion version7];
    v264 = +[HMDHomeKitVersion version9];
    v265 = [(HMDCompositeBoolSetting *)v262 initWithValue:0 readVersion:v263 writeVersion:v264];
    [v3 setObject:v265 forKeyedSubscript:@"root.general.analytics.shareSiriAnalytics"];
    goto LABEL_154;
  }

  v258 = +[HMDHomeKitVersion version7];
  v259 = objc_alloc(MEMORY[0x277D0F940]);
  v260 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSiriAnalytics_readVersion];
  v261 = [v259 initWithString:v260];
  if ([v258 isGreaterThanVersion:v261])
  {
  }

  else
  {
    v420 = +[HMDHomeKitVersion version9];
    v421 = objc_alloc(MEMORY[0x277D0F940]);
    v422 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSiriAnalytics_writeVersion];
    v423 = [v421 initWithString:v422];
    v424 = [v420 isGreaterThanVersion:v423];

    if (!v424)
    {
      goto LABEL_155;
    }
  }

  v425 = [HMDCompositeBoolSetting alloc];
  v263 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSiriAnalytics_value];
  v426 = [v263 BOOLValue];
  v264 = +[HMDHomeKitVersion version7];
  v265 = +[HMDHomeKitVersion version9];
  v427 = [(HMDCompositeBoolSetting *)v425 initWithValue:v426 readVersion:v264 writeVersion:v265];
  [v3 setObject:v427 forKeyedSubscript:@"root.general.analytics.shareSiriAnalytics"];

LABEL_154:
LABEL_155:
  v266 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSpeakerAnalytics_value];
  if (!v266)
  {
    goto LABEL_161;
  }

  v267 = v266;
  v268 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSpeakerAnalytics_readVersion];
  if (!v268)
  {

    goto LABEL_161;
  }

  v269 = v268;
  v270 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSpeakerAnalytics_writeVersion];

  if (!v270)
  {
LABEL_161:
    v275 = [HMDCompositeBoolSetting alloc];
    v276 = +[HMDHomeKitVersion version7];
    v277 = +[HMDHomeKitVersion version7];
    v278 = [(HMDCompositeBoolSetting *)v275 initWithValue:0 readVersion:v276 writeVersion:v277];
    [v3 setObject:v278 forKeyedSubscript:@"root.general.analytics.shareSpeakerAnalytics"];
    goto LABEL_162;
  }

  v271 = +[HMDHomeKitVersion version7];
  v272 = objc_alloc(MEMORY[0x277D0F940]);
  v273 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSpeakerAnalytics_readVersion];
  v274 = [v272 initWithString:v273];
  if ([v271 isGreaterThanVersion:v274])
  {
  }

  else
  {
    v428 = +[HMDHomeKitVersion version7];
    v429 = objc_alloc(MEMORY[0x277D0F940]);
    v430 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSpeakerAnalytics_writeVersion];
    v431 = [v429 initWithString:v430];
    v432 = [v428 isGreaterThanVersion:v431];

    if (!v432)
    {
      goto LABEL_163;
    }
  }

  v433 = [HMDCompositeBoolSetting alloc];
  v276 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSpeakerAnalytics_value];
  v434 = [v276 BOOLValue];
  v277 = +[HMDHomeKitVersion version7];
  v278 = +[HMDHomeKitVersion version7];
  v435 = [(HMDCompositeBoolSetting *)v433 initWithValue:v434 readVersion:v277 writeVersion:v278];
  [v3 setObject:v435 forKeyedSubscript:@"root.general.analytics.shareSpeakerAnalytics"];

LABEL_162:
LABEL_163:
  v279 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_music_allowExplicitContent_value];
  if (!v279)
  {
    goto LABEL_169;
  }

  v280 = v279;
  v281 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_music_allowExplicitContent_readVersion];
  if (!v281)
  {

    goto LABEL_169;
  }

  v282 = v281;
  v283 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_music_allowExplicitContent_writeVersion];

  if (!v283)
  {
LABEL_169:
    v288 = [HMDCompositeBoolSetting alloc];
    v289 = +[HMDHomeKitVersion version7];
    v290 = +[HMDHomeKitVersion version7];
    v291 = [(HMDCompositeBoolSetting *)v288 initWithValue:0 readVersion:v289 writeVersion:v290];
    [v3 setObject:v291 forKeyedSubscript:@"root.music.allowExplicitContent"];
    goto LABEL_170;
  }

  v284 = +[HMDHomeKitVersion version7];
  v285 = objc_alloc(MEMORY[0x277D0F940]);
  v286 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_music_allowExplicitContent_readVersion];
  v287 = [v285 initWithString:v286];
  if ([v284 isGreaterThanVersion:v287])
  {
  }

  else
  {
    v436 = +[HMDHomeKitVersion version7];
    v437 = objc_alloc(MEMORY[0x277D0F940]);
    v438 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_music_allowExplicitContent_writeVersion];
    v439 = [v437 initWithString:v438];
    v440 = [v436 isGreaterThanVersion:v439];

    if (!v440)
    {
      goto LABEL_171;
    }
  }

  v441 = [HMDCompositeBoolSetting alloc];
  v289 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_music_allowExplicitContent_value];
  v442 = [v289 BOOLValue];
  v290 = +[HMDHomeKitVersion version7];
  v291 = +[HMDHomeKitVersion version7];
  v443 = [(HMDCompositeBoolSetting *)v441 initWithValue:v442 readVersion:v290 writeVersion:v291];
  [v3 setObject:v443 forKeyedSubscript:@"root.music.allowExplicitContent"];

LABEL_170:
LABEL_171:
  v292 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_airPlay_airPlayEnabled_value];
  if (!v292)
  {
    goto LABEL_177;
  }

  v293 = v292;
  v294 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_airPlay_airPlayEnabled_readVersion];
  if (!v294)
  {

    goto LABEL_177;
  }

  v295 = v294;
  v296 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_airPlay_airPlayEnabled_writeVersion];

  if (!v296)
  {
LABEL_177:
    v301 = [HMDCompositeBoolSetting alloc];
    v302 = +[HMDHomeKitVersion version7];
    v303 = +[HMDHomeKitVersion version7];
    v304 = [(HMDCompositeBoolSetting *)v301 initWithValue:0 readVersion:v302 writeVersion:v303];
    [v3 setObject:v304 forKeyedSubscript:@"root.airPlay.airPlayEnabled"];
    goto LABEL_178;
  }

  v297 = +[HMDHomeKitVersion version7];
  v298 = objc_alloc(MEMORY[0x277D0F940]);
  v299 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_airPlay_airPlayEnabled_readVersion];
  v300 = [v298 initWithString:v299];
  if ([v297 isGreaterThanVersion:v300])
  {
  }

  else
  {
    v444 = +[HMDHomeKitVersion version7];
    v445 = objc_alloc(MEMORY[0x277D0F940]);
    v446 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_airPlay_airPlayEnabled_writeVersion];
    v447 = [v445 initWithString:v446];
    v448 = [v444 isGreaterThanVersion:v447];

    if (!v448)
    {
      goto LABEL_179;
    }
  }

  v449 = [HMDCompositeBoolSetting alloc];
  v302 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_airPlay_airPlayEnabled_value];
  v450 = [v302 BOOLValue];
  v303 = +[HMDHomeKitVersion version7];
  v304 = +[HMDHomeKitVersion version7];
  v451 = [(HMDCompositeBoolSetting *)v449 initWithValue:v450 readVersion:v303 writeVersion:v304];
  [v3 setObject:v451 forKeyedSubscript:@"root.airPlay.airPlayEnabled"];

LABEL_178:
LABEL_179:
  v305 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siriEndpoint_enabled_value];
  if (!v305)
  {
    goto LABEL_185;
  }

  v306 = v305;
  v307 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siriEndpoint_enabled_readVersion];
  if (!v307)
  {

    goto LABEL_185;
  }

  v308 = v307;
  v309 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siriEndpoint_enabled_writeVersion];

  if (!v309)
  {
LABEL_185:
    v314 = [HMDCompositeBoolSetting alloc];
    v315 = +[HMDHomeKitVersion version7];
    v316 = +[HMDHomeKitVersion version7];
    v317 = [(HMDCompositeBoolSetting *)v314 initWithValue:0 readVersion:v315 writeVersion:v316];
    [v3 setObject:v317 forKeyedSubscript:@"root.siriEndpoint.enabled"];
LABEL_186:

    goto LABEL_187;
  }

  v310 = +[HMDHomeKitVersion version7];
  v311 = objc_alloc(MEMORY[0x277D0F940]);
  v312 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siriEndpoint_enabled_readVersion];
  v313 = [v311 initWithString:v312];
  if ([v310 isGreaterThanVersion:v313])
  {

LABEL_225:
    v457 = [HMDCompositeBoolSetting alloc];
    v315 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siriEndpoint_enabled_value];
    v458 = [v315 BOOLValue];
    v316 = +[HMDHomeKitVersion version7];
    v317 = +[HMDHomeKitVersion version7];
    v459 = [(HMDCompositeBoolSetting *)v457 initWithValue:v458 readVersion:v316 writeVersion:v317];
    [v3 setObject:v459 forKeyedSubscript:@"root.siriEndpoint.enabled"];

    goto LABEL_186;
  }

  v452 = +[HMDHomeKitVersion version7];
  v453 = objc_alloc(MEMORY[0x277D0F940]);
  v454 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siriEndpoint_enabled_writeVersion];
  v455 = [v453 initWithString:v454];
  v456 = [v452 isGreaterThanVersion:v455];

  if (v456)
  {
    goto LABEL_225;
  }

LABEL_187:
  v318 = [v3 copy];

  return v318;
}

- (id)keyPathsToSettingMetadata
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v4 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.siri.soundAlert" constraint:0 privileges:v3];
  [v2 setObject:v4 forKeyedSubscript:@"root.siri.soundAlert"];

  v5 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v6 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.siri.lightWhenUsingSiri" constraint:0 privileges:v5];
  [v2 setObject:v6 forKeyedSubscript:@"root.siri.lightWhenUsingSiri"];

  v7 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v8 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.siri.siriEnabled" constraint:0 privileges:v7];
  [v2 setObject:v8 forKeyedSubscript:@"root.siri.siriEnabled"];

  v9 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:0];
  v10 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.siri.language" constraint:0 privileges:v9];
  [v2 setObject:v10 forKeyedSubscript:@"root.siri.language"];

  v11 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v12 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.home.dismissedHomePodHasNonMemberMediaAccountWarning" constraint:0 privileges:v11];
  [v2 setObject:v12 forKeyedSubscript:@"root.home.dismissedHomePodHasNonMemberMediaAccountWarning"];

  v13 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v14 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.locationServices.enabled" constraint:0 privileges:v13];
  [v2 setObject:v14 forKeyedSubscript:@"root.locationServices.enabled"];

  v15 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v16 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.doorbellChime.enabled" constraint:0 privileges:v15];
  [v2 setObject:v16 forKeyedSubscript:@"root.doorbellChime.enabled"];

  v17 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:0];
  v18 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.announce.enabled" constraint:0 privileges:v17];
  [v2 setObject:v18 forKeyedSubscript:@"root.announce.enabled"];

  v19 = [[HMDCompositeSettingIntegerConstraint alloc] initWithMaxValue:50 minValue:20 stepValue:5];
  v20 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v21 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.general.accessibility.vision.doubleTapSettings.timeoutSettings.timeoutInterval" constraint:v19 privileges:v20];
  [v2 setObject:v21 forKeyedSubscript:@"root.general.accessibility.vision.doubleTapSettings.timeoutSettings.timeoutInterval"];

  v22 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v23 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.general.accessibility.vision.voiceOver.enabled" constraint:0 privileges:v22];
  [v2 setObject:v23 forKeyedSubscript:@"root.general.accessibility.vision.voiceOver.enabled"];

  v24 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v25 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.general.accessibility.vision.voiceOver.audioDuckingEnabled" constraint:0 privileges:v24];
  [v2 setObject:v25 forKeyedSubscript:@"root.general.accessibility.vision.voiceOver.audioDuckingEnabled"];

  v26 = [[HMDCompositeSettingIntegerConstraint alloc] initWithMaxValue:400 minValue:0 stepValue:10];
  v27 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v28 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.general.accessibility.vision.speakingRateSection.speakingRate" constraint:v26 privileges:v27];
  [v2 setObject:v28 forKeyedSubscript:@"root.general.accessibility.vision.speakingRateSection.speakingRate"];

  v29 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v30 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.general.accessibility.interaction.holdDuration.enabled" constraint:0 privileges:v29];
  [v2 setObject:v30 forKeyedSubscript:@"root.general.accessibility.interaction.holdDuration.enabled"];

  v31 = [[HMDCompositeSettingIntegerConstraint alloc] initWithMaxValue:400 minValue:10 stepValue:10];
  v32 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v33 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.general.accessibility.interaction.holdDuration.seconds" constraint:v31 privileges:v32];
  [v2 setObject:v33 forKeyedSubscript:@"root.general.accessibility.interaction.holdDuration.seconds"];

  v34 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v35 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.general.accessibility.interaction.touchAccommodations.enabled" constraint:0 privileges:v34];
  [v2 setObject:v35 forKeyedSubscript:@"root.general.accessibility.interaction.touchAccommodations.enabled"];

  v36 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v37 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.general.accessibility.interaction.ignoreRepeat.enabled" constraint:0 privileges:v36];
  [v2 setObject:v37 forKeyedSubscript:@"root.general.accessibility.interaction.ignoreRepeat.enabled"];

  v38 = [[HMDCompositeSettingIntegerConstraint alloc] initWithMaxValue:400 minValue:10 stepValue:10];
  v39 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v40 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.general.accessibility.interaction.ignoreRepeat.seconds" constraint:v38 privileges:v39];
  [v2 setObject:v40 forKeyedSubscript:@"root.general.accessibility.interaction.ignoreRepeat.seconds"];

  v41 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v42 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.general.analytics.shareSiriAnalytics" constraint:0 privileges:v41];
  [v2 setObject:v42 forKeyedSubscript:@"root.general.analytics.shareSiriAnalytics"];

  v43 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v44 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.general.analytics.shareSpeakerAnalytics" constraint:0 privileges:v43];
  [v2 setObject:v44 forKeyedSubscript:@"root.general.analytics.shareSpeakerAnalytics"];

  v45 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v46 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.music.allowExplicitContent" constraint:0 privileges:v45];
  [v2 setObject:v46 forKeyedSubscript:@"root.music.allowExplicitContent"];

  v47 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v48 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.airPlay.airPlayEnabled" constraint:0 privileges:v47];
  [v2 setObject:v48 forKeyedSubscript:@"root.airPlay.airPlayEnabled"];

  v49 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
  v50 = [[HMDCompositeSettingMetadata alloc] initWithKeyPath:@"root.siriEndpoint.enabled" constraint:0 privileges:v49];
  [v2 setObject:v50 forKeyedSubscript:@"root.siriEndpoint.enabled"];

  v51 = [v2 copy];

  return v51;
}

- (id)keyPathsToSettings
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_soundAlert_value];
  if (v4)
  {
    v5 = v4;
    v6 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_soundAlert_readVersion];
    if (v6)
    {
      v7 = v6;
      v8 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_soundAlert_writeVersion];

      if (!v8)
      {
        goto LABEL_6;
      }

      v9 = [HMDCompositeBoolSetting alloc];
      v5 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_soundAlert_value];
      v10 = [v5 BOOLValue];
      v11 = objc_alloc(MEMORY[0x277D0F940]);
      v12 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_soundAlert_readVersion];
      v13 = [v11 initWithString:v12];
      v14 = objc_alloc(MEMORY[0x277D0F940]);
      v15 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_soundAlert_writeVersion];
      v16 = [v14 initWithString:v15];
      v17 = [(HMDCompositeBoolSetting *)v9 initWithValue:v10 readVersion:v13 writeVersion:v16];
      [v3 setObject:v17 forKeyedSubscript:@"root.siri.soundAlert"];
    }
  }

LABEL_6:
  v18 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_lightWhenUsingSiri_value];
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = v18;
  v20 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_lightWhenUsingSiri_readVersion];
  if (v20)
  {
    v21 = v20;
    v22 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_lightWhenUsingSiri_writeVersion];

    if (!v22)
    {
      goto LABEL_11;
    }

    v23 = [HMDCompositeBoolSetting alloc];
    v19 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_lightWhenUsingSiri_value];
    v24 = [v19 BOOLValue];
    v25 = objc_alloc(MEMORY[0x277D0F940]);
    v26 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_lightWhenUsingSiri_readVersion];
    v27 = [v25 initWithString:v26];
    v28 = objc_alloc(MEMORY[0x277D0F940]);
    v29 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_lightWhenUsingSiri_writeVersion];
    v30 = [v28 initWithString:v29];
    v31 = [(HMDCompositeBoolSetting *)v23 initWithValue:v24 readVersion:v27 writeVersion:v30];
    [v3 setObject:v31 forKeyedSubscript:@"root.siri.lightWhenUsingSiri"];
  }

LABEL_11:
  v32 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_siriEnabled_value];
  if (!v32)
  {
    goto LABEL_16;
  }

  v33 = v32;
  v34 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_siriEnabled_readVersion];
  if (v34)
  {
    v35 = v34;
    v36 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_siriEnabled_writeVersion];

    if (!v36)
    {
      goto LABEL_16;
    }

    v37 = [HMDCompositeBoolSetting alloc];
    v33 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_siriEnabled_value];
    v38 = [v33 BOOLValue];
    v39 = objc_alloc(MEMORY[0x277D0F940]);
    v40 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_siriEnabled_readVersion];
    v41 = [v39 initWithString:v40];
    v42 = objc_alloc(MEMORY[0x277D0F940]);
    v43 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_siriEnabled_writeVersion];
    v44 = [v42 initWithString:v43];
    v45 = [(HMDCompositeBoolSetting *)v37 initWithValue:v38 readVersion:v41 writeVersion:v44];
    [v3 setObject:v45 forKeyedSubscript:@"root.siri.siriEnabled"];
  }

LABEL_16:
  v46 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_readVersion];
  if (!v46)
  {
    goto LABEL_25;
  }

  v47 = v46;
  v48 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_writeVersion];
  if (v48)
  {
    v49 = v48;
    v50 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_inputLanguageCodeValueName];
    if (v50)
    {
      v51 = v50;
      v52 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_outputLanguageVoiceCodeValueName];
      if (v52)
      {
        v53 = v52;
        v54 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_outputLanguageGenderCodeValueName];

        if (!v54)
        {
          goto LABEL_25;
        }

        v314 = [HMDCompositeLanguageSetting alloc];
        v47 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_inputLanguageCodeValueName];
        v49 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_outputLanguageVoiceCodeValueName];
        v51 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_outputLanguageGenderCodeValueName];
        v313 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_voiceNameValueName];
        v55 = objc_alloc(MEMORY[0x277D0F940]);
        v56 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_readVersion];
        v57 = [v55 initWithString:v56];
        v58 = v3;
        v59 = objc_alloc(MEMORY[0x277D0F940]);
        v60 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siri_language_writeVersion];
        v61 = [v59 initWithString:v60];
        v62 = [(HMDCompositeLanguageSetting *)v314 initWithInputLanguage:v47 outputVoiceLanguageCode:v49 outputVoiceGenderCode:v51 voiceName:v313 readVersion:v57 writeVersion:v61];
        [v58 setObject:v62 forKeyedSubscript:@"root.siri.language"];

        v3 = v58;
      }
    }
  }

LABEL_25:
  v63 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_home_dismissedHomePodHasNonMemberMediaAccountWarning_value];
  if (!v63)
  {
    goto LABEL_30;
  }

  v64 = v63;
  v65 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_home_dismissedHomePodHasNonMemberMediaAccountWarning_readVersion];
  if (v65)
  {
    v66 = v65;
    v67 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_home_dismissedHomePodHasNonMemberMediaAccountWarning_writeVersion];

    if (!v67)
    {
      goto LABEL_30;
    }

    v68 = [HMDCompositeBoolSetting alloc];
    v64 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_home_dismissedHomePodHasNonMemberMediaAccountWarning_value];
    v69 = [v64 BOOLValue];
    v70 = objc_alloc(MEMORY[0x277D0F940]);
    v71 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_home_dismissedHomePodHasNonMemberMediaAccountWarning_readVersion];
    v72 = [v70 initWithString:v71];
    v73 = objc_alloc(MEMORY[0x277D0F940]);
    v74 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_home_dismissedHomePodHasNonMemberMediaAccountWarning_writeVersion];
    v75 = [v73 initWithString:v74];
    v76 = [(HMDCompositeBoolSetting *)v68 initWithValue:v69 readVersion:v72 writeVersion:v75];
    [v3 setObject:v76 forKeyedSubscript:@"root.home.dismissedHomePodHasNonMemberMediaAccountWarning"];
  }

LABEL_30:
  v77 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_locationServices_enabled_value];
  if (!v77)
  {
    goto LABEL_35;
  }

  v78 = v77;
  v79 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_locationServices_enabled_readVersion];
  if (v79)
  {
    v80 = v79;
    v81 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_locationServices_enabled_writeVersion];

    if (!v81)
    {
      goto LABEL_35;
    }

    v82 = [HMDCompositeBoolSetting alloc];
    v78 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_locationServices_enabled_value];
    v83 = [v78 BOOLValue];
    v84 = objc_alloc(MEMORY[0x277D0F940]);
    v85 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_locationServices_enabled_readVersion];
    v86 = [v84 initWithString:v85];
    v87 = objc_alloc(MEMORY[0x277D0F940]);
    v88 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_locationServices_enabled_writeVersion];
    v89 = [v87 initWithString:v88];
    v90 = [(HMDCompositeBoolSetting *)v82 initWithValue:v83 readVersion:v86 writeVersion:v89];
    [v3 setObject:v90 forKeyedSubscript:@"root.locationServices.enabled"];
  }

LABEL_35:
  v91 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_doorbellChime_enabled_value];
  if (!v91)
  {
    goto LABEL_40;
  }

  v92 = v91;
  v93 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_doorbellChime_enabled_readVersion];
  if (v93)
  {
    v94 = v93;
    v95 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_doorbellChime_enabled_writeVersion];

    if (!v95)
    {
      goto LABEL_40;
    }

    v96 = [HMDCompositeBoolSetting alloc];
    v92 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_doorbellChime_enabled_value];
    v97 = [v92 BOOLValue];
    v98 = objc_alloc(MEMORY[0x277D0F940]);
    v99 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_doorbellChime_enabled_readVersion];
    v100 = [v98 initWithString:v99];
    v101 = objc_alloc(MEMORY[0x277D0F940]);
    v102 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_doorbellChime_enabled_writeVersion];
    v103 = [v101 initWithString:v102];
    v104 = [(HMDCompositeBoolSetting *)v96 initWithValue:v97 readVersion:v100 writeVersion:v103];
    [v3 setObject:v104 forKeyedSubscript:@"root.doorbellChime.enabled"];
  }

LABEL_40:
  v105 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_announce_enabled_value];
  if (!v105)
  {
    goto LABEL_45;
  }

  v106 = v105;
  v107 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_announce_enabled_readVersion];
  if (v107)
  {
    v108 = v107;
    v109 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_announce_enabled_writeVersion];

    if (!v109)
    {
      goto LABEL_45;
    }

    v110 = [HMDCompositeBoolSetting alloc];
    v106 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_announce_enabled_value];
    v111 = [v106 BOOLValue];
    v112 = objc_alloc(MEMORY[0x277D0F940]);
    v113 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_announce_enabled_readVersion];
    v114 = [v112 initWithString:v113];
    v115 = objc_alloc(MEMORY[0x277D0F940]);
    v116 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_announce_enabled_writeVersion];
    v117 = [v115 initWithString:v116];
    v118 = [(HMDCompositeBoolSetting *)v110 initWithValue:v111 readVersion:v114 writeVersion:v117];
    [v3 setObject:v118 forKeyedSubscript:@"root.announce.enabled"];
  }

LABEL_45:
  v119 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_value];
  if (!v119)
  {
    goto LABEL_50;
  }

  v120 = v119;
  v121 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_readVersion];
  if (v121)
  {
    v122 = v121;
    v123 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_writeVersion];

    if (!v123)
    {
      goto LABEL_50;
    }

    v124 = [HMDCompositeNumberSetting alloc];
    v120 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_value];
    v125 = objc_alloc(MEMORY[0x277D0F940]);
    v126 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_readVersion];
    v127 = [v125 initWithString:v126];
    v128 = objc_alloc(MEMORY[0x277D0F940]);
    v129 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_writeVersion];
    v130 = [v128 initWithString:v129];
    v131 = [(HMDCompositeNumberSetting *)v124 initWithValue:v120 readVersion:v127 writeVersion:v130];
    [v3 setObject:v131 forKeyedSubscript:@"root.general.accessibility.vision.doubleTapSettings.timeoutSettings.timeoutInterval"];
  }

LABEL_50:
  v132 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_enabled_value];
  if (!v132)
  {
    goto LABEL_55;
  }

  v133 = v132;
  v134 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_enabled_readVersion];
  if (v134)
  {
    v135 = v134;
    v136 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_enabled_writeVersion];

    if (!v136)
    {
      goto LABEL_55;
    }

    v137 = [HMDCompositeBoolSetting alloc];
    v133 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_enabled_value];
    v138 = [v133 BOOLValue];
    v139 = objc_alloc(MEMORY[0x277D0F940]);
    v140 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_enabled_readVersion];
    v141 = [v139 initWithString:v140];
    v142 = objc_alloc(MEMORY[0x277D0F940]);
    v143 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_enabled_writeVersion];
    v144 = [v142 initWithString:v143];
    v145 = [(HMDCompositeBoolSetting *)v137 initWithValue:v138 readVersion:v141 writeVersion:v144];
    [v3 setObject:v145 forKeyedSubscript:@"root.general.accessibility.vision.voiceOver.enabled"];
  }

LABEL_55:
  v146 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_audioDuckingEnabled_value];
  if (!v146)
  {
    goto LABEL_60;
  }

  v147 = v146;
  v148 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_audioDuckingEnabled_readVersion];
  if (v148)
  {
    v149 = v148;
    v150 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_audioDuckingEnabled_writeVersion];

    if (!v150)
    {
      goto LABEL_60;
    }

    v151 = [HMDCompositeBoolSetting alloc];
    v147 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_audioDuckingEnabled_value];
    v152 = [v147 BOOLValue];
    v153 = objc_alloc(MEMORY[0x277D0F940]);
    v154 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_audioDuckingEnabled_readVersion];
    v155 = [v153 initWithString:v154];
    v156 = objc_alloc(MEMORY[0x277D0F940]);
    v157 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_voiceOver_audioDuckingEnabled_writeVersion];
    v158 = [v156 initWithString:v157];
    v159 = [(HMDCompositeBoolSetting *)v151 initWithValue:v152 readVersion:v155 writeVersion:v158];
    [v3 setObject:v159 forKeyedSubscript:@"root.general.accessibility.vision.voiceOver.audioDuckingEnabled"];
  }

LABEL_60:
  v160 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_speakingRateSection_speakingRate_value];
  if (!v160)
  {
    goto LABEL_65;
  }

  v161 = v160;
  v162 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_speakingRateSection_speakingRate_readVersion];
  if (v162)
  {
    v163 = v162;
    v164 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_speakingRateSection_speakingRate_writeVersion];

    if (!v164)
    {
      goto LABEL_65;
    }

    v165 = [HMDCompositeNumberSetting alloc];
    v161 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_speakingRateSection_speakingRate_value];
    v166 = objc_alloc(MEMORY[0x277D0F940]);
    v167 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_speakingRateSection_speakingRate_readVersion];
    v168 = [v166 initWithString:v167];
    v169 = objc_alloc(MEMORY[0x277D0F940]);
    v170 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_vision_speakingRateSection_speakingRate_writeVersion];
    v171 = [v169 initWithString:v170];
    v172 = [(HMDCompositeNumberSetting *)v165 initWithValue:v161 readVersion:v168 writeVersion:v171];
    [v3 setObject:v172 forKeyedSubscript:@"root.general.accessibility.vision.speakingRateSection.speakingRate"];
  }

LABEL_65:
  v173 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_enabled_value];
  if (!v173)
  {
    goto LABEL_70;
  }

  v174 = v173;
  v175 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_enabled_readVersion];
  if (v175)
  {
    v176 = v175;
    v177 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_enabled_writeVersion];

    if (!v177)
    {
      goto LABEL_70;
    }

    v178 = [HMDCompositeBoolSetting alloc];
    v174 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_enabled_value];
    v179 = [v174 BOOLValue];
    v180 = objc_alloc(MEMORY[0x277D0F940]);
    v181 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_enabled_readVersion];
    v182 = [v180 initWithString:v181];
    v183 = objc_alloc(MEMORY[0x277D0F940]);
    v184 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_enabled_writeVersion];
    v185 = [v183 initWithString:v184];
    v186 = [(HMDCompositeBoolSetting *)v178 initWithValue:v179 readVersion:v182 writeVersion:v185];
    [v3 setObject:v186 forKeyedSubscript:@"root.general.accessibility.interaction.holdDuration.enabled"];
  }

LABEL_70:
  v187 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_seconds_value];
  if (!v187)
  {
    goto LABEL_75;
  }

  v188 = v187;
  v189 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_seconds_readVersion];
  if (v189)
  {
    v190 = v189;
    v191 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_seconds_writeVersion];

    if (!v191)
    {
      goto LABEL_75;
    }

    v192 = [HMDCompositeNumberSetting alloc];
    v188 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_seconds_value];
    v193 = objc_alloc(MEMORY[0x277D0F940]);
    v194 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_seconds_readVersion];
    v195 = [v193 initWithString:v194];
    v196 = objc_alloc(MEMORY[0x277D0F940]);
    v197 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_holdDuration_seconds_writeVersion];
    v198 = [v196 initWithString:v197];
    v199 = [(HMDCompositeNumberSetting *)v192 initWithValue:v188 readVersion:v195 writeVersion:v198];
    [v3 setObject:v199 forKeyedSubscript:@"root.general.accessibility.interaction.holdDuration.seconds"];
  }

LABEL_75:
  v200 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_touchAccommodations_enabled_value];
  if (!v200)
  {
    goto LABEL_80;
  }

  v201 = v200;
  v202 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_touchAccommodations_enabled_readVersion];
  if (v202)
  {
    v203 = v202;
    v204 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_touchAccommodations_enabled_writeVersion];

    if (!v204)
    {
      goto LABEL_80;
    }

    v205 = [HMDCompositeBoolSetting alloc];
    v201 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_touchAccommodations_enabled_value];
    v206 = [v201 BOOLValue];
    v207 = objc_alloc(MEMORY[0x277D0F940]);
    v208 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_touchAccommodations_enabled_readVersion];
    v209 = [v207 initWithString:v208];
    v210 = objc_alloc(MEMORY[0x277D0F940]);
    v211 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_touchAccommodations_enabled_writeVersion];
    v212 = [v210 initWithString:v211];
    v213 = [(HMDCompositeBoolSetting *)v205 initWithValue:v206 readVersion:v209 writeVersion:v212];
    [v3 setObject:v213 forKeyedSubscript:@"root.general.accessibility.interaction.touchAccommodations.enabled"];
  }

LABEL_80:
  v214 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_enabled_value];
  if (!v214)
  {
    goto LABEL_85;
  }

  v215 = v214;
  v216 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_enabled_readVersion];
  if (v216)
  {
    v217 = v216;
    v218 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_enabled_writeVersion];

    if (!v218)
    {
      goto LABEL_85;
    }

    v219 = [HMDCompositeBoolSetting alloc];
    v215 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_enabled_value];
    v220 = [v215 BOOLValue];
    v221 = objc_alloc(MEMORY[0x277D0F940]);
    v222 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_enabled_readVersion];
    v223 = [v221 initWithString:v222];
    v224 = objc_alloc(MEMORY[0x277D0F940]);
    v225 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_enabled_writeVersion];
    v226 = [v224 initWithString:v225];
    v227 = [(HMDCompositeBoolSetting *)v219 initWithValue:v220 readVersion:v223 writeVersion:v226];
    [v3 setObject:v227 forKeyedSubscript:@"root.general.accessibility.interaction.ignoreRepeat.enabled"];
  }

LABEL_85:
  v228 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_seconds_value];
  if (!v228)
  {
    goto LABEL_90;
  }

  v229 = v228;
  v230 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_seconds_readVersion];
  if (v230)
  {
    v231 = v230;
    v232 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_seconds_writeVersion];

    if (!v232)
    {
      goto LABEL_90;
    }

    v233 = [HMDCompositeNumberSetting alloc];
    v229 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_seconds_value];
    v234 = objc_alloc(MEMORY[0x277D0F940]);
    v235 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_seconds_readVersion];
    v236 = [v234 initWithString:v235];
    v237 = objc_alloc(MEMORY[0x277D0F940]);
    v238 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_accessibility_interaction_ignoreRepeat_seconds_writeVersion];
    v239 = [v237 initWithString:v238];
    v240 = [(HMDCompositeNumberSetting *)v233 initWithValue:v229 readVersion:v236 writeVersion:v239];
    [v3 setObject:v240 forKeyedSubscript:@"root.general.accessibility.interaction.ignoreRepeat.seconds"];
  }

LABEL_90:
  v241 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSiriAnalytics_value];
  if (!v241)
  {
    goto LABEL_95;
  }

  v242 = v241;
  v243 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSiriAnalytics_readVersion];
  if (v243)
  {
    v244 = v243;
    v245 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSiriAnalytics_writeVersion];

    if (!v245)
    {
      goto LABEL_95;
    }

    v246 = [HMDCompositeBoolSetting alloc];
    v242 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSiriAnalytics_value];
    v247 = [v242 BOOLValue];
    v248 = objc_alloc(MEMORY[0x277D0F940]);
    v249 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSiriAnalytics_readVersion];
    v250 = [v248 initWithString:v249];
    v251 = objc_alloc(MEMORY[0x277D0F940]);
    v252 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSiriAnalytics_writeVersion];
    v253 = [v251 initWithString:v252];
    v254 = [(HMDCompositeBoolSetting *)v246 initWithValue:v247 readVersion:v250 writeVersion:v253];
    [v3 setObject:v254 forKeyedSubscript:@"root.general.analytics.shareSiriAnalytics"];
  }

LABEL_95:
  v255 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSpeakerAnalytics_value];
  if (!v255)
  {
    goto LABEL_100;
  }

  v256 = v255;
  v257 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSpeakerAnalytics_readVersion];
  if (v257)
  {
    v258 = v257;
    v259 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSpeakerAnalytics_writeVersion];

    if (!v259)
    {
      goto LABEL_100;
    }

    v260 = [HMDCompositeBoolSetting alloc];
    v256 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSpeakerAnalytics_value];
    v261 = [v256 BOOLValue];
    v262 = objc_alloc(MEMORY[0x277D0F940]);
    v263 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSpeakerAnalytics_readVersion];
    v264 = [v262 initWithString:v263];
    v265 = objc_alloc(MEMORY[0x277D0F940]);
    v266 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_general_analytics_shareSpeakerAnalytics_writeVersion];
    v267 = [v265 initWithString:v266];
    v268 = [(HMDCompositeBoolSetting *)v260 initWithValue:v261 readVersion:v264 writeVersion:v267];
    [v3 setObject:v268 forKeyedSubscript:@"root.general.analytics.shareSpeakerAnalytics"];
  }

LABEL_100:
  v269 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_music_allowExplicitContent_value];
  if (!v269)
  {
    goto LABEL_105;
  }

  v270 = v269;
  v271 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_music_allowExplicitContent_readVersion];
  if (v271)
  {
    v272 = v271;
    v273 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_music_allowExplicitContent_writeVersion];

    if (!v273)
    {
      goto LABEL_105;
    }

    v274 = [HMDCompositeBoolSetting alloc];
    v270 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_music_allowExplicitContent_value];
    v275 = [v270 BOOLValue];
    v276 = objc_alloc(MEMORY[0x277D0F940]);
    v277 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_music_allowExplicitContent_readVersion];
    v278 = [v276 initWithString:v277];
    v279 = objc_alloc(MEMORY[0x277D0F940]);
    v280 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_music_allowExplicitContent_writeVersion];
    v281 = [v279 initWithString:v280];
    v282 = [(HMDCompositeBoolSetting *)v274 initWithValue:v275 readVersion:v278 writeVersion:v281];
    [v3 setObject:v282 forKeyedSubscript:@"root.music.allowExplicitContent"];
  }

LABEL_105:
  v283 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_airPlay_airPlayEnabled_value];
  if (!v283)
  {
    goto LABEL_110;
  }

  v284 = v283;
  v285 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_airPlay_airPlayEnabled_readVersion];
  if (v285)
  {
    v286 = v285;
    v287 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_airPlay_airPlayEnabled_writeVersion];

    if (!v287)
    {
      goto LABEL_110;
    }

    v288 = [HMDCompositeBoolSetting alloc];
    v284 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_airPlay_airPlayEnabled_value];
    v289 = [v284 BOOLValue];
    v290 = objc_alloc(MEMORY[0x277D0F940]);
    v291 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_airPlay_airPlayEnabled_readVersion];
    v292 = [v290 initWithString:v291];
    v293 = objc_alloc(MEMORY[0x277D0F940]);
    v294 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_airPlay_airPlayEnabled_writeVersion];
    v295 = [v293 initWithString:v294];
    v296 = [(HMDCompositeBoolSetting *)v288 initWithValue:v289 readVersion:v292 writeVersion:v295];
    [v3 setObject:v296 forKeyedSubscript:@"root.airPlay.airPlayEnabled"];
  }

LABEL_110:
  v297 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siriEndpoint_enabled_value];
  if (!v297)
  {
    goto LABEL_115;
  }

  v298 = v297;
  v299 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siriEndpoint_enabled_readVersion];
  if (v299)
  {
    v300 = v299;
    v301 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siriEndpoint_enabled_writeVersion];

    if (!v301)
    {
      goto LABEL_115;
    }

    v302 = [HMDCompositeBoolSetting alloc];
    v298 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siriEndpoint_enabled_value];
    v303 = [v298 BOOLValue];
    v304 = objc_alloc(MEMORY[0x277D0F940]);
    v305 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siriEndpoint_enabled_readVersion];
    v306 = [v304 initWithString:v305];
    v307 = objc_alloc(MEMORY[0x277D0F940]);
    v308 = [(HMDCompositeSettingsAccessorySettingsModel *)self root_siriEndpoint_enabled_writeVersion];
    v309 = [v307 initWithString:v308];
    v310 = [(HMDCompositeBoolSetting *)v302 initWithValue:v303 readVersion:v306 writeVersion:v309];
    [v3 setObject:v310 forKeyedSubscript:@"root.siriEndpoint.enabled"];
  }

LABEL_115:
  v311 = [v3 copy];

  return v311;
}

@end