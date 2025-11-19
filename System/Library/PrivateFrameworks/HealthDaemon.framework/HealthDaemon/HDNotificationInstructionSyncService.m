@interface HDNotificationInstructionSyncService
- (BOOL)sendNotificationInstructionMessage:(id)a3 identifier:(id *)a4 error:(id *)a5;
- (HDNotificationInstructionSyncService)initWithDaemon:(id)a3;
- (HDNotificationInstructionSyncService)initWithDaemon:(id)a3 IDSService:(id)a4 analyticsEventManager:(id)a5;
- (id)diagnosticDescription;
- (id)initWithDaemon:(void *)a3 syncService:(void *)a4 analyticsEventManager:;
- (void)service:(id)a3 didReceiveMessage:(id)a4 fromDevice:(id)a5 messageContext:(id)a6;
@end

@implementation HDNotificationInstructionSyncService

- (HDNotificationInstructionSyncService)initWithDaemon:(id)a3
{
  v4 = a3;
  v5 = [[HDIDSService alloc] initWithServiceName:@"com.apple.private.alloy.healthappnotificationsync"];
  v6 = objc_alloc(MEMORY[0x277CCCFE8]);
  v7 = *MEMORY[0x277CCC300];
  v8 = [v4 primaryProfile];
  v9 = [v6 initWithLoggingCategory:v7 healthDataSource:v8];

  v10 = [(HDNotificationInstructionSyncService *)&self->super.isa initWithDaemon:v4 syncService:v5 analyticsEventManager:v9];
  return v10;
}

- (id)initWithDaemon:(void *)a3 syncService:(void *)a4 analyticsEventManager:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = HDNotificationInstructionSyncService;
    v10 = objc_msgSendSuper2(&v19, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeWeak(v10 + 2, v7);
      *(a1 + 10) = 0;
      objc_storeStrong(a1 + 6, a3);
      [a1[6] setDelegate:a1];
      v11 = objc_alloc(MEMORY[0x277CCD738]);
      v12 = NSStringFromProtocol(&unk_283CDBF58);
      v13 = [v11 initWithName:v12 loggingCategory:*MEMORY[0x277CCC300]];
      v14 = a1[1];
      a1[1] = v13;

      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v16 = a1[4];
      a1[4] = v15;

      objc_storeStrong(a1 + 3, a4);
      v17 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
      [v17 addObject:a1];
    }
  }

  return a1;
}

- (HDNotificationInstructionSyncService)initWithDaemon:(id)a3 IDSService:(id)a4 analyticsEventManager:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[HDIDSService alloc] initWithService:v9];

  v12 = [(HDNotificationInstructionSyncService *)&self->super.isa initWithDaemon:v10 syncService:v11 analyticsEventManager:v8];
  return v12;
}

- (BOOL)sendNotificationInstructionMessage:(id)a3 identifier:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 messageDictionary];
  v10 = objc_alloc(MEMORY[0x277CCD560]);
  v11 = +[HDIDSDestination validHealthSoftwareDeviceTypes];
  v12 = [v10 initWithSet:v11];

  v13 = [HDIDSDestination initWithAllowedDeviceTypes:v12];
  v14 = [HDIDSMessageOptions defaultOptionsWithPriority:1];
  IDSServiceInstance = self->_IDSServiceInstance;
  v22 = 0;
  v16 = [(HDIDSService *)IDSServiceInstance sendMessage:v9 destination:v13 options:v14 identifier:&v22 error:a5];
  v17 = v22;
  v18 = v17;
  if (v16 && v17 != 0)
  {
    if (a4)
    {
      v20 = v17;
      *a4 = v18;
    }

    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_lock_pendingMessages setObject:v8 forKeyedSubscript:v18];
    os_unfair_lock_unlock(&self->_lock);
  }

  return v16;
}

- (void)service:(id)a3 didReceiveMessage:(id)a4 fromDevice:(id)a5 messageContext:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a6;
  v11 = a5;
  v12 = [HDNotificationInstructionMessage alloc];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v14 = [WeakRetained pluginManager];
  v15 = [v14 notificationInstructionCriteriaClasses];
  v16 = [(HDNotificationInstructionMessage *)v12 initWithMessageDictionary:v9 criteriaClasses:v15];

  v17 = [HDNotificationInstruction alloc];
  v18 = [v10 originalGUID];
  if (self)
  {
    unitTest_currentDate = self->_unitTest_currentDate;
    if (unitTest_currentDate)
    {
      v20 = unitTest_currentDate;
    }

    else
    {
      v20 = [MEMORY[0x277CBEAA8] date];
    }

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = [v11 name];

  v23 = [(HDNotificationInstruction *)v17 initWithMessageIdentifier:v18 receivedDate:v21 sendingDeviceName:v22 message:v16];
  if (!v23)
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC300];
    if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_ERROR))
    {
      v28 = v24;
      v29 = objc_opt_class();
      v30 = v29;
      v31 = [v10 originalGUID];
      *buf = 138543874;
      v36 = v29;
      v37 = 2114;
      v38 = v9;
      v39 = 2114;
      v40 = v31;
      _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to instantiate HDNotificationInstructionMessage from dictionary: %{public}@, originalGUID: %{public}@", buf, 0x20u);
    }
  }

  observers = self->_observers;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __92__HDNotificationInstructionSyncService_service_didReceiveMessage_fromDevice_messageContext___block_invoke;
  v32[3] = &unk_2786243D0;
  v33 = v23;
  v34 = self;
  v26 = v23;
  [(HDNotificationInstructionSyncServiceObserver *)observers notifyObservers:v32];

  v27 = *MEMORY[0x277D85DE8];
}

void __92__HDNotificationInstructionSyncService_service_didReceiveMessage_fromDevice_messageContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 notificationInstructionSyncService:*(a1 + 40) didReceiveNotificationInstruction:?];
  }

  else if ([v3 conformsToProtocol:&unk_283D71498])
  {
    [v4 unitTesting_notificationInstructionSyncService:*(a1 + 40) didReceiveNotificationInstruction:*(a1 + 32)];
  }
}

- (id)diagnosticDescription
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_lock_pendingMessages copy];
  os_unfair_lock_unlock(&self->_lock);
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        [v4 appendFormat:@"ID: %@\n", v10];
        v11 = [v5 objectForKeyedSubscript:v10];
        [v4 appendFormat:@"MSG: %@\n\n", v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end