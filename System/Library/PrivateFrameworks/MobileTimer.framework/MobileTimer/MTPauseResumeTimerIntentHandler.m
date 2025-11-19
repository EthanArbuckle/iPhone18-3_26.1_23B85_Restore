@interface MTPauseResumeTimerIntentHandler
- (id)_responseToPauseTimerIntent:(id)a3 withPausedTimers:(id)a4 error:(id)a5 dryRun:(BOOL)a6;
- (id)_responseToResumeTimerIntent:(id)a3 withResumedTimers:(id)a4 error:(id)a5 dryRun:(BOOL)a6;
- (void)confirmPauseTimer:(id)a3 completion:(id)a4;
- (void)confirmResumeTimer:(id)a3 completion:(id)a4;
- (void)handlePauseTimer:(id)a3 completion:(id)a4;
- (void)handleResumeTimer:(id)a3 completion:(id)a4;
- (void)resolvePauseMultipleForPauseTimer:(id)a3 withCompletion:(id)a4;
- (void)resolveResumeMultipleForResumeTimer:(id)a3 withCompletion:(id)a4;
- (void)resolveTargetTimerForPauseTimer:(id)a3 withCompletion:(id)a4;
- (void)resolveTargetTimerForResumeTimer:(id)a3 withCompletion:(id)a4;
@end

@implementation MTPauseResumeTimerIntentHandler

- (void)resolveTargetTimerForPauseTimer:(id)a3 withCompletion:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[MTPauseResumeTimerIntentHandler resolveTargetTimerForPauseTimer:withCompletion:]";
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (v7)
  {
    v9 = [v6 targetTimer];
    v10 = [(MTUpdateTimerIntentHandler *)self _timerFromIntentTargetTimer:v9 defaultState:0];

    v11 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2965FF0];
    v12 = [v6 pauseMultiple];
    v13 = [v12 BOOLValue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82__MTPauseResumeTimerIntentHandler_resolveTargetTimerForPauseTimer_withCompletion___block_invoke;
    v16[3] = &unk_1E7B0C3E8;
    v17 = v10;
    v18 = v7;
    v14 = v10;
    [(MTTimerIntentHandler *)self _genericallyResolveTargetTimer:v14 multiple:v13 allowedTimerStatesForFollowup:v11 completion:v16];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __82__MTPauseResumeTimerIntentHandler_resolveTargetTimerForPauseTimer_withCompletion___block_invoke(uint64_t a1, void *a2)
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

- (void)resolvePauseMultipleForPauseTimer:(id)a3 withCompletion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[MTPauseResumeTimerIntentHandler resolvePauseMultipleForPauseTimer:withCompletion:]";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%s %@", &v12, 0x16u);
  }

  if (v6)
  {
    v8 = MEMORY[0x1E696E760];
    v9 = [v5 pauseMultiple];
    v10 = [v8 successWithResolvedValue:{objc_msgSend(v9, "BOOLValue")}];
    v6[2](v6, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)confirmPauseTimer:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[MTPauseResumeTimerIntentHandler confirmPauseTimer:completion:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", &v10, 0x16u);
  }

  [(MTPauseResumeTimerIntentHandler *)self _handlePauseTimer:v6 dryRun:1 completion:v7];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)handlePauseTimer:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[MTPauseResumeTimerIntentHandler handlePauseTimer:completion:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", &v10, 0x16u);
  }

  [(MTPauseResumeTimerIntentHandler *)self _handlePauseTimer:v6 dryRun:0 completion:v7];

  v9 = *MEMORY[0x1E69E9840];
}

void __71__MTPauseResumeTimerIntentHandler__handlePauseTimer_dryRun_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = [*(a1 + 32) _responseToPauseTimerIntent:*(a1 + 40) withPausedTimers:a2 error:a3 dryRun:*(a1 + 56)];
    (*(v3 + 16))(v3, v4);
  }
}

- (void)resolveTargetTimerForResumeTimer:(id)a3 withCompletion:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[MTPauseResumeTimerIntentHandler resolveTargetTimerForResumeTimer:withCompletion:]";
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v9 = [v6 targetTimer];
  v10 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2965E28, 0}];
  v11 = [v6 resumeMultiple];
  v12 = [v11 BOOLValue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__MTPauseResumeTimerIntentHandler_resolveTargetTimerForResumeTimer_withCompletion___block_invoke;
  v16[3] = &unk_1E7B0C3E8;
  v17 = v9;
  v18 = v7;
  v13 = v7;
  v14 = v9;
  [(MTTimerIntentHandler *)self _genericallyResolveTargetTimer:v14 multiple:v12 allowedTimerStatesForFollowup:v10 completion:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __83__MTPauseResumeTimerIntentHandler_resolveTargetTimerForResumeTimer_withCompletion___block_invoke(uint64_t a1, void *a2)
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

- (void)resolveResumeMultipleForResumeTimer:(id)a3 withCompletion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[MTPauseResumeTimerIntentHandler resolveResumeMultipleForResumeTimer:withCompletion:]";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%s %@", &v12, 0x16u);
  }

  if (v6)
  {
    v8 = MEMORY[0x1E696E760];
    v9 = [v5 resumeMultiple];
    v10 = [v8 successWithResolvedValue:{objc_msgSend(v9, "BOOLValue")}];
    v6[2](v6, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)confirmResumeTimer:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[MTPauseResumeTimerIntentHandler confirmResumeTimer:completion:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", &v10, 0x16u);
  }

  [(MTPauseResumeTimerIntentHandler *)self _handleResumeTimer:v6 dryRun:1 completion:v7];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)handleResumeTimer:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[MTPauseResumeTimerIntentHandler handleResumeTimer:completion:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", &v10, 0x16u);
  }

  [(MTPauseResumeTimerIntentHandler *)self _handleResumeTimer:v6 dryRun:0 completion:v7];

  v9 = *MEMORY[0x1E69E9840];
}

void __72__MTPauseResumeTimerIntentHandler__handleResumeTimer_dryRun_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = [*(a1 + 32) _responseToResumeTimerIntent:*(a1 + 40) withResumedTimers:a2 error:a3 dryRun:*(a1 + 56)];
    (*(v3 + 16))(v3, v4);
  }
}

- (id)_responseToPauseTimerIntent:(id)a3 withPausedTimers:(id)a4 error:(id)a5 dryRun:(BOOL)a6
{
  v6 = a6;
  v37 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10 && !v11)
  {
    v13 = [objc_alloc(MEMORY[0x1E696E930]) initWithCode:3 userActivity:0];
    [(__CFString *)v13 setPausedTimers:v10];
    v14 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
    {
      v15 = @"handled";
      *buf = 136315906;
      v30 = "[MTPauseResumeTimerIntentHandler _responseToPauseTimerIntent:withPausedTimers:error:dryRun:]";
      v31 = 2112;
      if (v6)
      {
        v15 = @"confirmed";
      }

      v32 = v15;
      v33 = 2112;
      v34 = v9;
      v35 = 2112;
      v36 = v13;
      _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_INFO, "%s Successfully %@ pause timer attribute intent %@ with response %@", buf, 0x2Au);
    }

    goto LABEL_22;
  }

  v16 = [v11 domain];
  v17 = [v16 isEqualToString:@"MTTimerIntentHandlerErrorDomain"];

  if (v17)
  {
    v18 = [v12 code];
    switch(v18)
    {
      case 7:
        v19 = objc_alloc(MEMORY[0x1E696E930]);
        v20 = 7;
LABEL_18:
        v13 = [v19 initWithCode:v20 userActivity:0];
        if (v13)
        {
          goto LABEL_20;
        }

        break;
      case 6:
        v21 = objc_alloc(MEMORY[0x1E696E930]);
        v22 = [v9 pauseMultiple];
        if ([v22 BOOLValue])
        {
          v23 = 9;
        }

        else
        {
          v23 = 8;
        }

        v13 = [v21 initWithCode:v23 userActivity:0];

        if (v13)
        {
          goto LABEL_20;
        }

        break;
      case 5:
        v19 = objc_alloc(MEMORY[0x1E696E930]);
        v20 = 6;
        goto LABEL_18;
    }
  }

  v13 = [objc_alloc(MEMORY[0x1E696E930]) initWithCode:4 userActivity:0];
LABEL_20:
  v24 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v27 = v6 ? @"confirm" : @"handle";
    if (v12)
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"due to error %@", v12];
    }

    else
    {
      v28 = &stru_1F29360E0;
    }

    *buf = 136315906;
    v30 = "[MTPauseResumeTimerIntentHandler _responseToPauseTimerIntent:withPausedTimers:error:dryRun:]";
    v31 = 2112;
    v32 = v27;
    v33 = 2112;
    v34 = v9;
    v35 = 2112;
    v36 = v28;
    _os_log_error_impl(&dword_1B1F9F000, v24, OS_LOG_TYPE_ERROR, "%s Failed to %@ pause timer intent %@%@", buf, 0x2Au);
    if (v12)
    {
    }
  }

LABEL_22:
  v25 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_responseToResumeTimerIntent:(id)a3 withResumedTimers:(id)a4 error:(id)a5 dryRun:(BOOL)a6
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

    if (v17)
    {
      v18 = [v12 code];
      switch(v18)
      {
        case 7:
          v19 = 7;
          break;
        case 6:
          v23 = [v9 resumeMultiple];
          if ([v23 BOOLValue])
          {
            v19 = 9;
          }

          else
          {
            v19 = 8;
          }

          break;
        case 5:
          v19 = 6;
          break;
        default:
          v19 = 4;
          break;
      }
    }

    else
    {
      v19 = 4;
    }

    v13 = [objc_alloc(MEMORY[0x1E696E9A0]) initWithCode:v19 userActivity:0];
    v20 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v24 = v6 ? @"confirm" : @"handle";
      if (v12)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"due to error %@", v12];
      }

      else
      {
        v25 = &stru_1F29360E0;
      }

      *buf = 136315906;
      v27 = "[MTPauseResumeTimerIntentHandler _responseToResumeTimerIntent:withResumedTimers:error:dryRun:]";
      v28 = 2112;
      v29 = v24;
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v25;
      _os_log_error_impl(&dword_1B1F9F000, v20, OS_LOG_TYPE_ERROR, "%s Failed to %@ resume timer intent %@%@", buf, 0x2Au);
      if (v12)
      {
      }
    }
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E696E9A0]) initWithCode:3 userActivity:0];
    [(__CFString *)v13 setResumedTimers:v10];
    v14 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
    {
      v15 = @"handled";
      *buf = 136315906;
      v27 = "[MTPauseResumeTimerIntentHandler _responseToResumeTimerIntent:withResumedTimers:error:dryRun:]";
      v28 = 2112;
      if (v6)
      {
        v15 = @"confirmed";
      }

      v29 = v15;
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_INFO, "%s Successfully %@ resume timer attribute intent %@ with response %@", buf, 0x2Au);
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v13;
}

@end