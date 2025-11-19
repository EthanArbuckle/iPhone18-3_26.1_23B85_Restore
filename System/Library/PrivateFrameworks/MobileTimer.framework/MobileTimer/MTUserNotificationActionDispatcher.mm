@interface MTUserNotificationActionDispatcher
+ (unint64_t)_alarmNotificationActionForUserNotificationAction:(id)a3 category:(id)a4;
+ (unint64_t)_timerNotificationActionForUserNotificationAction:(id)a3;
- (MTUserNotificationActionDispatcher)initWithAlarmStorage:(id)a3 timerStorage:(id)a4;
- (MTUserNotificationActionDispatcher)initWithAlarmStorage:(id)a3 timerStorage:(id)a4 alarmKit:(id)a5;
- (void)_handleAlarmNotificationResponse:(id)a3 withCompletionHandler:(id)a4;
- (void)_handleTimerNotificationResponse:(id)a3 withCompletionHandler:(id)a4;
- (void)finishHandlingAlarmNotificationIdentifier:(id)a3 isFirstParty:(BOOL)a4 action:(unint64_t)a5 category:(id)a6 completionHandler:(id)a7;
- (void)finishHandlingTimerNotificationWithIdentifier:(id)a3 action:(unint64_t)a4 isFirstParty:(BOOL)a5 withCompletionHandler:(id)a6;
- (void)handleAlarmNotificationIdentifier:(id)a3 action:(unint64_t)a4 category:(id)a5 completionHandler:(id)a6;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation MTUserNotificationActionDispatcher

- (MTUserNotificationActionDispatcher)initWithAlarmStorage:(id)a3 timerStorage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MTUserNotificationActionDispatcher;
  v9 = [(MTUserNotificationActionDispatcher *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_alarmStorage, a3);
    objc_storeStrong(&v10->_timerStorage, a4);
    v11 = objc_opt_new();
    metrics = v10->_metrics;
    v10->_metrics = v11;
  }

  return v10;
}

- (MTUserNotificationActionDispatcher)initWithAlarmStorage:(id)a3 timerStorage:(id)a4 alarmKit:(id)a5
{
  v9 = a5;
  v10 = [(MTUserNotificationActionDispatcher *)self initWithAlarmStorage:a3 timerStorage:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_alarmKit, a5);
  }

  return v11;
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  kdebug_trace();
  v9 = MTLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = self;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ received notification response", buf, 0xCu);
  }

  v10 = [v7 notification];
  v11 = [v10 request];
  v12 = [v11 content];
  v13 = [v12 categoryIdentifier];

  if (([v13 isEqualToString:@"MTAlarmCategory"] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"MTAlarmNoSnoozeCategory") & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"MTWakeUpAlarmNoSnoozeCategory") & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"AlarmSnoozeCountdown") & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"MTBedtimeAlarmCategory") & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"MTWakeUpAlarmCategory"))
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __114__MTUserNotificationActionDispatcher_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
    v18[3] = &unk_1E7B0D6F0;
    v19 = v8;
    [(MTUserNotificationActionDispatcher *)self _handleAlarmNotificationResponse:v7 withCompletionHandler:v18];
    v14 = v19;
LABEL_10:

    goto LABEL_11;
  }

  if ([v13 isEqualToString:@"MTTimerCategory"])
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __114__MTUserNotificationActionDispatcher_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2;
    v16[3] = &unk_1E7B0D6F0;
    v17 = v8;
    [(MTUserNotificationActionDispatcher *)self _handleTimerNotificationResponse:v7 withCompletionHandler:v16];
    v14 = v17;
    goto LABEL_10;
  }

  kdebug_trace();
  if (v8)
  {
    v8[2](v8);
  }

LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __114__MTUserNotificationActionDispatcher_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke(uint64_t a1)
{
  kdebug_trace();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __114__MTUserNotificationActionDispatcher_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  kdebug_trace();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

+ (unint64_t)_alarmNotificationActionForUserNotificationAction:(id)a3 category:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"MTAlarmSnoozeAction"])
  {
    v7 = 1;
    goto LABEL_14;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E6983420]])
  {
    if (([v6 isEqualToString:@"MTAlarmNoSnoozeCategory"] & 1) == 0)
    {
      if ([v6 isEqualToString:@"MTWakeUpAlarmNoSnoozeCategory"])
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      goto LABEL_14;
    }

LABEL_13:
    v7 = 2;
    goto LABEL_14;
  }

  if ([v5 isEqualToString:@"MTAlarmGoToBedAction"])
  {
    v7 = 3;
    goto LABEL_14;
  }

  if ([v5 isEqualToString:@"MTAlarmDismissAction"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69833F8]) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69833E0]))
  {
    goto LABEL_13;
  }

  if ([v5 isEqualToString:@"MTAlarmSecondaryAction"])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

LABEL_14:

  return v7;
}

- (void)_handleAlarmNotificationResponse:(id)a3 withCompletionHandler:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 actionIdentifier];
  v9 = [v6 notification];
  v10 = [v9 request];
  v11 = [v10 content];
  v12 = [v11 categoryIdentifier];

  v13 = MTLogForCategory(3);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543874;
    v22 = self;
    v23 = 2114;
    v24 = v12;
    v25 = 2114;
    v26 = v8;
    _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ received response for category %{public}@ and action %{public}@", &v21, 0x20u);
  }

  v14 = [objc_opt_class() _alarmNotificationActionForUserNotificationAction:v8 category:v12];
  if (v14)
  {
    v15 = v14;
    v16 = [v6 notification];
    v17 = [v16 request];
    v18 = [v17 identifier];
    [(MTUserNotificationActionDispatcher *)self handleAlarmNotificationIdentifier:v18 action:v15 category:v12 completionHandler:v7];
  }

  else
  {
    v19 = MTLogForCategory(3);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MTUserNotificationActionDispatcher _handleAlarmNotificationResponse:v8 withCompletionHandler:v19];
    }

    if (v7)
    {
      v7[2](v7);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)handleAlarmNotificationIdentifier:(id)a3 action:(unint64_t)a4 category:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [a3 mtStringByRemovingNotificationPrefixes];
  v13 = [(MTUserNotificationActionDispatcher *)self alarmStorage];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __106__MTUserNotificationActionDispatcher_handleAlarmNotificationIdentifier_action_category_completionHandler___block_invoke;
  v17[3] = &unk_1E7B0D718;
  v17[4] = self;
  v18 = v12;
  v20 = v11;
  v21 = a4;
  v19 = v10;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  [v13 alarmWithIdentifier:v16 withCompletion:v17];
}

- (void)finishHandlingAlarmNotificationIdentifier:(id)a3 isFirstParty:(BOOL)a4 action:(unint64_t)a5 category:(id)a6 completionHandler:(id)a7
{
  v10 = a4;
  v44 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [v13 isEqualToString:@"MTBedtimeAlarmCategory"];
  if ([v13 isEqualToString:@"MTWakeUpAlarmCategory"])
  {
    v16 = 1;
  }

  else
  {
    v16 = [v13 isEqualToString:@"MTWakeUpAlarmNoSnoozeCategory"];
  }

  v17 = [v13 isEqualToString:@"AlarmSnoozeCountdown"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__MTUserNotificationActionDispatcher_finishHandlingAlarmNotificationIdentifier_isFirstParty_action_category_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7B0D230;
  aBlock[4] = self;
  v18 = v14;
  v39 = v18;
  v19 = _Block_copy(aBlock);
  if (a5 > 2)
  {
    if (a5 == 3)
    {
      if ((v15 & 1) == 0)
      {
        NSLog(&cfstr_UnexpectedAler.isa);
      }

      v33 = MTLogForCategory(3);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v41 = self;
        v42 = 2114;
        v43 = v12;
        _os_log_impl(&dword_1B1F9F000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ received go to bed action for bedtime notification %{public}@", buf, 0x16u);
      }

      v34 = [(MTUserNotificationActionDispatcher *)self alarmStorage];
      [v34 dismissAlarmWithIdentifier:v12 dismissAction:2 withCompletion:v19 source:0];

      v24 = [(MTUserNotificationActionDispatcher *)self metrics];
      v25 = v24;
      v26 = 2;
      goto LABEL_36;
    }

    if (a5 == 4)
    {
      v20 = MTLogForCategory(3);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v41 = self;
        v42 = 2114;
        v43 = v12;
        _os_log_impl(&dword_1B1F9F000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ processing secondary action for alarmkit alarm with identifier: %{public}@", buf, 0x16u);
      }

      [(MTAlarmKit *)self->_alarmKit performSecondaryActionWithIdentifier:v12];
      goto LABEL_38;
    }

LABEL_13:
    NSLog(&cfstr_UnexpectedActi.isa, a5);
    goto LABEL_14;
  }

  if (a5 == 1)
  {
    v28 = MTLogForCategory(3);
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v29)
      {
        *buf = 138543618;
        v41 = self;
        v42 = 2114;
        v43 = v12;
        _os_log_impl(&dword_1B1F9F000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ received snooze action for %{public}@", buf, 0x16u);
      }

      v30 = 2;
      if (!v16)
      {
        v30 = 0;
      }

      if (v15)
      {
        v31 = 1;
      }

      else
      {
        v31 = v30;
      }

      v32 = [(MTUserNotificationActionDispatcher *)self alarmStorage];
      [v32 snoozeAlarmWithIdentifier:v12 snoozeAction:v31 withCompletion:v19 source:0];

      v25 = [(MTUserNotificationActionDispatcher *)self metrics];
      [v25 logAlarmSnoozeAction:v31];
      goto LABEL_37;
    }

    if (v29)
    {
      *buf = 138543618;
      v41 = self;
      v42 = 2114;
      v43 = v12;
      _os_log_impl(&dword_1B1F9F000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ processing snooze action for alarmkit alarm with identifier: %{public}@", buf, 0x16u);
    }

    [(MTAlarmKit *)self->_alarmKit snoozeAlarmWithIdentifier:v12];
    goto LABEL_38;
  }

  if (a5 != 2)
  {
    goto LABEL_13;
  }

LABEL_14:
  v21 = MTLogForCategory(3);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v22)
    {
      *buf = 138543618;
      v41 = self;
      v42 = 2114;
      v43 = v12;
      _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ received dismiss action for wakeup alarm %{public}@", buf, 0x16u);
    }

    v23 = [(MTUserNotificationActionDispatcher *)self alarmStorage];
    [v23 dismissAlarmWithIdentifier:v12 dismissAction:5 withCompletion:v19 source:0];

    v24 = [(MTUserNotificationActionDispatcher *)self metrics];
    v25 = v24;
    v26 = 5;
LABEL_36:
    [v24 logAlarmDismissAction:v26];
LABEL_37:

    goto LABEL_38;
  }

  if (v15)
  {
    if (v22)
    {
      *buf = 138543618;
      v41 = self;
      v42 = 2114;
      v43 = v12;
      _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ received dismiss action for bedtime notification %{public}@", buf, 0x16u);
    }

    v27 = [(MTUserNotificationActionDispatcher *)self alarmStorage];
    [v27 dismissAlarmWithIdentifier:v12 dismissAction:1 withCompletion:v19 source:0];

    v24 = [(MTUserNotificationActionDispatcher *)self metrics];
    v25 = v24;
    v26 = 1;
    goto LABEL_36;
  }

  if (v17)
  {
    if (v22)
    {
      *buf = 138543618;
      v41 = self;
      v42 = 2114;
      v43 = v12;
      _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ received dismiss action for snooze countdown notification %{public}@", buf, 0x16u);
    }

    v36 = [(MTUserNotificationActionDispatcher *)self alarmStorage];
    [v36 dismissAlarmWithIdentifier:v12 dismissAction:6 withCompletion:v19 source:0];

    v24 = [(MTUserNotificationActionDispatcher *)self metrics];
    v25 = v24;
    v26 = 6;
    goto LABEL_36;
  }

  if (v10)
  {
    if (v22)
    {
      *buf = 138543618;
      v41 = self;
      v42 = 2114;
      v43 = v12;
      _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ received dismiss action for alarm %{public}@", buf, 0x16u);
    }

    v37 = [(MTUserNotificationActionDispatcher *)self alarmStorage];
    [v37 dismissAlarmWithIdentifier:v12 dismissAction:0 withCompletion:v19 source:0];

    v24 = [(MTUserNotificationActionDispatcher *)self metrics];
    v25 = v24;
    v26 = 0;
    goto LABEL_36;
  }

  if (v22)
  {
    *buf = 138543618;
    v41 = self;
    v42 = 2114;
    v43 = v12;
    _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ processing dismiss action for alarmkit alarm with identifier: %{public}@", buf, 0x16u);
  }

  [(MTAlarmKit *)self->_alarmKit dismissAlarmWithIdentifier:v12];
LABEL_38:

  v35 = *MEMORY[0x1E69E9840];
}

uint64_t __127__MTUserNotificationActionDispatcher_finishHandlingAlarmNotificationIdentifier_isFirstParty_action_category_completionHandler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ calling completion", &v6, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

+ (unint64_t)_timerNotificationActionForUserNotificationAction:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"MTTimerRepeatAction"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MTTimerDismissAction"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69833F8]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69833E0]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E6983420]))
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MTTimerSecondaryAction"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleTimerNotificationResponse:(id)a3 withCompletionHandler:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__MTUserNotificationActionDispatcher__handleTimerNotificationResponse_withCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E7B0D230;
  aBlock[4] = self;
  v8 = v7;
  v26 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [v6 actionIdentifier];
  v11 = MTLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v28 = self;
    v29 = 2114;
    v30 = v10;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ received response for action %{public}@", buf, 0x16u);
  }

  v12 = [objc_opt_class() _timerNotificationActionForUserNotificationAction:v10];
  if (v12)
  {
    v13 = v12;
    v14 = [v6 notification];
    v15 = [v14 request];
    v16 = [v15 identifier];

    timerStorage = self->_timerStorage;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __93__MTUserNotificationActionDispatcher__handleTimerNotificationResponse_withCompletionHandler___block_invoke_7;
    v21[3] = &unk_1E7B0D740;
    v21[4] = self;
    v22 = v16;
    v24 = v13;
    v23 = v9;
    v18 = v16;
    [(MTTimerStorage *)timerStorage getTimerWithIdentifier:v18 completion:v21];
  }

  else
  {
    v19 = MTLogForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MTUserNotificationActionDispatcher _handleTimerNotificationResponse:v10 withCompletionHandler:v19];
    }

    v8[2](v8);
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __93__MTUserNotificationActionDispatcher__handleTimerNotificationResponse_withCompletionHandler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ calling completion", &v6, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)finishHandlingTimerNotificationWithIdentifier:(id)a3 action:(unint64_t)a4 isFirstParty:(BOOL)a5 withCompletionHandler:(id)a6
{
  v7 = a5;
  v25 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  switch(a4)
  {
    case 3uLL:
      v19 = MTLogForCategory(3);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543618;
        v22 = self;
        v23 = 2114;
        v24 = v10;
        _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ processing secondary action for alarmkit timer with identifier: %{public}@", &v21, 0x16u);
      }

      [(MTAlarmKit *)self->_alarmKit performSecondaryActionWithIdentifier:v10];
      break;
    case 2uLL:
      v16 = MTLogForCategory(4);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v17)
        {
          v21 = 138543618;
          v22 = self;
          v23 = 2114;
          v24 = v10;
          _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ received repeat action for timer %{public}@", &v21, 0x16u);
        }

        v18 = [(MTUserNotificationActionDispatcher *)self timerStorage];
        [v18 repeatTimerWithIdentifier:v10 withCompletion:v11 source:0];

        v15 = [(MTUserNotificationActionDispatcher *)self metrics];
        [v15 logTimerRepeated];
        goto LABEL_12;
      }

      if (v17)
      {
        v21 = 138543618;
        v22 = self;
        v23 = 2114;
        v24 = v10;
        _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ processing repeat action for alarmkit timer with identifier: %{public}@", &v21, 0x16u);
      }

      [(MTAlarmKit *)self->_alarmKit repeatTimerWithIdentifier:v10];
      break;
    case 1uLL:
      v12 = MTLogForCategory(4);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v13)
        {
          v21 = 138543618;
          v22 = self;
          v23 = 2114;
          v24 = v10;
          _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ received dismiss action for timer %{public}@", &v21, 0x16u);
        }

        v14 = [(MTUserNotificationActionDispatcher *)self timerStorage];
        [v14 dismissTimerWithIdentifier:v10 withCompletion:v11 source:0];

        v15 = [(MTUserNotificationActionDispatcher *)self metrics];
        [v15 logTimerDismissed];
LABEL_12:

        break;
      }

      if (v13)
      {
        v21 = 138543618;
        v22 = self;
        v23 = 2114;
        v24 = v10;
        _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ processing dismiss action for alarmkit timer with identifier: %{public}@", &v21, 0x16u);
      }

      [(MTAlarmKit *)self->_alarmKit dismissTimerWithIdentifier:v10];
      break;
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_handleAlarmNotificationResponse:(uint64_t)a1 withCompletionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "Unexpected alarm notification action: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_handleTimerNotificationResponse:(uint64_t)a1 withCompletionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "Unexpected timer notification action: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end