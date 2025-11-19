@interface DASPairedSystemContext
@end

@implementation DASPairedSystemContext

uint64_t __52___DASPairedSystemContext_registerForContextChanges__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) handlerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52___DASPairedSystemContext_registerForContextChanges__block_invoke_6;
  block[3] = &unk_1E7C8F0B0;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);

  return 1;
}

void __52___DASPairedSystemContext_registerForContextChanges__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) handlerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52___DASPairedSystemContext_registerForContextChanges__block_invoke_4;
  block[3] = &unk_1E7C8F0B0;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);
}

void __47___DASPairedSystemContext_handleAppStateChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) onConditionsChange];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 40));
}

void __125___DASPairedSystemContext_contextWithClientIdentifier_callbackQueue_systemConditionChangeCallback_trafficCancelationHandler___block_invoke(void *a1)
{
  v2 = a1[8];
  v3 = objc_alloc(objc_opt_class());
  v4 = a1[4];
  v7 = [MEMORY[0x1E6997A60] userContext];
  v5 = [v3 initWithClientIdentifier:v4 context:v7 callbackQueue:a1[5] systemConditionChangeCallback:a1[6] trafficCancelationHander:a1[7]];
  v6 = contextWithClientIdentifier_callbackQueue_systemConditionChangeCallback_trafficCancelationHandler__pairedSystemContext;
  contextWithClientIdentifier_callbackQueue_systemConditionChangeCallback_trafficCancelationHandler__pairedSystemContext = v5;
}

void __52___DASPairedSystemContext_registerForContextChanges__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handlerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52___DASPairedSystemContext_registerForContextChanges__block_invoke_2;
  block[3] = &unk_1E7C8F0B0;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);
}

void __48___DASPairedSystemContext_handleConditionChange__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) onConditionsChange];
  (*(v1 + 2))(v1, 0, 0);
}

void __48___DASPairedSystemContext_handleConditionChange__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) onConditionsChange];
  (*(v1 + 2))(v1, 0, 0);
}

void __53___DASPairedSystemContext_handleWatchAppBackgrounded__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v8 = a3;
  [*(a1 + 32) timeIntervalSinceDate:v8];
  if (v9 <= 120.0)
  {
    [*(*(*(a1 + 48) + 8) + 40) timeIntervalSinceDate:v8];
    if (v10 > 0.0)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __54___DASPairedSystemContext_didHandleExclusiveAppChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) onApplicationStateChange];
  v2[2](v2, *(a1 + 40));
}

void __54___DASPairedSystemContext_didHandleExclusiveAppChange__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) onConditionsChange];
  (*(v1 + 2))(v1, 0, 0);
}

void __46___DASPairedSystemContext_isAnyThirdPartyApp___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v6;
      _os_log_impl(&dword_1B6E2F000, v7, OS_LOG_TYPE_INFO, "Error obtaining applications for remote device: %@", &v18, 0xCu);
    }
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698AB00]];
    v9 = v8 == 0;

    v10 = [*(a1 + 32) log];
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v11)
      {
        v14 = *(a1 + 48);
        v18 = 138412290;
        v19 = v14;
        _os_log_impl(&dword_1B6E2F000, v10, OS_LOG_TYPE_INFO, "%@ IS NOT a WatchKit app", &v18, 0xCu);
      }

      v13 = 0;
    }

    else if (v11)
    {
      v12 = *(a1 + 48);
      v18 = 138412290;
      v19 = v12;
      v13 = 1;
      _os_log_impl(&dword_1B6E2F000, v10, OS_LOG_TYPE_INFO, "%@ IS a WatchKit app", &v18, 0xCu);
    }

    else
    {
      v13 = 1;
    }

    *(*(*(a1 + 56) + 8) + 24) = v13;
    v7 = [*(a1 + 32) watchKitAppStatus];
    objc_sync_enter(v7);
    v15 = [MEMORY[0x1E696AD98] numberWithBool:*(*(*(a1 + 56) + 8) + 24)];
    v16 = [*(a1 + 32) watchKitAppStatus];
    [v16 setObject:v15 forKeyedSubscript:*(a1 + 48)];

    objc_sync_exit(v7);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v17 = *MEMORY[0x1E69E9840];
}

id __48___DASPairedSystemContext_updateAppUsageHistory__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 bundleID];

  return v3;
}

@end