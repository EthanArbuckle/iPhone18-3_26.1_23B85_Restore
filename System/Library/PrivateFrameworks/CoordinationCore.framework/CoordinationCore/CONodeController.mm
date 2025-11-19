@interface CONodeController
- (BOOL)isLocalNodeController;
- (CODiscoveryRecord)ipDiscoveryRecord;
- (CONodeController)initWithDiscoveryRecord:(id)a3 executionContext:(id)a4;
- (CONodeControllerDelegate)delegate;
- (COTransportProtocol)preferredTransport;
- (NSString)description;
- (id)_acceptResponseWithElectionInfo:(id)a3;
- (id)_ballotResponseWithElectionInfo:(id)a3;
- (id)_electionInfoByDiffingCurrentElectionInfo:(id)a3;
- (id)_electionRequestWithElectionInfo:(id)a3;
- (id)_voteRequestWithElectionInfo:(id)a3;
- (id)computePreferredTransport;
- (id)electionSummaryDetails;
- (id)nodeAfterReconciliation;
- (id)rapportTransport;
- (id)remote;
- (id)shortDescription;
- (int64_t)_nodeControllerStateFromNodeState;
- (void)_adjustNodeDiscoveryInformationUsingRecord:(id)a3;
- (void)_createAndActivateTransportForRecord:(id)a3 withCompletionHandler:(id)a4;
- (void)_handleAcceptResponse:(id)a3 fromTransport:(id)a4;
- (void)_handleBallotResponse:(id)a3 fromTransport:(id)a4;
- (void)_handleElectionRequest:(id)a3 fromTransport:(id)a4 callback:(id)a5;
- (void)_handlePingError:(id)a3 fromTransport:(id)a4;
- (void)_handleResponseToCoreRequest:(id)a3 response:(id)a4 error:(id)a5 usingTransport:(id)a6;
- (void)_handleVoteRequest:(id)a3 fromTransport:(id)a4 callback:(id)a5;
- (void)_handleWithdraw:(id)a3 fromTransport:(id)a4;
- (void)_sendAcceptResponse:(id)a3 usingTransport:(id)a4 callback:(id)a5;
- (void)_sendBallotResponse:(id)a3 usingTransport:(id)a4 callback:(id)a5;
- (void)_sendElectionRequest:(id)a3 usingTransport:(id)a4;
- (void)_sendPingUsingTransport:(id)a3;
- (void)_sendProbeRequest:(id)a3 withState:(int64_t)a4 usingTransport:(id)a5;
- (void)_sendVoteRequest:(id)a3 usingTransport:(id)a4;
- (void)_updateDelegateWithBallotCommand:(id)a3 withCompletionHandler:(id)a4;
- (void)_updateKnownDiscovery:(id)a3;
- (void)_updateNodeState:(int64_t)a3 currentElectionInfo:(id)a4 incomingElectionInfo:(id)a5 reason:(int64_t)a6;
- (void)activateWithCompletionHandler:(id)a3;
- (void)addDiscoveryRecord:(id)a3;
- (void)didFireBackoffTimer;
- (void)inquireForTransport:(id)a3;
- (void)invalidateWithReason:(int64_t)a3;
- (void)markInactive;
- (void)reconcileNode;
- (void)removeDiscoveryRecord:(id)a3;
- (void)sendCommand:(id)a3 withCompletionHandler:(id)a4;
- (void)sendPing;
- (void)stopWithCompletionHandler:(id)a3;
- (void)transport:(id)a3 didInvalidateWithError:(id)a4;
- (void)transport:(id)a3 didReceiveCommand:(id)a4;
- (void)transport:(id)a3 didReceiveError:(id)a4 forCommand:(id)a5;
- (void)transport:(id)a3 didReceiveRequest:(id)a4 callback:(id)a5;
- (void)transport:(id)a3 didReceiveUnhandledRequest:(id)a4;
- (void)transport:(id)a3 didUpdateRemoteConstituent:(id)a4 to:(id)a5;
- (void)transport:(id)a3 shouldUpdateRemoteConstituent:(id)a4 to:(id)a5 forCommand:(id)a6 completionHandler:(id)a7;
- (void)transport:(id)a3 willUpdateRemoteConstituent:(id)a4 to:(id)a5;
- (void)updateElectionInfo:(id)a3;
@end

@implementation CONodeController

- (CONodeController)initWithDiscoveryRecord:(id)a3 executionContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = CONodeController;
  v9 = [(CONodeController *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalRecord, a3);
    v11 = [MEMORY[0x277CBEB18] array];
    records = v10->_records;
    v10->_records = v11;

    v13 = [MEMORY[0x277CBEB18] array];
    transports = v10->_transports;
    v10->_transports = v13;

    objc_storeStrong(&v10->_executionContext, a4);
    v15 = [[CONode alloc] initWithRecord:v7 executionContext:v8 delegate:v10];
    node = v10->_node;
    v10->_node = v15;

    v17 = [MEMORY[0x277CBEB38] dictionary];
    sentElements = v10->_sentElements;
    v10->_sentElements = v17;

    v19 = [MEMORY[0x277CBEB38] dictionary];
    knownDiscoveryRecords = v10->_knownDiscoveryRecords;
    v10->_knownDiscoveryRecords = v19;
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CONodeController *)self executionContext];
  v7 = [v6 constituentForMe];
  v8 = [(CONodeController *)self remote];
  v9 = [(CONodeController *)self node];
  v10 = [v3 stringWithFormat:@"<%@: %p, /\n, %@->%@/\n, State: %ld/\n, Records:%@, Transports: %@>", v5, self, v7, v8, objc_msgSend(v9, "state"), self->_records, self->_transports];

  return v10;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CONodeController *)self executionContext];
  v5 = [v4 meshControllerDescription];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"[m:%@] <%@: %p>", v5, v7, self];

  return v8;
}

- (id)remote
{
  v2 = [(CONodeController *)self node];
  v3 = [v2 remote];

  return v3;
}

- (COTransportProtocol)preferredTransport
{
  preferredTransport = self->_preferredTransport;
  if (!preferredTransport)
  {
    v4 = [(CONodeController *)self computePreferredTransport];
    v5 = self->_preferredTransport;
    self->_preferredTransport = v4;

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
  v2 = [(CONodeController *)self transports];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;

          v5 = v9;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v3 = [(CONodeController *)self node];
  v4 = [v3 remote];

  v5 = [(CONodeController *)self preferredTransport];
  v6 = [(CONodeController *)self node];
  v7 = [v6 meConstituent];
  v8 = [(CONodeController *)self node];
  v9 = [v8 remote];
  v10 = [v7 isEqual:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v5;
    v11 = [v26 client];
    v12 = v11;
    if (v10)
    {
      v13 = [v11 localDevice];

      v14 = @"SELF";
    }

    else
    {
      v13 = [v11 destinationDevice];

      v14 = [v13 name];
    }

    v17 = [v13 identifier];
    v18 = [(CONodeController *)self node];
    v19 = [v18 connectionType];

    if (v19 > 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = off_278E191D0[v19];
    }

    v20 = [(CONodeController *)self node];
    v21 = [v20 discoveryType];

    v22 = 67;
    if ((v21 & 2) == 0)
    {
      v22 = 99;
    }

    v23 = 82;
    if ((v21 & 1) == 0)
    {
      v23 = 114;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c", v23, v22];
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v17 = 0;
  }

  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"[COMeshController : %p] %@ [Name] - %@ [Rapport ID] - %@ [Conn] - %@ [Disc] - %@", self, v4, v14, v17, v16, v15];

  return v24;
}

- (id)nodeAfterReconciliation
{
  v3 = [(CONodeController *)self node];
  v4 = [v3 HomeKitIdentifier];

  if (!v4)
  {
    [(CONodeController *)self reconcileNode];
  }

  return v3;
}

- (void)reconcileNode
{
  v3 = [(CONodeController *)self node];
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(CONodeController *)v4 records];
  v6 = [v5 copy];

  objc_sync_exit(v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__CONodeController_reconcileNode__block_invoke;
  v8[3] = &unk_278E18F70;
  v9 = v3;
  v7 = v3;
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

- (void)activateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CONodeController *)self executionContext];
  [v5 assertDispatchQueue];

  v6 = [(CONodeController *)self preferredTransport];

  if (v6)
  {
    v4[2](v4, 0);
  }

  else
  {
    v7 = self;
    objc_sync_enter(v7);
    v8 = [(CONodeController *)v7 records];
    v9 = [(CONodeController *)v7 originalRecord];
    [v8 addObject:v9];

    objc_sync_exit(v7);
    v10 = [(CONodeController *)v7 originalRecord];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__CONodeController_activateWithCompletionHandler___block_invoke;
    v11[3] = &unk_278E18F98;
    v12 = v4;
    [(CONodeController *)v7 _createAndActivateTransportForRecord:v10 withCompletionHandler:v11];
  }
}

- (void)_createAndActivateTransportForRecord:(id)a3 withCompletionHandler:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v6 = a4;
  v7 = [(CONodeController *)self executionContext];
  v8 = [v29 newTransportWithExecutionContext:v7];

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
    v10 = [(CONodeController *)self shortDescription];
    *from = 138543874;
    *&from[4] = v10;
    v52 = 2112;
    v53 = v8;
    v54 = 2112;
    v55 = v29;
    _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ created new transport %@ with record %@", from, 0x20u);
  }

  [v8 setDelegate:self];
  v11 = [(CONodeController *)self transports];
  [v11 addObject:v8];

  v12 = [(CONodeController *)self computePreferredTransport];
  preferredTransport = self->_preferredTransport;
  self->_preferredTransport = v12;

  v14 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(CONodeController *)self shortDescription];
    v16 = self->_preferredTransport;
    *from = 138543874;
    *&from[4] = v15;
    v52 = 2048;
    v53 = v8;
    v54 = 2048;
    v55 = v16;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ recomputing preferred transport after addition of %p. Preferred transport = %p", from, 0x20u);
  }

  v17 = [(CONodeController *)self originalRecord];
  [(CONodeController *)self _adjustNodeDiscoveryInformationUsingRecord:v17];

  objc_initWeak(from, self);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __79__CONodeController__createAndActivateTransportForRecord_withCompletionHandler___block_invoke_64;
  v41[3] = &unk_278E18FE8;
  objc_copyWeak(&v44, from);
  objc_copyWeak(&v45, &location);
  v30 = v8;
  v42 = v30;
  v28 = v6;
  v43 = v28;
  v18 = MEMORY[0x245D5FF10](v41);
  v19 = [(CONodeController *)self acceptableCommands];
  self->_expectedRegisteredCommandCount = [v19 count];

  if (!self->_expectedRegisteredCommandCount)
  {
    v18[2](v18);
    goto LABEL_22;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v20 = [(CONodeController *)self acceptableCommands];
  v21 = [v20 countByEnumeratingWithState:&v37 objects:v50 count:16];
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
        objc_enumerationMutation(v20);
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

    v21 = [v20 countByEnumeratingWithState:&v37 objects:v50 count:16];
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

- (void)invalidateWithReason:(int64_t)a3
{
  v5 = [(CONodeController *)self executionContext];
  [v5 assertDispatchQueue];

  v6 = self;
  objc_sync_enter(v6);
  records = v6->_records;
  v6->_records = 0;

  objc_sync_exit(v6);
  transports = v6->_transports;
  v6->_transports = 0;

  v12 = [(CONodeController *)v6 node];
  v9 = [v12 lastElectionInfoSent];
  v10 = [(CONodeController *)v6 node];
  v11 = [v10 lastElectionInfoReceived];
  [(CONodeController *)v6 _updateNodeState:4 currentElectionInfo:v9 incomingElectionInfo:v11 reason:a3];
}

- (void)stopWithCompletionHandler:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CONodeController *)self executionContext];
  [v5 assertDispatchQueue];

  v6 = [(CONodeController *)self node];
  v7 = [v6 lastElectionInfoSent];
  v8 = [(CONodeController *)self node];
  v9 = [v8 lastElectionInfoReceived];
  [(CONodeController *)self _updateNodeState:3 currentElectionInfo:v7 incomingElectionInfo:v9 reason:15];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [(CONodeController *)self acceptableCommands];
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v28 + 1) + 8 * v13);
      if ([v14 isSubclassOfClass:objc_opt_class()])
      {
        v15 = [(CONodeController *)self preferredTransport];
        [v15 deregisterRequestForClass:v14];
      }

      else
      {
        if (![v14 isSubclassOfClass:objc_opt_class()])
        {
          goto LABEL_11;
        }

        v15 = [(CONodeController *)self preferredTransport];
        [v15 deregisterCommandForClass:v14];
      }

LABEL_11:
      ++v13;
    }

    while (v11 != v13);
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
  v17 = v4;
  v25 = v17;
  v18 = MEMORY[0x245D5FF10](v24);
  v19 = [(CONodeController *)self preferredTransport];

  if (v19)
  {
    v20 = [(CONodeController *)self preferredTransport];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __46__CONodeController_stopWithCompletionHandler___block_invoke_2;
    v22[3] = &unk_278E17038;
    v23 = v18;
    [v20 sendCommand:v16 withCompletionHandler:v22];
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

- (void)addDiscoveryRecord:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CONodeController *)self executionContext];
  [v5 assertDispatchQueue];

  v6 = [(CONodeController *)self node];
  [v6 discoveryRecordAdded:v4];

  v7 = self;
  objc_sync_enter(v7);
  v8 = [(CONodeController *)v7 records];
  objc_sync_exit(v7);

  if ([v4 conformsToProtocol:&unk_2857CCAF8])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v42 count:16];
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
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v31 + 1) + 8 * v12) conformsToProtocol:&unk_2857CCAF8])
          {

            goto LABEL_31;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v31 objects:v42 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  if ([v4 conformsToProtocol:&unk_2857CBE98])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = v8;
    v13 = [v9 countByEnumeratingWithState:&v27 objects:v41 count:16];
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
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v27 + 1) + 8 * v15) conformsToProtocol:&unk_2857CBE98])
          {

            goto LABEL_31;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v9 countByEnumeratingWithState:&v27 objects:v41 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  v16 = v7;
  objc_sync_enter(v16);
  v17 = [(CONodeController *)v16 records];
  [v17 addObject:v4];

  v9 = [(CONodeController *)v16 records];

  objc_sync_exit(v16);
  v18 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(CONodeController *)v16 shortDescription];
    *buf = 138543874;
    v36 = v19;
    v37 = 2112;
    v38 = v4;
    v39 = 2112;
    v40 = v9;
    _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding discovery record %@ to our list. New list = %@", buf, 0x20u);
  }

  if ([v4 conformsToProtocol:&unk_2857CCAF8] && (-[CONodeController rapportTransport](v16, "rapportTransport"), v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
  {
    v21 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(CONodeController *)v16 shortDescription];
      *buf = 138543618;
      v36 = v22;
      v37 = 2112;
      v38 = v4;
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
    v25 = v4;
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

- (void)removeDiscoveryRecord:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CONodeController *)self executionContext];
  [v5 assertDispatchQueue];

  v6 = &selRef_state;
  v7 = [v4 conformsToProtocol:&unk_2857CCAF8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(CONodeController *)self transports];
  v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v25 = self;
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
        v13 = [v12 record];
        if ((v7 & [v13 conformsToProtocol:v6[458]]) == 1)
        {
          [v4 IDSIdentifier];
          v14 = v10;
          v15 = v7;
          v16 = v4;
          v18 = v17 = v6;
          v19 = [v13 IDSIdentifier];
          v20 = [v18 isEqualToString:v19];

          v6 = v17;
          v4 = v16;
          v7 = v15;
          v10 = v14;
          v9 = v26;
          if (v20)
          {
            goto LABEL_13;
          }
        }

        else if ([v4 isEqual:v13])
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
    self = v25;
  }

  else
  {
    v21 = 0;
  }

  v22 = [(CONodeController *)self node];
  [v22 discoveryRecordRemoved:v4];

  v23 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2857B6328 code:-5001 userInfo:0];
  [v21 invalidateWithError:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)sendCommand:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CONodeController *)self executionContext];
  [v8 assertDispatchQueue];

  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  v9 = [(CONodeController *)self sentElements];
  v10 = MEMORY[0x245D5FF10](v7);
  [v9 setObject:v10 forKey:v6];

  objc_initWeak(&location, self);
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
  {
    v11 = [(CONodeController *)self preferredTransport];
    v12 = [v6 command];
    v13 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__CONodeController_sendCommand_withCompletionHandler___block_invoke;
    v17[3] = &unk_278E19060;
    v14 = &v18;
    objc_copyWeak(&v18, &location);
    v17[4] = v6;
    [v11 sendRequest:v12 withResponseHandler:v17];
  }

  else
  {
    v11 = [(CONodeController *)self preferredTransport];
    v12 = [v6 command];
    v13 = v15;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__CONodeController_sendCommand_withCompletionHandler___block_invoke_133;
    v15[3] = &unk_278E17450;
    v14 = &v16;
    objc_copyWeak(&v16, &location);
    v15[4] = v6;
    [v11 sendCommand:v12 withCompletionHandler:v15];
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
  v3 = [(CONodeController *)self executionContext];
  [v3 assertDispatchQueue];

  v4 = [(CONodeController *)self preferredTransport];
  [(CONodeController *)self _sendPingUsingTransport:v4];
}

- (void)markInactive
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CONodeController *)self shortDescription];
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ clearing remote constituent identifier to nil", &v8, 0xCu);
  }

  v5 = [(CONodeController *)self node];
  [v5 setRemote:0];

  v6 = [(CONodeController *)self preferredTransport];
  [v6 setRemote:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)computePreferredTransport
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(CONodeController *)self executionContext];
  [v3 assertDispatchQueue];

  v4 = [(CONodeController *)self transports];
  v5 = [v4 count];

  if (v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(CONodeController *)self transports];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v5 = v11;

      if (v5)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:
    }

    v12 = [(CONodeController *)self transports];
    v5 = [v12 firstObject];
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)updateElectionInfo:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CONodeController *)self executionContext];
  [v5 assertDispatchQueue];

  v6 = [(CONodeController *)self executionContext];
  v7 = [v6 leaderElectionConfigured];

  if (v7)
  {
    v8 = [(CONodeController *)self node];
    v9 = [v8 state];

    if (self->_activated && (v9 - 5) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = [(CONodeController *)self _nodeControllerStateFromNodeState];
      if (v10 > 4)
      {
        if (v10 == 5)
        {
          v22 = [(CONodeController *)self node];
          v23 = [v22 state];

          if (v23 == 5)
          {
            v24 = [(CONodeController *)self node];
            v25 = [v24 lastElectionInfoSent];
            v26 = [v4 isEqual:v25];

            if ((v26 & 1) == 0)
            {
              v27 = [(CONodeController *)self node];
              v11 = [v27 backoffResponse];

              v28 = COCoreLogForCategory(16);
              v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
              if (v11)
              {
                if (v29)
                {
                  v30 = [(CONodeController *)self shortDescription];
                  v33 = 138543618;
                  v34 = v30;
                  v35 = 2048;
                  v36 = [v4 generation];
                  _os_log_impl(&dword_244378000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ delayed BALLOT (%llu) response since our ballot or generation has changed", &v33, 0x16u);
                }

                v12 = [(CONodeController *)self _ballotResponseWithElectionInfo:v4];
                (v11)[2](v11, v12, 0);
                v31 = [(CONodeController *)self node];
                [v31 setBackoffResponse:0];
              }

              else
              {
                if (v29)
                {
                  v32 = [(CONodeController *)self shortDescription];
                  v33 = 138543618;
                  v34 = v32;
                  v35 = 2048;
                  v36 = [v4 generation];
                  _os_log_impl(&dword_244378000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ our ballot or generation has changed. Issuing a new election with generation (%llu)", &v33, 0x16u);
                }

                v12 = [(CONodeController *)self _electionRequestWithElectionInfo:v4];
                v31 = [(CONodeController *)self preferredTransport];
                [(CONodeController *)self _sendElectionRequest:v12 usingTransport:v31];
              }

              goto LABEL_16;
            }
          }
        }

        else if (v10 == 6)
        {
          v16 = [(CONodeController *)self node];
          v17 = [v16 lastElectionInfoSent];
          v18 = [v4 hasSameGenerationAndLeader:v17];

          if ((v18 & 1) == 0)
          {
            v19 = COCoreLogForCategory(16);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [(CONodeController *)self shortDescription];
              v33 = 138543618;
              v34 = v20;
              v35 = 2048;
              v36 = [v4 generation];
              _os_log_impl(&dword_244378000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ starting ELECTION (%llu)", &v33, 0x16u);
            }

            v11 = [(CONodeController *)self _electionRequestWithElectionInfo:v4];
            v12 = [(CONodeController *)self preferredTransport];
            [(CONodeController *)self _sendElectionRequest:v11 usingTransport:v12];
            goto LABEL_16;
          }
        }
      }

      else
      {
        if (!v10)
        {
          v11 = [(CONodeController *)self _electionRequestWithElectionInfo:v4];
          v12 = [(CONodeController *)self preferredTransport];
          v13 = self;
          v14 = v11;
          v15 = 1;
          goto LABEL_15;
        }

        if (v10 == 2)
        {
          v11 = [(CONodeController *)self _electionRequestWithElectionInfo:v4];
          v12 = [(CONodeController *)self preferredTransport];
          v13 = self;
          v14 = v11;
          v15 = 2;
LABEL_15:
          [(CONodeController *)v13 _sendProbeRequest:v14 withState:v15 usingTransport:v12];
LABEL_16:
        }
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)inquireForTransport:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 record];
  v6 = [v5 requiresInquiry];

  v7 = COCoreLogForCategory(16);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138543362;
      v15 = self;
      _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ attempting to inquire", buf, 0xCu);
    }

    v9 = -[_COMeshControllerPing initWithTimeout:listeningPort:]([_COMeshControllerPing alloc], "initWithTimeout:listeningPort:", [v4 listeningPort], 0.0);
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
    [v4 sendRequest:v9 withResponseHandler:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v8)
    {
      v10 = [(CONodeController *)self shortDescription];
      *buf = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v4;
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

- (void)_sendProbeRequest:(id)a3 withState:(int64_t)a4 usingTransport:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (self->_activated)
  {
    v10 = [(CONodeController *)self node];
    v11 = [v10 hasOutstandingProbe];

    if ((v11 & 1) == 0)
    {
      v12 = [MEMORY[0x277CBEB68] null];
      [v9 isEqual:v12];

      v13 = COCoreLogForCategory(16);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(CONodeController *)self shortDescription];
        *buf = 138543618;
        v25 = v14;
        v26 = 2112;
        v27 = v8;
        _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ probing with election request %@", buf, 0x16u);
      }

      v15 = [[COElectionInfo alloc] initWithCommand:v8];
      v16 = [(CONodeController *)self node];
      v17 = [v16 lastElectionInfoReceived];
      [(CONodeController *)self _updateNodeState:a4 currentElectionInfo:v15 incomingElectionInfo:v17 reason:0];

      v18 = [(CONodeController *)self node];
      [v18 setLastElectionInfoSent:v15];

      v19 = [(CONodeController *)self node];
      [v19 setOutstandingProbe:1];

      objc_initWeak(buf, self);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __63__CONodeController__sendProbeRequest_withState_usingTransport___block_invoke;
      v21[3] = &unk_278E19060;
      objc_copyWeak(&v23, buf);
      v22 = v9;
      [v22 sendRequest:v8 withResponseHandler:v21];

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

- (void)_sendElectionRequest:(id)a3 usingTransport:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_activated)
  {
    v8 = [(CONodeController *)self node];
    v9 = [v8 hasOutstandingRequest];

    if ((v9 & 1) == 0)
    {
      v10 = [[COElectionInfo alloc] initWithCommand:v6];
      v11 = [(CONodeController *)self node];
      v12 = [v11 lastElectionInfoReceived];
      [(CONodeController *)self _updateNodeState:6 currentElectionInfo:v10 incomingElectionInfo:v12 reason:10];

      v13 = [[COElectionInfo alloc] initWithCommand:v6];
      v14 = [(CONodeController *)self node];
      [v14 setLastElectionInfoSent:v13];

      objc_initWeak(&location, self);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __56__CONodeController__sendElectionRequest_usingTransport___block_invoke;
      v15[3] = &unk_278E19060;
      objc_copyWeak(&v17, &location);
      v16 = v7;
      [v16 sendRequest:v6 withResponseHandler:v15];

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

- (void)_sendPingUsingTransport:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_activated)
  {
    if ([v4 conformsToProtocol:&unk_2857CB1B0])
    {
      v6 = [(CONodeController *)self node];
      v7 = [v6 hasPendingPing];

      if ((v7 & 1) == 0)
      {
        v8 = [(CONodeController *)self node];
        [v8 setPendingPing:1];

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

- (void)_sendBallotResponse:(id)a3 usingTransport:(id)a4 callback:(id)a5
{
  if (self->_activated)
  {
    v8 = a5;
    v9 = a3;
    v14 = [[COElectionInfo alloc] initWithCommand:v9];
    v10 = [(CONodeController *)self node];
    v11 = [v10 lastElectionInfoReceived];
    [(CONodeController *)self _updateNodeState:7 currentElectionInfo:v14 incomingElectionInfo:v11 reason:10];

    v12 = [[COElectionInfo alloc] initWithCommand:v9];
    v13 = [(CONodeController *)self node];
    [v13 setLastElectionInfoSent:v12];

    v8[2](v8, v9, 0);
  }
}

- (void)_sendVoteRequest:(id)a3 usingTransport:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_activated)
  {
    v8 = [(CONodeController *)self node];
    v9 = [v8 hasOutstandingRequest];

    if ((v9 & 1) == 0)
    {
      v10 = [[COElectionInfo alloc] initWithCommand:v6];
      v11 = [(CONodeController *)self node];
      v12 = [v11 lastElectionInfoReceived];
      [(CONodeController *)self _updateNodeState:8 currentElectionInfo:v10 incomingElectionInfo:v12 reason:10];

      v13 = [[COElectionInfo alloc] initWithCommand:v6];
      v14 = [(CONodeController *)self node];
      [v14 setLastElectionInfoSent:v13];

      objc_initWeak(&location, self);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __52__CONodeController__sendVoteRequest_usingTransport___block_invoke;
      v15[3] = &unk_278E19060;
      objc_copyWeak(&v17, &location);
      v16 = v7;
      [v16 sendRequest:v6 withResponseHandler:v15];

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

- (void)_sendAcceptResponse:(id)a3 usingTransport:(id)a4 callback:(id)a5
{
  if (self->_activated)
  {
    v8 = a5;
    v9 = a3;
    v14 = [[COElectionInfo alloc] initWithCommand:v9];
    v10 = [(CONodeController *)self node];
    v11 = [v10 lastElectionInfoReceived];
    [(CONodeController *)self _updateNodeState:9 currentElectionInfo:v14 incomingElectionInfo:v11 reason:10];

    v12 = [[COElectionInfo alloc] initWithCommand:v9];
    v13 = [(CONodeController *)self node];
    [v13 setLastElectionInfoSent:v12];

    v8[2](v8, v9, 0);
  }
}

- (void)_handleElectionRequest:(id)a3 fromTransport:(id)a4 callback:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_activated)
  {
    v11 = [[COElectionInfo alloc] initWithCommand:v8];
    v12 = [(CONodeController *)self node];
    v30 = [v12 lastElectionInfoReceived];

    v13 = [(CONodeController *)self node];
    [v13 setLastElectionInfoReceived:v11];

    v14 = [v8 ballot];
    [(CONodeController *)self _updateKnownDiscovery:v14];

    v15 = [v9 remote];
    v16 = [(COElectionInfo *)v11 generation];
    v29 = [v8 variant];
    v31 = [(COElectionInfo *)v11 ballot];
    v17 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(CONodeController *)self shortDescription];
      v26 = [v15 software];
      v25 = [v8 rapportTransactionID];
      v28 = [v31 candidates];
      v24 = [v28 count];
      v18 = [v31 candidates];
      v19 = [v18 firstObject];

      *buf = 138545154;
      v40 = v27;
      v41 = 2048;
      v42 = v16;
      v43 = 1024;
      v44 = v29;
      v45 = 2048;
      v46 = v9;
      v47 = 2114;
      v48 = v26;
      v49 = 2048;
      v50 = v25;
      v51 = 2048;
      v52 = v24;
      v53 = 2114;
      v54 = v19;
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
    v21 = v15;
    v34 = v21;
    v22 = v30;
    v35 = v22;
    v36 = v9;
    v37 = v10;
    [(CONodeController *)self _updateDelegateWithBallotCommand:v8 withCompletionHandler:v32];

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

- (void)_handleBallotResponse:(id)a3 fromTransport:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_activated)
  {
    v8 = [[COElectionInfo alloc] initWithCommand:v6];
    v9 = [(CONodeController *)self node];
    [v9 setLastElectionInfoReceived:v8];

    v10 = [v6 ballot];
    [(CONodeController *)self _updateKnownDiscovery:v10];

    v23 = [v7 remote];
    v11 = [v6 variant];
    v12 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(CONodeController *)self shortDescription];
      v20 = [(COElectionInfo *)v8 generation];
      v21 = [v23 software];
      v19 = [v6 rapportTransactionID];
      v13 = [(COElectionInfo *)v8 ballot];
      v14 = [v13 candidates];
      v15 = [v14 count];
      v16 = [(COElectionInfo *)v8 leader];
      *buf = 138545154;
      v29 = v22;
      v30 = 2048;
      v31 = v20;
      v32 = 1024;
      v33 = v11;
      v34 = 2048;
      v35 = v7;
      v36 = 2114;
      v37 = v21;
      v38 = 2048;
      v39 = v19;
      v40 = 2048;
      v41 = v15;
      v42 = 2114;
      v43 = v16;
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
    v26 = v7;
    [(CONodeController *)self _updateDelegateWithBallotCommand:v6 withCompletionHandler:v24];

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

- (void)_handleVoteRequest:(id)a3 fromTransport:(id)a4 callback:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_activated)
  {
    v11 = [[COElectionInfo alloc] initWithCommand:v8];
    v12 = [(CONodeController *)self node];
    [v12 setLastElectionInfoReceived:v11];

    v13 = [v8 ballot];
    [(CONodeController *)self _updateKnownDiscovery:v13];

    v26 = [v9 remote];
    v25 = [(COElectionInfo *)v11 generation];
    v24 = [v8 variant];
    v27 = [(COElectionInfo *)v11 ballot];
    v14 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(CONodeController *)self shortDescription];
      v22 = [v26 software];
      v21 = [v8 rapportTransactionID];
      v15 = [v27 candidates];
      v16 = [v15 count];
      v17 = [v27 candidates];
      v18 = [v17 firstObject];

      *buf = 138545154;
      v34 = v23;
      v35 = 2048;
      v36 = v25;
      v37 = 1024;
      v38 = v24;
      v39 = 2048;
      v40 = v9;
      v41 = 2114;
      v42 = v22;
      v43 = 2048;
      v44 = v21;
      v45 = 2048;
      v46 = v16;
      v47 = 2114;
      v48 = v18;
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
    v30 = v9;
    v31 = v10;
    [(CONodeController *)self _updateDelegateWithBallotCommand:v8 withCompletionHandler:v28];

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

- (void)_handleAcceptResponse:(id)a3 fromTransport:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_activated)
  {
    v8 = [[COElectionInfo alloc] initWithCommand:v6];
    v9 = [(CONodeController *)self node];
    [v9 setLastElectionInfoReceived:v8];

    v10 = [v6 ballot];
    [(CONodeController *)self _updateKnownDiscovery:v10];

    v23 = [v7 remote];
    v22 = [(COElectionInfo *)v8 generation];
    v21 = [v6 variant];
    v24 = [(COElectionInfo *)v8 ballot];
    v11 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(CONodeController *)self shortDescription];
      v19 = [v23 software];
      v12 = [v6 rapportTransactionID];
      v13 = [v24 candidates];
      v14 = [v13 count];
      v15 = [v24 candidates];
      v16 = [v15 firstObject];

      *buf = 138545154;
      v30 = v20;
      v31 = 2048;
      v32 = v22;
      v33 = 1024;
      v34 = v21;
      v35 = 2048;
      v36 = v7;
      v37 = 2114;
      v38 = v19;
      v39 = 2048;
      v40 = v12;
      v41 = 2048;
      v42 = v14;
      v43 = 2114;
      v44 = v16;
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
    v27 = v7;
    [(CONodeController *)self _updateDelegateWithBallotCommand:v6 withCompletionHandler:v25];

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

- (void)_handleWithdraw:(id)a3 fromTransport:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_activated)
  {
    v5 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CONodeController *)self shortDescription];
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ received a withdraw command", &v12, 0xCu);
    }

    v7 = [(CONodeController *)self node];
    v8 = [v7 lastElectionInfoSent];
    v9 = [(CONodeController *)self node];
    v10 = [v9 lastElectionInfoReceived];
    [(CONodeController *)self _updateNodeState:1 currentElectionInfo:v8 incomingElectionInfo:v10 reason:17];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleResponseToCoreRequest:(id)a3 response:(id)a4 error:(id)a5 usingTransport:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();
  if (v12)
  {
    if (isKindOfClass)
    {
      [(CONodeController *)self _handlePingError:v12 fromTransport:v13];
      goto LABEL_27;
    }

    v17 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v31 = [(CONodeController *)self shortDescription];
      v32 = 138544130;
      v33 = v31;
      v34 = 2112;
      v35 = v10;
      v36 = 2112;
      v37 = v12;
      v38 = 2048;
      v39 = v13;
      _os_log_error_impl(&dword_244378000, v17, OS_LOG_TYPE_ERROR, "%{public}@ request %@ failed with error %@ on transport %p", &v32, 0x2Au);
    }

    v18 = [(CONodeController *)self preferredTransport];
    v19 = v18;
    if (v18 == v13)
    {
      v20 = [(CONodeController *)self transports];
      v21 = [v20 count];

      if (v21 >= 2)
      {
        v22 = COCoreLogForCategory(16);
        if (!os_log_type_enabled(&v22->super, OS_LOG_TYPE_DEFAULT))
        {
LABEL_26:

          goto LABEL_27;
        }

        v23 = [(CONodeController *)self shortDescription];
        v24 = [(CONodeController *)self state];
        v32 = 138543618;
        v33 = v23;
        v34 = 2048;
        v35 = v24;
        _os_log_impl(&dword_244378000, &v22->super, OS_LOG_TYPE_DEFAULT, "%{public}@ alternate transport available, remaining in state %ld", &v32, 0x16u);
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
    }

    v22 = [[COElectionInfo alloc] initWithCommand:v10];
    v23 = [[COElectionInfo alloc] initWithCommand:v11];
    v25 = [v12 domain];
    if ([v25 isEqualToString:*MEMORY[0x277D44250]])
    {
      v26 = [v12 code];

      if (v26 == -6714)
      {
        v27 = 8;
LABEL_24:
        [(CONodeController *)self _updateNodeState:1 currentElectionInfo:v22 incomingElectionInfo:v23 reason:v27];
        goto LABEL_25;
      }
    }

    else
    {
    }

    v28 = [v12 domain];
    if ([v28 isEqualToString:@"COMeshNodeErrorDomain"])
    {
      v29 = [v12 code];

      if (v29 == -4000)
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
    [(CONodeController *)self _handleBallotResponse:v11 fromTransport:v13];
  }

  else if (v16)
  {
    [(CONodeController *)self _handleAcceptResponse:v11 fromTransport:v13];
  }

LABEL_27:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_handlePingError:(id)a3 fromTransport:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CONodeController *)self executionContext];
  [v8 assertDispatchQueue];

  v9 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v27 = [(CONodeController *)self shortDescription];
    v28 = 138543874;
    v29 = v27;
    v30 = 2112;
    v31 = v6;
    v32 = 2048;
    v33 = v7;
    _os_log_error_impl(&dword_244378000, v9, OS_LOG_TYPE_ERROR, "%{public}@ ping error %@ on transport %p", &v28, 0x20u);
  }

  v10 = [v6 domain];
  if ([v10 isEqualToString:*MEMORY[0x277D44250]])
  {
    if ([v6 code] == -6722)
    {

LABEL_13:
      v24 = COCoreLogForCategory(16);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(CONodeController *)self shortDescription];
        v28 = 138543362;
        v29 = v25;
        _os_log_impl(&dword_244378000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Going dormant", &v28, 0xCu);
      }

      v11 = [(CONodeController *)self node];
      v15 = [v11 lastElectionInfoSent];
      v16 = [(CONodeController *)self node];
      v17 = [v16 lastElectionInfoReceived];
      if ([v6 code] == -6722)
      {
        v22 = 11;
      }

      else
      {
        v22 = 12;
      }

      v18 = self;
      v19 = 2;
      v20 = v15;
      v21 = v17;
LABEL_19:
      [(CONodeController *)v18 _updateNodeState:v19 currentElectionInfo:v20 incomingElectionInfo:v21 reason:v22];

      goto LABEL_20;
    }

    v23 = [v6 code];

    if (v23 == -6714)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v11 = [v6 domain];
  if (![v11 isEqualToString:@"COMeshNodeErrorDomain"])
  {
LABEL_20:

    goto LABEL_21;
  }

  v12 = [v6 code];

  if (v12 == -4000)
  {
    v13 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(CONodeController *)self shortDescription];
      v28 = 138543362;
      v29 = v14;
      _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ ping failed with a framing error. Marking node as discovered", &v28, 0xCu);
    }

    v11 = [(CONodeController *)self node];
    v15 = [v11 lastElectionInfoSent];
    v16 = [(CONodeController *)self node];
    v17 = [v16 lastElectionInfoReceived];
    v18 = self;
    v19 = 1;
    v20 = v15;
    v21 = v17;
    v22 = 13;
    goto LABEL_19;
  }

LABEL_21:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_updateDelegateWithBallotCommand:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CONodeController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75__CONodeController__updateDelegateWithBallotCommand_withCompletionHandler___block_invoke;
    v10[3] = &unk_278E19128;
    v11 = v7;
    [v8 nodeController:self didReceiveElectionCmd:v6 withCompletionHandler:v10];
  }

  else
  {
    v9 = [[COElectionInfo alloc] initWithCommand:v6];
    (*(v7 + 2))(v7, v9);
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

- (void)_updateNodeState:(int64_t)a3 currentElectionInfo:(id)a4 incomingElectionInfo:(id)a5 reason:(int64_t)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v46 = a4;
  v9 = a5;
  v10 = [(CONodeController *)self transports];
  if ([v10 count] == 1)
  {
    v11 = [v10 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      a3 = 14;
    }
  }

  v13 = [(CONodeController *)self _nodeControllerStateFromNodeState];
  if (!-[CONodeController _isActiveState:](self, "_isActiveState:", a3) || v13 != 6 || ([v46 hasSameGenerationAndLeader:v9] & 1) == 0)
  {
    v14 = [(CONodeController *)self node];
    v15 = [v14 isInElectionState];

    v16 = [(CONodeController *)self node];
    [v16 setState:a3];

    v17 = [(CONodeController *)self node];
    v18 = [v17 isInElectionState];

    v19 = [(CONodeController *)self _nodeControllerStateFromNodeState];
    if (v13 != v19)
    {
      v20 = COCoreLogForCategory(16);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v44 = [(CONodeController *)self shortDescription];
        *buf = 138543874;
        v50 = v44;
        v51 = 2048;
        v52 = v13;
        v53 = 2048;
        v54 = v19;
        _os_log_debug_impl(&dword_244378000, v20, OS_LOG_TYPE_DEBUG, "%{public}@ moving from state %lu to state %lu", buf, 0x20u);
      }
    }

    if (!(v18 & 1 | ((v15 & 1) == 0)))
    {
      v21 = [(CONodeController *)self node];
      v22 = [v21 backoffBucket] == 0;

      if (!v22)
      {
        v23 = [(CONodeController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [v23 backedOffNodeMovedOutOfElection:self];
        }
      }
    }

    if (v18)
    {
      if (v15)
      {
        goto LABEL_21;
      }

      v24 = [(CONodeController *)self node];
      [v24 setTotalBackedOffTime:0];

      v25 = [(CONodeController *)self knownDiscoveryRecords];
      [v25 removeAllObjects];
    }

    else
    {
      v26 = [(CONodeController *)self node];
      [v26 setBackoffTimer:0];

      v27 = [(CONodeController *)self node];
      [v27 setBackoffResponse:0];

      v25 = [(CONodeController *)self node];
      [v25 setBackoffBucket:0];
    }

LABEL_21:
    if (a3 == 5)
    {
      v28 = [(CONodeController *)self node];
      v29 = [v28 backoffTimer];
      v30 = v29 == 0;

      if (v30)
      {
        v31 = COCoreLogForCategory(16);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [(CONodeController *)self shortDescription];
          *buf = 138543362;
          v50 = v32;
          _os_log_impl(&dword_244378000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ creating a backoff timer for bucket 0", buf, 0xCu);
        }

        v33 = [(CONodeController *)self executionContext];
        v34 = [v33 dispatchQueue];
        v35 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v34);

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
          v37 = [(CONodeController *)self node];
          [v37 setBackoffBucket:0];

          v38 = [(CONodeController *)self node];
          [v38 setBackoffTimer:v35];

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

    if (v13 != v19)
    {
      v40 = [(CONodeController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v41 = [(CONodeController *)self node];
        v42 = [v41 lastElectionInfoSent];
        [v40 nodeController:self didUpdateState:v13 to:v19 reason:a6 withLastSentElectionInfo:v42];
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
  v3 = [(CONodeController *)self node];
  v4 = [v3 backoffBucket];

  v5 = [(CONodeController *)self node];
  v6 = [v5 totalBackedOffTime];

  v7 = CONodeStateBackoffSeries[v4];
  v8 = [(CONodeController *)self node];
  [v8 setTotalBackedOffTime:v7 + v6];

  if (v4 <= 0xC)
  {
    v9 = [(CONodeController *)self node];
    [v9 setBackoffBucket:++v4];

    v7 = CONodeStateBackoffSeries[v4];
  }

  v10 = 1000000 * v7;
  v11 = dispatch_walltime(0, 1000000 * v7);
  v12 = [(CONodeController *)self node];
  v13 = [v12 backoffTimer];
  dispatch_source_set_timer(v13, v11, v10, 0);

  v14 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(CONodeController *)self shortDescription];
    *buf = 138412546;
    v31 = v15;
    v32 = 2048;
    v33 = v4;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%@ back off (%ld) firing", buf, 0x16u);
  }

  v16 = [(CONodeController *)self node];
  v17 = [v16 backoffResponse];

  v18 = [(CONodeController *)self node];
  v19 = [v18 lastElectionInfoReceived];
  if (v17)
  {
    v20 = [(CONodeController *)self _electionRequestWithElectionInfo:v19];

    v21 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(CONodeController *)self shortDescription];
      v23 = [v20 generation];
      *buf = 138543618;
      v31 = v22;
      v32 = 2048;
      v33 = v23;
      _os_log_impl(&dword_244378000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ delayed BALLOT (%llu) response", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __39__CONodeController_didFireBackoffTimer__block_invoke;
    v27[3] = &unk_278E19150;
    objc_copyWeak(&v29, buf);
    v28 = v17;
    [(CONodeController *)self _updateDelegateWithBallotCommand:v20 withCompletionHandler:v27];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  else
  {
    v20 = [(CONodeController *)self _ballotResponseWithElectionInfo:v19];

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

- (id)_electionRequestWithElectionInfo:(id)a3
{
  v4 = a3;
  v5 = [(CONodeController *)self preferredTransport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 listeningPort];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CONodeController *)self _electionInfoByDiffingCurrentElectionInfo:v4];
  v8 = [COMeshElectionRequest alloc];
  v9 = [v7 ballot];
  v10 = -[COMeshElectionRequest initWithBallot:generation:listeningPort:](v8, "initWithBallot:generation:listeningPort:", v9, [v7 generation], v6);

  return v10;
}

- (id)_ballotResponseWithElectionInfo:(id)a3
{
  v3 = [(CONodeController *)self _electionInfoByDiffingCurrentElectionInfo:a3];
  v4 = [COMeshBallotResponse alloc];
  v5 = [v3 ballot];
  v6 = -[COMeshBaseBallotResponse initWithBallot:generation:](v4, "initWithBallot:generation:", v5, [v3 generation]);

  return v6;
}

- (id)_voteRequestWithElectionInfo:(id)a3
{
  v3 = [(CONodeController *)self _electionInfoByDiffingCurrentElectionInfo:a3];
  v4 = [COMeshVoteRequest alloc];
  v5 = [v3 ballot];
  v6 = -[COMeshBaseBallotRequest initWithBallot:generation:](v4, "initWithBallot:generation:", v5, [v3 generation]);

  return v6;
}

- (id)_acceptResponseWithElectionInfo:(id)a3
{
  v3 = [(CONodeController *)self _electionInfoByDiffingCurrentElectionInfo:a3];
  v4 = [COMeshAcceptResponse alloc];
  v5 = [v3 ballot];
  v6 = -[COMeshBaseBallotResponse initWithBallot:generation:](v4, "initWithBallot:generation:", v5, [v3 generation]);

  return v6;
}

- (void)_updateKnownDiscovery:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277CFD0B8] isIPDiscoveryDiffingEnabled];
  v5 = v8;
  if (v4)
  {
    v6 = [v8 discovery];
    if (v6)
    {
      v7 = [(CONodeController *)self knownDiscoveryRecords];
      [v7 addEntriesFromDictionary:v6];
    }

    v5 = v8;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (id)_electionInfoByDiffingCurrentElectionInfo:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277CFD0B8] isIPDiscoveryDiffingEnabled])
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v24 = v4;
    v6 = [v4 ballot];
    v7 = [v6 discovery];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [v7 allKeys];
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = [(CONodeController *)self knownDiscoveryRecords];
          v15 = [v14 objectForKey:v13];

          v16 = [v7 objectForKey:v13];
          v17 = v16;
          if (!v15 || ([v16 isEqualToDiscoveryRecord:v15] & 1) == 0)
          {
            [v5 setObject:v17 forKey:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    v18 = [(CONodeController *)self knownDiscoveryRecords];
    [v18 addEntriesFromDictionary:v5];

    v4 = v24;
    v19 = [v24 ballot];
    v20 = [v19 mutableCopy];

    [v20 setDiscovery:v5];
    v21 = objc_alloc_init(COElectionInfo);
    -[COElectionInfo setGeneration:](v21, "setGeneration:", [v24 generation]);
    [(COElectionInfo *)v21 setBallot:v20];
  }

  else
  {
    v21 = v4;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_adjustNodeDiscoveryInformationUsingRecord:(id)a3
{
  v10 = a3;
  v4 = [(CONodeController *)self node];
  v5 = [v4 discoveryType];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 |= 2uLL;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 |= 1uLL;
      v6 = [(CONodeController *)self node];
      v7 = [v6 connectionType];

      if (!v7)
      {
        v8 = [(CONodeController *)self node];
        [v8 setConnectionType:1];
      }
    }
  }

  v9 = [(CONodeController *)self node];
  [v9 setDiscoveryType:v5];
}

- (void)transport:(id)a3 didReceiveCommand:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CONodeController *)self executionContext];
  [v8 assertDispatchQueue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CONodeController *)self _handleWithdraw:v7 fromTransport:v6];
  }

  else
  {
    v9 = [(CONodeController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v9 nodeController:self didReceiveCommand:v7];
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

- (void)transport:(id)a3 didReceiveRequest:(id)a4 callback:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CONodeController *)self executionContext];
  [v11 assertDispatchQueue];

  if (![(CONodeController *)self handlersRegistered])
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D44250] code:-6714 userInfo:0];
    v18 = COCoreLogForCategory(16);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      v10[2](v10, 0, v17);
LABEL_14:

      goto LABEL_15;
    }

    v19 = [(CONodeController *)self shortDescription];
    v25 = 138543874;
    v26 = v19;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v17;
    v20 = "%{public}@ acceptable commands not registered. Responding to %@ with error %@";
    v21 = v18;
    v22 = 32;
LABEL_24:
    _os_log_error_impl(&dword_244378000, v21, OS_LOG_TYPE_ERROR, v20, &v25, v22);

    goto LABEL_13;
  }

  if (!self->_activated)
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D44250] code:-6714 userInfo:0];
    v18 = COCoreLogForCategory(16);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v19 = [(CONodeController *)self shortDescription];
    v25 = 138544130;
    v26 = v19;
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = v17;
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
      [(CONodeController *)self _handleElectionRequest:v9 fromTransport:v8 callback:v10];
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CONodeController *)self _handleVoteRequest:v9 fromTransport:v8 callback:v10];
      goto LABEL_15;
    }

    v17 = [(CONodeController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v17 nodeController:self didReceiveRequest:v9 callback:v10];
    }

    else
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
      v10[2](v10, 0, v24);
    }

    goto LABEL_14;
  }

  v12 = [(CONodeController *)self executionContext];
  v13 = [v12 leaderElectionConfigured];

  if ((v13 & 1) == 0 && [(CONodeController *)self state]== 1)
  {
    v14 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(CONodeController *)self shortDescription];
      v25 = 138543362;
      v26 = v15;
      _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ discovered node with an incoming ping will move to processing", &v25, 0xCu);
    }

    [(CONodeController *)self _updateNodeState:14 currentElectionInfo:0 incomingElectionInfo:0 reason:2];
  }

  v16 = objc_alloc_init(COMeshResponse);
  (v10)[2](v10, v16, 0);

LABEL_15:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)a3 didReceiveError:(id)a4 forCommand:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [(CONodeController *)self executionContext];
  [v9 assertDispatchQueue];

  v10 = [(CONodeController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 nodeController:self didReceiveError:v7 forCommand:v8];
  }

  else
  {
    v11 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [(CONodeController *)self shortDescription];
      v14 = 138543874;
      v15 = v13;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v7;
      _os_log_error_impl(&dword_244378000, v11, OS_LOG_TYPE_ERROR, "%{public}@ failed to send a command %@ with error %@", &v14, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)a3 didInvalidateWithError:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [CONodeController transport:? didInvalidateWithError:?];
  }

  v9 = [(CONodeController *)self executionContext];
  [v9 assertDispatchQueue];

  v10 = [v6 record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [(CONodeController *)self acceptableCommands];
    self->_expectedRegisteredCommandCount = [v12 count];
  }

  else
  {
    v13 = self;
    objc_sync_enter(v13);
    v14 = [(CONodeController *)v13 records];
    v15 = [v6 record];
    [v14 removeObject:v15];

    objc_sync_exit(v13);
    v16 = [(CONodeController *)v13 transports];
    [v16 removeObject:v6];

    v12 = [(CONodeController *)v13 computePreferredTransport];
    v17 = COCoreLogForCategory(16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(CONodeController *)v13 shortDescription];
      v25 = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ recomputing preferred transport %@", &v25, 0x16u);
    }

    [(CONodeController *)v13 setPreferredTransport:v12];
    v19 = [(CONodeController *)v13 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v19 nodeController:v13 didRemoveTransport:v6 withError:v7];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [(CONodeController *)v13 node];
      v21 = [v20 lastElectionInfoSent];
      v22 = [(CONodeController *)v13 node];
      v23 = [v22 lastElectionInfoReceived];
      [(CONodeController *)v13 _updateNodeState:14 currentElectionInfo:v21 incomingElectionInfo:v23 reason:21];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)a3 shouldUpdateRemoteConstituent:(id)a4 to:(id)a5 forCommand:(id)a6 completionHandler:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a6;
  v17 = [(CONodeController *)self executionContext];
  [v17 assertDispatchQueue];

  v18 = [(CONodeController *)self executionContext];
  v19 = [v18 leaderElectionConfigured];

  if (v19)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v21 = COCoreLogForCategory(16);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(CONodeController *)self shortDescription];
        v30 = 138544130;
        v31 = v22;
        v32 = 2112;
        v33 = v13;
        v34 = 2112;
        v35 = v14;
        v36 = 2048;
        v37 = v12;
        _os_log_impl(&dword_244378000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ remote constituent will change from %@ to %@ on transport %p", &v30, 0x2Au);
      }

      v23 = [(CONodeController *)self node];
      [v23 setRemote:v14];

      v24 = [(CONodeController *)self ipDiscoveryRecord];
      if (v24)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = [v24 constituent];
          if (([v25 isEqual:v14] & 1) == 0)
          {
            v26 = [v24 mutableCopy];
            [v26 rollConstituent:v14];
            v27 = [[CODiscoveryRecord alloc] initWithDiscoveryRecord:v26];
            [(CONodeController *)self setIpDiscoveryRecord:v27];
            [v12 setRecord:v27];
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
      v24 = COCoreLogForCategory(16);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [(CONodeController *)self shortDescription];
        v30 = 138544130;
        v31 = v28;
        v32 = 2112;
        v33 = v13;
        v34 = 2112;
        v35 = v14;
        v36 = 2048;
        v37 = v12;
        _os_log_impl(&dword_244378000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ remote constituent will change from %@ to %@ on transport %p", &v30, 0x2Au);
      }

      goto LABEL_13;
    }
  }

  v15[2](v15, isKindOfClass & 1);

  v29 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)a3 willUpdateRemoteConstituent:(id)a4 to:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CONodeController *)self executionContext];
  [v11 assertDispatchQueue];

  v12 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(CONodeController *)self shortDescription];
    v20 = 138544130;
    v21 = v13;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    v26 = 2048;
    v27 = v8;
    _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ remote constituent will change from %@ to %@ on transport %p", &v20, 0x2Au);
  }

  v14 = [(CONodeController *)self node];
  [v14 setRemote:v10];

  v15 = [(CONodeController *)self ipDiscoveryRecord];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 constituent];
      if (([v16 isEqual:v10] & 1) == 0)
      {
        v17 = [v15 mutableCopy];
        [v17 rollConstituent:v10];
        v18 = [[CODiscoveryRecord alloc] initWithDiscoveryRecord:v17];
        [(CONodeController *)self setIpDiscoveryRecord:v18];
        [v8 setRecord:v18];
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)a3 didUpdateRemoteConstituent:(id)a4 to:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CONodeController *)self executionContext];
  [v11 assertDispatchQueue];

  v12 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(CONodeController *)self shortDescription];
    v16 = 138544130;
    v17 = v13;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2048;
    v23 = v8;
    _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ remote constituent has changed from %@ to %@ on transport %p", &v16, 0x2Au);
  }

  if (v9)
  {
    v14 = [(CONodeController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v14 nodeController:self didUpdateRemoteConstituent:v9 to:v10];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)a3 didReceiveUnhandledRequest:(id)a4
{
  v5 = a4;
  v6 = [(CONodeController *)self executionContext];
  [v6 assertDispatchQueue];

  v7 = [v5 request];
  v8 = [(CONodeController *)self executionContext];
  v9 = [v8 leaderElectionConfigured];

  v10 = off_278E150B8;
  if (!v9)
  {
    v10 = &off_278E150E0;
  }

  v11 = *v10;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = [v7 conformsToProtocol:&unk_2857D4880] & isKindOfClass;
  v14 = COCoreLogForCategory(16);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [CONodeController transport:didReceiveUnhandledRequest:];
  }

  v15 = [(CONodeController *)self delegate];
  if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v15 nodeController:self didReceiveOnDemandNodeCreationRequest:v5];
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
    v17 = [v5 handler];
    (v17)[2](v17, 0, 0, v16);
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