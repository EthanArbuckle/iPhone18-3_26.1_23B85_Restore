@interface MTDeleteTimerIntentHandler
- (id)_responseToDeleteTimerIntent:(id)a3 withDeletedTimers:(id)a4 error:(id)a5 dryRun:(BOOL)a6;
- (id)_timerFromIntentTargetTimer:(id)a3 defaultState:(int64_t)a4;
- (void)_deleteTimer:(id)a3 multiple:(BOOL)a4 dryRun:(BOOL)a5 completion:(id)a6;
- (void)confirmDeleteTimer:(id)a3 completion:(id)a4;
- (void)handleDeleteTimer:(id)a3 completion:(id)a4;
- (void)resolveDeleteMultipleForDeleteTimer:(id)a3 withCompletion:(id)a4;
- (void)resolveTargetTimerForDeleteTimer:(id)a3 withCompletion:(id)a4;
@end

@implementation MTDeleteTimerIntentHandler

- (void)resolveTargetTimerForDeleteTimer:(id)a3 withCompletion:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[MTDeleteTimerIntentHandler resolveTargetTimerForDeleteTimer:withCompletion:]";
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (v7)
  {
    v9 = [v6 targetTimer];
    v10 = [v6 targetTimer];
    v11 = -[MTDeleteTimerIntentHandler _timerFromIntentTargetTimer:defaultState:](self, "_timerFromIntentTargetTimer:defaultState:", v9, [v10 state]);

    if ([v11 type] == 2)
    {
      [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2965E70, &unk_1F2965E88, 0, v17}];
    }

    else
    {
      [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2965E70, &unk_1F2965E88, &unk_1F2965EA0, 0}];
    }
    v12 = ;
    v13 = [v6 deleteMultiple];
    v14 = [v13 BOOLValue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __78__MTDeleteTimerIntentHandler_resolveTargetTimerForDeleteTimer_withCompletion___block_invoke;
    v18[3] = &unk_1E7B0C3E8;
    v19 = v11;
    v20 = v7;
    v15 = v11;
    [(MTTimerIntentHandler *)self _genericallyResolveTargetTimer:v15 multiple:v14 allowedTimerStatesForFollowup:v12 completion:v18];
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __78__MTDeleteTimerIntentHandler_resolveTargetTimerForDeleteTimer_withCompletion___block_invoke(uint64_t a1, void *a2)
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

- (void)resolveDeleteMultipleForDeleteTimer:(id)a3 withCompletion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[MTDeleteTimerIntentHandler resolveDeleteMultipleForDeleteTimer:withCompletion:]";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%s %@", &v12, 0x16u);
  }

  if (v6)
  {
    v8 = MEMORY[0x1E696E760];
    v9 = [v5 deleteMultiple];
    v10 = [v8 successWithResolvedValue:{objc_msgSend(v9, "BOOLValue")}];
    v6[2](v6, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)confirmDeleteTimer:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[MTDeleteTimerIntentHandler confirmDeleteTimer:completion:]";
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (v7)
  {
    v9 = [v6 targetTimer];
    v10 = [v6 targetTimer];
    v11 = -[MTDeleteTimerIntentHandler _timerFromIntentTargetTimer:defaultState:](self, "_timerFromIntentTargetTimer:defaultState:", v9, [v10 state]);

    v12 = [v6 deleteMultiple];
    v13 = [v12 BOOLValue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__MTDeleteTimerIntentHandler_confirmDeleteTimer_completion___block_invoke;
    v15[3] = &unk_1E7B0E258;
    v17 = v7;
    v15[4] = self;
    v16 = v6;
    [(MTDeleteTimerIntentHandler *)self _deleteTimer:v11 multiple:v13 dryRun:1 completion:v15];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __60__MTDeleteTimerIntentHandler_confirmDeleteTimer_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) _responseToDeleteTimerIntent:*(a1 + 40) withDeletedTimers:a2 error:a3 dryRun:1];
  (*(v3 + 16))(v3, v4);
}

- (void)handleDeleteTimer:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[MTDeleteTimerIntentHandler handleDeleteTimer:completion:]";
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v9 = [v6 targetTimer];
  v10 = [v6 targetTimer];
  v11 = -[MTDeleteTimerIntentHandler _timerFromIntentTargetTimer:defaultState:](self, "_timerFromIntentTargetTimer:defaultState:", v9, [v10 state]);

  v12 = [v6 deleteMultiple];
  v13 = [v12 BOOLValue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__MTDeleteTimerIntentHandler_handleDeleteTimer_completion___block_invoke;
  v17[3] = &unk_1E7B0E258;
  v18 = v6;
  v19 = v7;
  v17[4] = self;
  v14 = v6;
  v15 = v7;
  [(MTDeleteTimerIntentHandler *)self _deleteTimer:v11 multiple:v13 dryRun:0 completion:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __59__MTDeleteTimerIntentHandler_handleDeleteTimer_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = [*(a1 + 32) _responseToDeleteTimerIntent:*(a1 + 40) withDeletedTimers:a2 error:a3 dryRun:0];
    (*(v3 + 16))(v3, v4);
  }
}

- (id)_responseToDeleteTimerIntent:(id)a3 withDeletedTimers:(id)a4 error:(id)a5 dryRun:(BOOL)a6
{
  v6 = a6;
  v35 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v10 || v11)
  {
    v17 = [v11 domain];
    v18 = [v17 isEqualToString:@"MTTimerIntentHandlerErrorDomain"];

    if (!v18 || (v19 = [v12 code], (v19 - 5) > 2) || (v14 = objc_msgSend(objc_alloc(MEMORY[0x1E696E828]), "initWithCode:userActivity:", qword_1B20B8A00[v19 - 5], 0)) == 0)
    {
      v14 = [objc_alloc(MEMORY[0x1E696E828]) initWithCode:4 userActivity:0];
    }

    v20 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = v6 ? @"confirm" : @"handle";
      if (v12)
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"due to error %@", v12];
      }

      else
      {
        v24 = &stru_1F29360E0;
      }

      *buf = 136316162;
      v26 = "[MTDeleteTimerIntentHandler _responseToDeleteTimerIntent:withDeletedTimers:error:dryRun:]";
      v27 = 2112;
      v28 = v23;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v24;
      v33 = 2112;
      v34 = v14;
      _os_log_error_impl(&dword_1B1F9F000, v20, OS_LOG_TYPE_ERROR, "%s Failed to %@ delete timer intent %@ %@, response: %@", buf, 0x34u);
      if (v12)
      {
      }
    }
  }

  else
  {
    if ([v10 count])
    {
      v13 = 3;
    }

    else
    {
      v13 = 6;
    }

    v14 = [objc_alloc(MEMORY[0x1E696E828]) initWithCode:v13 userActivity:0];
    [(__CFString *)v14 setDeletedTimers:v10];
    v15 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
    {
      v16 = @"handled";
      *buf = 136315906;
      v26 = "[MTDeleteTimerIntentHandler _responseToDeleteTimerIntent:withDeletedTimers:error:dryRun:]";
      v27 = 2112;
      if (v6)
      {
        v16 = @"confirmed";
      }

      v28 = v16;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_INFO, "%s Successfully %@ delete timer attribute intent %@ with response %@", buf, 0x2Au);
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)_deleteTimer:(id)a3 multiple:(BOOL)a4 dryRun:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v44 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = [(MTTimerIntentHandler *)self _timerManager];
  v13 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v14 = &stru_1F29360E0;
    *buf = 136315906;
    v37 = "[MTDeleteTimerIntentHandler _deleteTimer:multiple:dryRun:completion:]";
    if (v7)
    {
      v14 = @" (dry-run)";
    }

    v38 = 2112;
    v39 = v14;
    v40 = 2112;
    v41 = v10;
    v42 = 2112;
    v43 = v12;
    _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_INFO, "%s Deleting%@ timer %@ from timer manager %@", buf, 0x2Au);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__MTDeleteTimerIntentHandler__deleteTimer_multiple_dryRun_completion___block_invoke;
  aBlock[3] = &unk_1E7B0E280;
  v35 = v7;
  v15 = v10;
  v32 = v15;
  v16 = v12;
  v33 = v16;
  v17 = v11;
  v34 = v17;
  v18 = _Block_copy(aBlock);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __70__MTDeleteTimerIntentHandler__deleteTimer_multiple_dryRun_completion___block_invoke_34;
  v24[3] = &unk_1E7B0E318;
  v24[4] = self;
  v25 = v15;
  v29 = a4;
  v30 = v7;
  v27 = v18;
  v28 = v17;
  v26 = v16;
  v19 = v16;
  v20 = v17;
  v21 = v15;
  v22 = v18;
  [(MTTimerIntentHandler *)self _matchTimersFromIntentsTimer:v21 excludeStoppedTimers:0 completion:v24];

  v23 = *MEMORY[0x1E69E9840];
}

void __70__MTDeleteTimerIntentHandler__deleteTimer_multiple_dryRun_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_ERROR))
  {
    __70__MTDeleteTimerIntentHandler__deleteTimer_multiple_dryRun_completion___block_invoke_cold_1(a1, v3, v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __70__MTDeleteTimerIntentHandler__deleteTimer_multiple_dryRun_completion___block_invoke_34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (a4)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = [*(a1 + 32) _onlyUnnamedTimerInTimers:v6 forTargetTimer:*(a1 + 40) allowMultiple:*(a1 + 72)];
    if (v7)
    {
      v8 = *MEMORY[0x1E696E6D8];
      if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v46 = "[MTDeleteTimerIntentHandler _deleteTimer:multiple:dryRun:completion:]_block_invoke";
        v47 = 2112;
        v48 = v7;
        _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s Filtering timer for delete to single unnamed timer: %@", buf, 0x16u);
      }

      v44 = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];

      v6 = v9;
    }

    if ([v6 count] == 1 || *(a1 + 72) == 1 && objc_msgSend(v6, "count") >= 2)
    {
      if (*(a1 + 73) == 1)
      {
        v10 = *(a1 + 64);
        if (v10)
        {
          v11 = [v6 na_map:&__block_literal_global_22];
          (*(v10 + 16))(v10, v11, 0);
        }
      }

      else
      {
        v29 = v7;
        v18 = [MEMORY[0x1E69B3780] futureWithNoResult];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v30 = v6;
        v19 = v6;
        v20 = [v19 countByEnumeratingWithState:&v37 objects:v43 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v38;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v38 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v37 + 1) + 8 * i);
              v34[0] = MEMORY[0x1E69E9820];
              v34[1] = 3221225472;
              v34[2] = __70__MTDeleteTimerIntentHandler__deleteTimer_multiple_dryRun_completion___block_invoke_2;
              v34[3] = &unk_1E7B0E2C8;
              v35 = *(a1 + 48);
              v36 = v24;
              v25 = [v18 flatMap:v34];
            }

            v21 = [v19 countByEnumeratingWithState:&v37 objects:v43 count:16];
          }

          while (v21);
        }

        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __70__MTDeleteTimerIntentHandler__deleteTimer_multiple_dryRun_completion___block_invoke_3;
        v31[3] = &unk_1E7B0E2F0;
        v33 = *(a1 + 64);
        v32 = v19;
        v26 = [v18 addSuccessBlock:v31];
        v27 = [v18 addFailureBlock:*(a1 + 56)];

        v7 = v29;
        v6 = v30;
      }
    }

    else if ([v6 count])
    {
      v12 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A578];
      if (*(a1 + 73))
      {
        v13 = @" (dry-run)";
      }

      else
      {
        v13 = &stru_1F29360E0;
      }

      v14 = *(a1 + 56);
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to delete%@ timer %@ from timer manager %@ due to ambiguity between timers %@", v13, *(a1 + 40), *(a1 + 48), v6];
      v42 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v17 = [v12 errorWithDomain:@"MTDeleteTimerIntentHandlerErrorDomain" code:1 userInfo:v16];
      (*(v14 + 16))(v14, v17);
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __70__MTDeleteTimerIntentHandler__deleteTimer_multiple_dryRun_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) na_map:&__block_literal_global_41];
    (*(v1 + 16))(v1, v2, 0);
  }
}

- (id)_timerFromIntentTargetTimer:(id)a3 defaultState:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 label];
  v7 = [v6 spokenPhrase];
  if ([v7 length])
  {
    v8 = 0;
  }

  else
  {
    [v5 duration];
    v8 = v9 == -1.0;
  }

  v10 = [v5 type];
  if (v8)
  {
    v11 = 2 * ([v5 type] == 2);
  }

  else
  {
    v11 = v10;
  }

  v12 = objc_alloc(MEMORY[0x1E696EAC0]);
  v13 = [v5 label];
  [v5 duration];
  v15 = v14;
  [v5 remainingTime];
  v17 = v16;
  v18 = [v5 identifier];
  v19 = [v12 initWithLabel:v13 duration:v18 remainingTime:a4 identifier:v11 state:v15 type:v17];

  return v19;
}

void __70__MTDeleteTimerIntentHandler__deleteTimer_multiple_dryRun_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
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
  v8 = "[MTDeleteTimerIntentHandler _deleteTimer:multiple:dryRun:completion:]_block_invoke";
  v9 = 2112;
  v10 = v3;
  v11 = 2112;
  v12 = v4;
  v13 = 2112;
  v14 = v5;
  v15 = 2112;
  v16 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%s Failed to delete%@ timer %@ from timer manager %@ due to error %@", &v7, 0x34u);
  v6 = *MEMORY[0x1E69E9840];
}

@end