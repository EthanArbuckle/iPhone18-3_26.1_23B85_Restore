@interface MTSearchTimerIntentHandler
- (void)handleSearchForTimers:(id)timers completion:(id)completion;
@end

@implementation MTSearchTimerIntentHandler

- (void)handleSearchForTimers:(id)timers completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  timersCopy = timers;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[MTSearchTimerIntentHandler handleSearchForTimers:completion:]";
    v20 = 2112;
    v21 = timersCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    if ([timersCopy type] == 2)
    {
      label = 0;
    }

    else
    {
      label = [timersCopy label];
    }

    v10 = 2 * ([timersCopy type] == 2);
    v11 = objc_alloc(MEMORY[0x1E696EAC0]);
    [timersCopy duration];
    v13 = [v11 initWithLabel:label duration:0 remainingTime:objc_msgSend(timersCopy identifier:"state") state:v10 type:{v12, -1.0}];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__MTSearchTimerIntentHandler_handleSearchForTimers_completion___block_invoke;
    v15[3] = &unk_1E7B0F810;
    v15[4] = self;
    v16 = timersCopy;
    v17 = completionCopy;
    [(MTTimerIntentHandler *)self _matchTimersFromIntentsTimer:v13 excludeStoppedTimers:1 completion:v15];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __63__MTSearchTimerIntentHandler_handleSearchForTimers_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v9 domain];
  if ([v10 isEqualToString:@"MTTimerIntentHandlerErrorDomain"])
  {
    if ([v9 code] == 5 || objc_msgSend(v9, "code") == 6)
    {

LABEL_11:
      v12 = [v7 sortedArrayUsingComparator:MTTimerIntentResultsComparator];
      v14 = [v12 na_map:&__block_literal_global_39];
      if (v8)
      {
        v15 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2965F78, &unk_1F2965F90, 0}];
        if ([v8 count] <= 1)
        {
          v16 = v8;
        }

        else
        {
          v16 = [*(a1 + 32) _alternateTimersForTargetTimerState:objc_msgSend(*(a1 + 40) type:"state") inTimers:objc_msgSend(*(a1 + 40) allowedTimerStates:{"type"), v8, v15}];
        }

        v18 = v16;
        if ([v16 count])
        {
          v19 = [v18 sortedArrayUsingComparator:MTTimerIntentResultsComparator];
          v17 = [v19 na_map:&__block_literal_global_7_0];
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v20 = [objc_alloc(MEMORY[0x1E696E9E0]) initWithCode:3 userActivity:0];
      [v20 setMatchedTimers:v14];
      [v20 setUnmatchedTimers:v17];
      v21 = *MEMORY[0x1E696E6D8];
      if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
      {
        v22 = *(a1 + 40);
        *buf = 136315650;
        v25 = "[MTSearchTimerIntentHandler handleSearchForTimers:completion:]_block_invoke_2";
        v26 = 2112;
        v27 = v22;
        v28 = 2112;
        v29 = v20;
        _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_INFO, "%s Successfully handled search timers intent: %@ with response %@", buf, 0x20u);
      }

      (*(*(a1 + 48) + 16))();

      goto LABEL_23;
    }

    v11 = [v9 code] == 7;
  }

  else
  {
    v11 = 0;
  }

  if (v7 || v11)
  {
    goto LABEL_11;
  }

  v12 = [objc_alloc(MEMORY[0x1E696E9E0]) initWithCode:4 userActivity:0];
  v13 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_ERROR))
  {
    __63__MTSearchTimerIntentHandler_handleSearchForTimers_completion___block_invoke_cold_1(a1, v9, v13);
  }

  (*(*(a1 + 48) + 16))();
LABEL_23:

  v23 = *MEMORY[0x1E69E9840];
}

void __63__MTSearchTimerIntentHandler_handleSearchForTimers_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v5 = 136315650;
  v6 = "[MTSearchTimerIntentHandler handleSearchForTimers:completion:]_block_invoke";
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%s Failed to handle search timers with intent: %@ due to error %@", &v5, 0x20u);
  v4 = *MEMORY[0x1E69E9840];
}

@end