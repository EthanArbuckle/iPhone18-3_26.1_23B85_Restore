@interface MBBackupScheduler
+ (BOOL)backupOnWiFiWithDAS;
+ (MBBackupScheduler)sharedInstance;
+ (id)lastOnConditionEventsForAccount:(id)a3;
+ (void)_setLastOnConditionEvents:(id)a3 account:(id)a4;
+ (void)postBackupCompletionNotificationWithAccount:(id)a3 completionError:(id)a4;
- ($3C5213C2FB734B7CA09EF95E8A7A7A2F)conditions;
- (BOOL)_fetchNextBackupDateAcrossAccountsOnWifi:(id *)a3 cellular:(id *)a4 battery:(id *)a5 error:(id *)a6;
- (BOOL)_fetchNextBackupDateOnWiFi:(id *)a3 nextBackupDateOnCellular:(id *)a4 nextBackupDateOnBattery:(id *)a5 lastBackupDate:(id *)a6 account:(id)a7 connection:(id)a8 error:(id *)a9;
- (BOOL)_isBackupAllowed;
- (BOOL)_isBackupOnCellularAllowedForAccount:(id)a3;
- (BOOL)_shouldStartBackupWithAccount:(id)a3 reason:(int64_t)a4;
- (BOOL)_startBackupForNextAvailableAccountWithRequest:(id)a3;
- (id)_backoffDateForAccount:(id)a3 softCancelled:(BOOL)a4;
- (id)_conditionLossTimerWithSeconds:(int64_t)a3 changes:(id)a4;
- (id)_dateOfLastBackupFromCloudWithConnection:(id)a3 account:(id)a4 error:(id *)a5;
- (id)_dateOfLastBackupFromLockdown;
- (id)_descriptionForTTR:(id)a3 account:(id)a4;
- (id)_fetchAccountsAndIsEnabled:(BOOL *)a3 isBackupOnCellularEnabled:(BOOL *)a4;
- (id)_initWithServiceManager:(id)a3;
- (id)_lastSnapshotFromCacheWithAccount:(id)a3;
- (id)_nilBackupDateFetchDateForAccount:(id)a3;
- (id)_onBatteryRetryAfterDateForAccount:(id)a3;
- (id)_retryAfterDateForAccount:(id)a3;
- (id)dateOfLastBackupWithAccount:(id)a3 connection:(id)a4 error:(id *)a5;
- (id)dateOfNextScheduledBackupWithAccount:(id)a3 connection:(id)a4 error:(id *)a5;
- (int64_t)_determineInternalNotificationActionForErrors:(id)a3 dateOfLastUnlock:(id)a4;
- (int64_t)_scheduleBackupOnWiFi:(BOOL)a3 onCellular:(BOOL)a4 onBattery:(BOOL)a5;
- (unint64_t)_lastPendingSnapshotSizeForAccount:(id)a3;
- (void)_cancelAlarm;
- (void)_cancelInternalNotification;
- (void)_cancelLossTimers;
- (void)_cancelPowerLossTimer;
- (void)_cancelWiFiLossTimer;
- (void)_checkinXPCActivities;
- (void)_clearAllFailureCountsForAccount:(id)a3;
- (void)_clearAllRetryAfterDatesForAccount:(id)a3;
- (void)_clearDateOfLastPasscodeChange;
- (void)_clearFailureCountWithKey:(id)a3 account:(id)a4;
- (void)_clearLastPendingSnapshotSizeForAccount:(id)a3;
- (void)_clearRetryAfterDateWithKey:(id)a3 account:(id)a4;
- (void)_handleAlarm;
- (void)_holdWorkAssertion;
- (void)_installMonitors;
- (void)_managerDidFailBackupWithAccount:(id)a3 error:(id)a4;
- (void)_managerDidFinishBackupWithAccount:(id)a3;
- (void)_notifyStateChanged:(id)a3 conditions:(id)a4;
- (void)_onQueue_warnUserOfDelayedRestoreWithAccount:(id)a3;
- (void)_onQueue_warnUserOfLateBackupWithAccount:(id)a3;
- (void)_registerAlarmHandler;
- (void)_releaseWorkAssertion;
- (void)_scheduleNextBackup;
- (void)_setIsBackupOnCellularEnabled:(BOOL)a3;
- (void)_setIsEnabled:(BOOL)a3;
- (void)_setIsOnPower:(BOOL)a3;
- (void)_stateDidChange:(id)a3 conditions:(id)a4;
- (void)_triggerInternalNotificationWithAccount:(id)a3;
- (void)_updateFailureCountsForAccount:(id)a3 lastBackupError:(id)a4 canceled:(BOOL)a5 lowCellularBudget:(BOOL)a6;
- (void)_updateNilBackupDateFetchDate:(id)a3 account:(id)a4;
- (void)_updateRetryAfterDate:(id)a3 forKey:(id)a4 account:(id)a5 ignoreExistingDate:(BOOL)a6;
- (void)_updateRetryAfterDateAfterUnlockForAccount:(id)a3;
- (void)_warnUserOfLateBackupWithAccount:(id)a3;
- (void)accountChanged;
- (void)backupActivityIsRunnable:(int)a3;
- (void)clearNilBackupDateFetchDateForAccount:(id)a3;
- (void)dealloc;
- (void)passcodeChanged;
- (void)warnUserOfDelayedRestoreWithAccount:(id)a3;
@end

@implementation MBBackupScheduler

+ (MBBackupScheduler)sharedInstance
{
  +[MBCKManager sharedInstance];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D33D8;
  v8 = block[3] = &unk_1003BC0B0;
  v2 = qword_100421A08;
  v3 = v8;
  if (v2 != -1)
  {
    dispatch_once(&qword_100421A08, block);
  }

  v4 = qword_100421A00;
  v5 = qword_100421A00;

  return v4;
}

- (id)_initWithServiceManager:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    __assert_rtn("[MBBackupScheduler _initWithServiceManager:]", "MBBackupScheduler.m", 218, "serviceManager");
  }

  v6 = v5;
  v49.receiver = self;
  v49.super_class = MBBackupScheduler;
  v7 = [(MBBackupScheduler *)&v49 init];
  if (v7)
  {
    v8 = time(0);
    srand48(v8);
    atomic_store(0, v7 + 22);
    *(v7 + 14) = -1;
    *(v7 + 30) = -1;
    objc_storeStrong(v7 + 1, a3);
    v9 = dispatch_group_create();
    [v7 setFirstConditionsGroup:v9];

    v10 = [v7 firstConditionsGroup];
    dispatch_group_enter(v10);

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_UTILITY, 0);

    v13 = dispatch_queue_create("com.apple.backupd.followup", v12);
    v14 = *(v7 + 3);
    *(v7 + 3) = v13;

    v15 = dispatch_queue_attr_make_initially_inactive(v12);
    v16 = dispatch_queue_create("com.apple.backupd.scheduler", v15);
    v17 = *(v7 + 2);
    *(v7 + 2) = v16;

    v18 = objc_opt_new();
    v19 = *(v7 + 20);
    *(v7 + 20) = v18;

    v20 = objc_opt_new();
    v21 = *(v7 + 21);
    *(v7 + 21) = v20;

    v22 = *(v7 + 2);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001D3920;
    block[3] = &unk_1003BC0B0;
    v23 = v7;
    v48 = v23;
    dispatch_async(v22, block);
    v46 = 0;
    v24 = [MBPersona getPersonalBooleanValueForKey:@"AllowBackupOnExpensiveCellular" keyExists:&v46];
    if (v46)
    {
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v51) = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "=scheduler= Backup on cellular allowed (plist override): %d", buf, 8u);
        v42 = v24;
        _MBLog();
      }
    }

    *(v23 + 124) = v24 != 0;
    v46 = 0;
    v26 = [MBPersona getPersonalBooleanValueForKey:@"AllowBackupOnBattery" keyExists:&v46, v42];
    v27 = 0;
    if (v46)
    {
      v28 = v26;
      if (v26)
      {
        v29 = MBGetDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v51) = v28;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "=scheduler= Backup on battery allowed (plist override): %d", buf, 8u);
          v43 = v28;
          _MBLog();
        }

        v27 = 1;
      }
    }

    *(v23 + 125) = v27;
    v46 = 0;
    v30 = [MBPersona getPersonalBooleanValueForKey:@"IgnorePowerState" keyExists:&v46, v43];
    if (v46)
    {
      v31 = v30 == 0;
    }

    else
    {
      v31 = 1;
    }

    v32 = !v31;
    *(v23 + 108) = v32;
    v33 = [MBPersona copyPersonalPreferencesValueForKey:@"DateOfLastPasscodeChange" class:objc_opt_class()];
    if (v33)
    {
      v34 = +[NSDate now];
      [v34 timeIntervalSinceDate:v33];
      v36 = v35;

      v37 = MBGetDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v51 = v36 / 60.0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "=scheduler= Passcode was changed %.2f minutes ago", buf, 0xCu);
        _MBLog();
      }

      if ([v33 isWithinDefaultBackupPeriod])
      {
        objc_storeStrong(v23 + 29, v33);
      }

      else
      {
        [v23 _clearDateOfLastPasscodeChange];
      }
    }

    v38 = *(v7 + 2);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1001D39CC;
    v44[3] = &unk_1003BC0B0;
    v39 = v23;
    v45 = v39;
    dispatch_async(v38, v44);
    v40 = v39[32];
    v39[32] = 0;

    dispatch_activate(*(v7 + 2));
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(MBBackupScheduler *)self networkPathMonitor];
  [v3 cancel];

  [(MBBackupScheduler *)self _cancelLossTimers];
  powerToken = self->_powerToken;
  if (powerToken != -1)
  {
    notify_cancel(powerToken);
  }

  lockScreenToken = self->_lockScreenToken;
  if (lockScreenToken != -1)
  {
    notify_cancel(lockScreenToken);
  }

  keyBagLockToken = self->_keyBagLockToken;
  if (keyBagLockToken != -1)
  {
    notify_cancel(keyBagLockToken);
  }

  v7.receiver = self;
  v7.super_class = MBBackupScheduler;
  [(MBBackupScheduler *)&v7 dealloc];
}

- (void)_installMonitors
{
  p_stateQueue = &self->_stateQueue;
  dispatch_assert_queue_V2(self->_stateQueue);
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001D3ED0;
  v18[3] = &unk_1003C1000;
  objc_copyWeak(&v19, &location);
  v4 = objc_retainBlock(v18);
  notify_register_dispatch(kMobileKeyBagLockStatusNotifyToken, &self->_keyBagLockToken, *p_stateQueue, v4);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D3F34;
  v16[3] = &unk_1003C1000;
  objc_copyWeak(&v17, &location);
  v5 = objc_retainBlock(v16);
  notify_register_dispatch(kSBSLockStateNotifyKey, &self->_lockScreenToken, self->_stateQueue, v5);
  (v5[2])(v5, self->_lockScreenToken);
  (v4[2])(v4, self->_keyBagLockToken);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001D407C;
  v14[3] = &unk_1003C1000;
  objc_copyWeak(&v15, &location);
  v6 = objc_retainBlock(v14);
  v7 = notify_register_dispatch("com.apple.system.powersources.source", &self->_powerToken, self->_stateQueue, v6);
  if (v7)
  {
    self->_powerToken = -1;
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = "com.apple.system.powersources.source";
      v23 = 1024;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=scheduler= notify_register_dispatch(%{public}s) failed: %u", buf, 0x12u);
      _MBLog();
    }
  }

  (v6[2])(v6, self->_powerToken);
  v9 = [[MBNetworkPathMonitor alloc] initWithQueue:self->_stateQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001D4174;
  v12[3] = &unk_1003C1240;
  objc_copyWeak(&v13, &location);
  [v9 setBackupOnCellularSupportUpdateHandler:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001D41C8;
  v10[3] = &unk_1003BDA48;
  objc_copyWeak(&v11, &location);
  [v9 setNetworkPathUpdateHandler:v10];
  [(MBBackupScheduler *)self setNetworkPathMonitor:v9];
  [v9 start];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

+ (void)postBackupCompletionNotificationWithAccount:(id)a3 completionError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedInstance];
  v9 = v8[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D433C;
  block[3] = &unk_1003BC2E0;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  dispatch_async(v9, block);
}

+ (id)lastOnConditionEventsForAccount:(id)a3
{
  v3 = [a3 persona];
  v4 = [v3 copyPreferencesValueForKey:@"LastOnConditionEvents" class:objc_opt_class()];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v11 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = v5;
LABEL_11:

  return v11;
}

+ (void)_setLastOnConditionEvents:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = [a4 persona];
  [v6 setPreferencesValue:v5 forKey:@"LastOnConditionEvents"];
}

- (void)_checkinXPCActivities
{
  v3 = [[MBXPCActivityCoordinator alloc] initWithDelegate:self];
  v30 = [(MBXPCActivityCoordinator *)v3 checkInBackupActivity:1];
  v4 = xpc_activity_copy_criteria(v30);
  v5 = xpc_dictionary_get_value(v4, XPC_ACTIVITY_DELAY);
  v6 = +[NSDate now];
  if (v5)
  {
    v7 = [v6 dateByAddingTimeInterval:xpc_int64_get_value(v5)];
    [(NSMutableDictionary *)self->_nextBackupDatesByActivityType setObject:v7 forKeyedSubscript:&off_1003E0F90];
  }

  v28 = [(MBXPCActivityCoordinator *)v3 checkInBackupActivity:2];
  v8 = xpc_activity_copy_criteria(v28);

  v9 = xpc_dictionary_get_value(v8, XPC_ACTIVITY_DELAY);

  if (v9)
  {
    v10 = [v6 dateByAddingTimeInterval:xpc_int64_get_value(v9)];
    [(NSMutableDictionary *)self->_nextBackupDatesByActivityType setObject:v10 forKeyedSubscript:&off_1003E0FA8];
  }

  v26 = [(MBXPCActivityCoordinator *)v3 checkInBackupActivity:3];
  v11 = xpc_activity_copy_criteria(v26);

  v27 = v11;
  v12 = xpc_dictionary_get_value(v11, XPC_ACTIVITY_DELAY);

  if (v12)
  {
    v13 = [v6 dateByAddingTimeInterval:xpc_int64_get_value(v12)];
    [(NSMutableDictionary *)self->_nextBackupDatesByActivityType setObject:v13 forKeyedSubscript:&off_1003E0FC0];
  }

  v25 = v12;
  v29 = v6;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = self->_nextBackupDatesByActivityType;
  v15 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = MBBackupXPCActivityNameWithType([v19 intValue]);
          v22 = [(NSMutableDictionary *)self->_nextBackupDatesByActivityType objectForKeyedSubscript:v19];
          *buf = 136315394;
          v36 = v21;
          v37 = 2114;
          v38 = v22;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=scheduler= Found already scheduled backup for %s at %{public}@", buf, 0x16u);

          MBBackupXPCActivityNameWithType([v19 intValue]);
          v24 = [(NSMutableDictionary *)self->_nextBackupDatesByActivityType objectForKeyedSubscript:v19];
          _MBLog();
        }
      }

      v16 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v16);
  }

  activityCoordinator = self->_activityCoordinator;
  self->_activityCoordinator = v3;
}

- (void)_updateFailureCountsForAccount:(id)a3 lastBackupError:(id)a4 canceled:(BOOL)a5 lowCellularBudget:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [v10 persona];
  v13 = [v12 copyPreferencesValueForKey:@"MissingEncryptionKeyFailureCount" class:objc_opt_class()];

  LODWORD(v12) = [MBError isError:v11 withCode:209];
  if (v12)
  {
    v14 = [v13 unsignedIntegerValue];
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v10 accountIdentifier];
      *buf = 138544130;
      v32 = @"MissingEncryptionKeyFailureCount";
      v33 = 2114;
      v34 = v16;
      v35 = 2048;
      v36 = v14 + 1;
      v37 = 2048;
      v38 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=scheduler= Updating %{public}@ for account %{public}@: %lu(%lu)", buf, 0x2Au);

      v29 = [v10 accountIdentifier];
      _MBLog();
    }

    v17 = [v10 persona];
    v18 = [NSNumber numberWithUnsignedInteger:v14 + 1];
    [v17 setPreferencesValue:v18 forKey:@"MissingEncryptionKeyFailureCount"];
  }

  else
  {
    v19 = 1;
    if (v13)
    {
      v19 = 2;
    }

    if (!v7 || v6)
    {
      v20 = v19;
    }

    else
    {
      v20 = v13 != 0;
    }

    if (v20)
    {
      v21 = [v10 persona];
      v22 = [v21 copyPreferencesValueForKey:@"FailureCount" class:objc_opt_class()];
      v23 = [v22 unsignedIntegerValue];

      v24 = &v23[v20];
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v10 accountIdentifier];
        *buf = 138544130;
        v32 = @"FailureCount";
        v33 = 2114;
        v34 = v26;
        v35 = 2048;
        v36 = v24;
        v37 = 2048;
        v38 = v23;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "=scheduler= Updating %{public}@ for account %{public}@: %lu(%lu)", buf, 0x2Au);

        v30 = [v10 accountIdentifier];
        _MBLog();
      }

      v27 = [v10 persona];
      v28 = [NSNumber numberWithUnsignedInteger:v24];
      [v27 setPreferencesValue:v28 forKey:@"FailureCount"];
    }

    if (v13)
    {
      [(MBBackupScheduler *)self _clearFailureCountWithKey:@"MissingEncryptionKeyFailureCount" account:v10];
    }
  }
}

- (void)_clearFailureCountWithKey:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v5 isEqualToString:@"FailureCount"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"MissingEncryptionKeyFailureCount") & 1) == 0)
  {
    __assert_rtn("[MBBackupScheduler _clearFailureCountWithKey:account:]", "MBBackupScheduler.m", 492, "[key isEqualToString:kMBFailureCountKey] || [key isEqualToString:kMBMissingEncryptionKeyFailureCountKey]");
  }

  v7 = [v6 persona];
  v8 = [v7 copyPreferencesValueForKey:v5 class:objc_opt_class()];

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 accountIdentifier];
    *buf = 138543874;
    v14 = v5;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=scheduler= Clearing %{public}@ (%{public}@) for account %{public}@", buf, 0x20u);

    v12 = [v6 accountIdentifier];
    _MBLog();
  }

  v11 = [v6 persona];
  [v11 setPreferencesValue:0 forKey:v5];
}

- (void)_clearAllFailureCountsForAccount:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [&off_1003E23C0 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(&off_1003E23C0);
        }

        [(MBBackupScheduler *)self _clearFailureCountWithKey:*(*(&v9 + 1) + 8 * v8) account:v4];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [&off_1003E23C0 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_backoffDateForAccount:(id)a3 softCancelled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[NSMutableDictionary alloc] initWithCapacity:1];
  if (v4)
  {
    v8 = 30.0;
    v9 = [NSDate dateWithTimeIntervalSinceNow:30.0];
    v10 = @"RetryAfter";
  }

  else
  {
    v11 = [v6 persona];
    v12 = [v11 copyPreferencesValueForKey:@"MissingEncryptionKeyFailureCount" class:objc_opt_class()];

    if (v12)
    {
      v13 = [v12 unsignedIntegerValue];
      if (v13 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      v15 = 5;
      if (v14 < 5)
      {
        v15 = v14;
      }

      v16 = dbl_1002BA088[v15 - 1];
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        *v30 = @"MissingEncryptionKeyFailureCount";
        *&v30[8] = 2048;
        *&v30[10] = v14;
        *&v30[18] = 2048;
        *&v30[20] = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=scheduler= %{public}@, failureCount:%lu, backoff:%G", buf, 0x20u);
        _MBLog();
      }

      v10 = @"MissingEncryptionKeyRetryAfter";
    }

    else
    {
      v18 = [v6 persona];
      v19 = [v18 copyPreferencesValueForKey:@"FailureCount" class:objc_opt_class()];
      v20 = [v19 unsignedIntegerValue];

      v21 = 6;
      if (v20 < 6)
      {
        v21 = v20;
      }

      v16 = dbl_1002BA0B0[v21];
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        *v30 = @"FailureCount";
        *&v30[8] = 2048;
        *&v30[10] = v20;
        *&v30[18] = 2048;
        *&v30[20] = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=scheduler= %{public}@, failureCount:%lu, backoff:%G", buf, 0x20u);
        _MBLog();
      }

      v10 = @"RetryAfter";
    }

    if (v16 <= 0.0)
    {
      __assert_rtn("[MBBackupScheduler _backoffDateForAccount:softCancelled:]", "MBBackupScheduler.m", 549, "0.0 < backoff");
    }

    v8 = v16 + (drand48() + -0.5) * floor(v16 * 0.25);
    v9 = [NSDate dateWithTimeIntervalSinceNow:v8];
    v22 = [NSDate dateWithTimeIntervalSinceNow:fmax(v8, 1800.0)];
    [(MBBackupScheduler *)self _updateRetryAfterDate:v22 forKey:@"OnBatteryRetryAfter" account:v6];
  }

  if (!v9)
  {
    __assert_rtn("[MBBackupScheduler _backoffDateForAccount:softCancelled:]", "MBBackupScheduler.m", 558, "backoffDate");
  }

  [v7 setObject:v9 forKeyedSubscript:v10];
  v23 = MBGetDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = MBStringWithDate();
    v25 = [v6 accountIdentifier];
    *buf = 67109890;
    *v30 = v4;
    *&v30[4] = 2048;
    *&v30[6] = v8;
    *&v30[14] = 2114;
    *&v30[16] = v24;
    *&v30[24] = 2114;
    *&v30[26] = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "=scheduler= softCancelled:%d, backoff:%G, backoffDate:%{public}@, account:%{public}@", buf, 0x26u);

    v26 = MBStringWithDate();
    v28 = [v6 accountIdentifier];
    _MBLog();
  }

  if ([v7 count] != 1)
  {
    __assert_rtn("[MBBackupScheduler _backoffDateForAccount:softCancelled:]", "MBBackupScheduler.m", 563, "result.count == 1");
  }

  return v7;
}

- (id)_retryAfterDateForAccount:(id)a3
{
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [&off_1003E23D8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(&off_1003E23D8);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v3 persona];
        v11 = [v10 copyPreferencesValueForKey:v9 class:objc_opt_class()];

        if (v11)
        {
          if (v6)
          {
            v12 = [v11 laterDate:v6];

            v6 = v12;
          }

          else
          {
            v6 = v11;
          }
        }
      }

      v5 = [&off_1003E23D8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = [NSDate dateWithTimeIntervalSinceNow:604800.0];
  v14 = [v6 earlierDate:v13];

  return v14;
}

- (id)_onBatteryRetryAfterDateForAccount:(id)a3
{
  v3 = [a3 persona];
  v4 = [v3 copyPreferencesValueForKey:@"OnBatteryRetryAfter" class:objc_opt_class()];

  v5 = [NSDate dateWithTimeIntervalSinceNow:604800.0];
  v6 = [v4 earlierDate:v5];

  return v6;
}

- (void)_clearRetryAfterDateWithKey:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v5 isEqualToString:@"RetryAfter"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"MissingEncryptionKeyRetryAfter") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"OnBatteryRetryAfter") & 1) == 0)
  {
    __assert_rtn("[MBBackupScheduler _clearRetryAfterDateWithKey:account:]", "MBBackupScheduler.m", 591, "[key isEqualToString:kMBRetryAfterKey] || [key isEqualToString:kMBMissingEncryptionKeyRetryAfterKey] || [key isEqualToString:kMBOnBatteryRetryAfterKey]");
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 accountIdentifier];
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=scheduler= Clearing %{public}@ for account %{public}@", buf, 0x16u);

    v10 = [v6 accountIdentifier];
    _MBLog();
  }

  v9 = [v6 persona];
  [v9 setPreferencesValue:0 forKey:v5];
}

- (void)_clearAllRetryAfterDatesForAccount:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [&off_1003E23F0 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(&off_1003E23F0);
        }

        [(MBBackupScheduler *)self _clearRetryAfterDateWithKey:*(*(&v9 + 1) + 8 * v8) account:v4];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [&off_1003E23F0 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateRetryAfterDate:(id)a3 forKey:(id)a4 account:(id)a5 ignoreExistingDate:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (([v10 isEqualToString:@"RetryAfter"] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"OnBatteryRetryAfter") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"MissingEncryptionKeyRetryAfter") & 1) == 0)
  {
    __assert_rtn("[MBBackupScheduler _updateRetryAfterDate:forKey:account:ignoreExistingDate:]", "MBBackupScheduler.m", 604, "[key isEqualToString:kMBRetryAfterKey] || [key isEqualToString:kMBOnBatteryRetryAfterKey] || [key isEqualToString:kMBMissingEncryptionKeyRetryAfterKey]");
  }

  v12 = [v11 persona];
  v13 = [v12 copyPreferencesValueForKey:v10 class:objc_opt_class()];

  if (v6 || !v13)
  {
    v14 = v9;
  }

  else
  {
    v14 = [v9 laterDate:v13];
  }

  v15 = v14;
  v16 = [NSDate dateWithTimeIntervalSinceNow:604800.0];
  v17 = [v15 earlierDate:v16];

  v18 = MBGetDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    MBStringWithDate();
    v19 = v26 = v9;
    v20 = MBStringWithDate();
    v21 = [v11 accountIdentifier];
    *buf = 138544386;
    v28 = v10;
    v29 = 2114;
    v30 = v19;
    v31 = 2114;
    v32 = v20;
    v33 = 2114;
    v34 = v21;
    v35 = 1024;
    v36 = v6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=scheduler= Updating %{public}@ from %{public}@ to %{public}@ for account %{public}@ (%d)", buf, 0x30u);

    v22 = MBStringWithDate();
    v23 = MBStringWithDate();
    v25 = [v11 accountIdentifier];
    _MBLog();

    v9 = v26;
  }

  v24 = [v11 persona];
  [v24 setPreferencesValue:v17 forKey:v10];
}

- (void)_holdWorkAssertion
{
  if (!atomic_fetch_add(&self->_workAssertions, 1u))
  {
    v3 = +[MBDaemon sharedDaemon];
    [v3 holdWorkAssertionWithClass:objc_opt_class()];
  }
}

- (void)_releaseWorkAssertion
{
  if (atomic_fetch_add(&self->_workAssertions, 0xFFFFFFFF) == 1)
  {
    v3 = +[MBDaemon sharedDaemon];
    [v3 releaseWorkAssertionWithClass:objc_opt_class()];
  }
}

- (BOOL)_shouldStartBackupWithAccount:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    __assert_rtn("[MBBackupScheduler _shouldStartBackupWithAccount:reason:]", "MBBackupScheduler.m", 707, "account");
  }

  v7 = v6;
  if ((a4 - 4) >= 2 && a4 != 2)
  {
    __assert_rtn("[MBBackupScheduler _shouldStartBackupWithAccount:reason:]", "MBBackupScheduler.m", 708, "reason == kMBBackupReasonScheduledOnWiFi || reason == kMBBackupReasonScheduledOnCellular || reason == kMBBackupReasonScheduledOnBattery");
  }

  dispatch_assert_queue_V2(self->_stateQueue);
  if ([v7 isEnabled])
  {
    if (a4 != 4 || [(MBBackupScheduler *)self _isBackupOnCellularAllowedForAccount:v7])
    {
      v8 = +[NSDate now];
      v43 = 0;
      v44 = 0;
      v41 = 0;
      v42 = 0;
      v40 = 0;
      v9 = [(MBBackupScheduler *)self _fetchNextBackupDateOnWiFi:&v44 nextBackupDateOnCellular:&v43 nextBackupDateOnBattery:&v42 lastBackupDate:&v41 account:v7 connection:0 error:&v40];
      v10 = v44;
      v11 = v43;
      v12 = v42;
      v13 = v41;
      v14 = v40;
      if ((v9 & 1) == 0)
      {
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v46 = *&v14;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "=scheduler= Failed to fetch the last&next backup date: %{public}@", buf, 0xCu);
          _MBLog();
        }

        goto LABEL_40;
      }

      if (v13)
      {
        [v8 timeIntervalSinceDate:v13];
        v16 = v15;
        v17 = fmin(self->_backupPeriodOnWiFi, fmin(self->_backupPeriodOnCellular, self->_backupPeriodOnBattery));
        if (a4 == 5)
        {
          v18 = [(NSDate *)self->_dateOfLastPasscodeChange isDueForPasscodeChangedBackupWithLastBackupDate:v13];
          v19 = v12;
          if (v18)
          {
            goto LABEL_33;
          }

          if (fabs(v16) >= v17)
          {
            v19 = v12;
            if (!self->_allowBackupOnBattery)
            {
              v20 = MBGetDefaultLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                dateOfLastPasscodeChange = self->_dateOfLastPasscodeChange;
                v39 = MBStringWithDate();
                v22 = MBStringWithDate();
                *buf = 138412546;
                v46 = *&v39;
                v47 = 2112;
                v48 = v22;
                v23 = v22;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=scheduler= Passcode change backup is no longer due - passcodeChangeDate: %@ lastBackupDate: %@", buf, 0x16u);

                v24 = self->_dateOfLastPasscodeChange;
                v25 = MBStringWithDate();
                v26 = MBStringWithDate();
LABEL_38:
                _MBLog();

                goto LABEL_39;
              }

LABEL_40:
              v30 = 0;
LABEL_43:

              goto LABEL_44;
            }

            goto LABEL_33;
          }

LABEL_24:
          v20 = MBGetDefaultLog();
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_40;
          }

          v34 = MBStringWithDate();
          *buf = 134218242;
          v46 = v16;
          v47 = 2114;
          v48 = v34;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=scheduler= Already backed up recently (%.3fs): %{public}@", buf, 0x16u);

          v25 = MBStringWithDate();
          _MBLog();
LABEL_39:

          goto LABEL_40;
        }

        if (fabs(v15) < v17)
        {
          goto LABEL_24;
        }
      }

      if (a4 == 2)
      {
        v19 = v10;
      }

      else
      {
        v19 = v11;
      }

      if (a4 != 2 && a4 != 4)
      {
        if (a4 != 5)
        {
          v20 = 0;
          goto LABEL_42;
        }

        v19 = v12;
      }

LABEL_33:
      v20 = v19;
      if (v20)
      {
        if ([v8 compare:v20] == -1)
        {
          [v20 timeIntervalSinceDate:v8];
          v36 = v35;
          if (v35 > 60.0)
          {
            v25 = MBGetDefaultLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v37 = MBStringWithDate();
              *buf = 134218242;
              v46 = v36;
              v47 = 2114;
              v48 = v37;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "=scheduler= The next backup date was pushed later (%.3fs): %{public}@", buf, 0x16u);

              v26 = MBStringWithDate();
              goto LABEL_38;
            }

            goto LABEL_39;
          }
        }
      }

LABEL_42:
      v30 = 1;
      goto LABEL_43;
    }

    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v7 accountIdentifier];
      v32 = [v7 persona];
      v33 = [v32 personaIdentifier];
      *buf = 138412546;
      v46 = *&v31;
      v47 = 2112;
      v48 = v33;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=scheduler= Not starting automatic backup on cellular for account %@/%@ because it's disabled from remote configuration", buf, 0x16u);

      v8 = [v7 accountIdentifier];
      v10 = [v7 persona];
      v11 = [v10 personaIdentifier];
      goto LABEL_17;
    }
  }

  else
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v7 accountIdentifier];
      v28 = [v7 persona];
      v29 = [v28 personaIdentifier];
      *buf = 138412546;
      v46 = *&v27;
      v47 = 2112;
      v48 = v29;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=scheduler= Ignoring backup start request since the account %@/%@ isn't enabled", buf, 0x16u);

      v8 = [v7 accountIdentifier];
      v10 = [v7 persona];
      v11 = [v10 personaIdentifier];
LABEL_17:
      _MBLog();
      v30 = 0;
LABEL_44:

      goto LABEL_45;
    }
  }

  v30 = 0;
LABEL_45:

  return v30;
}

- (BOOL)_startBackupForNextAvailableAccountWithRequest:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (![v4 activityType])
  {
    __assert_rtn("[MBBackupScheduler _startBackupForNextAvailableAccountWithRequest:]", "MBBackupScheduler.m", 774, "request.activityType != MBBackupXPCActivityTypeNone");
  }

  v5 = [(MBBackupScheduler *)self accountsToBackup];

  if (!v5)
  {
    v6 = [(MBBackupScheduler *)self accounts];
    v7 = [v6 mutableCopy];
    [(MBBackupScheduler *)self setAccountsToBackup:v7];
  }

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(MBBackupScheduler *)self accountsToBackup];
    v10 = [v9 count];
    v11 = [(MBBackupScheduler *)self accountsToBackup];
    *buf = 134218242;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=scheduler= Found %lu accounts to back up: %@", buf, 0x16u);

    v12 = [(MBBackupScheduler *)self accountsToBackup];
    v13 = [v12 count];
    [(MBBackupScheduler *)self accountsToBackup];
    v33 = v32 = v13;
    _MBLog();
  }

  do
  {

    v14 = [(MBBackupScheduler *)self accountsToBackup];
    v15 = [v14 count];

    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = [(MBBackupScheduler *)self accountsToBackup];
    v8 = [v16 popFirstObject];
  }

  while (!-[MBBackupScheduler _shouldStartBackupWithAccount:reason:](self, "_shouldStartBackupWithAccount:reason:", v8, [v4 reason]));
  if (v8)
  {
    if ([v4 reason] == 4)
    {
      v17 = [(MBBackupScheduler *)self _lastPendingSnapshotSizeForAccount:v8];
      +[MBCKManager inexpensiveCellularBalance];
      v19 = v18;
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v19;
        *&buf[12] = 2048;
        *&buf[14] = v17;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=scheduler= Fetched the inexpensive cellular balance (start): %.2f, lastPendingSnapshotSize:%llu", buf, 0x16u);
        v33 = v17;
        v32 = v19;
        _MBLog();
      }
    }

    v21 = [(MBBackupScheduler *)self activityCoordinator:v32];
    v22 = [v21 xpcActivityForBackupActivity:{objc_msgSend(v4, "activityType")}];

    if (v22)
    {
      if (xpc_activity_should_defer(v22))
      {
        v23 = MBGetDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v4 activityType];
          *buf = 67109378;
          *&buf[4] = v24;
          *&buf[8] = 2114;
          *&buf[10] = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "=scheduler= Ignoring backup start request since the XPC activity (%d) needs to be deferred: %{public}@", buf, 0x12u);
          [v4 activityType];
          _MBLog();
        }

        v25 = 0;
LABEL_30:

        goto LABEL_21;
      }
    }

    else if (([objc_opt_class() backupOnWiFiWithDAS] & 1) != 0 || objc_msgSend(v4, "activityType") != 2)
    {
      __assert_rtn("[MBBackupScheduler _startBackupForNextAvailableAccountWithRequest:]", "MBBackupScheduler.m", 802, "xpcActivity || (![self.class backupOnWiFiWithDAS] && request.activityType == MBBackupXPCActivityTypeWiFi)");
    }

    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=scheduler= Starting automatic backup for %@ ", buf, 0xCu);
      _MBLog();
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v40 = 0;
    v28 = [v8 persona];
    v29 = [v28 personaIdentifier];

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1001D7178;
    v34[3] = &unk_1003C1290;
    v38 = buf;
    v34[4] = self;
    v35 = v4;
    v36 = v22;
    v30 = v8;
    v37 = v30;
    v31 = [DMCPersonaHelper performBlockUnderPersona:v29 block:v34];
    if (*(*&buf[8] + 24) == 1)
    {
      [(MBBackupScheduler *)self _refreshRetryAfterDateForAccount:v30 softCancelled:0];
      v25 = *(*&buf[8] + 24);
    }

    else
    {
      v25 = 0;
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_30;
  }

LABEL_18:
  [(MBBackupScheduler *)self setAccountsToBackup:0, v32, v33];
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=scheduler= No accounts left to back up", buf, 2u);
    _MBLog();
  }

  v25 = 0;
LABEL_21:

  return v25 & 1;
}

- (int64_t)_determineInternalNotificationActionForErrors:(id)a3 dateOfLastUnlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSDate now];
  v8 = [v5 count];
  if (v8 < 1)
  {
    v9 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 1;
    goto LABEL_37;
  }

  v32 = v6;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v9 = 0;
  v10 = v8 + 1;
  v11 = 0.0;
  while (1)
  {
    v12 = [v5 objectAtIndexedSubscript:v10 - 2];
    v13 = [v12 userInfo];
    v14 = [v13 objectForKeyedSubscript:@"kMBErrorDateKey"];

    if (v14)
    {
      break;
    }

LABEL_10:

    if (--v10 <= 1)
    {
      goto LABEL_34;
    }
  }

  [v7 timeIntervalSinceDate:v14];
  v11 = v15;
  v16 = [v12 userInfo];
  v17 = [v16 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (v11 <= 432000.0)
  {
    if (([MBError isError:v12 withCode:0]& 1) != 0)
    {
      goto LABEL_47;
    }

    if (([MBError isError:v12 withCodes:17, 303, 308, 218, 219, 223, 300, 0]& 1) == 0 && ![MBError isCKError:v12 withCode:25]&& (![MBError isError:v12 withCode:202]|| ([MBError isError:v17 withCode:218]& 1) == 0 && ([MBError isError:v17 withCode:219]& 1) == 0 && ([MBError isError:v17 withCode:222]& 1) == 0 && ([MBError isError:v17 withCode:220]& 1) == 0 && ([MBError isError:v17 withCode:223]& 1) == 0))
    {
      if (![MBError isError:v12 withCode:209])
      {
        v30 = v7;
        v18 = 0;
        goto LABEL_25;
      }

      if (v32)
      {
        [v14 timeIntervalSinceDate:?];
        if (v19 <= 0.0)
        {
          if (!v9 || ([v9 timeIntervalSinceDate:v14], v20 >= 28800.0))
          {
            v30 = v7;
            v18 = v14;
LABEL_25:

            v21 = v33;
            v22 = v34;
            if (v11 > 86400.0)
            {
              v21 = v33 + 1;
            }

            else
            {
              v22 = v34 + 1;
            }

            v33 = v21;
            v34 = v22;
            if ([MBError isError:v12 withCode:203])
            {
              if (!((v22 + v21 == 1) | v31 & 1))
              {
                v9 = v18;
                v7 = v30;
LABEL_47:

                v27 = 0;
                v6 = v32;
                goto LABEL_45;
              }

              v31 = 1;
            }

            v7 = v30;
            goto LABEL_9;
          }
        }
      }
    }

    v18 = v9;
LABEL_9:

    v9 = v18;
    goto LABEL_10;
  }

LABEL_34:
  v25 = v11 > 432000.0;
  v26 = 1;
  if (v31)
  {
    v26 = 2;
  }

  v6 = v32;
  v24 = v33;
  v23 = v34;
LABEL_37:
  if (v23 <= 0)
  {
    v25 = 0;
  }

  if (v25 && v24 > 3)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = MBGetDefaultLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 134219011;
    v36 = v23;
    v37 = 2048;
    v38 = v24;
    v39 = 2048;
    v40 = 5;
    v41 = 2113;
    v42 = v6;
    v43 = 2048;
    v44 = v27;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "=scheduler= =ttr= Found %lu failures 1 day ago and %lu failures between 1 day and %lu days ago. dateOfLastUnlock:%{private}@ action:%ld", buf, 0x34u);
    _MBLog();
  }

LABEL_45:
  return v27;
}

- (void)_cancelInternalNotification
{
  if (MBIsInternalInstall())
  {
    v3 = [(MBBackupScheduler *)self internalNotificationRef];
    v4 = v3;
    if (v3)
    {
      v5 = CFUserNotificationCancel(v3);
      if (v5)
      {
        v6 = v5;
        v7 = MBGetDefaultLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v9 = v4;
          v10 = 1024;
          v11 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "=scheduler= Failed to cancel internal notification %p (%d)", buf, 0x12u);
          _MBLog();
        }
      }
    }
  }
}

- (id)_descriptionForTTR:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = MBBuildVersion();
  v27 = v6;
  v9 = [v6 dsid];
  [v7 appendFormat:@"Current Build %@ dsid %@\n", v8, v9];

  [v7 appendFormat:@"Last %lld backup attempts:\n", 5];
  v10 = [v5 count];
  if (v10 >= 5)
  {
    v11 = v10 - 5;
  }

  else
  {
    v11 = 0;
  }

  if (v10 > v11)
  {
    v12 = v10;
    do
    {
      v13 = [v5 objectAtIndexedSubscript:--v12];
      v14 = [v13 userInfo];
      v15 = [v14 objectForKeyedSubscript:@"kMBErrorDateKey"];

      v16 = [v13 userInfo];
      v17 = [v16 objectForKeyedSubscript:@"BuildVersion"];
      v18 = v17;
      v19 = @"unknown";
      if (v17)
      {
        v19 = v17;
      }

      v20 = v19;

      v21 = [v13 domain];
      v22 = [v13 code];
      v23 = [v13 localizedDescription];
      [v7 appendFormat:@"date:%@ build:%@ error:%@/%ld %@\n", v15, v20, v21, v22, v23];
    }

    while (v12 > v11);
  }

  v24 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v25 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v24];

  return v25;
}

- (void)_triggerInternalNotificationWithAccount:(id)a3
{
  v4 = a3;
  if (MBIsInternalInstall())
  {
    dispatch_assert_queue_V2(self->_followUpQueue);
    v5 = [(MBCKManager *)self->_serviceManager backupStateInfoForInitialMegaBackup:0 account:v4];
    v6 = [v5 errors];
    v7 = [(MBBackupScheduler *)self dateOfLastUnlockSeenByDaemon];
    v8 = [(MBBackupScheduler *)self _determineInternalNotificationActionForErrors:v6 dateOfLastUnlock:v7];

    if (v8)
    {
      v9 = +[NSDate now];
      v10 = [v4 persona];
      v11 = [v10 copyPreferencesValueForKey:@"AccountEnabledDate" class:objc_opt_class()];

      if (v11)
      {
        [v9 timeIntervalSinceDate:v11];
        if (v12 >= 432000.0)
        {
          v13 = [v4 persona];
          v14 = [v13 copyPreferencesValueForKey:@"UserNotificationEvents" class:objc_opt_class()];

          v15 = [v14 objectForKeyedSubscript:@"LastTTRDateForConsecutiveBackupFailures"];
          if (!v15 || ([v9 timeIntervalSinceDate:v15], v16 >= 172800.0))
          {
            if (v14)
            {
              v17 = [v14 mutableCopy];
            }

            else
            {
              v17 = objc_opt_new();
            }

            v18 = v17;
            [v17 setObject:v9 forKeyedSubscript:@"LastTTRDateForConsecutiveBackupFailures"];
            v19 = [v4 persona];
            [v19 setPreferencesValue:v18 forKey:@"UserNotificationEvents"];

            v20 = [(MBBackupScheduler *)self internalNotificationRef];
            if (v20)
            {
              v21 = MBGetDefaultLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                v27 = v20;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "=scheduler= =ttr= Not posting internal notification, %p is in-flight", buf, 0xCu);
                _MBLog();
              }
            }

            else
            {
              [(MBBackupScheduler *)self _holdWorkAssertion];
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_1001D7C98;
              block[3] = &unk_1003BD8C8;
              v25 = v8;
              block[4] = self;
              v23 = v4;
              v24 = v5;
              dispatch_async(&_dispatch_main_q, block);
            }
          }
        }
      }
    }
  }
}

- (BOOL)_isBackupAllowed
{
  v2 = +[MBManagedPolicy sharedPolicy];
  v3 = [v2 checkIfCloudBackupIsAllowed:0];

  if ((v3 & 1) == 0)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "=scheduler= Backup is disabled by the current MC policy - not checking for an overdue backup", v6, 2u);
      _MBLog();
    }
  }

  return v3;
}

- (void)_onQueue_warnUserOfLateBackupWithAccount:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBBackupScheduler _onQueue_warnUserOfLateBackupWithAccount:]", "MBBackupScheduler.m", 1040, "account");
  }

  v5 = v4;
  dispatch_assert_queue_V2(self->_followUpQueue);
  if (![(MBCKManager *)self->_serviceManager isRestoringAccount:v5]&& (BYSetupAssistantNeedsToRun() & 1) == 0 && [(MBBackupScheduler *)self _isBackupAllowed])
  {
    v6 = +[NSDate now];
    v7 = [MBCKManager restoreInfoForAccount:v5];
    v8 = [v7 date];

    v9 = +[NSFileManager defaultManager];
    v69 = 0;
    v10 = [v9 attributesOfItemAtPath:@"/private/var" error:&v69];
    v11 = v69;

    v67 = v10;
    if (v10)
    {
      v12 = [v10 objectForKeyedSubscript:NSFileCreationDate];
      v13 = v8;
      if (v13)
      {
        v14 = v13;
        if (v12)
        {
          v15 = [v13 laterDate:v12];

          v16 = 0;
          v14 = v15;
          goto LABEL_15;
        }

LABEL_13:
        v16 = 0;
LABEL_16:
        [v6 timeIntervalSinceDate:{v14, v56, v58}];
        if (v19 > 604800.0)
        {
          [(MBBackupScheduler *)self _triggerInternalNotificationWithAccount:v5];
        }

LABEL_18:
        v68 = v11;
        v20 = [(MBBackupScheduler *)self dateOfLastBackupWithAccount:v5 connection:0 error:&v68, v56];
        v21 = v68;

        if (!v20 && v21)
        {
          goto LABEL_49;
        }

        v22 = v20;

        v14 = v22;
        v65 = v21;
        v66 = v6;
        if (!v20)
        {
          v23 = [v5 persona];
          v24 = [v23 copyPreferencesValueForKey:@"AccountEnabledDate" class:objc_opt_class()];

          if (!v24)
          {
            v21 = v65;
            v6 = v66;
            if (![v5 isEnabled])
            {
              v14 = 0;
              goto LABEL_49;
            }

            v55 = [v5 persona];
            [v55 setPreferencesValue:v66 forKey:@"AccountEnabledDate"];
            v14 = 0;
            goto LABEL_48;
          }

          v14 = v24;
          v25 = MBGetDefaultLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = MBStringWithDate();
            *buf = 138543362;
            v73 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "=scheduler= Using the account enabled date a reference, referenceDate:%{public}@", buf, 0xCu);

            v57 = MBStringWithDate();
            _MBLog();
          }

          v6 = v66;
        }

        if ((v16 & 1) == 0)
        {
          v27 = MBGetDefaultLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v28 = MBStringWithDate();
            v29 = MBStringWithDate();
            *buf = 138543618;
            v73 = v28;
            v74 = 2114;
            v75 = v29;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "=scheduler= Using the foreground restore end date as a reference, fgRestoreEndDate:%{public}@, referenceDate:%{public}@", buf, 0x16u);

            v30 = MBStringWithDate();
            MBStringWithDate();
            v58 = v57 = v30;
            _MBLog();

            v6 = v66;
          }

          v31 = [v14 laterDate:v8];

          v14 = v31;
          if (!v31)
          {
            __assert_rtn("[MBBackupScheduler _onQueue_warnUserOfLateBackupWithAccount:]", "MBBackupScheduler.m", 1096, "referenceDate");
          }
        }

        if (v12)
        {
          v32 = MBGetDefaultLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v33 = MBStringWithDate();
            v34 = MBStringWithDate();
            *buf = 138543874;
            v73 = @"/private/var";
            v74 = 2114;
            v75 = v33;
            v76 = 2114;
            v77 = v34;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "=scheduler= Using the %{public}@ creation date as a reference, creationDate:%{public}@, referenceDate:%{public}@", buf, 0x20u);

            v35 = MBStringWithDate();
            MBStringWithDate();
            v59 = v58 = v35;
            v57 = @"/private/var";
            _MBLog();

            v6 = v66;
          }

          v36 = [v14 laterDate:v12];

          v14 = v36;
          if (!v36)
          {
            __assert_rtn("[MBBackupScheduler _onQueue_warnUserOfLateBackupWithAccount:]", "MBBackupScheduler.m", 1102, "referenceDate");
          }
        }

        [v6 timeIntervalSinceDate:{v14, v57, v58, v59}];
        v38 = v37;
        v39 = MBGetDefaultLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = MBStringWithDate();
          v41 = MBStringWithDate();
          *buf = 134218498;
          v73 = *&v38;
          v74 = 2114;
          v75 = v40;
          v76 = 2114;
          v77 = v41;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "=scheduler= drySpellDuration:%.3fs, referenceDate:%{public}@, lastBackupDate:%{public}@", buf, 0x20u);

          v42 = MBStringWithDate();
          v60 = MBStringWithDate();
          _MBLog();

          v6 = v66;
        }

        self->_initialBackupWarningPeriod = sub_1001D8C1C(v5, @"InitialBackupPeriod", 604800.0, 1209600.0);
        initialBackupWarningPeriod = sub_1001D8C1C(v5, @"BackupWarningPeriod", 604800.0, 1209600.0);
        self->_backupWarningPeriod = initialBackupWarningPeriod;
        if (!v20)
        {
          initialBackupWarningPeriod = self->_initialBackupWarningPeriod;
        }

        if (v38 < initialBackupWarningPeriod)
        {
          v21 = v65;
LABEL_49:

          goto LABEL_50;
        }

        v44 = MBGetDefaultLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "=scheduler= Warning the user an iCloud backup is overdue", buf, 2u);
          _MBLog();
        }

        v45 = +[MBFollowUpManager sharedManager];
        v46 = [v45 postFollowUpForDrySpellForAccount:v5 duration:v20 == 0 firstBackup:v38];

        if (v46)
        {
          v64 = v8;
          v47 = [NSMutableDictionary alloc];
          v63 = v46;
          v71[0] = v46;
          v70[0] = @"drySpellType";
          v70[1] = @"lastBackup";
          v62 = +[NSDateFormatter ISO8601Formatter];
          v61 = [v62 stringFromDate:v14];
          v71[1] = v61;
          v70[2] = @"duration";
          v48 = [NSString stringWithFormat:@"%.3f", *&v38];
          v71[2] = v48;
          v70[3] = @"notified";
          v49 = +[NSDateFormatter ISO8601Formatter];
          v50 = [v49 stringFromDate:v66];
          v71[3] = v50;
          v51 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:4];
          v52 = [v47 initWithDictionary:v51];

          v53 = [MBBackupScheduler lastOnConditionEventsForAccount:v5];
          if ([v53 count])
          {
            v54 = [v53 lastObject];
            [v52 setValue:v54 forKey:@"lastOnConditionEvent"];
          }

          [MBCKStatusReporter reportStatusForAccount:v5 manager:self->_serviceManager key:@"BackupDrySpell" values:v52];

          v21 = v65;
          v6 = v66;
          v55 = v63;
          v8 = v64;
        }

        else
        {
          v55 = 0;
          v21 = v65;
          v6 = v66;
        }

LABEL_48:

        goto LABEL_49;
      }
    }

    else
    {
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v73 = @"/private/var";
        v74 = 2112;
        v75 = v11;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=scheduler= Failed to fetch the attributes for %{public}@: %@", buf, 0x16u);
        v56 = @"/private/var";
        v58 = v11;
        _MBLog();
      }

      v18 = v8;
      v12 = 0;
      if (v18)
      {
        v14 = v18;
        goto LABEL_13;
      }
    }

    v12 = v12;
    v16 = 1;
    v14 = v12;
LABEL_15:
    if (!v14)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_50:
}

- (void)_warnUserOfLateBackupWithAccount:(id)a3
{
  v4 = a3;
  followUpQueue = self->_followUpQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D8FC8;
  v7[3] = &unk_1003BC060;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(followUpQueue, v7);
}

- (void)_onQueue_warnUserOfDelayedRestoreWithAccount:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBBackupScheduler _onQueue_warnUserOfDelayedRestoreWithAccount:]", "MBBackupScheduler.m", 1151, "account");
  }

  v5 = v4;
  dispatch_assert_queue_V2(self->_followUpQueue);
  if (([v5 isEnabledForBackup] & 1) == 0)
  {
    v7 = MBGetDefaultLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_15:

      goto LABEL_16;
    }

    v20 = [v5 accountIdentifier];
    *buf = 138543362;
    v26 = v20;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=scheduler= The account %{public}@ is not enabled for backup", buf, 0xCu);

    v8 = [v5 accountIdentifier];
    _MBLog();
LABEL_14:

    goto LABEL_15;
  }

  if ([(MBCKManager *)self->_serviceManager isBackgroundRestoringAccount:v5]&& (BYSetupAssistantNeedsToRun() & 1) == 0 && [(MBBackupScheduler *)self _isBackupAllowed])
  {
    v6 = [MBCKManager restoreInfoForAccount:v5];
    v7 = [v6 date];

    if (v7)
    {
      v8 = +[NSDate now];
      [v8 timeIntervalSinceDate:v7];
      v10 = v9;
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = MBStringWithDate();
        *buf = 134218242;
        v26 = v10;
        v27 = 2114;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=scheduler= Warning the user an iCloud backup is overdue, drySpellDuration:%.3fs, fgRestoreEndDate:%{public}@", buf, 0x16u);

        v21 = MBStringWithDate();
        _MBLog();
      }

      v13 = +[MBFollowUpManager sharedManager];
      v14 = [v13 postFollowUpForRestoreTimeoutForAccount:v5];

      if (v14)
      {
        v23[0] = @"drySpellType";
        v23[1] = @"restoring";
        v24[0] = v14;
        v24[1] = @"YES";
        v23[2] = @"fgRestoreEndDate";
        v22 = +[NSDateFormatter ISO8601Formatter];
        v15 = [v22 stringFromDate:v7];
        v24[2] = v15;
        v23[3] = @"duration";
        v16 = [NSString stringWithFormat:@"%.3f", v10];
        v24[3] = v16;
        v23[4] = @"notified";
        v17 = +[NSDateFormatter ISO8601Formatter];
        v18 = [v17 stringFromDate:v8];
        v24[4] = v18;
        v19 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:5];

        [MBCKStatusReporter reportStatusForAccount:v5 manager:self->_serviceManager key:@"BackupDrySpell" values:v19];
      }
    }

    else
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=scheduler= nil foreground restore end date", buf, 2u);
        _MBLog();
      }

      v7 = 0;
    }

    goto LABEL_14;
  }

LABEL_16:
}

- (void)warnUserOfDelayedRestoreWithAccount:(id)a3
{
  v4 = a3;
  followUpQueue = self->_followUpQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D9510;
  v7[3] = &unk_1003BC060;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(followUpQueue, v7);
}

- (void)_managerDidFinishBackupWithAccount:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBBackupScheduler _managerDidFinishBackupWithAccount:]", "MBBackupScheduler.m", 1199, "account");
  }

  v5 = v4;
  dispatch_assert_queue_V2(self->_stateQueue);
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 accountIdentifier];
    *buf = 138543362;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "=scheduler= Scheduler received backup completion notification for account %{public}@", buf, 0xCu);

    v11 = [v5 accountIdentifier];
    _MBLog();
  }

  [(MBBackupScheduler *)self _clearAllFailureCountsForAccount:v5];
  [(MBBackupScheduler *)self _clearAllRetryAfterDatesForAccount:v5];
  [(MBBackupScheduler *)self _clearLastPendingSnapshotSizeForAccount:v5];
  [(MBBackupScheduler *)self _clearDateOfLastPasscodeChange];
  [(MBBackupScheduler *)self clearNilBackupDateFetchDateForAccount:v5];
  v8 = +[MBFollowUpManager sharedManager];
  [v8 clearPendingFollowUpsWithAccount:v5 identifiers:&off_1003E2408];

  v9 = [(MBBackupScheduler *)self initiatedBackupRequest];
  if (!v9 || ![(MBBackupScheduler *)self _startBackupForNextAvailableAccountWithRequest:v9])
  {
    v10 = [(MBBackupScheduler *)self activityCoordinator];
    [v10 finishBackupActivity:{objc_msgSend(v9, "activityType")}];

    [(MBBackupScheduler *)self setInitiatedBackupRequest:0];
    [(MBBackupScheduler *)self _cancelInternalNotification];
    [(MBBackupScheduler *)self _tearDownScheduledBackupWithActivityType:2];
    [(MBBackupScheduler *)self _tearDownScheduledBackupWithActivityType:1];
    [(MBBackupScheduler *)self _tearDownScheduledBackupWithActivityType:3];
    [(MBBackupScheduler *)self _scheduleNextBackup];
    [(MBBackupScheduler *)self setAccountsToBackup:0];
  }
}

- (void)_managerDidFailBackupWithAccount:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBBackupScheduler _managerDidFailBackupWithAccount:error:]", "MBBackupScheduler.m", 1232, "account");
  }

  v8 = v7;
  dispatch_assert_queue_V2(self->_stateQueue);
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 accountIdentifier];
    *buf = 138543618;
    v37 = v10;
    v38 = 2112;
    *v39 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=scheduler= Scheduler received backup failure notification for account %{public}@: %@", buf, 0x16u);

    [v6 accountIdentifier];
    v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v30 = v8;
    _MBLog();
  }

  v11 = [(MBBackupScheduler *)self initiatedBackupRequest];
  v12 = [MBError isCancelledError:v8];
  if (v11 && [MBError isCancelledXPCActivityDeferredError:v8])
  {
    v13 = [(MBBackupScheduler *)self conditions];
    v14 = 0;
    if ((~*&v13 & 0x10000010100) == 0)
    {
      v15 = v13;
      if (v13.var0)
      {
        +[MBCKManager inexpensiveCellularBalance];
        v17 = v16;
        if (v16 <= 0.0)
        {
          v14 = 1;
        }

        else
        {
          v14 = HIWORD(*&v15) & 1;
        }

        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = (*&v15 & 0x1000000000000) >> 48;
          *buf = 134218496;
          v37 = *&v17;
          v38 = 1024;
          *v39 = v14;
          *&v39[4] = 1024;
          *&v39[6] = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=scheduler= Fetched the inexpensive cellular balance (deferred): %.2f, lowCellularBudget:%d, isOnExpensiveCellular:%d", buf, 0x18u);
          v30 = v14;
          v32 = v19;
          v29 = v17;
          _MBLog();
        }

        if (!(v12 & 1 | ((v14 & 1) == 0)))
        {
          __assert_rtn("[MBBackupScheduler _managerDidFailBackupWithAccount:error:]", "MBBackupScheduler.m", 1252, "!lowCellularBudget || canceled");
        }
      }
    }
  }

  else
  {
    v14 = 0;
  }

  [(MBBackupScheduler *)self _updateFailureCountsForAccount:v6 lastBackupError:v8 canceled:v12 lowCellularBudget:v14, *&v29, v30, v32];
  if (v12)
  {
    [(MBBackupScheduler *)self _clearAllRetryAfterDatesForAccount:v6];
    [(MBBackupScheduler *)self _refreshRetryAfterDateForAccount:v6 softCancelled:1];
  }

  v35 = 0;
  v20 = [MBError isRetryAfterError:v8 retryAfterDate:&v35];
  v21 = v35;
  v22 = v21;
  if (!v20)
  {
    v24 = v21;
    if (!v11)
    {
      goto LABEL_25;
    }

LABEL_24:
    followUpQueue = self->_followUpQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001D9C14;
    block[3] = &unk_1003BC060;
    block[4] = self;
    v34 = v6;
    dispatch_async(followUpQueue, block);

    v28 = [(MBBackupScheduler *)self activityCoordinator];
    [v28 finishBackupActivity:{objc_msgSend(v11, "activityType")}];

    [(MBBackupScheduler *)self setInitiatedBackupRequest:0];
    [(MBBackupScheduler *)self _tearDownScheduledBackupWithActivityType:2];
    [(MBBackupScheduler *)self _tearDownScheduledBackupWithActivityType:1];
    [(MBBackupScheduler *)self _tearDownScheduledBackupWithActivityType:3];
    [(MBBackupScheduler *)self _scheduleNextBackup];
    [(MBBackupScheduler *)self setAccountsToBackup:0];
    goto LABEL_25;
  }

  v23 = [NSDate dateWithTimeIntervalSinceNow:604800.0];
  v24 = [v22 earlierDate:v23];

  v25 = MBGetDefaultLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v6 accountIdentifier];
    *buf = 138543874;
    v37 = @"RetryAfter";
    v38 = 2114;
    *v39 = v26;
    *&v39[8] = 2114;
    v40 = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "=scheduler= Updating %{public}@ based on server response for account %{public}@: %{public}@", buf, 0x20u);

    v31 = [v6 accountIdentifier];
    _MBLog();
  }

  [(MBBackupScheduler *)self _updateRetryAfterDate:v24 forKey:@"RetryAfter" account:v6];
  if (v11)
  {
    goto LABEL_24;
  }

LABEL_25:
}

- (id)_fetchAccountsAndIsEnabled:(BOOL *)a3 isBackupOnCellularEnabled:(BOOL *)a4
{
  v4 = +[MBManagedPolicy sharedPolicy];
  v5 = [v4 checkIfCloudBackupIsAllowed:0];

  v32 = v5;
  if ((v5 & 1) == 0)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "=scheduler= Backup is disabled by the current MC policy", buf, 2u);
      _MBLog();
    }
  }

  v35 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = +[MBServiceAccount allServiceAccounts];
  v7 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v39;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        v14 = [v13 isEnabled];
        v37 = 0;
        v15 = [v13 persona];
        v16 = [v15 getBooleanValueForKey:@"EnableBackupScheduling" keyExists:&v37];

        if (v16)
        {
          v17 = 1;
        }

        else
        {
          v17 = v37 == 0;
        }

        if (v17 && (v14 & 1) != 0)
        {
          [v35 addObject:v13];
          v18 = [v13 persona];
          v19 = [v18 personaIdentifier];

          v20 = [v13 isBackupOnCellularEnabled];
          v21 = MBGetDefaultLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v13 accountIdentifier];
            v23 = [v13 isPrimaryAccount];
            *buf = 138413314;
            v43 = v22;
            v44 = 2112;
            v45 = v19;
            v46 = 1024;
            v47 = v23;
            v48 = 1024;
            v49 = 1;
            v50 = 1024;
            v51 = v20 & 1;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=scheduler= Fetched account:(%@/%@), primary:%d, isEnabledForBackup:%d, isBackupOnCellularEnabled:%d", buf, 0x28u);

            v24 = [v13 accountIdentifier];
            v30 = 1;
            v31 = v20 & 1;
            v28 = v19;
            v29 = [v13 isPrimaryAccount];
            v27 = v24;
            _MBLog();
          }

          v9 |= v20;

          v10 = 1;
        }

        else
        {
          v19 = MBGetDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v43 = v13;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=scheduler= Auto backup is not enabled for %@", buf, 0xCu);
            v27 = v13;
            _MBLog();
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  *a3 = v32 & v10;
  *a4 = v10 & v9 & 1;
  v25 = [v35 copy];

  return v25;
}

- (void)accountChanged
{
  v3 = os_transaction_create();
  stateQueue = self->_stateQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001DA0A0;
  v6[3] = &unk_1003BC060;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(stateQueue, v6);
}

- (void)passcodeChanged
{
  if (_os_feature_enabled_impl())
  {
    v3 = os_transaction_create();
    v4 = +[NSDate now];
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001DA3C0;
    block[3] = &unk_1003BC2E0;
    block[4] = self;
    v9 = v4;
    v10 = v3;
    v6 = v3;
    v7 = v4;
    dispatch_async(stateQueue, block);
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=scheduler= Ignoring passcode changed notification", buf, 2u);
      _MBLog();
    }
  }
}

- (void)_clearDateOfLastPasscodeChange
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "=scheduler= Clearing date of last passcode change", v5, 2u);
    _MBLog();
  }

  [MBPersona setPersonalPreferencesValue:0 forKey:@"DateOfLastPasscodeChange"];
  dateOfLastPasscodeChange = self->_dateOfLastPasscodeChange;
  self->_dateOfLastPasscodeChange = 0;
}

- (void)_cancelPowerLossTimer
{
  if (self->_powerLossTimer)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "=scheduler= Canceling the power loss timer", v5, 2u);
      _MBLog();
    }

    dispatch_source_cancel(self->_powerLossTimer);
    powerLossTimer = self->_powerLossTimer;
    self->_powerLossTimer = 0;
  }
}

- (void)_cancelWiFiLossTimer
{
  if (self->_wifiLossTimer)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "=scheduler= Canceling the WiFi loss timer", v5, 2u);
      _MBLog();
    }

    dispatch_source_cancel(self->_wifiLossTimer);
    wifiLossTimer = self->_wifiLossTimer;
    self->_wifiLossTimer = 0;
  }
}

- (void)_cancelLossTimers
{
  [(MBBackupScheduler *)self _cancelPowerLossTimer];

  [(MBBackupScheduler *)self _cancelWiFiLossTimer];
}

- (id)_conditionLossTimerWithSeconds:(int64_t)a3 changes:(id)a4
{
  v6 = a4;
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_stateQueue);
  v8 = dispatch_walltime(0, 1000000000 * a3);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001DA740;
  v14[3] = &unk_1003BD8C8;
  v9 = v7;
  v15 = v9;
  v16 = self;
  v17 = v6;
  v18 = a3;
  v10 = v6;
  dispatch_source_set_event_handler(v9, v14);
  v11 = v17;
  v12 = v9;

  return v9;
}

- (void)_updateRetryAfterDateAfterUnlockForAccount:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBBackupScheduler _updateRetryAfterDateAfterUnlockForAccount:]", "MBBackupScheduler.m", 1421, "account");
  }

  v5 = v4;
  v6 = [v4 persona];
  v7 = [v6 copyPreferencesValueForKey:@"MissingEncryptionKeyFailureCount" class:objc_opt_class()];

  if (v7)
  {
    v8 = [v7 unsignedIntegerValue];
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v5 persona];
    v11 = [v10 copyPreferencesValueForKey:@"MissingEncryptionKeyRetryAfter" class:objc_opt_class()];

    [v11 timeIntervalSinceNow];
    if (v11 && (v13 = v12, v12 < 3600.0))
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v5 accountIdentifier];
        v16 = MBStringWithDate();
        *buf = 138544386;
        v22 = @"MissingEncryptionKeyRetryAfter";
        v23 = 2114;
        v24 = v15;
        v25 = 2114;
        v26 = v16;
        v27 = 2048;
        v28 = v13;
        v29 = 2048;
        v30 = v9;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=scheduler= Not updating %{public}@ for account %{public}@: %{public}@ (%.3f, %lu)", buf, 0x34u);

        v17 = [v5 accountIdentifier];
        v20 = MBStringWithDate();
        _MBLog();
      }
    }

    else
    {
      v18 = 3;
      if (v9 < 3)
      {
        v18 = v9;
      }

      v19 = [NSDate dateWithTimeIntervalSinceNow:dbl_1002BA0E8[v18 - 1] + (drand48() + -0.5) * floor(dbl_1002BA0E8[v18 - 1] * 0.25)];

      [(MBBackupScheduler *)self _updateRetryAfterDate:v19 forKey:@"MissingEncryptionKeyRetryAfter" account:v5 ignoreExistingDate:1];
      v11 = v19;
    }
  }
}

- (void)_stateDidChange:(id)a3 conditions:(id)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  v122 = *&a4.var0 & 0x1000000;
  v7 = [(NSMutableDictionary *)self->_osTransactionsByActivityType objectForKeyedSubscript:&off_1003E0FA8];

  v8 = [(MBBackupScheduler *)self initiatedBackupRequest];
  v117 = [v8 activityType];

  v124 = a4;
  if ((*&a4.var0 & 0x10000) != 0)
  {
    [(MBBackupScheduler *)self _cancelPowerLossTimer];
  }

  if ((*&a4.var0 & 0x1000000) != 0)
  {
    [(MBBackupScheduler *)self _cancelWiFiLossTimer];
  }

  v123 = v6;
  if ((~*&a4 & 0x101010100000000) != 0)
  {
    v136 = (~*&a4 & 0x100010100000000) == 0;
  }

  else
  {
    v136 = [(MBBackupScheduler *)self allowBackupOnExpensiveCellular];
  }

  v121 = *&a4.var0 & 0x10000;
  v119 = *&a4.var0 & 0x100;
  v118 = [(NSDate *)self->_dateOfLastPasscodeChange isWithinDefaultBackupPeriod];
  allowBackupOnBattery = self->_allowBackupOnBattery;
  v128 = self;
  v9 = [(MBCKManager *)self->_serviceManager serviceStates];
  v10 = objc_opt_new();
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v147 objects:buf count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v148;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v148 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v147 + 1) + 8 * i);
        if (([&off_1003E0FD8 isEqualToNumber:v16] & 1) == 0)
        {
          if ([v10 length])
          {
            [v10 appendString:{@", "}];
          }

          v17 = [v16 intValue] - 1;
          v18 = @"idle";
          if (v17 <= 5)
          {
            v18 = off_1003C1348[v17];
          }

          [v10 appendString:v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v147 objects:buf count:16];
    }

    while (v13);
  }

  v115 = *&a4 & 0x10000000000;
  v116 = *&a4 & 0x1000000000000;
  v113 = *&a4 & &_mh_execute_header;
  v114 = *&a4 & 0x100000000000000;

  if ([v10 length])
  {
    v19 = v10;
  }

  else
  {
    v19 = 0;
  }

  v120 = v19;

  v20 = v123;
  v21 = v128;
  if ((v119 == 0) | (*&v124.var0 ^ 1) & 1 || !((allowBackupOnBattery | v118) & 1 | (v121 != 0)))
  {
LABEL_28:
    if (v119 != 0 && v124.var0 && v121 != 0)
    {
      if (v122)
      {
        v22 = 0.0;
        if ((*&v124 & 0x10100000000) != &_mh_execute_header)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_43;
  }

  if (v122)
  {
    if (v120)
    {
      goto LABEL_28;
    }

LABEL_36:
    if (v123)
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67111682;
        *v154 = 1;
        *&v154[4] = 1024;
        *&v154[6] = 1;
        *v155 = 1024;
        *&v155[2] = (*&v124.var0 & 0x10000u) >> 16;
        *v156 = 1024;
        *&v156[2] = v122 >> 24;
        *v157 = 1024;
        *&v157[2] = v115 >> 40;
        *v158 = 1024;
        *&v158[2] = HIWORD(v116);
        *v159 = 1024;
        *&v159[2] = HIDWORD(v113);
        *v160 = 1024;
        *&v160[2] = HIBYTE(v114);
        *v161 = 1024;
        *&v161[2] = v118 & 1;
        *v162 = 2112;
        *&v162[2] = v120;
        v163 = 2114;
        v164 = v123;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=scheduler= [On condition] state changed, enabled:%d, locked:%d, onPower:%d, onWiFi:%d, onCellular:%d(%d), autoBackupOnCellularEnabled:%d, autoBackupOnCellularAllowedByProvider:%d, passcodeChanged:%d, managerStates:%@, changes:%{public}@", buf, 0x4Cu);
        v110 = v120;
        v111 = v123;
        v108 = HIBYTE(v114);
        v109 = v118 & 1;
        v21 = v128;
        v106 = HIWORD(v116);
        v107 = HIDWORD(v113);
        v104 = v122 >> 24;
        v105 = v115 >> 40;
        v102 = 1;
        v103 = v121 >> 16;
        var0 = 1;
        _MBLog();
      }
    }

    v25 = [NSDate now:var0];
    v26 = MBGetChargingType();
    v27 = [(MBBackupScheduler *)v21 _scheduleBackupOnWiFi:v122 != 0 onCellular:v136 onBattery:(allowBackupOnBattery | v118) & 1];
    if (v123)
    {
      v28 = v27;
      [(MBBackupScheduler *)v21 setLastOnConditionDate:v25];
      [(MBBackupScheduler *)v21 setNextBackupDelta:v28];
      [(MBBackupScheduler *)v21 setLastOnConditionChargingType:v26];
    }

    v20 = v123;
    goto LABEL_78;
  }

  if (v120)
  {
    v23 = 0;
  }

  else
  {
    v23 = v136;
  }

  if (v23)
  {
    goto LABEL_36;
  }

LABEL_43:
  v29 = [(MBBackupScheduler *)v128 lastOnConditionDate];

  if (v29)
  {
    v30 = +[NSDate now];
    v31 = [(MBBackupScheduler *)v128 lastOnConditionDate];
    v130 = v30;
    [v30 timeIntervalSinceDate:v31];
    v22 = v32;

    if (v22 <= 60.0)
    {
      v62 = [(MBBackupScheduler *)v128 ignoredLastOnConditionEvent]+ 1;
    }

    else
    {
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      obj = [(MBBackupScheduler *)v128 accounts];
      v129 = [obj countByEnumeratingWithState:&v143 objects:v152 count:16];
      if (v129)
      {
        v127 = v7 != 0;
        v126 = *v144;
        do
        {
          v33 = 0;
          do
          {
            if (*v144 != v126)
            {
              objc_enumerationMutation(obj);
            }

            v138 = v33;
            v34 = *(*(&v143 + 1) + 8 * v33);
            v35 = [MBBackupScheduler lastOnConditionEventsForAccount:v34];
            v36 = [v35 mutableCopy];
            v37 = v36;
            if (v36)
            {
              v38 = v36;
            }

            else
            {
              v38 = objc_opt_new();
            }

            v39 = v38;

            v40 = [v39 count];
            if (v40 >= 0xA)
            {
              [v39 removeObjectsInRange:{0, v40 - 9}];
            }

            v41 = [(MBBackupScheduler *)v128 _retryAfterDateForAccount:v34];
            v42 = [v34 persona];
            v43 = [v42 copyPreferencesValueForKey:@"FailureCount" class:objc_opt_class()];
            v133 = [v43 unsignedIntegerValue];

            if (v41)
            {
              [v41 timeIntervalSinceDate:v130];
              v45 = v44;
            }

            else
            {
              v45 = 0;
            }

            v46 = [(MBCKManager *)v128->_serviceManager backupStateInfoForInitialMegaBackup:0 account:v34];
            v47 = [v46 errors];
            v48 = [v47 lastObject];

            v49 = [v48 userInfo];
            v50 = [v49 objectForKeyedSubscript:@"kMBErrorDateKey"];

            if (v50)
            {
              [v130 timeIntervalSinceDate:v50];
              v52 = v51;
            }

            else
            {
              v52 = 0;
            }

            v135 = v39;
            v134 = v41;
            v132 = v45;
            v131 = v52;
            if ([MBError isError:v48 withCode:0])
            {

              v48 = 0;
            }

            v53 = [v48 code];
            v54 = [v48 domain];
            v55 = v54;
            v56 = &stru_1003C3430;
            if (v54)
            {
              v56 = v54;
            }

            v57 = v56;

            v58 = +[NSDateFormatter ISO8601Formatter];
            v59 = [(MBBackupScheduler *)v128 lastOnConditionDate];
            v60 = [v58 stringFromDate:v59];
            v61 = [NSString stringWithFormat:@"%@|%.3f|%d|%d|%d|%d|%d|%d|%lld|%lld|%lld|%lu|%@|%ld|%lu|%d|%d|%d|%lld", v60, *&v22, v124.var0, v121 >> 16, v119 >> 8, v122 >> 24, v127, v117 == 2, [(MBBackupScheduler *)v128 nextBackupDelta], v132, v131, v133, v57, v53, [(MBBackupScheduler *)v128 lastOnConditionChargingType], v115 >> 40, HIWORD(v116), HIBYTE(v114), [(MBBackupScheduler *)v128 ignoredLastOnConditionEvent]];

            [v135 addObject:v61];
            [MBBackupScheduler _setLastOnConditionEvents:v135 account:v34];

            v33 = v138 + 1;
          }

          while (v129 != (v138 + 1));
          v129 = [obj countByEnumeratingWithState:&v143 objects:v152 count:16];
        }

        while (v129);
      }

      v62 = 0;
      v20 = v123;
      v21 = v128;
    }

    [(MBBackupScheduler *)v21 setIgnoredLastOnConditionEvent:v62];
    [(MBBackupScheduler *)v21 setLastOnConditionDate:0];
    [(MBBackupScheduler *)v21 setNextBackupDelta:0];
    [(MBBackupScheduler *)v21 setLastOnConditionChargingType:0];
  }

  else
  {
    v22 = 0.0;
  }

LABEL_71:
  if (v20)
  {
    v25 = MBGetDefaultLog();
    v63 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v22 == 0.0)
    {
      if (v63)
      {
        *buf = 67111682;
        *v154 = v124.var0;
        *&v154[4] = 1024;
        *&v154[6] = v119 >> 8;
        *v155 = 1024;
        *&v155[2] = (*&v124.var0 & 0x10000u) >> 16;
        *v156 = 1024;
        *&v156[2] = v122 >> 24;
        *v157 = 1024;
        *&v157[2] = v115 >> 40;
        *v158 = 1024;
        *&v158[2] = HIWORD(v116);
        *v159 = 1024;
        *&v159[2] = HIDWORD(v113);
        *v160 = 1024;
        *&v160[2] = HIBYTE(v114);
        *v161 = 1024;
        *&v161[2] = v118 & 1;
        *v162 = 2112;
        *&v162[2] = v120;
        v163 = 2114;
        v164 = v123;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "=scheduler= [Off condition] state changed, enabled:%d, locked:%d, onPower:%d, onWiFi:%d, onCellular:%d(%d), autoBackupOnCellularEnabled:%d, autoBackupOnCellularAllowedByProvider:%d, passcodeChanged:%d, managerStates:%@, changes:%{public}@", buf, 0x4Cu);
        v110 = v120;
        v111 = v123;
        v108 = HIBYTE(v114);
        v109 = v118 & 1;
        v21 = v128;
        v106 = HIWORD(v116);
        v107 = HIDWORD(v113);
        v104 = v122 >> 24;
        v105 = v115 >> 40;
        v20 = v123;
        v102 = v119 >> 8;
        v103 = v121 >> 16;
        var0 = v124.var0;
        goto LABEL_77;
      }
    }

    else if (v63)
    {
      *buf = 134220802;
      *v154 = v22;
      *&v154[8] = 1024;
      *v155 = v124.var0;
      *&v155[4] = 1024;
      *v156 = v119 >> 8;
      *&v156[4] = 1024;
      *v157 = (*&v124.var0 & 0x10000u) >> 16;
      *&v157[4] = 1024;
      *v158 = v122 >> 24;
      *&v158[4] = 1024;
      *v159 = v115 >> 40;
      *&v159[4] = 1024;
      *v160 = HIWORD(v116);
      *&v160[4] = 1024;
      *v161 = HIDWORD(v113);
      *&v161[4] = 1024;
      *v162 = HIBYTE(v114);
      *&v162[4] = 1024;
      *&v162[6] = v118 & 1;
      v163 = 2112;
      v164 = v120;
      v165 = 2114;
      v166 = v123;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "=scheduler= [Off condition after %.1fs] state changed, enabled:%d, locked:%d, onPower:%d, onWiFi:%d, onCellular:%d(%d), autoBackupOnCellularEnabled:%d, autoBackupOnCellularAllowedByProvider:%d, passcodeChanged:%d, managerStates:%@, changes:%{public}@", buf, 0x56u);
      v111 = v120;
      v112 = v123;
      v109 = HIBYTE(v114);
      v110 = (v118 & 1);
      v21 = v128;
      v107 = HIWORD(v116);
      v108 = HIDWORD(v113);
      v105 = v122 >> 24;
      v106 = v115 >> 40;
      v103 = v119 >> 8;
      v104 = v121 >> 16;
      v20 = v123;
      v102 = v124.var0;
      var0 = *&v22;
LABEL_77:
      _MBLog();
    }

LABEL_78:
  }

  v64 = [(NSMutableDictionary *)v21->_osTransactionsByActivityType objectForKeyedSubscript:&off_1003E0FA8, var0, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112];

  if (!v64 && v117 != 2)
  {
    goto LABEL_92;
  }

  if (v119 != 0 && v124.var0 && v121 == 0 && v122)
  {
    v65 = MBGetDefaultLog();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v154 = 60;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "=scheduler= The device lost power but is otherwise still in condition - will wait %llds before canceling ongoing or scheduled backups", buf, 0xCu);
      v101 = 60;
      _MBLog();
    }

    v66 = [(MBBackupScheduler *)v21 _conditionLossTimerWithSeconds:60 changes:v20];
    powerLossTimer = v21->_powerLossTimer;
    v21->_powerLossTimer = v66;

    v68 = v21->_powerLossTimer;
LABEL_91:
    dispatch_resume(v68);
    goto LABEL_92;
  }

  if (v119 != 0 && v124.var0 && v121 != 0 && !v122)
  {
    v69 = MBGetDefaultLog();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v154 = 120;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "=scheduler= The device lost WiFi but is otherwise still in condition - will wait %llds before canceling ongoing or scheduled backups", buf, 0xCu);
      v101 = 120;
      _MBLog();
    }

    v70 = [(MBBackupScheduler *)v21 _conditionLossTimerWithSeconds:120 changes:v20];
    wifiLossTimer = v21->_wifiLossTimer;
    v21->_wifiLossTimer = v70;

    v68 = v21->_wifiLossTimer;
    goto LABEL_91;
  }

  if (v119 == 0 || !v124.var0 || v121 == 0 || v122 == 0)
  {
    [(MBBackupScheduler *)v21 _cancelBackupWithActivityType:2 changes:v20];
  }

LABEL_92:
  v72 = [(NSMutableDictionary *)v21->_osTransactionsByActivityType objectForKeyedSubscript:&off_1003E0F90, v101];

  v73 = [(MBBackupScheduler *)v21 initiatedBackupRequest];
  v74 = [v73 activityType];

  v75 = v74 != 1 && v72 == 0;
  if (!v75 && (v119 == 0 || !v124.var0 || (~*&v124 & 0x10000010000) != 0))
  {
    [(MBBackupScheduler *)v21 _cancelBackupWithActivityType:1 changes:v123];
  }

  v76 = [(NSMutableDictionary *)v21->_nextBackupDatesByActivityType objectForKeyedSubscript:&off_1003E0FC0];

  v77 = [(MBBackupScheduler *)v21 initiatedBackupRequest];
  v78 = [v77 activityType];

  v79 = v78 != 3 && v76 == 0;
  if (!v79 && (v119 == 0 || !v124.var0 || v122 == 0))
  {
    [(MBBackupScheduler *)v21 _cancelBackupWithActivityType:3 changes:v123];
  }

  if ((~*&v124.var0 & 0x1010100) != 0 && v124.var0)
  {
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v80 = [(MBBackupScheduler *)v21 accounts];
    v81 = [v80 countByEnumeratingWithState:&v139 objects:v151 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v140;
      do
      {
        for (j = 0; j != v82; j = j + 1)
        {
          if (*v140 != v83)
          {
            objc_enumerationMutation(v80);
          }

          [(MBBackupScheduler *)v21 _warnUserOfLateBackupWithAccount:*(*(&v139 + 1) + 8 * j)];
        }

        v82 = [v80 countByEnumeratingWithState:&v139 objects:v151 count:16];
      }

      while (v82);
    }
  }

  v85 = v123;
  if ((*&v124 & 0x10001000000) != 0 && [(MBCKManager *)v21->_serviceManager isBackgroundRestoringAnyAccount])
  {
    v86 = [v123 onWiFi];
    v87 = [v86 BOOLValue];

    if (v87)
    {
      v88 = MBGetDefaultLog();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "=scheduler= Back on WiFi during background restore - retrying app downloads", buf, 2u);
LABEL_132:
        _MBLog();
        goto LABEL_133;
      }

      goto LABEL_133;
    }

    v89 = [v123 onCellular];
    v90 = [v89 BOOLValue];

    if (v90)
    {
      v88 = MBGetDefaultLog();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "=scheduler= Back on cellular during background restore - retrying app downloads", buf, 2u);
        goto LABEL_132;
      }

LABEL_133:

      v95 = [(MBBackupScheduler *)v21 networkPathMonitor];
      v96 = [v95 cellularRadioType];
      v97 = [(MBBackupScheduler *)v21 networkPathMonitor];
      v98 = [v97 backupOnCellularSupport];

      *(&v99 + 1) = v96;
      *&v99 = v116;
      [(MBCKManager *)v21->_serviceManager retryAppDataDownloadsWithNetworkConnectivity:HIDWORD(v115) | (*&v124 >> 24) & 1 | (v99 >> 32), v98];
      v85 = v123;
      goto LABEL_134;
    }

    v91 = [v123 onPower];
    v92 = [v91 BOOLValue];

    if (v92)
    {
      v88 = MBGetDefaultLog();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "=scheduler= Back on external power during background restore - retrying app downloads", buf, 2u);
        goto LABEL_132;
      }

      goto LABEL_133;
    }

    v93 = [v123 locked];

    if (v93)
    {
      v88 = MBGetDefaultLog();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
      {
        if (v119)
        {
          v94 = "locked";
        }

        else
        {
          v94 = "unlocked";
        }

        *buf = 136315138;
        *v154 = v94;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "=scheduler= Device %s - retrying app downloads", buf, 0xCu);
        goto LABEL_132;
      }

      goto LABEL_133;
    }
  }

LABEL_134:
}

- ($3C5213C2FB734B7CA09EF95E8A7A7A2F)conditions
{
  v2 = self;
  objc_sync_enter(v2);
  conditions = v2->_conditions;
  objc_sync_exit(v2);

  return conditions;
}

- (void)_setIsOnPower:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_changedConditions.isOnPower)
  {
    p_isOnPower = &obj->_conditions.isOnPower;
    v5 = obj->_ignorePowerState || a3;
    v6 = v5;
    if (obj->_conditions.isOnPower == v5)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  p_isOnPower = &obj->_conditions.isOnPower;
  isOnPower = obj->_conditions.isOnPower;
  obj->_changedConditions.isOnPower = 1;
  v5 = obj->_ignorePowerState || a3;
  v6 = v5;
  if (isOnPower != v5)
  {
LABEL_5:
    *p_isOnPower = v6;
  }

  if (obj->_changedConditions.isEnabled && obj->_changedConditions.isLocked && obj->_changedConditions.isOnWiFi && obj->_changedConditions.isBackupOnCellularEnabled && obj->_changedConditions.isOnCellular && obj->_changedConditions.isOnExpensiveCellular && obj->_changedConditions.isAutoBackupOnCellularAllowed)
  {
    conditions = obj->_conditions;
    objc_sync_exit(obj);

    v9 = objc_opt_new();
    v10 = [NSNumber numberWithBool:v5];
    [(MBBackupScheduler *)v9 setOnPower:v10];

    [(MBBackupScheduler *)obj _notifyStateChanged:v9 conditions:conditions];
    v11 = v9;
    goto LABEL_15;
  }

LABEL_14:
  objc_sync_exit(obj);
  v11 = obj;
LABEL_15:
}

- (void)_setIsEnabled:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_changedConditions.isEnabled)
  {
    obj->_changedConditions.isEnabled = 1;
  }

  obj->_conditions.isEnabled = a3;
  objc_sync_exit(obj);
}

- (void)_setIsBackupOnCellularEnabled:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_changedConditions.isBackupOnCellularEnabled)
  {
    obj->_changedConditions.isBackupOnCellularEnabled = 1;
  }

  obj->_conditions.isBackupOnCellularEnabled = a3;
  objc_sync_exit(obj);
}

- (void)_notifyStateChanged:(id)a3 conditions:(id)a4
{
  v6 = a3;
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DC89C;
  block[3] = &unk_1003BDB10;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(stateQueue, block);
}

- (id)_lastSnapshotFromCacheWithAccount:(id)a3
{
  v3 = a3;
  v4 = +[MBCKManager sharedInstance];
  v13 = 0;
  v5 = [v4 openCacheWithAccount:v3 accessType:2 error:&v13];

  v6 = v13;
  if (v5)
  {
    v12 = v6;
    v7 = [v5 fetchMostRecentSnapshotWithError:&v12];
    v8 = v12;

    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 == 0;
    }

    if (!v9)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=scheduler= Failed to fetch most recent snapshot from cache: %@", buf, 0xCu);
        _MBLog();
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = v6;
  }

  return v7;
}

- (id)_dateOfLastBackupFromCloudWithConnection:(id)a3 account:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    __assert_rtn("[MBBackupScheduler _dateOfLastBackupFromCloudWithConnection:account:error:]", "MBBackupScheduler.m", 1863, "error");
  }

  v10 = v9;
  v11 = +[MBCKOperationPolicy expensiveCellularPolicy];
  [v11 setTimeoutIntervalForFetch:10.0];
  v12 = [(MBCKManager *)self->_serviceManager databaseManager];
  v13 = [MBCKOperationTracker operationTrackerWithAccount:v10 databaseManager:v12 policy:v11 error:a5];

  if (v13)
  {
    v14 = [v8 processName];
    v15 = [v11 operationGroupWithName:@"getLastBackupDate" processName:v14];
    [v13 setCkOperationGroup:v15];

    v16 = [MBCKDevice alloc];
    v17 = MBDeviceUUID();
    v18 = -[MBCKDevice initWithUUID:cache:backupEnabled:](v16, "initWithUUID:cache:backupEnabled:", v17, 0, [v10 isEnabledForBackup]);

    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_1001DCF5C;
    v34 = sub_1001DCF6C;
    v35 = 0;
    v19 = dispatch_semaphore_create(0);
    v20 = [(MBCKModel *)v18 recordID];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001DCF74;
    v26[3] = &unk_1003BD810;
    v21 = v18;
    v27 = v21;
    v29 = &v30;
    v22 = v19;
    v28 = v22;
    [v13 fetchRecordWithID:v20 completion:v26];

    MBSemaphoreWaitForever();
    v23 = v31[5];
    if (v23)
    {
      v24 = 0;
      *a5 = v23;
    }

    else
    {
      v24 = [(MBCKDevice *)v21 dateOfLastBackup];
    }

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)_dateOfLastBackupFromLockdown
{
  v2 = +[MBLockdown dateOfLastBackupFromLockdownPlist];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedLongLongValue];
    v5 = [NSDate dateWithTimeIntervalSince1970:v4];
    v6 = +[NSDate date];
    [v6 timeIntervalSinceDate:v5];
    v8 = v7;

    if (v8 > 315360000.0)
    {
      v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:v4];

      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dateOfLastBackupWithAccount:(id)a3 connection:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    __assert_rtn("[MBBackupScheduler dateOfLastBackupWithAccount:connection:error:]", "MBBackupScheduler.m", 1914, "account");
  }

  if (!a5)
  {
    __assert_rtn("[MBBackupScheduler dateOfLastBackupWithAccount:connection:error:]", "MBBackupScheduler.m", 1915, "error");
  }

  v10 = v9;
  if ([v8 isPrimaryAccount])
  {
    v11 = [(MBBackupScheduler *)self _dateOfLastBackupFromLockdown];
    v12 = MBGetDefaultLog();
    v13 = v12;
    if (v11)
    {
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v14 = MBStringWithDate();
      *buf = 138543362;
      v39 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=scheduler= Fetched dateOfLastBackup from lockdown:%{public}@", buf, 0xCu);

      v15 = MBStringWithDate();
LABEL_14:
      _MBLog();

      goto LABEL_29;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=scheduler= No dateOfLastBackup available from lockdown", buf, 2u);
      _MBLog();
    }
  }

  if (![(MBCKManager *)self->_serviceManager isRestoringAccount:v8])
  {
    v16 = [(MBBackupScheduler *)self _lastSnapshotFromCacheWithAccount:v8];
    v11 = [v16 created];

    v17 = MBGetDefaultLog();
    v13 = v17;
    if (v11)
    {
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v18 = MBStringWithDate();
      *buf = 138543362;
      v39 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=scheduler= Fetched dateOfLastBackup from the cache:%{public}@", buf, 0xCu);

      v15 = MBStringWithDate();
      goto LABEL_14;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=scheduler= No dateOfLastBackup available from the cache", buf, 2u);
      _MBLog();
    }
  }

  v19 = [(MBBackupScheduler *)self _nilBackupDateFetchDateForAccount:v8];
  if (v19)
  {
    v20 = v19;
    v21 = +[NSDate now];
    [v21 timeIntervalSinceDate:v20];
    v23 = v22;

    if (v23 >= 0.0 && v23 <= 43200.0)
    {
      v11 = 0;
      goto LABEL_39;
    }
  }

  v37 = 0;
  v11 = [(MBBackupScheduler *)self _dateOfLastBackupFromCloudWithConnection:v10 account:v8 error:&v37];
  v24 = v37;
  v13 = v24;
  if (v11 || !v24)
  {
    v26 = MBGetDefaultLog();
    v27 = v26;
    if (!v11)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "=scheduler= No dateOfLastBackup available from the device record", buf, 2u);
        _MBLog();
      }

      v11 = +[NSDate now];
      [(MBBackupScheduler *)self _updateNilBackupDateFetchDate:v11 account:v8];
LABEL_37:

      v11 = 0;
      goto LABEL_38;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = MBStringWithDate();
      *buf = 138543362;
      v39 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=scheduler= Fetched the dateOfLastBackup from the device record: %{public}@", buf, 0xCu);

      v35 = MBStringWithDate();
      _MBLog();
    }

    [(MBBackupScheduler *)self clearNilBackupDateFetchDateForAccount:v8];
LABEL_29:

    v29 = [MBCKManager restoreInfoForAccount:v8];
    v13 = [v29 date];

    if (!v13 || [v11 compare:v13] != -1)
    {
      goto LABEL_38;
    }

    v30 = MBGetDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = MBStringWithDate();
      v32 = MBStringWithDate();
      *buf = 138543618;
      v39 = v31;
      v40 = 2114;
      v41 = v32;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "=scheduler= Last backup date (%{public}@) is before the restore date (%{public}@) - ignoring", buf, 0x16u);

      v33 = MBStringWithDate();
      v36 = MBStringWithDate();
      _MBLog();
    }

    goto LABEL_37;
  }

  v25 = v24;
  v11 = 0;
  *a5 = v13;
LABEL_38:

LABEL_39:

  return v11;
}

- (id)_nilBackupDateFetchDateForAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 persona];
  v5 = [v4 copyPreferencesValueForKey:@"NilBackupDateFetchDate" class:objc_opt_class()];

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v3 accountIdentifier];
    v8 = MBStringWithDate();
    *buf = 138543874;
    v13 = @"NilBackupDateFetchDate";
    v14 = 2114;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "=scheduler= Fetched %{public}@ for account %{public}@: %{public}@", buf, 0x20u);

    v9 = [v3 accountIdentifier];
    v11 = MBStringWithDate();
    _MBLog();
  }

  return v5;
}

- (void)clearNilBackupDateFetchDateForAccount:(id)a3
{
  v3 = a3;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [v3 accountIdentifier];
    *buf = 138543618;
    v9 = @"NilBackupDateFetchDate";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "=scheduler= Clearing %{public}@ for account %{public}@", buf, 0x16u);

    v7 = [v3 accountIdentifier];
    _MBLog();
  }

  v6 = [v3 persona];
  [v6 setPreferencesValue:0 forKey:@"NilBackupDateFetchDate"];
}

- (void)_updateNilBackupDateFetchDate:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 accountIdentifier];
    v9 = MBStringWithDate();
    *buf = 138543874;
    v14 = @"NilBackupDateFetchDate";
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=scheduler= Updating %{public}@ for account %{public}@: %{public}@", buf, 0x20u);

    v10 = [v6 accountIdentifier];
    v12 = MBStringWithDate();
    _MBLog();
  }

  v11 = [v6 persona];
  [v11 setPreferencesValue:v5 forKey:@"NilBackupDateFetchDate"];
}

- (BOOL)_fetchNextBackupDateOnWiFi:(id *)a3 nextBackupDateOnCellular:(id *)a4 nextBackupDateOnBattery:(id *)a5 lastBackupDate:(id *)a6 account:(id)a7 connection:(id)a8 error:(id *)a9
{
  v14 = a7;
  v68 = a8;
  if (!a3)
  {
    __assert_rtn("[MBBackupScheduler _fetchNextBackupDateOnWiFi:nextBackupDateOnCellular:nextBackupDateOnBattery:lastBackupDate:account:connection:error:]", "MBBackupScheduler.m", 1996, "nextBackupDateOnWiFiPtr");
  }

  if (!a4)
  {
    __assert_rtn("[MBBackupScheduler _fetchNextBackupDateOnWiFi:nextBackupDateOnCellular:nextBackupDateOnBattery:lastBackupDate:account:connection:error:]", "MBBackupScheduler.m", 1997, "nextBackupDateOnCellularPtr");
  }

  if (!a5)
  {
    __assert_rtn("[MBBackupScheduler _fetchNextBackupDateOnWiFi:nextBackupDateOnCellular:nextBackupDateOnBattery:lastBackupDate:account:connection:error:]", "MBBackupScheduler.m", 1998, "nextBackupDateOnBatteryPtr");
  }

  if (!a6)
  {
    __assert_rtn("[MBBackupScheduler _fetchNextBackupDateOnWiFi:nextBackupDateOnCellular:nextBackupDateOnBattery:lastBackupDate:account:connection:error:]", "MBBackupScheduler.m", 1999, "lastBackupDatePtr");
  }

  if (!v14)
  {
    __assert_rtn("[MBBackupScheduler _fetchNextBackupDateOnWiFi:nextBackupDateOnCellular:nextBackupDateOnBattery:lastBackupDate:account:connection:error:]", "MBBackupScheduler.m", 2000, "account");
  }

  if (!a9)
  {
    __assert_rtn("[MBBackupScheduler _fetchNextBackupDateOnWiFi:nextBackupDateOnCellular:nextBackupDateOnBattery:lastBackupDate:account:connection:error:]", "MBBackupScheduler.m", 2001, "error");
  }

  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  v70 = 0;
  v15 = [(MBBackupScheduler *)self dateOfLastBackupWithAccount:v14 connection:v68 error:&v70];
  v16 = v70;
  if (v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16 == 0;
  }

  v18 = v17;
  if (v17)
  {
    v60 = v16;
    +[NSDate now];
    v65 = v64 = a5;
    v63 = v18;
    v61 = a3;
    v62 = a4;
    if (v15)
    {
      if ([v15 compare:v65] == 1)
      {
        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = MBStringWithDate();
          *buf = 138543362;
          v72 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=scheduler= Last backup date is forward in time (%{public}@)", buf, 0xCu);

          v51 = MBStringWithDate();
          _MBLog();
        }

        v21 = v65;
        v22 = v21;
        v23 = v21;
      }

      else
      {
        self->_backupPeriodOnWiFi = sub_1001D8C1C(v14, @"BackupPeriod", 86400.0, 86400.0);
        self->_backupPeriodOnCellular = sub_1001D8C1C(v14, @"BackupPeriodOnCellular", 172800.0, 172800.0);
        self->_backupPeriodOnBattery = sub_1001D8C1C(v14, @"BackupPeriodOnBattery", 604800.0, 604800.0);
        v23 = [v15 dateByAddingTimeInterval:self->_backupPeriodOnWiFi];
        v22 = [v15 dateByAddingTimeInterval:self->_backupPeriodOnCellular];
        if ([(NSDate *)self->_dateOfLastPasscodeChange isDueForPasscodeChangedBackupWithLastBackupDate:v15])
        {
          v27 = self->_dateOfLastPasscodeChange;
        }

        else
        {
          v27 = [v15 dateByAddingTimeInterval:self->_backupPeriodOnBattery];
        }

        v21 = v27;
      }
    }

    else
    {
      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=scheduler= Last backup date is unknown", buf, 2u);
        _MBLog();
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
    }

    v28 = [(MBBackupScheduler *)self _retryAfterDateForAccount:v14, v51];
    [(MBBackupScheduler *)self _onBatteryRetryAfterDateForAccount:v14];
    v67 = v66 = v28;
    if (v23)
    {
      if (v28)
      {
        v29 = [v23 laterDate:v28];

        v30 = [v22 laterDate:v28];

        v31 = [v21 laterDate:v67];

        v21 = v31;
        v22 = v30;
        v23 = v29;
      }

      else if (v67)
      {
        v32 = [v21 laterDate:v67];

        v21 = [v32 laterDate:0];
      }
    }

    else
    {
      if (v22 | v21)
      {
        __assert_rtn("[MBBackupScheduler _fetchNextBackupDateOnWiFi:nextBackupDateOnCellular:nextBackupDateOnBattery:lastBackupDate:account:connection:error:]", "MBBackupScheduler.m", 2042, "!nextBackupDateOnCellular && !nextBackupDateOnBattery");
      }

      v21 = v28;
      v22 = v21;
      v23 = v21;
    }

    v33 = MBGetDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = MBStringWithDate();
      log = v33;
      v35 = MBStringWithDate();
      MBStringWithDate();
      v36 = v57 = v15;
      v37 = MBStringWithDate();
      v38 = MBStringWithDate();
      MBStringWithDate();
      v39 = v56 = v23;
      [v14 persona];
      v40 = v59 = v14;
      v41 = [v40 personaIdentifier];
      *buf = 138544898;
      v72 = v34;
      v73 = 2114;
      v74 = v35;
      v75 = 2114;
      v76 = v36;
      v77 = 2114;
      v78 = v37;
      v79 = 2114;
      v80 = v38;
      v81 = 2114;
      v82 = v39;
      v83 = 2112;
      v84 = v41;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "=scheduler= lastBackupDate:%{public}@, retryAfterDate:%{public}@(%{public}@, nextBackupDateOnWiFi:%{public}@, nextBackupDateOnCellular:%{public}@, nextBackupDateOnBattery:%{public}@, persona:%@", buf, 0x48u);

      v23 = v56;
      v15 = v57;

      v55 = MBStringWithDate();
      v54 = MBStringWithDate();
      v53 = MBStringWithDate();
      v42 = MBStringWithDate();
      v43 = MBStringWithDate();
      v44 = MBStringWithDate();
      v45 = [v59 persona];
      v52 = [v45 personaIdentifier];
      _MBLog();

      v33 = log;
      v14 = v59;
    }

    if (!v23 && v22 && !v21)
    {
      __assert_rtn("[MBBackupScheduler _fetchNextBackupDateOnWiFi:nextBackupDateOnCellular:nextBackupDateOnBattery:lastBackupDate:account:connection:error:]", "MBBackupScheduler.m", 2057, "nextBackupDateOnWiFi || !nextBackupDateOnCellular || nextBackupDateOnBattery");
    }

    v46 = v23;
    *v61 = v23;
    v47 = v22;
    *v62 = v22;
    v48 = v21;
    *v64 = v21;
    v49 = v15;
    *a6 = v15;

    v18 = v63;
    v25 = v60;
  }

  else
  {
    v24 = v16;
    *a9 = v24;
    v25 = v24;
  }

  return v18;
}

- (id)dateOfNextScheduledBackupWithAccount:(id)a3 connection:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    __assert_rtn("[MBBackupScheduler dateOfNextScheduledBackupWithAccount:connection:error:]", "MBBackupScheduler.m", 2068, "account");
  }

  v10 = v9;
  v25 = 0;
  v11 = [v8 persona];
  v12 = [v11 getBooleanValueForKey:@"EnableBackupScheduling" keyExists:&v25];

  if (!v25 || v12)
  {
    v23 = 0;
    v24 = 0;
    v21 = 0;
    v22 = 0;
    v14 = [(MBBackupScheduler *)self _fetchNextBackupDateOnWiFi:&v24 nextBackupDateOnCellular:&v23 nextBackupDateOnBattery:&v22 lastBackupDate:&v21 account:v8 connection:v10 error:a5];
    v15 = v24;
    v16 = v23;
    v17 = v22;
    v18 = v21;
    v13 = 0;
    if (v14 && v15)
    {
      if (!v16 || !v17)
      {
        __assert_rtn("[MBBackupScheduler dateOfNextScheduledBackupWithAccount:connection:error:]", "MBBackupScheduler.m", 2090, "nextBackupDateOnCellular && nextBackupDateOnBattery");
      }

      v19 = [v15 earlierDate:v16];
      v13 = [v19 earlierDate:v17];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_scheduleNextBackup
{
  v3 = [(MBBackupScheduler *)self conditions];

  [(MBBackupScheduler *)self _stateDidChange:0 conditions:v3];
}

- (unint64_t)_lastPendingSnapshotSizeForAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 persona];
  v5 = [v4 copyPreferencesValueForKey:@"LastPendingSnapshotSize" class:objc_opt_class()];

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v3 accountIdentifier];
    *buf = 138543874;
    v12 = @"LastPendingSnapshotSize";
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "=scheduler= Fetched %{public}@ for account %{public}@: %{public}@", buf, 0x20u);

    v10 = [v3 accountIdentifier];
    _MBLog();
  }

  v8 = [v5 unsignedLongLongValue];
  return v8;
}

- (void)_clearLastPendingSnapshotSizeForAccount:(id)a3
{
  v3 = a3;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 accountIdentifier];
    *buf = 138543618;
    v9 = @"LastPendingSnapshotSize";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=scheduler= Clearing %{public}@ for account %{public}@", buf, 0x16u);

    v7 = [v3 accountIdentifier];
    _MBLog();
  }

  v6 = [v3 persona];
  [v6 setPreferencesValue:0 forKey:@"LastPendingSnapshotSize"];
}

- (BOOL)_isBackupOnCellularAllowedForAccount:(id)a3
{
  v3 = a3;
  v4 = +[MBRemoteConfiguration sharedInstance];
  v5 = [v4 valueForKey:@"AutomaticBackupOnCellularEnabled" account:v3];

  if (v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v10 = @"AutomaticBackupOnCellularEnabled";
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "=scheduler= %{public}@: %{public}@", buf, 0x16u);
      _MBLog();
    }

    v7 = [v5 BOOLValue];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)_fetchNextBackupDateAcrossAccountsOnWifi:(id *)a3 cellular:(id *)a4 battery:(id *)a5 error:(id *)a6
{
  [(MBBackupScheduler *)self accounts];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v48 = 0u;
  v7 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v37 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *v46;
    v36 = *v46;
    do
    {
      v12 = 0;
      v38 = v8;
      do
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v45 + 1) + 8 * v12);
        if ([v13 isEnabledForBackup])
        {
          v43 = 0;
          v44 = 0;
          v41 = 0;
          v42 = 0;
          v40 = 0;
          v14 = [(MBBackupScheduler *)self _fetchNextBackupDateOnWiFi:&v44 nextBackupDateOnCellular:&v43 nextBackupDateOnBattery:&v42 lastBackupDate:&v41 account:v13 connection:0 error:&v40];
          v15 = v44;
          v16 = v43;
          v17 = v42;
          v18 = v41;
          v19 = v40;
          if (v14)
          {
            v35 = [v15 earlierDate:v10];

            v20 = [v16 earlierDate:v9];

            v21 = [v17 earlierDate:v37];

            v37 = v21;
            v9 = v20;
            v10 = v35;
          }

          else
          {
            v22 = MBGetDefaultLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v50 = v19;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "=scheduler= Failed to fetch the last&next backup date for account: %{public}@", buf, 0xCu);
              v30 = v19;
              _MBLog();
            }

            [0 addObject:v19];
          }

          v11 = v36;
          v8 = v38;
        }

        v12 = v12 + 1;
      }

      while (v8 != v12);
      v8 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v8);
  }

  else
  {
    v37 = 0;
    v9 = 0;
    v10 = 0;
  }

  if ([0 count] && (v23 = objc_msgSend(0, "count"), v23 == objc_msgSend(obj, "count")))
  {
    if (a6)
    {
      [MBError errorWithErrors:0];
      *a6 = v24 = 0;
    }

    else
    {
      v24 = 0;
    }

    v26 = v37;
  }

  else
  {
    if (a3)
    {
      v25 = v10;
      *a3 = v10;
    }

    v26 = v37;
    if (a4)
    {
      v27 = v9;
      *a4 = v9;
    }

    if (a5)
    {
      v28 = v37;
      *a5 = v37;
    }

    v24 = 1;
  }

  return v24;
}

- (int64_t)_scheduleBackupOnWiFi:(BOOL)a3 onCellular:(BOOL)a4 onBattery:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if (!a3 && !a4)
  {
    __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2169, "onWiFi || onCellular");
  }

  dispatch_assert_queue_V2(self->_stateQueue);
  v9 = [(MBBackupScheduler *)self accounts];

  if (v9)
  {
    v10 = [(MBBackupScheduler *)self initiatedBackupRequest];
    if (v10)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v119 = [v10 activityType];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=scheduler= Not scheduling automatic backup - XPC activity is running (%d)", buf, 8u);
        [v10 activityType];
        _MBLog();
      }

      v12 = 0;
      goto LABEL_108;
    }

    v106 = v5;
    v11 = +[NSDate now];
    v102 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v116 = 0;
    v117 = 0;
    v114 = 0;
    v115 = 0;
    v13 = [(MBBackupScheduler *)self _fetchNextBackupDateAcrossAccountsOnWifi:&v117 cellular:&v116 battery:&v115 error:&v114];
    v14 = v117;
    v109 = v116;
    v15 = v115;
    v16 = v114;
    if ((v13 & 1) == 0)
    {
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v119 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=scheduler= Failed to fetch the next backup date across all accounts: %@", buf, 0xCu);
        _MBLog();
      }

      v12 = -1;
      goto LABEL_106;
    }

    if (v7)
    {
      objc_storeStrong(&self->_scheduledDateOnWiFi, v11);
    }

    if (v14)
    {
      if (!v109)
      {
        __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2203, "nextBackupDateOnCellular");
      }

      v104 = v14;
      if (!v15)
      {
        __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2204, "nextBackupDateOnBattery");
      }
    }

    else
    {
      if (v109 | v15)
      {
        __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2199, "!nextBackupDateOnCellular && !nextBackupDateOnBattery");
      }

      v109 = [v11 dateByAddingTimeInterval:1.0];
      v15 = v109;
      v104 = v109;
      if (!v109)
      {
        __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2202, "nextBackupDateOnWiFi");
      }
    }

    v103 = v15;
    v101 = v16;
    v108 = v11;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v18 = [(MBBackupScheduler *)self accounts];
    v19 = [v18 countByEnumeratingWithState:&v110 objects:v127 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v111;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v111 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v110 + 1) + 8 * i);
          if ([v24 isEnabled])
          {
            v21 += [(MBBackupScheduler *)self _lastPendingSnapshotSizeForAccount:v24];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v110 objects:v127 count:16];
      }

      while (v20);
    }

    else
    {
      v21 = 0;
    }

    if (v6)
    {
      v25 = [(NSMutableDictionary *)self->_osTransactionsByActivityType objectForKeyedSubscript:&off_1003E0F90];

      v11 = v108;
      v15 = v103;
      if (!v25)
      {
        v26 = os_transaction_create();
        [(NSMutableDictionary *)self->_osTransactionsByActivityType setObject:v26 forKeyedSubscript:&off_1003E0F90];

        [(MBBackupScheduler *)self _holdWorkAssertion];
      }

      v27 = fmin(fmax(self->_backupPeriodOnCellular * 0.5, 600.0), 86400.0);
      v28 = v109;
      if (v27 <= 599)
      {
        __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2223, "10 * 60 <= maxGrace");
      }

      if ([v108 compare:v109]== 1)
      {
        [v108 timeIntervalSinceDate:v109];
        v30 = v29;
        v31 = MBGetDefaultLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = MBStringWithDate();
          *buf = 138543618;
          *v119 = v32;
          *&v119[8] = 2048;
          v120 = v30;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "=scheduler= Last backup on cellular was delayed (%{public}@) (%llds)", buf, 0x16u);

          v94 = MBStringWithDate();
          v96 = v30;
          _MBLog();

          v28 = v109;
        }

        v33 = [v108 dateByAddingTimeInterval:1.0];

        if (v27 >= v30)
        {
          v34 = v30;
        }

        else
        {
          v34 = v27;
        }

        v35 = v27 - v34;
        if (v35 <= 600)
        {
          v27 = 600;
        }

        else
        {
          v27 = v35;
        }

        if (!v33)
        {
          __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2232, "nextBackupDateOnCellular");
        }

        v15 = v103;
      }

      else
      {
        v33 = v109;
      }

      [v33 timeIntervalSinceDate:{v108, v94, v96}];
      v37 = vcvtpd_s64_f64(v36);
      if ((v37 & 0x8000000000000000) != 0)
      {
        __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2234, "0 <= delta");
      }

      v38 = (120 - v37) & ~((120 - v37) >> 63);
      v12 = v38 + v37;
      v39 = [v33 dateByAddingTimeInterval:v38];

      v40 = [(NSMutableDictionary *)self->_nextBackupDatesByActivityType objectForKeyedSubscript:&off_1003E0F90];
      v41 = v40;
      v109 = v39;
      if (v40 && ([v40 timeIntervalSinceDate:v39], fabs(v42) <= 120.0))
      {
        v47 = MBGetDefaultLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v119 = v109;
          *&v119[8] = 2112;
          v120 = v41;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "=scheduler= Not scheduling the next cellular backup at %@ because there is a DAS backup scheduled at %@", buf, 0x16u);
          v94 = v109;
          v96 = v41;
          _MBLog();
        }
      }

      else
      {
        v100 = v41;
        [(NSMutableDictionary *)self->_nextBackupDatesByActivityType setObject:v39 forKeyedSubscript:&off_1003E0F90];
        v43 = v21;
        v44 = 209715200.0;
        if (v21 >> 22 < 0x7D)
        {
          v44 = 157286400.0;
        }

        if (v21 >> 21 >= 0x7D)
        {
          v43 = v44;
        }

        v45 = round(fmax(v43, 75497472.0) * 9.31322575e-10 * 100.0) / 100.0;
        if (v45 <= 0.0 || v45 > 1.0)
        {
          __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2268, "0.0 < minCellularBudgetPercentage && minCellularBudgetPercentage <= 1.0");
        }

        v47 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_BOOL(v47, XPC_ACTIVITY_REPEATING, 0);
        xpc_dictionary_set_int64(v47, XPC_ACTIVITY_DELAY, v12);
        xpc_dictionary_set_int64(v47, XPC_ACTIVITY_GRACE_PERIOD, v27);
        xpc_dictionary_set_BOOL(v47, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
        xpc_dictionary_set_BOOL(v47, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, ![(MBBackupScheduler *)self allowBackupOnExpensiveCellular]);
        xpc_dictionary_set_string(v47, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
        xpc_dictionary_set_BOOL(v47, XPC_ACTIVITY_ALLOW_BATTERY, 0);
        xpc_dictionary_set_BOOL(v47, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
        xpc_dictionary_set_int64(v47, XPC_ACTIVITY_NETWORK_UPLOAD_SIZE, v21);
        xpc_dictionary_set_BOOL(v47, XPC_ACTIVITY_USES_DATA_BUDGETING, 1);
        xpc_dictionary_set_int64(v47, XPC_ACTIVITY_EXPECTED_DURATION, XPC_ACTIVITY_INTERVAL_4_HOURS);
        v48 = xpc_dictionary_create(0, 0, 0);
        v49 = [_DASCTSMinDataBudgetPercentRemainingKey UTF8String];
        v50 = xpc_double_create(v45);
        xpc_dictionary_set_value(v48, v49, v50);

        xpc_dictionary_set_value(v47, XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA, v48);
        v51 = [(MBBackupScheduler *)self activityCoordinator];
        [v51 registerBackupActivity:1 criteria:v47];

        v52 = MBGetDefaultLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = MBStringWithDate();
          *buf = 138544386;
          *v119 = v53;
          *&v119[8] = 2048;
          v120 = v12;
          v121 = 2048;
          v122 = v21;
          v123 = 2048;
          v124 = v45;
          v125 = 2114;
          v126 = v47;
          v11 = v108;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "=scheduler= Scheduled next backup on cellular at %{public}@ (delta:%llds, estimatedUploadSize:%llu, minCellularBudgetPercentage:%.2f): %{public}@", buf, 0x34u);

          MBStringWithDate();
          v99 = v47;
          v98 = v45;
          v96 = v12;
          v94 = v97 = v21;
          _MBLog();
        }

        v12 = -1;
        v15 = v103;
        v41 = v100;
      }

      v14 = v104;
      if (!v7)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v12 = -1;
      v11 = v108;
      v15 = v103;
      v14 = v104;
      if (!v7)
      {
LABEL_88:
        if (!v106)
        {
          v16 = v101;
LABEL_107:

LABEL_108:
          goto LABEL_109;
        }

        v75 = os_transaction_create();
        v105 = v14;
        if ([v11 compare:v15]== 1)
        {
          [v11 timeIntervalSinceDate:v15];
          v77 = v76;
          v78 = MBGetDefaultLog();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            v79 = MBStringWithDate();
            *buf = 138543618;
            *v119 = v79;
            *&v119[8] = 2048;
            v120 = v77;
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "=scheduler= Last backup on battery was delayed (%{public}@) (%llds)", buf, 0x16u);

            v94 = MBStringWithDate();
            v96 = v77;
            v11 = v108;
            _MBLog();
          }

          v80 = [v11 dateByAddingTimeInterval:1.0];

          if (!v80)
          {
            __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2354, "nextBackupDateOnBattery");
          }
        }

        else
        {
          v80 = v15;
        }

        [v80 timeIntervalSinceDate:{v11, v94, v96}];
        v82 = vcvtpd_s64_f64(v81);
        if ((v82 & 0x8000000000000000) != 0)
        {
          __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2357, "0 <= onBatteryDelta");
        }

        v83 = (120 - v82) & ~((120 - v82) >> 63);
        v15 = [v80 dateByAddingTimeInterval:v83];

        v84 = [(NSMutableDictionary *)self->_nextBackupDatesByActivityType objectForKeyedSubscript:&off_1003E0FC0];
        v17 = v84;
        if (v84 && ([v84 timeIntervalSinceDate:v15], fabs(v85) <= 120.0))
        {
          v89 = MBGetDefaultLog();
          v16 = v101;
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *v119 = v15;
            *&v119[8] = 2112;
            v120 = v17;
            _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "=scheduler= Not scheduling the next battery backup at %@ because there is already a DAS backup scheduled at %@", buf, 0x16u);
            _MBLog();
          }

          v11 = v108;
        }

        else
        {
          v107 = v75;
          v86 = v15;
          v87 = v83 + v82;
          v88 = v86;
          [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
          v89 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_BOOL(v89, XPC_ACTIVITY_REPEATING, 0);
          xpc_dictionary_set_int64(v89, XPC_ACTIVITY_DELAY, v87);
          xpc_dictionary_set_BOOL(v89, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
          xpc_dictionary_set_string(v89, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
          xpc_dictionary_set_BOOL(v89, XPC_ACTIVITY_ALLOW_BATTERY, 1);
          xpc_dictionary_set_BOOL(v89, XPC_ACTIVITY_REQUIRE_BATTERY_LEVEL, 1);
          xpc_dictionary_set_BOOL(v89, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
          xpc_dictionary_set_BOOL(v89, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
          xpc_dictionary_set_BOOL(v89, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
          xpc_dictionary_set_int64(v89, XPC_ACTIVITY_NETWORK_UPLOAD_SIZE, v21);
          xpc_dictionary_set_int64(v89, XPC_ACTIVITY_EXPECTED_DURATION, XPC_ACTIVITY_INTERVAL_4_HOURS);
          v90 = [(MBBackupScheduler *)self activityCoordinator];
          [v90 registerBackupActivity:3 criteria:v89];

          v91 = MBGetDefaultLog();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            v92 = MBStringWithDate();
            *buf = 138543618;
            *v119 = v92;
            *&v119[8] = 2048;
            v120 = v87;
            _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "=scheduler= Scheduled next backup on battery at %{public}@ (%llds)", buf, 0x16u);

            v95 = MBStringWithDate();
            _MBLog();
          }

          v16 = v101;
          v15 = v88;
          v75 = v107;
          v11 = v108;
        }

        v14 = v105;
LABEL_106:

        goto LABEL_107;
      }
    }

    v54 = [(NSMutableDictionary *)self->_osTransactionsByActivityType objectForKeyedSubscript:&off_1003E0FA8, v94, v96, v97, *&v98, v99];

    if (!v54)
    {
      v55 = os_transaction_create();
      [(NSMutableDictionary *)self->_osTransactionsByActivityType setObject:v55 forKeyedSubscript:&off_1003E0FA8];

      [(MBBackupScheduler *)self _holdWorkAssertion];
    }

    if ([v11 compare:v14]== 1)
    {
      [v11 timeIntervalSinceDate:v14];
      v57 = v56;
      v58 = MBGetDefaultLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = MBStringWithDate();
        *buf = 138543618;
        *v119 = v59;
        *&v119[8] = 2048;
        v120 = v57;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "=scheduler= Last backup on WiFi was delayed (%{public}@) (%llds)", buf, 0x16u);

        v94 = MBStringWithDate();
        v96 = v57;
        v11 = v108;
        _MBLog();
      }

      v60 = [v11 dateByAddingTimeInterval:1.0];
    }

    else
    {
      v60 = v14;
    }

    if (!v60)
    {
      __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2304, "nextBackupDateOnWiFi");
    }

    [v60 timeIntervalSinceDate:v11];
    v62 = vcvtpd_s64_f64(v61);
    if ((v62 & 0x8000000000000000) != 0)
    {
      __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2307, "0 <= delta");
    }

    v63 = (120 - v62) & ~((120 - v62) >> 63);
    v12 = v63 + v62;
    v14 = [v60 dateByAddingTimeInterval:v63];

    v64 = [(NSMutableDictionary *)self->_nextBackupDatesByActivityType objectForKeyedSubscript:&off_1003E0FA8];
    v65 = v64;
    if (v64 && ([v64 timeIntervalSinceDate:v14], fabs(v66) <= 120.0))
    {
      v73 = MBGetDefaultLog();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v119 = v14;
        *&v119[8] = 2112;
        v120 = v65;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "=scheduler= Not scheduling the next WiFi backup at %@ because there is already a DAS backup scheduled at %@", buf, 0x16u);
        v94 = v14;
        v96 = v65;
        _MBLog();
      }
    }

    else
    {
      [(NSMutableDictionary *)self->_nextBackupDatesByActivityType setObject:v14 forKeyedSubscript:&off_1003E0FA8, v94, v96];
      v67 = [objc_opt_class() backupOnWiFiWithDAS];
      v68 = xpc_dictionary_create(0, 0, 0);
      v69 = v68;
      if (v67)
      {
        xpc_dictionary_set_BOOL(v68, XPC_ACTIVITY_REPEATING, 0);
        xpc_dictionary_set_int64(v69, XPC_ACTIVITY_DELAY, v12);
        xpc_dictionary_set_BOOL(v69, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
        xpc_dictionary_set_string(v69, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
        xpc_dictionary_set_BOOL(v69, XPC_ACTIVITY_ALLOW_BATTERY, 0);
        xpc_dictionary_set_BOOL(v69, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
        xpc_dictionary_set_BOOL(v69, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
        xpc_dictionary_set_BOOL(v69, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
        xpc_dictionary_set_int64(v69, XPC_ACTIVITY_NETWORK_UPLOAD_SIZE, v21);
        xpc_dictionary_set_int64(v69, XPC_ACTIVITY_EXPECTED_DURATION, XPC_ACTIVITY_INTERVAL_4_HOURS);
        v70 = [(MBBackupScheduler *)self activityCoordinator];
        [v70 registerBackupActivity:2 criteria:v69];
      }

      else
      {
        xpc_dictionary_set_string(v68, "Type", "Monotonic");
        xpc_dictionary_set_uint64(v69, "Date", v102 + 1000000000 * v12);
        alarm = self->_alarm;
        self->_alarm = v69;
        v72 = v69;

        v11 = v108;
        xpc_set_event();
      }

      v73 = MBGetDefaultLog();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v74 = MBStringWithDate();
        *buf = 138543618;
        *v119 = v74;
        *&v119[8] = 2048;
        v120 = v12;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "=scheduler= Scheduled next backup on WiFi at %{public}@ (%llds)", buf, 0x16u);

        v94 = MBStringWithDate();
        v96 = v12;
        _MBLog();
      }
    }

    goto LABEL_88;
  }

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *v119 = v7;
    *&v119[4] = 1024;
    *&v119[6] = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=scheduler= Not scheduling automatic backup - no accounts, onWiFi:%d, onCellular:%d", buf, 0xEu);
    _MBLog();
  }

  v12 = -1;
LABEL_109:

  return v12;
}

- (void)_registerAlarmHandler
{
  stateQueue = self->_stateQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001E0440;
  handler[3] = &unk_1003C12B8;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.alarm", stateQueue, handler);
}

- (void)_cancelAlarm
{
  xpc_set_event();
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v4 = "com.apple.backupd.alarm";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "=scheduler= Canceled alarm (%s)", buf, 0xCu);
    _MBLog();
  }
}

- (void)_handleAlarm
{
  [(MBBackupScheduler *)self _holdWorkAssertion];
  [(MBBackupScheduler *)self _tearDownScheduledBackupWithActivityType:2];

  [(MBBackupScheduler *)self _releaseWorkAssertion];
}

- (void)backupActivityIsRunnable:(int)a3
{
  if (!a3)
  {
    __assert_rtn("[MBBackupScheduler backupActivityIsRunnable:]", "MBBackupScheduler.m", 2485, "xpcActivityType != MBBackupXPCActivityTypeNone");
  }

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v23 = MBBackupXPCActivityNameWithType(a3);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=scheduler= Received ready XPC activity %{public}s", buf, 0xCu);
    MBBackupXPCActivityNameWithType(a3);
    _MBLog();
  }

  v6 = os_transaction_create();
  v7 = [(MBBackupScheduler *)self firstConditionsGroup];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=scheduler= Waiting for all conditions to update", buf, 2u);
    _MBLog();
  }

  v9 = dispatch_time(0, 60000000000);
  if (dispatch_group_wait(v7, v9))
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=scheduler= Timed out waiting for all conditions to update", buf, 2u);
      _MBLog();
    }

    stateQueue = self->_stateQueue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001E0D3C;
    v19[3] = &unk_1003C1328;
    v21 = a3;
    v12 = &v20;
    v19[4] = self;
    v20 = v6;
    v13 = v6;
    v14 = v19;
  }

  else
  {
LABEL_11:
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E0D88;
    block[3] = &unk_1003C1328;
    v18 = a3;
    v12 = &v17;
    block[4] = self;
    v17 = v6;
    v15 = v6;
    v14 = block;
  }

  dispatch_async(stateQueue, v14);
}

+ (BOOL)backupOnWiFiWithDAS
{
  if (qword_1004219F8 != -1)
  {
    dispatch_once(&qword_1004219F8, &stru_1003C1300);
  }

  return byte_1004201C8;
}

@end