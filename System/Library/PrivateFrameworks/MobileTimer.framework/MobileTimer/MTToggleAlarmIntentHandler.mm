@interface MTToggleAlarmIntentHandler
- (BOOL)getEnableStateForAlarm:(id)a3;
- (id)_alarmUserActivityWithDisableIntent:(id)a3;
- (id)_alarmUserActivityWithEnableIntent:(id)a3;
- (void)_toggleAlarm:(id)a3 alarmIDString:(id)a4 completion:(id)a5;
- (void)confirmDisableAlarm:(id)a3 completion:(id)a4;
- (void)confirmEnableAlarm:(id)a3 completion:(id)a4;
- (void)confirmToggleAlarm:(id)a3 completion:(id)a4;
- (void)handleDisableAlarm:(id)a3 completion:(id)a4;
- (void)handleEnableAlarm:(id)a3 completion:(id)a4;
- (void)handleToggleAlarm:(id)a3 completion:(id)a4;
- (void)provideAlarmOptionsForToggleAlarm:(id)a3 withCompletion:(id)a4;
- (void)resolveAlarmForToggleAlarm:(id)a3 withCompletion:(id)a4;
- (void)resolveOperationForToggleAlarm:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleAlarm:(id)a3 withCompletion:(id)a4;
@end

@implementation MTToggleAlarmIntentHandler

- (void)confirmEnableAlarm:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [MTEnableAlarmIntentResponse alloc];
  v9 = [(MTToggleAlarmIntentHandler *)self _alarmUserActivityWithEnableIntent:v7];

  v10 = [(MTEnableAlarmIntentResponse *)v8 initWithCode:1 userActivity:v9];
  v6[2](v6, v10);
}

- (void)confirmDisableAlarm:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [MTDisableAlarmIntentResponse alloc];
  v9 = [(MTToggleAlarmIntentHandler *)self _alarmUserActivityWithDisableIntent:v7];

  v10 = [(MTDisableAlarmIntentResponse *)v8 initWithCode:1 userActivity:v9];
  v6[2](v6, v10);
}

- (void)handleEnableAlarm:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [MTToggleAlarmIntentHandler handleEnableAlarm:completion:];
  }

  v9 = [v6 alarmID];
  v10 = [v9 identifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__MTToggleAlarmIntentHandler_handleEnableAlarm_completion___block_invoke;
  v12[3] = &unk_1E7B0C660;
  v13 = v7;
  v11 = v7;
  [(MTToggleAlarmIntentHandler *)self _toggleAlarm:MEMORY[0x1E695E118] alarmIDString:v10 completion:v12];
}

void __59__MTToggleAlarmIntentHandler_handleEnableAlarm_completion___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 32))
  {
    v4 = [MTEnableAlarmIntentResponse alloc];
    if (a2)
    {
      v5 = 4;
    }

    else
    {
      v5 = 5;
    }

    v6 = [(MTEnableAlarmIntentResponse *)v4 initWithCode:v5 userActivity:0];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)handleDisableAlarm:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [MTToggleAlarmIntentHandler handleDisableAlarm:completion:];
  }

  v9 = [v6 alarmID];
  v10 = [v9 identifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__MTToggleAlarmIntentHandler_handleDisableAlarm_completion___block_invoke;
  v12[3] = &unk_1E7B0C660;
  v13 = v7;
  v11 = v7;
  [(MTToggleAlarmIntentHandler *)self _toggleAlarm:MEMORY[0x1E695E110] alarmIDString:v10 completion:v12];
}

void __60__MTToggleAlarmIntentHandler_handleDisableAlarm_completion___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 32))
  {
    v4 = [MTDisableAlarmIntentResponse alloc];
    if (a2)
    {
      v5 = 4;
    }

    else
    {
      v5 = 5;
    }

    v6 = [(MTDisableAlarmIntentResponse *)v4 initWithCode:v5 userActivity:0];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)resolveAlarmForToggleAlarm:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 alarm];
  v9 = [v8 identifier];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [(MTAlarmIntentHandler *)self alarmManager];
    v12 = [v11 alarmsIncludingSleepAlarm:1];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __72__MTToggleAlarmIntentHandler_resolveAlarmForToggleAlarm_withCompletion___block_invoke;
    v19[3] = &unk_1E7B0C688;
    v13 = v7;
    v20 = v13;
    v14 = [v12 addFailureBlock:v19];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__MTToggleAlarmIntentHandler_resolveAlarmForToggleAlarm_withCompletion___block_invoke_2;
    v16[3] = &unk_1E7B0C6D8;
    v17 = v6;
    v18 = v13;
    v15 = [v12 addSuccessBlock:v16];
  }

  else
  {
    v12 = +[MTIntentAlarmResolutionResult needsValue];
    (*(v7 + 2))(v7, v12);
  }
}

void __72__MTToggleAlarmIntentHandler_resolveAlarmForToggleAlarm_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[MTIntentAlarmResolutionResult unsupported];
  (*(v1 + 16))(v1, v2);
}

void __72__MTToggleAlarmIntentHandler_resolveAlarmForToggleAlarm_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__MTToggleAlarmIntentHandler_resolveAlarmForToggleAlarm_withCompletion___block_invoke_3;
  v9[3] = &unk_1E7B0C6B0;
  v10 = *(a1 + 32);
  v4 = [a2 na_firstObjectPassingTest:v9];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v4)
  {
    v7 = [v4 intentAlarm];
    v8 = [MTIntentAlarmResolutionResult successWithResolvedAlarm:v7];
    (*(v6 + 16))(v6, v8);
  }

  else
  {
    v7 = +[MTIntentAlarmResolutionResult needsValue];
    (*(v6 + 16))(v6, v7);
  }
}

uint64_t __72__MTToggleAlarmIntentHandler_resolveAlarmForToggleAlarm_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 alarmIDString];
  v4 = [*(a1 + 32) alarm];
  v5 = [v4 identifier];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

- (void)resolveStateForToggleAlarm:(id)a3 withCompletion:(id)a4
{
  v9 = a4;
  v5 = a3;
  if ([v5 state])
  {
    v6 = [v5 state];

    v7 = [MTAlarmStateResolutionResult successWithResolvedAlarmState:v6];
    v9[2](v9, v7);
  }

  else
  {
    v8 = [v5 operation];

    if (v8 == 1)
    {
      +[MTAlarmStateResolutionResult needsValue];
    }

    else
    {
      +[MTAlarmStateResolutionResult notRequired];
    }
    v7 = ;
    v9[2](v9, v7);
  }
}

- (void)provideAlarmOptionsForToggleAlarm:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = [(MTAlarmIntentHandler *)self alarmManager];
  v7 = [v6 alarmsIncludingSleepAlarm:1];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__MTToggleAlarmIntentHandler_provideAlarmOptionsForToggleAlarm_withCompletion___block_invoke;
  v14[3] = &unk_1E7B0C688;
  v8 = v5;
  v15 = v8;
  v9 = [v7 addFailureBlock:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__MTToggleAlarmIntentHandler_provideAlarmOptionsForToggleAlarm_withCompletion___block_invoke_2;
  v12[3] = &unk_1E7B0C720;
  v13 = v8;
  v10 = v8;
  v11 = [v7 addSuccessBlock:v12];
}

void __79__MTToggleAlarmIntentHandler_provideAlarmOptionsForToggleAlarm_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 na_map:&__block_literal_global_1];
  (*(*(a1 + 32) + 16))();
}

- (void)confirmToggleAlarm:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = [[MTToggleAlarmIntentResponse alloc] initWithCode:1 userActivity:0];
  v4[2](v4, v5);
}

- (void)handleToggleAlarm:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [MTToggleAlarmIntentHandler handleToggleAlarm:completion:];
  }

  v9 = [v6 operation];
  if (v9 == 1)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "state") == 1}];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 alarm];
  v12 = [v11 identifier];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__MTToggleAlarmIntentHandler_handleToggleAlarm_completion___block_invoke;
  v15[3] = &unk_1E7B0C748;
  v16 = v6;
  v17 = v7;
  v13 = v6;
  v14 = v7;
  [(MTToggleAlarmIntentHandler *)self _toggleAlarm:v10 alarmIDString:v12 completion:v15];

  if (v9 == 1)
  {
  }
}

void __59__MTToggleAlarmIntentHandler_handleToggleAlarm_completion___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 40))
  {
    v6 = [MTToggleAlarmIntentResponse alloc];
    if (a2)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }

    v9 = [(MTToggleAlarmIntentResponse *)v6 initWithCode:v7 userActivity:0];
    [(MTToggleAlarmIntentResponse *)v9 setState:a3];
    v8 = [*(a1 + 32) alarm];
    [(MTToggleAlarmIntentResponse *)v9 setAlarm:v8];

    (*(*(a1 + 40) + 16))();
  }
}

- (void)resolveOperationForToggleAlarm:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v5 = a4;
  if ([v7 operation])
  {
    +[MTAlarmOperationResolutionResult successWithResolvedAlarmOperation:](MTAlarmOperationResolutionResult, "successWithResolvedAlarmOperation:", [v7 operation]);
  }

  else
  {
    +[MTAlarmOperationResolutionResult needsValue];
  }
  v6 = ;
  v5[2](v5, v6);
}

- (void)_toggleAlarm:(id)a3 alarmIDString:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MTAlarmIntentHandler *)self alarmManager];
  v12 = [v11 alarmsIncludingSleepAlarm:1];

  objc_initWeak(&location, self);
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __68__MTToggleAlarmIntentHandler__toggleAlarm_alarmIDString_completion___block_invoke;
  v26[3] = &unk_1E7B0C770;
  objc_copyWeak(&v30, &location);
  v13 = v9;
  v27 = v13;
  v14 = v8;
  v28 = v14;
  v29 = v31;
  v15 = [v12 flatMap:v26];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __68__MTToggleAlarmIntentHandler__toggleAlarm_alarmIDString_completion___block_invoke_17;
  v23[3] = &unk_1E7B0C798;
  v16 = v10;
  v24 = v16;
  v25 = v31;
  v17 = [v15 addSuccessBlock:v23];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __68__MTToggleAlarmIntentHandler__toggleAlarm_alarmIDString_completion___block_invoke_2;
  v20[3] = &unk_1E7B0C7C0;
  v18 = v16;
  v21 = v18;
  v22 = v31;
  v19 = [v15 addFailureBlock:v20];

  objc_destroyWeak(&v30);
  _Block_object_dispose(v31, 8);
  objc_destroyWeak(&location);
}

id __68__MTToggleAlarmIntentHandler__toggleAlarm_alarmIDString_completion___block_invoke(uint64_t a1, void *a2)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = WeakRetained;
    v31 = 2114;
    *v32 = v3;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ alarm fetch returned alarms: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_9;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __68__MTToggleAlarmIntentHandler__toggleAlarm_alarmIDString_completion___block_invoke_11;
  v27[3] = &unk_1E7B0C6B0;
  v28 = v6;
  v7 = [v3 na_firstObjectPassingTest:v27];

  if (!v7)
  {
LABEL_9:
    v12 = MTLogForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __68__MTToggleAlarmIntentHandler__toggleAlarm_alarmIDString_completion___block_invoke_cold_1(WeakRetained, v12);
    }

    v13 = MEMORY[0x1E69B3780];
    v14 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A588];
    v36[0] = @"Found no alarm to enable/disable";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v15 = [v14 errorWithDomain:@"com.apple.mobiletimer.alarmintent" code:0 userInfo:v7];
    v16 = [v13 futureWithError:v15];
    goto LABEL_18;
  }

  v8 = [WeakRetained getEnableStateForAlarm:v7];
  v9 = *(a1 + 40);
  if (!v9)
  {
    goto LABEL_12;
  }

  if (v8 != [v9 BOOLValue])
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = [v10 BOOLValue];
LABEL_13:
      v17 = MTLogForCategory(3);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v30 = WeakRetained;
        v31 = 1024;
        *v32 = v11;
        *&v32[4] = 2114;
        *&v32[6] = v7;
        _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating enable state to %i for alarm: %{public}@", buf, 0x1Cu);
      }

      v15 = [WeakRetained updateEnableStateForAlarm:v7 enabled:v11];
      v18 = [WeakRetained getEnableStateForAlarm:v15];
      v19 = 1;
      if (!v18)
      {
        v19 = 2;
      }

      *(*(*(a1 + 48) + 8) + 24) = v19;
      v20 = [WeakRetained alarmManager];
      v16 = [v20 updateAlarm:v15];

LABEL_18:
      goto LABEL_19;
    }

LABEL_12:
    v11 = v8 ^ 1u;
    goto LABEL_13;
  }

  v23 = MTLogForCategory(3);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 40);
    *buf = 138544130;
    v30 = WeakRetained;
    v31 = 2114;
    *v32 = v7;
    *&v32[8] = 2114;
    *&v32[10] = v24;
    v33 = 1024;
    v34 = v8;
    _os_log_impl(&dword_1B1F9F000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Alarm being modified: %{public}@. Enabled state from intent: %{public}@, current alarm enable state: %i", buf, 0x26u);
  }

  v25 = 1;
  if (!v8)
  {
    v25 = 2;
  }

  *(*(*(a1 + 48) + 8) + 24) = v25;
  v26 = MTLogForCategory(3);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = WeakRetained;
    v31 = 2114;
    *v32 = v7;
    _os_log_impl(&dword_1B1F9F000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ alarm state already matches intent state : %{public}@", buf, 0x16u);
  }

  v16 = [MEMORY[0x1E69B3780] futureWithNoResult];
LABEL_19:

  v21 = *MEMORY[0x1E69E9840];

  return v16;
}

uint64_t __68__MTToggleAlarmIntentHandler__toggleAlarm_alarmIDString_completion___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = [a2 alarmID];
  v4 = [v3 UUIDString];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (BOOL)getEnableStateForAlarm:(id)a3
{
  v3 = a3;
  v4 = [v3 isSleepAlarm];
  v5 = [v3 isEnabled];
  v6 = v4 ^ 1;
  v7 = (v4 ^ 1) & v5;
  if (v6 & 1) == 0 && (v5)
  {
    v7 = [v3 sleepSchedule];
  }

  return v7;
}

- (id)_alarmUserActivityWithEnableIntent:(id)a3
{
  v3 = MEMORY[0x1E696B090];
  v4 = a3;
  v5 = [v3 mtUserActivityWithActivityType:@"com.apple.clock.alarm"];
  v6 = objc_opt_class();
  v7 = [v4 identifier];
  v8 = [v4 alarmID];

  v9 = [v8 identifier];
  v10 = [v6 createUserInfoWithIntentName:v7 alarmIDString:v9 time:0 label:0];

  [v5 setUserInfo:v10];

  return v5;
}

- (id)_alarmUserActivityWithDisableIntent:(id)a3
{
  v3 = MEMORY[0x1E696B090];
  v4 = a3;
  v5 = [v3 mtUserActivityWithActivityType:@"com.apple.clock.alarm"];
  v6 = objc_opt_class();
  v7 = [v4 identifier];
  v8 = [v4 alarmID];

  v9 = [v8 identifier];
  v10 = [v6 createUserInfoWithIntentName:v7 alarmIDString:v9 time:0 label:0];

  [v5 setUserInfo:v10];

  return v5;
}

- (void)handleEnableAlarm:completion:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1B1F9F000, v0, v1, "%s intent:%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleDisableAlarm:completion:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1B1F9F000, v0, v1, "%s intent:%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleToggleAlarm:completion:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1B1F9F000, v0, v1, "%s intent:%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __68__MTToggleAlarmIntentHandler__toggleAlarm_alarmIDString_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "%{public}@ found no alarm to enable", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end