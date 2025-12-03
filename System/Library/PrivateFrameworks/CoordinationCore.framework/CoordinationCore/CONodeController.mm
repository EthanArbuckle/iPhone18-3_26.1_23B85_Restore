@interface CONodeController
- (BOOL)isLocalNodeController;
- (CODiscoveryRecord)ipDiscoveryRecord;
- (CONodeController)initWithDiscoveryRecord:(id)record executionContext:(id)context;
- (CONodeControllerDelegate)delegate;
- (COTransportProtocol)preferredTransport;
- (NSString)description;
- (id)_acceptResponseWithElectionInfo:(id)info;
- (id)_ballotResponseWithElectionInfo:(id)info;
- (id)_electionInfoByDiffingCurrentElectionInfo:(id)info;
- (id)_electionRequestWithElectionInfo:(id)info;
- (id)_voteRequestWithElectionInfo:(id)info;
- (id)computePreferredTransport;
- (id)electionSummaryDetails;
- (id)nodeAfterReconciliation;
- (id)rapportTransport;
- (id)remote;
- (id)shortDescription;
- (int64_t)_nodeControllerStateFromNodeState;
- (void)_adjustNodeDiscoveryInformationUsingRecord:(id)record;
- (void)_createAndActivateTransportForRecord:(id)record withCompletionHandler:(id)handler;
- (void)_handleAcceptResponse:(id)response fromTransport:(id)transport;
- (void)_handleBallotResponse:(id)response fromTransport:(id)transport;
- (void)_handleElectionRequest:(id)request fromTransport:(id)transport callback:(id)callback;
- (void)_handlePingError:(id)error fromTransport:(id)transport;
- (void)_handleResponseToCoreRequest:(id)request response:(id)response error:(id)error usingTransport:(id)transport;
- (void)_handleVoteRequest:(id)request fromTransport:(id)transport callback:(id)callback;
- (void)_handleWithdraw:(id)withdraw fromTransport:(id)transport;
- (void)_sendAcceptResponse:(id)response usingTransport:(id)transport callback:(id)callback;
- (void)_sendBallotResponse:(id)response usingTransport:(id)transport callback:(id)callback;
- (void)_sendElectionRequest:(id)request usingTransport:(id)transport;
- (void)_sendPingUsingTransport:(id)transport;
- (void)_sendProbeRequest:(id)request withState:(int64_t)state usingTransport:(id)transport;
- (void)_sendVoteRequest:(id)request usingTransport:(id)transport;
- (void)_updateDelegateWithBallotCommand:(id)command withCompletionHandler:(id)handler;
- (void)_updateKnownDiscovery:(id)discovery;
- (void)_updateNodeState:(int64_t)state currentElectionInfo:(id)info incomingElectionInfo:(id)electionInfo reason:(int64_t)reason;
- (void)activateWithCompletionHandler:(id)handler;
- (void)addDiscoveryRecord:(id)record;
- (void)didFireBackoffTimer;
- (void)inquireForTransport:(id)transport;
- (void)invalidateWithReason:(int64_t)reason;
- (void)markInactive;
- (void)reconcileNode;
- (void)removeDiscoveryRecord:(id)record;
- (void)sendCommand:(id)command withCompletionHandler:(id)handler;
- (void)sendPing;
- (void)stopWithCompletionHandler:(id)handler;
- (void)transport:(id)transport didInvalidateWithError:(id)error;
- (void)transport:(id)transport didReceiveCommand:(id)command;
- (void)transport:(id)transport didReceiveError:(id)error forCommand:(id)command;
- (void)transport:(id)transport didReceiveRequest:(id)request callback:(id)callback;
- (void)transport:(id)transport didReceiveUnhandledRequest:(id)request;
- (void)transport:(id)transport didUpdateRemoteConstituent:(id)constituent to:(id)to;
- (void)transport:(id)transport shouldUpdateRemoteConstituent:(id)constituent to:(id)to forCommand:(id)command completionHandler:(id)handler;
- (void)transport:(id)transport willUpdateRemoteConstituent:(id)constituent to:(id)to;
- (void)updateElectionInfo:(id)info;
@end

@implementation CONodeController

- (CONodeController)initWithDiscoveryRecord:(id)record executionContext:(id)context
{
  recordCopy = record;
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = CONodeController;
  v9 = [(CONodeController *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalRecord, record);
    array = [MEMORY[0x277CBEB18] array];
    records = v10->_records;
    v10->_records = array;

    array2 = [MEMORY[0x277CBEB18] array];
    transports = v10->_transports;
    v10->_transports = array2;

    objc_storeStrong(&v10->_executionContext, context);
    v15 = [[CONode alloc] initWithRecord:recordCopy executionContext:contextCopy delegate:v10];
    node = v10->_node;
    v10->_node = v15;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sentElements = v10->_sentElements;
    v10->_sentElements = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    knownDiscoveryRecords = v10->_knownDiscoveryRecords;
    v10->_knownDiscoveryRecords = dictionary2;
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  executionContext = [(CONodeController *)self executionContext];
  constituentForMe = [executionContext constituentForMe];
  remote = [(CONodeController *)self remote];
  node = [(CONodeController *)self node];
  v10 = [v3 stringWithFormat:@"<%@: %p, /\n, %@->%@/\n, State: %ld/\n, Records:%@, Transports: %@>", v5, self, constituentForMe, remote, objc_msgSend(node, "state"), self->_records, self->_transports];

  return v10;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  executionContext = [(CONodeController *)self executionContext];
  meshControllerDescription = [executionContext meshControllerDescription];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"[m:%@] <%@: %p>", meshControllerDescription, v7, self];

  return v8;
}

- (id)remote
{
  node = [(CONodeController *)self node];
  remote = [node remote];

  return remote;
}

- (COTransportProtocol)preferredTransport
{
  preferredTransport = self->_preferredTransport;
  if (!preferredTransport)
  {
    computePreferredTransport = [(CONodeController *)self computePreferredTransport];
    v5 = self->_preferredTransport;
    self->_preferredTransport = computePreferredTransport;

    preferredTransport = self->_preferredTransport;
  }

  return preferredTransport;
}

- (BOOL)isLocalNodeController
{
  originalRecord = self->_originalRecord;
  v3 = objc_opt_class();
  v4 = objc_opt_class();

  return [v3 isSubclassOfClass:v4];
}

- (id)rapportTransport
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  transports = [(CONodeController *)self transports];
  v3 = [transports countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(transports);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;

          v5 = v9;
        }
      }

      v4 = [transports countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (CODiscoveryRecord)ipDiscoveryRecord
{
  ipDiscoveryRecord = self->_ipDiscoveryRecord;
  if (!ipDiscoveryRecord)
  {
    v4 = [CODiscoveryRecord discoveryRecordWithNodeController:self];
    v5 = self->_ipDiscoveryRecord;
    self->_ipDiscoveryRecord = v4;

    ipDiscoveryRecord = self->_ipDiscoveryRecord;
  }

  v6 = ipDiscoveryRecord;

  return v6;
}

- (id)electionSummaryDetails
{
  node = [(CONodeController *)self node];
  remote = [node remote];

  preferredTransport = [(CONodeController *)self preferredTransport];
  node2 = [(CONodeController *)self node];
  meConstituent = [node2 meConstituent];
  node3 = [(CONodeController *)self node];
  remote2 = [node3 remote];
  v10 = [meConstituent isEqual:remote2];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = preferredTransport;
    client = [v26 client];
    v12 = client;
    if (v10)
    {
      localDevice = [client localDevice];

      name = @"SELF";
    }

    else
    {
      localDevice = [client destinationDevice];

      name = [localDevice name];
    }

    identifier = [localDevice identifier];
    node4 = [(CONodeController *)self node];
    connectionType = [node4 connectionType];

    if (connectionType > 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = off_278E191D0[connectionType];
    }

    node5 = [(CONodeController *)self node];
    discoveryType = [node5 discoveryType];

    v22 = 67;
    if ((discoveryType & 2) == 0)
    {
      v22 = 99;
    }

    v23 = 82;
    if ((discoveryType & 1) == 0)
    {
      v23 = 114;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c", v23, v22];
  }

  else
  {
    v15 = 0;
    v16 = 0;
    name = 0;
    identifier = 0;
  }

  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"[COMeshController : %p] %@ [Name] - %@ [Rapport ID] - %@ [Conn] - %@ [Disc] - %@", self, remote, name, identifier, v16, v15];

  return v24;
}

- (id)nodeAfterReconciliation
{
  node = [(CONodeController *)self node];
  homeKitIdentifier = [node HomeKitIdentifier];

  if (!homeKitIdentifier)
  {
    [(CONodeController *)self reconcileNode];
  }

  return node;
}

- (void)reconcileNode
{
  node = [(CONodeController *)self node];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  records = [(CONodeController *)selfCopy records];
  v6 = [records copy];

  objc_sync_exit(selfCopy);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__CONodeController_reconcileNode__block_invoke;
  v8[3] = &unk_278E18F70;
  v9 = node;
  v7 = node;
  [v6 enumerateObjectsUsingBlock:v8];
}

uint64_t __33__CONodeController_reconcileNode__block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = [a2 HomeKitIdentifier];
  v7 = v6;
  *a4 = v6 != 0;
  if (v6)
  {
    v9 = v6;
    v6 = [*(a1 + 32) setHomeKitIdentifier:v6];
    v7 = v9;
  }

  return MEMORY[0x2821F96F8](v6, v7);
}

- (void)activateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  executionContext = [(CONodeController *)self executionContext];
  [executionContext assertDispatchQueue];

  preferredTransport = [(CONodeController *)self preferredTransport];

  if (preferredTransport)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    records = [(CONodeController *)selfCopy records];
    originalRecord = [(CONodeController *)selfCopy originalRecord];
    [records addObject:originalRecord];

    objc_sync_exit(selfCopy);
    originalRecord2 = [(CONodeController *)selfCopy originalRecord];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__CONodeController_activateWithCompletionHandler___block_invoke;
    v11[3] = &unk_278E18F98;
    v12 = handlerCopy;
    [(CONodeController *)selfCopy _createAndActivateTransportForRecord:originalRecord2 withCompletionHandler:v11];
  }
}

- (void)_createAndActivateTransportForRecord:(id)record withCompletionHandler:(id)handler
{
  v56 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  handlerCopy = handler;
  executionContext = [(CONodeController *)self executionContext];
  v8 = [recordCopy newTransportWithExecutionContext:executionContext];

  objc_initWeak(&location, v8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(from, self);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __79__CONodeController__createAndActivateTransportForRecord_withCompletionHandler___block_invoke;
    v46[3] = &unk_278E158B0;
    objc_copyWeak(&v47, from);
    objc_copyWeak(&v48, &location);
    [v8 setClientIsUsingOnDemandConnection:v46];
    objc_destroyWeak(&v48);
    objc_destroyWeak(&v47);
    objc_destroyWeak(from);
  }

  v9 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CONodeController *)self shortDescription];
    *from = 138543874;
    *&from[4] = shortDescription;
    v52 = 2112;
    v53 = v8;
    v54 = 2112;
    v55 = recordCopy;
    _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ created new transport %@ with record %@", from, 0x20u);
  }

  [v8 setDelegate:self];
  transports = [(CONodeController *)self transports];
  [transports addObject:v8];

  computePreferredTransport = [(CONodeController *)self computePreferredTransport];
  preferredTransport = self->_preferredTransport;
  self->_preferredTransport = computePreferredTransport;

  v14 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription2 = [(CONodeController *)self shortDescription];
    v16 = self->_preferredTransport;
    *from = 138543874;
    *&from[4] = shortDescription2;
    v52 = 2048;
    v53 = v8;
    v54 = 2048;
    v55 = v16;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ recomputing preferred transport after addition of %p. Preferred transport = %p", from, 0x20u);
  }

  originalRecord = [(CONodeController *)self originalRecord];
  [(CONodeController *)self _adjustNodeDiscoveryInformationUsingRecord:originalRecord];

  objc_initWeak(from, self);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __79__CONodeController__createAndActivateTransportForRecord_withCompletionHandler___block_invoke_64;
  v41[3] = &unk_278E18FE8;
  objc_copyWeak(&v44, from);
  objc_copyWeak(&v45, &location);
  v30 = v8;
  v42 = v30;
  v28 = handlerCopy;
  v43 = v28;
  v18 = MEMORY[0x245D5FF10](v41);
  acceptableCommands = [(CONodeController *)self acceptableCommands];
  self->_expectedRegisteredCommandCount = [acceptableCommands count];

  if (!self->_expectedRegisteredCommandCount)
  {
    v18[2](v18);
    goto LABEL_22;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  acceptableCommands2 = [(CONodeController *)self acceptableCommands];
  v21 = [acceptableCommands2 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (!v21)
  {
    goto LABEL_20;
  }

  v22 = *v38;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v38 != v22)
      {
        objc_enumerationMutation(acceptableCommands2);
      }

      v24 = *(*(&v37 + 1) + 8 * i);
      if ([v24 isSubclassOfClass:objc_opt_class()])
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __79__CONodeController__createAndActivateTransportForRecord_withCompletionHandler___block_invoke_70;
        v34[3] = &unk_278E19010;
        objc_copyWeak(v36, from);
        v36[1] = v24;
        v35 = v18;
        [v30 registerRequestForClass:v24 withCompletion:v34];
        v25 = &v35;
        v26 = v36;
      }

      else
      {
        if (![v24 isSubclassOfClass:objc_opt_class()])
        {
          continue;
        }

        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __79__CONodeController__createAndActivateTransportForRecord_withCompletionHandler___block_invoke_73;
        v31[3] = &unk_278E19010;
        objc_copyWeak(v33, from);
        v33[1] = v24;
        v32 = v18;
        [v30 registerCommandForClass:v24 withCompletion:v31];
        v25 = &v32;
        v26 = v33;
      }

      objc_destroyWeak(v26);
    }

    v21 = [acceptableCommands2 countByEnumeratingWithState:&v37 objects:v50 count:16];
  }

  while (v21);
LABEL_20:

LABEL_22:
  objc_destroyWeak(&v45);
  objc_destroyWeak(&v44);
  objc_destroyWeak(from);
  objc_destroyWeak(&location);

  v27 = *MEMORY[0x277D85DE8];
}

void __79__CONodeController__createAndActivateTransportForRecord_withCompletionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = [WeakRetained executionContext];
    [v5 assertDispatchQueue];

    v6 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [WeakRetained shortDescription];
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ is using an on-demand connection for transport %@", &v11, 0x16u);
    }

    v8 = [WeakRetained node];
    [v8 setConnectionType:2];

    v9 = [WeakRetained node];
    [v9 setDiscoveryType:2];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __79__CONodeController__createAndActivateTransportForRecord_withCompletionHandler___block_invoke_64(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = [WeakRetained executionContext];
    [v5 assertDispatchQueue];

    [WeakRetained setHandlersRegistered:1];
    v6 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [WeakRetained shortDescription];
      v8 = *(a1 + 32);
      *buf = 138543618;
      v15 = v7;
      v16 = 2048;
      v17 = v8;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Handlers registered. Activating transport %p", buf, 0x16u);
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __79__CONodeController__createAndActivateTransportForRecord_withCompletionHandler___block_invoke_65;
    v10[3] = &unk_278E18FC0;
    objc_copyWeak(&v12, (a1 + 48));
    objc_copyWeak(&v13, (a1 + 56));
    v11 = *(a1 + 40);
    [v4 activateWithCompletion:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v12);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __79__CONodeController__createAndActivateTransportForRecord_withCompletionHandler___block_invoke_65(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = v5;
  if (WeakRetained && v5)
  {
    v7 = [WeakRetained executionContext];
    [v7 assertDispatchQueue];

    if (v3)
    {
      v8 = COCoreLogForCategory(16);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __79__CONodeController__createAndActivateTransportForRecord_withCompletionHandler___block_invoke_65_cold_1();
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      WeakRetained[8] = 1;
      v9 = COCoreLogForCategory(16);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [WeakRetained shortDescription];
        v13 = 138543618;
        v14 = v10;
        v15 = 2048;
        v16 = v6;
        _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully activated transport %p", &v13, 0x16u);
      }

      (*(*(a1 + 32) + 16))();
      v11 = [WeakRetained delegate];
      if (objc_opt_respondsToSelector())
      {
        [v11 nodeController:WeakRetained didAddTransport:v6];
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __79__CONodeController__createAndActivateTransportForRecord_withCompletionHandler___block_invoke_70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained executionContext];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __79__CONodeController__createAndActivateTransportForRecord_withCompletionHandler___block_invoke_2;
    v6[3] = &unk_278E164A0;
    v5 = *(a1 + 48);
    v6[4] = v3;
    v8 = v5;
    v7 = *(a1 + 32);
    [v4 dispatchAsync:v6];
  }
}

void __79__CONodeController__createAndActivateTransportForRecord_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shortDescription];
    v4 = *(a1 + 48);
    v6 = 138543618;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully registered request %@", &v6, 0x16u);
  }

  if (!--*(*(a1 + 32) + 16))
  {
    (*(*(a1 + 40) + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __79__CONodeController__createAndActivateTransportForRecord_withCompletionHandler___block_invoke_73(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained executionContext];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __79__CONodeController__createAndActivateTransportForRecord_withCompletionHandler___block_invoke_2_74;
    v6[3] = &unk_278E164A0;
    v5 = *(a1 + 48);
    v6[4] = v3;
    v8 = v5;
    v7 = *(a1 + 32);
    [v4 dispatchAsync:v6];
  }
}

void __79__CONodeController__createAndActivateTransportForRecord_withCompletionHandler___block_invoke_2_74(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shortDescription];
    v4 = *(a1 + 48);
    v6 = 138543618;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully registered command %@", &v6, 0x16u);
  }

  if (!--*(*(a1 + 32) + 16))
  {
    (*(*(a1 + 40) + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)invalidateWithReason:(int64_t)reason
{
  executionContext = [(CONodeController *)self executionContext];
  [executionContext assertDispatchQueue];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  records = selfCopy->_records;
  selfCopy->_records = 0;

  objc_sync_exit(selfCopy);
  transports = selfCopy->_transports;
  selfCopy->_transports = 0;

  node = [(CONodeController *)selfCopy node];
  lastElectionInfoSent = [node lastElectionInfoSent];
  node2 = [(CONodeController *)selfCopy node];
  lastElectionInfoReceived = [node2 lastElectionInfoReceived];
  [(CONodeController *)selfCopy _updateNodeState:4 currentElectionInfo:lastElectionInfoSent incomingElectionInfo:lastElectionInfoReceived reason:reason];
}

- (void)stopWithCompletionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  executionContext = [(CONodeController *)self executionContext];
  [executionContext assertDispatchQueue];

  node = [(CONodeController *)self node];
  lastElectionInfoSent = [node lastElectionInfoSent];
  node2 = [(CONodeController *)self node];
  lastElectionInfoReceived = [node2 lastElectionInfoReceived];
  [(CONodeController *)self _updateNodeState:3 currentElectionInfo:lastElectionInfoSent incomingElectionInfo:lastElectionInfoReceived reason:15];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  acceptableCommands = [(CONodeController *)self acceptableCommands];
  v11 = [acceptableCommands countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = *v29;
  do
  {
    v13 = 0;
    do
    {
      if (*v29 != v12)
      {
        objc_enumerationMutation(acceptableCommands);
      }

      v14 = *(*(&v28 + 1) + 8 * v13);
      if ([v14 isSubclassOfClass:objc_opt_class()])
      {
        preferredTransport = [(CONodeController *)self preferredTransport];
        [preferredTransport deregisterRequestForClass:v14];
      }

      else
      {
        if (![v14 isSubclassOfClass:objc_opt_class()])
        {
          goto LABEL_11;
        }

        preferredTransport = [(CONodeController *)self preferredTransport];
        [preferredTransport deregisterCommandForClass:v14];
      }

LABEL_11:
      ++v13;
    }

    while (v11 != v13);
    v11 = [acceptableCommands countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v11);
LABEL_13:

  v16 = objc_alloc_init(COMeshWithdrawalCommand);
  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __46__CONodeController_stopWithCompletionHandler___block_invoke;
  v24[3] = &unk_278E16290;
  objc_copyWeak(&v26, &location);
  v17 = handlerCopy;
  v25 = v17;
  v18 = MEMORY[0x245D5FF10](v24);
  preferredTransport2 = [(CONodeController *)self preferredTransport];

  if (preferredTransport2)
  {
    preferredTransport3 = [(CONodeController *)self preferredTransport];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __46__CONodeController_stopWithCompletionHandler___block_invoke_2;
    v22[3] = &unk_278E17038;
    v23 = v18;
    [preferredTransport3 sendCommand:v16 withCompletionHandler:v22];
  }

  else
  {
    v18[2](v18);
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  v21 = *MEMORY[0x277D85DE8];
}

void __46__CONodeController_stopWithCompletionHandler___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained executionContext];
    [v4 assertDispatchQueue];

    v5 = [v3 node];
    v6 = [v5 lastElectionInfoSent];
    v7 = [v3 node];
    v8 = [v7 lastElectionInfoReceived];
    [v3 _updateNodeState:4 currentElectionInfo:v6 incomingElectionInfo:v8 reason:16];

    [v3 setPreferredTransport:0];
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = v3[10];
    v3[10] = v9;

    v11 = v3;
    objc_sync_enter(v11);
    v12 = [MEMORY[0x277CBEB18] array];
    v13 = v11[9];
    v11[9] = v12;

    objc_sync_exit(v11);
    v14 = [v11 transports];
    v15 = [v14 copy];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v17)
    {
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v21 + 1) + 8 * v19++) invalidateWithError:{0, v21}];
        }

        while (v17 != v19);
        v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v17);
    }

    (*(*(a1 + 32) + 16))();
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)addDiscoveryRecord:(id)record
{
  v43 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  executionContext = [(CONodeController *)self executionContext];
  [executionContext assertDispatchQueue];

  node = [(CONodeController *)self node];
  [node discoveryRecordAdded:recordCopy];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  records = [(CONodeController *)selfCopy records];
  objc_sync_exit(selfCopy);

  if ([recordCopy conformsToProtocol:&unk_2857CCAF8])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    records3 = records;
    v10 = [records3 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v10)
    {
      v11 = *v32;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(records3);
          }

          if ([*(*(&v31 + 1) + 8 * v12) conformsToProtocol:&unk_2857CCAF8])
          {

            goto LABEL_31;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [records3 countByEnumeratingWithState:&v31 objects:v42 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  if ([recordCopy conformsToProtocol:&unk_2857CBE98])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    records3 = records;
    v13 = [records3 countByEnumeratingWithState:&v27 objects:v41 count:16];
    if (v13)
    {
      v14 = *v28;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(records3);
          }

          if ([*(*(&v27 + 1) + 8 * v15) conformsToProtocol:&unk_2857CBE98])
          {

            goto LABEL_31;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [records3 countByEnumeratingWithState:&v27 objects:v41 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  v16 = selfCopy;
  objc_sync_enter(v16);
  records2 = [(CONodeController *)v16 records];
  [records2 addObject:recordCopy];

  records3 = [(CONodeController *)v16 records];

  objc_sync_exit(v16);
  v18 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CONodeController *)v16 shortDescription];
    *buf = 138543874;
    v36 = shortDescription;
    v37 = 2112;
    v38 = recordCopy;
    v39 = 2112;
    v40 = records3;
    _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding discovery record %@ to our list. New list = %@", buf, 0x20u);
  }

  if ([recordCopy conformsToProtocol:&unk_2857CCAF8] && (-[CONodeController rapportTransport](v16, "rapportTransport"), v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
  {
    v21 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription2 = [(CONodeController *)v16 shortDescription];
      *buf = 138543618;
      v36 = shortDescription2;
      v37 = 2112;
      v38 = recordCopy;
      _os_log_impl(&dword_244378000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ rapport transport already exists. Ignoring record %@.", buf, 0x16u);
    }
  }

  else
  {
    objc_initWeak(buf, v16);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __39__CONodeController_addDiscoveryRecord___block_invoke;
    v24[3] = &unk_278E19038;
    objc_copyWeak(&v26, buf);
    v25 = recordCopy;
    [(CONodeController *)v16 _createAndActivateTransportForRecord:v25 withCompletionHandler:v24];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

LABEL_31:

  v23 = *MEMORY[0x277D85DE8];
}

void __39__CONodeController_addDiscoveryRecord___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained executionContext];
    [v9 assertDispatchQueue];

    if (v6)
    {
      v10 = COCoreLogForCategory(16);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __39__CONodeController_addDiscoveryRecord___block_invoke_cold_1(v8, a1);
      }

      v11 = v8;
      objc_sync_enter(v11);
      v12 = [v11 records];
      [v12 removeObject:*(a1 + 32)];

      objc_sync_exit(v11);
    }
  }
}

- (void)removeDiscoveryRecord:(id)record
{
  v33 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  executionContext = [(CONodeController *)self executionContext];
  [executionContext assertDispatchQueue];

  v6 = &selRef_state;
  v7 = [recordCopy conformsToProtocol:&unk_2857CCAF8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(CONodeController *)self transports];
  v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    selfCopy = self;
    v10 = *v29;
    while (2)
    {
      v11 = 0;
      v26 = v9;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        record = [v12 record];
        if ((v7 & [record conformsToProtocol:v6[458]]) == 1)
        {
          [recordCopy IDSIdentifier];
          v14 = v10;
          v15 = v7;
          v16 = recordCopy;
          v18 = v17 = v6;
          iDSIdentifier = [record IDSIdentifier];
          v20 = [v18 isEqualToString:iDSIdentifier];

          v6 = v17;
          recordCopy = v16;
          v7 = v15;
          v10 = v14;
          v9 = v26;
          if (v20)
          {
            goto LABEL_13;
          }
        }

        else if ([recordCopy isEqual:record])
        {
LABEL_13:
          v21 = v12;

          goto LABEL_14;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v21 = 0;
LABEL_14:
    self = selfCopy;
  }

  else
  {
    v21 = 0;
  }

  node = [(CONodeController *)self node];
  [node discoveryRecordRemoved:recordCopy];

  v23 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2857B6328 code:-5001 userInfo:0];
  [v21 invalidateWithError:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)sendCommand:(id)command withCompletionHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  executionContext = [(CONodeController *)self executionContext];
  [executionContext assertDispatchQueue];

  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  sentElements = [(CONodeController *)self sentElements];
  v10 = MEMORY[0x245D5FF10](handlerCopy);
  [sentElements setObject:v10 forKey:commandCopy];

  objc_initWeak(&location, self);
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
  {
    preferredTransport = [(CONodeController *)self preferredTransport];
    command = [commandCopy command];
    v13 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__CONodeController_sendCommand_withCompletionHandler___block_invoke;
    v17[3] = &unk_278E19060;
    v14 = &v18;
    objc_copyWeak(&v18, &location);
    v17[4] = commandCopy;
    [preferredTransport sendRequest:command withResponseHandler:v17];
  }

  else
  {
    preferredTransport = [(CONodeController *)self preferredTransport];
    command = [commandCopy command];
    v13 = v15;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__CONodeController_sendCommand_withCompletionHandler___block_invoke_133;
    v15[3] = &unk_278E17450;
    v14 = &v16;
    objc_copyWeak(&v16, &location);
    v15[4] = commandCopy;
    [preferredTransport sendCommand:command withCompletionHandler:v15];
  }

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __54__CONodeController_sendCommand_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_14;
  }

  if (v6)
  {
    v9 = [COMeshNode alloc];
    v10 = [WeakRetained node];
    v11 = [(COMeshNode *)v9 initWithNode:v10];

    [v6 _setSender:v11];
  }

  if (v7)
  {
    v12 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v22 = [WeakRetained shortDescription];
      v23 = [*(a1 + 32) command];
      v24 = 138543874;
      v25 = v22;
      v26 = 2112;
      v27 = v23;
      v28 = 2112;
      v29 = v7;
      _os_log_error_impl(&dword_244378000, v12, OS_LOG_TYPE_ERROR, "%{public}@ request %@ failed with error %@", &v24, 0x20u);
    }

    v13 = [v7 domain];
    if (![v13 isEqualToString:@"COMeshNodeErrorDomain"])
    {
      goto LABEL_10;
    }

    v14 = [v7 code];

    if (v14 == -4000)
    {
      v13 = [WeakRetained node];
      v15 = [v13 lastElectionInfoSent];
      v16 = [WeakRetained node];
      v17 = [v16 lastElectionInfoReceived];
      [WeakRetained _updateNodeState:2 currentElectionInfo:v15 incomingElectionInfo:v17 reason:14];

LABEL_10:
    }
  }

  v18 = [WeakRetained sentElements];
  v19 = [v18 objectForKey:*(a1 + 32)];

  if (v19)
  {
    (v19)[2](v19, *(a1 + 32), v6, v7);
  }

  v20 = [WeakRetained sentElements];
  [v20 removeObjectForKey:*(a1 + 32)];

LABEL_14:
  v21 = *MEMORY[0x277D85DE8];
}

void __54__CONodeController_sendCommand_withCompletionHandler___block_invoke_133(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = COCoreLogForCategory(16);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v10 = [WeakRetained shortDescription];
        v11 = [*(a1 + 32) command];
        v12 = 138543874;
        v13 = v10;
        v14 = 2112;
        v15 = v11;
        v16 = 2112;
        v17 = v3;
        _os_log_error_impl(&dword_244378000, v5, OS_LOG_TYPE_ERROR, "%{public}@ command %@ failed with error %@", &v12, 0x20u);
      }
    }

    v6 = [WeakRetained sentElements];
    v7 = [v6 objectForKey:*(a1 + 32)];

    if (v7)
    {
      (v7)[2](v7, *(a1 + 32), 0, v3);
    }

    v8 = [WeakRetained sentElements];
    [v8 removeObjectForKey:*(a1 + 32)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sendPing
{
  executionContext = [(CONodeController *)self executionContext];
  [executionContext assertDispatchQueue];

  preferredTransport = [(CONodeController *)self preferredTransport];
  [(CONodeController *)self _sendPingUsingTransport:preferredTransport];
}

- (void)markInactive
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CONodeController *)self shortDescription];
    v8 = 138543362;
    v9 = shortDescription;
    _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ clearing remote constituent identifier to nil", &v8, 0xCu);
  }

  node = [(CONodeController *)self node];
  [node setRemote:0];

  preferredTransport = [(CONodeController *)self preferredTransport];
  [preferredTransport setRemote:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)computePreferredTransport
{
  v20 = *MEMORY[0x277D85DE8];
  executionContext = [(CONodeController *)self executionContext];
  [executionContext assertDispatchQueue];

  transports = [(CONodeController *)self transports];
  firstObject = [transports count];

  if (firstObject)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    transports2 = [(CONodeController *)self transports];
    v7 = [transports2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(transports2);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [transports2 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      firstObject = v11;

      if (firstObject)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:
    }

    transports3 = [(CONodeController *)self transports];
    firstObject = [transports3 firstObject];
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (void)updateElectionInfo:(id)info
{
  v37 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  executionContext = [(CONodeController *)self executionContext];
  [executionContext assertDispatchQueue];

  executionContext2 = [(CONodeController *)self executionContext];
  leaderElectionConfigured = [executionContext2 leaderElectionConfigured];

  if (leaderElectionConfigured)
  {
    node = [(CONodeController *)self node];
    state = [node state];

    if (self->_activated && (state - 5) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      _nodeControllerStateFromNodeState = [(CONodeController *)self _nodeControllerStateFromNodeState];
      if (_nodeControllerStateFromNodeState > 4)
      {
        if (_nodeControllerStateFromNodeState == 5)
        {
          node2 = [(CONodeController *)self node];
          state2 = [node2 state];

          if (state2 == 5)
          {
            node3 = [(CONodeController *)self node];
            lastElectionInfoSent = [node3 lastElectionInfoSent];
            v26 = [infoCopy isEqual:lastElectionInfoSent];

            if ((v26 & 1) == 0)
            {
              node4 = [(CONodeController *)self node];
              backoffResponse = [node4 backoffResponse];

              v28 = COCoreLogForCategory(16);
              v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
              if (backoffResponse)
              {
                if (v29)
                {
                  shortDescription = [(CONodeController *)self shortDescription];
                  v33 = 138543618;
                  v34 = shortDescription;
                  v35 = 2048;
                  generation = [infoCopy generation];
                  _os_log_impl(&dword_244378000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ delayed BALLOT (%llu) response since our ballot or generation has changed", &v33, 0x16u);
                }

                preferredTransport = [(CONodeController *)self _ballotResponseWithElectionInfo:infoCopy];
                (backoffResponse)[2](backoffResponse, preferredTransport, 0);
                node5 = [(CONodeController *)self node];
                [node5 setBackoffResponse:0];
              }

              else
              {
                if (v29)
                {
                  shortDescription2 = [(CONodeController *)self shortDescription];
                  v33 = 138543618;
                  v34 = shortDescription2;
                  v35 = 2048;
                  generation = [infoCopy generation];
                  _os_log_impl(&dword_244378000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ our ballot or generation has changed. Issuing a new election with generation (%llu)", &v33, 0x16u);
                }

                preferredTransport = [(CONodeController *)self _electionRequestWithElectionInfo:infoCopy];
                node5 = [(CONodeController *)self preferredTransport];
                [(CONodeController *)self _sendElectionRequest:preferredTransport usingTransport:node5];
              }

              goto LABEL_16;
            }
          }
        }

        else if (_nodeControllerStateFromNodeState == 6)
        {
          node6 = [(CONodeController *)self node];
          lastElectionInfoSent2 = [node6 lastElectionInfoSent];
          v18 = [infoCopy hasSameGenerationAndLeader:lastElectionInfoSent2];

          if ((v18 & 1) == 0)
          {
            v19 = COCoreLogForCategory(16);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              shortDescription3 = [(CONodeController *)self shortDescription];
              v33 = 138543618;
              v34 = shortDescription3;
              v35 = 2048;
              generation = [infoCopy generation];
              _os_log_impl(&dword_244378000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ starting ELECTION (%llu)", &v33, 0x16u);
            }

            backoffResponse = [(CONodeController *)self _electionRequestWithElectionInfo:infoCopy];
            preferredTransport = [(CONodeController *)self preferredTransport];
            [(CONodeController *)self _sendElectionRequest:backoffResponse usingTransport:preferredTransport];
            goto LABEL_16;
          }
        }
      }

      else
      {
        if (!_nodeControllerStateFromNodeState)
        {
          backoffResponse = [(CONodeController *)self _electionRequestWithElectionInfo:infoCopy];
          preferredTransport = [(CONodeController *)self preferredTransport];
          selfCopy2 = self;
          v14 = backoffResponse;
          v15 = 1;
          goto LABEL_15;
        }

        if (_nodeControllerStateFromNodeState == 2)
        {
          backoffResponse = [(CONodeController *)self _electionRequestWithElectionInfo:infoCopy];
          preferredTransport = [(CONodeController *)self preferredTransport];
          selfCopy2 = self;
          v14 = backoffResponse;
          v15 = 2;
LABEL_15:
          [(CONodeController *)selfCopy2 _sendProbeRequest:v14 withState:v15 usingTransport:preferredTransport];
LABEL_16:
        }
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)inquireForTransport:(id)transport
{
  v18 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  record = [transportCopy record];
  requiresInquiry = [record requiresInquiry];

  v7 = COCoreLogForCategory(16);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (requiresInquiry)
  {
    if (v8)
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ attempting to inquire", buf, 0xCu);
    }

    v9 = -[_COMeshControllerPing initWithTimeout:listeningPort:]([_COMeshControllerPing alloc], "initWithTimeout:listeningPort:", [transportCopy listeningPort], 0.0);
    if ([(CONodeController *)self state]!= 6)
    {
      [(CONodeController *)self _updateNodeState:1 currentElectionInfo:0 incomingElectionInfo:0 reason:1];
    }

    objc_initWeak(buf, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __40__CONodeController_inquireForTransport___block_invoke;
    v12[3] = &unk_278E19088;
    objc_copyWeak(&v13, buf);
    [transportCopy sendRequest:v9 withResponseHandler:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v8)
    {
      shortDescription = [(CONodeController *)self shortDescription];
      *buf = 138543618;
      selfCopy = shortDescription;
      v16 = 2112;
      v17 = transportCopy;
      _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ transport %@ does not require inquiry. Moving to processing", buf, 0x16u);
    }

    [(CONodeController *)self _updateNodeState:14 currentElectionInfo:0 incomingElectionInfo:0 reason:2];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __40__CONodeController_inquireForTransport___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = COCoreLogForCategory(16);
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __40__CONodeController_inquireForTransport___block_invoke_cold_1();
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [WeakRetained shortDescription];
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Inquiry successful", &v11, 0xCu);
      }

      [WeakRetained _updateNodeState:14 currentElectionInfo:0 incomingElectionInfo:0 reason:2];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sendProbeRequest:(id)request withState:(int64_t)state usingTransport:(id)transport
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  transportCopy = transport;
  if (self->_activated)
  {
    node = [(CONodeController *)self node];
    hasOutstandingProbe = [node hasOutstandingProbe];

    if ((hasOutstandingProbe & 1) == 0)
    {
      null = [MEMORY[0x277CBEB68] null];
      [transportCopy isEqual:null];

      v13 = COCoreLogForCategory(16);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription = [(CONodeController *)self shortDescription];
        *buf = 138543618;
        v25 = shortDescription;
        v26 = 2112;
        v27 = requestCopy;
        _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ probing with election request %@", buf, 0x16u);
      }

      v15 = [[COElectionInfo alloc] initWithCommand:requestCopy];
      node2 = [(CONodeController *)self node];
      lastElectionInfoReceived = [node2 lastElectionInfoReceived];
      [(CONodeController *)self _updateNodeState:state currentElectionInfo:v15 incomingElectionInfo:lastElectionInfoReceived reason:0];

      node3 = [(CONodeController *)self node];
      [node3 setLastElectionInfoSent:v15];

      node4 = [(CONodeController *)self node];
      [node4 setOutstandingProbe:1];

      objc_initWeak(buf, self);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __63__CONodeController__sendProbeRequest_withState_usingTransport___block_invoke;
      v21[3] = &unk_278E19060;
      objc_copyWeak(&v23, buf);
      v22 = transportCopy;
      [v22 sendRequest:requestCopy withResponseHandler:v21];

      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __63__CONodeController__sendProbeRequest_withState_usingTransport___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained node];
    [v11 setOutstandingProbe:0];

    [v10 _handleResponseToCoreRequest:v12 response:v7 error:v8 usingTransport:*(a1 + 32)];
  }
}

- (void)_sendElectionRequest:(id)request usingTransport:(id)transport
{
  requestCopy = request;
  transportCopy = transport;
  if (self->_activated)
  {
    node = [(CONodeController *)self node];
    hasOutstandingRequest = [node hasOutstandingRequest];

    if ((hasOutstandingRequest & 1) == 0)
    {
      v10 = [[COElectionInfo alloc] initWithCommand:requestCopy];
      node2 = [(CONodeController *)self node];
      lastElectionInfoReceived = [node2 lastElectionInfoReceived];
      [(CONodeController *)self _updateNodeState:6 currentElectionInfo:v10 incomingElectionInfo:lastElectionInfoReceived reason:10];

      v13 = [[COElectionInfo alloc] initWithCommand:requestCopy];
      node3 = [(CONodeController *)self node];
      [node3 setLastElectionInfoSent:v13];

      objc_initWeak(&location, self);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __56__CONodeController__sendElectionRequest_usingTransport___block_invoke;
      v15[3] = &unk_278E19060;
      objc_copyWeak(&v17, &location);
      v16 = transportCopy;
      [v16 sendRequest:requestCopy withResponseHandler:v15];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

void __56__CONodeController__sendElectionRequest_usingTransport___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleResponseToCoreRequest:v11 response:v7 error:v8 usingTransport:*(a1 + 32)];
  }
}

- (void)_sendPingUsingTransport:(id)transport
{
  transportCopy = transport;
  v5 = transportCopy;
  if (self->_activated)
  {
    if ([transportCopy conformsToProtocol:&unk_2857CB1B0])
    {
      node = [(CONodeController *)self node];
      hasPendingPing = [node hasPendingPing];

      if ((hasPendingPing & 1) == 0)
      {
        node2 = [(CONodeController *)self node];
        [node2 setPendingPing:1];

        objc_initWeak(&location, self);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __44__CONodeController__sendPingUsingTransport___block_invoke;
        v10[3] = &unk_278E19060;
        objc_copyWeak(&v12, &location);
        v11 = v5;
        [v11 pingWithCallback:v10];

        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      v9 = COCoreLogForCategory(16);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(CONodeController *)self _sendPingUsingTransport:v5, v9];
      }
    }
  }
}

void __44__CONodeController__sendPingUsingTransport___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained node];
    [v11 setPendingPing:0];

    [v10 _handleResponseToCoreRequest:v12 response:v7 error:v8 usingTransport:*(a1 + 32)];
  }
}

- (void)_sendBallotResponse:(id)response usingTransport:(id)transport callback:(id)callback
{
  if (self->_activated)
  {
    callbackCopy = callback;
    responseCopy = response;
    v14 = [[COElectionInfo alloc] initWithCommand:responseCopy];
    node = [(CONodeController *)self node];
    lastElectionInfoReceived = [node lastElectionInfoReceived];
    [(CONodeController *)self _updateNodeState:7 currentElectionInfo:v14 incomingElectionInfo:lastElectionInfoReceived reason:10];

    v12 = [[COElectionInfo alloc] initWithCommand:responseCopy];
    node2 = [(CONodeController *)self node];
    [node2 setLastElectionInfoSent:v12];

    callbackCopy[2](callbackCopy, responseCopy, 0);
  }
}

- (void)_sendVoteRequest:(id)request usingTransport:(id)transport
{
  requestCopy = request;
  transportCopy = transport;
  if (self->_activated)
  {
    node = [(CONodeController *)self node];
    hasOutstandingRequest = [node hasOutstandingRequest];

    if ((hasOutstandingRequest & 1) == 0)
    {
      v10 = [[COElectionInfo alloc] initWithCommand:requestCopy];
      node2 = [(CONodeController *)self node];
      lastElectionInfoReceived = [node2 lastElectionInfoReceived];
      [(CONodeController *)self _updateNodeState:8 currentElectionInfo:v10 incomingElectionInfo:lastElectionInfoReceived reason:10];

      v13 = [[COElectionInfo alloc] initWithCommand:requestCopy];
      node3 = [(CONodeController *)self node];
      [node3 setLastElectionInfoSent:v13];

      objc_initWeak(&location, self);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __52__CONodeController__sendVoteRequest_usingTransport___block_invoke;
      v15[3] = &unk_278E19060;
      objc_copyWeak(&v17, &location);
      v16 = transportCopy;
      [v16 sendRequest:requestCopy withResponseHandler:v15];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

void __52__CONodeController__sendVoteRequest_usingTransport___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleResponseToCoreRequest:v11 response:v7 error:v8 usingTransport:*(a1 + 32)];
  }
}

- (void)_sendAcceptResponse:(id)response usingTransport:(id)transport callback:(id)callback
{
  if (self->_activated)
  {
    callbackCopy = callback;
    responseCopy = response;
    v14 = [[COElectionInfo alloc] initWithCommand:responseCopy];
    node = [(CONodeController *)self node];
    lastElectionInfoReceived = [node lastElectionInfoReceived];
    [(CONodeController *)self _updateNodeState:9 currentElectionInfo:v14 incomingElectionInfo:lastElectionInfoReceived reason:10];

    v12 = [[COElectionInfo alloc] initWithCommand:responseCopy];
    node2 = [(CONodeController *)self node];
    [node2 setLastElectionInfoSent:v12];

    callbackCopy[2](callbackCopy, responseCopy, 0);
  }
}

- (void)_handleElectionRequest:(id)request fromTransport:(id)transport callback:(id)callback
{
  v55 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  transportCopy = transport;
  callbackCopy = callback;
  if (self->_activated)
  {
    v11 = [[COElectionInfo alloc] initWithCommand:requestCopy];
    node = [(CONodeController *)self node];
    lastElectionInfoReceived = [node lastElectionInfoReceived];

    node2 = [(CONodeController *)self node];
    [node2 setLastElectionInfoReceived:v11];

    ballot = [requestCopy ballot];
    [(CONodeController *)self _updateKnownDiscovery:ballot];

    remote = [transportCopy remote];
    generation = [(COElectionInfo *)v11 generation];
    variant = [requestCopy variant];
    ballot2 = [(COElectionInfo *)v11 ballot];
    v17 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(CONodeController *)self shortDescription];
      software = [remote software];
      rapportTransactionID = [requestCopy rapportTransactionID];
      candidates = [ballot2 candidates];
      v24 = [candidates count];
      candidates2 = [ballot2 candidates];
      firstObject = [candidates2 firstObject];

      *buf = 138545154;
      v40 = shortDescription;
      v41 = 2048;
      v42 = generation;
      v43 = 1024;
      v44 = variant;
      v45 = 2048;
      v46 = transportCopy;
      v47 = 2114;
      v48 = software;
      v49 = 2048;
      v50 = rapportTransactionID;
      v51 = 2048;
      v52 = v24;
      v53 = 2114;
      v54 = firstObject;
      _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ received ELECTION (%llu:%d) from %p (%{public}@) XID 0x%llX - (%lu, %{public}@)", buf, 0x4Eu);
    }

    objc_initWeak(buf, self);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __66__CONodeController__handleElectionRequest_fromTransport_callback___block_invoke;
    v32[3] = &unk_278E190B0;
    objc_copyWeak(&v38, buf);
    v20 = v11;
    v33 = v20;
    v21 = remote;
    v34 = v21;
    v22 = lastElectionInfoReceived;
    v35 = v22;
    v36 = transportCopy;
    v37 = callbackCopy;
    [(CONodeController *)self _updateDelegateWithBallotCommand:requestCopy withCompletionHandler:v32];

    objc_destroyWeak(&v38);
    objc_destroyWeak(buf);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __66__CONodeController__handleElectionRequest_fromTransport_callback___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateNodeState:10 currentElectionInfo:v3 incomingElectionInfo:*(a1 + 32) reason:10];
    v6 = [v5 executionContext];
    v7 = [v6 constituentForMe];

    if (([*(a1 + 40) supportsBackoff] & 1) == 0 && objc_msgSend(v7, "flags") >> 31 && objc_msgSend(*(a1 + 32), "isEqual:", *(a1 + 48)))
    {
      v8 = COCoreLogForCategory(16);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v5 shortDescription];
        v12 = 138543362;
        v13 = v9;
        _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ backed off legacy node", &v12, 0xCu);
      }

      [v5 _updateNodeState:5 currentElectionInfo:v3 incomingElectionInfo:*(a1 + 32) reason:10];
    }

    else
    {
      v10 = [v5 _ballotResponseWithElectionInfo:v3];
      [v5 _sendBallotResponse:v10 usingTransport:*(a1 + 56) callback:*(a1 + 64)];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleBallotResponse:(id)response fromTransport:(id)transport
{
  v44 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  transportCopy = transport;
  if (self->_activated)
  {
    v8 = [[COElectionInfo alloc] initWithCommand:responseCopy];
    node = [(CONodeController *)self node];
    [node setLastElectionInfoReceived:v8];

    ballot = [responseCopy ballot];
    [(CONodeController *)self _updateKnownDiscovery:ballot];

    remote = [transportCopy remote];
    variant = [responseCopy variant];
    v12 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(CONodeController *)self shortDescription];
      generation = [(COElectionInfo *)v8 generation];
      software = [remote software];
      rapportTransactionID = [responseCopy rapportTransactionID];
      ballot2 = [(COElectionInfo *)v8 ballot];
      candidates = [ballot2 candidates];
      v15 = [candidates count];
      leader = [(COElectionInfo *)v8 leader];
      *buf = 138545154;
      v29 = shortDescription;
      v30 = 2048;
      v31 = generation;
      v32 = 1024;
      v33 = variant;
      v34 = 2048;
      v35 = transportCopy;
      v36 = 2114;
      v37 = software;
      v38 = 2048;
      v39 = rapportTransactionID;
      v40 = 2048;
      v41 = v15;
      v42 = 2114;
      v43 = leader;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ received BALLOT (%llu:%d) from %p (%{public}@) XID 0x%llX - (%lu, %{public}@)", buf, 0x4Eu);
    }

    objc_initWeak(buf, self);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __56__CONodeController__handleBallotResponse_fromTransport___block_invoke;
    v24[3] = &unk_278E190D8;
    objc_copyWeak(&v27, buf);
    v17 = v8;
    v25 = v17;
    v26 = transportCopy;
    [(CONodeController *)self _updateDelegateWithBallotCommand:responseCopy withCompletionHandler:v24];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __56__CONodeController__handleBallotResponse_fromTransport___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateNodeState:11 currentElectionInfo:v3 incomingElectionInfo:*(a1 + 32) reason:10];
    if ([v3 hasSameGenerationAndLeader:*(a1 + 32)])
    {
      v6 = [v5 _voteRequestWithElectionInfo:v3];
      [v5 _sendVoteRequest:v6 usingTransport:*(a1 + 40)];
    }

    else
    {
      v7 = [v5 node];
      v8 = [v7 lastElectionInfoSent];
      v9 = [v3 isEqual:v8];

      if (v9)
      {
        [v5 _updateNodeState:5 currentElectionInfo:v3 incomingElectionInfo:*(a1 + 32) reason:10];
        v6 = COCoreLogForCategory(16);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v5 shortDescription];
          v11 = *(a1 + 40);
          v13 = 138543618;
          v14 = v10;
          v15 = 2048;
          v16 = v11;
          _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ backed off %p", &v13, 0x16u);
        }
      }

      else
      {
        v6 = [v5 _electionRequestWithElectionInfo:v3];
        [v5 _sendElectionRequest:v6 usingTransport:*(a1 + 40)];
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleVoteRequest:(id)request fromTransport:(id)transport callback:(id)callback
{
  v49 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  transportCopy = transport;
  callbackCopy = callback;
  if (self->_activated)
  {
    v11 = [[COElectionInfo alloc] initWithCommand:requestCopy];
    node = [(CONodeController *)self node];
    [node setLastElectionInfoReceived:v11];

    ballot = [requestCopy ballot];
    [(CONodeController *)self _updateKnownDiscovery:ballot];

    remote = [transportCopy remote];
    generation = [(COElectionInfo *)v11 generation];
    variant = [requestCopy variant];
    ballot2 = [(COElectionInfo *)v11 ballot];
    v14 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(CONodeController *)self shortDescription];
      software = [remote software];
      rapportTransactionID = [requestCopy rapportTransactionID];
      candidates = [ballot2 candidates];
      v16 = [candidates count];
      candidates2 = [ballot2 candidates];
      firstObject = [candidates2 firstObject];

      *buf = 138545154;
      v34 = shortDescription;
      v35 = 2048;
      v36 = generation;
      v37 = 1024;
      v38 = variant;
      v39 = 2048;
      v40 = transportCopy;
      v41 = 2114;
      v42 = software;
      v43 = 2048;
      v44 = rapportTransactionID;
      v45 = 2048;
      v46 = v16;
      v47 = 2114;
      v48 = firstObject;
      _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ received VOTE (%llu:%d) from %p (%{public}@) XID 0x%llX - (%lu, %{public}@)", buf, 0x4Eu);
    }

    objc_initWeak(buf, self);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __62__CONodeController__handleVoteRequest_fromTransport_callback___block_invoke;
    v28[3] = &unk_278E19100;
    objc_copyWeak(&v32, buf);
    v19 = v11;
    v29 = v19;
    v30 = transportCopy;
    v31 = callbackCopy;
    [(CONodeController *)self _updateDelegateWithBallotCommand:requestCopy withCompletionHandler:v28];

    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __62__CONodeController__handleVoteRequest_fromTransport_callback___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateNodeState:12 currentElectionInfo:v8 incomingElectionInfo:*(a1 + 32) reason:10];
    if ([v8 hasSameGenerationAndLeader:*(a1 + 32)])
    {
      v5 = [v4 _acceptResponseWithElectionInfo:v8];
      [v4 _sendAcceptResponse:v5 usingTransport:*(a1 + 40) callback:*(a1 + 48)];
      v6 = [v4 node];
      v7 = [v6 state];

      if (v7 != 14)
      {
        [v4 _updateNodeState:14 currentElectionInfo:v8 incomingElectionInfo:*(a1 + 32) reason:9];
      }
    }

    else
    {
      v5 = [v4 _ballotResponseWithElectionInfo:v8];
      [v4 _sendBallotResponse:v5 usingTransport:*(a1 + 40) callback:*(a1 + 48)];
    }
  }
}

- (void)_handleAcceptResponse:(id)response fromTransport:(id)transport
{
  v45 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  transportCopy = transport;
  if (self->_activated)
  {
    v8 = [[COElectionInfo alloc] initWithCommand:responseCopy];
    node = [(CONodeController *)self node];
    [node setLastElectionInfoReceived:v8];

    ballot = [responseCopy ballot];
    [(CONodeController *)self _updateKnownDiscovery:ballot];

    remote = [transportCopy remote];
    generation = [(COElectionInfo *)v8 generation];
    variant = [responseCopy variant];
    ballot2 = [(COElectionInfo *)v8 ballot];
    v11 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(CONodeController *)self shortDescription];
      software = [remote software];
      rapportTransactionID = [responseCopy rapportTransactionID];
      candidates = [ballot2 candidates];
      v14 = [candidates count];
      candidates2 = [ballot2 candidates];
      firstObject = [candidates2 firstObject];

      *buf = 138545154;
      v30 = shortDescription;
      v31 = 2048;
      v32 = generation;
      v33 = 1024;
      v34 = variant;
      v35 = 2048;
      v36 = transportCopy;
      v37 = 2114;
      v38 = software;
      v39 = 2048;
      v40 = rapportTransactionID;
      v41 = 2048;
      v42 = v14;
      v43 = 2114;
      v44 = firstObject;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ received ACCEPT (%llu:%d) from %p (%{public}@) XID 0x%llX - (%lu, %{public}@)", buf, 0x4Eu);
    }

    objc_initWeak(buf, self);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __56__CONodeController__handleAcceptResponse_fromTransport___block_invoke;
    v25[3] = &unk_278E190D8;
    objc_copyWeak(&v28, buf);
    v17 = v8;
    v26 = v17;
    v27 = transportCopy;
    [(CONodeController *)self _updateDelegateWithBallotCommand:responseCopy withCompletionHandler:v25];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __56__CONodeController__handleAcceptResponse_fromTransport___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateNodeState:13 currentElectionInfo:v3 incomingElectionInfo:*(a1 + 32) reason:10];
    v6 = [v3 hasSameGenerationAndLeader:*(a1 + 32)];
    v7 = [v5 node];
    v8 = v7;
    if (v6)
    {
      v9 = [v7 state];

      if (v9 != 14)
      {
        [v5 _updateNodeState:14 currentElectionInfo:v3 incomingElectionInfo:*(a1 + 32) reason:9];
      }
    }

    else
    {
      v10 = [v7 lastElectionInfoSent];
      v11 = [v3 isEqual:v10];

      if (v11)
      {
        [v5 _updateNodeState:5 currentElectionInfo:v3 incomingElectionInfo:*(a1 + 32) reason:10];
        v12 = COCoreLogForCategory(16);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v5 shortDescription];
          v14 = *(a1 + 40);
          v16 = 138543618;
          v17 = v13;
          v18 = 2048;
          v19 = v14;
          _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ backed off %p", &v16, 0x16u);
        }
      }

      else
      {
        v12 = [v5 _electionRequestWithElectionInfo:v3];
        [v5 _sendElectionRequest:v12 usingTransport:*(a1 + 40)];
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleWithdraw:(id)withdraw fromTransport:(id)transport
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_activated)
  {
    v5 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(CONodeController *)self shortDescription];
      v12 = 138543362;
      v13 = shortDescription;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ received a withdraw command", &v12, 0xCu);
    }

    node = [(CONodeController *)self node];
    lastElectionInfoSent = [node lastElectionInfoSent];
    node2 = [(CONodeController *)self node];
    lastElectionInfoReceived = [node2 lastElectionInfoReceived];
    [(CONodeController *)self _updateNodeState:1 currentElectionInfo:lastElectionInfoSent incomingElectionInfo:lastElectionInfoReceived reason:17];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleResponseToCoreRequest:(id)request response:(id)response error:(id)error usingTransport:(id)transport
{
  v40 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  responseCopy = response;
  errorCopy = error;
  transportCopy = transport;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();
  if (errorCopy)
  {
    if (isKindOfClass)
    {
      [(CONodeController *)self _handlePingError:errorCopy fromTransport:transportCopy];
      goto LABEL_27;
    }

    v17 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      shortDescription = [(CONodeController *)self shortDescription];
      v32 = 138544130;
      v33 = shortDescription;
      v34 = 2112;
      v35 = requestCopy;
      v36 = 2112;
      v37 = errorCopy;
      v38 = 2048;
      v39 = transportCopy;
      _os_log_error_impl(&dword_244378000, v17, OS_LOG_TYPE_ERROR, "%{public}@ request %@ failed with error %@ on transport %p", &v32, 0x2Au);
    }

    preferredTransport = [(CONodeController *)self preferredTransport];
    v19 = preferredTransport;
    if (preferredTransport == transportCopy)
    {
      transports = [(CONodeController *)self transports];
      v21 = [transports count];

      if (v21 >= 2)
      {
        v22 = COCoreLogForCategory(16);
        if (!os_log_type_enabled(&v22->super, OS_LOG_TYPE_DEFAULT))
        {
LABEL_26:

          goto LABEL_27;
        }

        shortDescription2 = [(CONodeController *)self shortDescription];
        state = [(CONodeController *)self state];
        v32 = 138543618;
        v33 = shortDescription2;
        v34 = 2048;
        v35 = state;
        _os_log_impl(&dword_244378000, &v22->super, OS_LOG_TYPE_DEFAULT, "%{public}@ alternate transport available, remaining in state %ld", &v32, 0x16u);
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
    }

    v22 = [[COElectionInfo alloc] initWithCommand:requestCopy];
    shortDescription2 = [[COElectionInfo alloc] initWithCommand:responseCopy];
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277D44250]])
    {
      code = [errorCopy code];

      if (code == -6714)
      {
        v27 = 8;
LABEL_24:
        [(CONodeController *)self _updateNodeState:1 currentElectionInfo:v22 incomingElectionInfo:shortDescription2 reason:v27];
        goto LABEL_25;
      }
    }

    else
    {
    }

    domain2 = [errorCopy domain];
    if ([domain2 isEqualToString:@"COMeshNodeErrorDomain"])
    {
      code2 = [errorCopy code];

      if (code2 == -4000)
      {
        v27 = 7;
        goto LABEL_24;
      }
    }

    else
    {
    }

    v27 = 6;
    goto LABEL_24;
  }

  if (v15)
  {
    [(CONodeController *)self _handleBallotResponse:responseCopy fromTransport:transportCopy];
  }

  else if (v16)
  {
    [(CONodeController *)self _handleAcceptResponse:responseCopy fromTransport:transportCopy];
  }

LABEL_27:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_handlePingError:(id)error fromTransport:(id)transport
{
  v34 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  transportCopy = transport;
  executionContext = [(CONodeController *)self executionContext];
  [executionContext assertDispatchQueue];

  v9 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    shortDescription = [(CONodeController *)self shortDescription];
    v28 = 138543874;
    v29 = shortDescription;
    v30 = 2112;
    v31 = errorCopy;
    v32 = 2048;
    v33 = transportCopy;
    _os_log_error_impl(&dword_244378000, v9, OS_LOG_TYPE_ERROR, "%{public}@ ping error %@ on transport %p", &v28, 0x20u);
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277D44250]])
  {
    if ([errorCopy code] == -6722)
    {

LABEL_13:
      v24 = COCoreLogForCategory(16);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription2 = [(CONodeController *)self shortDescription];
        v28 = 138543362;
        v29 = shortDescription2;
        _os_log_impl(&dword_244378000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Going dormant", &v28, 0xCu);
      }

      node = [(CONodeController *)self node];
      lastElectionInfoSent = [node lastElectionInfoSent];
      node2 = [(CONodeController *)self node];
      lastElectionInfoReceived = [node2 lastElectionInfoReceived];
      if ([errorCopy code] == -6722)
      {
        v22 = 11;
      }

      else
      {
        v22 = 12;
      }

      selfCopy2 = self;
      v19 = 2;
      v20 = lastElectionInfoSent;
      v21 = lastElectionInfoReceived;
LABEL_19:
      [(CONodeController *)selfCopy2 _updateNodeState:v19 currentElectionInfo:v20 incomingElectionInfo:v21 reason:v22];

      goto LABEL_20;
    }

    code = [errorCopy code];

    if (code == -6714)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  node = [errorCopy domain];
  if (![node isEqualToString:@"COMeshNodeErrorDomain"])
  {
LABEL_20:

    goto LABEL_21;
  }

  code2 = [errorCopy code];

  if (code2 == -4000)
  {
    v13 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription3 = [(CONodeController *)self shortDescription];
      v28 = 138543362;
      v29 = shortDescription3;
      _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ ping failed with a framing error. Marking node as discovered", &v28, 0xCu);
    }

    node = [(CONodeController *)self node];
    lastElectionInfoSent = [node lastElectionInfoSent];
    node2 = [(CONodeController *)self node];
    lastElectionInfoReceived = [node2 lastElectionInfoReceived];
    selfCopy2 = self;
    v19 = 1;
    v20 = lastElectionInfoSent;
    v21 = lastElectionInfoReceived;
    v22 = 13;
    goto LABEL_19;
  }

LABEL_21:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_updateDelegateWithBallotCommand:(id)command withCompletionHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  delegate = [(CONodeController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75__CONodeController__updateDelegateWithBallotCommand_withCompletionHandler___block_invoke;
    v10[3] = &unk_278E19128;
    v11 = handlerCopy;
    [delegate nodeController:self didReceiveElectionCmd:commandCopy withCompletionHandler:v10];
  }

  else
  {
    v9 = [[COElectionInfo alloc] initWithCommand:commandCopy];
    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

- (int64_t)_nodeControllerStateFromNodeState
{
  if ([(CONode *)self->_node state]< 1)
  {
    return 0;
  }

  if ([(CONode *)self->_node state]< 2)
  {
    return 1;
  }

  if ([(CONode *)self->_node state]< 3)
  {
    return 2;
  }

  if ([(CONode *)self->_node state]< 4)
  {
    return 3;
  }

  if ([(CONode *)self->_node state]< 5)
  {
    return 4;
  }

  if ([(CONode *)self->_node state]< 14)
  {
    return 5;
  }

  return 6;
}

- (void)_updateNodeState:(int64_t)state currentElectionInfo:(id)info incomingElectionInfo:(id)electionInfo reason:(int64_t)reason
{
  v55 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  electionInfoCopy = electionInfo;
  transports = [(CONodeController *)self transports];
  if ([transports count] == 1)
  {
    firstObject = [transports firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      state = 14;
    }
  }

  _nodeControllerStateFromNodeState = [(CONodeController *)self _nodeControllerStateFromNodeState];
  if (!-[CONodeController _isActiveState:](self, "_isActiveState:", state) || _nodeControllerStateFromNodeState != 6 || ([infoCopy hasSameGenerationAndLeader:electionInfoCopy] & 1) == 0)
  {
    node = [(CONodeController *)self node];
    isInElectionState = [node isInElectionState];

    node2 = [(CONodeController *)self node];
    [node2 setState:state];

    node3 = [(CONodeController *)self node];
    isInElectionState2 = [node3 isInElectionState];

    _nodeControllerStateFromNodeState2 = [(CONodeController *)self _nodeControllerStateFromNodeState];
    if (_nodeControllerStateFromNodeState != _nodeControllerStateFromNodeState2)
    {
      v20 = COCoreLogForCategory(16);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        shortDescription = [(CONodeController *)self shortDescription];
        *buf = 138543874;
        v50 = shortDescription;
        v51 = 2048;
        v52 = _nodeControllerStateFromNodeState;
        v53 = 2048;
        v54 = _nodeControllerStateFromNodeState2;
        _os_log_debug_impl(&dword_244378000, v20, OS_LOG_TYPE_DEBUG, "%{public}@ moving from state %lu to state %lu", buf, 0x20u);
      }
    }

    if (!(isInElectionState2 & 1 | ((isInElectionState & 1) == 0)))
    {
      node4 = [(CONodeController *)self node];
      v22 = [node4 backoffBucket] == 0;

      if (!v22)
      {
        delegate = [(CONodeController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate backedOffNodeMovedOutOfElection:self];
        }
      }
    }

    if (isInElectionState2)
    {
      if (isInElectionState)
      {
        goto LABEL_21;
      }

      node5 = [(CONodeController *)self node];
      [node5 setTotalBackedOffTime:0];

      knownDiscoveryRecords = [(CONodeController *)self knownDiscoveryRecords];
      [knownDiscoveryRecords removeAllObjects];
    }

    else
    {
      node6 = [(CONodeController *)self node];
      [node6 setBackoffTimer:0];

      node7 = [(CONodeController *)self node];
      [node7 setBackoffResponse:0];

      knownDiscoveryRecords = [(CONodeController *)self node];
      [knownDiscoveryRecords setBackoffBucket:0];
    }

LABEL_21:
    if (state == 5)
    {
      node8 = [(CONodeController *)self node];
      backoffTimer = [node8 backoffTimer];
      v30 = backoffTimer == 0;

      if (v30)
      {
        v31 = COCoreLogForCategory(16);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          shortDescription2 = [(CONodeController *)self shortDescription];
          *buf = 138543362;
          v50 = shortDescription2;
          _os_log_impl(&dword_244378000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ creating a backoff timer for bucket 0", buf, 0xCu);
        }

        executionContext = [(CONodeController *)self executionContext];
        dispatchQueue = [executionContext dispatchQueue];
        v35 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, dispatchQueue);

        if (v35)
        {
          v36 = dispatch_walltime(0, 100000000);
          dispatch_source_set_timer(v35, v36, 0x5F5E100uLL, 0);
          objc_initWeak(buf, self);
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = __85__CONodeController__updateNodeState_currentElectionInfo_incomingElectionInfo_reason___block_invoke;
          handler[3] = &unk_278E15B10;
          objc_copyWeak(&v48, buf);
          dispatch_source_set_event_handler(v35, handler);
          node9 = [(CONodeController *)self node];
          [node9 setBackoffBucket:0];

          node10 = [(CONodeController *)self node];
          [node10 setBackoffTimer:v35];

          objc_destroyWeak(&v48);
          objc_destroyWeak(buf);
        }

        else
        {
          v39 = COCoreLogForCategory(16);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [COMeshNodeStateTracker setElectionStage:v39];
          }
        }
      }
    }

    if (_nodeControllerStateFromNodeState != _nodeControllerStateFromNodeState2)
    {
      delegate2 = [(CONodeController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        node11 = [(CONodeController *)self node];
        lastElectionInfoSent = [node11 lastElectionInfoSent];
        [delegate2 nodeController:self didUpdateState:_nodeControllerStateFromNodeState to:_nodeControllerStateFromNodeState2 reason:reason withLastSentElectionInfo:lastElectionInfoSent];
      }
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __85__CONodeController__updateNodeState_currentElectionInfo_incomingElectionInfo_reason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained didFireBackoffTimer];
    WeakRetained = v2;
  }
}

- (void)didFireBackoffTimer
{
  v34 = *MEMORY[0x277D85DE8];
  node = [(CONodeController *)self node];
  backoffBucket = [node backoffBucket];

  node2 = [(CONodeController *)self node];
  totalBackedOffTime = [node2 totalBackedOffTime];

  v7 = CONodeStateBackoffSeries[backoffBucket];
  node3 = [(CONodeController *)self node];
  [node3 setTotalBackedOffTime:v7 + totalBackedOffTime];

  if (backoffBucket <= 0xC)
  {
    node4 = [(CONodeController *)self node];
    [node4 setBackoffBucket:++backoffBucket];

    v7 = CONodeStateBackoffSeries[backoffBucket];
  }

  v10 = 1000000 * v7;
  v11 = dispatch_walltime(0, 1000000 * v7);
  node5 = [(CONodeController *)self node];
  backoffTimer = [node5 backoffTimer];
  dispatch_source_set_timer(backoffTimer, v11, v10, 0);

  v14 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CONodeController *)self shortDescription];
    *buf = 138412546;
    v31 = shortDescription;
    v32 = 2048;
    v33 = backoffBucket;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%@ back off (%ld) firing", buf, 0x16u);
  }

  node6 = [(CONodeController *)self node];
  backoffResponse = [node6 backoffResponse];

  node7 = [(CONodeController *)self node];
  lastElectionInfoReceived = [node7 lastElectionInfoReceived];
  if (backoffResponse)
  {
    v20 = [(CONodeController *)self _electionRequestWithElectionInfo:lastElectionInfoReceived];

    v21 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription2 = [(CONodeController *)self shortDescription];
      generation = [v20 generation];
      *buf = 138543618;
      v31 = shortDescription2;
      v32 = 2048;
      v33 = generation;
      _os_log_impl(&dword_244378000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ delayed BALLOT (%llu) response", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __39__CONodeController_didFireBackoffTimer__block_invoke;
    v27[3] = &unk_278E19150;
    objc_copyWeak(&v29, buf);
    v28 = backoffResponse;
    [(CONodeController *)self _updateDelegateWithBallotCommand:v20 withCompletionHandler:v27];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  else
  {
    v20 = [(CONodeController *)self _ballotResponseWithElectionInfo:lastElectionInfoReceived];

    objc_initWeak(buf, self);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __39__CONodeController_didFireBackoffTimer__block_invoke_2;
    v25[3] = &unk_278E19178;
    objc_copyWeak(&v26, buf);
    v25[4] = self;
    [(CONodeController *)self _updateDelegateWithBallotCommand:v20 withCompletionHandler:v25];
    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __39__CONodeController_didFireBackoffTimer__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _ballotResponseWithElectionInfo:v8];
    (*(*(a1 + 32) + 16))();
    v6 = [v4 node];
    [v6 setBackoffResponse:0];

    v7 = [v4 node];
    [v7 setLastElectionInfoSent:v8];
  }
}

void __39__CONodeController_didFireBackoffTimer__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) node];
    v5 = [v4 hasOutstandingRequest];

    if ((v5 & 1) == 0)
    {
      v6 = [*(a1 + 32) _electionRequestWithElectionInfo:v9];
      v7 = *(a1 + 32);
      v8 = [v7 preferredTransport];
      [v7 _sendElectionRequest:v6 usingTransport:v8];
    }
  }
}

- (id)_electionRequestWithElectionInfo:(id)info
{
  infoCopy = info;
  preferredTransport = [(CONodeController *)self preferredTransport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    listeningPort = [preferredTransport listeningPort];
  }

  else
  {
    listeningPort = 0;
  }

  v7 = [(CONodeController *)self _electionInfoByDiffingCurrentElectionInfo:infoCopy];
  v8 = [COMeshElectionRequest alloc];
  ballot = [v7 ballot];
  v10 = -[COMeshElectionRequest initWithBallot:generation:listeningPort:](v8, "initWithBallot:generation:listeningPort:", ballot, [v7 generation], listeningPort);

  return v10;
}

- (id)_ballotResponseWithElectionInfo:(id)info
{
  v3 = [(CONodeController *)self _electionInfoByDiffingCurrentElectionInfo:info];
  v4 = [COMeshBallotResponse alloc];
  ballot = [v3 ballot];
  v6 = -[COMeshBaseBallotResponse initWithBallot:generation:](v4, "initWithBallot:generation:", ballot, [v3 generation]);

  return v6;
}

- (id)_voteRequestWithElectionInfo:(id)info
{
  v3 = [(CONodeController *)self _electionInfoByDiffingCurrentElectionInfo:info];
  v4 = [COMeshVoteRequest alloc];
  ballot = [v3 ballot];
  v6 = -[COMeshBaseBallotRequest initWithBallot:generation:](v4, "initWithBallot:generation:", ballot, [v3 generation]);

  return v6;
}

- (id)_acceptResponseWithElectionInfo:(id)info
{
  v3 = [(CONodeController *)self _electionInfoByDiffingCurrentElectionInfo:info];
  v4 = [COMeshAcceptResponse alloc];
  ballot = [v3 ballot];
  v6 = -[COMeshBaseBallotResponse initWithBallot:generation:](v4, "initWithBallot:generation:", ballot, [v3 generation]);

  return v6;
}

- (void)_updateKnownDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  isIPDiscoveryDiffingEnabled = [MEMORY[0x277CFD0B8] isIPDiscoveryDiffingEnabled];
  v5 = discoveryCopy;
  if (isIPDiscoveryDiffingEnabled)
  {
    discovery = [discoveryCopy discovery];
    if (discovery)
    {
      knownDiscoveryRecords = [(CONodeController *)self knownDiscoveryRecords];
      [knownDiscoveryRecords addEntriesFromDictionary:discovery];
    }

    v5 = discoveryCopy;
  }

  MEMORY[0x2821F96F8](isIPDiscoveryDiffingEnabled, v5);
}

- (id)_electionInfoByDiffingCurrentElectionInfo:(id)info
{
  v30 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if ([MEMORY[0x277CFD0B8] isIPDiscoveryDiffingEnabled])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v24 = infoCopy;
    ballot = [infoCopy ballot];
    discovery = [ballot discovery];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    allKeys = [discovery allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          knownDiscoveryRecords = [(CONodeController *)self knownDiscoveryRecords];
          v15 = [knownDiscoveryRecords objectForKey:v13];

          v16 = [discovery objectForKey:v13];
          v17 = v16;
          if (!v15 || ([v16 isEqualToDiscoveryRecord:v15] & 1) == 0)
          {
            [dictionary setObject:v17 forKey:v13];
          }
        }

        v10 = [allKeys countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    knownDiscoveryRecords2 = [(CONodeController *)self knownDiscoveryRecords];
    [knownDiscoveryRecords2 addEntriesFromDictionary:dictionary];

    infoCopy = v24;
    ballot2 = [v24 ballot];
    v20 = [ballot2 mutableCopy];

    [v20 setDiscovery:dictionary];
    v21 = objc_alloc_init(COElectionInfo);
    -[COElectionInfo setGeneration:](v21, "setGeneration:", [v24 generation]);
    [(COElectionInfo *)v21 setBallot:v20];
  }

  else
  {
    v21 = infoCopy;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_adjustNodeDiscoveryInformationUsingRecord:(id)record
{
  recordCopy = record;
  node = [(CONodeController *)self node];
  discoveryType = [node discoveryType];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    discoveryType |= 2uLL;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      discoveryType |= 1uLL;
      node2 = [(CONodeController *)self node];
      connectionType = [node2 connectionType];

      if (!connectionType)
      {
        node3 = [(CONodeController *)self node];
        [node3 setConnectionType:1];
      }
    }
  }

  node4 = [(CONodeController *)self node];
  [node4 setDiscoveryType:discoveryType];
}

- (void)transport:(id)transport didReceiveCommand:(id)command
{
  transportCopy = transport;
  commandCopy = command;
  executionContext = [(CONodeController *)self executionContext];
  [executionContext assertDispatchQueue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CONodeController *)self _handleWithdraw:commandCopy fromTransport:transportCopy];
  }

  else
  {
    delegate = [(CONodeController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate nodeController:self didReceiveCommand:commandCopy];
    }

    else
    {
      v10 = COCoreLogForCategory(16);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CONodeController transport:didReceiveCommand:];
      }
    }
  }
}

- (void)transport:(id)transport didReceiveRequest:(id)request callback:(id)callback
{
  v33 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  requestCopy = request;
  callbackCopy = callback;
  executionContext = [(CONodeController *)self executionContext];
  [executionContext assertDispatchQueue];

  if (![(CONodeController *)self handlersRegistered])
  {
    delegate = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D44250] code:-6714 userInfo:0];
    v18 = COCoreLogForCategory(16);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      callbackCopy[2](callbackCopy, 0, delegate);
LABEL_14:

      goto LABEL_15;
    }

    shortDescription = [(CONodeController *)self shortDescription];
    v25 = 138543874;
    v26 = shortDescription;
    v27 = 2112;
    v28 = requestCopy;
    v29 = 2112;
    v30 = delegate;
    v20 = "%{public}@ acceptable commands not registered. Responding to %@ with error %@";
    v21 = v18;
    v22 = 32;
LABEL_24:
    _os_log_error_impl(&dword_244378000, v21, OS_LOG_TYPE_ERROR, v20, &v25, v22);

    goto LABEL_13;
  }

  if (!self->_activated)
  {
    delegate = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D44250] code:-6714 userInfo:0];
    v18 = COCoreLogForCategory(16);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    shortDescription = [(CONodeController *)self shortDescription];
    v25 = 138544130;
    v26 = shortDescription;
    v27 = 2112;
    v28 = transportCopy;
    v29 = 2112;
    v30 = requestCopy;
    v31 = 2112;
    v32 = delegate;
    v20 = "%{public}@ transport %@ has not finished activating. Responding to %@ with error %@";
    v21 = v18;
    v22 = 42;
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CONodeController *)self _handleElectionRequest:requestCopy fromTransport:transportCopy callback:callbackCopy];
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CONodeController *)self _handleVoteRequest:requestCopy fromTransport:transportCopy callback:callbackCopy];
      goto LABEL_15;
    }

    delegate = [(CONodeController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate nodeController:self didReceiveRequest:requestCopy callback:callbackCopy];
    }

    else
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
      callbackCopy[2](callbackCopy, 0, v24);
    }

    goto LABEL_14;
  }

  executionContext2 = [(CONodeController *)self executionContext];
  leaderElectionConfigured = [executionContext2 leaderElectionConfigured];

  if ((leaderElectionConfigured & 1) == 0 && [(CONodeController *)self state]== 1)
  {
    v14 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription2 = [(CONodeController *)self shortDescription];
      v25 = 138543362;
      v26 = shortDescription2;
      _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ discovered node with an incoming ping will move to processing", &v25, 0xCu);
    }

    [(CONodeController *)self _updateNodeState:14 currentElectionInfo:0 incomingElectionInfo:0 reason:2];
  }

  v16 = objc_alloc_init(COMeshResponse);
  (callbackCopy)[2](callbackCopy, v16, 0);

LABEL_15:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)transport didReceiveError:(id)error forCommand:(id)command
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  commandCopy = command;
  executionContext = [(CONodeController *)self executionContext];
  [executionContext assertDispatchQueue];

  delegate = [(CONodeController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate nodeController:self didReceiveError:errorCopy forCommand:commandCopy];
  }

  else
  {
    v11 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      shortDescription = [(CONodeController *)self shortDescription];
      v14 = 138543874;
      v15 = shortDescription;
      v16 = 2112;
      v17 = commandCopy;
      v18 = 2112;
      v19 = errorCopy;
      _os_log_error_impl(&dword_244378000, v11, OS_LOG_TYPE_ERROR, "%{public}@ failed to send a command %@ with error %@", &v14, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)transport didInvalidateWithError:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  errorCopy = error;
  v8 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [CONodeController transport:? didInvalidateWithError:?];
  }

  executionContext = [(CONodeController *)self executionContext];
  [executionContext assertDispatchQueue];

  record = [transportCopy record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    acceptableCommands = [(CONodeController *)self acceptableCommands];
    self->_expectedRegisteredCommandCount = [acceptableCommands count];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    records = [(CONodeController *)selfCopy records];
    record2 = [transportCopy record];
    [records removeObject:record2];

    objc_sync_exit(selfCopy);
    transports = [(CONodeController *)selfCopy transports];
    [transports removeObject:transportCopy];

    acceptableCommands = [(CONodeController *)selfCopy computePreferredTransport];
    v17 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(CONodeController *)selfCopy shortDescription];
      v25 = 138543618;
      v26 = shortDescription;
      v27 = 2112;
      v28 = acceptableCommands;
      _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ recomputing preferred transport %@", &v25, 0x16u);
    }

    [(CONodeController *)selfCopy setPreferredTransport:acceptableCommands];
    delegate = [(CONodeController *)selfCopy delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate nodeController:selfCopy didRemoveTransport:transportCopy withError:errorCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      node = [(CONodeController *)selfCopy node];
      lastElectionInfoSent = [node lastElectionInfoSent];
      node2 = [(CONodeController *)selfCopy node];
      lastElectionInfoReceived = [node2 lastElectionInfoReceived];
      [(CONodeController *)selfCopy _updateNodeState:14 currentElectionInfo:lastElectionInfoSent incomingElectionInfo:lastElectionInfoReceived reason:21];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)transport shouldUpdateRemoteConstituent:(id)constituent to:(id)to forCommand:(id)command completionHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  constituentCopy = constituent;
  toCopy = to;
  handlerCopy = handler;
  commandCopy = command;
  executionContext = [(CONodeController *)self executionContext];
  [executionContext assertDispatchQueue];

  executionContext2 = [(CONodeController *)self executionContext];
  leaderElectionConfigured = [executionContext2 leaderElectionConfigured];

  if (leaderElectionConfigured)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v21 = COCoreLogForCategory(16);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription = [(CONodeController *)self shortDescription];
        v30 = 138544130;
        v31 = shortDescription;
        v32 = 2112;
        v33 = constituentCopy;
        v34 = 2112;
        v35 = toCopy;
        v36 = 2048;
        v37 = transportCopy;
        _os_log_impl(&dword_244378000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ remote constituent will change from %@ to %@ on transport %p", &v30, 0x2Au);
      }

      node = [(CONodeController *)self node];
      [node setRemote:toCopy];

      ipDiscoveryRecord = [(CONodeController *)self ipDiscoveryRecord];
      if (ipDiscoveryRecord)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          constituent = [ipDiscoveryRecord constituent];
          if (([constituent isEqual:toCopy] & 1) == 0)
          {
            v26 = [ipDiscoveryRecord mutableCopy];
            [v26 rollConstituent:toCopy];
            v27 = [[CODiscoveryRecord alloc] initWithDiscoveryRecord:v26];
            [(CONodeController *)self setIpDiscoveryRecord:v27];
            [transportCopy setRecord:v27];
          }
        }
      }

LABEL_13:
    }
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      ipDiscoveryRecord = COCoreLogForCategory(16);
      if (os_log_type_enabled(ipDiscoveryRecord, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription2 = [(CONodeController *)self shortDescription];
        v30 = 138544130;
        v31 = shortDescription2;
        v32 = 2112;
        v33 = constituentCopy;
        v34 = 2112;
        v35 = toCopy;
        v36 = 2048;
        v37 = transportCopy;
        _os_log_impl(&dword_244378000, ipDiscoveryRecord, OS_LOG_TYPE_DEFAULT, "%{public}@ remote constituent will change from %@ to %@ on transport %p", &v30, 0x2Au);
      }

      goto LABEL_13;
    }
  }

  handlerCopy[2](handlerCopy, isKindOfClass & 1);

  v29 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)transport willUpdateRemoteConstituent:(id)constituent to:(id)to
{
  v28 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  constituentCopy = constituent;
  toCopy = to;
  executionContext = [(CONodeController *)self executionContext];
  [executionContext assertDispatchQueue];

  v12 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CONodeController *)self shortDescription];
    v20 = 138544130;
    v21 = shortDescription;
    v22 = 2112;
    v23 = constituentCopy;
    v24 = 2112;
    v25 = toCopy;
    v26 = 2048;
    v27 = transportCopy;
    _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ remote constituent will change from %@ to %@ on transport %p", &v20, 0x2Au);
  }

  node = [(CONodeController *)self node];
  [node setRemote:toCopy];

  ipDiscoveryRecord = [(CONodeController *)self ipDiscoveryRecord];
  if (ipDiscoveryRecord)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      constituent = [ipDiscoveryRecord constituent];
      if (([constituent isEqual:toCopy] & 1) == 0)
      {
        v17 = [ipDiscoveryRecord mutableCopy];
        [v17 rollConstituent:toCopy];
        v18 = [[CODiscoveryRecord alloc] initWithDiscoveryRecord:v17];
        [(CONodeController *)self setIpDiscoveryRecord:v18];
        [transportCopy setRecord:v18];
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)transport didUpdateRemoteConstituent:(id)constituent to:(id)to
{
  v24 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  constituentCopy = constituent;
  toCopy = to;
  executionContext = [(CONodeController *)self executionContext];
  [executionContext assertDispatchQueue];

  v12 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CONodeController *)self shortDescription];
    v16 = 138544130;
    v17 = shortDescription;
    v18 = 2112;
    v19 = constituentCopy;
    v20 = 2112;
    v21 = toCopy;
    v22 = 2048;
    v23 = transportCopy;
    _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ remote constituent has changed from %@ to %@ on transport %p", &v16, 0x2Au);
  }

  if (constituentCopy)
  {
    delegate = [(CONodeController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate nodeController:self didUpdateRemoteConstituent:constituentCopy to:toCopy];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)transport didReceiveUnhandledRequest:(id)request
{
  requestCopy = request;
  executionContext = [(CONodeController *)self executionContext];
  [executionContext assertDispatchQueue];

  request = [requestCopy request];
  executionContext2 = [(CONodeController *)self executionContext];
  leaderElectionConfigured = [executionContext2 leaderElectionConfigured];

  v10 = off_278E150B8;
  if (!leaderElectionConfigured)
  {
    v10 = &off_278E150E0;
  }

  v11 = *v10;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = [request conformsToProtocol:&unk_2857D4880] & isKindOfClass;
  v14 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [CONodeController transport:didReceiveUnhandledRequest:];
  }

  delegate = [(CONodeController *)self delegate];
  if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate nodeController:self didReceiveOnDemandNodeCreationRequest:requestCopy];
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
    handler = [requestCopy handler];
    (handler)[2](handler, 0, 0, v16);
  }
}

- (CONodeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __79__CONodeController__createAndActivateTransportForRecord_withCompletionHandler___block_invoke_65_cold_1()
{
  OUTLINED_FUNCTION_9();
  v9 = *MEMORY[0x277D85DE8];
  v1 = [v0 shortDescription];
  OUTLINED_FUNCTION_0_7(&dword_244378000, v2, v3, "%{public}@ failed activation with error %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __39__CONodeController_addDiscoveryRecord___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a1 shortDescription];
  v11 = *(a2 + 32);
  OUTLINED_FUNCTION_0_7(&dword_244378000, v4, v5, "%{public}@ failed to create a transport with record %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

void __40__CONodeController_inquireForTransport___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 shortDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_7(&dword_244378000, v2, v3, "%{public}@ Failed inquiry with error %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_sendPingUsingTransport:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 shortDescription];
  OUTLINED_FUNCTION_2_4();
  v8 = a2;
  _os_log_debug_impl(&dword_244378000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ transport %@ doesn't support pings", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)transport:didReceiveCommand:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 shortDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_7(&dword_244378000, v2, v3, "%{public}@ received a command %@ but has no delegate to deliver to", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)transport:(void *)a1 didInvalidateWithError:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_0_7(&dword_244378000, v2, v3, "%{public}@ transport %p reported as invalidated", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)transport:didReceiveUnhandledRequest:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v11 = *MEMORY[0x277D85DE8];
  v2 = [v1 shortDescription];
  v10 = [v0 _sendingConstituent];
  OUTLINED_FUNCTION_0_7(&dword_244378000, v3, v4, "%{public}@ received a request from an unknown node %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

@end