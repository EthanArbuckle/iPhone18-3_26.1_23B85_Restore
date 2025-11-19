@interface MTCreateTimerIntentHandler
- (BOOL)_timer:(id)a3 conflictsWithRunningTimersInTimers:(id)a4;
- (id)_responseToCreateTimerIntent:(id)a3 withCreatedTimer:(id)a4 error:(id)a5 dryRun:(BOOL)a6;
- (void)_checkNowPlayingMediaState:(id)a3;
- (void)_createTimerWithIntent:(id)a3 dryRun:(BOOL)a4 completion:(id)a5;
- (void)confirmCreateTimer:(id)a3 completion:(id)a4;
- (void)handleCreateTimer:(id)a3 completion:(id)a4;
- (void)resolveDurationForCreateTimer:(id)a3 withCompletion:(id)a4;
- (void)resolveLabelForCreateTimer:(id)a3 withCompletion:(id)a4;
- (void)resolveTypeForCreateTimer:(id)a3 withCompletion:(id)a4;
@end

@implementation MTCreateTimerIntentHandler

- (void)resolveLabelForCreateTimer:(id)a3 withCompletion:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v35 = "[MTCreateTimerIntentHandler resolveLabelForCreateTimer:withCompletion:]";
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (v7)
  {
    v9 = [(MTTimerIntentHandler *)self _timerManager];
    v10 = [MTMutableTimer alloc];
    [v6 duration];
    v11 = [(MTTimer *)v10 initWithState:3 duration:?];
    if ([v6 type] == 2)
    {
      v12 = 0;
    }

    else
    {
      v13 = [v6 label];
      v12 = [v13 spokenPhrase];
    }

    [(MTTimer *)v11 setTitle:v12];
    if ([v6 type])
    {
      v14 = [v6 type];
    }

    else
    {
      v14 = 1;
    }

    v32 = @"MTTimerIntentSupportSiriContextTimerTypeKey";
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
    v33 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    [(MTTimer *)v11 setSiriContext:v16];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__MTCreateTimerIntentHandler_resolveLabelForCreateTimer_withCompletion___block_invoke;
    aBlock[3] = &unk_1E7B0DA88;
    v17 = v9;
    v27 = v17;
    v18 = v6;
    v28 = v18;
    v29 = self;
    v19 = v11;
    v30 = v19;
    v20 = v7;
    v31 = v20;
    v21 = _Block_copy(aBlock);
    if ([v18 type] == 2)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __72__MTCreateTimerIntentHandler_resolveLabelForCreateTimer_withCompletion___block_invoke_7;
      v23[3] = &unk_1E7B0DAB0;
      v24 = v21;
      v25 = v20;
      [(MTCreateTimerIntentHandler *)self _checkNowPlayingMediaState:v23];
    }

    else
    {
      v21[2](v21);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __72__MTCreateTimerIntentHandler_resolveLabelForCreateTimer_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) timers];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__MTCreateTimerIntentHandler_resolveLabelForCreateTimer_withCompletion___block_invoke_2;
  v13[3] = &unk_1E7B0DA60;
  *&v3 = *(a1 + 40);
  *(&v3 + 1) = *(a1 + 48);
  v9 = v3;
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v14 = v9;
  v15 = v6;
  v7 = [v2 addSuccessBlock:v13];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__MTCreateTimerIntentHandler_resolveLabelForCreateTimer_withCompletion___block_invoke_4;
  v10[3] = &unk_1E7B0D230;
  v11 = *(a1 + 40);
  v12 = *(a1 + 64);
  v8 = [v2 addFailureBlock:v10];
}

void __72__MTCreateTimerIntentHandler_resolveLabelForCreateTimer_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 label];

  v6 = [*(a1 + 40) _timer:*(a1 + 48) conflictsWithRunningTimersInTimers:v4];
  if (v5)
  {
    if (v6 && [*(a1 + 48) type] == 1)
    {
      v7 = MEMORY[0x1E696E7E0];
      v8 = [*(a1 + 32) label];
      v9 = [v7 confirmationRequiredWithStringToConfirm:v8];
    }

    else
    {
      v10 = MEMORY[0x1E696E7E0];
      v8 = [*(a1 + 32) label];
      v9 = [v10 successWithResolvedString:v8];
    }

    v11 = v9;
  }

  else
  {
    if (v6 && [*(a1 + 48) type] == 1)
    {
      v12 = [MEMORY[0x1E696E7E0] resolutionResultUnsupportedWithReason:1];
    }

    else
    {
      v12 = [MEMORY[0x1E696E7E0] notRequired];
    }

    v11 = v12;
  }

  v13 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 32);
    v16 = 136315650;
    v17 = "[MTCreateTimerIntentHandler resolveLabelForCreateTimer:withCompletion:]_block_invoke_2";
    v18 = 2112;
    v19 = v14;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_INFO, "%s Handled resolve label for intent: %@ with result: %@", &v16, 0x20u);
  }

  (*(*(a1 + 56) + 16))();

  v15 = *MEMORY[0x1E69E9840];
}

void __72__MTCreateTimerIntentHandler_resolveLabelForCreateTimer_withCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_ERROR))
  {
    __72__MTCreateTimerIntentHandler_resolveLabelForCreateTimer_withCompletion___block_invoke_4_cold_1(a1);
  }

  v4 = [MEMORY[0x1E696E7E0] unsupported];
  (*(*(a1 + 40) + 16))();
}

void __72__MTCreateTimerIntentHandler_resolveLabelForCreateTimer_withCompletion___block_invoke_7(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = MEMORY[0x1E696E7E0];
    v7 = [objc_alloc(MEMORY[0x1E696EA50]) initWithSpokenPhrase:&stru_1F29360E0];
    v6 = [v5 successWithResolvedString:v7];
    (*(v4 + 16))(v4, v6);
  }
}

- (void)resolveDurationForCreateTimer:(id)a3 withCompletion:(id)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E696E6D8];
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v21 = 136315394;
    v22 = "[MTCreateTimerIntentHandler resolveDurationForCreateTimer:withCompletion:]";
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", &v21, 0x16u);
  }

  if (v6)
  {
    v9 = [MTMutableTimer alloc];
    [v5 duration];
    v10 = [(MTTimer *)v9 initWithState:3 duration:?];
    if ([v5 type] == 2)
    {
      v11 = 0;
    }

    else
    {
      v12 = [v5 label];
      v11 = [v12 spokenPhrase];
    }

    if ([v5 type] == 2)
    {
      v13 = [MTSound toneSoundWithIdentifier:*MEMORY[0x1E69DA928] vibrationIdentifer:0 volume:0];
      [(MTTimer *)v10 setSound:v13];
    }

    [(MTTimer *)v10 setTitle:v11];
    if ([v5 type])
    {
      v14 = [v5 type];
    }

    else
    {
      v14 = 1;
    }

    v27 = @"MTTimerIntentSupportSiriContextTimerTypeKey";
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
    v28[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    [(MTTimer *)v10 setSiriContext:v16];

    [v5 duration];
    if (v17 <= 0.0)
    {
      v18 = [MEMORY[0x1E696EAB8] needsValue];
      v19 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
      {
        v21 = 136315650;
        v22 = "[MTCreateTimerIntentHandler resolveDurationForCreateTimer:withCompletion:]";
        v23 = 2112;
        v24 = v5;
        v25 = 2112;
        v26 = v18;
        _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_INFO, "%s Handled resolve duration for intent: %@ with result: %@", &v21, 0x20u);
      }
    }

    else
    {
      v18 = [MEMORY[0x1E696EAB8] successWithResolvedTimeInterval:?];
    }

    v6[2](v6, v18);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)resolveTypeForCreateTimer:(id)a3 withCompletion:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E696E6D8];
  v9 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[MTCreateTimerIntentHandler resolveTypeForCreateTimer:withCompletion:]";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (v7)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v32 = __Block_byref_object_copy__3;
    v33 = __Block_byref_object_dispose__3;
    v34 = [MEMORY[0x1E696EAD0] successWithResolvedTimerType:{objc_msgSend(v6, "type")}];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__MTCreateTimerIntentHandler_resolveTypeForCreateTimer_withCompletion___block_invoke;
    aBlock[3] = &unk_1E7B0DB00;
    v10 = v6;
    v21 = v10;
    v22 = self;
    v24 = buf;
    v11 = v7;
    v23 = v11;
    v12 = _Block_copy(aBlock);
    if ([v10 type] == 2)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __71__MTCreateTimerIntentHandler_resolveTypeForCreateTimer_withCompletion___block_invoke_3;
      v16[3] = &unk_1E7B0DB28;
      v18 = v12;
      v19 = v11;
      v17 = v10;
      [(MTCreateTimerIntentHandler *)self _checkNowPlayingMediaState:v16];
    }

    else
    {
      v13 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        v14 = *(*&buf[8] + 40);
        *v25 = 136315650;
        v26 = "[MTCreateTimerIntentHandler resolveTypeForCreateTimer:withCompletion:]";
        v27 = 2112;
        v28 = v10;
        v29 = 2112;
        v30 = v14;
        _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_INFO, "%s Handled resolve type for intent: %@ with result: %@", v25, 0x20u);
      }

      (*(v11 + 2))(v11, *(*&buf[8] + 40));
    }

    _Block_object_dispose(buf, 8);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __71__MTCreateTimerIntentHandler_resolveTypeForCreateTimer_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696EAC0]) initWithLabel:0 duration:0 remainingTime:0 identifier:objc_msgSend(*(a1 + 32) state:"type") type:{-1.0, -1.0}];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__MTCreateTimerIntentHandler_resolveTypeForCreateTimer_withCompletion___block_invoke_2;
  v4[3] = &unk_1E7B0DAD8;
  v7 = *(a1 + 56);
  v3 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  [v3 _matchTimersFromIntentsTimer:v2 excludeStoppedTimers:1 completion:v4];
}

uint64_t __71__MTCreateTimerIntentHandler_resolveTypeForCreateTimer_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    v3 = [MEMORY[0x1E696EAD0] confirmationRequiredWithTimerTypeToConfirm:{objc_msgSend(*(a1 + 32), "type")}];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    v5 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = *(*(a1 + 40) + 16);

  return v9();
}

void __71__MTCreateTimerIntentHandler_resolveTypeForCreateTimer_withCompletion___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = [MEMORY[0x1E696EAD0] successWithResolvedTimerType:{objc_msgSend(*(a1 + 32), "type")}];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)confirmCreateTimer:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[MTCreateTimerIntentHandler confirmCreateTimer:completion:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", &v10, 0x16u);
  }

  if (v7)
  {
    [(MTCreateTimerIntentHandler *)self _createTimerWithIntent:v6 dryRun:1 completion:v7];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)handleCreateTimer:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[MTCreateTimerIntentHandler handleCreateTimer:completion:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", &v10, 0x16u);
  }

  [(MTCreateTimerIntentHandler *)self _createTimerWithIntent:v6 dryRun:0 completion:v7];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_checkNowPlayingMediaState:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(25, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__MTCreateTimerIntentHandler__checkNowPlayingMediaState___block_invoke;
  v10[3] = &unk_1E7B0DB50;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  v7 = v5;
  v8 = v10;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v9 = getMRMediaRemoteGetNowPlayingApplicationPlaybackStateSymbolLoc_ptr;
  v16 = getMRMediaRemoteGetNowPlayingApplicationPlaybackStateSymbolLoc_ptr;
  if (!getMRMediaRemoteGetNowPlayingApplicationPlaybackStateSymbolLoc_ptr)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getMRMediaRemoteGetNowPlayingApplicationPlaybackStateSymbolLoc_block_invoke;
    v12[3] = &unk_1E7B0C600;
    v12[4] = &v13;
    __getMRMediaRemoteGetNowPlayingApplicationPlaybackStateSymbolLoc_block_invoke(v12);
    v9 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v9)
  {
    [MTCreateTimerIntentHandler _checkNowPlayingMediaState:];
  }

  v9(v7, v8);
}

uint64_t __57__MTCreateTimerIntentHandler__checkNowPlayingMediaState___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _isPlayingMediaFromMRPlaybackState:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_createTimerWithIntent:(id)a3 dryRun:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke;
  aBlock[3] = &unk_1E7B0DC68;
  aBlock[4] = self;
  v10 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_3_30;
  v20[3] = &unk_1E7B0DC90;
  v11 = v8;
  v21 = v11;
  v12 = v9;
  v22 = self;
  v23 = v12;
  v25 = a4;
  v13 = v10;
  v24 = v13;
  v14 = _Block_copy(v20);
  if ([v11 type] == 2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_4_31;
    v15[3] = &unk_1E7B0DCB8;
    v17 = v14;
    v18 = v12;
    v15[4] = self;
    v16 = v11;
    v19 = a4;
    [(MTCreateTimerIntentHandler *)self _checkNowPlayingMediaState:v15];
  }

  else
  {
    v14[2](v14);
  }
}

void __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v50[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = [MTMutableTimer alloc];
  [v7 duration];
  v10 = [(MTTimer *)v9 initWithState:3 duration:?];
  if ([v7 type] == 2)
  {
    v11 = 0;
  }

  else
  {
    v12 = [v7 label];
    v11 = [v12 spokenPhrase];
  }

  if ([v7 type] == 2)
  {
    v13 = [MTSound toneSoundWithIdentifier:*MEMORY[0x1E69DA928] vibrationIdentifer:0 volume:0];
    [(MTTimer *)v10 setSound:v13];
  }

  [(MTTimer *)v10 setTitle:v11];
  if ([v7 type])
  {
    v14 = [v7 type];
  }

  else
  {
    v14 = 1;
  }

  v49 = @"MTTimerIntentSupportSiriContextTimerTypeKey";
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
  v50[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  [(MTTimer *)v10 setSiriContext:v16];

  if (!a3)
  {
    v20 = [*(a1 + 32) _timerManager];
    v34 = [v20 addTimer:v10];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_2;
    v47[3] = &unk_1E7B0DB78;
    v21 = v20;
    v48 = v21;
    v35 = [v34 flatMap:v47];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_3;
    v44[3] = &unk_1E7B0DBF0;
    v45 = v10;
    v46 = v21;
    v19 = v21;
    v22 = [v35 flatMap:v44];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_26;
    v40[3] = &unk_1E7B0DC18;
    v23 = v11;
    v24 = v8;
    v25 = *(a1 + 32);
    v42 = v24;
    v40[4] = v25;
    v26 = v8;
    v27 = v7;
    v41 = v27;
    v43 = 0;
    v28 = [v22 addSuccessBlock:v40];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_2_28;
    v36[3] = &unk_1E7B0DC40;
    v29 = v24;
    v11 = v23;
    v30 = *(a1 + 32);
    v18 = v34;
    v38 = v29;
    v36[4] = v30;
    v31 = v27;
    v8 = v26;
    v37 = v31;
    v39 = 0;
    v32 = [v22 addFailureBlock:v36];

    goto LABEL_13;
  }

  if (v8)
  {
    v17 = *(a1 + 32);
    v18 = MTIntentsTimerForTimer(v10);
    v19 = [v17 _responseToCreateTimerIntent:v7 withCreatedTimer:v18 error:0 dryRun:1];
    (*(v8 + 2))(v8, v19);
LABEL_13:
  }

  v33 = *MEMORY[0x1E69E9840];
}

id __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_4;
  v18[3] = &unk_1E7B0DBA0;
  v19 = *(a1 + 32);
  v4 = [v3 na_firstObjectPassingTest:v18];
  if (v4)
  {
    v5 = dispatch_get_global_queue(25, 0);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_5;
    v14 = &unk_1E7B0C9A0;
    v15 = v3;
    v6 = v4;
    v16 = v6;
    v17 = *(a1 + 40);
    dispatch_async(v5, &v11);

    v7 = [MEMORY[0x1E69B3780] futureWithResult:{v6, v11, v12, v13, v14}];

    v8 = v15;
  }

  else
  {
    v9 = MEMORY[0x1E69B3780];
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTTimerIntentHandlerErrorDomain" code:4 userInfo:0];
    v7 = [v9 futureWithError:v8];
  }

  return v7;
}

uint64_t __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 timerID];
  v4 = [*(a1 + 32) timerID];
  v5 = [v3 isEqual:v4];

  return v5;
}

void __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_5(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_6;
  v14[3] = &unk_1E7B0DBC8;
  v2 = *(a1 + 32);
  v15 = *(a1 + 40);
  v3 = [v2 na_firstObjectPassingTest:v14];
  if (v3)
  {
    v4 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v17 = "[MTCreateTimerIntentHandler _createTimerWithIntent:dryRun:completion:]_block_invoke_5";
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "%s Attempting to remove conflicting timer: %@", buf, 0x16u);
    }

    v5 = [*(a1 + 48) removeTimer:v3];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_20;
    v12[3] = &unk_1E7B0D120;
    v6 = v3;
    v13 = v6;
    v7 = [v5 addSuccessBlock:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_22;
    v10[3] = &unk_1E7B0D658;
    v11 = v6;
    v8 = [v5 addFailureBlock:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_20(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[MTCreateTimerIntentHandler _createTimerWithIntent:dryRun:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "%s Successfully removed conflicting timer: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_ERROR))
  {
    __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_22_cold_1(a1);
  }
}

void __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_26(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = MTIntentsTimerForTimer(a2);
    v6 = [v4 _responseToCreateTimerIntent:v5 withCreatedTimer:v7 error:0 dryRun:*(a1 + 56)];
    (*(v2 + 16))(v2, v6);
  }
}

void __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_2_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) _responseToCreateTimerIntent:*(a1 + 40) withCreatedTimer:0 error:a2 dryRun:*(a1 + 56)];
  (*(v2 + 16))(v2, v3);
}

uint64_t __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_3_30(uint64_t a1)
{
  [*(a1 + 32) duration];
  if (v2 <= 0.0)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = 2;
  }

  else
  {
    [*(a1 + 32) duration];
    if (v3 < 86400.0)
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 64);
      v6 = *(a1 + 48);
      v7 = *(*(a1 + 56) + 16);

      return v7();
    }

    v9 = MEMORY[0x1E696ABC0];
    v10 = 3;
  }

  v11 = [v9 errorWithDomain:@"MTTimerIntentHandlerErrorDomain" code:v10 userInfo:0];
  v12 = v11;
  v13 = *(a1 + 48);
  if (v13)
  {
    v15 = v11;
    v14 = [*(a1 + 40) _responseToCreateTimerIntent:*(a1 + 32) withCreatedTimer:0 error:v11 dryRun:*(a1 + 64)];
    (*(v13 + 16))(v13, v14);

    v12 = v15;
  }

  return MEMORY[0x1EEE66BB8](v11, v12);
}

uint64_t __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_4_31(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    return v4();
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTTimerIntentHandlerErrorDomain" code:10 userInfo:0];
    v7 = v6;
    v8 = *(a1 + 56);
    if (v8)
    {
      v10 = v6;
      v9 = [*(a1 + 32) _responseToCreateTimerIntent:*(a1 + 40) withCreatedTimer:0 error:v6 dryRun:*(a1 + 64)];
      (*(v8 + 16))(v8, v9);

      v7 = v10;
    }

    return MEMORY[0x1EEE66BB8](v6, v7);
  }
}

- (id)_responseToCreateTimerIntent:(id)a3 withCreatedTimer:(id)a4 error:(id)a5 dryRun:(BOOL)a6
{
  v6 = a6;
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10 && !v11)
  {
    v13 = [objc_alloc(MEMORY[0x1E696E7D8]) initWithCode:3 userActivity:0];
    [v13 setCreatedTimer:v10];
    v14 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
    {
      v15 = @"handled";
      v26 = 136315906;
      v27 = "[MTCreateTimerIntentHandler _responseToCreateTimerIntent:withCreatedTimer:error:dryRun:]";
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
      _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_INFO, "%s Successfully %@ create timer intent %@ with response %@", &v26, 0x2Au);
    }

    goto LABEL_21;
  }

  v16 = [v11 domain];
  if ([v16 isEqualToString:@"MTTimerIntentHandlerErrorDomain"])
  {
    v17 = [v12 code];

    if (v17 == 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v18 = [v12 domain];
  if ([v18 isEqualToString:@"MTTimerIntentHandlerErrorDomain"])
  {
    v19 = [v12 code];

    if (v19 == 3)
    {
      v20 = 7;
      goto LABEL_20;
    }
  }

  else
  {
  }

  v21 = [v12 domain];
  if (![v21 isEqualToString:@"MTTimerIntentHandlerErrorDomain"])
  {

    goto LABEL_19;
  }

  v20 = [v12 code];

  if (v20 != 10)
  {
LABEL_19:
    v20 = 4;
  }

LABEL_20:
  v13 = [objc_alloc(MEMORY[0x1E696E7D8]) initWithCode:v20 userActivity:0];
  v22 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_ERROR))
  {
    v25 = @"handle";
    v26 = 136316162;
    v27 = "[MTCreateTimerIntentHandler _responseToCreateTimerIntent:withCreatedTimer:error:dryRun:]";
    v28 = 2112;
    if (v6)
    {
      v25 = @"confirm";
    }

    v29 = v25;
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v13;
    v34 = 2112;
    v35 = v12;
    _os_log_error_impl(&dword_1B1F9F000, v22, OS_LOG_TYPE_ERROR, "%s Failed to %@ create timer intent %@ with response: %@, error: %@", &v26, 0x34u);
  }

LABEL_21:

  v23 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)_timer:(id)a3 conflictsWithRunningTimersInTimers:(id)a4
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__MTCreateTimerIntentHandler__timer_conflictsWithRunningTimersInTimers___block_invoke;
  v8[3] = &unk_1E7B0DCE0;
  v9 = v5;
  v6 = v5;
  LOBYTE(a4) = [a4 indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;

  return a4;
}

BOOL __72__MTCreateTimerIntentHandler__timer_conflictsWithRunningTimersInTimers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state] == 3 && MTTimerConflictsWithTimer(*(a1 + 32), v3);

  return v4;
}

void __72__MTCreateTimerIntentHandler_resolveLabelForCreateTimer_withCompletion___block_invoke_4_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_4(&dword_1B1F9F000, v2, v3, "%s Failed to fetch timers for intent: %@, error: %@", v5);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_checkNowPlayingMediaState:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MRMediaRemoteGetNowPlayingApplicationPlaybackState(__strong dispatch_queue_t, void (^__strong)(MRPlaybackState))"}];
  [v0 handleFailureInFunction:v1 file:@"MTCreateTimerIntentHandler.m" lineNumber:34 description:{@"%s", dlerror()}];

  __break(1u);
}

void __71__MTCreateTimerIntentHandler__createTimerWithIntent_dryRun_completion___block_invoke_22_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_4(&dword_1B1F9F000, v2, v3, "%s Failed to remove conflicting timer: %@ with error: %@", v5);
  v4 = *MEMORY[0x1E69E9840];
}

@end