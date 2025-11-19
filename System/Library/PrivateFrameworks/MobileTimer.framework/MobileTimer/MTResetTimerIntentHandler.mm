@interface MTResetTimerIntentHandler
- (id)_responseToResetTimerIntent:(id)a3 withResetTimers:(id)a4 error:(id)a5 dryRun:(BOOL)a6;
- (void)confirmResetTimer:(id)a3 completion:(id)a4;
- (void)handleResetTimer:(id)a3 completion:(id)a4;
- (void)resolveTargetTimerForResetTimer:(id)a3 withCompletion:(id)a4;
@end

@implementation MTResetTimerIntentHandler

- (void)resolveTargetTimerForResetTimer:(id)a3 withCompletion:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[MTResetTimerIntentHandler resolveTargetTimerForResetTimer:withCompletion:]";
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (v7)
  {
    v9 = [v6 targetTimer];
    v10 = [v6 targetTimer];
    v11 = -[MTUpdateTimerIntentHandler _timerFromIntentTargetTimer:defaultState:](self, "_timerFromIntentTargetTimer:defaultState:", v9, [v10 state]);

    if ([v11 type] == 2)
    {
      [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2965F30, &unk_1F2965F48, 0, v17}];
    }

    else
    {
      [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2965F30, &unk_1F2965F48, &unk_1F2965F60, 0}];
    }
    v12 = ;
    v13 = [v6 resetMultiple];
    v14 = [v13 BOOLValue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __76__MTResetTimerIntentHandler_resolveTargetTimerForResetTimer_withCompletion___block_invoke;
    v18[3] = &unk_1E7B0C3E8;
    v19 = v11;
    v20 = v7;
    v15 = v11;
    [(MTTimerIntentHandler *)self _genericallyResolveTargetTimer:v15 multiple:v14 allowedTimerStatesForFollowup:v12 completion:v18];
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __76__MTResetTimerIntentHandler_resolveTargetTimerForResetTimer_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E696EAC8] successWithResolvedTimer:*(a1 + 32)];
  }

  v5 = v4;
  (*(*(a1 + 40) + 16))();
}

- (void)confirmResetTimer:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[MTResetTimerIntentHandler confirmResetTimer:completion:]";
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__MTResetTimerIntentHandler_confirmResetTimer_completion___block_invoke;
    v10[3] = &unk_1E7B0E258;
    v12 = v7;
    v10[4] = self;
    v11 = v6;
    [(MTResetTimerIntentHandler *)self _handleResetTimer:v11 dryRun:1 completion:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __58__MTResetTimerIntentHandler_confirmResetTimer_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) _responseToResetTimerIntent:*(a1 + 40) withResetTimers:a2 error:a3 dryRun:1];
  (*(v3 + 16))(v3, v4);
}

- (void)handleResetTimer:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[MTResetTimerIntentHandler handleResetTimer:completion:]";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__MTResetTimerIntentHandler_handleResetTimer_completion___block_invoke;
  v12[3] = &unk_1E7B0E258;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v9 = v6;
  v10 = v7;
  [(MTResetTimerIntentHandler *)self _handleResetTimer:v9 dryRun:0 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __57__MTResetTimerIntentHandler_handleResetTimer_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = [*(a1 + 32) _responseToResetTimerIntent:*(a1 + 40) withResetTimers:a2 error:a3 dryRun:0];
    (*(v3 + 16))(v3, v4);
  }
}

uint64_t __65__MTResetTimerIntentHandler__handleResetTimer_dryRun_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setState:1];
  [v2 setState:3];

  return 0;
}

- (id)_responseToResetTimerIntent:(id)a3 withResetTimers:(id)a4 error:(id)a5 dryRun:(BOOL)a6
{
  v6 = a6;
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v10 || v11)
  {
    v16 = [v11 domain];
    v17 = [v16 isEqualToString:@"MTTimerIntentHandlerErrorDomain"];

    if (!v17 || (v18 = [v12 code], (v18 - 5) > 2) || (v13 = objc_msgSend(objc_alloc(MEMORY[0x1E696E998]), "initWithCode:userActivity:", qword_1B20B8AF0[v18 - 5], 0)) == 0)
    {
      v13 = [objc_alloc(MEMORY[0x1E696E998]) initWithCode:4 userActivity:0];
    }

    v19 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = v6 ? @"confirm" : @"handle";
      if (v12)
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"due to error %@", v12];
      }

      else
      {
        v23 = &stru_1F29360E0;
      }

      *buf = 136316162;
      v25 = "[MTResetTimerIntentHandler _responseToResetTimerIntent:withResetTimers:error:dryRun:]";
      v26 = 2112;
      v27 = v22;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v23;
      v32 = 2112;
      v33 = v13;
      _os_log_error_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_ERROR, "%s Failed to %@ reset timer intent %@ %@, response: %@", buf, 0x34u);
      if (v12)
      {
      }
    }
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E696E998]) initWithCode:3 userActivity:0];
    [(__CFString *)v13 setResetTimers:v10];
    v14 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
    {
      v15 = @"handled";
      *buf = 136315906;
      v25 = "[MTResetTimerIntentHandler _responseToResetTimerIntent:withResetTimers:error:dryRun:]";
      v26 = 2112;
      if (v6)
      {
        v15 = @"confirmed";
      }

      v27 = v15;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_INFO, "%s Successfully %@ reset timer intent %@ with response %@", buf, 0x2Au);
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v13;
}

@end