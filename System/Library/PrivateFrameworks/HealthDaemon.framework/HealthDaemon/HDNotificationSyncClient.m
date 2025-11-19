@interface HDNotificationSyncClient
- (BOOL)markPendingNotificationInstructionsAsProcessed:(id)a3 error:(id *)a4;
- (BOOL)obliterateNotificationInstructionsWithError:(id *)a3;
- (BOOL)sendNewDeviceNotificationWithMessageKind:(int64_t)a3 error:(id *)a4;
- (BOOL)sendNotificationInstruction:(id)a3 criteria:(id)a4 error:(id *)a5;
- (HDNotificationInstructionManager)instructionManager;
- (HDNotificationSyncClient)initWithProfile:(id)a3 clientIdentifier:(id)a4 queue:(id)a5;
- (HDPendingNotificationInstructions)_pendingNotificationInstructionsForAction:(void *)a3 error:;
- (id)diagnosticDescription;
- (id)notificationHoldInstructionsWithError:(id *)a3;
- (void)_currentDate;
- (void)fakeReceivedNotificationInstruction:(id)a3 sendingDeviceInfo:(id)a4 criteria:(id)a5 completion:(id)a6;
- (void)notificationInstructionManager:(id)a3 didInsertNotificationInstruction:(id)a4;
- (void)profileDidBecomeReady:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation HDNotificationSyncClient

- (HDNotificationSyncClient)initWithProfile:(id)a3 clientIdentifier:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HDNotificationSyncClient;
  v11 = [(HDNotificationSyncClient *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, v8);
    v13 = [v9 copy];
    clientIdentifier = v12->_clientIdentifier;
    v12->_clientIdentifier = v13;

    objc_storeStrong(&v12->_queue, a5);
    v12->_lock._os_unfair_lock_opaque = 0;
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    lock_messageIdentifiersInFlight = v12->_lock_messageIdentifiersInFlight;
    v12->_lock_messageIdentifiersInFlight = v15;

    [v8 registerProfileReadyObserver:v12 queue:v12->_queue];
    v17 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v17 addObject:v12];
  }

  return v12;
}

- (HDNotificationInstructionManager)instructionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained notificationSyncManager];
  v6 = [v5 notificationInstructionManager];

  if (!v6)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HDNotificationSyncClient.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"manager"}];
  }

  return v6;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_lock_delegate, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)profileDidBecomeReady:(id)a3
{
  v4 = [(HDNotificationSyncClient *)self instructionManager];
  [v4 registerObserver:self forClientIdentifier:self->_clientIdentifier queue:self->_queue];
}

- (void)notificationInstructionManager:(id)a3 didInsertNotificationInstruction:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  dispatch_assert_queue_V2(self->_queue);
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
  os_unfair_lock_unlock(&self->_lock);
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *v11 = 138543874;
    *&v11[4] = objc_opt_class();
    *&v11[12] = 2114;
    *&v11[14] = WeakRetained;
    *&v11[22] = 2114;
    v12 = v5;
    v9 = *&v11[4];
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying delegate %{public}@ of new instruction %{public}@", v11, 0x20u);
  }

  [WeakRetained notificationSyncClient:self didReceiveInstructionWithAction:{objc_msgSend(v5, "action", *v11, *&v11[16], v12)}];

  v10 = *MEMORY[0x277D85DE8];
}

- (HDPendingNotificationInstructions)_pendingNotificationInstructionsForAction:(void *)a3 error:
{
  if (a1)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__18;
    v30 = __Block_byref_object_dispose__18;
    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = [a1 instructionManager];
    v7 = *(a1 + 16);
    v24[4] = &v26;
    v25 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __76__HDNotificationSyncClient__pendingNotificationInstructionsForAction_error___block_invoke;
    v24[3] = &unk_278615A98;
    v8 = [v6 enumerateValidNotificationInstructionsForClientIdentifier:v7 action:a2 error:&v25 enumerationBlock:v24];
    v9 = v25;

    if (v8)
    {
      os_unfair_lock_lock((a1 + 32));
      v10 = v27[5];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __76__HDNotificationSyncClient__pendingNotificationInstructionsForAction_error___block_invoke_2;
      v23[3] = &unk_278615AC0;
      v23[4] = a1;
      v11 = [v10 hk_filter:v23];
      v12 = objc_alloc(MEMORY[0x277CBEB98]);
      v13 = [v11 allKeys];
      v14 = [v12 initWithArray:v13];

      v15 = objc_alloc(MEMORY[0x277CBEB98]);
      v16 = [v11 allValues];
      v17 = [v15 initWithArray:v16];

      [*(a1 + 48) unionSet:v14];
      os_unfair_lock_unlock((a1 + 32));
      v18 = [[HDPendingNotificationInstructions alloc] initWithAction:a2 instructions:v17];
    }

    else
    {
      v19 = v9;
      v20 = v19;
      if (v19)
      {
        if (a3)
        {
          v21 = v19;
          *a3 = v20;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v18 = 0;
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __76__HDNotificationSyncClient__pendingNotificationInstructionsForAction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HDPendingNotificationInstruction alloc];
  v5 = [v3 messageIdentifier];
  v6 = [v3 categoryIdentifier];
  v7 = [v3 sendingDeviceName];
  v8 = [(HDPendingNotificationInstruction *)v4 initWithMessageIdentifier:v5 categoryIdentifier:v6 sendingDeviceName:v7];
  v9 = *(*(*(a1 + 32) + 8) + 40);
  v10 = [v3 messageIdentifier];

  [v9 setObject:v8 forKeyedSubscript:v10];
  return 1;
}

- (BOOL)markPendingNotificationInstructionsAsProcessed:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([v7 action] == 2)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HDNotificationSyncClient.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"pendingNotificationInstructions.action != HKNotificationInstructionActionHold"}];
  }

  v8 = [(HDNotificationSyncClient *)self instructionManager];
  v9 = [v7 messageIdentifiers];
  v18 = 0;
  v10 = [v8 invalidateNotificationInstructionsWithMessageIdentifiers:v9 error:&v18];
  v11 = v18;

  if (v10)
  {
    os_unfair_lock_lock(&self->_lock);
    lock_messageIdentifiersInFlight = self->_lock_messageIdentifiersInFlight;
    v13 = [v7 messageIdentifiers];
    [(NSMutableSet *)lock_messageIdentifiersInFlight minusSet:v13];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v14 = v11;
    if (v14)
    {
      if (a4)
      {
        v15 = v14;
        *a4 = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v10;
}

- (id)notificationHoldInstructionsWithError:(id *)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__18;
  v14 = __Block_byref_object_dispose__18;
  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = [(HDNotificationSyncClient *)self instructionManager];
  clientIdentifier = self->_clientIdentifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HDNotificationSyncClient_notificationHoldInstructionsWithError___block_invoke;
  v9[3] = &unk_278615A98;
  v9[4] = &v10;
  LODWORD(a3) = [v5 enumerateValidNotificationInstructionsForClientIdentifier:clientIdentifier action:2 error:a3 enumerationBlock:v9];

  if (a3)
  {
    v7 = [v11[5] copy];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __66__HDNotificationSyncClient_notificationHoldInstructionsWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 categoryIdentifier];
  [v2 addObject:v3];

  return 1;
}

- (BOOL)sendNotificationInstruction:(id)a3 criteria:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277CCDD30];
  v8 = a4;
  v9 = a3;
  v10 = [v7 sharedBehavior];
  v11 = MEMORY[0x277CCACA8];
  v12 = [v10 currentDeviceDisplayName];
  v13 = [v10 currentDeviceProductType];
  v14 = [v10 currentOSBuild];
  v25 = [v11 stringWithFormat:@"%@%@;%@", v12, v13, v14];;

  v15 = [HDNotificationInstructionMessage alloc];
  v16 = [(HDNotificationSyncClient *)self _currentDate];
  v17 = [v9 action];
  clientIdentifier = self->_clientIdentifier;
  v19 = [v9 categoryIdentifier];
  v20 = [v9 expirationDate];

  v21 = [(HDNotificationInstructionMessage *)v15 initWithCreationDate:v16 sendingDeviceInfo:v25 action:v17 clientIdentifier:clientIdentifier categoryIdentifier:v19 expirationDate:v20 criteria:v8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v23 = [WeakRetained notificationSyncManager];
  LOBYTE(v20) = [v23 sendNotificationInstructionMessage:v21 error:a5];

  return v20;
}

- (void)_currentDate
{
  if (a1)
  {
    v2 = a1[7];
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      a1 = [MEMORY[0x277CBEAA8] date];
    }

    v1 = vars8;
  }

  return a1;
}

- (BOOL)sendNewDeviceNotificationWithMessageKind:(int64_t)a3 error:(id *)a4
{
  v7 = [MEMORY[0x277CCDD30] sharedBehavior];
  v8 = MEMORY[0x277CCACA8];
  v9 = [v7 currentDeviceProductType];
  v10 = [v7 currentOSBuild];
  v11 = [v8 stringWithFormat:@"%@%@", v9, v10];;

  v12 = [(HDNotificationSyncClient *)self _currentDate];
  v13 = [v12 dateByAddingTimeInterval:2592000.0];

  v14 = [HDNotificationInstructionMessage alloc];
  v15 = [(HDNotificationSyncClient *)self _currentDate];
  v16 = [(HDNotificationInstructionMessage *)v14 initWithCreationDate:v15 sendingDeviceInfo:v11 action:3 clientIdentifier:self->_clientIdentifier categoryIdentifier:@"DataAvailableOnNewDevice" expirationDate:v13 criteria:0];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v18 = [WeakRetained notificationSyncManager];
  v19 = [v18 sendNotificationInstructionMessage:v16 error:a4];

  v20 = objc_loadWeakRetained(&self->_profile);
  v21 = [v20 daemon];
  v22 = [v21 healthAppNewDeviceNotificationService];
  LOBYTE(a4) = [v22 sendNewDeviceNotificationWithMessageKind:a3 error:a4];

  return (a4 | v19) & 1;
}

- (void)fakeReceivedNotificationInstruction:(id)a3 sendingDeviceInfo:(id)a4 criteria:(id)a5 completion:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = a6;
  v28 = a5;
  v10 = a4;
  v11 = a3;
  v27 = [HDNotificationInstruction alloc];
  v29 = [MEMORY[0x277CCAD78] UUID];
  v26 = [v29 UUIDString];
  v12 = [(HDNotificationSyncClient *)self _currentDate];
  v13 = [(HDNotificationSyncClient *)self _currentDate];
  v14 = [(HDNotificationSyncClient *)self _currentDate];
  v15 = [v11 action];
  clientIdentifier = self->_clientIdentifier;
  v17 = [v11 categoryIdentifier];
  v18 = [v11 expirationDate];

  LOBYTE(v25) = 0;
  v19 = [(HDNotificationInstruction *)v27 initWithMessageIdentifier:v26 creationDate:v12 receivedDate:v13 modificationDate:v14 sendingDeviceName:v10 sendingDeviceInfo:v10 action:v15 clientIdentifier:clientIdentifier categoryIdentifier:v17 expirationDate:v18 criteria:v28 isInvalid:v25];

  _HKInitializeLogging();
  v20 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_ERROR))
  {
    v23 = v20;
    *buf = 138543618;
    v32 = objc_opt_class();
    v33 = 2114;
    v34 = v19;
    v24 = v32;
    _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "[%{public}@] Faking received instruction: %{public}@", buf, 0x16u);
  }

  v21 = [(HDNotificationSyncClient *)self instructionManager];
  [v21 insertNotificationInstruction:v19 completion:v30];

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)obliterateNotificationInstructionsWithError:(id *)a3
{
  v4 = [(HDNotificationSyncClient *)self instructionManager];
  LOBYTE(a3) = [v4 obliterateNotificationInstructionsWithError:a3];

  return a3;
}

- (id)diagnosticDescription
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"%@\n", self];
  os_unfair_lock_lock(&self->_lock);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableSet count](self->_lock_messageIdentifiersInFlight, "count")}];
  [v3 appendFormat:@"Message Identifiers In-Flight (%@)\n", v4];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_lock_messageIdentifiersInFlight;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v3 appendFormat:@"\t-%@", *(*(&v13 + 1) + 8 * i)];
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = [v3 copy];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end