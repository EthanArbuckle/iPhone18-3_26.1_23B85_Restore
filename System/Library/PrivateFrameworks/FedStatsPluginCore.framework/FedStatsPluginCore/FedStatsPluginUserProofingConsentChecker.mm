@interface FedStatsPluginUserProofingConsentChecker
- (id)checkConsentForClientIdentifier:(id)a3 error:(id *)a4;
@end

@implementation FedStatsPluginUserProofingConsentChecker

- (id)checkConsentForClientIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([&unk_285E17A70 containsObject:v5])
  {
    v6 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [FedStatsPluginUserProofingConsentChecker checkConsentForClientIdentifier:v6 error:?];
    }

    v7 = objc_alloc_init(MEMORY[0x277CFFE68]);
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    v33 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy_;
    v26 = __Block_byref_object_dispose_;
    v27 = 0;
    v8 = dispatch_semaphore_create(0);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __82__FedStatsPluginUserProofingConsentChecker_checkConsentForClientIdentifier_error___block_invoke;
    v18 = &unk_278FF7970;
    v20 = &v22;
    v21 = &v28;
    v9 = v8;
    v19 = v9;
    [v7 fetchUserConsent:&v15];
    v10 = dispatch_time(0, 15000000000);
    if (dispatch_semaphore_wait(v9, v10))
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"User consent check failed after %u seconds", 15, v15, v16, v17, v18];
      if (a4)
      {
        *a4 = [FedStatsPluginError errorWithCode:300 description:v11];
      }

      v12 = 0;
    }

    else
    {
      v13 = v29[5];
      if (a4 && !v13)
      {
        *a4 = [FedStatsPluginError errorWithCode:300 underlyingError:v23[5] description:@"Cannot access CoreIDVUI consent manager"];
        v13 = v29[5];
      }

      v12 = v13;
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v12 = MEMORY[0x277CBEC38];
  }

  return v12;
}

intptr_t __82__FedStatsPluginUserProofingConsentChecker_checkConsentForClientIdentifier_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = [a3 copy];
    v5 = 40;
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:a2 == 0];
    v5 = 48;
  }

  v6 = *(*(a1 + v5) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  v8 = *(a1 + 32);

  return dispatch_semaphore_signal(v8);
}

@end