@interface MTTimerIntentHandler
- (BOOL)_isDefaultTimer:(id)timer;
- (MTTimerManagerProviding)timerManagerProvider;
- (id)_alternateTimersForTargetTimerState:(int64_t)state type:(int64_t)type inTimers:(id)timers allowedTimerStates:(id)states;
- (id)_onlyUnnamedTimerInTimers:(id)timers forTargetTimer:(id)timer allowMultiple:(BOOL)multiple;
- (id)_timerManager;
- (void)_genericallyResolveTargetTimer:(id)timer multiple:(BOOL)multiple allowedTimerStatesForFollowup:(id)followup completion:(id)completion;
- (void)_matchTimersFromIntentsTimer:(id)timer excludeStoppedTimers:(BOOL)timers completion:(id)completion;
@end

@implementation MTTimerIntentHandler

- (id)_timerManager
{
  timerManager = self->_timerManager;
  if (!timerManager)
  {
    timerManagerProvider = [(MTTimerIntentHandler *)self timerManagerProvider];
    timerManager = [timerManagerProvider timerManager];
    v6 = timerManager;
    if (timerManager)
    {
      v7 = timerManager;
    }

    else
    {
      v7 = objc_alloc_init(MTTimerManager);
    }

    v8 = self->_timerManager;
    self->_timerManager = v7;

    timerManager = self->_timerManager;
  }

  return timerManager;
}

- (void)_matchTimersFromIntentsTimer:(id)timer excludeStoppedTimers:(BOOL)timers completion:(id)completion
{
  timerCopy = timer;
  completionCopy = completion;
  if (completionCopy)
  {
    _timerManager = [(MTTimerIntentHandler *)self _timerManager];
    timers = [_timerManager timers];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __85__MTTimerIntentHandler__matchTimersFromIntentsTimer_excludeStoppedTimers_completion___block_invoke;
    v19[3] = &unk_1E7B0FEA8;
    v19[4] = self;
    timersCopy = timers;
    v20 = timerCopy;
    v12 = completionCopy;
    v21 = v12;
    v13 = [timers addSuccessBlock:v19];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __85__MTTimerIntentHandler__matchTimersFromIntentsTimer_excludeStoppedTimers_completion___block_invoke_3;
    v16[3] = &unk_1E7B0D230;
    v17 = _timerManager;
    v18 = v12;
    v14 = _timerManager;
    v15 = [timers addFailureBlock:v16];
  }
}

void __85__MTTimerIntentHandler__matchTimersFromIntentsTimer_excludeStoppedTimers_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a2;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __85__MTTimerIntentHandler__matchTimersFromIntentsTimer_excludeStoppedTimers_completion___block_invoke_2;
  v19 = &unk_1E7B0FE80;
  v8 = *(a1 + 40);
  v20 = *(a1 + 32);
  v25 = *(a1 + 56);
  v21 = v8;
  v9 = v5;
  v22 = v9;
  v10 = v6;
  v23 = v10;
  v11 = v7;
  v24 = v11;
  [v4 enumerateObjectsUsingBlock:&v16];

  if ([v9 count] || objc_msgSend(v10, "count") || objc_msgSend(v11, "count"))
  {
    v12 = [v9 count];
    v13 = *(a1 + 48);
    if (!v12)
    {
      (*(v13 + 16))(v13, v10, v11, 0);
      goto LABEL_8;
    }

    v14 = [v10 arrayByAddingObjectsFromArray:v11];
    (*(v13 + 16))(v13, v9, v14, 0);
  }

  else
  {
    v15 = *(a1 + 48);
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTTimerIntentHandlerErrorDomain" code:7 userInfo:0];
    (*(v15 + 16))(v15, 0, 0, v14);
  }

LABEL_8:
}

void __85__MTTimerIntentHandler__matchTimersFromIntentsTimer_excludeStoppedTimers_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) _isDefaultTimer:v3] & 1) == 0 && (*(a1 + 72) != 1 || objc_msgSend(v3, "state") != 1))
  {
    v6 = 0;
    v4 = MTTimerMatchesIntentsTimer(v3, *(a1 + 40), 1, &v6);
    v5 = 56;
    if (v6)
    {
      v5 = 48;
    }

    if (!v4)
    {
      v5 = 64;
    }

    [*(a1 + v5) addObject:v3];
  }
}

void __85__MTTimerIntentHandler__matchTimersFromIntentsTimer_excludeStoppedTimers_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_ERROR))
  {
    __85__MTTimerIntentHandler__matchTimersFromIntentsTimer_excludeStoppedTimers_completion___block_invoke_3_cold_1(a1, v3, v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_genericallyResolveTargetTimer:(id)timer multiple:(BOOL)multiple allowedTimerStatesForFollowup:(id)followup completion:(id)completion
{
  timerCopy = timer;
  followupCopy = followup;
  completionCopy = completion;
  if (completionCopy)
  {
    if (timerCopy)
    {
      v13 = [followupCopy containsObject:&unk_1F2965FA8];
      _timerManager = [(MTTimerIntentHandler *)self _timerManager];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __105__MTTimerIntentHandler__genericallyResolveTargetTimer_multiple_allowedTimerStatesForFollowup_completion___block_invoke;
      v17[3] = &unk_1E7B0FEF8;
      v18 = timerCopy;
      v19 = _timerManager;
      v22 = completionCopy;
      v20 = followupCopy;
      selfCopy = self;
      multipleCopy = multiple;
      v15 = _timerManager;
      [(MTTimerIntentHandler *)self _matchTimersFromIntentsTimer:v18 excludeStoppedTimers:v13 ^ 1u completion:v17];
    }

    else
    {
      needsValue = [MEMORY[0x1E696EAC8] needsValue];
      (*(completionCopy + 2))(completionCopy, needsValue, 0);
    }
  }
}

void __105__MTTimerIntentHandler__genericallyResolveTargetTimer_multiple_allowedTimerStatesForFollowup_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v65 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v9 || ([v9 domain], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"MTTimerIntentHandlerErrorDomain"), v11, (v12 & 1) != 0))
  {
    if (*(a1 + 48) && [v7 count] >= 2)
    {
      v53 = MEMORY[0x1E69E9820];
      v54 = 3221225472;
      v55 = __105__MTTimerIntentHandler__genericallyResolveTargetTimer_multiple_allowedTimerStatesForFollowup_completion___block_invoke_8;
      v56 = &unk_1E7B0FED0;
      v57 = *(a1 + 48);
      v13 = [v7 indexesOfObjectsPassingTest:&v53];
      if ([v13 count] && (v14 = objc_msgSend(v13, "count"), v14 < objc_msgSend(v7, "count")))
      {
        v15 = [v7 objectsAtIndexes:v13];

        v16 = *MEMORY[0x1E696E6D8];
        if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
        {
          v17 = *(a1 + 48);
          *buf = 136315650;
          v60 = "[MTTimerIntentHandler _genericallyResolveTargetTimer:multiple:allowedTimerStatesForFollowup:completion:]_block_invoke_2";
          v61 = 2112;
          v62 = v17;
          v63 = 2112;
          v64 = v15;
          _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_INFO, "%s Filtering matched timers for allowedTimerStatesForFollowup:%@ to: %@", buf, 0x20u);
        }
      }

      else
      {
        v15 = v7;
      }

      v7 = v15;
    }

    v20 = [*(a1 + 56) _onlyUnnamedTimerInTimers:v7 forTargetTimer:*(a1 + 32) allowMultiple:*(a1 + 72)];
    if (v20)
    {
      v21 = *MEMORY[0x1E696E6D8];
      if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v60 = "[MTTimerIntentHandler _genericallyResolveTargetTimer:multiple:allowedTimerStatesForFollowup:completion:]_block_invoke";
        v61 = 2112;
        v62 = v20;
        _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_INFO, "%s Filtering resolved timer matches to single unnamed timer: %@", buf, 0x16u);
      }

      v58 = v20;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];

      v7 = v22;
    }

    v23 = [v7 count];
    v24 = v23;
    if (v23 < 2)
    {
      if (v23)
      {
        v28 = [v7 firstObject];
        v29 = *MEMORY[0x1E696E6D8];
        if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
        {
          v30 = *(a1 + 32);
          *buf = 136315650;
          v60 = "[MTTimerIntentHandler _genericallyResolveTargetTimer:multiple:allowedTimerStatesForFollowup:completion:]_block_invoke";
          v61 = 2112;
          v62 = v28;
          v63 = 2112;
          v64 = v30;
          _os_log_impl(&dword_1B1F9F000, v29, OS_LOG_TYPE_INFO, "%s Found matching timer: %@ for target timer: %@", buf, 0x20u);
        }

        v31 = *(a1 + 64);
        v32 = MEMORY[0x1E696EAC8];
        v33 = MTIntentsTimerForTimer(v28);
        v34 = [v32 successWithResolvedTimer:v33];
        (*(v31 + 16))(v31, v34, 0);

        goto LABEL_41;
      }

      v28 = [*(a1 + 56) _alternateTimersForTargetTimerState:objc_msgSend(*(a1 + 32) type:"state") inTimers:objc_msgSend(*(a1 + 32) allowedTimerStates:{"type"), v8, *(a1 + 48)}];
      if ([v28 count] == 1 && (objc_msgSend(v28, "firstObject"), (v42 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v35 = v42;
        v43 = *MEMORY[0x1E696E6D8];
        if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
        {
          v44 = *(a1 + 32);
          *buf = 136315650;
          v60 = "[MTTimerIntentHandler _genericallyResolveTargetTimer:multiple:allowedTimerStatesForFollowup:completion:]_block_invoke";
          v61 = 2112;
          v62 = v35;
          v63 = 2112;
          v64 = v44;
          _os_log_impl(&dword_1B1F9F000, v43, OS_LOG_TYPE_INFO, "%s Found no matching timers but 1 alternate timer: %@ for target timer: %@", buf, 0x20u);
        }

        v45 = *(a1 + 64);
        v46 = MEMORY[0x1E696EAC8];
        v47 = MTIntentsTimerForTimer(v35);
        v48 = [v46 confirmationRequiredWithTimerToConfirm:v47];
        (*(v45 + 16))(v45, v48, 0);
      }

      else
      {
        v49 = *MEMORY[0x1E696E6D8];
        if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
        {
          v50 = *(a1 + 32);
          *buf = 136315394;
          v60 = "[MTTimerIntentHandler _genericallyResolveTargetTimer:multiple:allowedTimerStatesForFollowup:completion:]_block_invoke";
          v61 = 2112;
          v62 = v50;
          _os_log_impl(&dword_1B1F9F000, v49, OS_LOG_TYPE_INFO, "%s Found no matching timers for target timer: %@", buf, 0x16u);
        }

        v51 = *(a1 + 64);
        if (!v8 || v10)
        {
          (*(v51 + 16))(v51, 0, v10);
          goto LABEL_41;
        }

        v35 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTTimerIntentHandlerErrorDomain" code:5 userInfo:0];
        (*(v51 + 16))(v51, 0, v35);
      }
    }

    else
    {
      if (*(a1 + 72) == 1)
      {
        v25 = *MEMORY[0x1E696E6D8];
        if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
        {
          v26 = *(a1 + 32);
          *buf = 136315650;
          v60 = "[MTTimerIntentHandler _genericallyResolveTargetTimer:multiple:allowedTimerStatesForFollowup:completion:]_block_invoke";
          v61 = 2048;
          v62 = v24;
          v63 = 2112;
          v64 = v26;
          _os_log_impl(&dword_1B1F9F000, v25, OS_LOG_TYPE_INFO, "%s Found %ld matching timers for multi target timer: %@", buf, 0x20u);
        }

        v27 = *(a1 + 64);
        v28 = [MEMORY[0x1E696EAC8] successWithResolvedTimer:*(a1 + 32)];
        (*(v27 + 16))(v27, v28, 0);
        goto LABEL_41;
      }

      v28 = [v7 sortedArrayUsingComparator:MTTimerIntentResultsComparator];
      v35 = [v28 na_map:&__block_literal_global_52];
      v36 = *MEMORY[0x1E696E6D8];
      if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
      {
        v37 = v36;
        v38 = [v35 count];
        v39 = *(a1 + 32);
        *buf = 136315650;
        v60 = "[MTTimerIntentHandler _genericallyResolveTargetTimer:multiple:allowedTimerStatesForFollowup:completion:]_block_invoke_2";
        v61 = 2048;
        v62 = v38;
        v63 = 2112;
        v64 = v39;
        _os_log_impl(&dword_1B1F9F000, v37, OS_LOG_TYPE_INFO, "%s Disambiguating %ld matching timers for single target timer: %@", buf, 0x20u);
      }

      v40 = *(a1 + 64);
      v41 = [MEMORY[0x1E696EAC8] disambiguationWithTimersToDisambiguate:v35];
      (*(v40 + 16))(v40, v41, 0);
    }

LABEL_41:
    goto LABEL_42;
  }

  v18 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_ERROR))
  {
    __105__MTTimerIntentHandler__genericallyResolveTargetTimer_multiple_allowedTimerStatesForFollowup_completion___block_invoke_cold_1(a1, v10, v18);
  }

  v19 = *(a1 + 64);
  v20 = [MEMORY[0x1E696EAC8] unsupported];
  (*(v19 + 16))(v19, v20, 0);
LABEL_42:

  v52 = *MEMORY[0x1E69E9840];
}

uint64_t __105__MTTimerIntentHandler__genericallyResolveTargetTimer_multiple_allowedTimerStatesForFollowup_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "state")}];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_onlyUnnamedTimerInTimers:(id)timers forTargetTimer:(id)timer allowMultiple:(BOOL)multiple
{
  timersCopy = timers;
  timerCopy = timer;
  v9 = timerCopy;
  if (multiple)
  {
    goto LABEL_2;
  }

  label = [timerCopy label];
  if (label)
  {
    goto LABEL_8;
  }

  [v9 duration];
  if (v12 <= 0.0)
  {
    goto LABEL_8;
  }

  if ([timersCopy count] < 2)
  {
LABEL_2:
    v10 = 0;
    goto LABEL_10;
  }

  label = [timersCopy indexesOfObjectsPassingTest:&__block_literal_global_17_0];
  if ([label count] != 1)
  {
LABEL_8:
    v10 = 0;
  }

  else
  {
    v10 = [timersCopy objectAtIndexedSubscript:{objc_msgSend(label, "firstIndex")}];
  }

LABEL_10:

  return v10;
}

BOOL __79__MTTimerIntentHandler__onlyUnnamedTimerInTimers_forTargetTimer_allowMultiple___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 title];
  v3 = [v2 length] == 0;

  return v3;
}

- (id)_alternateTimersForTargetTimerState:(int64_t)state type:(int64_t)type inTimers:(id)timers allowedTimerStates:(id)states
{
  statesCopy = states;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__MTTimerIntentHandler__alternateTimersForTargetTimerState_type_inTimers_allowedTimerStates___block_invoke;
  v15[3] = &unk_1E7B0FF40;
  v16 = statesCopy;
  stateCopy = state;
  typeCopy = type;
  v10 = statesCopy;
  timersCopy = timers;
  v12 = [timersCopy indexesOfObjectsPassingTest:v15];
  v13 = [timersCopy objectsAtIndexes:v12];

  return v13;
}

BOOL __93__MTTimerIntentHandler__alternateTimersForTargetTimerState_type_inTimers_allowedTimerStates___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((!a1[5] || MTIntentsTimerStateForTimerState([v3 state]) == a1[5]) && (v5 = a1[4], objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(v4, "state")), v6 = objc_claimAutoreleasedReturnValue(), LODWORD(v5) = objc_msgSend(v5, "containsObject:", v6), v6, v5))
  {
    v7 = [v4 type];
    v8 = a1[6];
    v10 = v7 == v8 || v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_isDefaultTimer:(id)timer
{
  title = [timer title];
  v4 = [title isEqualToString:@"CURRENT_TIMER"];

  return v4;
}

- (MTTimerManagerProviding)timerManagerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_timerManagerProvider);

  return WeakRetained;
}

void __85__MTTimerIntentHandler__matchTimersFromIntentsTimer_excludeStoppedTimers_completion___block_invoke_3_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 136315650;
  v6 = "[MTTimerIntentHandler _matchTimersFromIntentsTimer:excludeStoppedTimers:completion:]_block_invoke_3";
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%s Failed to retrieve timers from timer manager %@: %@", &v5, 0x20u);
  v4 = *MEMORY[0x1E69E9840];
}

void __105__MTTimerIntentHandler__genericallyResolveTargetTimer_multiple_allowedTimerStatesForFollowup_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = 136315906;
  v7 = "[MTTimerIntentHandler _genericallyResolveTargetTimer:multiple:allowedTimerStatesForFollowup:completion:]_block_invoke";
  v8 = 2112;
  v9 = v3;
  v10 = 2112;
  v11 = v4;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%s Failed to resolve timer %@ from timer manager %@ due to error %@", &v6, 0x2Au);
  v5 = *MEMORY[0x1E69E9840];
}

@end