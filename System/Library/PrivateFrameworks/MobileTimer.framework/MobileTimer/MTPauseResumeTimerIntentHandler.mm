@interface MTPauseResumeTimerIntentHandler
- (id)_responseToPauseTimerIntent:(id)intent withPausedTimers:(id)timers error:(id)error dryRun:(BOOL)run;
- (id)_responseToResumeTimerIntent:(id)intent withResumedTimers:(id)timers error:(id)error dryRun:(BOOL)run;
- (void)confirmPauseTimer:(id)timer completion:(id)completion;
- (void)confirmResumeTimer:(id)timer completion:(id)completion;
- (void)handlePauseTimer:(id)timer completion:(id)completion;
- (void)handleResumeTimer:(id)timer completion:(id)completion;
- (void)resolvePauseMultipleForPauseTimer:(id)timer withCompletion:(id)completion;
- (void)resolveResumeMultipleForResumeTimer:(id)timer withCompletion:(id)completion;
- (void)resolveTargetTimerForPauseTimer:(id)timer withCompletion:(id)completion;
- (void)resolveTargetTimerForResumeTimer:(id)timer withCompletion:(id)completion;
@end

@implementation MTPauseResumeTimerIntentHandler

- (void)resolveTargetTimerForPauseTimer:(id)timer withCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[MTPauseResumeTimerIntentHandler resolveTargetTimerForPauseTimer:withCompletion:]";
    v21 = 2112;
    v22 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    targetTimer = [timerCopy targetTimer];
    v10 = [(MTUpdateTimerIntentHandler *)self _timerFromIntentTargetTimer:targetTimer defaultState:0];

    v11 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2965FF0];
    pauseMultiple = [timerCopy pauseMultiple];
    bOOLValue = [pauseMultiple BOOLValue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82__MTPauseResumeTimerIntentHandler_resolveTargetTimerForPauseTimer_withCompletion___block_invoke;
    v16[3] = &unk_1E7B0C3E8;
    v17 = v10;
    v18 = completionCopy;
    v14 = v10;
    [(MTTimerIntentHandler *)self _genericallyResolveTargetTimer:v14 multiple:bOOLValue allowedTimerStatesForFollowup:v11 completion:v16];
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

- (void)resolvePauseMultipleForPauseTimer:(id)timer withCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v7 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[MTPauseResumeTimerIntentHandler resolvePauseMultipleForPauseTimer:withCompletion:]";
    v14 = 2112;
    v15 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%s %@", &v12, 0x16u);
  }

  if (completionCopy)
  {
    v8 = MEMORY[0x1E696E760];
    pauseMultiple = [timerCopy pauseMultiple];
    v10 = [v8 successWithResolvedValue:{objc_msgSend(pauseMultiple, "BOOLValue")}];
    completionCopy[2](completionCopy, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)confirmPauseTimer:(id)timer completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[MTPauseResumeTimerIntentHandler confirmPauseTimer:completion:]";
    v12 = 2112;
    v13 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", &v10, 0x16u);
  }

  [(MTPauseResumeTimerIntentHandler *)self _handlePauseTimer:timerCopy dryRun:1 completion:completionCopy];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)handlePauseTimer:(id)timer completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[MTPauseResumeTimerIntentHandler handlePauseTimer:completion:]";
    v12 = 2112;
    v13 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", &v10, 0x16u);
  }

  [(MTPauseResumeTimerIntentHandler *)self _handlePauseTimer:timerCopy dryRun:0 completion:completionCopy];

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

- (void)resolveTargetTimerForResumeTimer:(id)timer withCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[MTPauseResumeTimerIntentHandler resolveTargetTimerForResumeTimer:withCompletion:]";
    v21 = 2112;
    v22 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  targetTimer = [timerCopy targetTimer];
  v10 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2965E28, 0}];
  resumeMultiple = [timerCopy resumeMultiple];
  bOOLValue = [resumeMultiple BOOLValue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__MTPauseResumeTimerIntentHandler_resolveTargetTimerForResumeTimer_withCompletion___block_invoke;
  v16[3] = &unk_1E7B0C3E8;
  v17 = targetTimer;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = targetTimer;
  [(MTTimerIntentHandler *)self _genericallyResolveTargetTimer:v14 multiple:bOOLValue allowedTimerStatesForFollowup:v10 completion:v16];

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

- (void)resolveResumeMultipleForResumeTimer:(id)timer withCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v7 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[MTPauseResumeTimerIntentHandler resolveResumeMultipleForResumeTimer:withCompletion:]";
    v14 = 2112;
    v15 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%s %@", &v12, 0x16u);
  }

  if (completionCopy)
  {
    v8 = MEMORY[0x1E696E760];
    resumeMultiple = [timerCopy resumeMultiple];
    v10 = [v8 successWithResolvedValue:{objc_msgSend(resumeMultiple, "BOOLValue")}];
    completionCopy[2](completionCopy, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)confirmResumeTimer:(id)timer completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[MTPauseResumeTimerIntentHandler confirmResumeTimer:completion:]";
    v12 = 2112;
    v13 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", &v10, 0x16u);
  }

  [(MTPauseResumeTimerIntentHandler *)self _handleResumeTimer:timerCopy dryRun:1 completion:completionCopy];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)handleResumeTimer:(id)timer completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[MTPauseResumeTimerIntentHandler handleResumeTimer:completion:]";
    v12 = 2112;
    v13 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", &v10, 0x16u);
  }

  [(MTPauseResumeTimerIntentHandler *)self _handleResumeTimer:timerCopy dryRun:0 completion:completionCopy];

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

- (id)_responseToPauseTimerIntent:(id)intent withPausedTimers:(id)timers error:(id)error dryRun:(BOOL)run
{
  runCopy = run;
  v37 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  timersCopy = timers;
  errorCopy = error;
  v12 = errorCopy;
  if (timersCopy && !errorCopy)
  {
    v13 = [objc_alloc(MEMORY[0x1E696E930]) initWithCode:3 userActivity:0];
    [(__CFString *)v13 setPausedTimers:timersCopy];
    v14 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
    {
      v15 = @"handled";
      *buf = 136315906;
      v30 = "[MTPauseResumeTimerIntentHandler _responseToPauseTimerIntent:withPausedTimers:error:dryRun:]";
      v31 = 2112;
      if (runCopy)
      {
        v15 = @"confirmed";
      }

      v32 = v15;
      v33 = 2112;
      v34 = intentCopy;
      v35 = 2112;
      v36 = v13;
      _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_INFO, "%s Successfully %@ pause timer attribute intent %@ with response %@", buf, 0x2Au);
    }

    goto LABEL_22;
  }

  domain = [errorCopy domain];
  v17 = [domain isEqualToString:@"MTTimerIntentHandlerErrorDomain"];

  if (v17)
  {
    code = [v12 code];
    switch(code)
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
        pauseMultiple = [intentCopy pauseMultiple];
        if ([pauseMultiple BOOLValue])
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
    v27 = runCopy ? @"confirm" : @"handle";
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
    v34 = intentCopy;
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

- (id)_responseToResumeTimerIntent:(id)intent withResumedTimers:(id)timers error:(id)error dryRun:(BOOL)run
{
  runCopy = run;
  v34 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  timersCopy = timers;
  errorCopy = error;
  v12 = errorCopy;
  if (!timersCopy || errorCopy)
  {
    domain = [errorCopy domain];
    v17 = [domain isEqualToString:@"MTTimerIntentHandlerErrorDomain"];

    if (v17)
    {
      code = [v12 code];
      switch(code)
      {
        case 7:
          v19 = 7;
          break;
        case 6:
          resumeMultiple = [intentCopy resumeMultiple];
          if ([resumeMultiple BOOLValue])
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
      v24 = runCopy ? @"confirm" : @"handle";
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
      v31 = intentCopy;
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
    [(__CFString *)v13 setResumedTimers:timersCopy];
    v14 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
    {
      v15 = @"handled";
      *buf = 136315906;
      v27 = "[MTPauseResumeTimerIntentHandler _responseToResumeTimerIntent:withResumedTimers:error:dryRun:]";
      v28 = 2112;
      if (runCopy)
      {
        v15 = @"confirmed";
      }

      v29 = v15;
      v30 = 2112;
      v31 = intentCopy;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_INFO, "%s Successfully %@ resume timer attribute intent %@ with response %@", buf, 0x2Au);
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v13;
}

@end