@interface HDAWDPeriodicAction
@end

@implementation HDAWDPeriodicAction

void __42___HDAWDPeriodicAction__beginWaitingToRun__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2[18];
  if (!(v3 % v2[8]))
  {
    [(_HDAWDPeriodicAction *)v2 _queue_setWaitingToRun:?];
    v2 = *(a1 + 32);
  }

  [(_HDAWDPeriodicAction *)v2 _queue_setIntervalCounter:?];
  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_assert_queue_V2(*(v4 + 96));
    if (*(v4 + 56) == 1)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = MEMORY[0x277CCAD78];
      v7 = *(v4 + 160);
      v8 = [v6 UUID];
      v9 = [v8 UUIDString];
      v10 = [v5 stringWithFormat:@"%@-%@", v7, v9];

      WeakRetained = objc_loadWeakRetained((v4 + 88));
      v12 = [WeakRetained database];
      v21 = 0;
      v13 = [v12 takeAccessibilityAssertionWithOwnerIdentifier:v10 timeout:&v21 error:300.0];
      v14 = v21;

      if (v13)
      {
        v16 = *(v4 + 104);
        v15 = (v4 + 104);
        v17 = v16;
        v18 = v17;
        if (v17)
        {
          [v17 invalidate];
        }

        objc_storeStrong(v15, v13);
      }

      else
      {
        _HKInitializeLogging();
        v19 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v23 = v4;
          v24 = 2114;
          v25 = v14;
          _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Failed to take database accessibility assertion during activity preparation: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __29___HDAWDPeriodicAction_reset__block_invoke(uint64_t a1)
{
  [(_HDAWDPeriodicAction *)*(a1 + 32) _queue_setWaitingToRun:?];
  [(_HDAWDPeriodicAction *)*(a1 + 32) _queue_setLastSubmissionAttemptDate:?];
  [(_HDAWDPeriodicAction *)*(a1 + 32) _queue_setIntervalCounter:?];
  v2 = *(a1 + 32);

  [(_HDAWDPeriodicAction *)v2 _queue_setLastProcessedDate:?];
}

void __29___HDAWDPeriodicAction_start__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [HDPeriodicActivity alloc];
    WeakRetained = objc_loadWeakRetained((v1 + 88));
    v4 = MEMORY[0x277CCC2B0];
    v5 = [(HDPeriodicActivity *)v2 initWithProfile:WeakRetained name:*(v1 + 160) interval:v1 delegate:*MEMORY[0x277CCC2B0] loggingCategory:*(v1 + 40)];
    v6 = *(v1 + 120);
    *(v1 + 120) = v5;

    _HKInitializeLogging();
    v7 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
    {
      v8 = *(v1 + 160);
      v10 = 138543618;
      v11 = v1;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "%{public}@: Registered XPC activity %{public}@ for periodic updates", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __69___HDAWDPeriodicAction__doIfWaitingOnMaintenanceQueueWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  if (v3)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 1;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__97;
    v33 = __Block_byref_object_dispose__97;
    v34 = 0;
    v5 = *(v3 + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46___HDAWDPeriodicAction__doIfWaitingWithError___block_invoke;
    block[3] = &unk_27861A1D0;
    block[4] = v3;
    block[5] = &v35;
    block[6] = &v29;
    dispatch_sync(v5, block);
    if (*(v36 + 24) == 1)
    {
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_INFO))
      {
        v7 = *(v3 + 160);
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "Attempting to submit metric for %@", buf, 0xCu);
      }

      v8 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:v3 activityName:*(v3 + 160)];
      v9 = v30[5];
      v27 = 0;
      v10 = v9;
      v11 = objc_alloc_init(HDMutableDatabaseTransactionContext);
      [(HDMutableDatabaseTransactionContext *)v11 setCacheScope:1];
      if (v10)
      {
        [(HDMutableDatabaseTransactionContext *)v11 addAccessibilityAssertion:v10];
      }

      WeakRetained = objc_loadWeakRetained((v3 + 88));
      v13 = [WeakRetained database];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __66___HDAWDPeriodicAction__runBlockWithAccessibilityAssertion_error___block_invoke;
      v40 = &unk_278616D40;
      v41 = v3;
      v14 = [v13 performWithTransactionContext:v11 error:&v27 block:buf];

      v15 = v27;
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_INFO))
      {
        v17 = *(v3 + 160);
        v18 = @"NO";
        *buf = 138412802;
        if (v14)
        {
          v18 = @"YES";
        }

        *&buf[4] = v17;
        *&buf[12] = 2114;
        *&buf[14] = v18;
        *&buf[22] = 2114;
        v40 = v15;
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_INFO, "%@ Submission success: %{public}@, error: %{public}@", buf, 0x20u);
      }

      v19 = v15;
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      v22 = *(v3 + 96);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __46___HDAWDPeriodicAction__doIfWaitingWithError___block_invoke_347;
      v40 = &unk_278618990;
      v41 = v3;
      v42 = v14;
      dispatch_sync(v22, buf);
      [v8 invalidate];
    }

    else
    {
      v20 = 0;
    }

    v23 = *(v3 + 96);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __46___HDAWDPeriodicAction__doIfWaitingWithError___block_invoke_2;
    v26[3] = &unk_278616E90;
    v26[4] = &v29;
    dispatch_sync(v23, v26);
    _Block_object_dispose(&v29, 8);

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v20 = 0;
  }

  v24 = v20;
  v4[2](v4);

  (*(*(a1 + 40) + 16))();
  v25 = *MEMORY[0x277D85DE8];
}

void __46___HDAWDPeriodicAction__doIfWaitingWithError___block_invoke(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = MEMORY[0x277CCC2B0];
  v3 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[4];
    v12 = *(v11 + 160);
    v13 = *(v11 + 136);
    v15 = 138412546;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    _os_log_debug_impl(&dword_228986000, v3, OS_LOG_TYPE_DEBUG, "%@ Last submitted at %@", &v15, 0x16u);
  }

  v4 = a1[4];
  if (v4)
  {
    if (*(v4 + 136))
    {
      v5 = [MEMORY[0x277CBEAA8] date];
      [v5 timeIntervalSinceDate:*(v4 + 136)];
      LOBYTE(v4) = v6 > *(v4 + 80);
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  *(*(a1[5] + 8) + 24) = v4;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1[4] + 160);
      v15 = 138412290;
      v16 = v14;
      _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "%@ Skipping submission: last attempt was too recent", &v15, 0xCu);
    }
  }

  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 104));
  v8 = a1[4];
  v9 = *(v8 + 104);
  *(v8 + 104) = 0;

  v10 = *MEMORY[0x277D85DE8];
}

void __46___HDAWDPeriodicAction__doIfWaitingWithError___block_invoke_347(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAA8] date];
  [(_HDAWDPeriodicAction *)v2 _queue_setLastSubmissionAttemptDate:v3];

  v4 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v5 = 0;
  }

  else
  {
    v6 = *(v4 + 128);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v5 = v6 - 1;
  }

  [(_HDAWDPeriodicAction *)v4 _queue_setWaitingToRun:v5];
}

uint64_t __59___HDAWDPeriodicAction_performPeriodicActivity_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v2, *(*(a1 + 32) + 80));
}

@end