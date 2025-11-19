@interface MTSetTimerAttributeIntentHandler
- (id)_responseToSetTimerAttributeIntent:(id)a3 withUpdatedTimer:(id)a4 error:(id)a5 dryRun:(BOOL)a6;
- (void)confirmSetTimerAttribute:(id)a3 completion:(id)a4;
- (void)handleSetTimerAttribute:(id)a3 completion:(id)a4;
- (void)resolveTargetTimerForSetTimerAttribute:(id)a3 withCompletion:(id)a4;
- (void)resolveToDurationForSetTimerAttribute:(id)a3 withCompletion:(id)a4;
@end

@implementation MTSetTimerAttributeIntentHandler

- (void)handleSetTimerAttribute:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[MTSetTimerAttributeIntentHandler handleSetTimerAttribute:completion:]";
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v9 = [v6 targetTimer];
  [v6 toDuration];
  v11 = v10;
  v12 = [v6 toLabel];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__MTSetTimerAttributeIntentHandler_handleSetTimerAttribute_completion___block_invoke;
  v16[3] = &unk_1E7B0E340;
  v17 = v6;
  v18 = v7;
  v16[4] = self;
  v13 = v6;
  v14 = v7;
  [(MTSetTimerAttributeIntentHandler *)self _updateTimer:v9 toDuration:v12 toLabel:0 dryRun:v16 completion:v11];

  v15 = *MEMORY[0x1E69E9840];
}

void __71__MTSetTimerAttributeIntentHandler_handleSetTimerAttribute_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = [*(a1 + 32) _responseToSetTimerAttributeIntent:*(a1 + 40) withUpdatedTimer:a2 error:a3 dryRun:0];
    (*(v3 + 16))(v3, v4);
  }
}

- (void)confirmSetTimerAttribute:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[MTSetTimerAttributeIntentHandler confirmSetTimerAttribute:completion:]";
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v9 = [v6 targetTimer];
  [v6 toDuration];
  v11 = v10;
  v12 = [v6 toLabel];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__MTSetTimerAttributeIntentHandler_confirmSetTimerAttribute_completion___block_invoke;
  v16[3] = &unk_1E7B0E340;
  v17 = v6;
  v18 = v7;
  v16[4] = self;
  v13 = v6;
  v14 = v7;
  [(MTSetTimerAttributeIntentHandler *)self _updateTimer:v9 toDuration:v12 toLabel:1 dryRun:v16 completion:v11];

  v15 = *MEMORY[0x1E69E9840];
}

void __72__MTSetTimerAttributeIntentHandler_confirmSetTimerAttribute_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = [*(a1 + 32) _responseToSetTimerAttributeIntent:*(a1 + 40) withUpdatedTimer:a2 error:a3 dryRun:1];
    (*(v3 + 16))(v3, v4);
  }
}

- (void)resolveToDurationForSetTimerAttribute:(id)a3 withCompletion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "[MTSetTimerAttributeIntentHandler resolveToDurationForSetTimerAttribute:withCompletion:]";
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%s %@", &v15, 0x16u);
  }

  if (v6)
  {
    v8 = [v5 toLabel];
    v9 = [v8 spokenPhrase];
    v10 = [v9 length];

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      [v5 toDuration];
      v12 = MEMORY[0x1E696EAB8];
      if (v13 <= 0.0)
      {
        [MEMORY[0x1E696EAB8] needsValue];
      }

      else
      {
        [v5 toDuration];
        [v12 successWithResolvedTimeInterval:?];
      }
      v11 = ;
    }

    v6[2](v6, v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)resolveTargetTimerForSetTimerAttribute:(id)a3 withCompletion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[MTSetTimerAttributeIntentHandler resolveTargetTimerForSetTimerAttribute:withCompletion:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (v7)
  {
    v9 = [v6 targetTimer];
    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2965EB8, &unk_1F2965ED0, 0}];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __90__MTSetTimerAttributeIntentHandler_resolveTargetTimerForSetTimerAttribute_withCompletion___block_invoke;
    v13[3] = &unk_1E7B0E368;
    v14 = v9;
    v15 = v7;
    v11 = v9;
    [(MTTimerIntentHandler *)self _genericallyResolveTargetTimer:v11 multiple:0 allowedTimerStatesForFollowup:v10 completion:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __90__MTSetTimerAttributeIntentHandler_resolveTargetTimerForSetTimerAttribute_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if (v16)
  {
    v6 = *(a1 + 40);
    v7 = [objc_alloc(MEMORY[0x1E696EA28]) initWithTimerResolutionResult:v16];
    (*(v6 + 16))(v6, v7);
    goto LABEL_14;
  }

  v8 = [v5 domain];
  v9 = [v8 isEqualToString:@"MTTimerIntentHandlerErrorDomain"];

  if (!v9)
  {
    v13 = [MEMORY[0x1E696EA28] unsupported];
LABEL_12:
    v7 = v13;
    goto LABEL_13;
  }

  v10 = [v5 code];
  if (v10 >= 5)
  {
    if (v10 - 5 >= 2)
    {
      if (v10 != 7)
      {
        v7 = 0;
        goto LABEL_13;
      }

      v14 = MEMORY[0x1E696EA28];
      v15 = 2;
    }

    else
    {
      v14 = MEMORY[0x1E696EA28];
      v15 = 1;
    }

    v13 = [v14 unsupportedForReason:v15];
    goto LABEL_12;
  }

  v11 = objc_alloc(MEMORY[0x1E696EA28]);
  v12 = [MEMORY[0x1E696EAC8] successWithResolvedTimer:*(a1 + 32)];
  v7 = [v11 initWithTimerResolutionResult:v12];

LABEL_13:
  (*(*(a1 + 40) + 16))(*(a1 + 40), v7);
LABEL_14:
}

- (id)_responseToSetTimerAttributeIntent:(id)a3 withUpdatedTimer:(id)a4 error:(id)a5 dryRun:(BOOL)a6
{
  v6 = a6;
  v32 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v10 || v11)
  {
    v16 = [v11 domain];
    v17 = [v16 isEqualToString:@"MTTimerIntentHandlerErrorDomain"];

    if (!v17 || (v18 = [v12 code], (v18 - 5) > 3) || (v13 = objc_msgSend(objc_alloc(MEMORY[0x1E696EA20]), "initWithCode:userActivity:", qword_1B20B8A18[v18 - 5], 0)) == 0)
    {
      v13 = [objc_alloc(MEMORY[0x1E696EA20]) initWithCode:4 userActivity:0];
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

      *buf = 136315906;
      v25 = "[MTSetTimerAttributeIntentHandler _responseToSetTimerAttributeIntent:withUpdatedTimer:error:dryRun:]";
      v26 = 2112;
      v27 = v22;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v23;
      _os_log_error_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_ERROR, "%s Failed to %@ set timer attribute intent %@%@", buf, 0x2Au);
      if (v12)
      {
      }
    }
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E696EA20]) initWithCode:3 userActivity:0];
    [(__CFString *)v13 setUpdatedTimer:v10];
    v14 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
    {
      v15 = @"handled";
      *buf = 136315906;
      v25 = "[MTSetTimerAttributeIntentHandler _responseToSetTimerAttributeIntent:withUpdatedTimer:error:dryRun:]";
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
      _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_INFO, "%s Successfully %@ set timer attribute intent %@ with response %@", buf, 0x2Au);
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v13;
}

id __86__MTSetTimerAttributeIntentHandler__updateTimer_toDuration_toLabel_dryRun_completion___block_invoke(uint64_t a1, void *a2)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 state];
  [v3 setState:1];
  v5 = [v3 title];
  v6 = [v5 lowercaseString];

  v7 = [*(a1 + 32) spokenPhrase];
  v8 = [v7 lowercaseString];

  v9 = [v8 length];
  if (v6 == v8)
  {
    v10 = [v6 isEqualToString:v8];
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if ((v10 & 1) == 0)
  {
    v11 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    v12 = MEMORY[0x1E696AEC0];
    if (*(a1 + 64))
    {
      v13 = @" (dry-run)";
    }

    else
    {
      v13 = &stru_1F29360E0;
    }

    v14 = *(a1 + 40);
    v15 = [*(a1 + 48) _timerManager];
    v16 = [v12 stringWithFormat:@"Failed to update%@ timer %@ from timer manager %@ - renaming from %@ to %@ is not supported.", v13, v14, v15, v6, v8];
    v37[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v18 = v11;
    v19 = 8;
    goto LABEL_21;
  }

LABEL_10:
  v20 = *(a1 + 56);
  if (v20 <= 0.0)
  {
    v22 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    v23 = MEMORY[0x1E696AEC0];
    if (*(a1 + 64))
    {
      v24 = @" (dry-run)";
    }

    else
    {
      v24 = &stru_1F29360E0;
    }

    v25 = *(a1 + 40);
    v15 = [*(a1 + 48) _timerManager];
    v16 = [v23 stringWithFormat:@"Failed to update%@ timer %@ from timer manager %@ due to invalid duration %f", v24, v25, v15, *(a1 + 56)];
    v35 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v18 = v22;
    v19 = 2;
  }

  else
  {
    if (v20 < 86400.0)
    {
      [v3 setDuration:?];
      [v3 setState:v4];
      v21 = 0;
      goto LABEL_22;
    }

    v26 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v27 = MEMORY[0x1E696AEC0];
    if (*(a1 + 64))
    {
      v28 = @" (dry-run)";
    }

    else
    {
      v28 = &stru_1F29360E0;
    }

    v29 = *(a1 + 40);
    v15 = [*(a1 + 48) _timerManager];
    v16 = [v27 stringWithFormat:@"Failed to update%@ timer %@ from timer manager %@ due to invalid duration %f", v28, v29, v15, *(a1 + 56)];
    v33 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v18 = v26;
    v19 = 3;
  }

LABEL_21:
  v21 = [v18 errorWithDomain:@"MTTimerIntentHandlerErrorDomain" code:v19 userInfo:v17];

LABEL_22:
  v30 = *MEMORY[0x1E69E9840];

  return v21;
}

@end