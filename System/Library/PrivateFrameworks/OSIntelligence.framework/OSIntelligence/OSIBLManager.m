@interface OSIBLManager
@end

@implementation OSIBLManager

uint64_t __31___OSIBLManager_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(_OSIBLManager);

  return MEMORY[0x2821F96F8]();
}

void __21___OSIBLManager_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __21___OSIBLManager_init__block_invoke_2;
  v6[3] = &unk_2799C1770;
  v7 = *(a1 + 32);
  [v3 setExpirationHandler:v6];
  v4 = [*(a1 + 32) isIBLMCurrentlyEnabled];
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 evaluate];
  }

  else if ([v5 shouldRunForShadowAnalytics])
  {
    [*(a1 + 32) shadowEvaluateForModels:&unk_286EB8C18];
  }

  [v3 setTaskCompleted];
}

void __21___OSIBLManager_init__block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) log];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = @"com.apple.osintelligence.iblm.evaluate";
    _os_log_impl(&dword_25D171000, v1, OS_LOG_TYPE_DEFAULT, "Expiration for %@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __21___OSIBLManager_init__block_invoke_86(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateTrialOSIParameters];
    WeakRetained = v2;
  }
}

void __21___OSIBLManager_init__block_invoke_2_88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateTrialPXPParameters];
    WeakRetained = v2;
  }
}

uint64_t __40___OSIBLManager_handlePPSTaskingStarted__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = *(a1 + 32);
  v4 = *(v3 + 176);
  *(v3 + 176) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  v7 = *(v5 + 176);

  return [v6 setObject:v7 forKey:@"lastTaskingStartDate"];
}

uint64_t __39___OSIBLManager_isIBLMCurrentlyEnabled__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 112) == 1;
  v1 = *(*(result + 40) + 8);
  if (*(v1 + 24) == 1)
  {
    v2 = *(*(result + 32) + 10);
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 24) = v2 & 1;
  return result;
}

void __41___OSIBLManager_updateTrialOSIParameters__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 128) levelForFactor:@"IBLM_FeatureEnabled" withNamespaceName:@"COREOS_PREDICTION_BATTERY"];
  v3 = [v2 BOOLeanValue];

  v4 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = @"IBLM_FeatureEnabled";
    v8 = 1026;
    v9 = v3;
    _os_log_impl(&dword_25D171000, v4, OS_LOG_TYPE_DEFAULT, "Trial: %{public}@:%{public}d", &v6, 0x12u);
  }

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) handleFeatureDisabled];
  }

  *(*(a1 + 32) + 10) = v3;
  v5 = *MEMORY[0x277D85DE8];
}

void __41___OSIBLManager_updateTrialOSIParameters__block_invoke_97(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 128) levelForFactor:@"IBLM_MitigationsEnabled" withNamespaceName:@"COREOS_PREDICTION_BATTERY"];
  *(*(a1 + 32) + 11) = [v2 BOOLeanValue];

  v3 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 11);
    v18 = 138543618;
    v19 = @"IBLM_MitigationsEnabled";
    v20 = 1026;
    LODWORD(v21) = v4;
    _os_log_impl(&dword_25D171000, v3, OS_LOG_TYPE_DEFAULT, "Trial: %{public}@:%{public}d", &v18, 0x12u);
  }

  v5 = *(a1 + 32);
  if ((*(v5 + 11) & 1) == 0)
  {
    [v5 resetMitigation];
    v5 = *(a1 + 32);
  }

  v6 = [*(v5 + 128) levelForFactor:@"IBLM_PerformanceMitigationEnabled" withNamespaceName:@"COREOS_PREDICTION_BATTERY"];
  *(*(a1 + 32) + 12) = [v6 BOOLeanValue];

  v7 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 12);
    v18 = 138543618;
    v19 = @"IBLM_PerformanceMitigationEnabled";
    v20 = 1026;
    LODWORD(v21) = v8;
    _os_log_impl(&dword_25D171000, v7, OS_LOG_TYPE_DEFAULT, "Trial: %{public}@:%{public}d", &v18, 0x12u);
  }

  v9 = *(a1 + 32);
  if ((*(v9 + 12) & 1) == 0)
  {
    v10 = +[_OSICLPCInterface sharedInstance];
    v11 = [*(a1 + 32) mitigationWithLevel:0];
    [v10 updatePerformanceControlWithMitigation:v11];

    v9 = *(a1 + 32);
  }

  v12 = [*(v9 + 128) levelForFactor:@"IBLM_EngagementPredictionThreshold" withNamespaceName:@"COREOS_PREDICTION_BATTERY"];
  v13 = v12;
  if (v12)
  {
    [v12 doubleValue];
  }

  else
  {
    v14 = 0x3FE6666666666666;
  }

  *(*(a1 + 32) + 152) = v14;
  *(*(a1 + 32) + 160) = *(*(a1 + 32) + 152);
  v15 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(*(a1 + 32) + 152);
    v18 = 138543618;
    v19 = @"IBLM_EngagementPredictionThreshold";
    v20 = 2050;
    v21 = v16;
    _os_log_impl(&dword_25D171000, v15, OS_LOG_TYPE_DEFAULT, "Trial: %{public}@:%{public}f", &v18, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __41___OSIBLManager_updateTrialPXPParameters__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 128) levelForFactor:@"CLPC_IBLMOption" withNamespaceName:@"COREOS_POWER_EXPERIENCE_POWER_TUNING"];
  v3 = v2;
  if (v2)
  {
    *(*(a1 + 32) + 144) = [v2 longValue];
    v4 = *(*(a1 + 32) + 144);
    v5 = +[_OSICLPCInterface sharedInstance];
    [v5 setMitigationOption:v4];
  }

  v6 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 32) + 144);
    v9 = 138543874;
    v10 = @"CLPC_IBLMOption";
    v11 = 2114;
    v12 = v3;
    v13 = 2050;
    v14 = v7;
    _os_log_impl(&dword_25D171000, v6, OS_LOG_TYPE_DEFAULT, "Trial: %{public}@:%{public}@:%{public}ld", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __22___OSIBLManager_start__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 10) & 1) == 0)
  {
    v2 = *(v1 + 104);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v3 = "IBLM is disabled by Trial. Skipping start";
    goto LABEL_7;
  }

  if (*(v1 + 13) == 1)
  {
    v2 = *(v1 + 104);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v3 = "IBLM Manager already started. Skipping start";
LABEL_7:
    _os_log_impl(&dword_25D171000, v2, OS_LOG_TYPE_DEFAULT, v3, buf, 2u);
    return;
  }

  if (+[_OSICLPCInterface supportsPerformanceControl])
  {
    v5 = +[_OSICLPCInterface sharedInstance];
    [v5 start];
  }

  v6 = +[_OSIBLMAnalyticsHandler sharedInstance];
  [v6 start];

  v7 = MEMORY[0x277CFE360];
  v8 = [MEMORY[0x277CFE338] keyPathForPluginStatus];
  v9 = [v7 predicateForChangeAtKeyPath:v8];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __22___OSIBLManager_start__block_invoke_109;
  v33[3] = &unk_2799C1838;
  v33[4] = *(a1 + 32);
  v10 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.osintelligence.iblm.pluggedInState" contextualPredicate:v9 clientIdentifier:@"com.apple.osintelligence.iblm.contextstore-registration" callback:v33];
  [*(*(a1 + 32) + 96) registerCallback:v10];
  v11 = [MEMORY[0x277CF3B78] cameraViewfinder];
  v12 = *(a1 + 32);
  v13 = *(v12 + 184);
  *(v12 + 184) = v11;

  [*(*(a1 + 32) + 184) setDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 40)];
  [*(*(a1 + 32) + 184) startWithOptions:0];
  v14 = [@"com.apple.system.console_mode_changed" UTF8String];
  v15 = *(a1 + 32);
  v16 = *(v15 + 40);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __22___OSIBLManager_start__block_invoke_112;
  v32[3] = &unk_2799C17E8;
  v32[4] = v15;
  notify_register_dispatch(v14, (v15 + 24), v16, v32);
  v17 = [*(*(a1 + 32) + 64) objectForKey:@"lastMitigationChangeDate"];
  v18 = *(a1 + 32);
  v19 = *(v18 + 88);
  *(v18 + 88) = v17;

  v20 = *(a1 + 32);
  v21 = *(v20 + 88);
  if (v21)
  {
    [v21 timeIntervalSinceNow];
    v20 = *(a1 + 32);
    if (v22 > -43200.0)
    {
      v23 = [*(v20 + 64) objectForKey:@"lastMitigationLevel"];
      if (v23)
      {
        v24 = objc_opt_new();
        [v24 setLevel:{objc_msgSend(v23, "integerValue")}];
        v25 = *(a1 + 32);
        v26 = *(v25 + 32);
        *(v25 + 32) = v24;
      }

      v20 = *(a1 + 32);
    }
  }

  v27 = [*(v20 + 64) objectForKey:@"testOverrideMitigationAlways"];
  [*(a1 + 32) handleTestOverride:v27];
  v28 = [*(*(a1 + 32) + 64) objectForKey:@"testOverrideCLPCMitigationAlways"];
  [*(a1 + 32) handleCLPCTestOverride:v28];
  v29 = [*(a1 + 32) isPluggedIn];
  v30 = *(a1 + 32);
  if (v29)
  {
    v31 = v30[4];
    if (v31)
    {
      if ([v31 level])
      {
        [*(a1 + 32) resetMitigation];
      }
    }
  }

  else
  {
    [v30 submitTask];
  }

  *(*(a1 + 32) + 13) = 1;
}

void __22___OSIBLManager_start__block_invoke_109(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22___OSIBLManager_start__block_invoke_2;
  block[3] = &unk_2799C1770;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);
}

uint64_t __22___OSIBLManager_start__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) isPluggedIn];
  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __22___OSIBLManager_start__block_invoke_2_cold_1();
  }

  v4 = *(a1 + 32);
  if ((v2 & 1) == 0)
  {
    return [v4 submitTask];
  }

  [v4 resetMitigation];
  return [*(a1 + 32) cancelTask];
}

uint64_t __30___OSIBLManager_dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = dateFormatter_formatter;
  dateFormatter_formatter = v0;

  [dateFormatter_formatter setDateStyle:1];
  v2 = dateFormatter_formatter;

  return [v2 setTimeStyle:3];
}

uint64_t __38___OSIBLManager_handleFeatureDisabled__block_invoke(uint64_t a1)
{
  v2 = +[_OSIBLMAnalyticsHandler sharedInstance];
  [v2 stop];

  v3 = +[_OSICLPCInterface sharedInstance];
  [v3 stop];

  [*(*(a1 + 32) + 184) stop];
  if ([*(*(a1 + 32) + 32) level])
  {
    v4 = [*(a1 + 32) mitigationWithLevel:0];
    [*(a1 + 32) updateMitigationTo:v4];
  }

  [*(a1 + 32) cancelTask];
  result = notify_cancel(*(*(a1 + 32) + 24));
  *(*(a1 + 32) + 13) = 0;
  return result;
}

void __46___OSIBLManager_updateFeatureState_withError___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 112);
    v10 = 134349312;
    v11 = v3;
    v12 = 2050;
    v13 = v4;
    _os_log_impl(&dword_25D171000, v2, OS_LOG_TYPE_DEFAULT, "State updated to %{public}ld from %{public}ld", &v10, 0x16u);
  }

  v6 = *(a1 + 40);
  v5 = (a1 + 40);
  *(*(v5 - 1) + 112) = v6;
  [_OSIBLMState saveCurrentIBLMState:?];
  v7 = *(v5 - 1);
  if (*v5)
  {
    if (*v5 == 1)
    {
      [(os_log_t *)v7 handleFeatureEnabled];
    }

    else if (os_log_type_enabled(v7[13], OS_LOG_TYPE_ERROR))
    {
      __46___OSIBLManager_updateFeatureState_withError___block_invoke_cold_1(v5);
    }
  }

  else
  {
    [(os_log_t *)v7 handleFeatureDisabled];
  }

  v8 = +[_OSIBLMAnalyticsHandler sharedInstance];
  [v8 recordFeatureState:*v5];

  v9 = *MEMORY[0x277D85DE8];
}

void __52___OSIBLManager_updateNotificationsState_withError___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 120);
    v7 = 134349312;
    v8 = v3;
    v9 = 2050;
    v10 = v4;
    _os_log_impl(&dword_25D171000, v2, OS_LOG_TYPE_DEFAULT, "State updated to %{public}ld from %{public}ld", &v7, 0x16u);
  }

  *(*(a1 + 32) + 120) = *(a1 + 40);
  [_OSIBLMState saveCurrentIBLMNotificationsState:?];
  v5 = +[_OSIBLMAnalyticsHandler sharedInstance];
  [v5 recordFeatureNotificationState:*(a1 + 40)];

  v6 = *MEMORY[0x277D85DE8];
}

void __22___OSIBLManager_start__block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_25D171000, v0, OS_LOG_TYPE_DEBUG, "Is PluggedIn %ld ", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __46___OSIBLManager_updateFeatureState_withError___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

@end