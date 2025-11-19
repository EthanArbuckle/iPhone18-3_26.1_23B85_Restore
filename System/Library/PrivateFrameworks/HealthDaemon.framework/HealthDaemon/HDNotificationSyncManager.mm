@interface HDNotificationSyncManager
- (BOOL)sendNotificationInstructionMessage:(id)a3 error:(id *)a4;
- (HDNotificationSyncManager)initWithProfile:(id)a3;
- (void)daemonReady:(id)a3;
- (void)nanoSyncManagerDidReceiveNotificationInstructionRequest:(id)a3 receivedDate:(id)a4 sendingDeviceName:(id)a5 completion:(id)a6;
- (void)notificationInstructionSyncService:(id)a3 didReceiveNotificationInstruction:(id)a4;
@end

@implementation HDNotificationSyncManager

- (HDNotificationSyncManager)initWithProfile:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HDNotificationSyncManager;
  v5 = [(HDNotificationSyncManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = [[HDNotificationInstructionManager alloc] initWithProfile:v4];
    notificationInstructionManager = v6->_notificationInstructionManager;
    v6->_notificationInstructionManager = v7;

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v10 = [WeakRetained daemon];
    [v10 registerDaemonReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)daemonReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained daemon];
  v5 = [v4 notificationInstructionSyncService];
  [v5 registerObserver:self queue:0];
}

void __91__HDNotificationSyncManager__sendNanoSyncNotificationInstructionMessage_requestIdentifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC300];
  v7 = *MEMORY[0x277CCC300];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v13 = 138543362;
      v14 = objc_opt_class();
      v10 = v14;
      _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "[%{public}@] Successfully sent NanoSync message", &v13, 0xCu);
LABEL_7:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v9 = v6;
    v13 = 138543618;
    v14 = objc_opt_class();
    v15 = 2114;
    v16 = v5;
    v10 = v14;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Error sending NanoSync message: %{public}@", &v13, 0x16u);
    goto LABEL_7;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)nanoSyncManagerDidReceiveNotificationInstructionRequest:(id)a3 receivedDate:(id)a4 sendingDeviceName:(id)a5 completion:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v34 = a6;
  v12 = a4;
  v13 = [HDNotificationInstructionMessage alloc];
  v14 = [v10 notificationInstruction];
  v15 = self;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v17 = [WeakRetained daemon];
  v18 = [v17 pluginManager];
  v19 = [v18 notificationInstructionCriteriaClasses];
  v20 = [(HDNotificationInstructionMessage *)v13 initWithCodableNotificationInstructionMessage:v14 criteriaClasses:v19];

  v21 = v11;
  v22 = [v10 requestIdentifier];
  v23 = [[HDNotificationInstruction alloc] initWithMessageIdentifier:v22 receivedDate:v12 sendingDeviceName:v11 message:v20];

  _HKInitializeLogging();
  v24 = *MEMORY[0x277CCC300];
  v25 = *MEMORY[0x277CCC300];
  if (v23)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v24;
      *buf = 138543618;
      v40 = objc_opt_class();
      v41 = 2114;
      v42 = v22;
      v27 = v40;
      _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully received NanoSync instruction: %{public}@", buf, 0x16u);
    }

    notificationInstructionManager = v15->_notificationInstructionManager;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __127__HDNotificationSyncManager_nanoSyncManagerDidReceiveNotificationInstructionRequest_receivedDate_sendingDeviceName_completion___block_invoke;
    v36[3] = &unk_278613150;
    v36[4] = v15;
    v37 = v22;
    v29 = v34;
    v38 = v34;
    [(HDNotificationInstructionManager *)notificationInstructionManager insertNotificationInstruction:v23 completion:v36];
  }

  else
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v32 = v24;
      *buf = 138544130;
      v40 = objc_opt_class();
      v41 = 2114;
      v42 = v10;
      v43 = 2114;
      v44 = v22;
      v45 = 2114;
      v46 = v11;
      v33 = v40;
      _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to instantiate HDNotificationInstructionMessage from NanoSync request: %{public}@ %{public}@, sendingDeviceName: %{public}@", buf, 0x2Au);
    }

    v30 = [MEMORY[0x277CCA9B8] hk_error:129 description:{@"Unable to instantiate HDNotificationInstructionMessage from NanoSync request", v34}];
    v29 = v35;
    v35[2](v35, 0, v30);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __127__HDNotificationSyncManager_nanoSyncManagerDidReceiveNotificationInstructionRequest_receivedDate_sendingDeviceName_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC300];
    if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = v7;
      v11 = objc_opt_class();
      v12 = a1[5];
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v6;
      v13 = v11;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Error persisting new instruction %{public}@: %{public}@", &v14, 0x20u);
    }
  }

  (*(a1[6] + 16))(a1[6], a2, v6, v5);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)notificationInstructionSyncService:(id)a3 didReceiveNotificationInstruction:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v5;
    v8 = v13;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received new instruction: %{public}@", buf, 0x16u);
  }

  notificationInstructionManager = self->_notificationInstructionManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__HDNotificationSyncManager_notificationInstructionSyncService_didReceiveNotificationInstruction___block_invoke;
  v11[3] = &unk_2786130B0;
  v11[4] = self;
  [(HDNotificationInstructionManager *)notificationInstructionManager insertNotificationInstruction:v5 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __98__HDNotificationSyncManager_notificationInstructionSyncService_didReceiveNotificationInstruction___block_invoke(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC300];
    if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v5;
      v10 = v12;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Error persisting new instruction: %{public}@", &v11, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)sendNotificationInstructionMessage:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained daemon];
  v9 = [v8 notificationInstructionSyncService];
  v28 = 0;
  v10 = [v9 sendNotificationInstructionMessage:v6 identifier:&v28 error:a4];
  v11 = v28;

  v12 = v11;
  if (self)
  {
    v13 = v6;
    v14 = objc_alloc_init(HDCodableNotificationInstructionRequest);
    v15 = v14;
    if (v12)
    {
      [(HDCodableNotificationInstructionRequest *)v14 setRequestIdentifier:v12];
    }

    else
    {
      v16 = [MEMORY[0x277CCAD78] UUID];
      v17 = [v16 UUIDString];
      [(HDCodableNotificationInstructionRequest *)v15 setRequestIdentifier:v17];
    }

    v18 = [v13 codableMessage];

    [(HDCodableNotificationInstructionRequest *)v15 setNotificationInstruction:v18];
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC300];
    if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = objc_opt_class();
      v22 = v21;
      v23 = [(HDCodableNotificationInstructionRequest *)v15 requestIdentifier];
      *buf = 138543618;
      *&buf[4] = v21;
      *&buf[12] = 2114;
      *&buf[14] = v23;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending NanoSync message: %{public}@", buf, 0x16u);
    }

    v24 = objc_loadWeakRetained(&self->_profile);
    v25 = [v24 nanoSyncManager];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __91__HDNotificationSyncManager__sendNanoSyncNotificationInstructionMessage_requestIdentifier___block_invoke;
    v30 = &unk_2786130B0;
    v31 = self;
    [v25 sendNotificationInstructionMessageRequest:v15 completion:buf];
  }

  v26 = *MEMORY[0x277D85DE8];
  return v10;
}

@end