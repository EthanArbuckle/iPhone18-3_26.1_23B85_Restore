@interface MTSleepCoordinator
- (BOOL)isUserAsleep;
- (MTSleepCoordinator)initWithAlarmStorage:(id)storage;
- (MTSleepCoordinator)initWithAlarmStorage:(id)storage currentDateProvider:(id)provider;
- (id)gatherDiagnostics;
- (unint64_t)sleepTimeOutMinutes;
- (void)_notifyObserversForSleepAlarmChange:(id)change;
- (void)handleBedtimeForAlarm:(id)alarm date:(id)date;
- (void)handleBedtimeReminderForAlarm:(id)alarm date:(id)date;
- (void)handleConfirmationOfGoToBedNotificationForAlarm:(id)alarm date:(id)date;
- (void)handleDismissForAlarm:(id)alarm dismissAction:(unint64_t)action date:(id)date;
- (void)handleNotification:(id)notification ofType:(int64_t)type completion:(id)completion;
- (void)handleSleepSessionEndedForAlarm:(id)alarm date:(id)date reason:(unint64_t)reason;
- (void)handleSnoozeForAlarm:(id)alarm date:(id)date;
- (void)handleSnoozeOfGoToBedNotificationForAlarm:(id)alarm date:(id)date;
- (void)handleWakeUpAlarmForAlarm:(id)alarm date:(id)date;
- (void)handleWakeUpTimeForAlarm:(id)alarm date:(id)date;
- (void)notifyObserversForSleepAlarmChange:(id)change;
- (void)notifyObserversForSleepAlarmChangeIfNecessary:(id)necessary;
- (void)pairedDevicePreferencesChanged:(id)changed;
- (void)printDiagnostics;
- (void)sleepSessionTracker:(id)tracker sessionDidComplete:(id)complete;
- (void)source:(id)source didAddAlarms:(id)alarms;
- (void)source:(id)source didDismissAlarm:(id)alarm dismissAction:(unint64_t)action;
- (void)source:(id)source didFireAlarm:(id)alarm triggerType:(unint64_t)type;
- (void)source:(id)source didRemoveAlarms:(id)alarms;
- (void)source:(id)source didSnoozeAlarm:(id)alarm snoozeAction:(unint64_t)action;
- (void)source:(id)source didUpdateAlarms:(id)alarms;
- (void)stateMachine:(id)machine dismissWakeUpAlarm:(id)alarm dismissAction:(unint64_t)action;
- (void)stateMachine:(id)machine shouldScheduleAlarmTimeoutForSecondsFromNow:(double)now;
- (void)stateMachineUserWentToBed:(id)bed;
- (void)stateMachineUserWokeUp:(id)up;
- (void)timeListener:(id)listener didDetectSignificantTimeChangeWithCompletionBlock:(id)block;
- (void)updateSleepState;
- (void)updateSleepStateWithSleepAlarm:(id)alarm;
@end

@implementation MTSleepCoordinator

- (MTSleepCoordinator)initWithAlarmStorage:(id)storage
{
  storageCopy = storage;
  v5 = MTCurrentDateProvider();
  v6 = [(MTSleepCoordinator *)self initWithAlarmStorage:storageCopy currentDateProvider:v5];

  return v6;
}

- (MTSleepCoordinator)initWithAlarmStorage:(id)storage currentDateProvider:(id)provider
{
  v28 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  providerCopy = provider;
  v25.receiver = self;
  v25.super_class = MTSleepCoordinator;
  v9 = [(MTSleepCoordinator *)&v25 init];
  if (v9)
  {
    v10 = MTLogForCategory(7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = v9;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", buf, 0xCu);
    }

    v11 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTSleepCoordinator.access-queue", +[MTScheduler defaultPriority]);
    serializer = v9->_serializer;
    v9->_serializer = v11;

    v13 = objc_opt_new();
    observers = v9->_observers;
    v9->_observers = v13;

    objc_storeStrong(&v9->_alarmStorage, storage);
    [storageCopy registerObserver:v9];
    v15 = [providerCopy copy];
    currentDateProvider = v9->_currentDateProvider;
    v9->_currentDateProvider = v15;

    v17 = [MTXPCScheduler xpcSchedulerWithEvent:@"com.apple.MTSleepCoordinator.wakeupalarmtimeout-event"];
    alarmTimeoutScheduler = v9->_alarmTimeoutScheduler;
    v9->_alarmTimeoutScheduler = v17;

    v19 = objc_opt_new();
    sleepStateResolved = v9->_sleepStateResolved;
    v9->_sleepStateResolved = v19;

    v21 = [[MTSleepCoordinatorStateMachine alloc] initWithDelegate:v9 infoProvider:v9];
    stateMachine = v9->_stateMachine;
    v9->_stateMachine = v21;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)updateSleepState
{
  sleepAlarm = [(MTAlarmStorage *)self->_alarmStorage sleepAlarm];
  [(MTSleepCoordinator *)self updateSleepStateWithSleepAlarm:sleepAlarm];
}

- (void)updateSleepStateWithSleepAlarm:(id)alarm
{
  alarmCopy = alarm;
  serializer = self->_serializer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__MTSleepCoordinator_updateSleepStateWithSleepAlarm___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = alarmCopy;
  v6 = alarmCopy;
  [(NAScheduler *)serializer performBlock:v7];
}

uint64_t __53__MTSleepCoordinator_updateSleepStateWithSleepAlarm___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = [*(a1 + 32) stateMachine];
  [v2 updateState];

  v3 = *(*(a1 + 32) + 32);

  return [v3 finishWithNoResult];
}

- (BOOL)isUserAsleep
{
  sleepStateResolved = self->_sleepStateResolved;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__MTSleepCoordinator_isUserAsleep__block_invoke;
  v7[3] = &unk_1E7B0E160;
  v7[4] = self;
  v3 = [(NAFuture *)sleepStateResolved flatMap:v7];
  v4 = [v3 mtSynchronousResult:0];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

id __34__MTSleepCoordinator_isUserAsleep__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(*(a1 + 32) + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__MTSleepCoordinator_isUserAsleep__block_invoke_2;
  v8[3] = &unk_1E7B0C928;
  v4 = v2;
  v5 = *(a1 + 32);
  v9 = v4;
  v10 = v5;
  [v3 performBlock:v8];
  v6 = v4;

  return v4;
}

void __34__MTSleepCoordinator_isUserAsleep__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) stateMachine];
  v3 = [v1 numberWithBool:{objc_msgSend(v4, "isUserAsleep")}];
  [v2 finishWithResult:v3];
}

- (unint64_t)sleepTimeOutMinutes
{
  v2 = +[MTUserDefaults sharedUserDefaults];
  v3 = [v2 integerForKey:@"MTSleepTimeOutMinutesKey" defaultValue:60];

  return v3;
}

- (void)stateMachineUserWentToBed:(id)bed
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(7);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ userWentToBed", buf, 0xCu);
  }

  v5 = MTLogForCategory(7);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ telling observers user went to bed", buf, 0xCu);
  }

  observers = self->_observers;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__MTSleepCoordinator_stateMachineUserWentToBed___block_invoke;
  v8[3] = &unk_1E7B0E188;
  v8[4] = self;
  [(MTObserverStore *)observers enumerateObserversWithBlock:v8];
  v7 = *MEMORY[0x1E69E9840];
}

void __48__MTSleepCoordinator_stateMachineUserWentToBed___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = (*(*(v3 + 72) + 16))();
    [v5 sleepCoordinator:v3 userWentToBed:v4 sleepAlarm:*(*(a1 + 32) + 16)];
  }
}

- (void)stateMachineUserWokeUp:(id)up
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(7);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ userWokeUp", buf, 0xCu);
  }

  v5 = MTLogForCategory(7);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ telling observers user woke up", buf, 0xCu);
  }

  observers = self->_observers;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__MTSleepCoordinator_stateMachineUserWokeUp___block_invoke;
  v8[3] = &unk_1E7B0E188;
  v8[4] = self;
  [(MTObserverStore *)observers enumerateObserversWithBlock:v8];
  v7 = *MEMORY[0x1E69E9840];
}

void __45__MTSleepCoordinator_stateMachineUserWokeUp___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = (*(*(v3 + 72) + 16))();
    [v5 sleepCoordinator:v3 userWokeUp:v4 sleepAlarm:*(*(a1 + 32) + 16)];
  }
}

- (void)stateMachine:(id)machine dismissWakeUpAlarm:(id)alarm dismissAction:(unint64_t)action
{
  v18 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  v8 = MTLogForCategory(7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MTDismissAlarmActionDescription(action);
    v14 = 138543618;
    selfCopy = self;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissWakeUpAlarm (%{public}@)", &v14, 0x16u);
  }

  alarmStorage = [(MTSleepCoordinator *)self alarmStorage];
  sleepAlarm = [(MTAlarmStorage *)self->_alarmStorage sleepAlarm];
  alarmIDString = [sleepAlarm alarmIDString];
  [alarmStorage dismissAlarmWithIdentifier:alarmIDString dismissDate:alarmCopy dismissAction:action withCompletion:0 source:self];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)stateMachine:(id)machine shouldScheduleAlarmTimeoutForSecondsFromNow:(double)now
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ shouldScheduleAlarmTimeoutForSecondsFromNow", &v8, 0xCu);
  }

  [(MTXPCScheduler *)self->_alarmTimeoutScheduler scheduleTimerForSeconds:now];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)source didAddAlarms:(id)alarms
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [alarms na_firstObjectPassingTest:&__block_literal_global_20];
  if (v5)
  {
    v6 = MTLogForCategory(7);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ telling observers about added sleep alarm", &v8, 0xCu);
    }

    [(MTSleepCoordinator *)self notifyObserversForSleepAlarmChange:v5];
    [(MTSleepCoordinator *)self updateSleepStateWithSleepAlarm:v5];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)source didRemoveAlarms:(id)alarms
{
  v9 = *MEMORY[0x1E69E9840];
  if ([alarms na_any:&__block_literal_global_22])
  {
    v5 = MTLogForCategory(7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ telling observers about removed sleep alarm", &v7, 0xCu);
    }

    [(MTSleepCoordinator *)self notifyObserversForSleepAlarmChange:0];
    [(MTSleepCoordinator *)self updateSleepStateWithSleepAlarm:0];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)source didUpdateAlarms:(id)alarms
{
  v5 = [alarms na_firstObjectPassingTest:&__block_literal_global_24];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    [(MTSleepCoordinator *)self notifyObserversForSleepAlarmChangeIfNecessary:v5];
    v5 = [(MTSleepCoordinator *)self updateSleepStateWithSleepAlarm:v7];
    v6 = v7;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)notifyObserversForSleepAlarmChange:(id)change
{
  changeCopy = change;
  serializer = self->_serializer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__MTSleepCoordinator_notifyObserversForSleepAlarmChange___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  [(NAScheduler *)serializer performBlock:v7];
}

- (void)_notifyObserversForSleepAlarmChange:(id)change
{
  changeCopy = change;
  observers = self->_observers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__MTSleepCoordinator__notifyObserversForSleepAlarmChange___block_invoke;
  v7[3] = &unk_1E7B0E1B0;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  [(MTObserverStore *)observers enumerateObserversWithBlock:v7];
}

void __58__MTSleepCoordinator__notifyObserversForSleepAlarmChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sleepCoordinator:*(a1 + 32) sleepAlarmDidChange:*(a1 + 40)];
  }
}

- (void)notifyObserversForSleepAlarmChangeIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  serializer = self->_serializer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__MTSleepCoordinator_notifyObserversForSleepAlarmChangeIfNecessary___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v8 = necessaryCopy;
  selfCopy = self;
  v6 = necessaryCopy;
  [(NAScheduler *)serializer performBlock:v7];
}

void __68__MTSleepCoordinator_notifyObserversForSleepAlarmChangeIfNecessary___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  v3 = *(*(a1 + 40) + 16);
  if (*(a1 + 32))
  {
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else if (v3)
  {
LABEL_8:
    v8 = MTLogForCategory(7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *v2;
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ telling observers about modified sleep alarm", &v12, 0xCu);
    }

    [*(a1 + 40) _notifyObserversForSleepAlarmChange:*(a1 + 32)];
    goto LABEL_14;
  }

  v4 = [MTChangeSet changeSetWithChangesFromObject:"changeSetWithChangesFromObject:toObject:" toObject:?];
  v5 = MTLogForCategory(7);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __68__MTSleepCoordinator_notifyObserversForSleepAlarmChangeIfNecessary___block_invoke_cold_1(v2, v4, v5);
  }

  v6 = +[MTAlarm propertiesAffectingNotification];
  v7 = [v4 hasChangesInProperties:v6];

  if (v7)
  {
    goto LABEL_8;
  }

  v10 = MTLogForCategory(7);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __68__MTSleepCoordinator_notifyObserversForSleepAlarmChangeIfNecessary___block_invoke_cold_2(v2, v10);
  }

LABEL_14:
  v11 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)source didFireAlarm:(id)alarm triggerType:(unint64_t)type
{
  alarmCopy = alarm;
  if ([alarmCopy isSleepAlarm])
  {
    if (type == 7)
    {
      firedDate = (*(self->_currentDateProvider + 2))();
      [(MTSleepCoordinator *)self handleBedtimeForAlarm:alarmCopy date:firedDate];
    }

    else if ((type & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      firedDate = [alarmCopy firedDate];
      [(MTSleepCoordinator *)self handleWakeUpAlarmForAlarm:alarmCopy date:firedDate];
    }

    else if ((type & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      firedDate = [alarmCopy firedDate];
      [(MTSleepCoordinator *)self handleBedtimeReminderForAlarm:alarmCopy date:firedDate];
    }

    else
    {
      if (type != 8)
      {
        goto LABEL_11;
      }

      firedDate = (*(self->_currentDateProvider + 2))();
      [(MTSleepCoordinator *)self handleWakeUpTimeForAlarm:alarmCopy date:firedDate];
    }
  }

LABEL_11:
}

- (void)source:(id)source didSnoozeAlarm:(id)alarm snoozeAction:(unint64_t)action
{
  alarmCopy = alarm;
  if ([alarmCopy isSleepAlarm])
  {
    if (action == 2)
    {
      snoozeFireDate = [alarmCopy snoozeFireDate];
      [(MTSleepCoordinator *)self handleSnoozeForAlarm:alarmCopy date:snoozeFireDate];
    }

    else
    {
      if (action != 1)
      {
        goto LABEL_7;
      }

      snoozeFireDate = [alarmCopy bedtimeSnoozeFireDate];
      [(MTSleepCoordinator *)self handleSnoozeOfGoToBedNotificationForAlarm:alarmCopy date:snoozeFireDate];
    }
  }

LABEL_7:
}

- (void)source:(id)source didDismissAlarm:(id)alarm dismissAction:(unint64_t)action
{
  v16 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  if ([alarmCopy isSleepAlarm])
  {
    v8 = MTLogForCategory(7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = MTDismissAlarmActionDescription(action);
      v12 = 138543618;
      selfCopy = self;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep alarm dismissed: (%{public}@)", &v12, 0x16u);
    }

    if (action == 2)
    {
      bedtimeDismissedDate = [alarmCopy bedtimeDismissedDate];
      [(MTSleepCoordinator *)self handleConfirmationOfGoToBedNotificationForAlarm:alarmCopy date:bedtimeDismissedDate];
LABEL_8:

      goto LABEL_9;
    }

    if (MTDismissAlarmActionCountsAsWakeUp(action))
    {
      bedtimeDismissedDate = [alarmCopy dismissedDate];
      [(MTSleepCoordinator *)self handleDismissForAlarm:alarmCopy dismissAction:action date:bedtimeDismissedDate];
      goto LABEL_8;
    }
  }

LABEL_9:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)sleepSessionTracker:(id)tracker sessionDidComplete:(id)complete
{
  completeCopy = complete;
  sleepAlarm = [(MTAlarmStorage *)self->_alarmStorage sleepAlarm];
  endDate = [completeCopy endDate];
  currentDate = endDate;
  if (!endDate)
  {
    currentDate = [(MTSleepCoordinator *)self currentDate];
  }

  -[MTSleepCoordinator handleSleepSessionEndedForAlarm:date:reason:](self, "handleSleepSessionEndedForAlarm:date:reason:", sleepAlarm, currentDate, [completeCopy endReason]);
  if (!endDate)
  {
  }
}

- (void)handleBedtimeReminderForAlarm:(id)alarm date:(id)date
{
  v20 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  dateCopy = date;
  [(MTSleepCoordinator *)self updateSleepStateWithSleepAlarm:alarmCopy];
  v8 = MTLogForCategory(7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = dateCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ telling observers bedtime reminder fired at %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__MTSleepCoordinator_handleBedtimeReminderForAlarm_date___block_invoke;
  v13[3] = &unk_1E7B0E1D8;
  v13[4] = self;
  v14 = dateCopy;
  v15 = alarmCopy;
  v10 = alarmCopy;
  v11 = dateCopy;
  [(MTObserverStore *)observers enumerateObserversWithBlock:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __57__MTSleepCoordinator_handleBedtimeReminderForAlarm_date___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sleepCoordinator:a1[4] bedtimeReminderDidFire:a1[5] sleepAlarm:a1[6]];
  }
}

- (void)handleConfirmationOfGoToBedNotificationForAlarm:(id)alarm date:(id)date
{
  v22 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  dateCopy = date;
  serializer = self->_serializer;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__MTSleepCoordinator_handleConfirmationOfGoToBedNotificationForAlarm_date___block_invoke;
  v17[3] = &unk_1E7B0C9D8;
  v17[4] = self;
  [(NAScheduler *)serializer performBlock:v17];
  v9 = MTLogForCategory(7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = dateCopy;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ telling observers bedtime reminder was confirmed at %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__MTSleepCoordinator_handleConfirmationOfGoToBedNotificationForAlarm_date___block_invoke_31;
  v14[3] = &unk_1E7B0E1D8;
  v14[4] = self;
  v15 = dateCopy;
  v16 = alarmCopy;
  v11 = alarmCopy;
  v12 = dateCopy;
  [(MTObserverStore *)observers enumerateObserversWithBlock:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __75__MTSleepCoordinator_handleConfirmationOfGoToBedNotificationForAlarm_date___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 userWentToBed];
}

void __75__MTSleepCoordinator_handleConfirmationOfGoToBedNotificationForAlarm_date___block_invoke_31(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sleepCoordinator:a1[4] bedtimeReminderWasConfirmed:a1[5] sleepAlarm:a1[6]];
  }
}

- (void)handleSnoozeOfGoToBedNotificationForAlarm:(id)alarm date:(id)date
{
  v20 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  dateCopy = date;
  [(MTSleepCoordinator *)self updateSleepStateWithSleepAlarm:alarmCopy];
  v8 = MTLogForCategory(7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = dateCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ telling observers bedtime reminder was snoozed until %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__MTSleepCoordinator_handleSnoozeOfGoToBedNotificationForAlarm_date___block_invoke;
  v13[3] = &unk_1E7B0E1D8;
  v13[4] = self;
  v14 = dateCopy;
  v15 = alarmCopy;
  v10 = alarmCopy;
  v11 = dateCopy;
  [(MTObserverStore *)observers enumerateObserversWithBlock:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __69__MTSleepCoordinator_handleSnoozeOfGoToBedNotificationForAlarm_date___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sleepCoordinator:a1[4] bedtimeReminderWasSnoozed:a1[5] sleepAlarm:a1[6]];
  }
}

- (void)handleBedtimeForAlarm:(id)alarm date:(id)date
{
  v24 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  dateCopy = date;
  serializer = self->_serializer;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__MTSleepCoordinator_handleBedtimeForAlarm_date___block_invoke;
  v18[3] = &unk_1E7B0C928;
  v18[4] = self;
  v9 = dateCopy;
  v19 = v9;
  [(NAScheduler *)serializer performBlock:v18];
  v10 = MTLogForCategory(7);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ telling observers bedtime was reached at %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__MTSleepCoordinator_handleBedtimeForAlarm_date___block_invoke_36;
  v15[3] = &unk_1E7B0E1D8;
  v15[4] = self;
  v16 = v9;
  v17 = alarmCopy;
  v12 = alarmCopy;
  v13 = v9;
  [(MTObserverStore *)observers enumerateObserversWithBlock:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __49__MTSleepCoordinator_handleBedtimeForAlarm_date___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  [v2 userBedTimeReached:*(a1 + 40)];
}

void __49__MTSleepCoordinator_handleBedtimeForAlarm_date___block_invoke_36(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sleepCoordinator:a1[4] bedtimeWasReached:a1[5] sleepAlarm:a1[6]];
  }
}

- (void)handleWakeUpTimeForAlarm:(id)alarm date:(id)date
{
  v24 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  dateCopy = date;
  serializer = self->_serializer;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__MTSleepCoordinator_handleWakeUpTimeForAlarm_date___block_invoke;
  v18[3] = &unk_1E7B0C928;
  v18[4] = self;
  v9 = dateCopy;
  v19 = v9;
  [(NAScheduler *)serializer performBlock:v18];
  v10 = MTLogForCategory(7);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ telling observers waketime time was reached at %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__MTSleepCoordinator_handleWakeUpTimeForAlarm_date___block_invoke_39;
  v15[3] = &unk_1E7B0E1D8;
  v15[4] = self;
  v16 = v9;
  v17 = alarmCopy;
  v12 = alarmCopy;
  v13 = v9;
  [(MTObserverStore *)observers enumerateObserversWithBlock:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __52__MTSleepCoordinator_handleWakeUpTimeForAlarm_date___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  [v2 userWakeTimeReached:*(a1 + 40)];
}

void __52__MTSleepCoordinator_handleWakeUpTimeForAlarm_date___block_invoke_39(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sleepCoordinator:a1[4] waketimeWasReached:a1[5] sleepAlarm:a1[6]];
  }
}

- (void)handleWakeUpAlarmForAlarm:(id)alarm date:(id)date
{
  v22 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  dateCopy = date;
  serializer = self->_serializer;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__MTSleepCoordinator_handleWakeUpAlarmForAlarm_date___block_invoke;
  v17[3] = &unk_1E7B0C9D8;
  v17[4] = self;
  [(NAScheduler *)serializer performBlock:v17];
  v9 = MTLogForCategory(7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = dateCopy;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ telling observers wake up alarm fired at %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__MTSleepCoordinator_handleWakeUpAlarmForAlarm_date___block_invoke_42;
  v14[3] = &unk_1E7B0E1D8;
  v14[4] = self;
  v15 = dateCopy;
  v16 = alarmCopy;
  v11 = alarmCopy;
  v12 = dateCopy;
  [(MTObserverStore *)observers enumerateObserversWithBlock:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __53__MTSleepCoordinator_handleWakeUpAlarmForAlarm_date___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 userWakeUpAlarmFired];
}

void __53__MTSleepCoordinator_handleWakeUpAlarmForAlarm_date___block_invoke_42(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sleepCoordinator:a1[4] wakeUpAlarmDidFire:a1[5] sleepAlarm:a1[6]];
  }
}

- (void)handleSnoozeForAlarm:(id)alarm date:(id)date
{
  v20 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  dateCopy = date;
  [(MTXPCScheduler *)self->_alarmTimeoutScheduler unscheduleTimer];
  [(MTSleepCoordinator *)self updateSleepStateWithSleepAlarm:alarmCopy];
  v8 = MTLogForCategory(7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = dateCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ telling observers wake up alarm was snoozed until %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__MTSleepCoordinator_handleSnoozeForAlarm_date___block_invoke;
  v13[3] = &unk_1E7B0E1D8;
  v13[4] = self;
  v14 = dateCopy;
  v15 = alarmCopy;
  v10 = alarmCopy;
  v11 = dateCopy;
  [(MTObserverStore *)observers enumerateObserversWithBlock:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __48__MTSleepCoordinator_handleSnoozeForAlarm_date___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sleepCoordinator:a1[4] wakeUpAlarmWasSnoozed:a1[5] sleepAlarm:a1[6]];
  }
}

- (void)handleDismissForAlarm:(id)alarm dismissAction:(unint64_t)action date:(id)date
{
  v28 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  dateCopy = date;
  [(MTXPCScheduler *)self->_alarmTimeoutScheduler unscheduleTimer];
  serializer = self->_serializer;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63__MTSleepCoordinator_handleDismissForAlarm_dismissAction_date___block_invoke;
  v21[3] = &unk_1E7B0C9D8;
  v21[4] = self;
  [(NAScheduler *)serializer performBlock:v21];
  v11 = MTLogForCategory(7);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MTDismissAlarmActionDescription(action);
    *buf = 138543874;
    selfCopy = self;
    v24 = 2114;
    v25 = dateCopy;
    v26 = 2114;
    v27 = v12;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ telling observers wake up alarm was dismissed at %{public}@ (%{public}@)", buf, 0x20u);
  }

  observers = self->_observers;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__MTSleepCoordinator_handleDismissForAlarm_dismissAction_date___block_invoke_47;
  v17[3] = &unk_1E7B0E200;
  v17[4] = self;
  v18 = dateCopy;
  v19 = alarmCopy;
  actionCopy = action;
  v14 = alarmCopy;
  v15 = dateCopy;
  [(MTObserverStore *)observers enumerateObserversWithBlock:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __63__MTSleepCoordinator_handleDismissForAlarm_dismissAction_date___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 userWokeUp];
}

void __63__MTSleepCoordinator_handleDismissForAlarm_dismissAction_date___block_invoke_47(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sleepCoordinator:a1[4] wakeUpAlarmWasDismissed:a1[5] dismissAction:a1[7] sleepAlarm:a1[6]];
  }
}

- (void)handleSleepSessionEndedForAlarm:(id)alarm date:(id)date reason:(unint64_t)reason
{
  v25 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  dateCopy = date;
  v10 = MTLogForCategory(7);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v21 = 2114;
    v22 = @"sleep session";
    v23 = 2114;
    v24 = dateCopy;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ telling observers %{public}@ ended at %{public}@", buf, 0x20u);
  }

  observers = self->_observers;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__MTSleepCoordinator_handleSleepSessionEndedForAlarm_date_reason___block_invoke;
  v15[3] = &unk_1E7B0E200;
  v15[4] = self;
  v16 = dateCopy;
  v17 = alarmCopy;
  reasonCopy = reason;
  v12 = alarmCopy;
  v13 = dateCopy;
  [(MTObserverStore *)observers enumerateObserversWithBlock:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __66__MTSleepCoordinator_handleSleepSessionEndedForAlarm_date_reason___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sleepCoordinator:a1[4] sleepSessionEnded:a1[5] reason:a1[7] sleepAlarm:a1[6]];
  }
}

- (void)timeListener:(id)listener didDetectSignificantTimeChangeWithCompletionBlock:(id)block
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MTLogForCategory(7);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ significant time change detected", &v7, 0xCu);
  }

  [(MTSleepCoordinator *)self updateSleepState];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleNotification:(id)notification ofType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  alarmStorage = [(MTSleepCoordinator *)self alarmStorage];
  sleepAlarm = [alarmStorage sleepAlarm];

  if (sleepAlarm)
  {
    serializer = self->_serializer;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__MTSleepCoordinator_handleNotification_ofType_completion___block_invoke;
    v10[3] = &unk_1E7B0C9D8;
    v10[4] = self;
    [(NAScheduler *)serializer performBlock:v10];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __59__MTSleepCoordinator_handleNotification_ofType_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 wakeUpAlarmTimedOut];
}

- (void)pairedDevicePreferencesChanged:(id)changed
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(7);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ pairedDevicePreferencesChanged", &v6, 0xCu);
  }

  [(MTSleepCoordinator *)self updateSleepState];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)printDiagnostics
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(7);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "-----MTSleepCoordinator-----", &v7, 2u);
  }

  v4 = MTLogForCategory(7);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    isUserAsleep = [(MTSleepCoordinator *)self isUserAsleep];
    v7 = 138412546;
    v8 = @"isUserAsleep";
    v9 = 1024;
    v10 = isUserAsleep;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%@: %d", &v7, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)gatherDiagnostics
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"isUserAsleep";
  isUserAsleep = [(MTSleepCoordinator *)self isUserAsleep];
  v3 = @"NO";
  if (isUserAsleep)
  {
    v3 = @"YES";
  }

  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

void __68__MTSleepCoordinator_notifyObserversForSleepAlarmChangeIfNecessary___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138543618;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_DEBUG, "%{public}@ sleep alarm changes: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __68__MTSleepCoordinator_notifyObserversForSleepAlarmChangeIfNecessary___block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_debug_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ sleep alarm changes unimportant.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end