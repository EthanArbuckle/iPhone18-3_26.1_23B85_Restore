@interface HDMCNotificationSyncManager
- (HDMCNotificationSyncManager)initWithProfile:(id)profile;
- (void)_handleDismissInstructionWithClient:(id)client;
- (void)notificationSyncClient:(id)client didReceiveInstructionWithAction:(int64_t)action;
- (void)sendNotificationInstructionsForSchedulingChanges:(id)changes sampleInfo:(id)info;
@end

@implementation HDMCNotificationSyncManager

- (HDMCNotificationSyncManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v13.receiver = self;
  v13.super_class = HDMCNotificationSyncManager;
  v5 = [(HDMCNotificationSyncManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = objc_alloc(MEMORY[0x277D107B8]);
    v8 = *MEMORY[0x277D11920];
    v9 = HKCreateSerialDispatchQueue();
    v10 = [v7 initWithProfile:profileCopy clientIdentifier:v8 queue:v9];
    notificationSyncClient = v6->_notificationSyncClient;
    v6->_notificationSyncClient = v10;

    [(HDNotificationSyncClient *)v6->_notificationSyncClient setDelegate:v6];
  }

  return v6;
}

- (void)sendNotificationInstructionsForSchedulingChanges:(id)changes sampleInfo:(id)info
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __91__HDMCNotificationSyncManager_sendNotificationInstructionsForSchedulingChanges_sampleInfo___block_invoke;
  v4[3] = &unk_27865A7C8;
  v4[4] = self;
  [changes hdmc_enumerateNotificationInstructionsFromAnalysisSampleInfo:info block:v4];
}

void __91__HDMCNotificationSyncManager_sendNotificationInstructionsForSchedulingChanges_sampleInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(*(a1 + 32) + 16);
  v18 = 0;
  v7 = [v6 sendNotificationInstruction:v5 criteria:a3 error:&v18];
  v8 = v18;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC2E8];
  v10 = *MEMORY[0x277CCC2E8];
  if (!v7)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v16 = *(a1 + 32);
    v12 = v9;
    v17 = objc_opt_class();
    *buf = 138543874;
    v20 = v17;
    v21 = 2114;
    v22 = v5;
    v23 = 2114;
    v24 = v8;
    v14 = v17;
    _os_log_error_impl(&dword_2293D1000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] Error sending %{public}@: %{public}@", buf, 0x20u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = v9;
    v13 = objc_opt_class();
    *buf = 138543618;
    v20 = v13;
    v21 = 2114;
    v22 = v5;
    v14 = v13;
    _os_log_impl(&dword_2293D1000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sent %{public}@", buf, 0x16u);
LABEL_4:
  }

LABEL_6:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)notificationSyncClient:(id)client didReceiveInstructionWithAction:(int64_t)action
{
  v23 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = v9;
    v11 = NSStringFromHKNotificationInstructionAction();
    v19 = 138543618;
    v20 = v9;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_2293D1000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received instruction with action: %{public}@", &v19, 0x16u);
  }

  if (action == 2)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC300];
    if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = objc_opt_class();
      v19 = 138543362;
      v20 = v14;
      v15 = v14;
      _os_log_impl(&dword_2293D1000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received hold instruction. Doing nothing.", &v19, 0xCu);
    }
  }

  else if (action == 1)
  {
    [(HDMCNotificationSyncManager *)self _handleDismissInstructionWithClient:clientCopy];
  }

  else
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC300];
    if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_ERROR))
    {
      [HDMCNotificationSyncManager notificationSyncClient:v16 didReceiveInstructionWithAction:?];
    }
  }

  unitTest_didProcessNotificationInstruction = self->_unitTest_didProcessNotificationInstruction;
  if (unitTest_didProcessNotificationInstruction)
  {
    unitTest_didProcessNotificationInstruction[2]();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleDismissInstructionWithClient:(id)client
{
  v34 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  _HKInitializeLogging();
  v5 = MEMORY[0x277CCC2E8];
  v6 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_2293D1000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling dismiss instruction", buf, 0xCu);
  }

  v29 = 0;
  v7 = [clientCopy pendingNotificationDismissInstructionsWithError:&v29];
  v8 = v29;
  _HKInitializeLogging();
  v9 = *v5;
  v10 = *v5;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
      v12 = objc_opt_class();
      v13 = v12;
      messageIdentifiers = [v7 messageIdentifiers];
      *buf = 138543618;
      selfCopy = v12;
      v32 = 2114;
      v33 = messageIdentifiers;
      _os_log_impl(&dword_2293D1000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received notification dismiss instructions with identifiers: %{public}@", buf, 0x16u);
    }

    categoryIdentifiers = [v7 categoryIdentifiers];
    allObjects = [categoryIdentifiers allObjects];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    notificationManager = [WeakRetained notificationManager];
    [notificationManager removePendingNotificationsWithIdentifiers:allObjects];

    v19 = objc_loadWeakRetained(&self->_profile);
    notificationManager2 = [v19 notificationManager];
    [notificationManager2 removeDeliveredNotificationsWithIdentifiers:allObjects];

    v28 = v8;
    LODWORD(notificationManager2) = [clientCopy markPendingNotificationInstructionsAsProcessed:v7 error:&v28];
    v21 = v28;

    _HKInitializeLogging();
    v22 = *v5;
    v23 = *v5;
    if (notificationManager2)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v22;
        v25 = objc_opt_class();
        *buf = 138543618;
        selfCopy = v25;
        v32 = 2114;
        v33 = allObjects;
        v26 = v25;
        _os_log_impl(&dword_2293D1000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dismissed notifications: %{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [HDMCNotificationSyncManager _handleDismissInstructionWithClient:v22];
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HDMCNotificationSyncManager _handleDismissInstructionWithClient:v9];
    }

    v21 = v8;
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)notificationSyncClient:(void *)a1 didReceiveInstructionWithAction:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v10 = NSStringFromHKNotificationInstructionAction();
  OUTLINED_FUNCTION_1(&dword_2293D1000, v3, v4, "[%{public}@] Unexpected notification instruction received: %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleDismissInstructionWithClient:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v4, v5, "[%{public}@] Mark pending notification instruction as processed failed with error: [%{public}@]", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleDismissInstructionWithClient:(void *)a1 .cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v4, v5, "[%{public}@] Pending notification dismiss instructions returned nil with error = [%{public}@]", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end