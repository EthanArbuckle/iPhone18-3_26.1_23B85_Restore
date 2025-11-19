@interface HDCloudSyncManagerStatusTask
- (HDCloudSyncManagerStatusTask)initWithManager:(id)a3 completion:(id)a4;
- (void)main;
@end

@implementation HDCloudSyncManagerStatusTask

- (HDCloudSyncManagerStatusTask)initWithManager:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HDCloudSyncManagerStatusTask;
  v8 = [(HDCloudSyncManagerTask *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_manager, v6);
    v10 = [v7 copy];
    completion = v9->_completion;
    v9->_completion = v10;
  }

  return v9;
}

- (void)main
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__90;
    v16[4] = __Block_byref_object_dispose__90;
    v17 = 0;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = __Block_byref_object_copy__90;
    v14[4] = __Block_byref_object_dispose__90;
    v15 = 0;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__90;
    v12[4] = __Block_byref_object_dispose__90;
    v13 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__HDCloudSyncManagerStatusTask_main__block_invoke;
    v7[3] = &unk_278620880;
    v7[4] = self;
    v8 = WeakRetained;
    v9 = v16;
    v10 = v14;
    v11 = v12;
    [v8 containerIdentifiersForCurrentAccountWithCompletion:v7];

    _Block_object_dispose(v12, 8);
    _Block_object_dispose(v14, 8);

    _Block_object_dispose(v16, 8);
  }

  else
  {
    completion = self->_completion;
    v6 = [MEMORY[0x277CCA9B8] hk_error:2000 format:@"Cloud sync manager unexpectedly nil"];
    completion[2](completion, 0, v6);

    [(HDCloudSyncManagerTask *)self finish];
  }
}

void __36__HDCloudSyncManagerStatusTask_main__block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = +[HDDatabaseTransactionContext contextForReading];
    v5 = [*(a1 + 40) profile];
    v6 = [v5 database];
    v24 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __36__HDCloudSyncManagerStatusTask_main__block_invoke_2;
    v19[3] = &unk_278620858;
    v19[4] = *(a1 + 32);
    v20 = v3;
    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    v23 = *(a1 + 64);
    v7 = [v6 performTransactionWithContext:v4 error:&v24 block:v19 inaccessibilityHandler:0];
    v8 = v24;

    if (v7)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(*(a1 + 48) + 8) + 40);
        v11 = *(*(*(a1 + 64) + 8) + 40);
        v12 = *(*(*(a1 + 56) + 8) + 40);
        v14 = *(a1 + 32);
        v13 = *(a1 + 40);
        v15 = v9;
        v16 = [v13 profile];
        *buf = 138544386;
        v26 = v14;
        v27 = 2114;
        v28 = v10;
        v29 = 2114;
        v30 = v11;
        v31 = 2114;
        v32 = v12;
        v33 = 2114;
        v34 = v16;
        _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetched Status: Push: %{public}@, Lite Push: %{public}@, Pull: %{public}@, Profile:%{public}@", buf, 0x34u);
      }

      v17 = objc_alloc_init(HDCloudSyncStatus);
      [(HDCloudSyncStatus *)v17 setLastSuccessfulPullDate:*(*(*(a1 + 56) + 8) + 40)];
      [(HDCloudSyncStatus *)v17 setLastSuccessfulPushDate:*(*(*(a1 + 48) + 8) + 40)];
      [(HDCloudSyncStatus *)v17 setLastSuccessfulLitePushDate:*(*(*(a1 + 64) + 8) + 40)];
      (*(*(*(a1 + 32) + 64) + 16))();
    }

    else
    {
      (*(*(*(a1 + 32) + 64) + 16))();
    }

    [*(a1 + 32) finish];
  }

  else
  {
    (*(*(*(a1 + 32) + 64) + 16))();
    [*(a1 + 32) finish];
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __36__HDCloudSyncManagerStatusTask_main__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = [*(a1 + 48) profile];
  if (!v6)
  {
    v18 = 0;
    goto LABEL_62;
  }

  v8 = v5;
  v9 = HDCloudSyncKeyValueDomainWithProfile(v7);
  v10 = HDCloudSyncLastSuccessfulPushKeyForContainerIdentifier(v8);

  v50 = 0;
  v11 = [v9 dateForKey:v10 error:&v50];
  v12 = v50;

  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 == 0;
  }

  v14 = v13;
  if (v13)
  {
    v15 = v11;
    v16 = v11;
  }

  else if (a3)
  {
    v17 = v12;
    v16 = 0;
    *a3 = v12;
  }

  else
  {
    _HKLogDroppedError();
    v16 = 0;
  }

  v18 = v16;
  if (v14)
  {
    if (!v18)
    {
      goto LABEL_20;
    }

    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    if (v20)
    {
      if (![v20 hk_isAfterDate:v18])
      {
        goto LABEL_20;
      }

      v19 = *(*(a1 + 56) + 8);
    }

    objc_storeStrong((v19 + 40), v16);
    [*(a1 + 48) didCompleteSuccessfulPushWithDate:v18];
LABEL_20:
    v22 = *(a1 + 32);
    v21 = *(a1 + 40);
    v23 = [*(a1 + 48) profile];
    if (!v22)
    {
      v7 = 0;
      goto LABEL_60;
    }

    v24 = v21;
    v25 = HDCloudSyncKeyValueDomainWithProfile(v23);
    v26 = HDCloudSyncLastSuccessfulPullKeyForContainerIdentifier(v24);

    v50 = 0;
    v27 = [v25 dateForKey:v26 error:&v50];
    v28 = v50;

    if (v27)
    {
      v29 = 1;
    }

    else
    {
      v29 = v28 == 0;
    }

    v30 = v29;
    if (v29)
    {
      v31 = v27;
      v32 = v27;
    }

    else if (a3)
    {
      v33 = v28;
      v32 = 0;
      *a3 = v28;
    }

    else
    {
      _HKLogDroppedError();
      v32 = 0;
    }

    v7 = v32;
    if (v30)
    {
      if (!v7)
      {
        goto LABEL_40;
      }

      v34 = *(*(a1 + 64) + 8);
      v35 = *(v34 + 40);
      if (v35)
      {
        if (![v35 hk_isAfterDate:v7])
        {
          goto LABEL_40;
        }

        v34 = *(*(a1 + 64) + 8);
      }

      objc_storeStrong((v34 + 40), v32);
      [*(a1 + 48) didCompleteSuccessfulPullWithDate:v7];
LABEL_40:
      v22 = *(a1 + 32);
      v36 = *(a1 + 40);
      v37 = [*(a1 + 48) profile];
      if (v22)
      {
        v38 = v36;
        v39 = HDCloudSyncKeyValueDomainWithProfile(v37);
        v40 = HDCloudSyncLastSuccessfulLitePushKeyForContainerIdentifier(v38);

        v50 = 0;
        v41 = [v39 dateForKey:v40 error:&v50];
        v42 = v50;

        if (v41)
        {
          v43 = 1;
        }

        else
        {
          v43 = v42 == 0;
        }

        v22 = v43;
        if (v43)
        {
          v44 = v41;
          v45 = v41;
        }

        else if (a3)
        {
          v46 = v42;
          v45 = 0;
          *a3 = v42;
        }

        else
        {
          _HKLogDroppedError();
          v45 = 0;
        }
      }

      else
      {
        v45 = 0;
      }

      v23 = v45;

      if (!v22 || !v23)
      {
        goto LABEL_60;
      }

      v47 = *(*(a1 + 72) + 8);
      v48 = *(v47 + 40);
      if (v48)
      {
        if (![v48 hk_isAfterDate:v23])
        {
LABEL_60:

LABEL_63:
          goto LABEL_64;
        }

        v47 = *(*(a1 + 72) + 8);
      }

      objc_storeStrong((v47 + 40), v45);
      [*(a1 + 48) didCompleteSuccessfulLitePushWithDate:v23];
      goto LABEL_60;
    }

LABEL_62:
    v22 = 0;
    goto LABEL_63;
  }

  v22 = 0;
LABEL_64:

  return v22;
}

@end