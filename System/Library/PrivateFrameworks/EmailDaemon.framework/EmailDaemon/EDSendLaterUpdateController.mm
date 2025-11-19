@interface EDSendLaterUpdateController
+ (OS_os_log)log;
- (EDSendLaterUpdateController)initWithHookRegistry:(id)a3 messagePersistence:(id)a4 outgoingRepository:(id)a5 alarmScheduler:(id)a6;
- (NSDate)nextAlarmDate;
- (void)_alarmFired;
- (void)_updateAlarmUpdatedMessages:(id)a3 sendLaterDate:(id)a4;
- (void)persistenceDidUpdateSendLaterDate:(id)a3 messages:(id)a4 generationWindow:(id)a5;
- (void)resetSendLaterAlarmIfNeeded;
- (void)setNextAlarmDate:(id)a3;
@end

@implementation EDSendLaterUpdateController

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__EDSendLaterUpdateController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_95 != -1)
  {
    dispatch_once(&log_onceToken_95, block);
  }

  v2 = log_log_95;

  return v2;
}

void __34__EDSendLaterUpdateController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_95;
  log_log_95 = v1;
}

- (EDSendLaterUpdateController)initWithHookRegistry:(id)a3 messagePersistence:(id)a4 outgoingRepository:(id)a5 alarmScheduler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v35.receiver = self;
  v35.super_class = EDSendLaterUpdateController;
  v15 = [(EDSendLaterUpdateController *)&v35 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_messagePersistence, a4);
    objc_storeStrong(&v16->_hookResponder, a3);
    objc_storeStrong(&v16->_outgoingRepository, a5);
    v17 = objc_alloc_init(EDDefaultSendLaterUpdateControllerAlarmDateProvider);
    alarmDateProvider = v16->_alarmDateProvider;
    v16->_alarmDateProvider = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.EmailDaemon.SendLaterUpdateController.messageScheduler", v19);
    alarmQueue = v16->_alarmQueue;
    v16->_alarmQueue = v20;

    v22 = [objc_alloc(MEMORY[0x1E699B998]) initWithScheduler:v14 eventName:@"EDSendLaterUpdateController.alarm" eventHandlerQueue:v16->_alarmQueue];
    xpcAlarm = v16->_xpcAlarm;
    v16->_xpcAlarm = v22;

    objc_initWeak(&location, v16);
    v24 = v16->_xpcAlarm;
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __105__EDSendLaterUpdateController_initWithHookRegistry_messagePersistence_outgoingRepository_alarmScheduler___block_invoke;
    v32 = &unk_1E8256350;
    objc_copyWeak(&v33, &location);
    [(EFXPCAlarm *)v24 beginReceivingEventsWithHandler:&v29];
    v25 = [EDQueryCreator alloc];
    v26 = [(EDQueryCreator *)v25 initWithQueryType:*MEMORY[0x1E699A978], v29, v30, v31, v32];
    sendLaterQueryCreator = v16->_sendLaterQueryCreator;
    v16->_sendLaterQueryCreator = v26;

    [v11 registerMessageChangeHookResponder:v16];
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __105__EDSendLaterUpdateController_initWithHookRegistry_messagePersistence_outgoingRepository_alarmScheduler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _alarmFired];
}

- (NSDate)nextAlarmDate
{
  v2 = [(EDSendLaterUpdateController *)self alarmDateProvider];
  v3 = [v2 nextDate];

  return v3;
}

- (void)setNextAlarmDate:(id)a3
{
  v5 = a3;
  v4 = [(EDSendLaterUpdateController *)self alarmDateProvider];
  [v4 setNextDate:v5];
}

- (void)_alarmFired
{
  v50 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_alarmQueue);
  v34 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [MEMORY[0x1E695DF00] now];
  v35 = [v3 ef_dateWithTruncatedSeconds];

  v30 = [MEMORY[0x1E695DF00] ef_dateHoursAgo:12];
  v4 = [(EDSendLaterUpdateController *)self nextAlarmDate];
  if ([v4 ef_isLaterThanDate:v30])
  {
    v5 = [(EDSendLaterUpdateController *)self nextAlarmDate];
    v6 = [v5 ef_isEarlierThanDate:v35];

    if (v6)
    {
      v7 = [(EDSendLaterUpdateController *)self nextAlarmDate];

      v8 = +[EDSendLaterUpdateController log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v47 = v7;
        _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Send later alarm time has passed already, but is within the allowed delivery window. Send Later original date : %{public}@", buf, 0xCu);
      }

      v35 = v7;
    }
  }

  else
  {
  }

  v9 = [MEMORY[0x1E695DF00] now];
  v31 = [v9 ef_dateWithTruncatedSeconds];

  v33 = [v34 dateByAddingUnit:64 value:1 toDate:v31 options:0];
  v10 = +[EDSendLaterUpdateController log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v47 = v35;
    v48 = 2114;
    v49 = v33;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Send later alarm fired. Send Later messages query start date: %{public}@ and end date:%{public}@", buf, 0x16u);
  }

  v11 = [(EDSendLaterUpdateController *)self sendLaterQueryCreator];
  v32 = [v11 queryWithStartDate:v35 endDate:v33];

  v12 = [(EDSendLaterUpdateController *)self messagePersistence];
  v29 = [v12 persistedMessagesMatchingQuery:v32 limit:0x7FFFFFFFFFFFFFFFLL];

  v13 = +[EDSendLaterUpdateController log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v29 count];
    *buf = 134217984;
    v47 = v14;
    _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Send later alarm fired. Preparing %lu messages", buf, 0xCu);
  }

  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v29;
  v15 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v15)
  {
    v16 = *v42;
    do
    {
      v17 = 0;
      do
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v41 + 1) + 8 * v17);
        v19 = [(EDSendLaterUpdateController *)self outgoingRepository];
        v20 = [v19 outgoingMessageFromPersistedMessage:v18];

        v21 = [(EDSendLaterUpdateController *)self outgoingRepository];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __42__EDSendLaterUpdateController__alarmFired__block_invoke;
        v38[3] = &unk_1E8257988;
        v39 = v37;
        v40 = v18;
        [v21 deliverMessage:v20 usingMailDrop:0 isCancelable:0 completion:v38];

        ++v17;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v15);
  }

  v22 = [(EDSendLaterUpdateController *)self outgoingRepository];
  v23 = [v22 messageChangeManager];
  [v23 deleteMessages:obj];

  v24 = [v34 dateByAddingUnit:64 value:1 toDate:v35 options:0];
  [(EDSendLaterUpdateController *)self setNextAlarmDate:v24];

  v25 = +[EDSendLaterUpdateController log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v37 count];
    v27 = [(EDSendLaterUpdateController *)self nextAlarmDate];
    *buf = 134218242;
    v47 = v26;
    v48 = 2114;
    v49 = v27;
    _os_log_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_DEFAULT, "Finished sending send later messages. %lu failed. Next alarm date: %{public}@", buf, 0x16u);
  }

  [(EDSendLaterUpdateController *)self _updateAlarmUpdatedMessages:0 sendLaterDate:0];
  v28 = *MEMORY[0x1E69E9840];
}

void __42__EDSendLaterUpdateController__alarmFired__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 status];
  if (v4)
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
    v5 = +[EDSendLaterUpdateController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 error];
      v7 = [v6 ef_publicDescription];
      v9 = 138543618;
      v10 = v7;
      v11 = 2048;
      v12 = v4;
      _os_log_error_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_ERROR, "Error sending an email from mail: %{public}@, delivery status: %ld", &v9, 0x16u);
    }
  }

  else
  {
    v5 = +[EDSendLaterUpdateController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Successfully sent message", &v9, 2u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_updateAlarmUpdatedMessages:(id)a3 sendLaterDate:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[EDSendLaterUpdateController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 134218242;
    v31 = [v6 count];
    v32 = 2114;
    v33 = v7;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Schedule %lu messages for %{public}@", &v30, 0x16u);
  }

  v9 = [(EDSendLaterUpdateController *)self nextAlarmDate];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E695DF00] now];
  }

  v12 = v11;

  v13 = +[EDSendLaterUpdateController log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138543362;
    v31 = v12;
    _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Updated start date: %{public}@", &v30, 0xCu);
  }

  v14 = [(EDSendLaterUpdateController *)self sendLaterQueryCreator];
  v15 = [v14 queryWithStartDate:v12 endDate:0];

  v16 = [(EDSendLaterUpdateController *)self messagePersistence];
  v17 = [v16 persistedMessagesMatchingQuery:v15 limit:1];

  v18 = +[EDSendLaterUpdateController log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v17 count];
    v30 = 134217984;
    v31 = v19;
    _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "Queried messages count: %lu", &v30, 0xCu);
  }

  if ([v17 count])
  {
    v20 = [v17 firstObject];
    v21 = [v20 sendLaterDate];
  }

  else
  {
    v21 = 0;
  }

  v22 = +[EDSendLaterUpdateController log];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138543362;
    v31 = v21;
    _os_log_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEFAULT, "Earliest message send later date: %{public}@", &v30, 0xCu);
  }

  v23 = [v6 count];
  if (v7 && v23)
  {
    v24 = +[EDSendLaterUpdateController log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138543618;
      v31 = v21;
      v32 = 2114;
      v33 = v7;
      _os_log_impl(&dword_1C61EF000, v24, OS_LOG_TYPE_DEFAULT, "Current earliest message send later date:%{public}@ and send later date:%{public}@", &v30, 0x16u);
    }

    if (!v21 || [v7 ef_isEarlierThanDate:v21])
    {
      v25 = v6;

      v26 = v7;
      v21 = v26;
      v17 = v25;
    }
  }

  v27 = [(EDSendLaterUpdateController *)self xpcAlarm];
  [v27 setNextFireDate:v21 isUserVisible:1];

  v28 = +[EDSendLaterUpdateController log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138543362;
    v31 = v21;
    _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_DEFAULT, "After scheduling xpc alarm at: %{public}@", &v30, 0xCu);
  }

  [(EDSendLaterUpdateController *)self setNextAlarmDate:v21];
  v29 = *MEMORY[0x1E69E9840];
}

- (void)resetSendLaterAlarmIfNeeded
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(EDSendLaterUpdateController *)self alarmDateProvider];
  v4 = [v3 nextDate];

  v5 = +[EDSendLaterUpdateController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Next alarm date from EDDefaultSendLaterUpdateControllerAlarmDateProvider: %{public}@.", &v9, 0xCu);
  }

  if (v4)
  {
    v6 = +[EDSendLaterUpdateController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Reset send later next alarm to %{public}@.", &v9, 0xCu);
    }

    v7 = [(EDSendLaterUpdateController *)self xpcAlarm];
    [v7 setNextFireDate:v4 isUserVisible:1];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidUpdateSendLaterDate:(id)a3 messages:(id)a4 generationWindow:(id)a5
{
  v7 = a3;
  v8 = a4;
  alarmQueue = self->_alarmQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__EDSendLaterUpdateController_persistenceDidUpdateSendLaterDate_messages_generationWindow___block_invoke;
  block[3] = &unk_1E8250720;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(alarmQueue, block);
}

void __91__EDSendLaterUpdateController_persistenceDidUpdateSendLaterDate_messages_generationWindow___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) nextAlarmDate];
  v3 = +[EDSendLaterUpdateController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v2;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "After persistence updated. Current next alarm date: %{public}@", &v8, 0xCu);
  }

  if (!v2 || !*(a1 + 40) || ([v2 isEqualToDate:?] & 1) == 0)
  {
    v4 = +[EDSendLaterUpdateController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 48) count];
      v6 = *(a1 + 40);
      v8 = 134218242;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Send later alarm needs update for %lu messages. New date:%{public}@", &v8, 0x16u);
    }

    [*(a1 + 32) _updateAlarmUpdatedMessages:*(a1 + 48) sendLaterDate:*(a1 + 40)];
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end