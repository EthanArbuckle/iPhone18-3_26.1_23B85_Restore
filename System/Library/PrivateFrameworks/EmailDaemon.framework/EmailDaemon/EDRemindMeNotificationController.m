@interface EDRemindMeNotificationController
+ (OS_os_log)log;
- (EDRemindMeNotificationController)initWithHookRegistry:(id)a3 messagePersistence:(id)a4 alarmDateProvider:(id)a5 eventDelegate:(id)a6 alarmScheduler:(id)a7;
- (EDRemindMeNotificationController)initWithHookRegistry:(id)a3 messagePersistence:(id)a4 alarmScheduler:(id)a5;
- (EDRemindMeNotificationControllerEventDelegate)eventDelegate;
- (id)_fetchMessagesToNotifyWithStartDate:(id)a3 endDate:(id)a4;
- (id)addRemindMeObserver:(id)a3;
- (id)nextAlarmDate;
- (void)_alarmFired;
- (void)_notify:(id)a3;
- (void)_updateAlarmUpdatedMessages:(id)a3 readLaterDate:(id)a4 startDate:(id)a5 changeIsRemote:(BOOL)a6;
- (void)controller:(id)a3 scheduleAlarmForMessage:(id)a4 date:(id)a5;
- (void)performDelayedTasks;
- (void)persistenceDidChangeReadLaterDate:(id)a3 messages:(id)a4 changeIsRemote:(BOOL)a5 generationWindow:(id)a6;
- (void)removeRemindMeObserver:(id)a3;
- (void)resetRemindMeAlarmIfNeeded;
- (void)setNextAlarmDate:(uint64_t)a1;
- (void)test_tearDown;
- (void)test_waitForUpdates;
@end

@implementation EDRemindMeNotificationController

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__EDRemindMeNotificationController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_81 != -1)
  {
    dispatch_once(&log_onceToken_81, block);
  }

  v2 = log_log_81;

  return v2;
}

void __39__EDRemindMeNotificationController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_81;
  log_log_81 = v1;
}

- (EDRemindMeNotificationController)initWithHookRegistry:(id)a3 messagePersistence:(id)a4 alarmScheduler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(DefaultEDRemindMeNotificationControllerAlarmDateProvider);
  v12 = [(EDRemindMeNotificationController *)self initWithHookRegistry:v8 messagePersistence:v9 alarmDateProvider:v11 eventDelegate:self alarmScheduler:v10];

  return v12;
}

- (EDRemindMeNotificationController)initWithHookRegistry:(id)a3 messagePersistence:(id)a4 alarmDateProvider:(id)a5 eventDelegate:(id)a6 alarmScheduler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v39.receiver = self;
  v39.super_class = EDRemindMeNotificationController;
  v18 = [(EDRemindMeNotificationController *)&v39 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_hookRegistry, a3);
    objc_storeStrong(&v19->_messagePersistence, a4);
    objc_storeStrong(&v19->_alarmDateProvider, a5);
    objc_storeWeak(&v19->_eventDelegate, v16);
    v20 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v21 = [objc_alloc(MEMORY[0x1E699B7F0]) initWithObject:v20];
    observers = v19->_observers;
    v19->_observers = v21;

    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create("com.apple.EmailDaemon.EDRemindMeNotificationController.messageScheduler", v23);
    alarmQueue = v19->_alarmQueue;
    v19->_alarmQueue = v24;

    v26 = [objc_alloc(MEMORY[0x1E699B998]) initWithScheduler:v17 eventName:@"EDRemindMeNotificationController.alarm" eventHandlerQueue:v19->_alarmQueue];
    xpcAlarm = v19->_xpcAlarm;
    v19->_xpcAlarm = v26;

    objc_initWeak(&location, v19);
    v28 = v19->_xpcAlarm;
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __123__EDRemindMeNotificationController_initWithHookRegistry_messagePersistence_alarmDateProvider_eventDelegate_alarmScheduler___block_invoke;
    v36 = &unk_1E8256350;
    objc_copyWeak(&v37, &location);
    [(EFXPCAlarm *)v28 beginReceivingEventsWithHandler:&v33];
    v29 = [EDQueryCreator alloc];
    v30 = [(EDQueryCreator *)v29 initWithQueryType:*MEMORY[0x1E699A958], v33, v34, v35, v36];
    readLaterQueryCreator = v19->_readLaterQueryCreator;
    v19->_readLaterQueryCreator = v30;

    [v13 registerMessageChangeHookResponder:v19];
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v19;
}

void __123__EDRemindMeNotificationController_initWithHookRegistry_messagePersistence_alarmDateProvider_eventDelegate_alarmScheduler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _alarmFired];
}

- (void)test_waitForUpdates
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EDRemindMeNotificationController.m" lineNumber:110 description:{@"%s can only be called from unit tests", "-[EDRemindMeNotificationController test_waitForUpdates]"}];
  }

  alarmQueue = self->_alarmQueue;

  dispatch_sync(alarmQueue, &__block_literal_global_67);
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"EDRemindMeNotificationController.m" lineNumber:116 description:{@"%s can only be called from unit tests", "-[EDRemindMeNotificationController test_tearDown]"}];
  }

  [(EFXPCAlarm *)self->_xpcAlarm invalidate];
  v4 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
  alarmQueue = self->_alarmQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__EDRemindMeNotificationController_test_tearDown__block_invoke;
  block[3] = &unk_1E8250260;
  v6 = v4;
  v11 = v6;
  dispatch_async(alarmQueue, block);
  while (([v6 tryLockWhenCondition:1] & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.001];
    v8 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [v8 runUntilDate:v7];

    [MEMORY[0x1E696AF00] sleepUntilDate:v7];
  }

  [v6 unlock];
}

- (id)addRemindMeObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__EDRemindMeNotificationController_addRemindMeObserver___block_invoke;
  v15[3] = &unk_1E8256378;
  v6 = v4;
  v16 = v6;
  [(EFLocked *)observers performWhileLocked:v15];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  v7 = MEMORY[0x1E699B7F8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__EDRemindMeNotificationController_addRemindMeObserver___block_invoke_2;
  v10[3] = &unk_1E8255050;
  objc_copyWeak(&v11, &location);
  objc_copyWeak(&v12, &from);
  v8 = [v7 tokenWithCancelationBlock:v10];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v8;
}

void __56__EDRemindMeNotificationController_addRemindMeObserver___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    if (v3)
    {
      [v4 removeRemindMeObserver:v3];
    }

    WeakRetained = v4;
  }
}

- (void)removeRemindMeObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__EDRemindMeNotificationController_removeRemindMeObserver___block_invoke;
  v7[3] = &unk_1E8256378;
  v8 = v4;
  v6 = v4;
  [(EFLocked *)observers performWhileLocked:v7];
}

- (void)setNextAlarmDate:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    [*(a1 + 24) setNextDate:v3];
  }
}

- (void)performDelayedTasks
{
  alarmQueue = self->_alarmQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__EDRemindMeNotificationController_performDelayedTasks__block_invoke;
  v3[3] = &unk_1E8250A90;
  v3[4] = self;
  v3[5] = a2;
  dispatch_async(alarmQueue, v3);
}

void __55__EDRemindMeNotificationController_performDelayedTasks__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(EDRemindMeNotificationController *)*(a1 + 32) nextAlarmDate];
  v3 = +[EDRemindMeNotificationController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(*(a1 + 40));
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v2;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ nextAlarmDate:%{public}@", &v8, 0x16u);
  }

  if (!v2 || ([MEMORY[0x1E695DF00] now], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v2, "ef_isEarlierThanDate:", v5), v5, v6))
  {
    [*(a1 + 32) _updateAlarmStartDate:0];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_updateAlarmUpdatedMessages:(id)a3 readLaterDate:(id)a4 startDate:(id)a5 changeIsRemote:(BOOL)a6
{
  v7 = a6;
  v55 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  dispatch_assert_queue_V2(self->_alarmQueue);
  if (!v14)
  {
    v15 = [(EDRemindMeNotificationController *)&self->super.isa nextAlarmDate];
    v16 = v15;
    if (v15)
    {
      v14 = v15;
    }

    else
    {
      v17 = [MEMORY[0x1E695DF00] now];
      v14 = [v17 ec_integerDate];
    }
  }

  aSelector = a2;
  v18 = self->_readLaterQueryCreator;
  v19 = [(EDQueryCreator *)v18 queryWithStartDate:v14 endDate:0];

  v20 = self->_messagePersistence;
  v21 = [(EDMessagePersistence *)v20 persistedMessagesMatchingQuery:v19 limit:1];

  v22 = [v12 count];
  if (!v13 && v22)
  {
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __103__EDRemindMeNotificationController__updateAlarmUpdatedMessages_readLaterDate_startDate_changeIsRemote___block_invoke;
    v41 = &unk_1E8251360;
    v42 = v12;
    v23 = [v21 ef_filter:{&v38, aSelector}];

    v21 = v23;
  }

  if ([v21 count])
  {
    v6 = [v21 firstObject];
    v24 = [v6 readLater];
    v25 = [v24 date];

    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v25 = 0;
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v6 = [MEMORY[0x1E695DF00] now];
  if (![v13 ef_isLaterThanDate:v6])
  {
LABEL_27:

    goto LABEL_28;
  }

LABEL_14:
  v26 = [v12 count];
  if (v13)
  {
    v27 = v26 == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = !v27;
  if (v7)
  {

    if ((v28 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (!v28)
  {
    goto LABEL_28;
  }

  if (!v25 || [v13 ef_isEarlierThanDate:v25])
  {
    v29 = v12;

    v6 = v25;
    v21 = v29;
    v25 = v13;
    goto LABEL_27;
  }

LABEL_28:
  v30 = +[EDRemindMeNotificationController log];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = NSStringFromSelector(aSelectora);
    v32 = [v12 count];
    *buf = 138544642;
    v44 = v31;
    v45 = 2048;
    v46 = v32;
    v47 = 2114;
    v48 = v13;
    v49 = 2114;
    v50 = v14;
    v51 = 1024;
    v52 = v7;
    v53 = 2114;
    v54 = v25;
    _os_log_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ updatedMessages:%lu readLaterDate:%{public}@ startDate:%{public}@ changeIsRemote:%{BOOL}d firstMessageReadLaterDate:%{public}@", buf, 0x3Au);
  }

  v33 = [(EDRemindMeNotificationController *)self eventDelegate];
  if (v25)
  {
    v34 = [v21 firstObject];
  }

  else
  {
    v34 = 0;
  }

  [v33 controller:self scheduleAlarmForMessage:v34 date:v25];
  [(EDRemindMeNotificationController *)self setNextAlarmDate:v25];

  v35 = *MEMORY[0x1E69E9840];
}

uint64_t __80__EDRemindMeNotificationController__fetchMessagesToNotifyWithStartDate_endDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "globalMessageID")}];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "globalMessageID")}];
  v8 = [v6 compare:v7];

  return v8;
}

- (void)_alarmFired
{
  v32 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_alarmQueue);
  v4 = [(EDRemindMeNotificationController *)&self->super.isa nextAlarmDate];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [v5 ec_integerDate];

  if ([v6 ef_isLaterThanDate:v4])
  {
    v7 = v6;
  }

  else
  {
    v8 = [v4 dateByAddingTimeInterval:1.0];
    v7 = [v8 ec_integerDate];

    v9 = +[EDRemindMeNotificationController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138543618;
      v27 = v10;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ update endDate to %{public}@ so it's after startDate", buf, 0x16u);
    }
  }

  v11 = [(EDRemindMeNotificationController *)self _fetchMessagesToNotifyWithStartDate:v4 endDate:v7];
  v12 = +[EDRemindMeNotificationController log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    v14 = [(EDRemindMeNotificationController *)&self->super.isa nextAlarmDate];
    v15 = [v11 count];
    *buf = 138543874;
    v27 = v13;
    v28 = 2114;
    v29 = v14;
    v30 = 2048;
    v31 = v15;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ nextAlarmDate:%{public}@ messages to notify:%lu", buf, 0x20u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v17)
  {
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v16);
        }

        [(EDRemindMeNotificationController *)self _notify:*(*(&v21 + 1) + 8 * v19++), v21];
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }

  [(EDRemindMeNotificationController *)self _updateAlarmStartDate:v7];
  v20 = *MEMORY[0x1E69E9840];
}

- (void)_notify:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_alarmQueue);
  v5 = [(EDRemindMeNotificationController *)self observers];
  v6 = [v5 allObjects];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v10++) controller:self messageTimerFired:{v4, v12}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)resetRemindMeAlarmIfNeeded
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    alarmDateProvider = self->_alarmDateProvider;
  }

  else
  {
    alarmDateProvider = 0;
  }

  v4 = alarmDateProvider;
  v5 = [(EDRemindMeNotificationControllerAlarmDateProvider *)v4 nextDate];

  v6 = +[EDRemindMeNotificationController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Next alarm date from DefaultEDRemindMeNotificationControllerAlarmDateProvider: %{public}@.", &v10, 0xCu);
  }

  if (v5)
  {
    v7 = +[EDRemindMeNotificationController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Reset remind me later next alarm to %{public}@.", &v10, 0xCu);
    }

    v8 = [(EDRemindMeNotificationController *)self xpcAlarm];
    [v8 setNextFireDate:v5 isUserVisible:1];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)controller:(id)a3 scheduleAlarmForMessage:(id)a4 date:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = +[EDRemindMeNotificationController log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    v14 = 138543874;
    v15 = v11;
    v16 = 2114;
    v17 = v9;
    v18 = 2048;
    v19 = [v8 globalMessageID];
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ date:%{public}@ message.globalMessageID:%lld", &v14, 0x20u);
  }

  v12 = [(EDRemindMeNotificationController *)self xpcAlarm];
  [v12 setNextFireDate:v9 isUserVisible:1];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidChangeReadLaterDate:(id)a3 messages:(id)a4 changeIsRemote:(BOOL)a5 generationWindow:(id)a6
{
  v6 = a5;
  v28 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = +[EDRemindMeNotificationController log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 138543874;
    v23 = v13;
    v24 = 1024;
    v25 = v6;
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ changeIsRemote:%{BOOL}d readLaterDate:%{public}@", buf, 0x1Cu);
  }

  alarmQueue = self->_alarmQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __111__EDRemindMeNotificationController_persistenceDidChangeReadLaterDate_messages_changeIsRemote_generationWindow___block_invoke;
  v18[3] = &unk_1E8255940;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v6;
  v15 = v11;
  v16 = v10;
  dispatch_async(alarmQueue, v18);

  v17 = *MEMORY[0x1E69E9840];
}

- (EDRemindMeNotificationControllerEventDelegate)eventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_eventDelegate);

  return WeakRetained;
}

- (id)nextAlarmDate
{
  if (a1)
  {
    a1 = [a1[3] nextDate];
    v1 = vars8;
  }

  return a1;
}

- (id)_fetchMessagesToNotifyWithStartDate:(id)a3 endDate:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (self)
  {
    readLaterQueryCreator = self->_readLaterQueryCreator;
  }

  else
  {
    readLaterQueryCreator = 0;
  }

  v10 = [(EDQueryCreator *)readLaterQueryCreator queryWithStartDate:v7 endDate:v8];
  v11 = +[EDRemindMeNotificationController log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    v18 = 138543874;
    v19 = v12;
    v20 = 2114;
    v21 = v7;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ startDate:%{public}@ endDate:%{public}@", &v18, 0x20u);
  }

  if (self)
  {
    messagePersistence = self->_messagePersistence;
  }

  else
  {
    messagePersistence = 0;
  }

  v14 = [(EDMessagePersistence *)messagePersistence persistedMessagesMatchingQuery:v10 limit:0x7FFFFFFFFFFFFFFFLL];
  v15 = [v14 ef_uniquifyWithComparator:&__block_literal_global_87_1];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __111__EDRemindMeNotificationController_persistenceDidChangeReadLaterDate_messages_changeIsRemote_generationWindow___block_invoke(uint64_t a1)
{
  v2 = [(EDRemindMeNotificationController *)*(a1 + 32) nextAlarmDate];
  if (!v2 || !*(a1 + 40) || ([v2 isEqualToDate:?] & 1) == 0)
  {
    [*(a1 + 32) _updateAlarmUpdatedMessages:*(a1 + 48) readLaterDate:*(a1 + 40) startDate:0 changeIsRemote:*(a1 + 56)];
  }
}

@end