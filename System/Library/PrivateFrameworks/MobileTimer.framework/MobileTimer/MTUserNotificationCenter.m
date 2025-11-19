@interface MTUserNotificationCenter
+ (BOOL)isPairedWatchIncompatibleWithAlarmKit;
+ (id)_allIdentifiersForAlarm:(id)a3 includeMainIdentifier:(BOOL)a4 includeSnooze:(BOOL)a5;
+ (id)_durationComponentsFormatter;
+ (id)_mutableContentForScheduledAlarmWithCommonSettings:(id)a3;
+ (id)_timeFormatter;
+ (id)_wakeUpAlarmStringForAlarm:(id)a3;
+ (id)categoryForScheduledAlarm:(id)a3;
+ (id)categoryForScheduledTimer:(id)a3;
+ (id)commonAlarmKitPayload:(id)a3;
+ (id)contentForScheduledAlarm:(id)a3;
+ (id)contentForScheduledTimer:(id)a3;
+ (id)launchURLForScheme:(id)a3;
+ (id)notificationPrefixes;
+ (id)requestIdentifierForScheduledAlarm:(id)a3;
+ (id)userInfoForAlarm:(id)a3;
+ (id)userInfoForTimer:(id)a3;
+ (void)_setGoToBedTitleAndBody:(id)a3 forGoToBedNotification:(id)a4;
+ (void)_setSnoozeCountdownTitleAndBody:(id)a3 forSnoozeCountdownNotification:(id)a4;
+ (void)_setSpecificContent:(id)a3 forGoToBedNotification:(id)a4;
+ (void)_setSpecificContent:(id)a3 forNormalScheduledAlarm:(id)a4;
+ (void)_setSpecificContent:(id)a3 forScheduledAlarm:(id)a4;
+ (void)_setSpecificContent:(id)a3 forSnoozeCountdownNotification:(id)a4;
+ (void)setCommonContent:(id)a3 alert:(id)a4;
- (MTEventReporting)reportingDelegate;
- (MTUserNotificationCenter)init;
- (id)alarmCategories;
- (id)bedtimeCategories;
- (id)notificationCategories;
- (id)timerCategories;
- (unint64_t)conditionalAlertDestination;
- (unint64_t)conditionalListDestination;
- (unint64_t)conditionalLockScreenDestination;
- (unint64_t)firingNotificationDestinations;
- (void)dismissNotificationsForAlarm:(id)a3 dismissAction:(unint64_t)a4;
- (void)dismissNotificationsForAlarmKitAlertWithId:(id)a3;
- (void)dismissNotificationsForTimer:(id)a3;
- (void)dismissNotificationsWithIdentifiers:(id)a3;
- (void)dismissRelatedNotificationsForScheduledAlarm:(id)a3;
- (void)interruptAudioAndLockDeviceWithCompletionBlock:(id)a3;
- (void)postBedtimeNotificationForAlarm:(id)a3 date:(id)a4;
- (void)postNotificationForAlarmKitAlarm:(id)a3 completionBlock:(id)a4;
- (void)postNotificationForAlarmKitAlarm:(id)a3 content:(id)a4 completionBlock:(id)a5;
- (void)postNotificationForAlarmKitTimer:(id)a3 completionBlock:(id)a4;
- (void)postNotificationForAlarmKitTimer:(id)a3 content:(id)a4 completionBlock:(id)a5;
- (void)postNotificationForScheduledAlarm:(id)a3 completionBlock:(id)a4;
- (void)postNotificationForScheduledAlarm:(id)a3 content:(id)a4 completionBlock:(id)a5;
- (void)postNotificationForScheduledTimer:(id)a3 completionBlock:(id)a4;
- (void)registerActionHandler:(id)a3;
- (void)removeAllDeliveredNotifications;
- (void)retrieveDelieveredNotificationForId:(id)a3 completion:(id)a4;
- (void)setupNotificationCenter;
- (void)tearDownNotificationsForEventIdentifiers:(id)a3;
@end

@implementation MTUserNotificationCenter

- (MTUserNotificationCenter)init
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = MTUserNotificationCenter;
  v2 = [(MTUserNotificationCenter *)&v6 init];
  if (v2)
  {
    v3 = MTLogForCategory(3);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = v2;
      _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@...", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)setupNotificationCenter
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ setting up notification centers", buf, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:@"com.apple.mobiletimer"];
  v5 = [(MTUserNotificationCenter *)self notificationCategories];
  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 count];
    *buf = 138543874;
    v14 = self;
    v15 = 2048;
    v16 = v7;
    v17 = 2114;
    v18 = @"com.apple.mobiletimer";
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ setting %lu categories for %{public}@", buf, 0x20u);
  }

  [v4 setNotificationCategories:v5];
  v11 = @"com.apple.mobiletimer";
  v12 = v4;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  notificationCenters = self->_notificationCenters;
  self->_notificationCenters = v8;

  v10 = *MEMORY[0x1E69E9840];
}

- (void)registerActionHandler:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_actionHandler, a3);
  v6 = [(NSDictionary *)self->_notificationCenters allValues];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__MTUserNotificationCenter_registerActionHandler___block_invoke;
  v10[3] = &unk_1E7B0E9D0;
  v10[4] = self;
  [v6 na_each:v10];

  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    actionHandler = self->_actionHandler;
    *buf = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = actionHandler;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ handling responses with %{public}@", buf, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __50__MTUserNotificationCenter_registerActionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = a2;
  [v3 setDelegate:v2];
  [v3 setWantsNotificationResponsesDelivered];
}

- (id)alarmCategories
{
  v36[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v32 = [v2 localizedStringForKey:@"ALARM_STOP_ACTION" value:&stru_1F29360E0 table:@"Localizable"];

  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v31 = [v3 localizedStringForKey:@"ALARM_SNOOZE_ACTION" value:&stru_1F29360E0 table:@"Localizable"];

  v4 = MEMORY[0x1E6983250];
  v5 = [MEMORY[0x1E6983260] iconWithSystemImageName:@"stop.circle"];
  v6 = [v4 actionWithIdentifier:@"MTAlarmDismissAction" title:v32 options:0 icon:v5];

  v7 = MEMORY[0x1E6983250];
  v8 = [MEMORY[0x1E6983260] iconWithSystemImageName:@"zzz"];
  v30 = [v7 actionWithIdentifier:@"MTAlarmSnoozeAction" title:v31 options:0 icon:v8];

  v29 = [MEMORY[0x1E6983250] actionWithIdentifier:@"MTAlarmSecondaryAction" title:&stru_1F29360E0 options:0];
  v9 = MEMORY[0x1E6983278];
  v36[0] = v30;
  v36[1] = v6;
  v36[2] = v29;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
  v11 = MEMORY[0x1E695E0F0];
  v12 = [v9 categoryWithIdentifier:@"MTAlarmCategory" actions:v10 intentIdentifiers:MEMORY[0x1E695E0F0] options:0x141F00003];

  v13 = MEMORY[0x1E6983278];
  v35 = v6;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v15 = [v13 categoryWithIdentifier:@"MTAlarmNoSnoozeCategory" actions:v14 intentIdentifiers:v11 options:0x141F00003];

  v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"SNOOZE_STOP" value:&stru_1F29360E0 table:@"Localizable"];

  v18 = MEMORY[0x1E6983250];
  v19 = [MEMORY[0x1E6983260] iconWithSystemImageName:@"stop.circle"];
  v20 = [v18 actionWithIdentifier:@"MTAlarmDismissAction" title:v17 options:0 icon:v19];

  v21 = MEMORY[0x1E6983218];
  v34 = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v23 = [v21 categoryWithIdentifier:@"AlarmSnoozeCountdown" actions:v22 intentIdentifiers:v11 options:131073];

  [v23 setListPriority:1];
  v24 = MEMORY[0x1E695DFD8];
  v33[0] = v12;
  v33[1] = v15;
  v33[2] = v23;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  v26 = [v24 setWithArray:v25];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)timerCategories
{
  v18[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"TIMER_STOP_ACTION" value:&stru_1F29360E0 table:@"Localizable"];

  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"TIMER_REPEAT_ACTION" value:&stru_1F29360E0 table:@"Localizable"];

  v6 = [MEMORY[0x1E6983250] actionWithIdentifier:@"MTTimerDismissAction" title:v3 options:0];
  v7 = [MEMORY[0x1E6983250] actionWithIdentifier:@"MTTimerRepeatAction" title:v5 options:0];
  v8 = [MEMORY[0x1E6983250] actionWithIdentifier:@"MTTimerSecondaryAction" title:&stru_1F29360E0 options:0];
  v9 = MEMORY[0x1E6983278];
  v18[0] = v6;
  v18[1] = v7;
  v18[2] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v11 = [v9 categoryWithIdentifier:@"MTTimerCategory" actions:v10 intentIdentifiers:MEMORY[0x1E695E0F0] options:0x141F00003];

  v12 = MEMORY[0x1E695DFD8];
  v17 = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v14 = [v12 setWithArray:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)bedtimeCategories
{
  v36[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v32 = [v2 localizedStringForKey:@"BEDTIME_GO_TO_BED_ACTION" value:&stru_1F29360E0 table:@"Localizable"];

  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v31 = [v3 localizedStringForKey:@"BEDTIME_SNOOZE_ACTION" value:&stru_1F29360E0 table:@"Localizable"];

  v30 = [MEMORY[0x1E6983250] actionWithIdentifier:@"MTAlarmGoToBedAction" title:v32 options:0];
  v29 = [MEMORY[0x1E6983250] actionWithIdentifier:@"MTAlarmSnoozeAction" title:v31 options:0];
  v4 = MEMORY[0x1E6983278];
  v36[0] = v29;
  v36[1] = v30;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v28 = [v4 categoryWithIdentifier:@"MTBedtimeAlarmCategory" actions:v5 intentIdentifiers:MEMORY[0x1E695E0F0] options:1];

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v27 = [v6 localizedStringForKey:@"ALARM_STOP_ACTION" value:&stru_1F29360E0 table:@"Localizable"];

  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"ALARM_SNOOZE_ACTION" value:&stru_1F29360E0 table:@"Localizable"];

  v9 = MEMORY[0x1E6983250];
  v10 = [MEMORY[0x1E6983260] iconWithSystemImageName:@"stop.circle"];
  v11 = [v9 actionWithIdentifier:@"MTAlarmDismissAction" title:v27 options:0 icon:v10];

  v12 = MEMORY[0x1E6983250];
  v13 = [MEMORY[0x1E6983260] iconWithSystemImageName:@"zzz"];
  v14 = [v12 actionWithIdentifier:@"MTAlarmSnoozeAction" title:v8 options:0 icon:v13];

  v15 = MEMORY[0x1E6983278];
  v35[0] = v14;
  v35[1] = v11;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v17 = MEMORY[0x1E695E0F0];
  v18 = [v15 categoryWithIdentifier:@"MTWakeUpAlarmCategory" actions:v16 intentIdentifiers:MEMORY[0x1E695E0F0] options:0x141F00003];

  v19 = MEMORY[0x1E6983278];
  v34 = v11;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v21 = [v19 categoryWithIdentifier:@"MTWakeUpAlarmNoSnoozeCategory" actions:v20 intentIdentifiers:v17 options:0x141F00003];

  v22 = MEMORY[0x1E695DFA8];
  v33[0] = v28;
  v33[1] = v18;
  v33[2] = v21;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  v24 = [v22 setWithArray:v23];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)notificationCategories
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(MTUserNotificationCenter *)self alarmCategories];
  [v3 unionSet:v4];

  v5 = [(MTUserNotificationCenter *)self timerCategories];
  [v3 unionSet:v5];

  v6 = [(MTUserNotificationCenter *)self bedtimeCategories];
  [v3 unionSet:v6];

  return v3;
}

- (void)postNotificationForScheduledAlarm:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() contentForScheduledAlarm:v7];
  [(MTUserNotificationCenter *)self postNotificationForScheduledAlarm:v7 content:v8 completionBlock:v6];
}

- (unint64_t)conditionalAlertDestination
{
  if (+[MTUtilities mtSBUIIsSystemApertureEnabled])
  {
    return 0;
  }

  else
  {
    return _os_feature_enabled_impl() ^ 1;
  }
}

- (unint64_t)firingNotificationDestinations
{
  v3 = _os_feature_enabled_impl();
  v4 = [(MTUserNotificationCenter *)self conditionalAlertDestination];
  if ((v3 & 1) == 0)
  {
    v4 |= [(MTUserNotificationCenter *)self conditionalListDestination];
  }

  return v4 | 8;
}

- (unint64_t)conditionalListDestination
{
  if (+[MTUtilities mtSBUIIsSystemApertureEnabled])
  {
    return 2;
  }

  else
  {
    return 6;
  }
}

- (unint64_t)conditionalLockScreenDestination
{
  if (+[MTUtilities mtSBUIIsSystemApertureEnabled])
  {
    return 0;
  }

  if (_os_feature_enabled_impl())
  {
    return 0;
  }

  return 2;
}

- (void)postNotificationForScheduledAlarm:(id)a3 content:(id)a4 completionBlock:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MTLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v32 = self;
    v33 = 2114;
    v34 = v8;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ firing %{public}@", buf, 0x16u);
  }

  v12 = [objc_opt_class() requestIdentifierForScheduledAlarm:v8];
  v13 = [v8 trigger];
  v14 = [v13 triggerType] == 6;

  if (v14)
  {
    v15 = [MEMORY[0x1E6983298] requestWithIdentifier:v12 content:v9 trigger:0 destinations:{-[MTUserNotificationCenter conditionalLockScreenDestination](self, "conditionalLockScreenDestination")}];
  }

  else
  {
    v16 = [v8 trigger];
    v17 = [v16 isForNotification];

    if (v17)
    {
      [MEMORY[0x1E6983298] requestWithIdentifier:v12 content:v9 trigger:0 destinations:{-[MTUserNotificationCenter conditionalListDestination](self, "conditionalListDestination") | -[MTUserNotificationCenter conditionalAlertDestination](self, "conditionalAlertDestination")}];
    }

    else
    {
      [MEMORY[0x1E6983298] requestWithIdentifier:v12 content:v9 trigger:0 destinations:{-[MTUserNotificationCenter firingNotificationDestinations](self, "firingNotificationDestinations")}];
    }
    v15 = ;
  }

  v18 = v15;
  objc_initWeak(&location, self);
  kdebug_trace();
  v19 = MTLogForCategory(3);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v32 = self;
    v33 = 2114;
    v34 = v18;
    _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ adding request %{public}@", buf, 0x16u);
  }

  v20 = [(MTUserNotificationCenter *)self _notificationCenterForScheduledAlarm:v8];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __86__MTUserNotificationCenter_postNotificationForScheduledAlarm_content_completionBlock___block_invoke;
  v25[3] = &unk_1E7B0E9F8;
  objc_copyWeak(&v29, &location);
  v21 = v8;
  v26 = v21;
  v22 = v12;
  v27 = v22;
  v23 = v10;
  v28 = v23;
  [v20 addNotificationRequest:v18 withCompletionHandler:v25];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);

  v24 = *MEMORY[0x1E69E9840];
}

void __86__MTUserNotificationCenter_postNotificationForScheduledAlarm_content_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [*(a1 + 32) scheduleable];
  if (v3)
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = [v5 alarmID];
      v18 = 138543874;
      v19 = WeakRetained;
      v20 = 2114;
      v21 = v17;
      v22 = 2114;
      v23 = v3;
      _os_log_error_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_ERROR, "%{public}@ failed to fire %{public}@ with error %{public}@", &v18, 0x20u);
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to post alarm user notifiation"];
    [MTAnalytics sendCriticalEvent:v7];
  }

  else
  {
    kdebug_trace();
    v8 = MTLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 alarmID];
      v18 = 138543618;
      v19 = WeakRetained;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ fired %{public}@", &v18, 0x16u);
    }

    v10 = MTLogForCategory(3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [WeakRetained reportingDelegate];
      v18 = 138543618;
      v19 = WeakRetained;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ telling reporting delegate %{public}@", &v18, 0x16u);
    }

    v7 = [WeakRetained reportingDelegate];
    v12 = [v5 alarmIDString];
    v13 = *(a1 + 40);
    v14 = [v13 un_logDigest];
    [v7 didPostNotificationForAlarm:v12 fullNotificationId:v13 shortNotificationId:v14 sender:WeakRetained];
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)dismissRelatedNotificationsForScheduledAlarm:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = self;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing related notifications for %{public}@", &v16, 0x16u);
  }

  v6 = [v4 scheduleable];
  v7 = [v4 trigger];
  v8 = [v7 isForAlert];

  if (v8)
  {
    v9 = [v4 scheduleable];
    [(MTUserNotificationCenter *)self dismissNotificationsForAlarm:v9 includeMainIdentifier:0];
  }

  else
  {
    v9 = objc_opt_new();
    v10 = [v4 trigger];
    v11 = [v10 isWakeUpRelated];

    if (v11)
    {
      v12 = objc_opt_class();
      v13 = [v6 alarmIDString];
      v14 = [v12 _goToBedIdentifier:v13];
      [v9 addObject:v14];
    }

    [(MTUserNotificationCenter *)self dismissNotificationsWithIdentifiers:v9];
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)_allIdentifiersForAlarm:(id)a3 includeMainIdentifier:(BOOL)a4 includeSnooze:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = objc_opt_new();
  if (v5)
  {
    v9 = objc_opt_class();
    v10 = [v7 alarmIDString];
    v11 = [v9 _snoozeCountdownIdentifier:v10];
    v21[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [v8 addObjectsFromArray:v12];
  }

  if (v6)
  {
    v13 = [v7 alarmIDString];
    [v8 addObject:v13];
  }

  if ([v7 isSleepAlarm])
  {
    v14 = objc_opt_class();
    v15 = [v7 alarmIDString];
    v16 = [v14 _goToBedIdentifier:v15];
    v20 = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    [v8 addObjectsFromArray:v17];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)dismissNotificationsForAlarm:(id)a3 dismissAction:(unint64_t)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MTDismissAlarmActionDescription(a4);
    *buf = 138543874;
    v26 = self;
    v27 = 2114;
    v28 = v6;
    v29 = 2114;
    v30 = v8;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing notifications for %{public}@ (%{public}@)", buf, 0x20u);
  }

  if (v6)
  {
    if (a4 - 1 >= 2)
    {
      if (a4 != 6)
      {
        v14 = [objc_opt_class() _allIdentifiersForAlarm:v6];
        goto LABEL_12;
      }

      v21 = objc_opt_class();
      v10 = [v6 alarmIDString];
      v11 = [v21 _snoozeCountdownIdentifier:v10];
      v23 = v11;
      v12 = MEMORY[0x1E695DEC8];
      v13 = &v23;
    }

    else
    {
      v9 = objc_opt_class();
      v10 = [v6 alarmIDString];
      v11 = [v9 _goToBedIdentifier:v10];
      v24 = v11;
      v12 = MEMORY[0x1E695DEC8];
      v13 = &v24;
    }

    v14 = [v12 arrayWithObjects:v13 count:{1, v23, v24}];

LABEL_12:
    [(MTUserNotificationCenter *)self dismissNotificationsWithIdentifiers:v14];
    goto LABEL_13;
  }

  v14 = MTLogForCategory(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(MTUserNotificationCenter *)self dismissNotificationsForAlarm:v14 includeMainIdentifier:v15 includeSnooze:v16, v17, v18, v19, v20];
  }

LABEL_13:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)dismissNotificationsWithIdentifiers:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing notifications with identifiers %{public}@", &v7, 0x16u);
  }

  [(MTUserNotificationCenter *)self tearDownNotificationsForEventIdentifiers:v4];
  [MTCFUserNotificationPoster cancelNotificationsWithIdentifiers:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)tearDownNotificationsForEventIdentifiers:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ tearDownNotificationsForEventIdentifiers %{public}@", buf, 0x16u);
  }

  v6 = [(NSDictionary *)self->_notificationCenters allValues];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__MTUserNotificationCenter_tearDownNotificationsForEventIdentifiers___block_invoke;
  v9[3] = &unk_1E7B0EA90;
  v10 = v4;
  v11 = self;
  v7 = v4;
  [v6 na_each:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __69__MTUserNotificationCenter_tearDownNotificationsForEventIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__MTUserNotificationCenter_tearDownNotificationsForEventIdentifiers___block_invoke_2;
  v7[3] = &unk_1E7B0EA68;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v10 = v3;
  v6 = v3;
  [v6 getDeliveredNotificationsWithCompletionHandler:v7];
}

void __69__MTUserNotificationCenter_tearDownNotificationsForEventIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__MTUserNotificationCenter_tearDownNotificationsForEventIdentifiers___block_invoke_3;
  v9[3] = &unk_1E7B0EA20;
  v10 = *(a1 + 32);
  v4 = [a2 na_filter:v9];
  v5 = [v4 na_map:&__block_literal_global_29];

  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Tearing down %{public}@", buf, 0x16u);
  }

  [*(a1 + 48) removeDeliveredNotificationsWithIdentifiers:v5];
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __69__MTUserNotificationCenter_tearDownNotificationsForEventIdentifiers___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 request];
  v4 = [v3 identifier];
  v5 = [v4 mtStringByRemovingNotificationDate];

  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__MTUserNotificationCenter_tearDownNotificationsForEventIdentifiers___block_invoke_4;
  v10[3] = &unk_1E7B0C848;
  v11 = v5;
  v7 = v5;
  v8 = [v6 na_any:v10];

  return v8;
}

uint64_t __69__MTUserNotificationCenter_tearDownNotificationsForEventIdentifiers___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 mtStringByRemovingNotificationDate];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

id __69__MTUserNotificationCenter_tearDownNotificationsForEventIdentifiers___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 request];
  v3 = [v2 identifier];

  return v3;
}

- (void)postNotificationForScheduledTimer:(id)a3 completionBlock:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v25 = self;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ firing %{public}@", buf, 0x16u);
  }

  v9 = [v6 scheduleable];
  v10 = [v9 sound];
  v11 = [v10 interruptAudio];

  if (v11)
  {
    [(MTUserNotificationCenter *)self interruptAudioAndLockDeviceWithCompletionBlock:v7];
  }

  else
  {
    v12 = [objc_opt_class() contentForScheduledTimer:v6];
    v13 = MEMORY[0x1E6983298];
    v14 = [v9 timerIDString];
    v15 = [v13 requestWithIdentifier:v14 content:v12 trigger:0 destinations:{-[MTUserNotificationCenter firingNotificationDestinations](self, "firingNotificationDestinations")}];

    objc_initWeak(&location, self);
    kdebug_trace();
    v16 = MTLogForCategory(4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = self;
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ adding request %{public}@", buf, 0x16u);
    }

    v17 = [(MTUserNotificationCenter *)self _notificationCenterForScheduledTimer];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __78__MTUserNotificationCenter_postNotificationForScheduledTimer_completionBlock___block_invoke;
    v19[3] = &unk_1E7B0EAB8;
    objc_copyWeak(&v22, &location);
    v20 = v9;
    v21 = v7;
    [v17 addNotificationRequest:v15 withCompletionHandler:v19];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __78__MTUserNotificationCenter_postNotificationForScheduledTimer_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v3)
  {
    v5 = MTLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) timerID];
      v11 = 138543874;
      v12 = WeakRetained;
      v13 = 2114;
      v14 = v10;
      v15 = 2114;
      v16 = v3;
      _os_log_error_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_ERROR, "%{public}@ failed to fire %{public}@ with error %{public}@", &v11, 0x20u);
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to post timer user notifiation"];
    [MTAnalytics sendCriticalEvent:v6];
  }

  else
  {
    kdebug_trace();
    v6 = MTLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) timerID];
      v11 = 138543618;
      v12 = WeakRetained;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ fired %{public}@", &v11, 0x16u);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)interruptAudioAndLockDeviceWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B3790] mtMainThreadScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__MTUserNotificationCenter_interruptAudioAndLockDeviceWithCompletionBlock___block_invoke;
  v7[3] = &unk_1E7B0CA00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

uint64_t __75__MTUserNotificationCenter_interruptAudioAndLockDeviceWithCompletionBlock___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [getTUCallCenterClass() sharedInstance];
  v3 = [v2 currentCallCount];

  if (!v3 || v3 == 1 && ([getTUCallCenterClass() sharedInstance], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "incomingCall"), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = MTLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ interrupting audio", &buf, 0xCu);
    }

    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v8 = getMRMediaRemoteSendCommandSymbolLoc_ptr;
    v18 = getMRMediaRemoteSendCommandSymbolLoc_ptr;
    if (!getMRMediaRemoteSendCommandSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v20 = __getMRMediaRemoteSendCommandSymbolLoc_block_invoke;
      v21 = &unk_1E7B0C600;
      v22 = &v15;
      __getMRMediaRemoteSendCommandSymbolLoc_block_invoke(&buf);
      v8 = v16[3];
    }

    _Block_object_dispose(&v15, 8);
    if (!v8)
    {
      __75__MTUserNotificationCenter_interruptAudioAndLockDeviceWithCompletionBlock___block_invoke_cold_1();
    }

    v8(1, 0);
    v9 = MTLogForCategory(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ locking device", &buf, 0xCu);
    }

    SBSLockDevice();
  }

  else
  {
    v11 = MTLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ not interrupting audio or locking device because we're in a call", &buf, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dismissNotificationsForTimer:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = self;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing %{public}@", buf, 0x16u);
  }

  if (v4)
  {
    v6 = [(MTUserNotificationCenter *)self _notificationCenterForScheduledTimer];
    v7 = [v4 timerIDString];
    v16 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    [v6 removeDeliveredNotificationsWithIdentifiers:v8];
  }

  else
  {
    v6 = MTLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MTUserNotificationCenter *)self dismissNotificationsForTimer:v6, v9, v10, v11, v12, v13, v14];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)requestIdentifierForScheduledAlarm:(id)a3
{
  v4 = a3;
  v5 = [v4 scheduleable];
  v6 = [v5 alarmIDString];

  v7 = [v4 trigger];
  v8 = [v7 isForGoToBed];

  if (v8)
  {
    v9 = [a1 _goToBedIdentifier:v6];
  }

  else
  {
    v10 = [v4 trigger];
    v11 = [v10 triggerType];

    if (v11 != 6)
    {
      goto LABEL_6;
    }

    v9 = [a1 _snoozeCountdownIdentifier:v6];
  }

  v12 = v9;

  v6 = v12;
LABEL_6:
  v13 = [v4 trigger];
  v14 = [v13 triggerDate];
  v15 = [v6 mtStringByAppendingNotificationDate:v14];

  return v15;
}

+ (id)notificationPrefixes
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"MTBedtimeAlarm";
  v5[1] = @"MTSnoozeCountdown";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)contentForScheduledAlarm:(id)a3
{
  v4 = a3;
  v5 = [a1 _mutableContentForScheduledAlarmWithCommonSettings:v4];
  [a1 _setSpecificContent:v5 forScheduledAlarm:v4];

  return v5;
}

+ (id)_mutableContentForScheduledAlarmWithCommonSettings:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [objc_opt_class() categoryForScheduledAlarm:v3];
  [v4 setCategoryIdentifier:v5];

  v6 = objc_opt_class();
  v7 = [v3 scheduleable];
  if ([v7 isSleepAlarm])
  {
    v8 = @"clock-sleep-alarm";
  }

  else
  {
    v8 = @"clock-alarm";
  }

  v9 = [v6 launchURLForScheme:v8];
  [v4 setDefaultActionURL:v9];

  v10 = [objc_opt_class() userInfoForAlarm:v3];

  [v4 setUserInfo:v10];

  return v4;
}

+ (void)_setSpecificContent:(id)a3 forScheduledAlarm:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v6 trigger];
  v8 = [v7 isForGoToBed];

  if (v8)
  {
    [a1 _setSpecificContent:v11 forGoToBedNotification:v6];
  }

  else
  {
    v9 = [v6 trigger];
    v10 = [v9 triggerType];

    if (v10 == 6)
    {
      [a1 _setSpecificContent:v11 forSnoozeCountdownNotification:v6];
    }

    else
    {
      [a1 _setSpecificContent:v11 forNormalScheduledAlarm:v6];
    }
  }
}

+ (void)_setSpecificContent:(id)a3 forGoToBedNotification:(id)a4
{
  v6 = a3;
  [a1 _setGoToBedTitleAndBody:v6 forGoToBedNotification:a4];
  v7 = [MTSound defaultSoundForCategory:2];
  v8 = [v7 unSoundForCategory:2];
  [v6 setSound:v8];

  v9 = +[MTUserDefaults sharedUserDefaults];
  v10 = [v9 integerForKey:@"MTBedtimeExpirationDuration" defaultValue:90];

  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:(60 * v10)];
  [v6 setExpirationDate:v11];
}

+ (void)_setSpecificContent:(id)a3 forSnoozeCountdownNotification:(id)a4
{
  v6 = a4;
  v7 = a3;
  [a1 _setSnoozeCountdownTitleAndBody:v7 forSnoozeCountdownNotification:v6];
  [v7 setShouldSuppressScreenLightUp:1];
  [v7 setShouldPreventNotificationDismissalAfterDefaultAction:1];
  [v7 setShouldIgnoreDoNotDisturb:1];
  v9 = [v6 trigger];

  v8 = [v9 triggerDate];
  [v7 setExpirationDate:v8];
}

+ (void)_setSpecificContent:(id)a3 forNormalScheduledAlarm:(id)a4
{
  v5 = a3;
  v10 = [a4 scheduleable];
  v6 = [v10 displayTitle];
  [v5 setBody:v6];

  v7 = [v10 sound];
  if ([v10 isSleepAlarm])
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v7 unSoundForCategory:v8];
  [v5 setSound:v9];

  [v5 setShouldIgnoreDoNotDisturb:1];
  [v5 setShouldBackgroundDefaultAction:1];
  [v5 setShouldPreemptPresentedNotification:1];
}

+ (id)_durationComponentsFormatter
{
  if (_durationComponentsFormatter_onceToken != -1)
  {
    +[MTUserNotificationCenter _durationComponentsFormatter];
  }

  v3 = _durationComponentsFormatter_theDurationFormatter;

  return v3;
}

uint64_t __56__MTUserNotificationCenter__durationComponentsFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _durationComponentsFormatter_theDurationFormatter;
  _durationComponentsFormatter_theDurationFormatter = v0;

  [_durationComponentsFormatter_theDurationFormatter setUnitsStyle:3];
  v2 = _durationComponentsFormatter_theDurationFormatter;

  return [v2 setAllowedUnits:96];
}

+ (id)_timeFormatter
{
  if (_timeFormatter_onceToken != -1)
  {
    +[MTUserNotificationCenter _timeFormatter];
  }

  v3 = _timeFormatter__timeFormatter;

  return v3;
}

uint64_t __42__MTUserNotificationCenter__timeFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _timeFormatter__timeFormatter;
  _timeFormatter__timeFormatter = v0;

  v2 = _timeFormatter__timeFormatter;

  return [v2 setTimeStyle:1];
}

+ (void)_setGoToBedTitleAndBody:(id)a3 forGoToBedNotification:(id)a4
{
  v6 = MEMORY[0x1E696AAE8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"TIME_FOR_BED_TITLE" value:&stru_1F29360E0 table:@"Localizable"];
  [v8 setTitle:v10];

  v11 = [v7 scheduleable];

  v12 = [a1 _wakeUpAlarmStringForAlarm:v11];

  [v8 setBody:v12];
}

+ (id)_wakeUpAlarmStringForAlarm:(id)a3
{
  v4 = a3;
  if ([v4 isEnabled])
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
    v6 = [v4 dateComponents];
    v7 = [v5 dateFromComponents:v6];

    v8 = [a1 _timeFormatter];
    v9 = [v8 stringFromDate:v7];

    v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"TIME_FOR_BED_ALARM_ON_MESSAGE_FORMAT"];
    v11 = [MEMORY[0x1E695DEE8] currentCalendar];
    v12 = [v11 mtDateRequiresSingularTimeString:v7];

    if (v12)
    {
      [v10 appendString:@"_SINGULAR"];
    }

    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:v10 value:&stru_1F29360E0 table:@"Localizable"];

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:v14, v9];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = [v7 localizedStringForKey:@"TIME_FOR_BED_ALARM_OFF_MESSAGE" value:&stru_1F29360E0 table:@"Localizable"];
  }

  return v15;
}

+ (void)_setSnoozeCountdownTitleAndBody:(id)a3 forSnoozeCountdownNotification:(id)a4
{
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v7 = [v4 bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"ALARM_SNOOZING_TITLE" value:&stru_1F29360E0 table:@"Localizable"];
  [v5 setTitle:v6];
}

+ (id)contentForScheduledTimer:(id)a3
{
  v3 = a3;
  v4 = [v3 scheduleable];
  v5 = objc_opt_new();
  v6 = [v4 displayTitle];
  [v5 setBody:v6];

  v7 = [v4 sound];
  v8 = [v7 unSoundForCategory:1];
  [v5 setSound:v8];

  v9 = [objc_opt_class() categoryForScheduledTimer:v3];
  [v5 setCategoryIdentifier:v9];

  [v5 setShouldIgnoreDoNotDisturb:1];
  v10 = [objc_opt_class() launchURLForScheme:@"clock-timer"];
  [v5 setDefaultActionURL:v10];

  v11 = [objc_opt_class() userInfoForTimer:v3];

  [v5 setUserInfo:v11];
  [v5 setShouldBackgroundDefaultAction:1];
  [v5 setShouldPreemptPresentedNotification:1];

  return v5;
}

+ (id)categoryForScheduledAlarm:(id)a3
{
  v3 = a3;
  v4 = [v3 trigger];
  v5 = [v4 triggerType];

  v6 = 0;
  if (v5 <= 3)
  {
    if (v5 >= 2)
    {
      if ((v5 - 2) >= 2)
      {
        goto LABEL_16;
      }

      v8 = MTBedtimeAlarmCategory;
      goto LABEL_15;
    }

    v9 = [v3 scheduleable];
    v10 = [v9 allowsSnooze];
    v11 = MTAlarmCategory;
    v12 = MTAlarmNoSnoozeCategory;
    goto LABEL_10;
  }

  if ((v5 - 4) < 2)
  {
    v9 = [v3 scheduleable];
    v10 = [v9 allowsSnooze];
    v11 = MTWakeUpAlarmCategory;
    v12 = MTWakeUpAlarmNoSnoozeCategory;
LABEL_10:
    if (!v10)
    {
      v11 = v12;
    }

    v6 = *v11;

    goto LABEL_16;
  }

  if ((v5 - 7) < 2)
  {
    v7 = [v3 trigger];
    NSLog(&cfstr_UnexpectedTrig.isa, [v7 triggerType], v3);

    v6 = 0;
    goto LABEL_16;
  }

  if (v5 == 6)
  {
    v8 = MTSnoozeAlarmCountdownCategory;
LABEL_15:
    v6 = *v8;
  }

LABEL_16:

  return v6;
}

+ (id)categoryForScheduledTimer:(id)a3
{
  v3 = a3;
  v4 = [v3 trigger];
  v5 = [v4 triggerType];

  if ((v5 - 1) < 8)
  {
    v6 = [v3 trigger];
    NSLog(&cfstr_UnexpectedTrig_0.isa, [v6 triggerType], v3);

LABEL_3:
    v7 = 0;
    goto LABEL_4;
  }

  if (v5)
  {
    goto LABEL_3;
  }

  v7 = @"MTTimerCategory";
LABEL_4:

  return v7;
}

+ (id)userInfoForAlarm:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [v3 trigger];
  v6 = [v5 triggerDate];

  if (v6)
  {
    [v4 setObject:v6 forKey:@"MTScheduledFireDate"];
  }

  v7 = [v3 trigger];
  if ([v7 isScheduled])
  {
    v8 = [v3 scheduleable];
    v9 = [v8 allowsSnooze];

    if (v9)
    {
      [v4 setObject:MEMORY[0x1E695E118] forKey:@"MTSnoozeable"];
    }
  }

  else
  {
  }

  v10 = [v3 trigger];
  v11 = [v10 isForAlert];

  if (v11)
  {
    v12 = MEMORY[0x1E696AD98];
    v13 = [v3 scheduleable];
    v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "silentModeOptions")}];
    [v4 setObject:v14 forKey:@"MTSilentModeOptions"];
  }

  v26 = &unk_1F2965F18;
  v15 = [v3 scheduleable];
  v16 = [v15 alarmIDString];
  v27[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v18 = getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr;
  v25 = getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr;
  if (!getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_block_invoke;
    v21[3] = &unk_1E7B0C600;
    v21[4] = &v22;
    __getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_block_invoke(v21);
    v18 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v18)
  {
    +[MTUserNotificationCenter userInfoForAlarm:];
  }

  [v4 setObject:v17 forKeyedSubscript:*v18];

  v19 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)userInfoForTimer:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = MEMORY[0x1E696AD98];
  v6 = [v3 scheduleable];
  [v6 duration];
  v7 = [v5 numberWithDouble:?];
  [v4 setObject:v7 forKey:@"MTTimerDuration"];

  v8 = [v3 scheduleable];
  v9 = [v8 title];
  if ([v9 length])
  {
    v10 = [v3 scheduleable];
    v11 = [v10 title];
    v12 = [v11 isEqualToString:@"CURRENT_TIMER"];

    if (v12)
    {
      goto LABEL_5;
    }

    v8 = [v3 scheduleable];
    v9 = [v8 title];
    [v4 setObject:v9 forKey:@"MTTimerUserTitle"];
  }

LABEL_5:

  return v4;
}

+ (id)launchURLForScheme:(id)a3
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", a3, @"default"];
  v5 = [v3 URLWithString:v4];

  return v5;
}

- (void)removeAllDeliveredNotifications
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ removing all delivered notifications.", &v7, 0xCu);
  }

  v4 = [(MTUserNotificationCenter *)self notificationCenters];
  v5 = [v4 allValues];
  [v5 na_each:&__block_literal_global_121];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)postBedtimeNotificationForAlarm:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = [MTTrigger triggerWithDate:a4 triggerType:2];
  v8 = [MTScheduledObject scheduledObjectForScheduleable:v6 trigger:v7];

  [(MTUserNotificationCenter *)self postNotificationForScheduledAlarm:v8 completionBlock:0];
}

- (void)retrieveDelieveredNotificationForId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTUserNotificationCenter *)self _notificationCenterForScheduledAlarm:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__MTUserNotificationCenter_retrieveDelieveredNotificationForId_completion___block_invoke;
  v11[3] = &unk_1E7B0EB00;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 getDeliveredNotificationsWithCompletionHandler:v11];
}

void __75__MTUserNotificationCenter_retrieveDelieveredNotificationForId_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v14 = v5;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ fetched delivered notifications: %{public}@", buf, 0x16u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__MTUserNotificationCenter_retrieveDelieveredNotificationForId_completion___block_invoke_124;
  v11[3] = &unk_1E7B0EA20;
  v12 = *(a1 + 40);
  v6 = [v3 na_filter:v11];
  v7 = [v6 firstObject];

  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138543618;
    v14 = v9;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ delivered filtered notification: %{public}@", buf, 0x16u);
  }

  if (v7)
  {
    (*(*(a1 + 48) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __75__MTUserNotificationCenter_retrieveDelieveredNotificationForId_completion___block_invoke_124(uint64_t a1, void *a2)
{
  v3 = [a2 request];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

+ (BOOL)isPairedWatchIncompatibleWithAlarmKit
{
  v2 = +[MTPairedDeviceListener sharedListener];
  v3 = [v2 hasActivePairedDevice];

  if (v3)
  {
    v4 = +[MTPairedDeviceListener sharedListener];
    v5 = [v4 hasActivePairedDeviceSupportingAlarmKit] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)postNotificationForAlarmKitAlarm:(id)a3 completionBlock:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v16 = 138543618;
    v17 = self;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ posting notification for alarmkit alarm: %{public}@", &v16, 0x16u);
  }

  v9 = objc_opt_new();
  [v9 setCategoryIdentifier:@"MTAlarmCategory"];
  v10 = [objc_opt_class() launchURLForScheme:@"clock-alarm"];
  [v9 setDefaultActionURL:v10];

  v11 = [objc_opt_class() commonAlarmKitPayload:v6];
  v12 = [v11 mutableCopy];

  v13 = [v6 scheduledFireDate];
  [v12 na_safeSetObject:v13 forKey:@"MTScheduledFireDate"];

  [v12 setObject:MEMORY[0x1E695E110] forKey:@"MTSnoozeable"];
  v14 = [v12 copy];
  [v9 setUserInfo:v14];

  [objc_opt_class() setCommonContent:v9 alert:v6];
  [(MTUserNotificationCenter *)self postNotificationForAlarmKitAlarm:v6 content:v9 completionBlock:v7];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)dismissNotificationsForAlarmKitAlertWithId:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ dismissing notifications for alarmkit alert: %{public}@", buf, 0x16u);
  }

  v8 = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  [(MTUserNotificationCenter *)self dismissNotificationsWithIdentifiers:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)postNotificationForAlarmKitTimer:(id)a3 completionBlock:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v17 = 138543618;
    v18 = self;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ posting notification for alarmkit timer: %{public}@", &v17, 0x16u);
  }

  v9 = objc_opt_new();
  [v9 setCategoryIdentifier:@"MTTimerCategory"];
  v10 = [objc_opt_class() launchURLForScheme:@"clock-alarm"];
  [v9 setDefaultActionURL:v10];

  v11 = [objc_opt_class() commonAlarmKitPayload:v6];
  v12 = [v11 mutableCopy];

  v13 = MEMORY[0x1E696AD98];
  [v6 duration];
  v14 = [v13 numberWithDouble:?];
  [v12 na_safeSetObject:v14 forKey:@"MTTimerDuration"];

  v15 = [v12 copy];
  [v9 setUserInfo:v15];

  [objc_opt_class() setCommonContent:v9 alert:v6];
  [(MTUserNotificationCenter *)self postNotificationForAlarmKitTimer:v6 content:v9 completionBlock:v7];

  v16 = *MEMORY[0x1E69E9840];
}

+ (id)commonAlarmKitPayload:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 identifier];
  v6 = [v5 UUIDString];
  [v4 na_safeSetObject:v6 forKey:@"MTAlarmKitIdentifier"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "hasSecondaryAction")}];
  [v4 setObject:v7 forKey:@"MTAlarmKitHasSecondaryAction"];

  v8 = [v3 secondaryButtonLabel];

  if (v8)
  {
    v9 = [v3 secondaryButtonLabel];
    [v4 na_safeSetObject:v9 forKey:@"MTAlarmKitSecondaryButtonLabel"];
  }

  v10 = [v3 tintColor];
  [v4 na_safeSetObject:v10 forKey:@"MTAlarmKitTintColor"];

  v11 = [v3 bundleID];
  [v4 na_safeSetObject:v11 forKey:@"MTAlarmKitBundleId"];

  v12 = [v3 localizedAppName];
  [v4 na_safeSetObject:v12 forKey:@"MTAlarmKitLocalizedAppName"];

  [v4 setObject:MEMORY[0x1E695E118] forKey:@"MTAlarmKitIsThirdParty"];
  v13 = [v4 copy];

  return v13;
}

+ (void)setCommonContent:(id)a3 alert:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [a1 isPairedWatchIncompatibleWithAlarmKit];
  v8 = +[MTUtilities isCarPlayConnected];
  v9 = v8;
  if ((v7 & 1) != 0 || v8)
  {
    [v17 setCategoryIdentifier:@"MTAlarmNoSnoozeCategory"];
    v11 = [v6 localizedAppName];
    [v17 setBody:v11];

    if (!v9)
    {
      goto LABEL_7;
    }

    v12 = [v6 displayTitle];
    [v17 setTitle:v12];

    v13 = [v6 localizedAppName];
    [v17 setSubtitle:v13];

    v14 = MEMORY[0x1E6983290];
    v10 = [v6 bundleID];
    v15 = [v14 iconForApplicationIdentifier:v10];
    [v17 setIcon:v15];
  }

  else
  {
    v10 = [v6 displayTitle];
    [v17 setBody:v10];
  }

LABEL_7:
  [v17 setShouldIgnoreDoNotDisturb:1];
  [v17 setShouldBackgroundDefaultAction:1];
  [v17 setShouldPreemptPresentedNotification:1];
  v16 = [MEMORY[0x1E6983238] soundWithAlertType:17];
  [v16 setToneIdentifier:*MEMORY[0x1E69DA928]];
  [v17 setSound:v16];
}

- (void)postNotificationForAlarmKitAlarm:(id)a3 content:(id)a4 completionBlock:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MTLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = self;
    v31 = 2114;
    v32 = v8;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ firing alarmkit alarm %{public}@", buf, 0x16u);
  }

  v12 = [v8 identifier];
  v13 = [v12 UUIDString];
  v14 = [v8 scheduledFireDate];
  v15 = [v13 mtStringByAppendingNotificationDate:v14];

  v16 = [MEMORY[0x1E6983298] requestWithIdentifier:v15 content:v9 trigger:0 destinations:8];
  objc_initWeak(&location, self);
  kdebug_trace();
  v17 = MTLogForCategory(3);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = self;
    v31 = 2114;
    v32 = v16;
    _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ adding request %{public}@", buf, 0x16u);
  }

  v18 = [(MTUserNotificationCenter *)self _notificationCenterForScheduledAlarm:0];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __85__MTUserNotificationCenter_postNotificationForAlarmKitAlarm_content_completionBlock___block_invoke;
  v23[3] = &unk_1E7B0E9F8;
  objc_copyWeak(&v27, &location);
  v19 = v8;
  v24 = v19;
  v20 = v15;
  v25 = v20;
  v21 = v10;
  v26 = v21;
  [v18 addNotificationRequest:v16 withCompletionHandler:v23];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  v22 = *MEMORY[0x1E69E9840];
}

void __85__MTUserNotificationCenter_postNotificationForAlarmKitAlarm_content_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v3)
  {
    v5 = MTLogForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v17 = [*(a1 + 32) identifier];
      v18 = 138543874;
      v19 = WeakRetained;
      v20 = 2114;
      v21 = v17;
      v22 = 2114;
      v23 = v3;
      _os_log_error_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_ERROR, "%{public}@ failed to fire %{public}@ with error %{public}@", &v18, 0x20u);
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to post alarm user notifiation"];
    [MTAnalytics sendCriticalEvent:v6];
  }

  else
  {
    kdebug_trace();
    v7 = MTLogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) identifier];
      v18 = 138543618;
      v19 = WeakRetained;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ fired alarmkit alarm %{public}@", &v18, 0x16u);
    }

    v9 = MTLogForCategory(3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [WeakRetained reportingDelegate];
      v18 = 138543618;
      v19 = WeakRetained;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ telling reporting delegate %{public}@", &v18, 0x16u);
    }

    v6 = [WeakRetained reportingDelegate];
    v11 = [*(a1 + 32) identifier];
    v12 = [v11 UUIDString];
    v13 = *(a1 + 40);
    v14 = [v13 un_logDigest];
    [v6 didPostNotificationForAlarm:v12 fullNotificationId:v13 shortNotificationId:v14 sender:WeakRetained];
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)postNotificationForAlarmKitTimer:(id)a3 content:(id)a4 completionBlock:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MTLogForCategory(4);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v27 = self;
    v28 = 2114;
    v29 = v8;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ firing alarmkit timer %{public}@", buf, 0x16u);
  }

  v12 = MEMORY[0x1E6983298];
  v13 = [v8 identifier];
  v14 = [v13 UUIDString];
  v15 = [v12 requestWithIdentifier:v14 content:v9 trigger:0 destinations:8];

  objc_initWeak(&location, self);
  kdebug_trace();
  v16 = MTLogForCategory(4);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v27 = self;
    v28 = 2114;
    v29 = v15;
    _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ adding request %{public}@", buf, 0x16u);
  }

  v17 = [(MTUserNotificationCenter *)self _notificationCenterForScheduledTimer];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __85__MTUserNotificationCenter_postNotificationForAlarmKitTimer_content_completionBlock___block_invoke;
  v21[3] = &unk_1E7B0EAB8;
  objc_copyWeak(&v24, &location);
  v18 = v8;
  v22 = v18;
  v19 = v10;
  v23 = v19;
  [v17 addNotificationRequest:v15 withCompletionHandler:v21];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  v20 = *MEMORY[0x1E69E9840];
}

void __85__MTUserNotificationCenter_postNotificationForAlarmKitTimer_content_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v3)
  {
    v5 = MTLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) identifier];
      v11 = 138543874;
      v12 = WeakRetained;
      v13 = 2114;
      v14 = v10;
      v15 = 2114;
      v16 = v3;
      _os_log_error_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_ERROR, "%{public}@ failed to fire alarmkit timer %{public}@ with error %{public}@", &v11, 0x20u);
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to post alarmkit timer user notifiation"];
    [MTAnalytics sendCriticalEvent:v6];
  }

  else
  {
    kdebug_trace();
    v6 = MTLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) identifier];
      v11 = 138543618;
      v12 = WeakRetained;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ fired alarmkit timer %{public}@", &v11, 0x16u);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (MTEventReporting)reportingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reportingDelegate);

  return WeakRetained;
}

- (void)dismissNotificationsForAlarm:(uint64_t)a3 includeMainIdentifier:(uint64_t)a4 includeSnooze:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, a2, a3, "%{public}@ alarm is nil", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __75__MTUserNotificationCenter_interruptAudioAndLockDeviceWithCompletionBlock___block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean MTMRMediaRemoteSendCommand(MRMediaRemoteCommand, CFDictionaryRef)"}];
  [v0 handleFailureInFunction:v1 file:@"MTUserNotificationCenter.m" lineNumber:62 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)dismissNotificationsForTimer:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, a2, a3, "%{public}@ timer is nil", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)userInfoForAlarm:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getBLTBulletinContextKeyWatchLegacyMapKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"MTUserNotificationCenter_Internal.h" lineNumber:17 description:{@"%s", dlerror()}];

  __break(1u);
}

@end