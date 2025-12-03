@interface MSPSharedTripSenderStrategyController
+ (void)updateGroupSessionStorage:(id)storage fromController:(id)controller;
- (BOOL)_enableVirtualReceivers;
- (BOOL)addLiveParticipants:(id)participants;
- (BOOL)addParticipants:(id)participants forServiceName:(id)name;
- (BOOL)removeLiveParticipant:(id)participant;
- (BOOL)removeParticipant:(id)participant forServiceName:(id)name reason:(unint64_t)reason;
- (BOOL)removeParticipant:(id)participant reason:(unint64_t)reason;
- (MSPSharedTripSenderStrategyController)initWithGroupSession:(id)session messageStrategyDelegate:(id)delegate;
- (id)_createMinimalSenderForServiceName:(id)name;
- (id)_createMinimalSenderWithMapsClass:(Class)class messagesClass:(Class)messagesClass serviceName:(id)name;
- (id)_currentLiveSender:(BOOL)sender;
- (id)_currentMinimalSenderForServiceName:(id)name createIfNeeded:(BOOL)needed;
- (id)_currentSendersByServiceName;
- (void)_performBlockWithMinimalSenders:(id)senders;
- (void)_updateGroupSessionStorage:(id)storage;
- (void)performWithAllMinimalSenders:(id)senders;
- (void)removeLiveParticipants:(id)participants;
- (void)restoreFromGroupSessionStorage:(id)storage;
- (void)setState:(id)state forEvent:(unint64_t)event;
@end

@implementation MSPSharedTripSenderStrategyController

- (MSPSharedTripSenderStrategyController)initWithGroupSession:(id)session messageStrategyDelegate:(id)delegate
{
  v28 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = MSPSharedTripSenderStrategyController;
  v9 = [(MSPSharedTripSenderStrategyController *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_groupSession, session);
    objc_storeWeak(&v10->_messageStrategyDelegate, delegateCopy);
    v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
    senderStrategiesByServiceName = v10->_senderStrategiesByServiceName;
    v10->_senderStrategiesByServiceName = v11;

    mEMORY[0x277D0EC70] = [MEMORY[0x277D0EC70] sharedPlatform];
    isInternalInstall = [mEMORY[0x277D0EC70] isInternalInstall];

    if (isInternalInstall)
    {
      v15 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = MEMORY[0x277CCACA8];
        v17 = v10;
        v18 = [v16 stringWithFormat:@"%@<%p>", objc_opt_class(), v17];

        *buf = 138543362;
        v27 = v18;
        _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_INFO, "[%{public}@] Virtual Senders are supported", buf, 0xCu);
      }

      v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
      virtualSenderStrategiesByServiceName = v10->_virtualSenderStrategiesByServiceName;
      v10->_virtualSenderStrategiesByServiceName = v19;

      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
      nestedVirtualReceiverEnablement = v10->_nestedVirtualReceiverEnablement;
      v10->_nestedVirtualReceiverEnablement = v21;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)addParticipants:(id)participants forServiceName:(id)name
{
  v31 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  nameCopy = name;
  v8 = [(MSPSharedTripSenderStrategyController *)self _currentMinimalSenderForServiceName:nameCopy createIfNeeded:1];
  v9 = MSPGetSharedTripLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      if (self)
      {
        v11 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v11 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
      }

      else
      {
        selfCopy = @"<nil>";
      }

      v17 = MEMORY[0x277CCACA8];
      v18 = v8;
      v19 = selfCopy;
      v20 = [v17 stringWithFormat:@"%@<%p>", objc_opt_class(), v18];

      *buf = 138544131;
      v24 = selfCopy;
      v25 = 2113;
      v26 = participantsCopy;
      v27 = 2114;
      v28 = nameCopy;
      v29 = 2114;
      v30 = v20;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "[%{public}@] addParticipants %{private}@ to %{public}@/%{public}@", buf, 0x2Au);
    }

    [v8 addParticipants:participantsCopy];
  }

  else
  {
    if (v10)
    {
      if (self)
      {
        v14 = MEMORY[0x277CCACA8];
        selfCopy2 = self;
        selfCopy2 = [v14 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];
      }

      else
      {
        selfCopy2 = @"<nil>";
      }

      *buf = 138543875;
      v24 = selfCopy2;
      v25 = 2113;
      v26 = participantsCopy;
      v27 = 2114;
      v28 = nameCopy;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "[%{public}@] addParticipants %{private}@ no sender for %{public}@", buf, 0x20u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v8 != 0;
}

- (BOOL)removeParticipant:(id)participant forServiceName:(id)name reason:(unint64_t)reason
{
  v37 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  nameCopy = name;
  v10 = [(MSPSharedTripSenderStrategyController *)self _currentMinimalSenderForServiceName:nameCopy createIfNeeded:1];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 removeParticipant:participantCopy forReason:reason];
    v13 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      if (self)
      {
        v14 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v14 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
      }

      else
      {
        selfCopy = @"<nil>";
      }

      if (v12)
      {
        v20 = "yes";
      }

      else
      {
        v20 = "no";
      }

      v21 = MEMORY[0x277CCACA8];
      v22 = v11;
      v23 = selfCopy;
      v24 = [v21 stringWithFormat:@"%@<%p>", objc_opt_class(), v22];

      *buf = 138544387;
      v28 = selfCopy;
      v29 = 2113;
      v30 = participantCopy;
      v31 = 2080;
      v32 = v20;
      v33 = 2114;
      v34 = nameCopy;
      v35 = 2114;
      v36 = v24;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_INFO, "[%{public}@] removeParticipant %{private}@ %s from %{public}@/%{public}@", buf, 0x34u);
    }
  }

  else
  {
    v13 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      if (self)
      {
        v17 = MEMORY[0x277CCACA8];
        selfCopy2 = self;
        selfCopy2 = [v17 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];
      }

      else
      {
        selfCopy2 = @"<nil>";
      }

      *buf = 138543618;
      v28 = selfCopy2;
      v29 = 2114;
      v30 = nameCopy;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_INFO, "[%{public}@] removeParticipant no sender for %{public}@", buf, 0x16u);
    }

    LOBYTE(v12) = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)removeParticipant:(id)participant reason:(unint64_t)reason
{
  participantCopy = participant;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__MSPSharedTripSenderStrategyController_removeParticipant_reason___block_invoke;
  v9[3] = &unk_279868698;
  v7 = participantCopy;
  v10 = v7;
  selfCopy = self;
  v12 = &v14;
  reasonCopy = reason;
  [(MSPSharedTripSenderStrategyController *)self _performBlockWithMinimalSenders:v9];
  LOBYTE(reason) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return reason;
}

void __66__MSPSharedTripSenderStrategyController_removeParticipant_reason___block_invoke(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 removeParticipant:a1[4] forReason:a1[7]])
  {
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1[5];
      if (v8)
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = v8;
        v11 = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), v10];
      }

      else
      {
        v11 = @"<nil>";
      }

      v12 = v11;
      v13 = a1[4];
      v14 = v5;
      if (v14)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v14];
      }

      else
      {
        v15 = @"<nil>";
      }

      *buf = 138544131;
      v18 = v12;
      v19 = 2113;
      v20 = v13;
      v21 = 2114;
      v22 = v6;
      v23 = 2114;
      v24 = v15;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "[%{public}@] removeParticipant %{private}@ from %{public}@/%{public}@", buf, 0x2Au);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)addLiveParticipants:(id)participants
{
  v25 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  v5 = [(MSPSharedTripSenderStrategyController *)self _currentLiveSender:1];
  [v5 addParticipants:participantsCopy];
  v6 = MSPGetSharedTripLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      if (self)
      {
        v8 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
      }

      else
      {
        selfCopy = @"<nil>";
      }

      v14 = MEMORY[0x277CCACA8];
      v15 = v5;
      selfCopy2 = selfCopy;
      v16 = [v14 stringWithFormat:@"%@<%p>", objc_opt_class(), v15];

      *buf = 138543875;
      v20 = selfCopy;
      v21 = 2113;
      v22 = participantsCopy;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "[%{public}@] addLiveParticipants %{private}@ to %{public}@", buf, 0x20u);

LABEL_12:
    }
  }

  else if (v7)
  {
    if (self)
    {
      v11 = MEMORY[0x277CCACA8];
      selfCopy2 = self;
      selfCopy2 = [v11 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];
    }

    else
    {
      selfCopy2 = @"<nil>";
    }

    *buf = 138543619;
    v20 = selfCopy2;
    v21 = 2113;
    v22 = participantsCopy;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "[%{public}@] addLiveParticipants %{private}@ no live sender", buf, 0x16u);
    goto LABEL_12;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

- (BOOL)removeLiveParticipant:(id)participant
{
  v25 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  v5 = [(MSPSharedTripSenderStrategyController *)self _currentLiveSender:0];
  v6 = [v5 removeParticipant:participantCopy forReason:0];
  v7 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v8 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    v11 = selfCopy;
    if (v6)
    {
      v12 = "yes";
    }

    else
    {
      v12 = "no";
    }

    v13 = v5;
    if (v13)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v13];
    }

    else
    {
      v14 = @"<nil>";
    }

    *buf = 138544131;
    v18 = v11;
    v19 = 2113;
    v20 = participantCopy;
    v21 = 2080;
    v22 = v12;
    v23 = 2114;
    v24 = v14;
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "[%{public}@] removeLiveParticipant %{private}@ %s from %{public}@", buf, 0x2Au);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)removeLiveParticipants:(id)participants
{
  v20 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  v5 = [(MSPSharedTripSenderStrategyController *)self _currentLiveSender:0];
  [v5 removeParticipants:participantsCopy];
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v7 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v7 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    v10 = selfCopy;
    v11 = v5;
    if (v11)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v11];
    }

    else
    {
      v12 = @"<nil>";
    }

    *buf = 138543875;
    v15 = v10;
    v16 = 2113;
    v17 = participantsCopy;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "[%{public}@] removeLiveParticipants %{private}@ from %{public}@", buf, 0x20u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setState:(id)state forEvent:(unint64_t)event
{
  stateCopy = state;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __59__MSPSharedTripSenderStrategyController_setState_forEvent___block_invoke;
  v11 = &unk_2798686C0;
  v12 = stateCopy;
  eventCopy = event;
  v7 = stateCopy;
  [(MSPSharedTripSenderStrategyController *)self performWithAllMinimalSenders:&v8];
  [(MSPSenderIDSStrategy *)self->_liveSender setState:v7 forEvent:event, v8, v9, v10, v11];
  [(MSPSenderIDSStrategy *)self->_virtualLiveSender setState:v7 forEvent:event];
}

+ (void)updateGroupSessionStorage:(id)storage fromController:(id)controller
{
  v18 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  storageCopy = storage;
  v8 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v9 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    v12 = "will update from controller";
    if (!controllerCopy)
    {
      v12 = "no strategy controller to update from";
    }

    *buf = 138543618;
    v15 = selfCopy;
    v16 = 2080;
    v17 = v12;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_INFO, "[%{public}@] updateGroupSessionStorage clearing storage, %s", buf, 0x16u);
  }

  [storageCopy clearMinimalStrategyIdentifiers];
  [storageCopy clearMessageStrategyIdentifiers];
  [storageCopy clearSmsStrategyIdentifiers];
  [storageCopy clearLiveStrategyIdentifiers];
  [controllerCopy _updateGroupSessionStorage:storageCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)restoreFromGroupSessionStorage:(id)storage
{
  v18 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v6 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    *buf = 138543362;
    v17 = selfCopy;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_INFO, "[%{public}@] restoreFromGroupStorage", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__MSPSharedTripSenderStrategyController_restoreFromGroupSessionStorage___block_invoke;
  v14[3] = &unk_2798685C8;
  v9 = storageCopy;
  v15 = v9;
  [(MSPSharedTripSenderStrategyController *)self _performBlockWithMinimalSenders:v14];
  if ([v9 liveStrategyIdentifiersCount])
  {
    v10 = MEMORY[0x277D18778];
    liveStrategyIdentifiers = [v9 liveStrategyIdentifiers];
    v12 = [v10 _msp_IDSIdentifiersFor:liveStrategyIdentifiers];

    [(MSPSenderLiveStrategy *)self->_liveSender addParticipants:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __72__MSPSharedTripSenderStrategyController_restoreFromGroupSessionStorage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if ([v5 isEqualToString:@"Maps"] && objc_msgSend(*(a1 + 32), "minimalStrategyIdentifiersCount"))
  {
    if (![*(a1 + 32) minimalStrategyIdentifiersCount])
    {
      goto LABEL_12;
    }

    v6 = MEMORY[0x277D18778];
    v7 = [*(a1 + 32) minimalStrategyIdentifiers];
    v8 = [v6 _msp_IDSIdentifiersFor:v7];
  }

  else
  {
    if ([v5 isEqualToString:@"iMessage"] && (objc_msgSend(*(a1 + 32), "messageStrategyIdentifiers"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      v10 = [*(a1 + 32) messageStrategyIdentifiers];
    }

    else
    {
      v11 = [*(a1 + 32) smsStrategyIdentifiers];

      if (!v11)
      {
        goto LABEL_12;
      }

      v10 = [*(a1 + 32) smsStrategyIdentifiers];
    }

    v8 = v10;
  }

  [v12 addParticipants:v8];

LABEL_12:
}

- (void)_updateGroupSessionStorage:(id)storage
{
  v18 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v6 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    *buf = 138543362;
    v17 = selfCopy;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_INFO, "[%{public}@] updateGroupSessionStorage", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__MSPSharedTripSenderStrategyController__updateGroupSessionStorage___block_invoke;
  v14[3] = &unk_2798685C8;
  v15 = storageCopy;
  v9 = storageCopy;
  [(MSPSharedTripSenderStrategyController *)self _performBlockWithMinimalSenders:v14];
  participants = [(MSPSenderStrategy *)self->_liveSender participants];
  allObjects = [participants allObjects];
  v12 = [allObjects mutableCopy];
  [v9 setLiveStrategyIdentifiers:v12];

  v13 = *MEMORY[0x277D85DE8];
}

void __68__MSPSharedTripSenderStrategyController__updateGroupSessionStorage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 participants];
  v6 = [v5 allObjects];
  v7 = [v6 mutableCopy];

  if ([v10 isEqualToString:@"Maps"])
  {
    [*(a1 + 32) setMinimalStrategyIdentifiers:v7];
  }

  else
  {
    v8 = [v10 isEqualToString:@"iMessage"];
    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 setMessageStrategyIdentifiers:v7];
    }

    else
    {
      [v9 setSmsStrategyIdentifiers:v7];
    }
  }
}

- (id)_currentMinimalSenderForServiceName:(id)name createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  nameCopy = name;
  _currentSendersByServiceName = [(MSPSharedTripSenderStrategyController *)self _currentSendersByServiceName];
  v8 = [_currentSendersByServiceName objectForKeyedSubscript:nameCopy];
  if (!v8 && neededCopy)
  {
    v8 = [(MSPSharedTripSenderStrategyController *)self _createMinimalSenderForServiceName:nameCopy];
    [_currentSendersByServiceName setObject:v8 forKeyedSubscript:nameCopy];
  }

  return v8;
}

- (id)_createMinimalSenderForServiceName:(id)name
{
  nameCopy = name;
  _enableVirtualReceivers = [(MSPSharedTripSenderStrategyController *)self _enableVirtualReceivers];
  v6 = off_279865878;
  v7 = !_enableVirtualReceivers;
  if (!_enableVirtualReceivers)
  {
    v6 = off_279865860;
  }

  v8 = *v6;
  if (v7)
  {
    v9 = off_279865858;
  }

  else
  {
    v9 = off_279865870;
  }

  v10 = objc_opt_class();
  v11 = *v9;
  v12 = [(MSPSharedTripSenderStrategyController *)self _createMinimalSenderWithMapsClass:v10 messagesClass:objc_opt_class() serviceName:nameCopy];

  return v12;
}

- (id)_createMinimalSenderWithMapsClass:(Class)class messagesClass:(Class)messagesClass serviceName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Maps"])
  {
    v9 = [[class alloc] initWithGroupSession:self->_groupSession];
  }

  else
  {
    if ([nameCopy isEqualToString:@"iMessage"])
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = [messagesClass alloc];
    WeakRetained = objc_loadWeakRetained(&self->_messageStrategyDelegate);
    v9 = [v11 initWithDelegate:WeakRetained capabilityType:v10 serviceName:nameCopy];
  }

  return v9;
}

- (id)_currentLiveSender:(BOOL)sender
{
  senderCopy = sender;
  if (![(MSPSharedTripSenderStrategyController *)self _enableVirtualReceivers])
  {
    p_liveSender = &self->_liveSender;
    liveSender = self->_liveSender;
    if (liveSender)
    {
      v8 = 1;
    }

    else
    {
      v8 = !senderCopy;
    }

    if (v8)
    {
      goto LABEL_11;
    }

    v7 = off_279865850;
    goto LABEL_10;
  }

  p_liveSender = &self->_virtualLiveSender;
  liveSender = self->_virtualLiveSender;
  if (!liveSender && senderCopy)
  {
    v7 = off_279865868;
LABEL_10:
    v9 = [objc_alloc(*v7) initWithGroupSession:self->_groupSession];
    v10 = *p_liveSender;
    *p_liveSender = v9;

    liveSender = *p_liveSender;
  }

LABEL_11:

  return liveSender;
}

- (void)performWithAllMinimalSenders:(id)senders
{
  sendersCopy = senders;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__MSPSharedTripSenderStrategyController_performWithAllMinimalSenders___block_invoke;
  v9[3] = &unk_2798686E8;
  v5 = sendersCopy;
  v10 = v5;
  [(MSPSharedTripSenderStrategyController *)self performWithVirtualSenders:0 block:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__MSPSharedTripSenderStrategyController_performWithAllMinimalSenders___block_invoke_2;
  v7[3] = &unk_2798686E8;
  v8 = v5;
  v6 = v5;
  [(MSPSharedTripSenderStrategyController *)self performWithVirtualSenders:1 block:v7];
}

- (void)_performBlockWithMinimalSenders:(id)senders
{
  sendersCopy = senders;
  _currentSendersByServiceName = [(MSPSharedTripSenderStrategyController *)self _currentSendersByServiceName];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__MSPSharedTripSenderStrategyController__performBlockWithMinimalSenders___block_invoke;
  v7[3] = &unk_279868710;
  v8 = sendersCopy;
  v6 = sendersCopy;
  [_currentSendersByServiceName enumerateKeysAndObjectsUsingBlock:v7];
}

- (BOOL)_enableVirtualReceivers
{
  lastObject = [(NSMutableArray *)self->_nestedVirtualReceiverEnablement lastObject];
  bOOLValue = [lastObject BOOLValue];

  return bOOLValue;
}

- (id)_currentSendersByServiceName
{
  _enableVirtualReceivers = [(MSPSharedTripSenderStrategyController *)self _enableVirtualReceivers];
  v4 = 24;
  if (_enableVirtualReceivers)
  {
    v4 = 40;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

@end