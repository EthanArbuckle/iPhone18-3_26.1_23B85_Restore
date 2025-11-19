@interface HUHomeFeatureOnboardingUtilities
+ (BOOL)_checkIdentifyVoicePrerequisitesSimpleForHome:(id)a3;
+ (BOOL)_userHasSaidYesToShowTVViewingProfilesIn:(id)a3;
+ (BOOL)hasUserSaidYesToVoiceIdentificationInResults:(id)a3;
+ (BOOL)home:(id)a3 hasSomeHomePodsOnSupportedVoiceRecognitionLanguages:(id)a4;
+ (BOOL)home:(id)a3 voiceRecognitionIsSupportedForCurrentUserOnMediaAccessory:(id)a4 languageOption:(id)a5;
+ (BOOL)isDeviceUsingASupportedVoiceRecognitionSiriLanguage:(id)a3 shouldFallbackToBestSupportedLanguage:(BOOL)a4;
+ (BOOL)isVoiceProfileAvailableOnThisDeviceForLanguage:(id)a3;
+ (id)_checkIdentifyVoicePrerequisitesForHome:(id)a3;
+ (id)_fetchSupportedMultiUserLanguagesSynchronously;
+ (id)analyzeHomeAssistantDevicesForSupportedVoiceRecognitionLanguages:(id)a3 home:(id)a4;
+ (id)atLeastOneHomePodHasLanguageSettingsForHomeFuture:(id)a3;
+ (id)checkSiriForiCloudEnabledPromptingUser:(id)a3;
+ (id)checkVoiceProfileAvailabiltyForLanguage:(id)a3;
+ (id)createPersonalIdentityDeviceLanguageMismatchList:(id)a3;
+ (id)fetchSupportedVoiceRecognitionLanguages;
+ (id)groupedFeaturesForOnboardingFlowKeyPaths:(id)a3;
+ (id)home:(id)a3 createMultiUserLanguageToHomePodsMapping:(id)a4;
+ (id)home:(id)a3 onboardAllFeaturesFromPresentingViewController:(id)a4 usageOptions:(id)a5;
+ (id)home:(id)a3 onboardFeaturesForKeyPaths:(id)a4 presentingViewController:(id)a5 usageOptions:(id)a6;
+ (id)home:(id)a3 onboardHomeHub2FromPresentingViewController:(id)a4 devices:(id)a5 usageOptions:(id)a6;
+ (id)home:(id)a3 onboardIdentifyVoiceFromPresentingViewController:(id)a4 usageOptions:(id)a5;
+ (id)home:(id)a3 onboardPersonalRequestsFromPresentingViewController:(id)a4;
+ (id)home:(id)a3 processHomeFeatureOnboarderResults:(id)a4;
+ (id)processLanguageAndMediaProfileInfo:(id)a3;
+ (unint64_t)home:(id)a3 checkForMultiUserDeviceUpgradeRequirements:(id)a4;
+ (unint64_t)home:(id)a3 checkForOwnerUpgradeRequirementsFromResults:(id)a4;
+ (void)_initializeSiriLanguageOptionsManagerIfNecessaryForHomePods:(id)a3;
+ (void)fetchSupportedVoiceRecognitionLanguagesWithCompletion:(id)a3;
+ (void)initialize;
+ (void)presentAlertConfirmingTurningOfVoiceRecognitionFrom:(id)a3;
+ (void)presentAlertConfirmingTurningOffPersonalRequestsFrom:(id)a3;
@end

@implementation HUHomeFeatureOnboardingUtilities

+ (void)initialize
{
  if (_MergedGlobals_618 != -1)
  {
    dispatch_once(&_MergedGlobals_618, &__block_literal_global_25_1);
  }

  v3 = qword_281121ED8;

  objc_storeStrong(&_supportedVoiceRecognitionLanguages, v3);
}

void __46__HUHomeFeatureOnboardingUtilities_initialize__block_invoke_2()
{
  v0 = +[HUHomeFeatureOnboardingUtilities _fetchSupportedMultiUserLanguagesSynchronously];
  v1 = qword_281121ED8;
  qword_281121ED8 = v0;
}

+ (id)_fetchSupportedMultiUserLanguagesSynchronously
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = objc_alloc_init(MEMORY[0x277CEF3A8]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__HUHomeFeatureOnboardingUtilities__fetchSupportedMultiUserLanguagesSynchronously__block_invoke;
  v8[3] = &unk_277DBA8F0;
  v10 = &v12;
  v11 = a2;
  v5 = v3;
  v9 = v5;
  [v4 fetchSupportedMultiUserLanguageCodes:v8];
  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __82__HUHomeFeatureOnboardingUtilities__fetchSupportedMultiUserLanguagesSynchronously__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(*(a1 + 48));
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v7;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "%@ THIS SHOULD NOT HAPPEN. Error fetching multi-user language codes %@", &v10, 0x16u);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

+ (id)home:(id)a3 onboardPersonalRequestsFromPresentingViewController:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _staticOnboardingFuture;
  if (!_staticOnboardingFuture)
  {
    v9 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
    v10 = _staticOnboardingFuture;
    _staticOnboardingFuture = v9;

    v8 = _staticOnboardingFuture;
  }

  if (([v8 isFinished] & 1) == 0)
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 138412290;
      v23 = v12;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ Found a previous Onboarder still running, ours will start after that one completes...", buf, 0xCu);
    }
  }

  v13 = _staticOnboardingFuture;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __93__HUHomeFeatureOnboardingUtilities_home_onboardPersonalRequestsFromPresentingViewController___block_invoke;
  v18[3] = &unk_277DBA120;
  v19 = v6;
  v20 = v7;
  v21 = a2;
  v14 = v7;
  v15 = v6;
  v16 = [v13 flatMap:v18];

  return v16;
}

id __93__HUHomeFeatureOnboardingUtilities_home_onboardPersonalRequestsFromPresentingViewController___block_invoke(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20 = @"OnboardingDisplayOption_OnboardingFromUserInput";
  v21[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = [[HUHomeFeatureOnboarder alloc] initWithFeatures:&unk_282492960 home:*(a1 + 32) usageOptions:v4];
  [v15[5] startOnboardingWithPresentingViewController:*(a1 + 40) usageOptions:v4];
  v5 = [v15[5] completionFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __93__HUHomeFeatureOnboardingUtilities_home_onboardPersonalRequestsFromPresentingViewController___block_invoke_32;
  v9[3] = &unk_277DBA918;
  v6 = *(a1 + 48);
  v12 = &v14;
  v13 = v6;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v7 = [v5 flatMap:v9];

  _Block_object_dispose(&v14, 8);

  return v7;
}

id __93__HUHomeFeatureOnboardingUtilities_home_onboardPersonalRequestsFromPresentingViewController___block_invoke_32(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(*(a1 + 48) + 8) + 40) restart];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v8)
    {
      v9 = NSStringFromSelector(*(a1 + 56));
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ RESTARTED same onboarding (Identify Voice))", &v14, 0xCu);
    }

    v10 = [HUHomeFeatureOnboardingUtilities home:*(a1 + 32) onboardPersonalRequestsFromPresentingViewController:*(a1 + 40)];
  }

  else
  {
    if (v8)
    {
      v11 = NSStringFromSelector(*(a1 + 56));
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ completed with results %@", &v14, 0x16u);
    }

    v10 = [HUHomeFeatureOnboardingUtilities home:*(a1 + 32) processHomeFeatureOnboarderResults:v3];
  }

  v12 = v10;

  return v12;
}

+ (id)home:(id)a3 onboardIdentifyVoiceFromPresentingViewController:(id)a4 usageOptions:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _staticOnboardingFuture;
  if (!_staticOnboardingFuture)
  {
    v12 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
    v13 = _staticOnboardingFuture;
    _staticOnboardingFuture = v12;

    v11 = _staticOnboardingFuture;
  }

  if (([v11 isFinished] & 1) == 0)
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(a2);
      *buf = 138412290;
      v30 = v15;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ Found a previous Onboarder still running, ours will start after that one completes...", buf, 0xCu);
    }
  }

  v16 = _staticOnboardingFuture;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __103__HUHomeFeatureOnboardingUtilities_home_onboardIdentifyVoiceFromPresentingViewController_usageOptions___block_invoke;
  v24[3] = &unk_277DBA968;
  v25 = v8;
  v26 = v10;
  v27 = v9;
  v28 = a2;
  v17 = v9;
  v18 = v10;
  v19 = v8;
  v20 = [v16 flatMap:v24];
  v21 = _staticOnboardingFuture;
  v22 = _staticOnboardingFuture;

  return v21;
}

id __103__HUHomeFeatureOnboardingUtilities_home_onboardIdentifyVoiceFromPresentingViewController_usageOptions___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 56));
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = &unk_282492978;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ started with feature flows %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = [[HUHomeFeatureOnboarder alloc] initWithFeatures:&unk_282492978 home:*(a1 + 32) usageOptions:*(a1 + 40)];
  [*(*&buf[8] + 40) startOnboardingWithPresentingViewController:*(a1 + 48) usageOptions:*(a1 + 40)];
  v6 = [*(*&buf[8] + 40) completionFuture];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __103__HUHomeFeatureOnboardingUtilities_home_onboardIdentifyVoiceFromPresentingViewController_usageOptions___block_invoke_42;
  v10[3] = &unk_277DBA940;
  v7 = *(a1 + 56);
  v14 = buf;
  v15 = v7;
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = *(a1 + 40);
  v8 = [v6 flatMap:v10];

  _Block_object_dispose(buf, 8);

  return v8;
}

id __103__HUHomeFeatureOnboardingUtilities_home_onboardIdentifyVoiceFromPresentingViewController_usageOptions___block_invoke_42(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(*(a1 + 56) + 8) + 40) restart];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v8)
    {
      v9 = NSStringFromSelector(*(a1 + 64));
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ RESTARTED same onboarding (Identify Voice))", &v14, 0xCu);
    }

    v10 = [HUHomeFeatureOnboardingUtilities home:*(a1 + 32) onboardIdentifyVoiceFromPresentingViewController:*(a1 + 40) usageOptions:*(a1 + 48)];
  }

  else
  {
    if (v8)
    {
      v11 = NSStringFromSelector(*(a1 + 64));
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ completed with results %@", &v14, 0x16u);
    }

    v10 = [HUHomeFeatureOnboardingUtilities home:*(a1 + 32) processHomeFeatureOnboarderResults:v3];
  }

  v12 = v10;

  return v12;
}

+ (id)home:(id)a3 onboardAllFeaturesFromPresentingViewController:(id)a4 usageOptions:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _staticOnboardingFuture;
  if (!_staticOnboardingFuture)
  {
    v13 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
    v14 = _staticOnboardingFuture;
    _staticOnboardingFuture = v13;

    v12 = _staticOnboardingFuture;
  }

  if (([v12 isFinished] & 1) == 0)
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      *buf = 138412290;
      v32 = v16;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ Found a previous Onboarder still running, ours will start after that one completes...", buf, 0xCu);
    }
  }

  v17 = _staticOnboardingFuture;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __101__HUHomeFeatureOnboardingUtilities_home_onboardAllFeaturesFromPresentingViewController_usageOptions___block_invoke;
  v25[3] = &unk_277DBA990;
  v29 = a1;
  v30 = a2;
  v26 = v9;
  v27 = v11;
  v28 = v10;
  v18 = v10;
  v19 = v11;
  v20 = v9;
  v21 = [v17 flatMap:v25];
  v22 = _staticOnboardingFuture;
  v23 = _staticOnboardingFuture;

  return v22;
}

id __101__HUHomeFeatureOnboardingUtilities_home_onboardAllFeaturesFromPresentingViewController_usageOptions___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D146E8] sharedDispatcher];
  v5 = [v4 homeManager];
  v6 = [v5 hasOptedToHH2];

  if (v6)
  {
    v7 = [*(a1 + 32) hf_hasReachableResidents];
  }

  else
  {
    v7 = 1;
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 56);
    v10 = NSStringFromSelector(*(a1 + 64));
    *buf = 138413058;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 1024;
    LODWORD(v31) = v6;
    WORD2(v31) = 1024;
    *(&v31 + 6) = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@: hasOptedToHH2 %{BOOL}d, shouldShowResidentDependantFlows = %{BOOL}d", buf, 0x22u);
  }

  v11 = [MEMORY[0x277CBEB18] array];
  if ([*(a1 + 32) hf_shouldBlockCurrentUserFromHome])
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 56);
      v22 = NSStringFromSelector(*(a1 + 64));
      v23 = [*(a1 + 32) hf_displayName];
      *buf = 138412802;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = v22;
      *&buf[22] = 2112;
      *&v31 = v23;
      _os_log_debug_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEBUG, "%@:%@: User is blocked from home %@, skipping all onboarding flows", buf, 0x20u);
    }

    v13 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v14 = [*(a1 + 40) objectForKeyedSubscript:@"OnboardingDisplayOption_ShowSwitchHomeScreen"];
    v15 = [v14 BOOLValue];

    if ((v15 & 1) != 0 || HFForceSwitchHomeWelcomeOnboarding())
    {
      [v11 addObject:&unk_282492990];
    }

    if (v7)
    {
      [v11 addObject:&unk_2824929A8];
      [v11 addObject:&unk_2824929C0];
      if (_os_feature_enabled_impl())
      {
        [v11 addObject:&unk_2824929D8];
      }

      [v11 addObject:&unk_2824929F0];
      [v11 addObject:&unk_282492A08];
      [v11 addObject:&unk_282492A20];
      [v11 addObject:&unk_282492A38];
    }

    [v11 addObject:&unk_282492A50];
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412546;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ started with grouped feature flows %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&v31 = __Block_byref_object_copy__7;
    *(&v31 + 1) = __Block_byref_object_dispose__7;
    v32 = [[HUHomeFeatureOnboarder alloc] initWithGroupedFeatures:v11 home:*(a1 + 32) usageOptions:*(a1 + 40)];
    [*(*&buf[8] + 40) startOnboardingWithPresentingViewController:*(a1 + 48) usageOptions:*(a1 + 40)];
    v18 = [*(*&buf[8] + 40) completionFuture];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __101__HUHomeFeatureOnboardingUtilities_home_onboardAllFeaturesFromPresentingViewController_usageOptions___block_invoke_90;
    v24[3] = &unk_277DBA940;
    v19 = *(a1 + 64);
    v28 = buf;
    v29 = v19;
    v25 = *(a1 + 32);
    v26 = *(a1 + 48);
    v27 = *(a1 + 40);
    v13 = [v18 flatMap:v24];

    _Block_object_dispose(buf, 8);
  }

  return v13;
}

id __101__HUHomeFeatureOnboardingUtilities_home_onboardAllFeaturesFromPresentingViewController_usageOptions___block_invoke_90(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(*(a1 + 56) + 8) + 40) restart];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v8)
    {
      v9 = NSStringFromSelector(*(a1 + 64));
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ RESTARTED same onboarding (All Features))", &v14, 0xCu);
    }

    v10 = [HUHomeFeatureOnboardingUtilities home:*(a1 + 32) onboardAllFeaturesFromPresentingViewController:*(a1 + 40) usageOptions:*(a1 + 48)];
  }

  else
  {
    if (v8)
    {
      v11 = NSStringFromSelector(*(a1 + 64));
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ completed with results %@", &v14, 0x16u);
    }

    v10 = [HUHomeFeatureOnboardingUtilities home:*(a1 + 32) processHomeFeatureOnboarderResults:v3];
  }

  v12 = v10;

  return v12;
}

+ (id)home:(id)a3 onboardFeaturesForKeyPaths:(id)a4 presentingViewController:(id)a5 usageOptions:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _staticOnboardingFuture;
  if (!_staticOnboardingFuture)
  {
    v15 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
    v16 = _staticOnboardingFuture;
    _staticOnboardingFuture = v15;

    v14 = _staticOnboardingFuture;
  }

  if (([v14 isFinished] & 1) == 0)
  {
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 138412290;
      v35 = v18;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ Found a previous Onboarder still running, ours will start after that one completes...", buf, 0xCu);
    }
  }

  v19 = _staticOnboardingFuture;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __106__HUHomeFeatureOnboardingUtilities_home_onboardFeaturesForKeyPaths_presentingViewController_usageOptions___block_invoke;
  v28[3] = &unk_277DBA9E0;
  v32 = v12;
  v33 = a2;
  v29 = v11;
  v30 = v10;
  v31 = v13;
  v20 = v12;
  v21 = v13;
  v22 = v10;
  v23 = v11;
  v24 = [v19 flatMap:v28];
  v25 = _staticOnboardingFuture;
  v26 = _staticOnboardingFuture;

  return v25;
}

id __106__HUHomeFeatureOnboardingUtilities_home_onboardFeaturesForKeyPaths_presentingViewController_usageOptions___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = [HUHomeFeatureOnboardingUtilities groupedFeaturesForOnboardingFlowKeyPaths:?];
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = [v4 count];
      *&buf[22] = 2112;
      v23 = v4;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ started with grouped feature flows (%lu groups) %@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v23 = __Block_byref_object_copy__7;
    v24 = __Block_byref_object_dispose__7;
    v25 = [[HUHomeFeatureOnboarder alloc] initWithGroupedFeatures:v4 home:*(a1 + 40) usageOptions:*(a1 + 48)];
    [*(*&buf[8] + 40) startOnboardingWithPresentingViewController:*(a1 + 56) usageOptions:*(a1 + 48)];
    v7 = [*(*&buf[8] + 40) completionFuture];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __106__HUHomeFeatureOnboardingUtilities_home_onboardFeaturesForKeyPaths_presentingViewController_usageOptions___block_invoke_91;
    v17[3] = &unk_277DBA9B8;
    v8 = *(a1 + 64);
    v20 = buf;
    v21 = v8;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = *(a1 + 48);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v9;
    *(&v14 + 1) = v10;
    v18 = v14;
    v19 = v13;
    v15 = [v7 flatMap:v17];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
  }

  return v15;
}

id __106__HUHomeFeatureOnboardingUtilities_home_onboardFeaturesForKeyPaths_presentingViewController_usageOptions___block_invoke_91(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(*(a1 + 64) + 8) + 40) restart];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v8)
    {
      v9 = NSStringFromSelector(*(a1 + 72));
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ RESTARTED same onboarding (Keypaths))", &v14, 0xCu);
    }

    v10 = [HUHomeFeatureOnboardingUtilities home:*(a1 + 32) onboardFeaturesForKeyPaths:*(a1 + 40) presentingViewController:*(a1 + 48) usageOptions:*(a1 + 56)];
  }

  else
  {
    if (v8)
    {
      v11 = NSStringFromSelector(*(a1 + 72));
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ completed with results %@", &v14, 0x16u);
    }

    v10 = [HUHomeFeatureOnboardingUtilities home:*(a1 + 32) processHomeFeatureOnboarderResults:v3];
  }

  v12 = v10;

  return v12;
}

+ (id)home:(id)a3 onboardHomeHub2FromPresentingViewController:(id)a4 devices:(id)a5 usageOptions:(id)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v10 uniqueIdentifier];
    *buf = 138413314;
    v37 = v10;
    v38 = 2114;
    v39 = v15;
    v40 = 2112;
    v41 = v11;
    v42 = 2112;
    v43 = v12;
    v44 = 2112;
    v45 = v13;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "<HUHomeFeatureOnboardingUtilities:home:onboardHomeHub2FromPresentingViewController:devices:usageOptions:> home = %@ (%{public}@) | presentingVC: %@ | devices: %@ | usageOptions: %@", buf, 0x34u);
  }

  v16 = _staticOnboardingFuture;
  if (!_staticOnboardingFuture)
  {
    v17 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
    v18 = _staticOnboardingFuture;
    _staticOnboardingFuture = v17;

    v16 = _staticOnboardingFuture;
  }

  if (([v16 isFinished] & 1) == 0)
  {
    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = NSStringFromSelector(a2);
      *buf = 138412290;
      v37 = v20;
      _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ Found a previous Onboarder still running, ours will start after that one completes...", buf, 0xCu);
    }
  }

  v21 = _staticOnboardingFuture;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __106__HUHomeFeatureOnboardingUtilities_home_onboardHomeHub2FromPresentingViewController_devices_usageOptions___block_invoke;
  v30[3] = &unk_277DBA9E0;
  v34 = v11;
  v35 = a2;
  v31 = v10;
  v32 = v12;
  v33 = v13;
  v22 = v11;
  v23 = v13;
  v24 = v12;
  v25 = v10;
  v26 = [v21 flatMap:v30];
  v27 = _staticOnboardingFuture;
  v28 = _staticOnboardingFuture;

  return v27;
}

id __106__HUHomeFeatureOnboardingUtilities_home_onboardHomeHub2FromPresentingViewController_devices_usageOptions___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 64));
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = &unk_282492A68;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ started with feature flows %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = [[HUHomeFeatureOnboarder alloc] initWithFeatures:&unk_282492A68 home:*(a1 + 32) devices:*(a1 + 40) usageOptions:*(a1 + 48)];
  [*(*&buf[8] + 40) startOnboardingWithPresentingViewController:*(a1 + 56) usageOptions:*(a1 + 48)];
  v6 = [*(*&buf[8] + 40) completionFuture];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __106__HUHomeFeatureOnboardingUtilities_home_onboardHomeHub2FromPresentingViewController_devices_usageOptions___block_invoke_97;
  v16[3] = &unk_277DBA9B8;
  v7 = *(a1 + 64);
  v19 = buf;
  v20 = v7;
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v17 = v13;
  v18 = v12;
  v14 = [v6 flatMap:v16];

  _Block_object_dispose(buf, 8);

  return v14;
}

id __106__HUHomeFeatureOnboardingUtilities_home_onboardHomeHub2FromPresentingViewController_devices_usageOptions___block_invoke_97(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(*(a1 + 64) + 8) + 40) restart];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v8)
    {
      v9 = NSStringFromSelector(*(a1 + 72));
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ RESTARTED same onboarding (Identify Voice))", &v14, 0xCu);
    }

    v10 = [HUHomeFeatureOnboardingUtilities home:*(a1 + 32) onboardHomeHub2FromPresentingViewController:*(a1 + 40) devices:*(a1 + 48) usageOptions:*(a1 + 56)];
  }

  else
  {
    if (v8)
    {
      v11 = NSStringFromSelector(*(a1 + 72));
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "HUHomeFeatureOnboardingUtilities:%@ completed with results %@", &v14, 0x16u);
    }

    v10 = [HUHomeFeatureOnboardingUtilities home:*(a1 + 32) processHomeFeatureOnboarderResults:v3];
  }

  v12 = v10;

  return v12;
}

+ (id)atLeastOneHomePodHasLanguageSettingsForHomeFuture:(id)a3
{
  v93 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v49 = objc_alloc_init(MEMORY[0x277D2C900]);
  v43 = v3;
  v44 = [v3 hf_homePods];
  v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v4 setQualityOfService:33];
  v46 = v4;
  [v4 setMaxConcurrentOperationCount:-1];
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x2020000000;
  v81[3] = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v5 = [MEMORY[0x277D146E8] sharedDispatcher];
  v6 = [v5 homeManager];
  v50 = [v6 hasOptedToHH2];

  if (![v44 count])
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v41 = NSStringFromSelector(a2);
      *buf = 138412546;
      v83 = a1;
      v84 = 2112;
      v85 = v41;
      _os_log_debug_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEBUG, "%@:%@ No HomePods found in the home.", buf, 0x16u);
    }

    [v49 finishWithResult:MEMORY[0x277CBEC28]];
    v8 = v49;
    goto LABEL_39;
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [HUHomeFeatureOnboardingUtilities _initializeSiriLanguageOptionsManagerIfNecessaryForHomePods:v44];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__HUHomeFeatureOnboardingUtilities_atLeastOneHomePodHasLanguageSettingsForHomeFuture___block_invoke;
    block[3] = &unk_277DB8488;
    v76 = v44;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v44;
  v9 = [obj countByEnumeratingWithState:&v71 objects:v92 count:16];
  if (!v9)
  {
LABEL_32:

    if ((v50 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v48 = *v72;
  v45 = *MEMORY[0x277D13338];
  *&v10 = 138413314;
  v42 = v10;
LABEL_10:
  v47 = v9;
  v11 = 0;
  while (1)
  {
    if (*v72 != v48)
    {
      objc_enumerationMutation(obj);
    }

    if (*(v78 + 24) == 1)
    {
      v8 = v49;

      goto LABEL_39;
    }

    v12 = *(*(&v71 + 1) + 8 * v11);
    v13 = [v12 mediaProfile];
    v14 = v13;
    if (!v50)
    {
      break;
    }

    v15 = MEMORY[0x277CCA8C8];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __86__HUHomeFeatureOnboardingUtilities_atLeastOneHomePodHasLanguageSettingsForHomeFuture___block_invoke_2;
    v63[3] = &unk_277DBAA30;
    v16 = v13;
    v64 = v16;
    v67 = v81;
    v68 = &v77;
    v69 = a1;
    v70 = a2;
    v17 = v49;
    v65 = v17;
    v18 = v46;
    v66 = v18;
    v19 = [v15 blockOperationWithBlock:v63];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __86__HUHomeFeatureOnboardingUtilities_atLeastOneHomePodHasLanguageSettingsForHomeFuture___block_invoke_102;
    v56[3] = &unk_277DBAA58;
    v59 = &v77;
    v60 = v81;
    v57 = obj;
    v61 = a1;
    v62 = a2;
    v58 = v17;
    [v19 setCompletionBlock:v56];
    v20 = [v16 hf_backingAccessory];
    v21 = [v20 name];
    [v19 setName:v21];

    v22 = [v18 operations];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __86__HUHomeFeatureOnboardingUtilities_atLeastOneHomePodHasLanguageSettingsForHomeFuture___block_invoke_103;
    v54[3] = &unk_277DBAA80;
    v23 = v19;
    v55 = v23;
    v24 = [v22 na_firstObjectPassingTest:v54];

    if (!v24)
    {
      [v18 addOperation:v23];
    }

LABEL_30:
    if (v47 == ++v11)
    {
      v9 = [obj countByEnumeratingWithState:&v71 objects:v92 count:16];
      if (v9)
      {
        goto LABEL_10;
      }

      goto LABEL_32;
    }
  }

  v25 = [v13 hf_settingsAdapterManager];
  v26 = [v25 adapterForIdentifier:v45];
  objc_opt_class();
  v27 = v26;
  if (objc_opt_isKindOfClass())
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  v30 = [v29 selectedLanguageOption];
  v31 = [v29 availableLanguageOptions];
  v32 = v31;
  if (v30 && [v31 count])
  {
    v33 = HFLogForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = NSStringFromSelector(a2);
      *buf = v42;
      v83 = a1;
      v84 = 2112;
      v85 = v34;
      v86 = 2112;
      v87 = v12;
      v88 = 2112;
      v89 = v30;
      v90 = 2112;
      v91 = v32;
      _os_log_impl(&dword_20CEB6000, v33, OS_LOG_TYPE_DEFAULT, "%@:%@ Found HomePod [%@] has selected language option [%@] and available language options [%@] from the Adapter.", buf, 0x34u);
    }

    *(v78 + 24) = 1;
    v35 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v49 finishWithResult:v35];
    v36 = 0;
    v37 = 1;
  }

  else
  {
    v35 = HFLogForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v38 = NSStringFromSelector(a2);
      *buf = 138412802;
      v83 = a1;
      v84 = 2112;
      v85 = v38;
      v86 = 2112;
      v87 = v12;
      _os_log_impl(&dword_20CEB6000, v35, OS_LOG_TYPE_DEFAULT, "%@:%@ Siri Language Setting For HomePod [%@] Not Found.", buf, 0x20u);
    }

    v37 = 0;
    v36 = 1;
  }

  if (v36)
  {
    goto LABEL_30;
  }

  v8 = v49;
  if ((v37 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  if ((v78[3] & 1) == 0)
  {
    [v49 finishWithResult:MEMORY[0x277CBEC28]];
  }

LABEL_38:
  v39 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v8 = [v49 reschedule:v39];

LABEL_39:
  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(v81, 8);

  return v8;
}

void __86__HUHomeFeatureOnboardingUtilities_atLeastOneHomePodHasLanguageSettingsForHomeFuture___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) hf_siriLanguageOptionsManager];
  v3 = [v2 selectedLanguageOption];
  v4 = [v2 availableSiriLanguageOptions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__HUHomeFeatureOnboardingUtilities_atLeastOneHomePodHasLanguageSettingsForHomeFuture___block_invoke_3;
  v9[3] = &unk_277DBAA08;
  v5 = *(a1 + 56);
  v10 = v3;
  v6 = *(a1 + 72);
  v14 = v5;
  v15 = v6;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v7 = v3;
  v8 = [v4 addCompletionBlock:v9];
}

void __86__HUHomeFeatureOnboardingUtilities_atLeastOneHomePodHasLanguageSettingsForHomeFuture___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  ++*(*(*(a1 + 64) + 8) + 24);
  v7 = v5;
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9)
  {
    LOBYTE(v9) = [v7 count] != 0;
  }

  *(*(*(a1 + 72) + 8) + 24) = v9;
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 80);
    v12 = NSStringFromSelector(*(a1 + 88));
    v13 = [*(a1 + 40) hf_backingAccessory];
    v14 = [v13 name];
    v15 = *(a1 + 32);
    v16 = [v8 count];
    v17 = *(*(*(a1 + 64) + 8) + 24);
    v18 = *(*(*(a1 + 72) + 8) + 24);
    v19 = 138413826;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = v15;
    v27 = 2048;
    v28 = v16;
    v29 = 2048;
    v30 = v17;
    v31 = 1024;
    v32 = v18;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ OptionsManager - HomePodProfile [%@], selectedLanguageOption: [%@], languageOptions: [%ld], futuresCompleted: %lu, hasLanguageSettings: %{BOOL}d", &v19, 0x44u);
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    [*(a1 + 48) finishWithResult:MEMORY[0x277CBEC38]];
    [*(a1 + 56) cancelAllOperations];
  }
}

uint64_t __86__HUHomeFeatureOnboardingUtilities_atLeastOneHomePodHasLanguageSettingsForHomeFuture___block_invoke_102(uint64_t result)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = *(*(*(result + 56) + 8) + 24);
    result = [*(result + 32) count];
    if (v2 == result)
    {
      v3 = HFLogForCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(v1 + 64);
        v5 = NSStringFromSelector(*(v1 + 72));
        v6 = *(*(*(v1 + 56) + 8) + 24);
        v7 = *(*(*(v1 + 48) + 8) + 24);
        v8 = 138413058;
        v9 = v4;
        v10 = 2112;
        v11 = v5;
        v12 = 2048;
        v13 = v6;
        v14 = 1024;
        v15 = v7;
        _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@:%@: No homepod language options found. futuresCompleted: %lu, hasLanguageSettings: %{BOOL}d", &v8, 0x26u);
      }

      return [*(v1 + 40) finishWithResult:MEMORY[0x277CBEC28]];
    }
  }

  return result;
}

BOOL __86__HUHomeFeatureOnboardingUtilities_atLeastOneHomePodHasLanguageSettingsForHomeFuture___block_invoke_103(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [*(a1 + 32) name];
  v5 = v3 == v4;

  return v5;
}

+ (void)_initializeSiriLanguageOptionsManagerIfNecessaryForHomePods:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v15;
    *&v5 = 138412290;
    v13 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 mediaProfile];

        if (v10)
        {
          v11 = [v9 mediaProfile];
          v12 = [v11 hf_siriLanguageOptionsManager];
        }

        else
        {
          v12 = HFLogForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v13;
            v19 = v9;
            _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "mediaProfile is NULL for %@:", buf, 0xCu);
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }
}

+ (BOOL)home:(id)a3 hasSomeHomePodsOnSupportedVoiceRecognitionLanguages:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 hf_hasHomePods])
  {
    v9 = [HUHomeFeatureOnboardingUtilities home:v7 createMultiUserLanguageToHomePodsMapping:v8];
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      v15 = 138413058;
      v16 = a1;
      v17 = 2112;
      v18 = v11;
      v19 = 2048;
      v20 = [v9 count];
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ %lu HomePods on Supported Languages (languageToHomePodsMapping %@)", &v15, 0x2Au);
    }

    v12 = [v9 count]!= 0;
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@: There are no HomePods so we will return NO in this case", &v15, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

+ (id)fetchSupportedVoiceRecognitionLanguages
{
  v2 = _supportedVoiceRecognitionLanguages;
  if (!_supportedVoiceRecognitionLanguages)
  {
    v3 = NSStringFromSelector(a2);
    NSLog(&cfstr_Fetchsupported.isa, v3);

    v2 = _supportedVoiceRecognitionLanguages;
  }

  v4 = [v2 copy];

  return v4;
}

+ (void)fetchSupportedVoiceRecognitionLanguagesWithCompletion:(id)a3
{
  v3 = MEMORY[0x277CEF3A8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 fetchSupportedMultiUserLanguageCodes:v4];
}

+ (void)presentAlertConfirmingTurningOfVoiceRecognitionFrom:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v27 = v4;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@: Now presenting alert to turn OFF Voice Recognition", buf, 0x16u);
  }

  v7 = MEMORY[0x277D75110];
  v8 = _HULocalizedStringWithDefaultValue(@"HUTurnOffVoiceRecognition_Alert_Title", @"HUTurnOffVoiceRecognition_Alert_Title", 1);
  v9 = _HULocalizedStringWithDefaultValue(@"HUTurnOffVoiceRecognition_Alert_Detail", @"HUTurnOffVoiceRecognition_Alert_Detail", 1);
  v10 = [v7 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = MEMORY[0x277D750F8];
  v12 = _HULocalizedStringWithDefaultValue(@"HUTurnOffVoiceRecognition_Confirmation_TurnOff", @"HUTurnOffVoiceRecognition_Confirmation_TurnOff", 1);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __88__HUHomeFeatureOnboardingUtilities_presentAlertConfirmingTurningOfVoiceRecognitionFrom___block_invoke;
  v24[3] = &unk_277DB7600;
  v13 = v4;
  v25 = v13;
  v14 = [v11 actionWithTitle:v12 style:1 handler:v24];
  [v10 addAction:v14];

  v15 = MEMORY[0x277D750F8];
  v16 = _HULocalizedStringWithDefaultValue(@"HUTurnOffVoiceRecognition_Confirmation_DontTurnOff", @"HUTurnOffVoiceRecognition_Confirmation_DontTurnOff", 1);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __88__HUHomeFeatureOnboardingUtilities_presentAlertConfirmingTurningOfVoiceRecognitionFrom___block_invoke_126;
  v22[3] = &unk_277DB7600;
  v23 = v13;
  v17 = v13;
  v18 = [v15 actionWithTitle:v16 style:0 handler:v22];
  [v10 addAction:v18];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __88__HUHomeFeatureOnboardingUtilities_presentAlertConfirmingTurningOfVoiceRecognitionFrom___block_invoke_127;
  v20[3] = &unk_277DB8488;
  v21 = v10;
  v19 = v10;
  [v17 presentViewController:v19 animated:1 completion:v20];
}

void __88__HUHomeFeatureOnboardingUtilities_presentAlertConfirmingTurningOfVoiceRecognitionFrom___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    v6 = 136315394;
    v7 = "+[HUHomeFeatureOnboardingUtilities presentAlertConfirmingTurningOfVoiceRecognitionFrom:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped '%@' from the alert popup", &v6, 0x16u);
  }

  [*(a1 + 32) userTappedContinueFromWarning];
}

void __88__HUHomeFeatureOnboardingUtilities_presentAlertConfirmingTurningOfVoiceRecognitionFrom___block_invoke_126(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    v6 = 136315394;
    v7 = "+[HUHomeFeatureOnboardingUtilities presentAlertConfirmingTurningOfVoiceRecognitionFrom:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped '%@' from the alert popup", &v6, 0x16u);
  }

  [*(a1 + 32) userTappedCancelFromWarning];
}

void __88__HUHomeFeatureOnboardingUtilities_presentAlertConfirmingTurningOfVoiceRecognitionFrom___block_invoke_127(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(HUHomeFeatureOnboardingUtilities:presentAlertConfirmingTurningOfVoiceRecognitionFrom) Completed presenting alert %@", &v4, 0xCu);
  }
}

+ (void)presentAlertConfirmingTurningOffPersonalRequestsFrom:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v23 = v4;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@: Now presenting alert to turn OFF Personal Requests", buf, 0x16u);
  }

  v7 = _HULocalizedStringWithDefaultValue(@"HUTurnOffPersonalContent_Alert_Title", @"HUTurnOffPersonalContent_Alert_Title", 1);
  v8 = _HULocalizedStringWithDefaultValue(@"HUTurnOffPersonalContent_Alert_Detail", @"HUTurnOffPersonalContent_Alert_Detail", 1);
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v8 preferredStyle:1];
  v10 = MEMORY[0x277D750F8];
  v11 = _HULocalizedStringWithDefaultValue(@"HUTurnOffPersonalRequests_Confirmation_TurnOff", @"HUTurnOffPersonalRequests_Confirmation_TurnOff", 1);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __89__HUHomeFeatureOnboardingUtilities_presentAlertConfirmingTurningOffPersonalRequestsFrom___block_invoke;
  v20[3] = &unk_277DB7600;
  v21 = v4;
  v12 = v4;
  v13 = [v10 actionWithTitle:v11 style:1 handler:v20];
  [v9 addAction:v13];

  v14 = MEMORY[0x277D750F8];
  v15 = _HULocalizedStringWithDefaultValue(@"HUTurnOffPersonalRequests_Confirmation_DontTurnOff", @"HUTurnOffPersonalRequests_Confirmation_DontTurnOff", 1);
  v16 = [v14 actionWithTitle:v15 style:0 handler:&__block_literal_global_142];
  [v9 addAction:v16];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __89__HUHomeFeatureOnboardingUtilities_presentAlertConfirmingTurningOffPersonalRequestsFrom___block_invoke_143;
  v18[3] = &unk_277DB8488;
  v19 = v9;
  v17 = v9;
  [v12 presentViewController:v17 animated:1 completion:v18];
}

void __89__HUHomeFeatureOnboardingUtilities_presentAlertConfirmingTurningOffPersonalRequestsFrom___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    v6 = 136315394;
    v7 = "+[HUHomeFeatureOnboardingUtilities presentAlertConfirmingTurningOffPersonalRequestsFrom:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped turn off button '%@' from the alert popup", &v6, 0x16u);
  }

  [*(a1 + 32) userTappedContinueFromWarning];
}

void __89__HUHomeFeatureOnboardingUtilities_presentAlertConfirmingTurningOffPersonalRequestsFrom___block_invoke_140(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 title];
    v5 = 136315394;
    v6 = "+[HUHomeFeatureOnboardingUtilities presentAlertConfirmingTurningOffPersonalRequestsFrom:]_block_invoke";
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(%s) User tapped don't turn off button '%@' from the alert popup", &v5, 0x16u);
  }
}

void __89__HUHomeFeatureOnboardingUtilities_presentAlertConfirmingTurningOffPersonalRequestsFrom___block_invoke_143(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "<HUHomeFeatureOnboardingUtilities:presentAlertConfirmingTurningOffPersonalRequestsFrom> Completed presenting alert %@", &v4, 0xCu);
  }
}

+ (BOOL)home:(id)a3 voiceRecognitionIsSupportedForCurrentUserOnMediaAccessory:(id)a4 languageOption:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 isMultiUserEnabled] && objc_msgSend(v10, "hf_supportsMultiUser"))
  {
    v12 = objc_alloc(MEMORY[0x277D14C98]);
    v13 = [v9 currentUser];
    v14 = [v12 initWithHome:v9 user:v13 nameStyle:0];

    if (![v14 isIdentifyVoiceEnabled])
    {
      v22 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v15 = +[HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguages];
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      v26 = 138413058;
      v27 = a1;
      v28 = 2112;
      v29 = v17;
      v30 = 2048;
      v31 = [v15 count];
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@:%@ (%lu) supported voice recognition languages %@", &v26, 0x2Au);
    }

    if (v15)
    {
      if (v11)
      {
        v18 = [v11 recognitionLanguage];
        v19 = [v15 containsObject:v18];
        v20 = [MEMORY[0x277CEF368] sharedPreferences];
        v21 = [v20 languageCode];

        LOBYTE(v20) = [v18 isEqualToString:v21];
        v22 = v19 & v20;
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      v23 = HFLogForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = NSStringFromSelector(a2);
        v26 = 138412290;
        v27 = v25;
        _os_log_error_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_ERROR, "%@ Error fetching voice recognition languages", &v26, 0xCu);
      }
    }

    v22 = 0;
    goto LABEL_15;
  }

  v22 = 0;
LABEL_17:

  return v22;
}

+ (id)checkSiriForiCloudEnabledPromptingUser:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__7;
  v29 = __Block_byref_object_dispose__7;
  v30 = objc_alloc_init(MEMORY[0x277D2C900]);
  if ([MEMORY[0x277D14CE8] isSiriForiCloudEnabled])
  {
    [v26[5] finishWithResult:MEMORY[0x277CBEC38]];
  }

  else
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412546;
      v32 = a1;
      v33 = 2112;
      v34 = v7;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ Siri for iCloud is not enabled, prompting user to enable before enabling Voice Recognition", buf, 0x16u);
    }

    v8 = MEMORY[0x277D75110];
    v9 = _HULocalizedStringWithDefaultValue(@"HUTurnOnSiriIniCloud_Alert_Title", @"HUTurnOnSiriIniCloud_Alert_Title", 1);
    v10 = _HULocalizedStringWithDefaultValue(@"HUTurnOnSiriIniCloud_Alert_Message", @"HUTurnOnSiriIniCloud_Alert_Message", 1);
    v11 = [v8 alertControllerWithTitle:v9 message:v10 preferredStyle:1];

    v12 = MEMORY[0x277D750F8];
    v13 = _HULocalizedStringWithDefaultValue(@"HUTurnOnSiriIniCloud_Confirmation_TurnOn", @"HUTurnOnSiriIniCloud_Confirmation_TurnOn", 1);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __75__HUHomeFeatureOnboardingUtilities_checkSiriForiCloudEnabledPromptingUser___block_invoke;
    v24[3] = &unk_277DBAAD0;
    v24[4] = &v25;
    v24[5] = a1;
    v24[6] = a2;
    v14 = [v12 actionWithTitle:v13 style:0 handler:v24];

    v15 = MEMORY[0x277D750F8];
    v16 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __75__HUHomeFeatureOnboardingUtilities_checkSiriForiCloudEnabledPromptingUser___block_invoke_161;
    v23[3] = &unk_277DBAAF8;
    v23[4] = &v25;
    v17 = [v15 actionWithTitle:v16 style:0 handler:v23];

    [v11 addAction:v14];
    [v11 addAction:v17];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __75__HUHomeFeatureOnboardingUtilities_checkSiriForiCloudEnabledPromptingUser___block_invoke_162;
    v21[3] = &unk_277DB8488;
    v18 = v11;
    v22 = v18;
    [v5 presentViewController:v18 animated:1 completion:v21];
  }

  v19 = v26[5];
  _Block_object_dispose(&v25, 8);

  return v19;
}

void __75__HUHomeFeatureOnboardingUtilities_checkSiriForiCloudEnabledPromptingUser___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    *buf = 136315394;
    v10 = "+[HUHomeFeatureOnboardingUtilities checkSiriForiCloudEnabledPromptingUser:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped 'Turn On Siri In iCloud - TurnOn' button '%@' from the alert popup", buf, 0x16u);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__HUHomeFeatureOnboardingUtilities_checkSiriForiCloudEnabledPromptingUser___block_invoke_156;
  v6[3] = &unk_277DBAAA8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  [MEMORY[0x277D14CE8] updateSiriForiCloudEnabled:1 completionHandler:v6];
}

void __75__HUHomeFeatureOnboardingUtilities_checkSiriForiCloudEnabledPromptingUser___block_invoke_156(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = NSStringFromSelector(*(a1 + 48));
      v7 = 138412802;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@: There was an error enabling iCloud for Siri: %@", &v7, 0x20u);
    }

    [*(*(*(a1 + 32) + 8) + 40) finishWithError:v3];
  }

  else
  {
    [*(*(*(a1 + 32) + 8) + 40) finishWithResult:MEMORY[0x277CBEC38]];
  }
}

uint64_t __75__HUHomeFeatureOnboardingUtilities_checkSiriForiCloudEnabledPromptingUser___block_invoke_161(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[HUHomeFeatureOnboardingUtilities checkSiriForiCloudEnabledPromptingUser:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%s) User tapped cancel button from the alert popup", &v4, 0xCu);
  }

  return [*(*(*(a1 + 32) + 8) + 40) finishWithResult:MEMORY[0x277CBEC28]];
}

void __75__HUHomeFeatureOnboardingUtilities_checkSiriForiCloudEnabledPromptingUser___block_invoke_162(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "<HUHomeFeatureOnboardingUtilities:checkSiriForiCloudEnabledPromptingUser> Completed presenting alertController %@", &v4, 0xCu);
  }
}

+ (id)home:(id)a3 processHomeFeatureOnboarderResults:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412802;
    *&buf[4] = a1;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    *&buf[22] = 2112;
    v67 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@: Postprocessing Feature Onboarding results %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v67) = 0;
  v8 = [v5 objectForKeyedSubscript:@"HUHomeFeatureOnboardingKey_IdentifyVoice_FinishedOnboarding"];
  v9 = v8;
  v10 = *&buf[8];
  if (*(*&buf[8] + 24))
  {
    v11 = 1;
  }

  else
  {
    v11 = [v8 BOOLValue];
    v10 = *&buf[8];
  }

  *(v10 + 24) = v11;
  v12 = [v5 objectForKeyedSubscript:@"HUHomeFeatureOnboardingKey_Announce_FinishedOnboarding"];

  v38 = [v12 BOOLValue];
  v13 = [v5 objectForKeyedSubscript:@"HUHomeFeatureOnboardingKey_HomeTheater_FinishedOnboarding"];

  v37 = [v13 BOOLValue];
  v14 = [v5 objectForKeyedSubscript:@"HUHomeFeatureOnboardingKey_TVViewingProfiles_FinishedOnboarding"];

  v36 = [v14 BOOLValue];
  v15 = [v5 objectForKeyedSubscript:@"HUHomeFeatureOnboardingKey_TVViewingProfiles_DismissReminderBanner"];

  v16 = [v15 BOOLValue];
  v17 = [v5 objectForKeyedSubscript:@"HUHomeFeatureOnboardingKey_NaturalLighting_FinishedOnboarding"];

  v18 = [v17 BOOLValue];
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v19 = [v5 objectForKeyedSubscript:@"HUHomeFeatureOnboardingKey_IdentifyVoice_DismissReminderBanner"];

  v20 = v63;
  if (v63[3])
  {
    v21 = 1;
  }

  else
  {
    v21 = [v19 BOOLValue];
    v20 = v63;
  }

  *(v20 + 24) = v21;
  v22 = [v5 objectForKeyedSubscript:@"HUHomeFeatureOnboardingKey_CameraRecording_FinishedOnboarding"];

  v23 = [v22 BOOLValue];
  v24 = [v5 objectForKeyedSubscript:@"HUHomeFeatureOnboardingKey_CameraRecording_DismissReminderBanner"];

  v25 = [v24 BOOLValue];
  v26 = [v5 objectForKeyedSubscript:@"HUHomeFeatureOnboardingKey_AccessoryFirmwareUpdate_FinishedOnboarding"];

  v27 = [v26 BOOLValue];
  v28 = [v5 objectForKeyedSubscript:@"HUHomeFeatureOnboardingKey_UtilityDiscovery_FinishedOnboarding"];

  v29 = [v28 BOOLValue];
  if ([HUHomeFeatureOnboardingUtilities hasUserSaidYesToVoiceIdentificationInResults:v5])
  {
    v30 = [HUHomeFeatureOnboardingUtilities _checkIdentifyVoicePrerequisitesForHome:v39];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __76__HUHomeFeatureOnboardingUtilities_home_processHomeFeatureOnboarderResults___block_invoke;
    v58[3] = &unk_277DBAB48;
    v60 = a1;
    v61 = a2;
    v59 = v39;
    v31 = [v30 flatMap:v58];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __76__HUHomeFeatureOnboardingUtilities_home_processHomeFeatureOnboarderResults___block_invoke_175;
    v57[3] = &unk_277DBAB70;
    v57[4] = buf;
    v57[5] = &v62;
    v32 = [v30 flatMap:v57];
  }

  else
  {
    v30 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __76__HUHomeFeatureOnboardingUtilities_home_processHomeFeatureOnboarderResults___block_invoke_2_176;
  v42[3] = &unk_277DBAB98;
  v33 = v39;
  v46 = a1;
  v47 = a2;
  v43 = v33;
  v44 = buf;
  v45 = &v62;
  v48 = v36;
  v49 = v16;
  v50 = v23;
  v51 = v25;
  v52 = v38;
  v53 = v37;
  v54 = v18;
  v55 = v27;
  v56 = v29;
  v34 = [v30 flatMap:v42];

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(buf, 8);

  return v34;
}

id __76__HUHomeFeatureOnboardingUtilities_home_processHomeFeatureOnboarderResults___block_invoke(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = NSStringFromSelector(*(a1 + 48));
    *buf = 138412802;
    v60 = v5;
    v61 = 2112;
    v62 = v6;
    v63 = 1024;
    LODWORD(v64) = [v3 BOOLValue];
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@: Voice Identification pre-requisites are satisfied? %{BOOL}d ...", buf, 0x1Cu);
  }

  if ([v3 BOOLValue])
  {
    v7 = objc_alloc(MEMORY[0x277D14C98]);
    v8 = *(a1 + 32);
    v9 = [v8 currentUser];
    v10 = [v7 initWithHome:v8 user:v9 nameStyle:0];

    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = NSStringFromSelector(*(a1 + 48));
      v14 = [v10 user];
      v15 = [v14 name];
      *buf = 138412802;
      v60 = v12;
      v61 = 2112;
      v62 = v13;
      v63 = 2112;
      v64 = v15;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@:%@: ...starting to enable Identify Voice for user %@", buf, 0x20u);
    }

    if ([*(a1 + 32) isMultiUserEnabled])
    {
      v16 = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    else
    {
      v21 = HFLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 40);
        v23 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412546;
        v60 = v22;
        v61 = 2112;
        v62 = v23;
        _os_log_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEFAULT, "%@:%@: FAIL-SAFE: THIS SHOULD NOT HAPPEN. Enabling Multi User in HomeKit, because we are turning on Identify Voice", buf, 0x16u);
      }

      v24 = [MEMORY[0x277D14640] sharedHandler];
      v25 = [MEMORY[0x277CCA9B8] hf_errorWithCode:51];
      [v24 handleError:v25 operationType:*MEMORY[0x277D13C50] options:0 retryBlock:0 cancelBlock:0];

      v26 = MEMORY[0x277D2C900];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __76__HUHomeFeatureOnboardingUtilities_home_processHomeFeatureOnboarderResults___block_invoke_165;
      v56[3] = &unk_277DB7508;
      v57 = *(a1 + 32);
      v16 = [v26 futureWithErrorOnlyHandlerAdapterBlock:v56];
    }

    v27 = [v10 setPlaybackInfluencesForYou:1];
    v28 = [v10 user];
    v29 = [v10 home];
    v30 = [v28 userListeningHistoryUpdateControlForHome:v29];
    v31 = [v30 mutableCopy];

    v32 = [v10 home];
    v33 = [v32 accessories];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __76__HUHomeFeatureOnboardingUtilities_home_processHomeFeatureOnboarderResults___block_invoke_2;
    v54[3] = &unk_277DB8358;
    v34 = v31;
    v55 = v34;
    [v33 na_each:v54];

    v35 = HFLogForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v34 accessories];
      v37 = [v10 user];
      v38 = [v10 home];
      *buf = 138412802;
      v60 = v36;
      v61 = 2112;
      v62 = v37;
      v63 = 2112;
      v64 = v38;
      _os_log_impl(&dword_20CEB6000, v35, OS_LOG_TYPE_DEFAULT, "Updating user listening history setting for accessories: %@ | user: %@ | home: %@", buf, 0x20u);
    }

    v39 = MEMORY[0x277D2C900];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __76__HUHomeFeatureOnboardingUtilities_home_processHomeFeatureOnboarderResults___block_invoke_168;
    v51[3] = &unk_277DB8200;
    v52 = v10;
    v53 = v34;
    v40 = v34;
    v41 = v10;
    v42 = [v39 futureWithBlock:v51];

    v43 = MEMORY[0x277D2C900];
    v58[0] = v16;
    v44 = [v41 setEnableIdentifyVoice:1];
    v58[1] = v44;
    v58[2] = v42;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:3];
    v46 = [v43 chainFutures:v45];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __76__HUHomeFeatureOnboardingUtilities_home_processHomeFeatureOnboarderResults___block_invoke_172;
    v48[3] = &unk_277DBAB20;
    v50 = *(a1 + 40);
    v49 = v3;
    v20 = [v46 flatMap:v48];
  }

  else
  {
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 40);
      v19 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v60 = v18;
      v61 = 2112;
      v62 = v19;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@:%@: ...NOT enabling Identify Voice.", buf, 0x16u);
    }

    v20 = [MEMORY[0x277D2C900] futureWithResult:v3];
  }

  return v20;
}

void __76__HUHomeFeatureOnboardingUtilities_home_processHomeFeatureOnboarderResults___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_supportsUserLevelUpdateListeningHistorySetting])
  {
    [*(a1 + 32) addAccessory:v3];
  }
}

void __76__HUHomeFeatureOnboardingUtilities_home_processHomeFeatureOnboarderResults___block_invoke_168(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) user];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) home];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__HUHomeFeatureOnboardingUtilities_home_processHomeFeatureOnboarderResults___block_invoke_2_169;
  v8[3] = &unk_277DB8C00;
  v9 = v3;
  v7 = v3;
  [v4 updateUserListeningHistoryUpdateControl:v5 forHome:v6 completionHandler:v8];
}

void __76__HUHomeFeatureOnboardingUtilities_home_processHomeFeatureOnboarderResults___block_invoke_2_169(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Failed to update user listening history with error: %@", &v6, 0xCu);
    }

    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    if (v5)
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Successfully updated user listening history", &v6, 2u);
    }

    [*(a1 + 32) finishWithNoResult];
  }
}

id __76__HUHomeFeatureOnboardingUtilities_home_processHomeFeatureOnboarderResults___block_invoke_172(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__7;
  v13 = __Block_byref_object_dispose__7;
  v14 = objc_alloc_init(MEMORY[0x277CEF3A8]);
  v4 = v10[5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HUHomeFeatureOnboardingUtilities_home_processHomeFeatureOnboarderResults___block_invoke_2_173;
  v7[3] = &unk_277DBAAA8;
  v8 = *(a1 + 40);
  v7[4] = &v9;
  [v4 homeOnboardingFlowInvoked:1 completion:v7];
  v5 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 32)];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __76__HUHomeFeatureOnboardingUtilities_home_processHomeFeatureOnboarderResults___block_invoke_2_173(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v7 = NSStringFromSelector(*(a1 + 48));
      v11 = 138412802;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v3;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "%@:%@: ...Error with homeOnboardingFlowInvoked [%@]", &v11, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v7 = NSStringFromSelector(*(a1 + 48));
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@: Successfully invoked AFSettingsConnection homeOnboardingFlowInvoked.", &v11, 0x16u);
    goto LABEL_6;
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

id __76__HUHomeFeatureOnboardingUtilities_home_processHomeFeatureOnboarderResults___block_invoke_175(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  if (*(v5 + 24))
  {
    v6 = 1;
  }

  else
  {
    v6 = [v3 BOOLValue];
    v5 = *(*(a1 + 32) + 8);
  }

  *(v5 + 24) = v6;
  v7 = *(*(a1 + 40) + 8);
  if (*(v7 + 24))
  {
    v8 = 1;
  }

  else
  {
    v8 = [v4 BOOLValue];
    v7 = *(*(a1 + 40) + 8);
  }

  *(v7 + 24) = v8;
  v9 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v9;
}

id __76__HUHomeFeatureOnboardingUtilities_home_processHomeFeatureOnboarderResults___block_invoke_2_176(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D14C98]);
  v5 = *(a1 + 32);
  v6 = [v5 currentUser];
  v7 = [v4 initWithHome:v5 user:v6 nameStyle:0];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 56);
    v10 = NSStringFromSelector(*(a1 + 64));
    v11 = *(*(*(a1 + 40) + 8) + 24);
    v12 = *(*(*(a1 + 48) + 8) + 24);
    v36 = 138413058;
    v37 = v9;
    v38 = 2112;
    v39 = v10;
    v40 = 1024;
    v41 = v11;
    v42 = 1024;
    v43 = v12;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ VOICE ID: Onboarding dismissed? %{BOOL}d / Banner dismissed? %{BOOL}d", &v36, 0x22u);
  }

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 56);
    v15 = NSStringFromSelector(*(a1 + 64));
    v16 = *(a1 + 72);
    v17 = *(a1 + 73);
    v36 = 138413058;
    v37 = v14;
    v38 = 2112;
    v39 = v15;
    v40 = 1024;
    v41 = v16;
    v42 = 1024;
    v43 = v17;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@ TV VIEWING PROFILE: Onboarding dismissed? %{BOOL}d / Banner dismissed? %{BOOL}d", &v36, 0x22u);
  }

  v18 = HFLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 56);
    v20 = NSStringFromSelector(*(a1 + 64));
    v21 = *(a1 + 74);
    v22 = *(a1 + 75);
    v36 = 138413058;
    v37 = v19;
    v38 = 2112;
    v39 = v20;
    v40 = 1024;
    v41 = v21;
    v42 = 1024;
    v43 = v22;
    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@ CAMERA RECORDING: Onboarding dismissed? %{BOOL}d / Banner dismissed? %{BOOL}d", &v36, 0x22u);
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v23 = [v7 setDismissIdentifyVoiceReminderBanner:1];
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v24 = [v7 setDismissIdentifyVoiceOnboarding:1];
  }

  if (*(a1 + 76) == 1)
  {
    v25 = [v7 setDismissAnnounceOnboarding:1];
  }

  if (*(a1 + 77) == 1)
  {
    v26 = [v7 setDismissHomeTheaterOnboarding:1];
  }

  if (*(a1 + 78) == 1)
  {
    v27 = [v7 setDismissNaturalLightingOnboarding:1];
  }

  if (*(a1 + 73) == 1)
  {
    v28 = [v7 setDismissTVViewingProfilesReminderBanner:1];
  }

  if (*(a1 + 72) == 1)
  {
    v29 = [v7 setDismissTVViewingProfilesOnboarding:1];
  }

  if (*(a1 + 75) == 1)
  {
    v30 = [v7 setDismissCameraRecordingReminderBanner:1];
  }

  if (*(a1 + 74) == 1)
  {
    v31 = [v7 setDismissCameraRecordingOnboarding:1];
  }

  if (*(a1 + 79) == 1)
  {
    v32 = [v7 setDismissAccessoryFirmwareUpdateOnboarding:1];
  }

  if (*(a1 + 80) == 1)
  {
    v33 = [v7 setDismissUtilityOnboarding:1];
  }

  v34 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v34;
}

+ (BOOL)_checkIdentifyVoicePrerequisitesSimpleForHome:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 hf_hasHomePods];
  v7 = [v5 hf_hasRMVCapableAppleTV];
  v8 = v7;
  if ((v6 & 1) != 0 || v7)
  {
    v10 = +[HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguages];
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      v32 = 138413058;
      v33 = a1;
      v34 = 2112;
      v35 = v12;
      v36 = 2048;
      v37 = [v10 count];
      v38 = 2112;
      v39 = v10;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@:%@ (%lu) supported voice recognition languages %@", &v32, 0x2Au);
    }

    if (!v10)
    {
      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v31 = NSStringFromSelector(a2);
        v32 = 138412290;
        v33 = v31;
        _os_log_error_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_ERROR, "%@ Error fetching voice recognition languages", &v32, 0xCu);
      }

      v9 = 0;
      goto LABEL_30;
    }

    if (v8 & 1 | ((v6 & 1) == 0))
    {
      if ([HUHomeFeatureOnboardingUtilities isDeviceUsingASupportedVoiceRecognitionSiriLanguage:v10 shouldFallbackToBestSupportedLanguage:0])
      {
        v9 = 1;
LABEL_31:

        goto LABEL_32;
      }

      v13 = 0;
    }

    else
    {
      v13 = [HUHomeFeatureOnboardingUtilities home:v5 createMultiUserLanguageToHomePodsMapping:v10];
      v14 = HFLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = NSStringFromSelector(a2);
        v16 = [v13 count];
        v32 = 138413058;
        v33 = a1;
        v34 = 2112;
        v35 = v15;
        v36 = 2048;
        v37 = v16;
        v38 = 2112;
        v39 = v13;
        _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@ languageToHomePodsMapping (%lu) %@", &v32, 0x2Au);
      }

      v17 = [v5 hf_homePods];
      v18 = [v17 na_any:&__block_literal_global_179];

      if (v18 && ![v13 count])
      {
        v19 = HFLogForCategory();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        v26 = NSStringFromSelector(a2);
        v32 = 138412802;
        v33 = a1;
        v34 = 2112;
        v35 = v26;
        v36 = 2112;
        v37 = v10;
        v27 = "%@:%@: No HomePods on supported voice recognition languages (%@)";
        v28 = v19;
        v29 = 32;
        goto LABEL_27;
      }

      if ([HUHomeFeatureOnboardingUtilities isDeviceUsingASupportedVoiceRecognitionSiriLanguage:v10 shouldFallbackToBestSupportedLanguage:0])
      {
        v19 = [HUHomeFeatureOnboardingUtilities createPersonalIdentityDeviceLanguageMismatchList:v13];
        v20 = [v5 hf_numberOfHomePods];
        v21 = HFLogForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = NSStringFromSelector(a2);
          v23 = [v19 count];
          v32 = 138413314;
          v33 = a1;
          v34 = 2112;
          v35 = v22;
          v36 = 2048;
          v37 = v23;
          v38 = 2112;
          v39 = v19;
          v40 = 2048;
          v41 = v20;
          _os_log_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEFAULT, "%@:%@ This is the list of %lu mismatching HomePods %@ out of %lu HomePods", &v32, 0x34u);
        }

        if ([v19 count]!= v20)
        {
          v9 = 1;
          goto LABEL_29;
        }

        v24 = HFLogForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = NSStringFromSelector(a2);
          v32 = 138412802;
          v33 = a1;
          v34 = 2112;
          v35 = v25;
          v36 = 2048;
          v37 = v20;
          _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "%@:%@: None of the %lu HomePod(s) in the home match the phone's language", &v32, 0x20u);
        }

        goto LABEL_28;
      }
    }

    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v26 = NSStringFromSelector(a2);
      v32 = 138412546;
      v33 = a1;
      v34 = 2112;
      v35 = v26;
      v27 = "%@:%@: This iOS device is NOT on a supported voice recognition language";
      v28 = v19;
      v29 = 22;
LABEL_27:
      _os_log_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_DEFAULT, v27, &v32, v29);
    }

LABEL_28:
    v9 = 0;
LABEL_29:

LABEL_30:
    goto LABEL_31;
  }

  v9 = 0;
LABEL_32:

  return v9;
}

+ (id)_checkIdentifyVoicePrerequisitesForHome:(id)a3
{
  if ([HUHomeFeatureOnboardingUtilities _checkIdentifyVoicePrerequisitesSimpleForHome:a3])
  {
    [HUHomeFeatureOnboardingUtilities checkVoiceProfileAvailabiltyForLanguage:0];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
  }
  v3 = ;

  return v3;
}

+ (BOOL)_userHasSaidYesToShowTVViewingProfilesIn:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 isEqualToString:{@"HUTVViewingProfilesOnboardingKey_UserInput", v13}])
        {
          v9 = [v3 objectForKey:v8];
          if (![v9 unsignedIntegerValue] || objc_msgSend(v9, "unsignedIntegerValue") == 1)
          {

LABEL_14:
            v11 = 1;
            goto LABEL_15;
          }

          v10 = [v9 unsignedIntegerValue];

          if (v10 == 2)
          {
            goto LABEL_14;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_15:

  return v11;
}

+ (BOOL)isDeviceUsingASupportedVoiceRecognitionSiriLanguage:(id)a3 shouldFallbackToBestSupportedLanguage:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if ([v7 count])
  {
    v8 = [MEMORY[0x277CEF368] sharedPreferences];
    v9 = [v8 languageCode];

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = !v4;
    }

    if (!v10)
    {
      v11 = [MEMORY[0x277CEF368] sharedPreferences];
      v9 = [v11 bestSupportedLanguageCodeForLanguageCode:0];

      v12 = HFLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412802;
        v22 = a1;
        v23 = 2112;
        v24 = v13;
        v25 = 2112;
        v26 = v9;
        _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@:%@: This iOS device has no Siri language, fallback to best supported language: %@. ", buf, 0x20u);
      }
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __126__HUHomeFeatureOnboardingUtilities_isDeviceUsingASupportedVoiceRecognitionSiriLanguage_shouldFallbackToBestSupportedLanguage___block_invoke;
    v19[3] = &unk_277DBA780;
    v14 = v9;
    v20 = v14;
    v15 = [v7 na_any:v19];
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 138413570;
      v22 = a1;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v14;
      v29 = 1024;
      v30 = v15;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@:%@: This iOS device is on %@. %@ is a supported voice recognition language?: %{BOOL}d, (%@)", buf, 0x3Au);
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

uint64_t __126__HUHomeFeatureOnboardingUtilities_isDeviceUsingASupportedVoiceRecognitionSiriLanguage_shouldFallbackToBestSupportedLanguage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 isEqualToString:*(a1 + 32)];
  return v7;
}

+ (BOOL)hasUserSaidYesToVoiceIdentificationInResults:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    aSelector = a2;
    v8 = 0;
    v22 = 0;
    v9 = *v24;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if ([v11 isEqualToString:@"HUVoiceProfileOnboardingKey_UserInput"])
        {
          v12 = [v5 objectForKey:v11];
          if ([v12 unsignedIntegerValue])
          {
            v17 = HFLogForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = NSStringFromSelector(aSelector);
              *buf = 138412546;
              v28 = a1;
              v29 = 2112;
              v30 = v18;
              v19 = "%@:%@: NO: 'no' from Voice Profile Setup";
              goto LABEL_32;
            }

            goto LABEL_33;
          }

          BYTE4(v22) = 1;
        }

        if ([v11 isEqualToString:@"HULanguageOnboardingKey_SetupLanguage_AssistantDevice_UserInput"])
        {
          v12 = [v5 objectForKey:v11];
          if ([v12 unsignedIntegerValue])
          {
            v17 = HFLogForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = NSStringFromSelector(aSelector);
              *buf = 138412546;
              v28 = a1;
              v29 = 2112;
              v30 = v18;
              v19 = "%@:%@: NO: 'no' from Assistant Device Setup";
              goto LABEL_32;
            }

LABEL_33:

            v15 = 0;
            v13 = v5;
            goto LABEL_34;
          }

          LOBYTE(v22) = 1;
        }

        if ([v11 isEqualToString:@"HULanguageOnboardingKey_SetupLanguage_PersonalDevice_UserInput"])
        {
          v12 = [v5 objectForKey:v11];
          if ([v12 unsignedIntegerValue] != 3 && objc_msgSend(v12, "unsignedIntegerValue") != 4)
          {
            v17 = HFLogForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = NSStringFromSelector(aSelector);
              *buf = 138412546;
              v28 = a1;
              v29 = 2112;
              v30 = v18;
              v19 = "%@:%@: NO: 'no' from Personal Device Setup";
LABEL_32:
              _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, v19, buf, 0x16u);
            }

            goto LABEL_33;
          }

          v8 = 1;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    a2 = aSelector;
    if (((BYTE4(v22) | v22) | v8))
    {
      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        v28 = a1;
        v29 = 2112;
        v30 = v14;
        v31 = 2112;
        v32 = v5;
        _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@: YES: 'yes' returned for at least one of the voice identification flows (& 0 'no's) in user input results [%@]", buf, 0x20u);
      }

      v15 = 1;
      goto LABEL_34;
    }
  }

  else
  {
  }

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    *buf = 138412802;
    v28 = a1;
    v29 = 2112;
    v30 = v16;
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@: NO: 'yes' returned for none of the voice identification flows in user input results [%@]", buf, 0x20u);
  }

  v15 = 0;
LABEL_34:

  return v15;
}

+ (unint64_t)home:(id)a3 checkForOwnerUpgradeRequirementsFromResults:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (([v7 isMultiUserEnabled] & 1) != 0 || (objc_msgSend(v7, "hf_currentUserIsOwner") & 1) != 0 || (v9 = objc_msgSend(v7, "hf_hasHomePods"), v10 = objc_msgSend(v7, "hf_hasAppleTVs"), v11 = v10, (v9 & 1) == 0) && !v10)
  {
    v12 = 0;
    goto LABEL_6;
  }

  if (v9)
  {
    if ([HUHomeFeatureOnboardingUtilities _checkIdentifyVoicePrerequisitesSimpleForHome:v7])
    {
      v9 = [HUHomeFeatureOnboardingUtilities hasUserSaidYesToVoiceIdentificationInResults:v8];
      v14 = HFLogForCategory();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (!v15)
        {
          goto LABEL_22;
        }

        v16 = NSStringFromSelector(a2);
        *v20 = 138412546;
        *&v20[4] = a1;
        *&v20[12] = 2112;
        *&v20[14] = v16;
        v17 = "%@:%@ Found at least 1 HomePod which will work for Multi User if the owner upgrades";
      }

      else
      {
        if (!v15)
        {
          goto LABEL_22;
        }

        v16 = NSStringFromSelector(a2);
        *v20 = 138412546;
        *&v20[4] = a1;
        *&v20[12] = 2112;
        *&v20[14] = v16;
        v17 = "%@:%@ Found at least 1 HomePod which could work for Multi User if the owner upgrades, but user did not turn on Identify Voice, so ignoring";
      }

      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, v17, v20, 0x16u);

LABEL_22:
      if (!v11)
      {
        goto LABEL_23;
      }

LABEL_14:
      v18 = [HUHomeFeatureOnboardingUtilities _userHasSaidYesToShowTVViewingProfilesIn:v8, *v20, *&v20[16], v21];
      if (v9 & v18)
      {
        v12 = 3;
        goto LABEL_6;
      }

      v19 = 2;
      if (!v18)
      {
        v19 = 0;
      }

      goto LABEL_24;
    }

    v9 = 0;
  }

  if (v11)
  {
    goto LABEL_14;
  }

LABEL_23:
  v19 = 0;
LABEL_24:
  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = v19;
  }

LABEL_6:

  return v12;
}

+ (unint64_t)home:(id)a3 checkForMultiUserDeviceUpgradeRequirements:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = [v7 hf_hasHomePods];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = [v7 hf_hasAppleTVs];
  if ((v31[3] & 1) == 0 && !*(v27 + 24))
  {
    goto LABEL_16;
  }

  v9 = [v7 accessories];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __84__HUHomeFeatureOnboardingUtilities_home_checkForMultiUserDeviceUpgradeRequirements___block_invoke;
  v25[3] = &unk_277DBABC0;
  v25[4] = &v30;
  v25[5] = &v26;
  [v9 na_each:v25];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    v12 = *(v31 + 24) ^ 1;
    v13 = *(v27 + 24) ^ 1;
    *buf = 138413058;
    v35 = a1;
    v36 = 2112;
    v37 = v11;
    v38 = 1024;
    v39 = v12;
    v40 = 1024;
    v41 = v13;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ Some HomePods already support Multi User features?: %{BOOL}d, Some Apple TVs already support Multi User features?: %{BOOL}d", buf, 0x22u);
  }

  if ((v31[3] & 1) == 0)
  {
    if (*(v27 + 24))
    {
      v16 = 0;
LABEL_21:
      v21 = HFLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = NSStringFromSelector(a2);
        *buf = 138412546;
        v35 = a1;
        v36 = 2112;
        v37 = v22;
        _os_log_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEFAULT, "%@:%@ Found at least 1 AppleTV which needs upgrade for Multi User", buf, 0x16u);
      }

      v23 = [HUHomeFeatureOnboardingUtilities _userHasSaidYesToShowTVViewingProfilesIn:v8];
      if (v16 & v23)
      {
        v19 = 3;
        goto LABEL_30;
      }

      v17 = 2;
      if (!v23)
      {
        v17 = 0;
      }

      goto LABEL_27;
    }

LABEL_16:
    v19 = 0;
    goto LABEL_30;
  }

  if (![HUHomeFeatureOnboardingUtilities _checkIdentifyVoicePrerequisitesSimpleForHome:v7])
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 138412546;
      v35 = a1;
      v36 = 2112;
      v37 = v18;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@ Found at least 1 HomePod which could need upgrade for Multi User, but prequisistes aren't satisfied, so ignoring", buf, 0x16u);
    }

    goto LABEL_19;
  }

  if (![HUHomeFeatureOnboardingUtilities hasUserSaidYesToVoiceIdentificationInResults:v8])
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = NSStringFromSelector(a2);
      *buf = 138412546;
      v35 = a1;
      v36 = 2112;
      v37 = v20;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@ Found at least 1 HomePod which could need upgrade for Multi User, but user did not turn on Identify Voice, so ignoring", buf, 0x16u);
    }

LABEL_19:
    v16 = 0;
    goto LABEL_20;
  }

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 138412546;
    v35 = a1;
    v36 = 2112;
    v37 = v15;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@ Found at least 1 HomePod which needs upgrade for Multi User", buf, 0x16u);
  }

  v16 = 1;
LABEL_20:

  if (v27[3])
  {
    goto LABEL_21;
  }

  v17 = 0;
LABEL_27:
  if (v16)
  {
    v19 = 1;
  }

  else
  {
    v19 = v17;
  }

LABEL_30:
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v19;
}

void __84__HUHomeFeatureOnboardingUtilities_home_checkForMultiUserDeviceUpgradeRequirements___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_isHomePod] && objc_msgSend(v3, "supportsMultiUser"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  if ([v3 hf_isAppleTV] && objc_msgSend(v3, "supportsMultiUser"))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

+ (id)groupedFeaturesForOnboardingFlowKeyPaths:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v9 = *MEMORY[0x277D138F8];
    v10 = *MEMORY[0x277D138D0];
    v28 = *MEMORY[0x277D13918];
    v29 = *MEMORY[0x277D138F0];
    v26 = *MEMORY[0x277D138D8];
    v27 = *MEMORY[0x277D13910];
    v24 = *MEMORY[0x277D13928];
    v25 = *MEMORY[0x277D13908];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v12 isEqualToString:{v9, v24}];
        v14 = &unk_282492A80;
        if ((v13 & 1) == 0)
        {
          v15 = [v12 isEqualToString:v10];
          v14 = &unk_282492A98;
          if ((v15 & 1) == 0)
          {
            v16 = [v12 isEqualToString:v29];
            v14 = &unk_282492AB0;
            if ((v16 & 1) == 0)
            {
              v17 = [v12 isEqualToString:v28];
              v14 = &unk_282492AC8;
              if ((v17 & 1) == 0)
              {
                v18 = [v12 isEqualToString:v27];
                v14 = &unk_282492AE0;
                if ((v18 & 1) == 0)
                {
                  v19 = [v12 isEqualToString:v26];
                  v14 = &unk_282492AF8;
                  if ((v19 & 1) == 0)
                  {
                    v20 = [v12 isEqualToString:v25];
                    v14 = &unk_282492B10;
                    if ((v20 & 1) == 0)
                    {
                      v21 = [v12 isEqualToString:v24];
                      v14 = &unk_282492B28;
                      if (!v21)
                      {
                        continue;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  v22 = [v4 copy];

  return v22;
}

+ (id)analyzeHomeAssistantDevicesForSupportedVoiceRecognitionLanguages:(id)a3 home:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v5 = a4;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v38 = [v5 hf_allHomePodProfileContainers];
  [v7 na_safeAddObjectsFromArray:?];
  v8 = [v5 hf_allSiriEndPointProfileContainers];
  [v7 na_safeAddObjectsFromArray:v8];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v10)
  {
    v11 = v10;
    v35 = v8;
    v36 = v5;
    v37 = v6;
    v39 = 0;
    v40 = 0;
    v12 = *v45;
    v13 = 0x277CD1000uLL;
    v14 = 0x277D14000uLL;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        objc_opt_class();
        v17 = v16;
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;

        v20 = [*(v14 + 2064) siriLanguageOptionFor:v17];
        v21 = HFLogForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          NSStringFromSelector(a2);
          v43 = v19;
          v22 = v11;
          v23 = v12;
          v24 = v14;
          v25 = v13;
          v27 = v26 = v9;
          *buf = 138412802;
          v49 = v27;
          v50 = 2112;
          v51 = v17;
          v52 = 2112;
          v53 = v20;
          _os_log_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEFAULT, "%@ Fetched selectedLanguageOption language option for mediaProfile [%@] = %@", buf, 0x20u);

          v9 = v26;
          v13 = v25;
          v14 = v24;
          v12 = v23;
          v11 = v22;
          v19 = v43;
        }

        if (v20)
        {
          v28 = [v20 recognitionLanguage];
          if ([v42 containsObject:v28])
          {
            v29 = v39;
            if (!v39)
            {
              v29 = objc_opt_new();
              v39 = v29;
            }
          }

          else
          {
            v29 = v40;
            if (!v40)
            {
              v29 = objc_opt_new();
              v40 = v29;
            }
          }

          [v29 addObject:{v19, v35, v36}];
        }

        else
        {
          v28 = HFLogForCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v30 = NSStringFromSelector(a2);
            v31 = [v38 count];
            *buf = 138412802;
            v49 = v30;
            v50 = 2112;
            v51 = v19;
            v52 = 2048;
            v53 = v31;
            _os_log_error_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_ERROR, "%@ Recognition Language unavailable for device with MediaProfile [%@] (1 of %lu HomePods)", buf, 0x20u);
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v11);

    v6 = v37;
    if (v40)
    {
      [v37 setObject:v40 forKey:@"languageMismatch"];
    }

    v8 = v35;
    v5 = v36;
    v32 = v39;
    if (v39)
    {
      [v37 setObject:v39 forKey:@"supportingLanguages"];
    }

    v33 = v40;
  }

  else
  {

    v32 = 0;
    v33 = 0;
  }

  return v6;
}

+ (id)home:(id)a3 createMultiUserLanguageToHomePodsMapping:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v32 = a4;
  v6 = objc_opt_new();
  v27 = [v5 hf_allHomePodProfileContainers];
  [v6 na_safeAddObjectsFromArray:?];
  v26 = [v5 hf_allSiriEndPointProfileContainers];
  [v6 na_safeAddObjectsFromArray:?];
  v7 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    v29 = v7;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        objc_opt_class();
        v13 = v12;
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        v16 = [MEMORY[0x277D14810] siriLanguageOptionFor:v13];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 recognitionLanguage];
          v19 = HFLogForCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = NSStringFromSelector(a2);
            *buf = 138413058;
            v38 = a1;
            v39 = 2112;
            v40 = v20;
            v41 = 2112;
            v42 = v15;
            v43 = 2112;
            v44 = v18;
            _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "%@:%@ Found HomePod %@ with language %@", buf, 0x2Au);

            v7 = v29;
          }

          if ([v32 containsObject:v18])
          {
            v21 = [v7 objectForKey:v18];
            if (!v21)
            {
              v21 = [MEMORY[0x277CBEB18] array];
            }

            [v21 addObject:v15];
            [v7 setObject:v21 forKey:v18];
          }

          else
          {
            v21 = HFLogForCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = NSStringFromSelector(a2);
              v23 = [v17 recognitionLanguage];
              *buf = 138412802;
              v38 = v22;
              v39 = 2112;
              v40 = v15;
              v41 = 2112;
              v42 = v23;
              _os_log_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEFAULT, "%@ MultiUser Language Check: HomePod [%@] in unsupported language: %@", buf, 0x20u);

              v7 = v29;
            }
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v9);
  }

  v24 = [v7 copy];

  return v24;
}

+ (id)createPersonalIdentityDeviceLanguageMismatchList:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CEF368] sharedPreferences];
  v6 = [v5 languageCode];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (([v12 isEqualToString:{v6, v15}] & 1) == 0)
        {
          [v4 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v4 copy];

  return v13;
}

+ (id)processLanguageAndMediaProfileInfo:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v17}];
        v12 = [MEMORY[0x277CEF2D8] sharedInstance];
        v13 = [v12 localizedNameForSiriLanguage:v10 inDisplayLanguage:0];

        v21[0] = @"languageCodeKey";
        v21[1] = @"localizedLanguageNameKey";
        v22[0] = v10;
        v22[1] = v13;
        v21[2] = @"mediaProfilesKey";
        v22[2] = v11;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];

  return v15;
}

+ (id)checkVoiceProfileAvailabiltyForLanguage:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [MEMORY[0x277CEF368] sharedPreferences];
    v7 = [v8 languageCode];
  }

  v9 = MEMORY[0x277D2C900];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__HUHomeFeatureOnboardingUtilities_checkVoiceProfileAvailabiltyForLanguage___block_invoke;
  v15[3] = &unk_277DBAC10;
  v17 = a1;
  v18 = a2;
  v16 = v7;
  v10 = v7;
  v11 = [v9 futureWithBlock:v15];
  v12 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v13 = [v11 reschedule:v12];

  return v13;
}

void __76__HUHomeFeatureOnboardingUtilities_checkVoiceProfileAvailabiltyForLanguage___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = NSStringFromSelector(*(a1 + 48));
    v7 = *(a1 + 32);
    *buf = 138412802;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ Starting to check for Hey Siri Voice Profile in iCloud for %@", buf, 0x20u);
  }

  v8 = [MEMORY[0x277D653F8] sharedInstance];
  v9 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__HUHomeFeatureOnboardingUtilities_checkVoiceProfileAvailabiltyForLanguage___block_invoke_213;
  v11[3] = &unk_277DBABE8;
  v14 = *(a1 + 40);
  v12 = v9;
  v13 = v3;
  v10 = v3;
  [v8 isVoiceProfileUploadedToiCloudForLanguageCode:v12 withCompletionBlock:v11];
}

void __76__HUHomeFeatureOnboardingUtilities_checkVoiceProfileAvailabiltyForLanguage___block_invoke_213(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    v8 = NSStringFromSelector(*(a1 + 56));
    v9 = *(a1 + 32);
    v12 = 138413314;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 1024;
    v19 = a3;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ Hey Siri Voice Profile for %@ available in iCloud?: %{BOOL}d | error = %@", &v12, 0x30u);
  }

  v10 = *(a1 + 40);
  v11 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [v10 finishWithResult:v11 error:v5];
}

+ (BOOL)isVoiceProfileAvailableOnThisDeviceForLanguage:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [MEMORY[0x277CEF368] sharedPreferences];
    v7 = [v8 languageCode];
  }

  v9 = [MEMORY[0x277D653F8] sharedInstance];
  v10 = [v9 isSATEnrolledForSiriProfileId:0 forLanguageCode:v7];

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    v14 = 138413058;
    v15 = a1;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v7;
    v20 = 1024;
    v21 = v10;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@:%@ Hey Siri Voice Profile exists on this device for language: %@ ? Answer: %{BOOL}d", &v14, 0x26u);
  }

  return v10;
}

@end