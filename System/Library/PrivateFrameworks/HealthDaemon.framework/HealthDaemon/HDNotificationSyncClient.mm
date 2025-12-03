@interface HDNotificationSyncClient
- (BOOL)markPendingNotificationInstructionsAsProcessed:(id)processed error:(id *)error;
- (BOOL)obliterateNotificationInstructionsWithError:(id *)error;
- (BOOL)sendNewDeviceNotificationWithMessageKind:(int64_t)kind error:(id *)error;
- (BOOL)sendNotificationInstruction:(id)instruction criteria:(id)criteria error:(id *)error;
- (HDNotificationInstructionManager)instructionManager;
- (HDNotificationSyncClient)initWithProfile:(id)profile clientIdentifier:(id)identifier queue:(id)queue;
- (HDPendingNotificationInstructions)_pendingNotificationInstructionsForAction:(void *)action error:;
- (id)diagnosticDescription;
- (id)notificationHoldInstructionsWithError:(id *)error;
- (void)_currentDate;
- (void)fakeReceivedNotificationInstruction:(id)instruction sendingDeviceInfo:(id)info criteria:(id)criteria completion:(id)completion;
- (void)notificationInstructionManager:(id)manager didInsertNotificationInstruction:(id)instruction;
- (void)profileDidBecomeReady:(id)ready;
- (void)setDelegate:(id)delegate;
@end

@implementation HDNotificationSyncClient

- (HDNotificationSyncClient)initWithProfile:(id)profile clientIdentifier:(id)identifier queue:(id)queue
{
  profileCopy = profile;
  identifierCopy = identifier;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = HDNotificationSyncClient;
  v11 = [(HDNotificationSyncClient *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, profileCopy);
    v13 = [identifierCopy copy];
    clientIdentifier = v12->_clientIdentifier;
    v12->_clientIdentifier = v13;

    objc_storeStrong(&v12->_queue, queue);
    v12->_lock._os_unfair_lock_opaque = 0;
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    lock_messageIdentifiersInFlight = v12->_lock_messageIdentifiersInFlight;
    v12->_lock_messageIdentifiersInFlight = v15;

    [profileCopy registerProfileReadyObserver:v12 queue:v12->_queue];
    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v12];
  }

  return v12;
}

- (HDNotificationInstructionManager)instructionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  notificationSyncManager = [WeakRetained notificationSyncManager];
  notificationInstructionManager = [notificationSyncManager notificationInstructionManager];

  if (!notificationInstructionManager)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDNotificationSyncClient.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"manager"}];
  }

  return notificationInstructionManager;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_lock_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)profileDidBecomeReady:(id)ready
{
  instructionManager = [(HDNotificationSyncClient *)self instructionManager];
  [instructionManager registerObserver:self forClientIdentifier:self->_clientIdentifier queue:self->_queue];
}

- (void)notificationInstructionManager:(id)manager didInsertNotificationInstruction:(id)instruction
{
  v13 = *MEMORY[0x277D85DE8];
  instructionCopy = instruction;
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
    v12 = instructionCopy;
    v9 = *&v11[4];
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying delegate %{public}@ of new instruction %{public}@", v11, 0x20u);
  }

  [WeakRetained notificationSyncClient:self didReceiveInstructionWithAction:{objc_msgSend(instructionCopy, "action", *v11, *&v11[16], v12)}];

  v10 = *MEMORY[0x277D85DE8];
}

- (HDPendingNotificationInstructions)_pendingNotificationInstructionsForAction:(void *)action error:
{
  if (self)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__18;
    v30 = __Block_byref_object_dispose__18;
    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    instructionManager = [self instructionManager];
    v7 = *(self + 16);
    v24[4] = &v26;
    v25 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __76__HDNotificationSyncClient__pendingNotificationInstructionsForAction_error___block_invoke;
    v24[3] = &unk_278615A98;
    v8 = [instructionManager enumerateValidNotificationInstructionsForClientIdentifier:v7 action:a2 error:&v25 enumerationBlock:v24];
    v9 = v25;

    if (v8)
    {
      os_unfair_lock_lock((self + 32));
      v10 = v27[5];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __76__HDNotificationSyncClient__pendingNotificationInstructionsForAction_error___block_invoke_2;
      v23[3] = &unk_278615AC0;
      v23[4] = self;
      v11 = [v10 hk_filter:v23];
      v12 = objc_alloc(MEMORY[0x277CBEB98]);
      allKeys = [v11 allKeys];
      v14 = [v12 initWithArray:allKeys];

      v15 = objc_alloc(MEMORY[0x277CBEB98]);
      allValues = [v11 allValues];
      v17 = [v15 initWithArray:allValues];

      [*(self + 48) unionSet:v14];
      os_unfair_lock_unlock((self + 32));
      v18 = [[HDPendingNotificationInstructions alloc] initWithAction:a2 instructions:v17];
    }

    else
    {
      v19 = v9;
      v20 = v19;
      if (v19)
      {
        if (action)
        {
          v21 = v19;
          *action = v20;
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

- (BOOL)markPendingNotificationInstructionsAsProcessed:(id)processed error:(id *)error
{
  processedCopy = processed;
  if ([processedCopy action] == 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDNotificationSyncClient.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"pendingNotificationInstructions.action != HKNotificationInstructionActionHold"}];
  }

  instructionManager = [(HDNotificationSyncClient *)self instructionManager];
  messageIdentifiers = [processedCopy messageIdentifiers];
  v18 = 0;
  v10 = [instructionManager invalidateNotificationInstructionsWithMessageIdentifiers:messageIdentifiers error:&v18];
  v11 = v18;

  if (v10)
  {
    os_unfair_lock_lock(&self->_lock);
    lock_messageIdentifiersInFlight = self->_lock_messageIdentifiersInFlight;
    messageIdentifiers2 = [processedCopy messageIdentifiers];
    [(NSMutableSet *)lock_messageIdentifiersInFlight minusSet:messageIdentifiers2];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v14 = v11;
    if (v14)
    {
      if (error)
      {
        v15 = v14;
        *error = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v10;
}

- (id)notificationHoldInstructionsWithError:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__18;
  v14 = __Block_byref_object_dispose__18;
  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  instructionManager = [(HDNotificationSyncClient *)self instructionManager];
  clientIdentifier = self->_clientIdentifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HDNotificationSyncClient_notificationHoldInstructionsWithError___block_invoke;
  v9[3] = &unk_278615A98;
  v9[4] = &v10;
  LODWORD(error) = [instructionManager enumerateValidNotificationInstructionsForClientIdentifier:clientIdentifier action:2 error:error enumerationBlock:v9];

  if (error)
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

- (BOOL)sendNotificationInstruction:(id)instruction criteria:(id)criteria error:(id *)error
{
  v7 = MEMORY[0x277CCDD30];
  criteriaCopy = criteria;
  instructionCopy = instruction;
  sharedBehavior = [v7 sharedBehavior];
  v11 = MEMORY[0x277CCACA8];
  currentDeviceDisplayName = [sharedBehavior currentDeviceDisplayName];
  currentDeviceProductType = [sharedBehavior currentDeviceProductType];
  currentOSBuild = [sharedBehavior currentOSBuild];
  v25 = [v11 stringWithFormat:@"%@%@;%@", currentDeviceDisplayName, currentDeviceProductType, currentOSBuild];;

  v15 = [HDNotificationInstructionMessage alloc];
  _currentDate = [(HDNotificationSyncClient *)self _currentDate];
  action = [instructionCopy action];
  clientIdentifier = self->_clientIdentifier;
  categoryIdentifier = [instructionCopy categoryIdentifier];
  expirationDate = [instructionCopy expirationDate];

  v21 = [(HDNotificationInstructionMessage *)v15 initWithCreationDate:_currentDate sendingDeviceInfo:v25 action:action clientIdentifier:clientIdentifier categoryIdentifier:categoryIdentifier expirationDate:expirationDate criteria:criteriaCopy];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  notificationSyncManager = [WeakRetained notificationSyncManager];
  LOBYTE(expirationDate) = [notificationSyncManager sendNotificationInstructionMessage:v21 error:error];

  return expirationDate;
}

- (void)_currentDate
{
  if (self)
  {
    v2 = self[7];
    if (v2)
    {
      self = v2;
    }

    else
    {
      self = [MEMORY[0x277CBEAA8] date];
    }

    v1 = vars8;
  }

  return self;
}

- (BOOL)sendNewDeviceNotificationWithMessageKind:(int64_t)kind error:(id *)error
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  v8 = MEMORY[0x277CCACA8];
  currentDeviceProductType = [mEMORY[0x277CCDD30] currentDeviceProductType];
  currentOSBuild = [mEMORY[0x277CCDD30] currentOSBuild];
  v11 = [v8 stringWithFormat:@"%@%@", currentDeviceProductType, currentOSBuild];;

  _currentDate = [(HDNotificationSyncClient *)self _currentDate];
  v13 = [_currentDate dateByAddingTimeInterval:2592000.0];

  v14 = [HDNotificationInstructionMessage alloc];
  _currentDate2 = [(HDNotificationSyncClient *)self _currentDate];
  v16 = [(HDNotificationInstructionMessage *)v14 initWithCreationDate:_currentDate2 sendingDeviceInfo:v11 action:3 clientIdentifier:self->_clientIdentifier categoryIdentifier:@"DataAvailableOnNewDevice" expirationDate:v13 criteria:0];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  notificationSyncManager = [WeakRetained notificationSyncManager];
  v19 = [notificationSyncManager sendNotificationInstructionMessage:v16 error:error];

  v20 = objc_loadWeakRetained(&self->_profile);
  daemon = [v20 daemon];
  healthAppNewDeviceNotificationService = [daemon healthAppNewDeviceNotificationService];
  LOBYTE(error) = [healthAppNewDeviceNotificationService sendNewDeviceNotificationWithMessageKind:kind error:error];

  return (error | v19) & 1;
}

- (void)fakeReceivedNotificationInstruction:(id)instruction sendingDeviceInfo:(id)info criteria:(id)criteria completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  criteriaCopy = criteria;
  infoCopy = info;
  instructionCopy = instruction;
  v27 = [HDNotificationInstruction alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  _currentDate = [(HDNotificationSyncClient *)self _currentDate];
  _currentDate2 = [(HDNotificationSyncClient *)self _currentDate];
  _currentDate3 = [(HDNotificationSyncClient *)self _currentDate];
  action = [instructionCopy action];
  clientIdentifier = self->_clientIdentifier;
  categoryIdentifier = [instructionCopy categoryIdentifier];
  expirationDate = [instructionCopy expirationDate];

  LOBYTE(v25) = 0;
  v19 = [(HDNotificationInstruction *)v27 initWithMessageIdentifier:uUIDString creationDate:_currentDate receivedDate:_currentDate2 modificationDate:_currentDate3 sendingDeviceName:infoCopy sendingDeviceInfo:infoCopy action:action clientIdentifier:clientIdentifier categoryIdentifier:categoryIdentifier expirationDate:expirationDate criteria:criteriaCopy isInvalid:v25];

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

  instructionManager = [(HDNotificationSyncClient *)self instructionManager];
  [instructionManager insertNotificationInstruction:v19 completion:completionCopy];

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)obliterateNotificationInstructionsWithError:(id *)error
{
  instructionManager = [(HDNotificationSyncClient *)self instructionManager];
  LOBYTE(error) = [instructionManager obliterateNotificationInstructionsWithError:error];

  return error;
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