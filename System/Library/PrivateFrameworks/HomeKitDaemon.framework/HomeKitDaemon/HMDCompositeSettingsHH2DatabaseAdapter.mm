@interface HMDCompositeSettingsHH2DatabaseAdapter
- (HMDCompositeSettingsDatabaseAdapterDelegate)delegate;
- (HMDCompositeSettingsHH2DatabaseAdapter)initWithAccessory:(id)a3 homeID:(id)a4 workingManagedObjectContext:(id)a5 queue:(id)a6 notificationCenter:(id)a7;
- (id)_modelFromAccessory:(id)a3;
- (id)emptyModelWithID:(id)a3 parentModelID:(id)a4 modelClass:(Class)a5;
- (id)fetchModelWithID:(id)a3;
- (id)logIdentifier;
- (id)rawDatabase;
- (void)_copySettingsFromModel:(id)a3 toAccessory:(id)a4;
- (void)_handleAccessoryUpdateTransaction:(id)a3;
- (void)_setDefaultVersionsOnModel:(id)a3;
- (void)addModel:(id)a3 withOptionsLabel:(id)a4 completion:(id)a5;
- (void)startWithDelegate:(id)a3;
@end

@implementation HMDCompositeSettingsHH2DatabaseAdapter

- (HMDCompositeSettingsDatabaseAdapterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)rawDatabase
{
  WeakRetained = objc_loadWeakRetained(&self->_rawDatabase);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDCompositeSettingsHH2DatabaseAdapter *)self accessoryID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_setDefaultVersionsOnModel:(id)a3
{
  v4 = a3;
  [v4 setRoot_siri_soundAlert_readVersion:@"7.1"];
  [v4 setRoot_siri_soundAlert_writeVersion:@"7.1"];
  [v4 setRoot_siri_lightWhenUsingSiri_readVersion:@"7.1"];
  [v4 setRoot_siri_lightWhenUsingSiri_writeVersion:@"7.1"];
  [v4 setRoot_siri_siriEnabled_readVersion:@"7.1"];
  [v4 setRoot_siri_siriEnabled_writeVersion:@"7.1"];
  [v4 setRoot_siri_language_readVersion:@"7.1"];
  [v4 setRoot_siri_language_writeVersion:@"7.1"];
  [v4 setRoot_home_dismissedHomePodHasNonMemberMediaAccountWarning_readVersion:@"7.1"];
  [v4 setRoot_home_dismissedHomePodHasNonMemberMediaAccountWarning_writeVersion:@"7.1"];
  [v4 setRoot_doorbellChime_enabled_readVersion:@"7.1"];
  [v4 setRoot_doorbellChime_enabled_writeVersion:@"7.1"];
  [v4 setRoot_announce_enabled_readVersion:@"7.1"];
  [v4 setRoot_announce_enabled_writeVersion:@"7.1"];
  [v4 setRoot_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_readVersion:@"7.1"];
  [v4 setRoot_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_writeVersion:@"7.1"];
  [v4 setRoot_general_accessibility_vision_voiceOver_enabled_readVersion:@"7.1"];
  [v4 setRoot_general_accessibility_vision_voiceOver_enabled_writeVersion:@"7.1"];
  [v4 setRoot_general_accessibility_vision_voiceOver_audioDuckingEnabled_readVersion:@"7.1"];
  [v4 setRoot_general_accessibility_vision_voiceOver_audioDuckingEnabled_writeVersion:@"7.1"];
  [v4 setRoot_general_accessibility_vision_speakingRateSection_speakingRate_readVersion:@"7.1"];
  [v4 setRoot_general_accessibility_vision_speakingRateSection_speakingRate_writeVersion:@"7.1"];
  [v4 setRoot_general_accessibility_interaction_holdDuration_enabled_readVersion:@"7.1"];
  [v4 setRoot_general_accessibility_interaction_holdDuration_enabled_writeVersion:@"7.1"];
  [v4 setRoot_general_accessibility_interaction_holdDuration_seconds_readVersion:@"7.1"];
  [v4 setRoot_general_accessibility_interaction_holdDuration_seconds_writeVersion:@"7.1"];
  [v4 setRoot_general_accessibility_interaction_touchAccommodations_enabled_readVersion:@"7.1"];
  [v4 setRoot_general_accessibility_interaction_touchAccommodations_enabled_writeVersion:@"7.1"];
  [v4 setRoot_general_accessibility_interaction_ignoreRepeat_enabled_readVersion:@"7.1"];
  [v4 setRoot_general_accessibility_interaction_ignoreRepeat_enabled_writeVersion:@"7.1"];
  [v4 setRoot_general_accessibility_interaction_ignoreRepeat_seconds_readVersion:@"7.1"];
  [v4 setRoot_general_accessibility_interaction_ignoreRepeat_seconds_writeVersion:@"7.1"];
  [v4 setRoot_general_analytics_shareSiriAnalytics_readVersion:@"7.1"];
  [v4 setRoot_general_analytics_shareSiriAnalytics_writeVersion:@"9.0"];
  [v4 setRoot_general_analytics_shareSpeakerAnalytics_readVersion:@"7.1"];
  [v4 setRoot_general_analytics_shareSpeakerAnalytics_writeVersion:@"7.1"];
  [v4 setRoot_airPlay_airPlayEnabled_readVersion:@"7.1"];
  [v4 setRoot_airPlay_airPlayEnabled_writeVersion:@"7.1"];
  [v4 setRoot_siriEndpoint_enabled_readVersion:@"7.1"];
  [v4 setRoot_siriEndpoint_enabled_writeVersion:@"7.1"];
  v3 = MEMORY[0x277CBEC28];
  [v4 setRoot_music_allowExplicitContent_value:MEMORY[0x277CBEC28]];
  [v4 setRoot_music_allowExplicitContent_readVersion:@"7.1"];
  [v4 setRoot_music_allowExplicitContent_writeVersion:@"7.1"];
  [v4 setRoot_locationServices_enabled_value:v3];
  [v4 setRoot_locationServices_enabled_readVersion:@"7.1"];
  [v4 setRoot_locationServices_enabled_writeVersion:@"7.1"];
}

- (id)_modelFromAccessory:(id)a3
{
  v4 = a3;
  v5 = [HMDCompositeSettingsAccessorySettingsModel alloc];
  v6 = [v4 modelID];
  v7 = [v4 modelID];
  v8 = [(HMBModel *)v5 initWithModelID:v6 parentModelID:v7];

  [(HMDCompositeSettingsHH2DatabaseAdapter *)self _setDefaultVersionsOnModel:v8];
  v9 = [v4 soundAlertEnabled];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_siri_soundAlert_value:v9];

  v10 = [v4 lightWhenUsingSiriEnabled];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_siri_lightWhenUsingSiri_value:v10];

  v11 = [v4 siriEnabled];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_siri_siriEnabled_value:v11];

  v12 = [v4 siriLanguageCode];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_siri_language_inputLanguageCodeValueName:v12];

  v13 = [v4 siriLanguageVoiceCode];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_siri_language_outputLanguageVoiceCodeValueName:v13];

  v14 = [v4 siriLanguageVoiceGenderCode];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_siri_language_outputLanguageGenderCodeValueName:v14];

  v15 = [v4 siriLanguageVoiceName];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_siri_language_voiceNameValueName:v15];

  v16 = [v4 hasDismissedHomePodHasNonMemberMediaAccountWarning];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_home_dismissedHomePodHasNonMemberMediaAccountWarning_value:v16];

  v17 = [v4 doorbellChimeEnabled];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_doorbellChime_enabled_value:v17];

  v18 = [v4 announceEnabled];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_announce_enabled_value:v18];

  v19 = [v4 visionDoubleTapSettingsTimeoutInterval];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_value:v19];

  v20 = [v4 visionVoiceOverEnabled];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_general_accessibility_vision_voiceOver_enabled_value:v20];

  v21 = [v4 visionVoiceOverAudioDuckingEnabled];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_general_accessibility_vision_voiceOver_audioDuckingEnabled_value:v21];

  v22 = [v4 visionSpeakingRate];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_general_accessibility_vision_speakingRateSection_speakingRate_value:v22];

  v23 = [v4 interactionHoldDurationEnabled];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_general_accessibility_interaction_holdDuration_enabled_value:v23];

  v24 = [v4 interactionHoldDurationSeconds];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_general_accessibility_interaction_holdDuration_seconds_value:v24];

  v25 = [v4 interactionTouchAccommodationsEnabled];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_general_accessibility_interaction_touchAccommodations_enabled_value:v25];

  v26 = [v4 interactionIgnoreRepeatEnabled];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_general_accessibility_interaction_ignoreRepeat_enabled_value:v26];

  v27 = [v4 interactionIgnoreRepeatSeconds];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_general_accessibility_interaction_ignoreRepeat_seconds_value:v27];

  v28 = [v4 shareSiriAnalytics];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_general_analytics_shareSiriAnalytics_value:v28];

  v29 = [v4 shareSpeakerAnalytics];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_general_analytics_shareSpeakerAnalytics_value:v29];

  v30 = [v4 airPlayEnabled];
  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_airPlay_airPlayEnabled_value:v30];

  v31 = [v4 siriEndpointEnabled];

  [(HMDCompositeSettingsAccessorySettingsModel *)v8 setRoot_siriEndpoint_enabled_value:v31];

  return v8;
}

- (void)_copySettingsFromModel:(id)a3 toAccessory:(id)a4
{
  v52 = a3;
  v5 = a4;
  v6 = [v52 root_siri_soundAlert_value];

  if (v6)
  {
    v7 = [v52 root_siri_soundAlert_value];
    [v5 setSoundAlertEnabled:v7];
  }

  v8 = [v52 root_siri_lightWhenUsingSiri_value];

  if (v8)
  {
    v9 = [v52 root_siri_lightWhenUsingSiri_value];
    [v5 setLightWhenUsingSiriEnabled:v9];
  }

  v10 = [v52 root_siri_siriEnabled_value];

  if (v10)
  {
    v11 = [v52 root_siri_siriEnabled_value];
    [v5 setSiriEnabled:v11];
  }

  v12 = [v52 root_siri_language_inputLanguageCodeValueName];

  if (v12)
  {
    v13 = [v52 root_siri_language_inputLanguageCodeValueName];
    [v5 setSiriLanguageCode:v13];
  }

  v14 = [v52 root_siri_language_outputLanguageVoiceCodeValueName];

  if (v14)
  {
    v15 = [v52 root_siri_language_outputLanguageVoiceCodeValueName];
    [v5 setSiriLanguageVoiceCode:v15];
  }

  v16 = [v52 root_siri_language_outputLanguageGenderCodeValueName];

  if (v16)
  {
    v17 = [v52 root_siri_language_outputLanguageGenderCodeValueName];
    [v5 setSiriLanguageVoiceGenderCode:v17];
  }

  v18 = [v52 root_siri_language_voiceNameValueName];

  if (v18)
  {
    v19 = [v52 root_siri_language_voiceNameValueName];
    [v5 setSiriLanguageVoiceName:v19];
  }

  v20 = [v52 root_home_dismissedHomePodHasNonMemberMediaAccountWarning_value];

  if (v20)
  {
    v21 = [v52 root_home_dismissedHomePodHasNonMemberMediaAccountWarning_value];
    [v5 setHasDismissedHomePodHasNonMemberMediaAccountWarning:v21];
  }

  v22 = [v52 root_doorbellChime_enabled_value];

  if (v22)
  {
    v23 = [v52 root_doorbellChime_enabled_value];
    [v5 setDoorbellChimeEnabled:v23];
  }

  v24 = [v52 root_announce_enabled_value];

  if (v24)
  {
    v25 = [v52 root_announce_enabled_value];
    [v5 setAnnounceEnabled:v25];
  }

  v26 = [v52 root_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_value];

  if (v26)
  {
    v27 = [v52 root_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_value];
    [v5 setVisionDoubleTapSettingsTimeoutInterval:v27];
  }

  v28 = [v52 root_general_accessibility_vision_voiceOver_enabled_value];

  if (v28)
  {
    v29 = [v52 root_general_accessibility_vision_voiceOver_enabled_value];
    [v5 setVisionVoiceOverEnabled:v29];
  }

  v30 = [v52 root_general_accessibility_vision_voiceOver_audioDuckingEnabled_value];

  if (v30)
  {
    v31 = [v52 root_general_accessibility_vision_voiceOver_audioDuckingEnabled_value];
    [v5 setVisionVoiceOverAudioDuckingEnabled:v31];
  }

  v32 = [v52 root_general_accessibility_vision_speakingRateSection_speakingRate_value];

  if (v32)
  {
    v33 = [v52 root_general_accessibility_vision_speakingRateSection_speakingRate_value];
    [v5 setVisionSpeakingRate:v33];
  }

  v34 = [v52 root_general_accessibility_interaction_holdDuration_enabled_value];

  if (v34)
  {
    v35 = [v52 root_general_accessibility_interaction_holdDuration_enabled_value];
    [v5 setInteractionHoldDurationEnabled:v35];
  }

  v36 = [v52 root_general_accessibility_interaction_holdDuration_seconds_value];

  if (v36)
  {
    v37 = [v52 root_general_accessibility_interaction_holdDuration_seconds_value];
    [v5 setInteractionHoldDurationSeconds:v37];
  }

  v38 = [v52 root_general_accessibility_interaction_touchAccommodations_enabled_value];

  if (v38)
  {
    v39 = [v52 root_general_accessibility_interaction_touchAccommodations_enabled_value];
    [v5 setInteractionTouchAccommodationsEnabled:v39];
  }

  v40 = [v52 root_general_accessibility_interaction_ignoreRepeat_enabled_value];

  if (v40)
  {
    v41 = [v52 root_general_accessibility_interaction_ignoreRepeat_enabled_value];
    [v5 setInteractionIgnoreRepeatEnabled:v41];
  }

  v42 = [v52 root_general_accessibility_interaction_ignoreRepeat_seconds_value];

  if (v42)
  {
    v43 = [v52 root_general_accessibility_interaction_ignoreRepeat_seconds_value];
    [v5 setInteractionIgnoreRepeatSeconds:v43];
  }

  v44 = [v52 root_general_analytics_shareSiriAnalytics_value];

  if (v44)
  {
    v45 = [v52 root_general_analytics_shareSiriAnalytics_value];
    [v5 setShareSiriAnalytics:v45];
  }

  v46 = [v52 root_general_analytics_shareSpeakerAnalytics_value];

  if (v46)
  {
    v47 = [v52 root_general_analytics_shareSpeakerAnalytics_value];
    [v5 setShareSpeakerAnalytics:v47];
  }

  v48 = [v52 root_airPlay_airPlayEnabled_value];

  if (v48)
  {
    v49 = [v52 root_airPlay_airPlayEnabled_value];
    [v5 setAirPlayEnabled:v49];
  }

  v50 = [v52 root_siriEndpoint_enabled_value];

  if (v50)
  {
    v51 = [v52 root_siriEndpoint_enabled_value];
    [v5 setSiriEndpointEnabled:v51];
  }
}

- (void)_handleAccessoryUpdateTransaction:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Observed accessory update", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 userInfo];
  v10 = [v9 valueForKey:@"HMDHAPAccessoryUpdateTransactionTriggeredKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [(HMDCompositeSettingsHH2DatabaseAdapter *)v6 queue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__HMDCompositeSettingsHH2DatabaseAdapter__handleAccessoryUpdateTransaction___block_invoke;
    v19[3] = &unk_27868A750;
    v19[4] = v6;
    v20 = v12;
    dispatch_async(v13, v19);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v6;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_FAULT, "%{public}@Received accessory update transaction that was nil or an invalid type: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __76__HMDCompositeSettingsHH2DatabaseAdapter__handleAccessoryUpdateTransaction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 fetchModelWithID:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v53 = v5;

  v6 = [*(a1 + 40) soundAlertEnabled];

  if (v6)
  {
    v7 = [*(a1 + 40) soundAlertEnabled];
    [v53 setRoot_siri_soundAlert_value:v7];
  }

  v8 = [*(a1 + 40) lightWhenUsingSiriEnabled];

  if (v8)
  {
    v9 = [*(a1 + 40) lightWhenUsingSiriEnabled];
    [v53 setRoot_siri_lightWhenUsingSiri_value:v9];
  }

  v10 = [*(a1 + 40) siriEnabled];

  if (v10)
  {
    v11 = [*(a1 + 40) siriEnabled];
    [v53 setRoot_siri_siriEnabled_value:v11];
  }

  v12 = [*(a1 + 40) siriLanguageCode];

  if (v12)
  {
    v13 = [*(a1 + 40) siriLanguageCode];
    [v53 setRoot_siri_language_inputLanguageCodeValueName:v13];
  }

  v14 = [*(a1 + 40) siriLanguageVoiceCode];

  if (v14)
  {
    v15 = [*(a1 + 40) siriLanguageVoiceCode];
    [v53 setRoot_siri_language_outputLanguageVoiceCodeValueName:v15];
  }

  v16 = [*(a1 + 40) siriLanguageVoiceGenderCode];

  if (v16)
  {
    v17 = [*(a1 + 40) siriLanguageVoiceGenderCode];
    [v53 setRoot_siri_language_outputLanguageGenderCodeValueName:v17];
  }

  v18 = [*(a1 + 40) siriLanguageVoiceName];

  if (v18)
  {
    v19 = [*(a1 + 40) siriLanguageVoiceName];
    [v53 setRoot_siri_language_voiceNameValueName:v19];
  }

  v20 = [*(a1 + 40) hasDismissedHomePodHasNonMemberMediaAccountWarning];

  if (v20)
  {
    v21 = [*(a1 + 40) hasDismissedHomePodHasNonMemberMediaAccountWarning];
    [v53 setRoot_home_dismissedHomePodHasNonMemberMediaAccountWarning_value:v21];
  }

  v22 = [*(a1 + 40) doorbellChimeEnabled];

  if (v22)
  {
    v23 = [*(a1 + 40) doorbellChimeEnabled];
    [v53 setRoot_doorbellChime_enabled_value:v23];
  }

  v24 = [*(a1 + 40) announceEnabled];

  if (v24)
  {
    v25 = [*(a1 + 40) announceEnabled];
    [v53 setRoot_announce_enabled_value:v25];
  }

  v26 = [*(a1 + 40) visionDoubleTapSettingsTimeoutInterval];

  if (v26)
  {
    v27 = [*(a1 + 40) visionDoubleTapSettingsTimeoutInterval];
    [v53 setRoot_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_value:v27];
  }

  v28 = [*(a1 + 40) visionVoiceOverEnabled];

  if (v28)
  {
    v29 = [*(a1 + 40) visionVoiceOverEnabled];
    [v53 setRoot_general_accessibility_vision_voiceOver_enabled_value:v29];
  }

  v30 = [*(a1 + 40) visionVoiceOverAudioDuckingEnabled];

  if (v30)
  {
    v31 = [*(a1 + 40) visionVoiceOverAudioDuckingEnabled];
    [v53 setRoot_general_accessibility_vision_voiceOver_audioDuckingEnabled_value:v31];
  }

  v32 = [*(a1 + 40) visionSpeakingRate];

  if (v32)
  {
    v33 = [*(a1 + 40) visionSpeakingRate];
    [v53 setRoot_general_accessibility_vision_speakingRateSection_speakingRate_value:v33];
  }

  v34 = [*(a1 + 40) interactionHoldDurationEnabled];

  if (v34)
  {
    v35 = [*(a1 + 40) interactionHoldDurationEnabled];
    [v53 setRoot_general_accessibility_interaction_holdDuration_enabled_value:v35];
  }

  v36 = [*(a1 + 40) interactionHoldDurationSeconds];

  if (v36)
  {
    v37 = [*(a1 + 40) interactionHoldDurationSeconds];
    [v53 setRoot_general_accessibility_interaction_holdDuration_seconds_value:v37];
  }

  v38 = [*(a1 + 40) interactionTouchAccommodationsEnabled];

  if (v38)
  {
    v39 = [*(a1 + 40) interactionTouchAccommodationsEnabled];
    [v53 setRoot_general_accessibility_interaction_touchAccommodations_enabled_value:v39];
  }

  v40 = [*(a1 + 40) interactionIgnoreRepeatEnabled];

  if (v40)
  {
    v41 = [*(a1 + 40) interactionIgnoreRepeatEnabled];
    [v53 setRoot_general_accessibility_interaction_ignoreRepeat_enabled_value:v41];
  }

  v42 = [*(a1 + 40) interactionIgnoreRepeatSeconds];

  if (v42)
  {
    v43 = [*(a1 + 40) interactionIgnoreRepeatSeconds];
    [v53 setRoot_general_accessibility_interaction_ignoreRepeat_seconds_value:v43];
  }

  v44 = [*(a1 + 40) shareSiriAnalytics];

  if (v44)
  {
    v45 = [*(a1 + 40) shareSiriAnalytics];
    [v53 setRoot_general_analytics_shareSiriAnalytics_value:v45];
  }

  v46 = [*(a1 + 40) shareSpeakerAnalytics];

  if (v46)
  {
    v47 = [*(a1 + 40) shareSpeakerAnalytics];
    [v53 setRoot_general_analytics_shareSpeakerAnalytics_value:v47];
  }

  v48 = [*(a1 + 40) airPlayEnabled];

  if (v48)
  {
    v49 = [*(a1 + 40) airPlayEnabled];
    [v53 setRoot_airPlay_airPlayEnabled_value:v49];
  }

  v50 = [*(a1 + 40) siriEndpointEnabled];

  if (v50)
  {
    v51 = [*(a1 + 40) siriEndpointEnabled];
    [v53 setRoot_siriEndpoint_enabled_value:v51];
  }

  v52 = [*(a1 + 32) delegate];
  [v52 database:*(a1 + 32) didProcessUpdateForModel:v53];
}

- (id)emptyModelWithID:(id)a3 parentModelID:(id)a4 modelClass:(Class)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [[a5 alloc] initWithModelID:v7 parentModelID:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    _HMFPreconditionFailure();
LABEL_13:
    v18 = _HMFPreconditionFailure();
    [(HMDCompositeSettingsHH2DatabaseAdapter *)v18 addModel:v19 withOptionsLabel:v20 completion:v21, v22];
    return result;
  }

  v12 = v11;
  v13 = [v12 conformsToProtocol:&unk_283F34AA0];
  v14 = v13;
  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

  return v12;
}

- (void)addModel:(id)a3 withOptionsLabel:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
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

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v17;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Attempting add model via database adapter with options label: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  if (v13)
  {
    v18 = [(HMDCompositeSettingsHH2DatabaseAdapter *)v15 context];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __79__HMDCompositeSettingsHH2DatabaseAdapter_addModel_withOptionsLabel_completion___block_invoke;
    v24[3] = &unk_278689F98;
    v24[4] = v15;
    v25 = v13;
    v26 = v10;
    [v18 performBlock:v24];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v15;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to cast settings model %@ while adding to the database.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __79__HMDCompositeSettingsHH2DatabaseAdapter_addModel_withOptionsLabel_completion___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessoryID];
  v3 = [HMCContext findHAPAccessoryWithModelID:v2];

  if (v3)
  {
    [*(a1 + 32) _copySettingsFromModel:*(a1 + 40) toAccessory:v3];
    v4 = [*(a1 + 32) context];
    v28 = 0;
    v5 = [v4 save:&v28];
    v6 = v28;

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    v10 = v9;
    if (v5)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v11;
        v12 = "%{public}@Successfully saved settings update";
        v13 = v10;
        v14 = OS_LOG_TYPE_INFO;
        v15 = 12;
LABEL_10:
        _os_log_impl(&dword_229538000, v13, v14, v12, buf, v15);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v11;
      v31 = 2112;
      v32 = v6;
      v12 = "%{public}@Failed to save settings update: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
      goto LABEL_10;
    }

    objc_autoreleasePoolPop(v7);
    goto LABEL_12;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [*(a1 + 32) accessoryID];
    *buf = 138543618;
    v30 = v19;
    v31 = 2112;
    v32 = v20;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the MKFHAPAccessory with identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
LABEL_12:
  v21 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDCompositeSettingsHH2DatabaseAdapter_addModel_withOptionsLabel_completion___block_invoke_6;
  block[3] = &unk_27868A7A0;
  v22 = *(a1 + 48);
  v26 = v6;
  v27 = v22;
  v23 = v6;
  dispatch_async(v21, block);

  v24 = *MEMORY[0x277D85DE8];
}

- (id)fetchModelWithID:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__43810;
  v22 = __Block_byref_object_dispose__43811;
  v23 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v8;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Fetching model with id %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDCompositeSettingsHH2DatabaseAdapter *)v6 context];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__HMDCompositeSettingsHH2DatabaseAdapter_fetchModelWithID___block_invoke;
  v14[3] = &unk_27868A4D8;
  v10 = v4;
  v15 = v10;
  v16 = v6;
  v17 = &v18;
  [v9 unsafeSynchronousBlock:v14];

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __59__HMDCompositeSettingsHH2DatabaseAdapter_fetchModelWithID___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [HMCContext findHAPAccessoryWithModelID:*(a1 + 32)];
  if (v2)
  {
    v3 = [*(a1 + 40) _modelFromAccessory:v2];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the MKFHAPAccessory with identifier: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HMDCompositeSettingsHH2DatabaseAdapter *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDCompositeSettingsHH2DatabaseAdapter_startWithDelegate___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __60__HMDCompositeSettingsHH2DatabaseAdapter_startWithDelegate___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting composite settings database adapter", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  objc_storeWeak((*(a1 + 32) + 24), *(a1 + 40));
  result = [*(a1 + 40) database:*(a1 + 32) didConfigureWithError:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (HMDCompositeSettingsHH2DatabaseAdapter)initWithAccessory:(id)a3 homeID:(id)a4 workingManagedObjectContext:(id)a5 queue:(id)a6 notificationCenter:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = HMDCompositeSettingsHH2DatabaseAdapter;
  v17 = [(HMDCompositeSettingsHH2DatabaseAdapter *)&v23 init];
  v18 = v17;
  if (v17)
  {
    strongRawDatabase = v17->_strongRawDatabase;
    v17->_strongRawDatabase = @"db";

    objc_storeWeak(&v18->_rawDatabase, v18->_strongRawDatabase);
    v20 = [v12 uuid];
    accessoryID = v18->_accessoryID;
    v18->_accessoryID = v20;

    objc_storeStrong(&v18->_homeID, a4);
    objc_storeStrong(&v18->_context, a5);
    objc_storeStrong(&v18->_queue, a6);
    [v16 addObserver:v18 selector:sel__handleAccessoryUpdateTransaction_ name:@"HMDHAPAccessoryUpdateTransactionTriggered" object:v12];
  }

  return v18;
}

@end