@interface MRBaseComponentHandler
+ (id)getHwRevision;
+ (void)getHwRevision;
+ (void)handleComponentSUCase:(id)a3 lastAUthCheckBuildVersion:(id)a4 followUpItemID:(id)a5 queryString:(id)a6 suCasekey:(id)a7 startBuildVersion:(id)a8 componentAuth:(id)a9;
- (BOOL)clearStateFile:(BOOL *)a3;
- (MRBaseComponentHandler)init;
- (id)createCriteriaForUnlockCheckerWithInterval:(double)a3;
- (void)checkInAndHandleAuthStatus;
- (void)clearNSUserDefaults;
- (void)clearRepairFollowUp;
- (void)createRepairFollowUp;
- (void)mainNonAuthRepairFlow;
- (void)popUpNotificationNowWithMessage;
- (void)scheduleNetworkActivity;
- (void)scheduleUnlockCheckerActivity:(double)a3 forFinishRepair:(BOOL)a4;
- (void)sendAnalyticsForCount:(int64_t)a3;
- (void)unlockCheckerActivityBody;
- (void)unlockCheckerActivityBodyForFinishRepair;
@end

@implementation MRBaseComponentHandler

- (MRBaseComponentHandler)init
{
  v23 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = MRBaseComponentHandler;
  v2 = [(MRBaseComponentHandler *)&v20 init];
  v3 = v2;
  if (v2)
  {
    v2[13] = 0;
    *(v2 + 9) = 0;
    v4 = *(v2 + 23);
    *(v2 + 23) = 0;

    *(v3 + 20) = 0xF00000005;
    *(v3 + 7) = 1;
    v3[8] = 1;
    v5 = *(v3 + 26);
    *(v3 + 26) = 0;

    v3[16] = 0;
    v6 = *(v3 + 19);
    *(v3 + 19) = 0;

    v7 = *(v3 + 28);
    *(v3 + 28) = 0;

    v8 = *(v3 + 30);
    *(v3 + 30) = 0;

    v9 = *(v3 + 29);
    *(v3 + 29) = 0;

    v10 = MGCopyAnswer();
    *(v3 + 7) = [v10 intValue];

    v11 = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
    [v11 doubleForKey:@"timeIntervalOverride"];
    v13 = v12;

    has_internal_content = os_variant_has_internal_content();
    v15 = *MEMORY[0x277D86298];
    if ((has_internal_content & (v13 != 0.0)) != 0)
    {
      v15 = v13;
    }

    *(v3 + 21) = v15;
    v16 = handleForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v3 + 21);
      *buf = 134217984;
      v22 = v17;
      _os_log_impl(&dword_247875000, v16, OS_LOG_TYPE_DEFAULT, "the XPC time internal will be %f", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)createRepairFollowUp
{
  v14 = *MEMORY[0x277D85DE8];
  displayFollowup = self->displayFollowup;
  v4 = handleForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (displayFollowup)
  {
    if (v5)
    {
      v6 = [(MRBaseComponentHandler *)self componentName];
      *buf = 138412546;
      v11 = v6;
      v12 = 2080;
      v13 = "[MRBaseComponentHandler createRepairFollowUp]";
      _os_log_impl(&dword_247875000, v4, OS_LOG_TYPE_DEFAULT, "[%@][%s]", buf, 0x16u);
    }

    v4 = +[MRUINotificationHelper sharedSingleton];
    [v4 createRepairFollowUpWithNotification:self->displayNotification actionURL:self->linkedSensitiveURL repairTitle:self->popUpNotificationTitle infoText:self->followUpInfoMessage itemID:self->componentFollowupClientID timeInterval:self->componentName componentName:self->timeIntervalOverride];
  }

  else if (v5)
  {
    v7 = [(MRBaseComponentHandler *)self componentName];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] followup skipped", "-[MRBaseComponentHandler createRepairFollowUp]"];
    *buf = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_247875000, v4, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)clearRepairFollowUp
{
  v16 = *MEMORY[0x277D85DE8];
  displayFollowup = self->displayFollowup;
  v4 = handleForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!displayFollowup)
  {
    if (v5)
    {
      v9 = [(MRBaseComponentHandler *)self componentName];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] clearRepairFollowUp skipped", "-[MRBaseComponentHandler clearRepairFollowUp]"];
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_247875000, v4, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
    }

    goto LABEL_8;
  }

  if (v5)
  {
    v6 = [(MRBaseComponentHandler *)self componentName];
    *buf = 138412546;
    v13 = v6;
    v14 = 2080;
    v15 = "[MRBaseComponentHandler clearRepairFollowUp]";
    _os_log_impl(&dword_247875000, v4, OS_LOG_TYPE_DEFAULT, "[%@][%s]", buf, 0x16u);
  }

  v7 = +[MRUINotificationHelper sharedSingleton];
  [v7 clearRepairFollowUpWithUniqueID:self->componentFollowupClientID];

  if (self->finishRepairKey)
  {
    v8 = +[MRUINotificationHelper sharedSingleton];
    [v8 clearRepairFollowUpWithUniqueID:self->finishRepairKey];

    v4 = +[MRUINotificationHelper sharedSingleton];
    [v4 removeRepairNotificationsWithUniqueID:self->finishRepairKey];
LABEL_8:
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)clearStateFile:(BOOL *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = handleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MRBaseComponentHandler *)self componentName];
    *buf = 138412546;
    v24 = v6;
    v25 = 2080;
    v26 = "[MRBaseComponentHandler clearStateFile:]";
    _os_log_impl(&dword_247875000, v5, OS_LOG_TYPE_DEFAULT, "[%@][%s]", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 fileExistsAtPath:self->stateFilePath];

  if (!v8)
  {
    v12 = 0;
LABEL_10:
    v14 = 1;
    if (!a3)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a3 = v8;
    goto LABEL_12;
  }

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  stateFilePath = self->stateFilePath;
  v22 = 0;
  v11 = [v9 removeItemAtPath:stateFilePath error:&v22];
  v12 = v22;

  if (v11)
  {
    goto LABEL_10;
  }

  v13 = handleForCategory(1uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v17 = [(MRBaseComponentHandler *)self componentName];
    v18 = MEMORY[0x277CCACA8];
    v19 = self->stateFilePath;
    v20 = [v12 localizedDescription];
    v21 = [v18 stringWithFormat:@"remove item at path %@ failed: %@", v19, v20];
    *buf = 138412546;
    v24 = v17;
    v25 = 2112;
    v26 = v21;
    _os_log_error_impl(&dword_247875000, v13, OS_LOG_TYPE_ERROR, "[%@][%@]", buf, 0x16u);
  }

  v14 = 0;
  if (a3)
  {
    goto LABEL_11;
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)clearNSUserDefaults
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = handleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MRBaseComponentHandler *)self componentName];
    v8 = 138412546;
    v9 = v4;
    v10 = 2080;
    v11 = "[MRBaseComponentHandler clearNSUserDefaults]";
    _os_log_impl(&dword_247875000, v3, OS_LOG_TYPE_DEFAULT, "[%@][%s]", &v8, 0x16u);
  }

  v5 = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
  [v5 removeObjectForKey:self->componentUnLockCheckCountKey];
  [v5 removeObjectForKey:self->componentLastCheckTimeKey];
  [v5 removeObjectForKey:self->componentHasDisplayedFollowUpKey];
  [v5 removeObjectForKey:self->componentFirstUIDisplayedTimeKey];
  [v5 removeObjectForKey:self->componentSUCaseKey];
  [v5 removeObjectForKey:self->componentRetriggerCountKey];
  if (self->componentHasNotifiedServerKey)
  {
    [v5 removeObjectForKey:?];
  }

  [v5 removeObjectForKey:self->finishRepairKey];
  [v5 removeObjectForKey:@"hasDisplayedFollowupForBluetooth"];
  [v5 removeObjectForKey:@"hasDisplayedFollowupForWifi"];
  [v5 removeObjectForKey:@"hasDisplayedFollowupForBaseband"];
  [v5 removeObjectForKey:@"hasDisplayedFollowupForNFC"];
  [v5 removeObjectForKey:@"hasDisplayedFollowupForUWB"];
  [v5 removeObjectForKey:@"hasDisplayedFollowupForAudio"];
  [v5 removeObjectForKey:@"hasDisplayedFollowupForTrueDepthIR"];
  [v5 synchronize];
  v6 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
  [v6 removeObjectForKey:self->componentFollowupClientID];

  [(MRBaseComponentHandler *)self clearStateFile:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)popUpNotificationNowWithMessage
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = handleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MRBaseComponentHandler *)self componentName];
    *buf = 138412546;
    v12 = v4;
    v13 = 2080;
    v14 = "[MRBaseComponentHandler popUpNotificationNowWithMessage]";
    _os_log_impl(&dword_247875000, v3, OS_LOG_TYPE_DEFAULT, "[%@][%s]", buf, 0x16u);
  }

  if (![(MRBaseComponentHandler *)self displayModalPopup])
  {
    v7 = handleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(MRBaseComponentHandler *)self componentName];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] SU case skipped popup", "-[MRBaseComponentHandler popUpNotificationNowWithMessage]"];
      *buf = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_247875000, v7, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
    }

    goto LABEL_9;
  }

  v5 = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
  v6 = [v5 BOOLForKey:@"settingsView"];

  if (!v6 || self->legacyPopup)
  {
    v7 = +[MRUINotificationHelper sharedSingleton];
    [v7 popUpNotificationNowWithMessage:self->popUpNotificationMessage title:self->popUpNotificationTitle openSensitiveURL:self->linkedSensitiveURL componentName:self->componentName legacyPopup:self->legacyPopup];
LABEL_9:
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)scheduleNetworkActivity
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = handleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MRBaseComponentHandler *)self componentName];
    *buf = 138412546;
    v10 = v4;
    v11 = 2080;
    v12 = "[MRBaseComponentHandler scheduleNetworkActivity]";
    _os_log_impl(&dword_247875000, v3, OS_LOG_TYPE_DEFAULT, "[%@][%s]", buf, 0x16u);
  }

  v5 = [(NSString *)self->componentNtwkActivityName UTF8String];
  v6 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__MRBaseComponentHandler_scheduleNetworkActivity__block_invoke;
  handler[3] = &unk_278EB1E40;
  handler[4] = self;
  xpc_activity_register(v5, v6, handler);
  v7 = *MEMORY[0x277D85DE8];
}

void __49__MRBaseComponentHandler_scheduleNetworkActivity__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (xpc_activity_get_state(v3))
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = [MEMORY[0x277D25710] sharedDataAccessor];
    v24 = 0;
    v6 = [v5 copyPathForPersistentData:100 error:&v24];
    v7 = v24;

    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      [v4 setObject:v6 forKey:@"datapath"];
      v10 = [objc_alloc(MEMORY[0x277D00FD8]) initForRegisterChangeWithParameters:v4];
      if (!v10)
      {
        v7 = handleForCategory(1uLL);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __49__MRBaseComponentHandler_scheduleNetworkActivity__block_invoke_cold_2(a1);
        }

        goto LABEL_24;
      }

      v7 = v10;
      if (xpc_activity_should_defer(v3))
      {
        v11 = xpc_activity_set_state(v3, 3);
        v12 = handleForCategory(0);
        v9 = v12;
        if (v11)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [*(a1 + 32) componentName];
            v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Successfully deferred activity %@ to state: %lu", v3, xpc_activity_get_state(v3)];
            *buf = 138412546;
            v26 = v13;
            v27 = 2112;
            v28 = v14;
            _os_log_impl(&dword_247875000, v9, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __49__MRBaseComponentHandler_scheduleNetworkActivity__block_invoke_cold_1(a1, v3);
        }
      }

      else
      {
        v15 = [*(a1 + 32) componentName];
        v23 = 0;
        v16 = [v7 registerChangeForComponent:v15 fdrError:&v23];
        v9 = v23;

        if (!v16)
        {
          v17 = handleForCategory(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [*(a1 + 32) componentName];
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] register change was successful", "-[MRBaseComponentHandler scheduleNetworkActivity]_block_invoke"];
            *buf = 138412546;
            v26 = v18;
            v27 = 2112;
            v28 = v19;
            _os_log_impl(&dword_247875000, v17, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
          }

          v20 = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
          v21 = [*(a1 + 32) componentHasNotifiedServerKey];
          [v20 setBool:1 forKey:v21];

          [v20 synchronize];
        }

        xpc_activity_set_state(v3, 5);
      }
    }

    else
    {
      v9 = handleForCategory(1uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __49__MRBaseComponentHandler_scheduleNetworkActivity__block_invoke_cold_3(a1);
      }
    }

LABEL_24:
    goto LABEL_25;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86300], 1);
  xpc_activity_set_criteria(v3, v4);
LABEL_25:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)unlockCheckerActivityBody
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
  v4 = [(MRBaseComponentHandler *)self componentUnLockCheckCountKey];
  v5 = [v3 integerForKey:v4];

  v6 = [(MRBaseComponentHandler *)self componentHasNotifiedServerKey];
  v7 = [v3 BOOLForKey:v6];

  if ([v3 BOOLForKey:self->componentDataCollectionPresentedKey])
  {
    v8 = 1;
  }

  else
  {
    v8 = ![(MRBaseComponentHandler *)self notifyServer];
  }

  v41 = 0;
  v9 = [MEMORY[0x277CBEAA8] date];
  [v9 timeIntervalSince1970];
  v11 = v10;

  [v3 doubleForKey:self->componentLastCheckTimeKey];
  v13 = (v11 - v12);
  if (self->timeIntervalOverride <= v13)
  {
    timeIntervalOverride = v13;
  }

  else
  {
    timeIntervalOverride = self->timeIntervalOverride;
  }

  v15 = [(MRBaseComponentHandler *)self componentRetriggerCountKey];
  v16 = [v3 integerForKey:v15];

  v17 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
  v18 = [v17 integerForKey:self->componentFollowupClientID];

  if (v5 < [(MRBaseComponentHandler *)self componentfollowUpDisplaydays])
  {
    ++v5;
    v19 = [(MRBaseComponentHandler *)self componentUnLockCheckCountKey];
    [v3 setInteger:v5 forKey:v19];

    v20 = [(MRBaseComponentHandler *)self componentLastCheckTimeKey];
    [v3 setDouble:v20 forKey:v11];

    [v3 synchronize];
  }

  v21 = handleForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(MRBaseComponentHandler *)self componentName];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Set count main body:%ld", v5];
    *buf = 138412546;
    v43 = v22;
    v44 = 2112;
    v45 = v23;
    _os_log_impl(&dword_247875000, v21, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
  }

  v24 = [(MRBaseComponentHandler *)self isSUCaseForComponent];
  v25 = [(MRBaseComponentHandler *)self componentfollowUpDisplaydays];
  if (!v24)
  {
    if (v5 != v25)
    {
      goto LABEL_22;
    }

    v30 = handleForCategory(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(MRBaseComponentHandler *)self componentName];
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] handling clear all followup", "-[MRBaseComponentHandler unlockCheckerActivityBody]"];
      *buf = 138412546;
      v43 = v31;
      v44 = 2112;
      v45 = v32;
      _os_log_impl(&dword_247875000, v30, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
    }

    [(MRBaseComponentHandler *)self clearRepairFollowUp];
    [(MRBaseComponentHandler *)self clearStateFile:0];
    v29 = v5;
    goto LABEL_21;
  }

  if (((v5 >= v25) & v8) == 1)
  {
    v26 = handleForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(MRBaseComponentHandler *)self componentName];
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] SU handling clear all followup", "-[MRBaseComponentHandler unlockCheckerActivityBody]"];
      *buf = 138412546;
      v43 = v27;
      v44 = 2112;
      v45 = v28;
      _os_log_impl(&dword_247875000, v26, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
    }

    [(MRBaseComponentHandler *)self clearRepairFollowUp];
    [(MRBaseComponentHandler *)self clearStateFile:&v41];
    if (v41 == 1)
    {
      v29 = [(MRBaseComponentHandler *)self componentfollowUpDisplaydays];
LABEL_21:
      [(MRBaseComponentHandler *)self sendAnalyticsForCount:v29];
    }
  }

LABEL_22:
  if (v18)
  {
    if (v16 <= [(MRBaseComponentHandler *)self componentFollowupRetriggerdays])
    {
      ++v16;
      v33 = [(MRBaseComponentHandler *)self componentRetriggerCountKey];
      [v3 setInteger:v16 forKey:v33];
    }

    if (v16 == [(MRBaseComponentHandler *)self componentFollowupRetriggerdays]&& v5 < [(MRBaseComponentHandler *)self componentfollowUpDisplaydays])
    {
      v34 = handleForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [(MRBaseComponentHandler *)self componentName];
        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] handling followup retrigger", "-[MRBaseComponentHandler unlockCheckerActivityBody]"];
        *buf = 138412546;
        v43 = v35;
        v44 = 2112;
        v45 = v36;
        _os_log_impl(&dword_247875000, v34, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
      }

      [(MRBaseComponentHandler *)self clearRepairFollowUp];
      [(MRBaseComponentHandler *)self setDisplayNotification:0];
      [(MRBaseComponentHandler *)self createRepairFollowUp];
    }
  }

  if (!(v7 & 1 | (([(MRBaseComponentHandler *)self notifyServer]& v8 & 1) == 0)))
  {
    v37 = handleForCategory(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [(MRBaseComponentHandler *)self componentName];
      v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] Scheduling network activity", "-[MRBaseComponentHandler unlockCheckerActivityBody]"];
      *buf = 138412546;
      v43 = v38;
      v44 = 2112;
      v45 = v39;
      _os_log_impl(&dword_247875000, v37, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
    }

    [(MRBaseComponentHandler *)self scheduleNetworkActivity];
  }

  if (v5 < [(MRBaseComponentHandler *)self componentfollowUpDisplaydays]|| !(v7 & 1 | ![(MRBaseComponentHandler *)self notifyServer]) || !(v8 & 1 | ![(MRBaseComponentHandler *)self isSUCaseForComponent]))
  {
    [(MRBaseComponentHandler *)self scheduleUnlockCheckerActivity:0 forFinishRepair:self->timeIntervalOverride - (timeIntervalOverride % self->timeIntervalOverride)];
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)unlockCheckerActivityBodyForFinishRepair
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
  v4 = [(MRBaseComponentHandler *)self componentUnLockCheckCountKey];
  v5 = [v3 integerForKey:v4];

  v6 = [(MRBaseComponentHandler *)self componentRetriggerCountKey];
  v7 = [v3 integerForKey:v6];

  v8 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
  v9 = [v8 integerForKey:@"clearFinishRepairFollowup"];

  v10 = [MEMORY[0x277CBEAA8] date];
  [v10 timeIntervalSince1970];
  v12 = v11;

  [v3 doubleForKey:self->componentLastCheckTimeKey];
  v14 = (v12 - v13);
  if (self->timeIntervalOverride <= v14)
  {
    timeIntervalOverride = v14;
  }

  else
  {
    timeIntervalOverride = self->timeIntervalOverride;
  }

  if (v5 < [(MRBaseComponentHandler *)self componentfollowUpDisplaydays])
  {
    ++v5;
    v16 = [(MRBaseComponentHandler *)self componentUnLockCheckCountKey];
    [v3 setInteger:v5 forKey:v16];

    v17 = [(MRBaseComponentHandler *)self componentLastCheckTimeKey];
    [v3 setDouble:v17 forKey:v12];
  }

  v18 = handleForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(MRBaseComponentHandler *)self componentName];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Set count FinishRepair:%ld", v5];
    *buf = 138412546;
    v33 = v19;
    v34 = 2112;
    v35 = v20;
    _os_log_impl(&dword_247875000, v18, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
  }

  v21 = handleForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(MRBaseComponentHandler *)self componentName];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Retigger count:%ld", v7];
    *buf = 138412546;
    v33 = v22;
    v34 = 2112;
    v35 = v23;
    _os_log_impl(&dword_247875000, v21, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
  }

  if (v5 >= [(MRBaseComponentHandler *)self componentfollowUpDisplaydays])
  {
    v24 = handleForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(MRBaseComponentHandler *)self componentName];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] handling clear all followup", "-[MRBaseComponentHandler unlockCheckerActivityBodyForFinishRepair]"];
      *buf = 138412546;
      v33 = v25;
      v34 = 2112;
      v35 = v26;
      _os_log_impl(&dword_247875000, v24, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
    }

    [(MRBaseComponentHandler *)self clearRepairFollowUp];
    [(MRBaseComponentHandler *)self sendAnalyticsForCount:v5];
  }

  if (v9)
  {
    if (v7 <= [(MRBaseComponentHandler *)self componentFollowupRetriggerdays])
    {
      ++v7;
      v27 = [(MRBaseComponentHandler *)self componentRetriggerCountKey];
      [v3 setInteger:v7 forKey:v27];
    }

    if (v7 == [(MRBaseComponentHandler *)self componentFollowupRetriggerdays]&& v5 < [(MRBaseComponentHandler *)self componentfollowUpDisplaydays])
    {
      v28 = handleForCategory(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(MRBaseComponentHandler *)self componentName];
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] handling followup retrigger", "-[MRBaseComponentHandler unlockCheckerActivityBodyForFinishRepair]"];
        *buf = 138412546;
        v33 = v29;
        v34 = 2112;
        v35 = v30;
        _os_log_impl(&dword_247875000, v28, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
      }

      [(MRBaseComponentHandler *)self clearRepairFollowUp];
      [(MRBaseComponentHandler *)self createFinishRepairFollowUpWithNotification:0];
    }
  }

  if (v5 < [(MRBaseComponentHandler *)self componentfollowUpDisplaydays])
  {
    [(MRBaseComponentHandler *)self scheduleUnlockCheckerActivity:1 forFinishRepair:self->timeIntervalOverride - (timeIntervalOverride % self->timeIntervalOverride)];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)createCriteriaForUnlockCheckerWithInterval:(double)a3
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86270], 0);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86250], a3);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86370], 1);

  return v4;
}

- (void)scheduleUnlockCheckerActivity:(double)a3 forFinishRepair:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v7 = handleForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(MRBaseComponentHandler *)self componentName];
    *buf = 138412546;
    v18 = v8;
    v19 = 2080;
    v20 = "[MRBaseComponentHandler scheduleUnlockCheckerActivity:forFinishRepair:]";
    _os_log_impl(&dword_247875000, v7, OS_LOG_TYPE_DEFAULT, "[%@][%s]", buf, 0x16u);
  }

  if ([(MRBaseComponentHandler *)self unlockCheckActivityRequired])
  {
    v9 = [(MRBaseComponentHandler *)self componentUnlockCheckerActivityName];
    v10 = [v9 UTF8String];
    v11 = *MEMORY[0x277D86238];
    if (v4)
    {
      v12 = v16;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v13 = __72__MRBaseComponentHandler_scheduleUnlockCheckerActivity_forFinishRepair___block_invoke;
    }

    else
    {
      v12 = v15;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v13 = __72__MRBaseComponentHandler_scheduleUnlockCheckerActivity_forFinishRepair___block_invoke_2;
    }

    *(v12 + 2) = v13;
    *(v12 + 3) = &unk_278EB1E68;
    *(v12 + 4) = self;
    v12[5] = a3;
    xpc_activity_register(v10, v11, v12);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __72__MRBaseComponentHandler_scheduleUnlockCheckerActivity_forFinishRepair___block_invoke(uint64_t a1, void *a2)
{
  activity = a2;
  state = xpc_activity_get_state(activity);
  v4 = *(a1 + 32);
  if (state)
  {
    [v4 unlockCheckerActivityBodyForFinishRepair];
  }

  else
  {
    v5 = [v4 createCriteriaForUnlockCheckerWithInterval:*(a1 + 40)];
    xpc_activity_set_criteria(activity, v5);
  }
}

void __72__MRBaseComponentHandler_scheduleUnlockCheckerActivity_forFinishRepair___block_invoke_2(uint64_t a1, void *a2)
{
  activity = a2;
  state = xpc_activity_get_state(activity);
  v4 = *(a1 + 32);
  if (state)
  {
    [v4 unlockCheckerActivityBody];
  }

  else
  {
    v5 = [v4 createCriteriaForUnlockCheckerWithInterval:*(a1 + 40)];
    xpc_activity_set_criteria(activity, v5);
  }
}

- (void)mainNonAuthRepairFlow
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = handleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MRBaseComponentHandler *)v2 componentName];
    *buf = 138412546;
    v42 = v4;
    v43 = 2080;
    v44 = "[MRBaseComponentHandler mainNonAuthRepairFlow]";
    _os_log_impl(&dword_247875000, v3, OS_LOG_TYPE_DEFAULT, "[%@][%s]", buf, 0x16u);
  }

  v5 = handleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MRBaseComponentHandler *)v2 componentName];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] component non authentic", "-[MRBaseComponentHandler mainNonAuthRepairFlow]"];
    *buf = 138412546;
    v42 = v6;
    v43 = 2112;
    v44 = v7;
    _os_log_impl(&dword_247875000, v5, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
  }

  v8 = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
  v9 = [(MRBaseComponentHandler *)v2 componentUnLockCheckCountKey];
  v10 = [v8 integerForKey:v9];

  v11 = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
  v12 = [v11 stringForKey:v2->lastKnownComponentIdentifierKey];

  v13 = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
  LODWORD(v11) = [v13 BOOLForKey:@"ForceDisableUIFlowForInternalBuild"];

  if ((os_variant_has_internal_content() & v11 & 1) != 0 || v2->disableUIForComponent)
  {
    [(MRBaseComponentHandler *)v2 clearRepairFollowUp];
    [(MRBaseComponentHandler *)v2 clearNSUserDefaults];
  }

  else
  {
    if (v10 >= -[MRBaseComponentHandler componentfollowUpDisplaydays](v2, "componentfollowUpDisplaydays") && v12 && v2->lastKnownComponentIdentifierValue && ([v12 isEqualToString:?] & 1) == 0)
    {
      v2->displayNotification = 1;
      *&v2->displayModalPopup = 1;
      [(MRBaseComponentHandler *)v2 clearNSUserDefaults];
    }

    v14 = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
    v15 = [v14 BOOLForKey:v2->componentHasDisplayedFollowUpKey];
    v16 = [v14 BOOLForKey:v2->componentHasNotifiedServerKey];
    v17 = [v14 BOOLForKey:v2->componentDataCollectionPresentedKey];
    v18 = [MEMORY[0x277CBEAA8] date];
    [v18 timeIntervalSince1970];
    v20 = v19;

    v21 = [(MRBaseComponentHandler *)v2 componentRetriggerCountKey];
    v22 = [v14 integerForKey:v21];

    if (v15)
    {
      v23 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
      v24 = [v23 integerForKey:v2->componentFollowupClientID];

      if (v24 && (!v22 || v22 >= [(MRBaseComponentHandler *)v2 componentFollowupRetriggerdays]&& v24 == 2))
      {
        [(MRBaseComponentHandler *)v2 clearRepairFollowUp];
      }

      v25 = handleForCategory(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(MRBaseComponentHandler *)v2 componentName];
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] handling xpc/reboot case", "-[MRBaseComponentHandler mainNonAuthRepairFlow]"];
        *buf = 138412546;
        v42 = v26;
        v43 = 2112;
        v44 = v27;
        _os_log_impl(&dword_247875000, v25, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
      }

      [v14 doubleForKey:v2->componentLastCheckTimeKey];
      v29 = (v20 - v28);
      if (v2->timeIntervalOverride <= v29)
      {
        [(MRBaseComponentHandler *)v2 unlockCheckerActivityBody];
      }

      else
      {
        v30 = handleForCategory(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [(MRBaseComponentHandler *)v2 componentName];
          v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] scheduling unlock checker activity Interval:%f ", "-[MRBaseComponentHandler mainNonAuthRepairFlow]", v2->timeIntervalOverride - v29];
          *buf = 138412546;
          v42 = v31;
          v43 = 2112;
          v44 = v32;
          _os_log_impl(&dword_247875000, v30, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
        }

        [(MRBaseComponentHandler *)v2 scheduleUnlockCheckerActivity:0 forFinishRepair:v2->timeIntervalOverride - v29];
      }

      if (!(v16 & 1 | (([(MRBaseComponentHandler *)v2 notifyServer]& v17 & 1) == 0)))
      {
        [(MRBaseComponentHandler *)v2 scheduleNetworkActivity];
      }
    }

    else
    {
      v33 = handleForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [(MRBaseComponentHandler *)v2 componentName];
        v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] starting Followup and notification", "-[MRBaseComponentHandler mainNonAuthRepairFlow]"];
        *buf = 138412546;
        v42 = v34;
        v43 = 2112;
        v44 = v35;
        _os_log_impl(&dword_247875000, v33, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
      }

      [(MRBaseComponentHandler *)v2 clearNSUserDefaults];
      [(MRBaseComponentHandler *)v2 clearRepairFollowUp];
      [(MRBaseComponentHandler *)v2 createRepairFollowUp];
      [(MRBaseComponentHandler *)v2 popUpNotificationNowWithMessage];
      [v14 setBool:1 forKey:v2->componentHasDisplayedFollowUpKey];
      [v14 setInteger:v20 forKey:v2->componentFirstUIDisplayedTimeKey];
      lastKnownComponentIdentifierValue = v2->lastKnownComponentIdentifierValue;
      if (lastKnownComponentIdentifierValue)
      {
        [v14 setObject:lastKnownComponentIdentifierValue forKey:v2->lastKnownComponentIdentifierKey];
      }

      [v14 synchronize];
      [(MRBaseComponentHandler *)v2 sendAnalyticsForCount:0];
      if (!(v16 & 1 | (([(MRBaseComponentHandler *)v2 notifyServer]& v17 & 1) == 0)))
      {
        v37 = handleForCategory(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [(MRBaseComponentHandler *)v2 componentName];
          v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] Scheduling network activity", "-[MRBaseComponentHandler mainNonAuthRepairFlow]"];
          *buf = 138412546;
          v42 = v38;
          v43 = 2112;
          v44 = v39;
          _os_log_impl(&dword_247875000, v37, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
        }

        [(MRBaseComponentHandler *)v2 scheduleNetworkActivity];
      }

      [(MRBaseComponentHandler *)v2 scheduleUnlockCheckerActivity:0 forFinishRepair:v2->timeIntervalOverride];
    }
  }

  objc_sync_exit(v2);
  v40 = *MEMORY[0x277D85DE8];
}

- (void)checkInAndHandleAuthStatus
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_247875000, log, OS_LOG_TYPE_ERROR, "[%@][%@]", buf, 0x16u);
}

- (void)sendAnalyticsForCount:(int64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
  v6 = [MEMORY[0x277CBEAA8] date];
  [v6 timeIntervalSince1970];

  v7 = [v5 integerForKey:self->componentFirstUIDisplayedTimeKey];
  if (!a3)
  {
    v9 = @"FirstUIDisplayed";
    goto LABEL_10;
  }

  v8 = v7;
  if ([(MRBaseComponentHandler *)self componentFollowupRetriggerdays]== a3)
  {
    v9 = @"lockscreenCleared";
LABEL_10:
    v14 = v9;
    AnalyticsSendEventLazy();
    v10 = v14;
    goto LABEL_11;
  }

  if ([(MRBaseComponentHandler *)self componentfollowUpDisplaydays]== a3)
  {
    v9 = @"coreFollowUpCleared";
    goto LABEL_10;
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8)
    {
      v9 = @"repairEvent";
      goto LABEL_10;
    }

    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(MRBaseComponentHandler *)self componentName];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] auth never fail before, bogus repair event", "-[MRBaseComponentHandler sendAnalyticsForCount:]"];
      *buf = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_247875000, v10, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
    }
  }

  else
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MRBaseComponentHandler *)self sendAnalyticsForCount:a3];
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

id __48__MRBaseComponentHandler_sendAnalyticsForCount___block_invoke(uint64_t a1)
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29[0] = @"EventType";
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v30[0] = v3;
  v29[1] = @"isSUCase";
  v4 = [*(a1 + 40) isSUCaseForComponent];
  v5 = MEMORY[0x277CBEC28];
  if (v4)
  {
    v5 = MEMORY[0x277CBEC38];
  }

  v30[1] = v5;
  v29[2] = @"ModuleType";
  v6 = [*(a1 + 40) componentName];
  v30[2] = v6;
  v29[3] = @"AuthStatus";
  v7 = MEMORY[0x277CCABB0];
  v8 = [*(a1 + 40) componentAuthHandler];
  v9 = [v7 numberWithInteger:{objc_msgSend(v8, "copyComponentStatus")}];
  v30[3] = v9;
  v29[4] = @"UICoreFollowUpShownDuration";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v30[4] = v10;
  v29[5] = @"UILockscreenNotification";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v30[5] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];

  if (!v2)
  {
  }

  v13 = handleForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 40) componentName];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] send event: %@", "-[MRBaseComponentHandler sendAnalyticsForCount:]_block_invoke", v12];
    *buf = 138412546;
    v26 = v14;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&dword_247875000, v13, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
  }

  v16 = handleForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(a1 + 40) componentName];
    v18 = MEMORY[0x277CCACA8];
    v19 = [*(a1 + 40) componentName];
    v20 = *(a1 + 32);
    v21 = v20;
    if (!v20)
    {
      v21 = [MEMORY[0x277CBEB68] null];
    }

    v22 = [v18 stringWithFormat:@"CoreAnalyticsEvent: ModuleType(%@), EventType(%@)", v19, v21];
    *buf = 138412546;
    v26 = v17;
    v27 = 2112;
    v28 = v22;
    _os_log_impl(&dword_247875000, v16, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
    if (!v20)
    {
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (void)handleComponentSUCase:(id)a3 lastAUthCheckBuildVersion:(id)a4 followUpItemID:(id)a5 queryString:(id)a6 suCasekey:(id)a7 startBuildVersion:(id)a8 componentAuth:(id)a9
{
  v45 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = DMGetUserDataDisposition();
  v20 = handleForCategory(0);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if ((v19 & 2) != 0)
  {
    if (v21)
    {
      *buf = 0;
      _os_log_impl(&dword_247875000, v20, OS_LOG_TYPE_DEFAULT, "Update install case", buf, 2u);
    }

    v20 = DMGetPreviousBuildVersion();
    v40 = DMCopyCurrentBuildVersion();
    v22 = handleForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v42 = v20;
      v43 = 2112;
      v44 = v40;
      _os_log_impl(&dword_247875000, v22, OS_LOG_TYPE_DEFAULT, "Old version is %@:%@", buf, 0x16u);
    }

    v23 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v24 = [v23 BOOLForKey:v13];
    v25 = [v23 stringForKey:v14];
    v26 = v25;
    if (v24)
    {
      v27 = handleForCategory(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = v15;
        _os_log_impl(&dword_247875000, v27, OS_LOG_TYPE_DEFAULT, "[%@] User already seeing UI", buf, 0xCu);
      }
    }

    else if (!v25 || ([v25 isEqualToString:v40] & 1) == 0)
    {
      v28 = handleForCategory(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = v15;
        _os_log_impl(&dword_247875000, v28, OS_LOG_TYPE_DEFAULT, "[%@] first auth case", buf, 0xCu);
      }

      v29 = [v18 synchronouslycopyAuthStatus];
      if (v29 == 1)
      {
        v30 = handleForCategory(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v42 = v15;
          _os_log_impl(&dword_247875000, v30, OS_LOG_TYPE_DEFAULT, "[%@] is Trusted", buf, 0xCu);
        }

        [v23 setObject:v40 forKey:v14];
        [v23 synchronize];
      }

      else
      {
        v31 = v29;
        v39 = v16;
        v32 = handleForCategory(0);
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v31 < 0)
        {
          if (v33)
          {
            *buf = 138412290;
            v42 = v15;
            _os_log_impl(&dword_247875000, v32, OS_LOG_TYPE_DEFAULT, "[%@] is not Trusted", buf, 0xCu);
          }

          v34 = [objc_alloc(MEMORY[0x277D65E18]) initWithString:v17];
          v16 = v39;
          v38 = v34;
          if (v20 && [v34 compareBuildVersionString:v20 withPrecision:2] == 1)
          {
            v35 = handleForCategory(0);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v42 = v15;
              _os_log_impl(&dword_247875000, v35, OS_LOG_TYPE_DEFAULT, "SU case for %@", buf, 0xCu);
            }

            [v23 setBool:1 forKey:v39];
          }

          else
          {
            v36 = handleForCategory(0);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v42 = v20;
              _os_log_impl(&dword_247875000, v36, OS_LOG_TYPE_DEFAULT, "ignoring setting the SU case: previousBuild:%@", buf, 0xCu);
            }
          }

          [v23 setObject:v40 forKey:v14];
          [v23 synchronize];
        }

        else
        {
          if (v33)
          {
            *buf = 138412290;
            v42 = v15;
            _os_log_impl(&dword_247875000, v32, OS_LOG_TYPE_DEFAULT, "[%@] Auth timeout", buf, 0xCu);
          }

          v16 = v39;
        }
      }
    }
  }

  else if (v21)
  {
    *buf = 67109120;
    LODWORD(v42) = v19;
    _os_log_impl(&dword_247875000, v20, OS_LOG_TYPE_DEFAULT, "Skipping SU update check:%d", buf, 8u);
  }

  v37 = *MEMORY[0x277D85DE8];
}

+ (id)getHwRevision
{
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (MatchingService)
  {
    v5 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"config-number", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:CFProperty encoding:4];
      v8 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"/-"];
      v9 = [v7 componentsSeparatedByCharactersInSet:v8];

      if ([v9 count] < 2)
      {
        v12 = 0;
      }

      else
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = [v9 objectAtIndexedSubscript:1];
        v12 = [v10 stringWithFormat:@"%@", v11];
      }
    }

    else
    {
      +[MRBaseComponentHandler getHwRevision];
      v12 = 0;
      v9 = 0;
      v7 = 0;
    }

    IOObjectRelease(v5);
  }

  else
  {
    +[MRBaseComponentHandler getHwRevision];
    CFProperty = 0;
    v7 = 0;
    v9 = 0;
    v12 = 0;
  }

  return v12;
}

void __49__MRBaseComponentHandler_scheduleNetworkActivity__block_invoke_cold_1(uint64_t a1, _xpc_activity_s *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) componentName];
  v4 = MEMORY[0x277CCACA8];
  v13 = a2;
  state = xpc_activity_get_state(a2);
  v5 = [v4 stringWithFormat:@"Failed to set state to DEFER for activity %@ current state: %lu"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_247875000, v6, v7, "[%@][%@]", v8, v9, v10, v11, v13, state, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

void __49__MRBaseComponentHandler_scheduleNetworkActivity__block_invoke_cold_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) componentName];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] unable to create sealer"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_247875000, v3, v4, "[%@][%@]", v5, v6, v7, v8, "[MRBaseComponentHandler scheduleNetworkActivity]_block_invoke", v10, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

void __49__MRBaseComponentHandler_scheduleNetworkActivity__block_invoke_cold_3(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) componentName];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s]Unable to get FDR path"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_247875000, v3, v4, "[%@][%@]", v5, v6, v7, v8, "[MRBaseComponentHandler scheduleNetworkActivity]_block_invoke", v10, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sendAnalyticsForCount:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a1 componentName];
  v12 = a2;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s] ignoring rogue event with unlock countL: %ld"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_247875000, v5, v6, "[%@][%@]", v7, v8, v9, v10, "[MRBaseComponentHandler sendAnalyticsForCount:]", v12, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)getHwRevision
{
  v0 = handleForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2(&dword_247875000, v1, v2, "Cannot find matching service to IOPlatformExpertDevice", v3, v4, v5, v6, 0);
  }
}

@end