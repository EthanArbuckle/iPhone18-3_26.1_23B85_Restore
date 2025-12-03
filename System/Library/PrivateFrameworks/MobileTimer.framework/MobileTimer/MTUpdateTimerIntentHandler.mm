@interface MTUpdateTimerIntentHandler
- (id)_timerFromIntentTargetTimer:(id)timer defaultState:(int64_t)state;
@end

@implementation MTUpdateTimerIntentHandler

void __73__MTUpdateTimerIntentHandler__updateTimer_dryRun_updateBlock_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = [a2 firstObject];
    (*(v3 + 16))(v3, v6, v5);
  }
}

void __120__MTUpdateTimerIntentHandler__updateTimer_dryRun_allowMultiple_excludeStoppedTimers_filterBlock_updateBlock_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_ERROR))
  {
    __120__MTUpdateTimerIntentHandler__updateTimer_dryRun_allowMultiple_excludeStoppedTimers_filterBlock_updateBlock_completion___block_invoke_cold_1(a1, v3, v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __120__MTUpdateTimerIntentHandler__updateTimer_dryRun_allowMultiple_excludeStoppedTimers_filterBlock_updateBlock_completion___block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v55[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 56);
  if (!v10)
  {
    goto LABEL_14;
  }

  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __120__MTUpdateTimerIntentHandler__updateTimer_dryRun_allowMultiple_excludeStoppedTimers_filterBlock_updateBlock_completion___block_invoke_2;
  v47[3] = &unk_1E7B0F778;
  v48 = v10;
  v11 = [v7 indexesOfObjectsPassingTest:v47];

  if (v11)
  {
    v12 = [v7 objectsAtIndexes:v11];
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
LABEL_14:
    v12 = v7;
    v11 = 0;
    if (!v9)
    {
LABEL_4:
      v34 = [*(a1 + 32) _onlyUnnamedTimerInTimers:v12 forTargetTimer:*(a1 + 40) allowMultiple:*(a1 + 88)];
      if (v34)
      {
        v13 = *MEMORY[0x1E696E6D8];
        if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "[MTUpdateTimerIntentHandler _updateTimer:dryRun:allowMultiple:excludeStoppedTimers:filterBlock:updateBlock:completion:]_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v34;
          _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_INFO, "%s Filtering timer for update to single unnamed timer: %@", buf, 0x16u);
        }

        v55[0] = v34;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];

        v12 = v14;
      }

      if ((*(a1 + 88) & 1) != 0 || [v12 count] < 2)
      {
        if ([v12 count])
        {
          v21 = MEMORY[0x1E695DF70];
          v22 = [MEMORY[0x1E69B3780] futureWithNoResult];
          v23 = [v21 arrayWithObject:v22];

          v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v50 = __Block_byref_object_copy__13;
          v51 = __Block_byref_object_dispose__13;
          v52 = 0;
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __120__MTUpdateTimerIntentHandler__updateTimer_dryRun_allowMultiple_excludeStoppedTimers_filterBlock_updateBlock_completion___block_invoke_16;
          v40[3] = &unk_1E7B0F7A0;
          v44 = *(a1 + 72);
          v45 = buf;
          v46 = *(a1 + 89);
          v18 = v23;
          v41 = v18;
          v42 = *(a1 + 48);
          v25 = v24;
          v43 = v25;
          [v12 enumerateObjectsUsingBlock:v40];
          if (*(*&buf[8] + 40))
          {
            (*(*(a1 + 64) + 16))();
          }

          else
          {
            v27 = MEMORY[0x1E69B3780];
            v28 = [MEMORY[0x1E69B3790] immediateScheduler];
            v29 = [v27 combineAllFutures:v18 scheduler:v28];

            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = __120__MTUpdateTimerIntentHandler__updateTimer_dryRun_allowMultiple_excludeStoppedTimers_filterBlock_updateBlock_completion___block_invoke_2_19;
            v37[3] = &unk_1E7B0CC48;
            v39 = *(a1 + 80);
            v38 = v25;
            v30 = [v29 addSuccessBlock:v37];
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __120__MTUpdateTimerIntentHandler__updateTimer_dryRun_allowMultiple_excludeStoppedTimers_filterBlock_updateBlock_completion___block_invoke_4;
            v35[3] = &unk_1E7B0C688;
            v36 = *(a1 + 64);
            v31 = [v29 addFailureBlock:v35];
          }

          _Block_object_dispose(buf, 8);
        }

        else if ([v12 count] || !objc_msgSend(v7, "count"))
        {
          v26 = *(a1 + 80);
          if (!v26)
          {
LABEL_25:

            goto LABEL_26;
          }

          v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTTimerIntentHandlerErrorDomain" code:5 userInfo:0];
          (*(v26 + 16))(v26, 0, v18);
        }

        else
        {
          v33 = *(a1 + 80);
          if (!v33)
          {
            goto LABEL_25;
          }

          v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTTimerIntentHandlerErrorDomain" code:6 userInfo:0];
          (*(v33 + 16))(v33, 0, v18);
        }
      }

      else
      {
        v15 = *(a1 + 64);
        v16 = MEMORY[0x1E696ABC0];
        v53 = *MEMORY[0x1E696A578];
        if (*(a1 + 89))
        {
          v17 = @" (dry-run)";
        }

        else
        {
          v17 = &stru_1F29360E0;
        }

        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to update%@ timer %@ from timer manager %@ due to ambiguity between timers %@", v17, *(a1 + 40), *(a1 + 48), v12];
        v54 = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v20 = [v16 errorWithDomain:@"MTTimerIntentHandlerErrorDomain" code:1 userInfo:v19];
        (*(v15 + 16))(v15, v20);
      }

      goto LABEL_25;
    }
  }

  (*(*(a1 + 64) + 16))();
LABEL_26:

  v32 = *MEMORY[0x1E69E9840];
}

uint64_t __120__MTUpdateTimerIntentHandler__updateTimer_dryRun_allowMultiple_excludeStoppedTimers_filterBlock_updateBlock_completion___block_invoke_16(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 mutableCopy];
  v7 = *(a1 + 56);
  v14 = v6;
  if (v7)
  {
    v8 = (*(v7 + 16))(v7, v6);
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v6 = v14;
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    *a4 = 1;
  }

  else
  {
    if ((*(a1 + 72) & 1) == 0)
    {
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) updateTimer:v6];
      [v11 addObject:v12];

      v6 = v14;
    }

    [*(a1 + 48) addObject:v6];
  }

  return MEMORY[0x1EEE66BE0]();
}

void __120__MTUpdateTimerIntentHandler__updateTimer_dryRun_allowMultiple_excludeStoppedTimers_filterBlock_updateBlock_completion___block_invoke_2_19(uint64_t a1)
{
  if (*(a1 + 40))
  {
    [*(a1 + 32) sortUsingComparator:MTTimerIntentResultsComparator];
    v2 = [*(a1 + 32) na_map:&__block_literal_global_38];
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_timerFromIntentTargetTimer:(id)timer defaultState:(int64_t)state
{
  timerCopy = timer;
  v6 = 2 * ([timerCopy type] == 2);
  v7 = objc_alloc(MEMORY[0x1E696EAC0]);
  label = [timerCopy label];
  [timerCopy duration];
  v10 = v9;
  [timerCopy remainingTime];
  v12 = v11;
  identifier = [timerCopy identifier];

  v14 = [v7 initWithLabel:label duration:identifier remainingTime:state identifier:v6 state:v10 type:v12];

  return v14;
}

void __120__MTUpdateTimerIntentHandler__updateTimer_dryRun_allowMultiple_excludeStoppedTimers_filterBlock_updateBlock_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = &stru_1F29360E0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (*(a1 + 56))
  {
    v3 = @" (dry-run)";
  }

  v7 = 136316162;
  v8 = "[MTUpdateTimerIntentHandler _updateTimer:dryRun:allowMultiple:excludeStoppedTimers:filterBlock:updateBlock:completion:]_block_invoke";
  v9 = 2112;
  v10 = v3;
  v11 = 2112;
  v12 = v4;
  v13 = 2112;
  v14 = v5;
  v15 = 2112;
  v16 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%s Failed to update%@ timer %@ from timer manager %@ due to error %@", &v7, 0x34u);
  v6 = *MEMORY[0x1E69E9840];
}

@end