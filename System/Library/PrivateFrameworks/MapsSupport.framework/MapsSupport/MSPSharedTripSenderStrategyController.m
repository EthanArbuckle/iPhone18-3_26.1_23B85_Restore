@interface MSPSharedTripSenderStrategyController
+ (void)updateGroupSessionStorage:(id)a3 fromController:(id)a4;
- (BOOL)_enableVirtualReceivers;
- (BOOL)addLiveParticipants:(id)a3;
- (BOOL)addParticipants:(id)a3 forServiceName:(id)a4;
- (BOOL)removeLiveParticipant:(id)a3;
- (BOOL)removeParticipant:(id)a3 forServiceName:(id)a4 reason:(unint64_t)a5;
- (BOOL)removeParticipant:(id)a3 reason:(unint64_t)a4;
- (MSPSharedTripSenderStrategyController)initWithGroupSession:(id)a3 messageStrategyDelegate:(id)a4;
- (id)_createMinimalSenderForServiceName:(id)a3;
- (id)_createMinimalSenderWithMapsClass:(Class)a3 messagesClass:(Class)a4 serviceName:(id)a5;
- (id)_currentLiveSender:(BOOL)a3;
- (id)_currentMinimalSenderForServiceName:(id)a3 createIfNeeded:(BOOL)a4;
- (id)_currentSendersByServiceName;
- (void)_performBlockWithMinimalSenders:(id)a3;
- (void)_updateGroupSessionStorage:(id)a3;
- (void)performWithAllMinimalSenders:(id)a3;
- (void)removeLiveParticipants:(id)a3;
- (void)restoreFromGroupSessionStorage:(id)a3;
- (void)setState:(id)a3 forEvent:(unint64_t)a4;
@end

@implementation MSPSharedTripSenderStrategyController

- (MSPSharedTripSenderStrategyController)initWithGroupSession:(id)a3 messageStrategyDelegate:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v25.receiver = self;
  v25.super_class = MSPSharedTripSenderStrategyController;
  v9 = [(MSPSharedTripSenderStrategyController *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_groupSession, a3);
    objc_storeWeak(&v10->_messageStrategyDelegate, v8);
    v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
    senderStrategiesByServiceName = v10->_senderStrategiesByServiceName;
    v10->_senderStrategiesByServiceName = v11;

    v13 = [MEMORY[0x277D0EC70] sharedPlatform];
    v14 = [v13 isInternalInstall];

    if (v14)
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

- (BOOL)addParticipants:(id)a3 forServiceName:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MSPSharedTripSenderStrategyController *)self _currentMinimalSenderForServiceName:v7 createIfNeeded:1];
  v9 = MSPGetSharedTripLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      if (self)
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = self;
        v13 = [v11 stringWithFormat:@"%@<%p>", objc_opt_class(), v12];
      }

      else
      {
        v13 = @"<nil>";
      }

      v17 = MEMORY[0x277CCACA8];
      v18 = v8;
      v19 = v13;
      v20 = [v17 stringWithFormat:@"%@<%p>", objc_opt_class(), v18];

      *buf = 138544131;
      v24 = v13;
      v25 = 2113;
      v26 = v6;
      v27 = 2114;
      v28 = v7;
      v29 = 2114;
      v30 = v20;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "[%{public}@] addParticipants %{private}@ to %{public}@/%{public}@", buf, 0x2Au);
    }

    [v8 addParticipants:v6];
  }

  else
  {
    if (v10)
    {
      if (self)
      {
        v14 = MEMORY[0x277CCACA8];
        v15 = self;
        v16 = [v14 stringWithFormat:@"%@<%p>", objc_opt_class(), v15];
      }

      else
      {
        v16 = @"<nil>";
      }

      *buf = 138543875;
      v24 = v16;
      v25 = 2113;
      v26 = v6;
      v27 = 2114;
      v28 = v7;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "[%{public}@] addParticipants %{private}@ no sender for %{public}@", buf, 0x20u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v8 != 0;
}

- (BOOL)removeParticipant:(id)a3 forServiceName:(id)a4 reason:(unint64_t)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(MSPSharedTripSenderStrategyController *)self _currentMinimalSenderForServiceName:v9 createIfNeeded:1];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 removeParticipant:v8 forReason:a5];
    v13 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      if (self)
      {
        v14 = MEMORY[0x277CCACA8];
        v15 = self;
        v16 = [v14 stringWithFormat:@"%@<%p>", objc_opt_class(), v15];
      }

      else
      {
        v16 = @"<nil>";
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
      v23 = v16;
      v24 = [v21 stringWithFormat:@"%@<%p>", objc_opt_class(), v22];

      *buf = 138544387;
      v28 = v16;
      v29 = 2113;
      v30 = v8;
      v31 = 2080;
      v32 = v20;
      v33 = 2114;
      v34 = v9;
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
        v18 = self;
        v19 = [v17 stringWithFormat:@"%@<%p>", objc_opt_class(), v18];
      }

      else
      {
        v19 = @"<nil>";
      }

      *buf = 138543618;
      v28 = v19;
      v29 = 2114;
      v30 = v9;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_INFO, "[%{public}@] removeParticipant no sender for %{public}@", buf, 0x16u);
    }

    LOBYTE(v12) = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)removeParticipant:(id)a3 reason:(unint64_t)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__MSPSharedTripSenderStrategyController_removeParticipant_reason___block_invoke;
  v9[3] = &unk_279868698;
  v7 = v6;
  v10 = v7;
  v11 = self;
  v12 = &v14;
  v13 = a4;
  [(MSPSharedTripSenderStrategyController *)self _performBlockWithMinimalSenders:v9];
  LOBYTE(a4) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return a4;
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

- (BOOL)addLiveParticipants:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MSPSharedTripSenderStrategyController *)self _currentLiveSender:1];
  [v5 addParticipants:v4];
  v6 = MSPGetSharedTripLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      if (self)
      {
        v8 = MEMORY[0x277CCACA8];
        v9 = self;
        v10 = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), v9];
      }

      else
      {
        v10 = @"<nil>";
      }

      v14 = MEMORY[0x277CCACA8];
      v15 = v5;
      v13 = v10;
      v16 = [v14 stringWithFormat:@"%@<%p>", objc_opt_class(), v15];

      *buf = 138543875;
      v20 = v10;
      v21 = 2113;
      v22 = v4;
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
      v12 = self;
      v13 = [v11 stringWithFormat:@"%@<%p>", objc_opt_class(), v12];
    }

    else
    {
      v13 = @"<nil>";
    }

    *buf = 138543619;
    v20 = v13;
    v21 = 2113;
    v22 = v4;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "[%{public}@] addLiveParticipants %{private}@ no live sender", buf, 0x16u);
    goto LABEL_12;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

- (BOOL)removeLiveParticipant:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MSPSharedTripSenderStrategyController *)self _currentLiveSender:0];
  v6 = [v5 removeParticipant:v4 forReason:0];
  v7 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = self;
      v10 = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), v9];
    }

    else
    {
      v10 = @"<nil>";
    }

    v11 = v10;
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
    v20 = v4;
    v21 = 2080;
    v22 = v12;
    v23 = 2114;
    v24 = v14;
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "[%{public}@] removeLiveParticipant %{private}@ %s from %{public}@", buf, 0x2Au);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)removeLiveParticipants:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MSPSharedTripSenderStrategyController *)self _currentLiveSender:0];
  [v5 removeParticipants:v4];
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = self;
      v9 = [v7 stringWithFormat:@"%@<%p>", objc_opt_class(), v8];
    }

    else
    {
      v9 = @"<nil>";
    }

    v10 = v9;
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
    v17 = v4;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "[%{public}@] removeLiveParticipants %{private}@ from %{public}@", buf, 0x20u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setState:(id)a3 forEvent:(unint64_t)a4
{
  v6 = a3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __59__MSPSharedTripSenderStrategyController_setState_forEvent___block_invoke;
  v11 = &unk_2798686C0;
  v12 = v6;
  v13 = a4;
  v7 = v6;
  [(MSPSharedTripSenderStrategyController *)self performWithAllMinimalSenders:&v8];
  [(MSPSenderIDSStrategy *)self->_liveSender setState:v7 forEvent:a4, v8, v9, v10, v11];
  [(MSPSenderIDSStrategy *)self->_virtualLiveSender setState:v7 forEvent:a4];
}

+ (void)updateGroupSessionStorage:(id)a3 fromController:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    if (a1)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = a1;
      v11 = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), v10];
    }

    else
    {
      v11 = @"<nil>";
    }

    v12 = "will update from controller";
    if (!v6)
    {
      v12 = "no strategy controller to update from";
    }

    *buf = 138543618;
    v15 = v11;
    v16 = 2080;
    v17 = v12;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_INFO, "[%{public}@] updateGroupSessionStorage clearing storage, %s", buf, 0x16u);
  }

  [v7 clearMinimalStrategyIdentifiers];
  [v7 clearMessageStrategyIdentifiers];
  [v7 clearSmsStrategyIdentifiers];
  [v7 clearLiveStrategyIdentifiers];
  [v6 _updateGroupSessionStorage:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)restoreFromGroupSessionStorage:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = self;
      v8 = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), v7];
    }

    else
    {
      v8 = @"<nil>";
    }

    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_INFO, "[%{public}@] restoreFromGroupStorage", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__MSPSharedTripSenderStrategyController_restoreFromGroupSessionStorage___block_invoke;
  v14[3] = &unk_2798685C8;
  v9 = v4;
  v15 = v9;
  [(MSPSharedTripSenderStrategyController *)self _performBlockWithMinimalSenders:v14];
  if ([v9 liveStrategyIdentifiersCount])
  {
    v10 = MEMORY[0x277D18778];
    v11 = [v9 liveStrategyIdentifiers];
    v12 = [v10 _msp_IDSIdentifiersFor:v11];

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

- (void)_updateGroupSessionStorage:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = self;
      v8 = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), v7];
    }

    else
    {
      v8 = @"<nil>";
    }

    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_INFO, "[%{public}@] updateGroupSessionStorage", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__MSPSharedTripSenderStrategyController__updateGroupSessionStorage___block_invoke;
  v14[3] = &unk_2798685C8;
  v15 = v4;
  v9 = v4;
  [(MSPSharedTripSenderStrategyController *)self _performBlockWithMinimalSenders:v14];
  v10 = [(MSPSenderStrategy *)self->_liveSender participants];
  v11 = [v10 allObjects];
  v12 = [v11 mutableCopy];
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

- (id)_currentMinimalSenderForServiceName:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MSPSharedTripSenderStrategyController *)self _currentSendersByServiceName];
  v8 = [v7 objectForKeyedSubscript:v6];
  if (!v8 && v4)
  {
    v8 = [(MSPSharedTripSenderStrategyController *)self _createMinimalSenderForServiceName:v6];
    [v7 setObject:v8 forKeyedSubscript:v6];
  }

  return v8;
}

- (id)_createMinimalSenderForServiceName:(id)a3
{
  v4 = a3;
  v5 = [(MSPSharedTripSenderStrategyController *)self _enableVirtualReceivers];
  v6 = off_279865878;
  v7 = !v5;
  if (!v5)
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
  v12 = [(MSPSharedTripSenderStrategyController *)self _createMinimalSenderWithMapsClass:v10 messagesClass:objc_opt_class() serviceName:v4];

  return v12;
}

- (id)_createMinimalSenderWithMapsClass:(Class)a3 messagesClass:(Class)a4 serviceName:(id)a5
{
  v8 = a5;
  if ([v8 isEqualToString:@"Maps"])
  {
    v9 = [[a3 alloc] initWithGroupSession:self->_groupSession];
  }

  else
  {
    if ([v8 isEqualToString:@"iMessage"])
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = [a4 alloc];
    WeakRetained = objc_loadWeakRetained(&self->_messageStrategyDelegate);
    v9 = [v11 initWithDelegate:WeakRetained capabilityType:v10 serviceName:v8];
  }

  return v9;
}

- (id)_currentLiveSender:(BOOL)a3
{
  v3 = a3;
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
      v8 = !v3;
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
  if (!liveSender && v3)
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

- (void)performWithAllMinimalSenders:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__MSPSharedTripSenderStrategyController_performWithAllMinimalSenders___block_invoke;
  v9[3] = &unk_2798686E8;
  v5 = v4;
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

- (void)_performBlockWithMinimalSenders:(id)a3
{
  v4 = a3;
  v5 = [(MSPSharedTripSenderStrategyController *)self _currentSendersByServiceName];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__MSPSharedTripSenderStrategyController__performBlockWithMinimalSenders___block_invoke;
  v7[3] = &unk_279868710;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (BOOL)_enableVirtualReceivers
{
  v2 = [(NSMutableArray *)self->_nestedVirtualReceiverEnablement lastObject];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)_currentSendersByServiceName
{
  v3 = [(MSPSharedTripSenderStrategyController *)self _enableVirtualReceivers];
  v4 = 24;
  if (v3)
  {
    v4 = 40;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

@end