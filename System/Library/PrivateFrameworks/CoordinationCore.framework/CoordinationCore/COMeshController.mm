@interface COMeshController
- (BOOL)_isElectionComplete;
- (BOOL)addAddOn:(id)a3;
- (BOOL)removeAddOn:(id)a3;
- (COBallot)ballot;
- (COCompanionLinkClientFactoryProtocol)companionLinkClientFactory;
- (COConstituent)leader;
- (COMeshController)initWithConstituentType:(unint64_t)a3;
- (COMeshNode)nodeForMe;
- (NSArray)nodes;
- (NSOrderedSet)addOns;
- (NSString)description;
- (id)_acceptResponseWithBallot:(id)a3 generation:(unint64_t)a4;
- (id)_ballotResponseWithBallot:(id)a3 generation:(unint64_t)a4;
- (id)_constituentCharacteristics:(id)a3;
- (id)_currentBallotMergedWithBallot:(id)a3;
- (id)_electionRequestWithBallot:(id)a3 generation:(unint64_t)a4;
- (id)_handleDiscoveryUsingElectionRequest:(id)a3;
- (id)_inflateQueueCommands;
- (id)_newCompanionLinkClient;
- (id)_nodeDetails:(id)a3;
- (id)_voteRequestWithBallot:(id)a3 generation:(unint64_t)a4;
- (id)nodeForConstituent:(id)a3;
- (unint64_t)generation;
- (void)_enqueueCommand:(id)a3;
- (void)_finalizeCompletionOfNode:(id)a3 memberOfMesh:(BOOL)a4 eventProvider:(id)a5;
- (void)_handleAcceptResponse:(id)a3 onNode:(id)a4;
- (void)_handleBallotResponse:(id)a3 onNode:(id)a4;
- (void)_handleDiscoveryUsingBallot:(id)a3;
- (void)_handleElectionRequest:(id)a3 onNode:(id)a4 responseCallBack:(id)a5;
- (void)_handleNodeChanges;
- (void)_handleVoteRequest:(id)a3 onNode:(id)a4 responseCallBack:(id)a5;
- (void)_logElectionSummary;
- (void)_performElectionGeneration:(unint64_t)a3 source:(id)a4 allowingPostTransition:(BOOL)a5;
- (void)_performInvalidationOfNode:(id)a3 error:(id)a4 eventProvider:(id)a5;
- (void)_performStopOfNode:(id)a3 error:(id)a4 eventProvider:(id)a5;
- (void)_pingLeader;
- (void)_processBackedOffNodesExcludingTracker:(id)a3;
- (void)_processQueuedCommands;
- (void)_removeSentCommand:(id)a3 fromNode:(id)a4 withResponse:(id)a5 error:(id)a6;
- (void)_setupBrowsers;
- (void)_setupCoordinationPrefsObserver;
- (void)_tearDownCoordinationPrefsObserver;
- (void)_transitionToPostElection;
- (void)backedOffNodeMovedOutOfElection:(id)a3;
- (void)broadcastRequest:(id)a3 includingSelf:(BOOL)a4 recipientsCallback:(id)a5 completionHandler:(id)a6;
- (void)deregisterHandlerForCommandClass:(Class)a3;
- (void)deregisterHandlerForNotificationClass:(Class)a3;
- (void)deregisterHandlerForRequestClass:(Class)a3;
- (void)didActivateNode:(id)a3;
- (void)didAddNode:(id)a3;
- (void)didCompleteElection;
- (void)didInvalidateNode:(id)a3;
- (void)didRemoveNode:(id)a3;
- (void)didStartElection;
- (void)didTransitionToState:(unint64_t)a3;
- (void)discoveryManager:(id)a3 didDiscoverRecords:(id)a4;
- (void)node:(id)a3 didReceiveCommand:(id)a4;
- (void)node:(id)a3 didReceiveError:(id)a4 forCommand:(id)a5;
- (void)node:(id)a3 didReceiveRequest:(id)a4 responseCallBack:(id)a5;
- (void)node:(id)a3 didReceiveResponse:(id)a4 toRequest:(id)a5;
- (void)node:(id)a3 didSendCommand:(id)a4;
- (void)nodeBecameAvailable:(id)a3;
- (void)nodeShouldRetryAfterBackoff:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerHandler:(id)a3 forCommandClass:(Class)a4;
- (void)registerHandler:(id)a3 forNotificationClass:(Class)a4;
- (void)registerHandler:(id)a3 forRequestClass:(Class)a4;
- (void)sendCommand:(id)a3 toPeer:(id)a4;
- (void)sendCommand:(id)a3 withCompletionHandler:(id)a4;
- (void)sendNotification:(id)a3;
- (void)sendRequest:(id)a3 sentRequestCallback:(id)a4;
- (void)sendRequest:(id)a3 toPeer:(id)a4 withCompletionHandler:(id)a5;
- (void)sendRequest:(id)a3 withCompletionHandler:(id)a4;
- (void)setAddOns:(id)a3;
- (void)setDispatchQueue:(id)a3;
- (void)setElectionElapsedTimer:(id)a3;
- (void)setElectionEnd:(unint64_t)a3;
- (void)setElectionPrevious:(unint64_t)a3;
- (void)setElectionStart:(unint64_t)a3;
- (void)setInternalFlags:(unint64_t)a3;
- (void)setListener:(id)a3;
- (void)setRecorder:(id)a3;
- (void)start;
- (void)stop;
- (void)unknownNodeForCommand:(id)a3 result:(id)a4;
- (void)unknownNodeForRequest:(id)a3 result:(id)a4;
- (void)willActivateNode:(id)a3;
- (void)willInvalidateNode:(id)a3 error:(id)a4;
- (void)willTransitionToState:(unint64_t)a3;
@end

@implementation COMeshController

- (COMeshController)initWithConstituentType:(unint64_t)a3
{
  v35.receiver = self;
  v35.super_class = COMeshController;
  v4 = [(COMeshController *)&v35 init];
  if (v4)
  {
    v5 = [[COConstituent alloc] initWithType:a3];
    v6 = *(v4 + 5);
    *(v4 + 5) = v5;

    if (([*(v4 + 5) supportsBackoff] & 1) == 0)
    {
      *(v4 + 3) |= 1uLL;
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB70]);
    v8 = *(v4 + 2);
    *(v4 + 2) = v7;

    v9 = [[COBallot alloc] initWithCandidate:*(v4 + 5)];
    v10 = *(v4 + 11);
    *(v4 + 11) = v9;

    v11 = objc_alloc_init(COMeshNodeStateTrackerSet);
    v12 = *(v4 + 21);
    *(v4 + 21) = v11;

    v13 = [CODiscoveryManager managerWithDiscoveryDelay:v4 delegate:30.0];
    v14 = *(v4 + 22);
    *(v4 + 22) = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    v16 = *(v4 + 23);
    *(v4 + 23) = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    v18 = *(v4 + 24);
    *(v4 + 24) = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    v20 = *(v4 + 25);
    *(v4 + 25) = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v22 = *(v4 + 26);
    *(v4 + 26) = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v24 = *(v4 + 27);
    *(v4 + 27) = v23;

    objc_storeStrong(v4 + 7, MEMORY[0x277D85CD0]);
    v25 = [MEMORY[0x277CCA8D8] mainBundle];
    v26 = [v25 bundleIdentifier];
    v27 = *(v4 + 36);
    *(v4 + 36) = v26;

    if (![*(v4 + 36) length])
    {
      v28 = [MEMORY[0x277CCAC38] processInfo];
      v29 = [v28 processName];
      v30 = *(v4 + 36);
      *(v4 + 36) = v29;
    }

    v31 = [*(v4 + 36) copy];
    v32 = *(v4 + 9);
    *(v4 + 9) = v31;

    v33 = *(v4 + 8);
    *(v4 + 8) = &__block_literal_global_1;

    *(v4 + 10) = 1;
    *(v4 + 232) = xmmword_244448680;
  }

  return v4;
}

- (NSString)description
{
  v3 = [(COMeshController *)self state];
  if (v3 > 4)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_278E167E0[v3];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(COMeshController *)self nodes];
  v9 = [v5 stringWithFormat:@"<%@: %p, %@, %@>", v7, self, v4, v8];

  return v9;
}

- (void)setInternalFlags:(unint64_t)a3
{
  v3 = a3;
  self->_internalFlags = a3;
  if (![(COMeshController *)self state])
  {
    v7 = [(COMeshController *)self me];
    if ([v7 supportsBackoff] == (v3 & 1))
    {
      v5 = [v7 flags];
      if (v3)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0xFFFFFFFF80000000;
      }

      [v7 setFlags:v6 & 0xFFFFFFFF80000000 | v5 & 0x7FFFFFFF];
    }
  }
}

- (COCompanionLinkClientFactoryProtocol)companionLinkClientFactory
{
  companionLinkClientFactory = self->_companionLinkClientFactory;
  if (!companionLinkClientFactory)
  {
    v4 = objc_alloc_init(COCompanionLinkClientFactory);
    v5 = self->_companionLinkClientFactory;
    self->_companionLinkClientFactory = v4;

    companionLinkClientFactory = self->_companionLinkClientFactory;
  }

  return companionLinkClientFactory;
}

- (void)setListener:(id)a3
{
  v5 = a3;
  v6 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(COMeshController *)self listener];
  v8 = v7;
  if (v7 != v5)
  {
    if (v7)
    {
      [v7 setDelegate:0];
      [v8 invalidate];
    }

    objc_storeStrong(&self->_listener, a3);
    v9 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [COMeshController setListener:];
    }

    listener = self->_listener;
    if (listener)
    {
      v11 = [(COMeshController *)self meshName];
      [(COMeshNode *)listener setMeshName:v11];

      v12 = self->_listener;
      v13 = [(COMeshController *)self label];
      [(COMeshNode *)v12 setLabel:v13];

      v14 = self->_listener;
      v15 = [(COMeshController *)self recorder];
      [(COMeshNode *)v14 setRecorder:v15];

      v16 = MEMORY[0x277CBEB58];
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      v19 = objc_opt_class();
      v20 = [v16 setWithObjects:{v17, v18, v19, objc_opt_class(), 0}];
      v21 = [(COMeshController *)self commandHandlers];
      v22 = [v21 allKeys];
      [v20 addObjectsFromArray:v22];

      v23 = [(COMeshController *)self notificationHandlers];
      v24 = [v23 allKeys];
      [v20 addObjectsFromArray:v24];

      v25 = [(COMeshController *)self requestHandlers];
      v26 = [v25 allKeys];
      [v20 addObjectsFromArray:v26];

      [(COMeshLocalNode *)self->_listener setAcceptableCommands:v20];
      [(COMeshNode *)self->_listener setDelegate:self];
      [(COMeshLocalNode *)self->_listener activate];
    }
  }
}

- (COConstituent)leader
{
  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    if ([(COMeshController *)self state]== 3)
    {
      v3 = [(CONodeManager *)self->_nodeManager leader];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v4 = self;
    objc_sync_enter(v4);
    if ([(COMeshController *)v4 state]== 3)
    {
      v3 = v4->_leader;
    }

    else
    {
      v3 = 0;
    }

    objc_sync_exit(v4);
  }

  return v3;
}

- (COMeshNode)nodeForMe
{
  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    v3 = [(COMeshController *)self nodeManager];
    v4 = [v3 nodeForMe];
  }

  else
  {
    v4 = self->_listener;
  }

  return v4;
}

- (unint64_t)generation
{
  if (![MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    return self->_generation;
  }

  v3 = [(COMeshController *)self nodeManager];
  v4 = [v3 electionInfo];
  v5 = [v4 generation];

  return v5;
}

- (COBallot)ballot
{
  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    v3 = [(COMeshController *)self nodeManager];
    v4 = [v3 electionInfo];
    v5 = [v4 ballot];
  }

  else
  {
    v5 = self->_ballot;
  }

  return v5;
}

- (NSOrderedSet)addOns
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSOrderedSet *)v2->_addOns copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setAddOns:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(COMeshController *)v4 addOns];
  v6 = [v5 isEqualToOrderedSet:v9];

  if ((v6 & 1) == 0)
  {
    v7 = [v9 copy];
    addOns = v4->_addOns;
    v4->_addOns = v7;
  }

  objc_sync_exit(v4);
}

- (void)setElectionPrevious:(unint64_t)a3
{
  if (self->_electionPrevious != a3)
  {
    if (!a3)
    {
      self->_electionEnd = 0;
    }

    self->_electionPrevious = a3;
  }
}

- (void)setElectionStart:(unint64_t)a3
{
  if (self->_electionStart != a3)
  {
    [(COMeshController *)self setElectionElapsedTimer:0];
    [(COMeshController *)self setElectionPrevious:self->_electionStart];
    self->_electionStart = a3;
  }
}

- (void)setElectionEnd:(unint64_t)a3
{
  v47 = *MEMORY[0x277D85DE8];
  if (self->_electionEnd != a3)
  {
    v5 = [(COMeshController *)self electionPrevious];
    if (v5)
    {
      v6 = v5;
      v7 = [(COMeshController *)self electionStart];
      v28 = v7;
      if (self->_electionEnd)
      {
        v8 = (v7 - v6) / 1000000000.0;
      }

      else
      {
        v8 = 0.0;
      }

      v27 = [(COMeshController *)self label];
      v9 = [(COMeshController *)self nodes];
      v26 = [v9 count];

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v10 = [(COMeshController *)self nodes];
      v11 = 0;
      v12 = 0;
      v13 = [v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v13)
      {
        v14 = *v43;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v43 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v42 + 1) + 8 * i);
            if ([v16 connectionType] == 2)
            {
              ++v12;
              if ([v16 discoveryType] == 2)
              {
                ++v11;
              }
            }
          }

          v13 = [v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v13);
      }

      v17 = [(COMeshController *)self recorder];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __35__COMeshController_setElectionEnd___block_invoke;
      v34[3] = &unk_278E16360;
      v37 = (a3 - v28) / 1000000.0;
      v38 = v26 + 1;
      v39 = v12;
      v40 = v11;
      v41 = v8;
      v18 = v27;
      v35 = v18;
      v36 = self;
      (v17)[2](v17, 0x2857B5D48, v34);

      self->_electionEnd = a3;
      v19 = [(COMeshController *)self electionElapsedTimer];
      v20 = v19 == 0;

      if (v20)
      {
        v21 = [(COMeshController *)self dispatchQueue];
        v22 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v21);

        if (v22)
        {
          v23 = dispatch_walltime(0, 86400000000000);
          dispatch_source_set_timer(v22, v23, 0x4E94914F0000uLL, 0);
          objc_initWeak(&location, self);
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = __35__COMeshController_setElectionEnd___block_invoke_2;
          handler[3] = &unk_278E163B0;
          objc_copyWeak(v32, &location);
          v32[1] = v6;
          v32[2] = v28;
          v32[3] = (v26 + 1);
          v32[4] = v12;
          v32[5] = v11;
          v30 = v18;
          v31 = self;
          dispatch_source_set_event_handler(v22, handler);
          [(COMeshController *)self setElectionElapsedTimer:v22];

          objc_destroyWeak(v32);
          objc_destroyWeak(&location);
        }
      }
    }
  }

  longestBackedOffConstituent = self->_longestBackedOffConstituent;
  self->_longestBackOff = 0;
  self->_longestBackedOffConstituent = 0;

  v25 = *MEMORY[0x277D85DE8];
}

id __35__COMeshController_setElectionEnd___block_invoke(uint64_t a1)
{
  v17[7] = *MEMORY[0x277D85DE8];
  v16[0] = 0x2857B5E08;
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v17[0] = v2;
  v16[1] = 0x2857B5E28;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56)];
  v17[1] = v3;
  v16[2] = 0x2857B5E48;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
  v17[2] = v4;
  v16[3] = 0x2857B5E68;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 72)];
  v17[3] = v5;
  v16[4] = 0x2857B5DE8;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 80)];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v17[4] = v6;
  v17[5] = v7;
  v16[5] = 0x2857B5DC8;
  v16[6] = 0x2857B6048;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v8 + 248)];
  v17[6] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:7];
  v11 = [v10 mutableCopy];

  v12 = *(a1 + 40);
  if (v12[32])
  {
    v13 = [v12 _constituentCharacteristics:?];
    [v11 setObject:v13 forKey:0x2857B6068];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

void __35__COMeshController_setElectionEnd___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 56);
    if (v4 == [WeakRetained electionPrevious])
    {
      v5 = *(a1 + 64);
      if (v5 == [v3 electionStart])
      {
        v6 = [v3 recorder];
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __35__COMeshController_setElectionEnd___block_invoke_3;
        v9[3] = &unk_278E16388;
        v12 = *(a1 + 72);
        v13 = *(a1 + 88);
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        v10 = v7;
        v11 = v8;
        (v6)[2](v6, 0x2857B5D48, v9);
      }
    }
  }
}

id __35__COMeshController_setElectionEnd___block_invoke_3(void *a1)
{
  v14[7] = *MEMORY[0x277D85DE8];
  v14[0] = &unk_2857C8868;
  v13[0] = 0x2857B5E08;
  v13[1] = 0x2857B5E28;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  v14[1] = v2;
  v13[2] = 0x2857B5E48;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[7]];
  v14[2] = v3;
  v13[3] = 0x2857B5E68;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[8]];
  v14[3] = v4;
  v14[4] = &unk_2857C8928;
  v13[4] = 0x2857B5DE8;
  v13[5] = 0x2857B5DC8;
  v5 = a1[5];
  v14[5] = a1[4];
  v13[6] = 0x2857B6048;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v5 + 248)];
  v14[6] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:7];
  v8 = [v7 mutableCopy];

  v9 = a1[5];
  if (v9[32])
  {
    v10 = [v9 _constituentCharacteristics:?];
    [v8 setObject:v10 forKey:0x2857B6068];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)setDispatchQueue:(id)a3
{
  v4 = a3;
  if (self->_dispatchQueue != v4 && [MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    v5 = [(COMeshController *)self nodeManager];
    v6 = [v5 executionContext];
    v7 = [v6 mutableCopy];

    [v7 setObject:v4 forKey:0x2857B7128];
    v8 = [(COMeshController *)self nodeManager];
    [v8 setExecutionContext:v7];
  }

  dispatchQueue = self->_dispatchQueue;
  self->_dispatchQueue = v4;
}

- (void)setRecorder:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (self->_recorder != v4)
  {
    v5 = [MEMORY[0x277CFD0B8] isGlobalMessagingEnabled];
    v4 = v13;
    if (v5)
    {
      v6 = [(COMeshController *)self nodeManager];
      v7 = [v6 executionContext];
      v8 = [v7 mutableCopy];

      v9 = MEMORY[0x245D5FF10](v13);
      [v8 setObject:v9 forKey:0x2857B7148];

      v10 = [(COMeshController *)self nodeManager];
      [v10 setExecutionContext:v8];

      v4 = v13;
    }
  }

  v11 = MEMORY[0x245D5FF10](v4);
  recorder = self->_recorder;
  self->_recorder = v11;
}

- (void)setElectionElapsedTimer:(id)a3
{
  v5 = a3;
  electionElapsedTimer = self->_electionElapsedTimer;
  p_electionElapsedTimer = &self->_electionElapsedTimer;
  v6 = electionElapsedTimer;
  v9 = v5;
  if (electionElapsedTimer != v5)
  {
    if (v6)
    {
      dispatch_source_cancel(v6);
    }

    objc_storeStrong(p_electionElapsedTimer, a3);
    if (*p_electionElapsedTimer)
    {
      dispatch_resume(*p_electionElapsedTimer);
    }
  }
}

- (NSArray)nodes
{
  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    v3 = [(COMeshController *)self nodeManager];
    v4 = [(COMeshController *)v3 nodes];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = self;
    objc_sync_enter(v3);
    v6 = [(COMeshController *)v3 trackers];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __25__COMeshController_nodes__block_invoke;
    v8[3] = &unk_278E163D8;
    v4 = v5;
    v9 = v4;
    [v6 enumerateNodeStateTrackersOfStatus:1 usingBlock:v8];

    objc_sync_exit(v3);
  }

  return v4;
}

void __25__COMeshController_nodes__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 node];
  [v2 addObject:v3];
}

- (BOOL)addAddOn:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(COMeshController *)v5 addOns];
  if (-[COMeshController state](v5, "state") || ([v6 containsObject:v4] & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v9 = [v6 mutableCopy];
    [v9 addObject:v4];
    [v4 willAddToMeshController:v5];
    [(COMeshController *)v5 setAddOns:v9];
    [v4 didAddToMeshController:v5];

    v7 = 1;
  }

  objc_sync_exit(v5);
  return v7;
}

- (BOOL)removeAddOn:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(COMeshController *)v5 addOns];
  if (-[COMeshController state](v5, "state") || ![v6 containsObject:v4])
  {
    v8 = 0;
  }

  else
  {
    v7 = [v6 mutableCopy];
    [v7 removeObject:v4];
    [v4 willRemoveFromMeshController:v5];
    [(COMeshController *)v5 setAddOns:v7];
    [v4 didRemoveFromMeshController:v5];

    v8 = 1;
  }

  objc_sync_exit(v5);
  return v8;
}

- (void)start
{
  v3 = [(COMeshController *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__COMeshController_start__block_invoke;
  block[3] = &unk_278E15AB8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __25__COMeshController_start__block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) state];
  objc_sync_exit(v2);

  if (!v3)
  {
    v4 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = [v5 meshName];
      v7 = [*(a1 + 32) me];
      *buf = 134218498;
      v60 = v5;
      v61 = 2112;
      v62 = v6;
      v63 = 2112;
      v64 = v7;
      _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p starting %@ mesh (%@)", buf, 0x20u);
    }

    [*(a1 + 32) setElectionPrevious:0];
    v8 = [*(a1 + 32) addOns];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __25__COMeshController_start__block_invoke_57;
    v58[3] = &unk_278E16400;
    v58[4] = *(a1 + 32);
    [v8 enumerateObjectsUsingBlock:v58];
    [*(a1 + 32) willTransitionToState:1];
    v9 = [MEMORY[0x277CCAC38] processInfo];
    v10 = [v9 processName];

    if (![v10 isEqualToString:@"coordinated"] || (objc_msgSend(*(a1 + 32), "meshName"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsString:", @"home-mesh"), v11, v12))
    {
      [*(a1 + 32) _setupCoordinationPrefsObserver];
    }

    v13 = [MEMORY[0x277CFD0B8] isGlobalMessagingEnabled];
    v14 = *(a1 + 32);
    objc_sync_enter(v14);
    *(*(a1 + 32) + 32) = 1;
    if (v13)
    {
      objc_sync_exit(v14);

      v15 = [MEMORY[0x277CBEB58] set];
      [v15 addObject:objc_opt_class()];
      [v15 addObject:objc_opt_class()];
      if ([*(a1 + 32) clusterOptions])
      {
        [v15 addObject:objc_opt_class()];
        [v15 addObject:objc_opt_class()];
      }

      v16 = [*(a1 + 32) commandHandlers];
      v17 = [v16 allKeys];
      [v15 addObjectsFromArray:v17];

      v18 = [*(a1 + 32) notificationHandlers];
      v19 = [v18 allKeys];
      [v15 addObjectsFromArray:v19];

      v20 = [*(a1 + 32) requestHandlers];
      v21 = [v20 allKeys];
      [v15 addObjectsFromArray:v21];

      v22 = *(a1 + 32);
      if (!v22[33])
      {
        v23 = [COMutableExecutionContext alloc];
        v24 = [*(a1 + 32) dispatchQueue];
        v25 = [(COExecutionContext *)v23 initWithDispatchQueue:v24];

        v26 = [*(a1 + 32) meshName];
        [(COMutableExecutionContext *)v25 setObject:v26 forKey:0x2857B7168];

        v27 = [*(a1 + 32) label];
        [(COMutableExecutionContext *)v25 setObject:v27 forKey:0x2857B7188];

        v28 = [*(a1 + 32) me];
        [(COMutableExecutionContext *)v25 setObject:v28 forKey:0x2857B71A8];

        v29 = [*(a1 + 32) recorder];
        [(COMutableExecutionContext *)v25 setObject:v29 forKey:0x2857B7148];

        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", *(a1 + 32)];
        [(COMutableExecutionContext *)v25 setObject:v30 forKey:0x2857B71C8];

        v31 = objc_alloc_init(CONetworkActivityFactory);
        [(COMutableExecutionContext *)v25 setObject:v31 forKey:0x2857B71E8];

        v32 = MEMORY[0x277CCABB0];
        [*(a1 + 32) pingMinimum];
        v33 = [v32 numberWithDouble:?];
        [(COMutableExecutionContext *)v25 setObject:v33 forKey:0x2857B7208];

        v34 = MEMORY[0x277CCABB0];
        [*(a1 + 32) pingMaximum];
        v35 = [v34 numberWithDouble:?];
        [(COMutableExecutionContext *)v25 setObject:v35 forKey:0x2857B7228];

        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "clusterOptions")}];
        [(COMutableExecutionContext *)v25 setObject:v36 forKey:0x2857B7248];

        v37 = [[CONodeManager alloc] initWithExecutionContext:v25];
        v38 = *(*(a1 + 32) + 264);
        *(*(a1 + 32) + 264) = v37;

        [*(*(a1 + 32) + 264) setDelegate:?];
        v22 = *(a1 + 32);
      }

      [v22 _setupBrowsers];
      v39 = [*(a1 + 32) nodeManager];
      [v39 setAcceptableCommands:v15];

      v40 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *(a1 + 32);
        v42 = [v41 nodeManager];
        *buf = 134218242;
        v60 = v41;
        v61 = 2112;
        v62 = v42;
        _os_log_impl(&dword_244378000, v40, OS_LOG_TYPE_DEFAULT, "%p starting NodeManager %@", buf, 0x16u);
      }

      v43 = [*(a1 + 32) nodeManager];
      [v43 start];

      v44 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = *(a1 + 32);
        *buf = 134217984;
        v60 = v45;
        _os_log_impl(&dword_244378000, v44, OS_LOG_TYPE_DEFAULT, "%p NodeManager started", buf, 0xCu);
      }

      v47 = *(a1 + 32);
      v46 = (a1 + 32);
      v48 = [v47 addOns];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __25__COMeshController_start__block_invoke_72;
      v57[3] = &unk_278E16400;
      v57[4] = *v46;
      [v48 enumerateObjectsUsingBlock:v57];

      [*v46 didTransitionToState:1];
    }

    else
    {
      v49 = [*(a1 + 32) trackers];
      [v49 removeAllNodeStateTrackers];

      objc_sync_exit(v14);
      v51 = *(a1 + 32);
      v50 = (a1 + 32);
      v15 = [v51 me];
      v52 = [[COBallot alloc] initWithCandidate:v15];
      v53 = [*v50 _newCompanionLinkClient];
      v54 = [[COMeshLocalNode alloc] initWithCompanionLinkClient:v53 source:v15];
      v55 = [*v50 companionLinkClientFactory];
      [(COMeshLocalNode *)v54 setCompanionLinkClientFactory:v55];

      [*v50 setBallot:v52];
      [*v50 setListener:v54];
      [*v50 didTransitionToState:1];
    }
  }

  v56 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v3 = [(COMeshController *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__COMeshController_stop__block_invoke;
  block[3] = &unk_278E15AB8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __24__COMeshController_stop__block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) state];
  objc_sync_exit(v2);

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    v4 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = [v5 meshName];
      *buf = 134218242;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p stopping %@ mesh", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v59 = __Block_byref_object_copy__9;
    v60 = __Block_byref_object_dispose__9;
    v61 = [*(a1 + 32) addOns];
    v7 = *(*&buf[8] + 40);
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __24__COMeshController_stop__block_invoke_73;
    v56[3] = &unk_278E16400;
    v56[4] = *(a1 + 32);
    [v7 enumerateObjectsUsingBlock:v56];
    [*(a1 + 32) willTransitionToState:4];
    [*(a1 + 32) _tearDownCoordinationPrefsObserver];
    v8 = [MEMORY[0x277CFD0B8] isGlobalMessagingEnabled];
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    *(*(a1 + 32) + 32) = 4;
    if (v8)
    {
      objc_sync_exit(v9);

      [*(a1 + 32) didTransitionToState:4];
      v10 = [*(a1 + 32) nodeManager];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __24__COMeshController_stop__block_invoke_2;
      v55[3] = &unk_278E15950;
      v55[4] = *(a1 + 32);
      v55[5] = buf;
      [v10 stopWithCompletionHandler:v55];

      [*(a1 + 32) setRapportBrowser:0];
      [*(a1 + 32) setIdsBrowser:0];
      [*(a1 + 32) setBallotBrowser:0];
    }

    else
    {
      v11 = [*(a1 + 32) trackers];
      v12 = [v11 nodeStateTrackersWithStatus:1];

      objc_sync_exit(v9);
      v13 = [*(a1 + 32) listener];
      v14 = objc_alloc_init(MEMORY[0x277CBEB98]);
      [v13 setAcceptableCommands:v14];

      v15 = [v12 count];
      v16 = *(a1 + 32);
      if (v15)
      {
        v17 = [v16 electionEnd];
        if (v17 > [*(a1 + 32) electionStart])
        {
          v18 = [*(a1 + 32) label];
          v19 = [*(a1 + 32) nodes];
          v20 = [v19 count];

          v52 = 0u;
          v53 = 0u;
          v51 = 0u;
          v50 = 0u;
          v21 = [*(a1 + 32) nodes];
          v22 = [v21 countByEnumeratingWithState:&v50 objects:v57 count:16];
          v39 = v20;
          v40 = v18;
          v23 = 0;
          v24 = 0;
          if (v22)
          {
            v25 = *v51;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v51 != v25)
                {
                  objc_enumerationMutation(v21);
                }

                v27 = *(*(&v50 + 1) + 8 * i);
                if ([v27 connectionType] == 2)
                {
                  ++v23;
                  if ([v27 discoveryType] == 2)
                  {
                    ++v24;
                  }
                }
              }

              v22 = [v21 countByEnumeratingWithState:&v50 objects:v57 count:16];
            }

            while (v22);
          }

          v28 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          v29 = [*(a1 + 32) recorder];
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __24__COMeshController_stop__block_invoke_3;
          v44[3] = &unk_278E16428;
          v46 = v39 + 1;
          v47 = v23;
          v48 = v24;
          v49 = (v28 - v17) / 1000000000.0;
          v30 = v40;
          v45 = v30;
          (v29)[2](v29, 0x2857B5D48, v44);
        }

        v31 = objc_alloc_init(COMeshWithdrawalCommand);
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __24__COMeshController_stop__block_invoke_4;
        v41[3] = &unk_278E16450;
        v43 = 4;
        v32 = v31;
        v42 = v32;
        [v12 enumerateObjectsUsingBlock:v41];

        v33 = 4;
      }

      else
      {
        [v16 setElectionStart:0];
        [*(a1 + 32) didTransitionToState:4];
        [*(a1 + 32) willTransitionToState:0];
        [*(a1 + 32) setListener:0];
        v34 = *(a1 + 32);
        objc_sync_enter(v34);
        *(*(a1 + 32) + 32) = 0;
        v35 = [*(a1 + 32) addOns];
        v36 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v35;

        objc_sync_exit(v34);
        v37 = *(*&buf[8] + 40);
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __24__COMeshController_stop__block_invoke_2_76;
        v54[3] = &unk_278E16400;
        v54[4] = *(a1 + 32);
        [v37 enumerateObjectsUsingBlock:v54];
        v33 = 0;
      }

      [*(a1 + 32) didTransitionToState:v33];
    }

    _Block_object_dispose(buf, 8);
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t __24__COMeshController_stop__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 nodeManager];
    *buf = 134218240;
    v14 = v3;
    v15 = 2048;
    v16 = v4;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p Node manager %p successfully stopped", buf, 0x16u);
  }

  [*(a1 + 32) willTransitionToState:0];
  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  *(*(a1 + 32) + 32) = 0;
  v6 = [*(a1 + 32) addOns];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  objc_sync_exit(v5);
  v9 = *(*(*(a1 + 40) + 8) + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __24__COMeshController_stop__block_invoke_74;
  v12[3] = &unk_278E16400;
  v12[4] = *(a1 + 32);
  [v9 enumerateObjectsUsingBlock:v12];
  result = [*(a1 + 32) didTransitionToState:0];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

id __24__COMeshController_stop__block_invoke_3(uint64_t a1)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v11[0] = &unk_2857C8868;
  v10[0] = 0x2857B5E08;
  v10[1] = 0x2857B5E28;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v11[1] = v2;
  v10[2] = 0x2857B5E48;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  v11[2] = v3;
  v10[3] = 0x2857B5E68;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56)];
  v11[3] = v4;
  v10[4] = 0x2857B5DE8;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  v10[5] = 0x2857B5DC8;
  v6 = *(a1 + 32);
  v11[4] = v5;
  v11[5] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __24__COMeshController_stop__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setState:v3];
  v5 = [v4 node];

  [v5 sendMeshCommand:*(a1 + 32)];
}

- (void)willTransitionToState:(unint64_t)a3
{
  v5 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(COMeshController *)v6 addOns];
  objc_sync_exit(v6);

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__COMeshController_willTransitionToState___block_invoke;
  v8[3] = &unk_278E16478;
  v8[4] = v6;
  v8[5] = a3;
  [v7 enumerateObjectsUsingBlock:v8];
}

- (void)didTransitionToState:(unint64_t)a3
{
  v5 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(COMeshController *)v6 addOns];
  objc_sync_exit(v6);

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__COMeshController_didTransitionToState___block_invoke;
  v8[3] = &unk_278E16478;
  v8[4] = v6;
  v8[5] = a3;
  [v7 enumerateObjectsUsingBlock:v8];
}

- (void)willActivateNode:(id)a3
{
  v3 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);
}

- (void)willInvalidateNode:(id)a3 error:(id)a4
{
  v4 = [(COMeshController *)self dispatchQueue:a3];
  dispatch_assert_queue_V2(v4);
}

- (void)registerHandler:(id)a3 forCommandClass:(Class)a4
{
  v6 = a3;
  v7 = [(COMeshController *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__COMeshController_registerHandler_forCommandClass___block_invoke;
  block[3] = &unk_278E164A0;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

void __52__COMeshController_registerHandler_forCommandClass___block_invoke(uint64_t a1)
{
  v2 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __52__COMeshController_registerHandler_forCommandClass___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) commandHandlers];
  v4 = [v3 mutableCopy];

  v5 = [*(a1 + 40) copy];
  v6 = MEMORY[0x245D5FF10]();
  [v4 setObject:v6 forKey:*(a1 + 48)];

  [*(a1 + 32) setCommandHandlers:v4];
}

- (void)deregisterHandlerForCommandClass:(Class)a3
{
  v5 = [(COMeshController *)self dispatchQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__COMeshController_deregisterHandlerForCommandClass___block_invoke;
  v6[3] = &unk_278E164C8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __53__COMeshController_deregisterHandlerForCommandClass___block_invoke(uint64_t a1)
{
  v2 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __53__COMeshController_deregisterHandlerForCommandClass___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) commandHandlers];
  v4 = [v3 mutableCopy];

  [v4 removeObjectForKey:*(a1 + 40)];
  [*(a1 + 32) setCommandHandlers:v4];
}

- (void)registerHandler:(id)a3 forNotificationClass:(Class)a4
{
  v6 = a3;
  v7 = [(COMeshController *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__COMeshController_registerHandler_forNotificationClass___block_invoke;
  block[3] = &unk_278E164A0;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

void __57__COMeshController_registerHandler_forNotificationClass___block_invoke(uint64_t a1)
{
  v2 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __57__COMeshController_registerHandler_forNotificationClass___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) notificationHandlers];
  v4 = [v3 mutableCopy];

  v5 = [*(a1 + 40) copy];
  v6 = MEMORY[0x245D5FF10]();
  [v4 setObject:v6 forKey:*(a1 + 48)];

  [*(a1 + 32) setNotificationHandlers:v4];
}

- (void)deregisterHandlerForNotificationClass:(Class)a3
{
  v5 = [(COMeshController *)self dispatchQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__COMeshController_deregisterHandlerForNotificationClass___block_invoke;
  v6[3] = &unk_278E164C8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __58__COMeshController_deregisterHandlerForNotificationClass___block_invoke(uint64_t a1)
{
  v2 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__COMeshController_deregisterHandlerForNotificationClass___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) notificationHandlers];
  v4 = [v3 mutableCopy];

  [v4 removeObjectForKey:*(a1 + 40)];
  [*(a1 + 32) setNotificationHandlers:v4];
}

- (void)registerHandler:(id)a3 forRequestClass:(Class)a4
{
  v6 = a3;
  v7 = [(COMeshController *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__COMeshController_registerHandler_forRequestClass___block_invoke;
  block[3] = &unk_278E164A0;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

void __52__COMeshController_registerHandler_forRequestClass___block_invoke(uint64_t a1)
{
  v2 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __52__COMeshController_registerHandler_forRequestClass___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) requestHandlers];
  v4 = [v3 mutableCopy];

  v5 = [*(a1 + 40) copy];
  v6 = MEMORY[0x245D5FF10]();
  [v4 setObject:v6 forKey:*(a1 + 48)];

  [*(a1 + 32) setRequestHandlers:v4];
}

- (void)deregisterHandlerForRequestClass:(Class)a3
{
  v5 = [(COMeshController *)self dispatchQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__COMeshController_deregisterHandlerForRequestClass___block_invoke;
  v6[3] = &unk_278E164C8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __53__COMeshController_deregisterHandlerForRequestClass___block_invoke(uint64_t a1)
{
  v2 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __53__COMeshController_deregisterHandlerForRequestClass___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) requestHandlers];
  v4 = [v3 mutableCopy];

  [v4 removeObjectForKey:*(a1 + 40)];
  [*(a1 + 32) setRequestHandlers:v4];
}

- (void)sendCommand:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshController *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__COMeshController_sendCommand_withCompletionHandler___block_invoke;
  block[3] = &unk_278E15B60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __54__COMeshController_sendCommand_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __54__COMeshController_sendCommand_withCompletionHandler___block_invoke_cold_1(a1);
  }

  v3 = [[COMeshControllerQueuedCommand alloc] initWithCommand:*(a1 + 40) completionHandler:*(a1 + 48)];
  [*(a1 + 32) _enqueueCommand:v3];
}

- (void)sendRequest:(id)a3 sentRequestCallback:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__COMeshController_sendRequest_sentRequestCallback___block_invoke;
  v10[3] = &unk_278E164F0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x245D5FF10](v10);
  [(COMeshController *)self sendRequest:v8 withCompletionHandler:v9];
}

- (void)sendRequest:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshController *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__COMeshController_sendRequest_withCompletionHandler___block_invoke;
  block[3] = &unk_278E15B60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __54__COMeshController_sendRequest_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __54__COMeshController_sendRequest_withCompletionHandler___block_invoke_cold_1(a1);
  }

  v3 = [[COMeshControllerQueuedRequest alloc] initWithRequest:*(a1 + 40) completionHandler:*(a1 + 48)];
  [*(a1 + 32) _enqueueCommand:v3];
}

- (void)sendCommand:(id)a3 toPeer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshController *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__COMeshController_sendCommand_toPeer___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __39__COMeshController_sendCommand_toPeer___block_invoke(uint64_t a1)
{
  v2 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __39__COMeshController_sendCommand_toPeer___block_invoke_cold_1(a1);
  }

  v3 = [COMeshControllerQueuedCommand alloc];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__COMeshController_sendCommand_toPeer___block_invoke_82;
  v6[3] = &unk_278E16518;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = *(a1 + 48);
  v5 = [(COMeshControllerQueuedCommand *)v3 initWithCommand:v7 completionHandler:v6];
  [(COMeshControllerQueuedCommand *)v5 setDestination:*(a1 + 48)];
  [*(a1 + 32) _enqueueCommand:v5];
}

void __39__COMeshController_sendCommand_toPeer___block_invoke_82(void *a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COCoreLogForCategory(0);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __39__COMeshController_sendCommand_toPeer___block_invoke_82_cold_1(a1, v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v7 = a1[5];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = a1[6];
    v13 = 134218498;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p sent command %@ to peer %@", &v13, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendRequest:(id)a3 toPeer:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMeshController *)self dispatchQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__COMeshController_sendRequest_toPeer_withCompletionHandler___block_invoke;
  v15[3] = &unk_278E15D00;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __61__COMeshController_sendRequest_toPeer_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __61__COMeshController_sendRequest_toPeer_withCompletionHandler___block_invoke_cold_1(a1);
  }

  v3 = [(COMeshControllerQueuedRequest *)[COMeshControllerQueuedPeerRequest alloc] initWithRequest:*(a1 + 40) completionHandler:*(a1 + 56)];
  [(COMeshControllerQueuedRequest *)v3 setDestination:*(a1 + 48)];
  [*(a1 + 32) _enqueueCommand:v3];
}

- (void)broadcastRequest:(id)a3 includingSelf:(BOOL)a4 recipientsCallback:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(COMeshController *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__COMeshController_broadcastRequest_includingSelf_recipientsCallback_completionHandler___block_invoke;
  block[3] = &unk_278E16540;
  v22 = a4;
  v20 = v11;
  v21 = v12;
  v18 = v10;
  v19 = self;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

void __88__COMeshController_broadcastRequest_includingSelf_recipientsCallback_completionHandler___block_invoke(uint64_t a1)
{
  v5 = [[COMeshControllerQueuedBroadcastRequestMarker alloc] initWithRequest:*(a1 + 32) includeSelf:*(a1 + 64) recipientBlock:*(a1 + 48) completionHandler:*(a1 + 56)];
  v2 = *(a1 + 40);
  v3 = [v2 queuedCommands];
  v4 = [v3 arrayByAddingObject:v5];
  [v2 setQueuedCommands:v4];

  [*(a1 + 40) _processQueuedCommands];
}

- (void)sendNotification:(id)a3
{
  v4 = a3;
  v5 = [(COMeshController *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__COMeshController_sendNotification___block_invoke;
  v7[3] = &unk_278E156B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __37__COMeshController_sendNotification___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) nodes];
  v3 = [v2 copy];

  v4 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 134218498;
    v22 = v12;
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = v3;
    _os_log_debug_impl(&dword_244378000, v4, OS_LOG_TYPE_DEBUG, "%p notifying %@ with recipients list %@", buf, 0x20u);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __37__COMeshController_sendNotification___block_invoke_86;
  v18 = &unk_278E16568;
  v19 = *(a1 + 40);
  v20 = v5;
  v6 = v5;
  [v3 enumerateObjectsUsingBlock:&v15];
  v7 = *(a1 + 32);
  v8 = [v7 queuedCommands];
  v9 = [v8 arrayByAddingObjectsFromArray:v6];
  [v7 setQueuedCommands:v9];

  [*(a1 + 32) _processQueuedCommands];
  v10 = *MEMORY[0x277D85DE8];
}

void __37__COMeshController_sendNotification___block_invoke_86(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[COMeshControllerQueuedNotification alloc] initWithNotification:*(a1 + 32) destination:v3];

  [*(a1 + 40) addObject:v4];
}

- (id)_newCompanionLinkClient
{
  v3 = [(COMeshController *)self companionLinkClientFactory];
  v4 = [v3 companionLinkClientForCurrentDevice];

  v5 = [(COMeshController *)self dispatchQueue];
  [v4 setDispatchQueue:v5];

  return v4;
}

- (id)nodeForConstituent:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(COMeshController *)self nodes];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 remote];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_currentBallotMergedWithBallot:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(COMeshController *)self ballot];
  v7 = [v6 mutableCopy];

  [v7 mergeBallot:v4];
  v8 = [(COMeshController *)self me];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [v7 candidates];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if (([v14 isEqual:v8] & 1) == 0)
        {
          v15 = [(COMeshController *)self nodeForConstituent:v14];

          if (!v15)
          {
            [v7 removeCandidate:v14];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v16 = [v7 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)_pingLeader
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a3;
  _os_log_debug_impl(&dword_244378000, a2, OS_LOG_TYPE_DEBUG, "%p sending ping (%g)", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (id)_inflateQueueCommands
{
  v32 = *MEMORY[0x277D85DE8];
  v23 = [MEMORY[0x277CBEB18] array];
  v3 = [(COMeshController *)self nodes];
  v4 = [v3 copy];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = self;
  v5 = [(COMeshController *)self queuedCommands];
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = v4;
          if ([v11 includeSelfInBroadcast])
          {
            v13 = [(COMeshController *)v22 nodeForMe];
            [v12 arrayByAddingObject:v13];
            v14 = v5;
            v16 = v15 = v4;

            v12 = v16;
            v4 = v15;
            v5 = v14;
          }

          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __41__COMeshController__inflateQueueCommands__block_invoke;
          v24[3] = &unk_278E16568;
          v17 = v11;
          v25 = v17;
          v26 = v23;
          [v12 enumerateObjectsUsingBlock:v24];
          v18 = [v17 recipientCallback];

          if (v18)
          {
            v19 = [v17 recipientCallback];
            (v19)[2](v19, v12);
          }
        }

        else
        {
          [v23 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v23;
}

void __41__COMeshController__inflateQueueCommands__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [COMeshControllerQueuedBroadcastRequest alloc];
  v5 = [*(a1 + 32) request];
  v6 = [*(a1 + 32) completionHandler];
  v7 = [(COMeshControllerQueuedBroadcastRequest *)v4 initWithRequest:v5 destination:v3 completionHandler:v6];

  [*(a1 + 40) addObject:v7];
}

- (void)_processQueuedCommands
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "%p leader is %p, so dispatching queue to self", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

void __42__COMeshController__processQueuedCommands__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResponse:a2];
  [*(a1 + 32) invokeCallbackWithError:v6];
}

void __42__COMeshController__processQueuedCommands__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResponse:a2];
  [*(a1 + 32) invokeCallbackWithError:v6];
}

void __42__COMeshController__processQueuedCommands__block_invoke_91(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) command];
    [v3 _setSender:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = *(a1 + 64);
    if (objc_opt_isKindOfClass())
    {
      v6 = [*(a1 + 32) destination];
      v7 = [WeakRetained listener];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __42__COMeshController__processQueuedCommands__block_invoke_2_92;
        v46[3] = &unk_278E16590;
        v9 = *(a1 + 40);
        v46[4] = *(a1 + 32);
        [WeakRetained node:v9 didReceiveRequest:v3 responseCallBack:v46];
LABEL_13:

        goto LABEL_14;
      }

      v16 = *(a1 + 48);
      v17 = [v16 sentCommands];
      v18 = [v17 arrayByAddingObject:*(a1 + 32)];
      [v16 setSentCommands:v18];

      goto LABEL_11;
    }

    v10 = *(a1 + 72);
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) setDestination:*(a1 + 40)];
      v11 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v32 = *(a1 + 48);
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = *(a1 + 40);
        *buf = 134218498;
        v48 = v32;
        v49 = 2112;
        v50 = v34;
        v51 = 2048;
        v52 = v35;
        _os_log_debug_impl(&dword_244378000, v11, OS_LOG_TYPE_DEBUG, "%p self requesting %@ from %p", buf, 0x20u);
      }

      v12 = *(a1 + 40);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __42__COMeshController__processQueuedCommands__block_invoke_93;
      v43[3] = &unk_278E165B8;
      v13 = v12;
      v14 = *(a1 + 32);
      v44 = v13;
      v45 = v14;
      [WeakRetained node:v13 didReceiveRequest:v3 responseCallBack:v43];
      v15 = v44;
    }

    else
    {
      v21 = *(a1 + 80);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v28 = *(a1 + 88);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v31 = COCoreLogForCategory(0);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v36 = *(a1 + 48);
            v37 = objc_opt_class();
            v38 = NSStringFromClass(v37);
            v39 = *(a1 + 40);
            *buf = 134218498;
            v48 = v36;
            v49 = 2112;
            v50 = v38;
            v51 = 2048;
            v52 = v39;
            _os_log_debug_impl(&dword_244378000, v31, OS_LOG_TYPE_DEBUG, "%p self sending %@ to %p", buf, 0x20u);
          }

          [*(a1 + 32) invokeCallbackWithError:0];
          [WeakRetained node:*(a1 + 40) didReceiveCommand:v3];
          goto LABEL_13;
        }

        v19 = [*(a1 + 32) destination];
        [v19 sendMeshCommand:v3];
        goto LABEL_12;
      }

      v22 = [*(a1 + 32) destination];
      v23 = [WeakRetained listener];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        v29 = [WeakRetained sentCommands];
        v30 = [v29 arrayByAddingObject:*(a1 + 32)];
        [WeakRetained setSentCommands:v30];

LABEL_11:
        v19 = [*(a1 + 32) destination];
        [v19 sendMeshRequest:v3];
LABEL_12:

        goto LABEL_13;
      }

      v25 = *(a1 + 40);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __42__COMeshController__processQueuedCommands__block_invoke_2_94;
      v40[3] = &unk_278E165B8;
      v26 = v25;
      v27 = *(a1 + 32);
      v41 = v26;
      v42 = v27;
      [WeakRetained node:v26 didReceiveRequest:v3 responseCallBack:v40];
      v15 = v41;
    }

    goto LABEL_13;
  }

LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
}

void __42__COMeshController__processQueuedCommands__block_invoke_2_92(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResponse:a2];
  [*(a1 + 32) invokeCallbackWithError:v6];
}

void __42__COMeshController__processQueuedCommands__block_invoke_93(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a3;
  v6 = a2;
  [v6 _setSender:v5];
  [*(a1 + 40) setResponse:v6];

  [*(a1 + 40) invokeCallbackWithError:v7];
}

void __42__COMeshController__processQueuedCommands__block_invoke_2_94(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a3;
  v6 = a2;
  [v6 _setSender:v5];
  [*(a1 + 40) setResponse:v6];

  [*(a1 + 40) invokeCallbackWithError:v7];
}

- (void)_enqueueCommand:(id)a3
{
  v4 = a3;
  v5 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(COMeshController *)self queuedCommands];
  v7 = [v6 arrayByAddingObject:v4];

  [(COMeshController *)self setQueuedCommands:v7];

  [(COMeshController *)self _processQueuedCommands];
}

- (void)_removeSentCommand:(id)a3 fromNode:(id)a4 withResponse:(id)a5 error:(id)a6
{
  v28 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v13);

  if (([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled] & 1) == 0)
  {
    v14 = self;
    objc_sync_enter(v14);
    v15 = [(COMeshController *)v14 trackers];
    v16 = [v15 nodeStateTrackerForNode:v10];
    v17 = [v16 state];

    objc_sync_exit(v14);
    if ((v17 & 0xFFFFFFFFFFFFFFFBLL) == 0)
    {
      goto LABEL_15;
    }
  }

  v18 = [(COMeshController *)self sentCommands];
  v19 = [v18 count];
  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = v19;
  v21 = 0;
  while (1)
  {
    v22 = [v18 objectAtIndex:v21];
    v23 = [v22 command];
    if (v23 == v28)
    {
      break;
    }

LABEL_8:
    if (v20 == ++v21)
    {
      goto LABEL_14;
    }
  }

  v24 = [v22 destination];
  v25 = [v24 isEqual:v10];

  if (!v25)
  {
    goto LABEL_8;
  }

  v26 = [v18 mutableCopy];
  [v26 removeObjectAtIndex:v21];
  [(COMeshController *)self setSentCommands:v26];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v22 setResponse:v27];
  }

  [v22 invokeCallbackWithError:v12];

LABEL_14:
  v11 = v27;
LABEL_15:
}

- (id)_electionRequestWithBallot:(id)a3 generation:(unint64_t)a4
{
  v6 = a3;
  v7 = [(COMeshController *)self listener];
  v8 = [v7 listeningPort];

  v9 = [[COMeshElectionRequest alloc] initWithBallot:v6 generation:a4 listeningPort:v8];

  return v9;
}

- (id)_ballotResponseWithBallot:(id)a3 generation:(unint64_t)a4
{
  v5 = a3;
  v6 = [(COMeshBaseBallotResponse *)[COMeshBallotResponse alloc] initWithBallot:v5 generation:a4];

  return v6;
}

- (id)_voteRequestWithBallot:(id)a3 generation:(unint64_t)a4
{
  v5 = a3;
  v6 = [(COMeshBaseBallotRequest *)[COMeshVoteRequest alloc] initWithBallot:v5 generation:a4];

  return v6;
}

- (id)_acceptResponseWithBallot:(id)a3 generation:(unint64_t)a4
{
  v5 = a3;
  v6 = [(COMeshBaseBallotResponse *)[COMeshAcceptResponse alloc] initWithBallot:v5 generation:a4];

  return v6;
}

- (void)_performElectionGeneration:(unint64_t)a3 source:(id)a4 allowingPostTransition:(BOOL)a5
{
  v46 = a5;
  v62 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  v9 = self;
  objc_sync_enter(v9);
  v10 = [(COMeshController *)v9 state];
  v11 = [(COMeshController *)v9 trackers];
  v12 = [v11 nodeStateTrackersWithStatus:1];
  v13 = [v11 nodeStateTrackersWithStatus:2];

  objc_sync_exit(v9);
  if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 0)
  {
    goto LABEL_37;
  }

  [(COMeshController *)v9 _pingLeader];
  if (v10 == 2)
  {
    v23 = [(COMeshController *)v9 generation];
    v24 = v23 >= a3;
    if (v23 > a3)
    {
      a3 = v23;
    }

    if (v24)
    {
      v29 = [(COMeshController *)v9 ballot];
      v20 = [v29 mutableCopy];

      v21 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v9;
        *&buf[12] = 2048;
        *&buf[14] = a3;
        v28 = "%p continuing ELECTION (%llu)";
        goto LABEL_17;
      }
    }

    else
    {
      v25 = [(COMeshController *)v9 discoveryManager];
      [v25 clearRecords];

      v26 = [COMutableBallot alloc];
      v27 = [(COMeshController *)v9 me];
      v20 = [(COBallot *)v26 initWithCandidate:v27];

      v21 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v9;
        *&buf[12] = 2048;
        *&buf[14] = a3;
        v28 = "%p update to ELECTION (%llu)";
LABEL_17:
        _os_log_impl(&dword_244378000, v21, OS_LOG_TYPE_DEFAULT, v28, buf, 0x16u);
      }
    }

    v22 = 1;
    goto LABEL_19;
  }

  if (v10 == 1)
  {
    v14 = [(COMeshController *)v9 addOns];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __77__COMeshController__performElectionGeneration_source_allowingPostTransition___block_invoke;
    v57[3] = &unk_278E16400;
    v57[4] = v9;
    [v14 enumerateObjectsUsingBlock:v57];
  }

  [(COMeshController *)v9 setElectionStart:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW)];
  [(COMeshController *)v9 willTransitionToState:2];
  v15 = v9;
  objc_sync_enter(v15);
  v15->_state = 2;
  objc_sync_exit(v15);

  v16 = [(COMeshController *)v15 generation];
  if (v16 + 1 > a3)
  {
    a3 = v16 + 1;
  }

  v17 = [(COMeshController *)v15 discoveryManager];
  [v17 clearRecords];

  v18 = [COMutableBallot alloc];
  v19 = [(COMeshController *)v15 me];
  v20 = [(COBallot *)v18 initWithCandidate:v19];

  v21 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = v15;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    _os_log_impl(&dword_244378000, v21, OS_LOG_TYPE_DEFAULT, "%p starting ELECTION (%llu)", buf, 0x16u);
  }

  v22 = 0;
LABEL_19:

  [(COMeshController *)v9 setGeneration:a3];
  if (v7)
  {
    [(COMutableBallot *)v20 addCandidate:v7];
    v30 = [(COMeshController *)v9 nodeForConstituent:v7];
    v31 = v30;
    if (!v30)
    {
LABEL_30:

      goto LABEL_31;
    }

    v32 = [(COMutableBallot *)v30 discoveryRecord];
    v33 = v32;
    if (v32 && [v32 shouldAdvertise])
    {
      if (![(COMutableBallot *)v20 addDiscoveryRecord:v33])
      {
LABEL_29:

        goto LABEL_30;
      }

      v34 = COCoreLogForCategory(11);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [(COBallot *)v20 discovery];
        *buf = 134218498;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = v35;
        *&buf[22] = 2048;
        v59 = v20;
        v45 = v35;
        _os_log_impl(&dword_244378000, v34, OS_LOG_TYPE_DEFAULT, "%p updated Discovery %@ in ballot %p", buf, 0x20u);
      }
    }

    else
    {
      v34 = COCoreLogForCategory(11);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218754;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = v33;
        *&buf[22] = 2112;
        v59 = v31;
        v60 = 2048;
        v61 = v20;
        _os_log_error_impl(&dword_244378000, v34, OS_LOG_TYPE_ERROR, "%p cannot add Discovery %@ for %@ to ballot %p", buf, 0x2Au);
      }
    }

    goto LABEL_29;
  }

LABEL_31:
  [(COMeshController *)v9 setBallot:v20, v45];
  v36 = [(COBallot *)v20 candidates];
  v37 = [v36 firstObject];

  v38 = [(COMeshController *)v9 _electionRequestWithBallot:v20 generation:a3];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v59) = 0;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __77__COMeshController__performElectionGeneration_source_allowingPostTransition___block_invoke_99;
  v51[3] = &unk_278E16608;
  v55 = buf;
  v56 = a3;
  v39 = v37;
  v52 = v39;
  v40 = v38;
  v53 = v40;
  v41 = v20;
  v54 = v41;
  [v12 enumerateObjectsUsingBlock:v51];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __77__COMeshController__performElectionGeneration_source_allowingPostTransition___block_invoke_2;
  v47[3] = &unk_278E16630;
  v47[4] = v9;
  v42 = v40;
  v48 = v42;
  v50 = a3;
  v43 = v41;
  v49 = v43;
  [v13 enumerateObjectsUsingBlock:v47];
  if ((v22 & 1) == 0)
  {
    [(COMeshController *)v9 didTransitionToState:2];
  }

  if (v46 && (*(*&buf[8] + 24) & 1) == 0)
  {
    [(COMeshController *)v9 _transitionToPostElection];
  }

  _Block_object_dispose(buf, 8);
LABEL_37:

  v44 = *MEMORY[0x277D85DE8];
}

void __77__COMeshController__performElectionGeneration_source_allowingPostTransition___block_invoke_99(void *a1, void *a2)
{
  v10 = a2;
  v3 = [v10 state];
  if (v3 == 3)
  {
    v4 = a1[8];
    if (v4 != [v10 lastGenerationReceived])
    {
      goto LABEL_6;
    }

    v5 = a1[4];
    v6 = [v10 lastBallotReceived];
    v7 = [v6 candidates];
    v8 = [v7 firstObject];

    LOBYTE(v5) = [v5 isEqual:v8];
    if ((v5 & 1) == 0)
    {
LABEL_6:
      if (([v10 hasOutstandingRequest] & 1) == 0)
      {
        *(*(a1[7] + 8) + 24) = 1;
        [v10 setElectionStage:1];
        [v10 setState:2];
        [v10 setOutstandingRequest:1];
        v9 = [v10 node];
        [v9 sendMeshRequest:a1[5]];

        [v10 setLastGenerationSent:a1[8]];
        [v10 setLastBallotSent:a1[6]];
      }
    }
  }

  else if (v3 == 2)
  {
    *(*(a1[7] + 8) + 24) = 1;
  }
}

void __77__COMeshController__performElectionGeneration_source_allowingPostTransition___block_invoke_2(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 hasOutstandingProbe] & 1) == 0)
  {
    v4 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = [v3 node];
      v9 = 134218240;
      v10 = v5;
      v11 = 2048;
      v12 = v6;
      _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p sending probe to %p", &v9, 0x16u);
    }

    v7 = [v3 node];
    [v7 sendMeshRequest:a1[5]];

    [v3 setElectionStage:1];
    [v3 setLastGenerationSent:a1[7]];
    [v3 setLastBallotSent:a1[6]];
    [v3 setOutstandingProbe:1];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isElectionComplete
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(COMeshController *)v2 trackers];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__COMeshController__isElectionComplete__block_invoke;
  v5[3] = &unk_278E16658;
  v5[4] = &v6;
  [v3 enumerateNodeStateTrackersOfStatus:1 usingBlock:v5];

  objc_sync_exit(v2);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __39__COMeshController__isElectionComplete__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 state];
  if (result == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (void)_setupBrowsers
{
  v3 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  if (!self->_rapportBrowser)
  {
    v4 = objc_alloc_init(CORapportBrowser);
    v5 = [(COMeshController *)self companionLinkClientFactory];
    if (v5)
    {
      [(CORapportBrowser *)v4 setCompanionLinkClientFactory:v5];
    }

    rapportBrowser = self->_rapportBrowser;
    self->_rapportBrowser = v4;
    v7 = v4;

    [(COMeshController *)self addBrowser:v7];
  }

  if (!self->_ballotBrowser)
  {
    v8 = [[COBallotBrowser alloc] initWithDiscoveryDelay:30.0];
    [(COBallotBrowser *)v8 setRapportBrowser:self->_rapportBrowser];
    ballotBrowser = self->_ballotBrowser;
    self->_ballotBrowser = v8;
    v10 = v8;

    [(COMeshController *)self addBrowser:v10];
  }

  if (self->_globalServiceName && !self->_idsBrowser)
  {
    v11 = [COIDSBrowser alloc];
    v12 = [(COMeshController *)self meshName];
    v13 = [(COMeshController *)self globalServiceName];
    v14 = [(COIDSBrowser *)v11 initWithMeshName:v12 idsServiceName:v13];

    idsBrowser = self->_idsBrowser;
    self->_idsBrowser = v14;
    v16 = v14;

    [(COMeshController *)self addBrowser:v16];
  }
}

- (id)_constituentCharacteristics:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v4 device];
  v6 = [v4 flags];

  return [v3 stringWithFormat:@"%d, %llu", v5, v6];
}

- (id)_nodeDetails:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 remote];
    v7 = [v5 client];
    v8 = [v7 destinationDevice];
    v9 = [v8 name];

    v10 = [v5 client];
    v11 = [v10 destinationDevice];
    v12 = [v11 identifier];

    v13 = [v5 connectionType];
    if (v13 > 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = off_278E16808[v13];
    }

    v16 = [v5 discoveryType];
    v17 = 67;
    if ((v16 & 2) == 0)
    {
      v17 = 99;
    }

    v18 = 82;
    if ((v16 & 1) == 0)
    {
      v18 = 114;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c", v18, v17];
  }

  else
  {
    v6 = [(COMeshController *)self me];
    v12 = 0;
    v9 = 0;
    v14 = 0;
    v15 = 0;
  }

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"[COMeshNode : %p] %@ [Name] - %@ [Rapport ID] - %@ [Conn] - %@ [Disc] - %@", v5, v6, v9, v12, v14, v15];

  return v19;
}

- (void)_logElectionSummary
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = [(COMeshController *)self ballot];
  v4 = [v3 candidates];
  v5 = [v4 mutableCopy];

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__9;
  v40 = __Block_byref_object_dispose__9;
  v41 = [MEMORY[0x277CCAB68] string];
  v6 = [(COMeshController *)self trackers];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __39__COMeshController__logElectionSummary__block_invoke;
  v33[3] = &unk_278E16680;
  v35 = &v36;
  v33[4] = self;
  v7 = v5;
  v34 = v7;
  [v6 enumerateNodeStateTrackersOfStatus:1 usingBlock:v33];

  v8 = v37[5];
  v9 = [(COMeshController *)self _nodeDetails:0];
  [v8 appendFormat:@"%@\n", v9];

  v10 = [(COMeshController *)self me];
  [v7 removeObject:v10];

  v11 = COCoreLogForCategory(8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(COMeshController *)self meshName];
    v13 = [(COMeshController *)self generation];
    v14 = v37[5];
    *buf = 134218754;
    v43 = self;
    v44 = 2114;
    v45 = v12;
    v46 = 2048;
    v47 = v13;
    v48 = 2114;
    v49 = v14;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p %{public}@ : Candidate summary for Election(%llu)\n%{public}@", buf, 0x2Au);
  }

  if ([v7 count])
  {
    v15 = COCoreLogForCategory(8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v29 = [(COMeshController *)self meshName];
      v30 = [(COMeshController *)self generation];
      *buf = 134218754;
      v43 = self;
      v44 = 2114;
      v45 = v29;
      v46 = 2048;
      v47 = v30;
      v48 = 2112;
      v49 = v7;
      _os_log_error_impl(&dword_244378000, v15, OS_LOG_TYPE_ERROR, "%p %{public}@ : Ballot contituents and active trackers are mismatched for Election(%llu). Constituents not found in active trackers = %@", buf, 0x2Au);
    }
  }

  v16 = v37[5];
  v37[5] = 0;

  v17 = [(COMeshController *)self trackers];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __39__COMeshController__logElectionSummary__block_invoke_125;
  v32[3] = &unk_278E166A8;
  v32[4] = self;
  v32[5] = &v36;
  [v17 enumerateNodeStateTrackersOfStatus:2 usingBlock:v32];

  v18 = COCoreLogForCategory(8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(COMeshController *)self meshName];
    v20 = [(COMeshController *)self generation];
    v21 = v37[5];
    *buf = 134218754;
    v43 = self;
    v44 = 2114;
    v45 = v19;
    v46 = 2048;
    v47 = v20;
    v48 = 2114;
    v49 = v21;
    _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%p %{public}@ : Dormant trackers summary for Election(%llu)\n%{public}@", buf, 0x2Au);
  }

  v22 = v37[5];
  v37[5] = 0;

  v23 = [(COMeshController *)self trackers];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __39__COMeshController__logElectionSummary__block_invoke_126;
  v31[3] = &unk_278E166A8;
  v31[4] = self;
  v31[5] = &v36;
  [v23 enumerateNodeStateTrackersOfStatus:0 usingBlock:v31];

  v24 = COCoreLogForCategory(8);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(COMeshController *)self meshName];
    v26 = [(COMeshController *)self generation];
    v27 = v37[5];
    *buf = 134218754;
    v43 = self;
    v44 = 2114;
    v45 = v25;
    v46 = 2048;
    v47 = v26;
    v48 = 2114;
    v49 = v27;
    _os_log_impl(&dword_244378000, v24, OS_LOG_TYPE_DEFAULT, "%p %{public}@ : Discovered trackers summary for Election(%llu)\n%{public}@", buf, 0x2Au);
  }

  _Block_object_dispose(&v36, 8);
  v28 = *MEMORY[0x277D85DE8];
}

void __39__COMeshController__logElectionSummary__block_invoke(void *a1, void *a2)
{
  v3 = *(*(a1[6] + 8) + 40);
  v4 = a1[4];
  v5 = a2;
  v6 = [v5 node];
  v7 = [v4 _nodeDetails:v6];
  [v3 appendFormat:@"%@\n", v7];

  v8 = a1[5];
  v10 = [v5 node];

  v9 = [v10 remote];
  [v8 removeObject:v9];
}

void __39__COMeshController__logElectionSummary__block_invoke_125(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v11 = v3;
  if (!v4)
  {
    v5 = [MEMORY[0x277CCAB68] string];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v11;
    v4 = *(*(*(a1 + 40) + 8) + 40);
  }

  v8 = *(a1 + 32);
  v9 = [v3 node];
  v10 = [v8 _nodeDetails:v9];
  [v4 appendFormat:@"%@\n", v10];
}

void __39__COMeshController__logElectionSummary__block_invoke_126(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v11 = v3;
  if (!v4)
  {
    v5 = [MEMORY[0x277CCAB68] string];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v11;
    v4 = *(*(*(a1 + 40) + 8) + 40);
  }

  v8 = *(a1 + 32);
  v9 = [v3 node];
  v10 = [v8 _nodeDetails:v9];
  [v4 appendFormat:@"%@\n", v10];
}

- (void)_processBackedOffNodesExcludingTracker:(id)a3
{
  v4 = a3;
  if (self->_internalFlags)
  {
    v10 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [COMeshController _processBackedOffNodesExcludingTracker:];
    }
  }

  else
  {
    v5 = [(COMeshController *)self ballot];
    v6 = [(COMeshController *)self generation];
    v7 = [(COMeshBaseBallotRequest *)[COMeshElectionRequest alloc] initWithBallot:v5 generation:v6];
    v8 = [(COMeshController *)self trackers];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__COMeshController__processBackedOffNodesExcludingTracker___block_invoke;
    v11[3] = &unk_278E166D0;
    v12 = v4;
    v13 = v5;
    v15 = v7;
    v16 = v6;
    v14 = self;
    v9 = v7;
    v10 = v5;
    [v8 enumerateNodeStateTrackersUsingBlock:v11];
  }
}

void __59__COMeshController__processBackedOffNodesExcludingTracker___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state] == 2 && (objc_msgSend(v3, "isEqual:", *(a1 + 32)) & 1) == 0)
  {
    v4 = [v3 lastBallotSent];
    v5 = [v4 isEqualToBallot:*(a1 + 40)];

    v6 = [v3 lastGenerationSent];
    if ((!v5 || v6 != *(a1 + 64)) && (![v3 electionStage] || objc_msgSend(v3, "electionStage") == 4))
    {
      v7 = [v3 backoffResponse];
      if (v7)
      {
        [v3 setLastGenerationSent:*(a1 + 64)];
        [v3 setLastBallotSent:*(a1 + 40)];
        v8 = COCoreLogForCategory(0);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 48);
          v10 = *(a1 + 64);
          v11 = [v3 node];
          v20 = 134218496;
          v21 = v9;
          v22 = 2048;
          v23 = v10;
          v24 = 2048;
          v25 = v11;
          _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p delayed BALLOT (%llu) to %p", &v20, 0x20u);
        }

        v12 = [*(a1 + 48) _ballotResponseWithBallot:*(a1 + 40) generation:*(a1 + 64)];
        (v7)[2](v7, v12, 0);

        [v3 setBackoffResponse:0];
      }

      else if (([v3 hasOutstandingRequest] & 1) == 0)
      {
        [v3 setLastGenerationSent:*(a1 + 64)];
        [v3 setLastBallotSent:*(a1 + 40)];
        v13 = COCoreLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 48);
          v15 = [v3 node];
          v16 = v15;
          v20 = 134218496;
          v21 = v14;
          if (v5)
          {
            v17 = 103;
          }

          else
          {
            v17 = 98;
          }

          v22 = 2048;
          v23 = v15;
          v24 = 1024;
          LODWORD(v25) = v17;
          _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p resend election to %p because our %c has changed", &v20, 0x1Cu);
        }

        [v3 setElectionStage:1];
        v18 = [v3 node];
        [v18 sendMeshRequest:*(a1 + 56)];
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToPostElection
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_244378000, v0, OS_LOG_TYPE_DEBUG, "%p not transitioning because not in election", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_handleElectionRequest:(id)a3 onNode:(id)a4 responseCallBack:(id)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v43 = a4;
  v39 = a5;
  v8 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  v40 = [v43 remote];
  v9 = [v41 generation];
  v10 = [v41 variant];
  v42 = [v41 ballot];
  v11 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v40 software];
    v13 = [v41 rapportTransactionID];
    v14 = [v42 candidates];
    v15 = [v14 count];
    v16 = [v42 candidates];
    v17 = [v16 firstObject];

    *buf = 134219778;
    v45 = self;
    v46 = 2048;
    v47 = v9;
    v48 = 1024;
    *v49 = v10;
    *&v49[4] = 2048;
    *&v49[6] = v43;
    v50 = 2114;
    v51 = v12;
    v52 = 2048;
    v53 = v13;
    v54 = 2048;
    v55 = v15;
    v56 = 2114;
    v57 = v17;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p received ELECTION (%llu:%d) from %p (%{public}@) XID 0x%llX - (%lu, %{public}@)", buf, 0x4Eu);
  }

  v18 = self;
  objc_sync_enter(v18);
  v19 = [(COMeshController *)v18 trackers];
  v20 = [v19 nodeStateTrackerForNode:v43];

  objc_sync_exit(v18);
  [v20 setState:2];
  if (v18->_internalFlags)
  {
    goto LABEL_11;
  }

  v21 = [v43 remote];
  if ([v21 supportsBackoff])
  {
LABEL_10:

    goto LABEL_11;
  }

  v22 = [v20 lastBallotReceived];
  if (([v22 isEqualToBallot:v42] & 1) == 0)
  {

    goto LABEL_10;
  }

  v23 = [v20 lastGenerationReceived] == v9;

  if (v23)
  {
    [v20 setElectionStage:4];
    [v20 setBackoffResponse:v39];
    v24 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v45 = v18;
      v46 = 2048;
      v47 = v43;
      _os_log_impl(&dword_244378000, v24, OS_LOG_TYPE_DEFAULT, "%p backed off legacy node %p", buf, 0x16u);
    }

    goto LABEL_24;
  }

LABEL_11:
  [v20 setLastGenerationReceived:v9];
  [v20 setLastBallotReceived:v42];
  if (![(COMeshController *)v18 _isCurrentElectionVariant:v10])
  {
    v24 = [(COMeshController *)v18 ballot];
    v29 = [(COMeshController *)v18 generation];
    if (([v24 isEqualToBallot:v42]& 1) == 0)
    {
      v30 = [(COMeshController *)v18 _currentBallotMergedWithBallot:v42];
      [v20 setLastBallotSent:v30];
      v31 = [v24 candidates];
      v32 = [v31 firstObject];

      v33 = [v30 candidates];
      v34 = [v33 firstObject];

      LODWORD(v33) = [v32 isEqual:v34];
      if (v33)
      {
        v35 = COCoreLogForCategory(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218496;
          v45 = v18;
          v46 = 2048;
          v47 = v29;
          v48 = 2048;
          *v49 = v43;
          _os_log_debug_impl(&dword_244378000, v35, OS_LOG_TYPE_DEBUG, "%p performing fast election (%llu) with %p", buf, 0x20u);
        }

        v36 = [(COMeshController *)v18 _acceptResponseWithBallot:v30 generation:v29];
        v39[2](v39, v36, 0);

        [v20 setState:3];
        if ([(COMeshController *)v18 _isElectionComplete])
        {
          [(COMeshController *)v18 _transitionToPostElection];
        }

        goto LABEL_23;
      }

      [(COMeshController *)v18 _performElectionGeneration:[(COMeshController *)v18 generation] source:v40 allowingPostTransition:1];
    }

    v30 = [(COMeshController *)v18 ballot];
    v37 = [(COMeshController *)v18 _ballotResponseWithBallot:v30 generation:v29];
    v39[2](v39, v37, 0);

LABEL_23:
    goto LABEL_24;
  }

  v25 = [v41 ballot];
  [(COMeshController *)v18 _handleDiscoveryUsingBallot:v25];

  [(COMeshController *)v18 _performElectionGeneration:v9 source:v40 allowingPostTransition:1];
  v24 = [(COMeshController *)v18 ballot];
  v26 = [(COMeshController *)v18 generation];
  [v20 setElectionStage:0];
  [v20 setLastBallotSent:v24];
  [v20 setLastGenerationSent:v26];
  v27 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v45 = v18;
    v46 = 2048;
    v47 = v26;
    v48 = 2048;
    *v49 = v43;
    _os_log_debug_impl(&dword_244378000, v27, OS_LOG_TYPE_DEBUG, "%p sending BALLOT (%llu) to %p", buf, 0x20u);
  }

  v28 = [(COMeshController *)v18 _ballotResponseWithBallot:v24 generation:v26];
  v39[2](v39, v28, 0);

  [(COMeshController *)v18 _processBackedOffNodesExcludingTracker:v20];
LABEL_24:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_handleBallotResponse:(id)a3 onNode:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v46 = a3;
  v47 = a4;
  v6 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v6);

  v44 = [v47 remote];
  v7 = [v46 generation];
  v8 = [v46 variant];
  v45 = [v46 ballot];
  v9 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v44 software];
    v11 = [v46 rapportTransactionID];
    v12 = [v45 candidates];
    v13 = [v12 count];
    v14 = [v45 candidates];
    v15 = [v14 firstObject];

    *buf = 134219778;
    v49 = self;
    v50 = 2048;
    v51 = v7;
    v52 = 1024;
    *v53 = v8;
    *&v53[4] = 2048;
    *&v53[6] = v47;
    *&v53[14] = 2114;
    *&v53[16] = v10;
    *&v53[24] = 2048;
    *&v53[26] = v11;
    v54 = 2048;
    v55 = v13;
    v56 = 2114;
    v57 = v15;
    _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%p received BALLOT (%llu:%d) from %p (%{public}@) XID 0x%llX - (%lu, %{public}@)", buf, 0x4Eu);
  }

  v16 = self;
  objc_sync_enter(v16);
  v17 = [(COMeshController *)v16 trackers];
  v18 = [v17 nodeStateTrackerForNode:v47];

  objc_sync_exit(v16);
  [v18 setState:2];
  [v18 setLastGenerationReceived:v7];
  [v18 setLastBallotReceived:v45];
  [v18 setOutstandingRequest:0];
  if (![(COMeshController *)v16 _isCurrentElectionVariant:v8])
  {
    v28 = [(COMeshController *)v16 ballot];
    v29 = [v46 ballot];
    v30 = [v28 candidates];
    v31 = [v30 firstObject];

    v32 = [v29 candidates];
    v33 = [v32 firstObject];

    LODWORD(v32) = [v31 isEqual:v33];
    if (v32)
    {
      [v18 setLastBallotSent:v29];
      v34 = [(COMeshController *)v16 _voteRequestWithBallot:v29 generation:[(COMeshController *)v16 generation]];
      [v47 sendMeshRequest:v34];
    }

    else
    {
      [v18 setState:3];
      [(COMeshController *)v16 _performElectionGeneration:[(COMeshController *)v16 generation] source:v44 allowingPostTransition:1];
    }

    goto LABEL_33;
  }

  v19 = [v46 ballot];
  [(COMeshController *)v16 _handleDiscoveryUsingBallot:v19];

  if ([(COMeshController *)v16 generation]!= v7)
  {
    [(COMeshController *)v16 _performElectionGeneration:v7 source:v44 allowingPostTransition:1];
    v35 = [(COMeshController *)v16 generation];
    v21 = [(COMeshController *)v16 ballot];
    [v18 setLastBallotSent:v21];
    [v18 setLastGenerationSent:v35];
    [v18 setElectionStage:1];
    [v18 setOutstandingRequest:1];
    v23 = [(COMeshController *)v16 _electionRequestWithBallot:v21 generation:v35];
    [v47 sendMeshRequest:v23];
LABEL_32:

    [(COMeshController *)v16 _processBackedOffNodesExcludingTracker:v18];
    goto LABEL_33;
  }

  v20 = [(COMeshController *)v16 ballot];
  v21 = [v20 mutableCopy];

  v22 = [v21 candidates];
  v23 = [v22 firstObject];

  [v21 addCandidate:v44];
  v24 = [v47 discoveryRecord];
  v25 = v24;
  if (!v24 || ![v24 shouldAdvertise])
  {
    v26 = COCoreLogForCategory(11);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 134219010;
      v49 = v16;
      v50 = 2112;
      v51 = v25;
      v52 = 2112;
      *v53 = v47;
      *&v53[8] = 2048;
      *&v53[10] = v21;
      *&v53[18] = 2112;
      *&v53[20] = v46;
      _os_log_error_impl(&dword_244378000, v26, OS_LOG_TYPE_ERROR, "%p cannot add Discovery %@ for %@ to ballot %p when handling response %@", buf, 0x34u);
    }

    goto LABEL_17;
  }

  if ([v21 addDiscoveryRecord:v25])
  {
    v26 = COCoreLogForCategory(11);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v21 discovery];
      *buf = 134218498;
      v49 = v16;
      v50 = 2112;
      v51 = v27;
      v52 = 2048;
      *v53 = v21;
      _os_log_impl(&dword_244378000, v26, OS_LOG_TYPE_DEFAULT, "%p updated Discovery %@ in ballot %p when handling response", buf, 0x20u);
    }

LABEL_17:
  }

  [(COMeshController *)v16 setBallot:v21];
  v36 = [v45 candidates];
  v37 = [v36 firstObject];

  LODWORD(v36) = [v23 isEqual:v37];
  if (v36)
  {
    [v18 setLastBallotSent:v21];
    [v18 setLastGenerationSent:v7];
    [v18 setElectionStage:3];
    [v18 setOutstandingRequest:1];
    v38 = [(COMeshController *)v16 _voteRequestWithBallot:v21 generation:v7];
    [v47 sendMeshRequest:v38];
LABEL_31:

    goto LABEL_32;
  }

  if (v23 && ([v23 isEqual:v44] & 1) == 0)
  {
    [(COMeshController *)v16 _pingLeader];
  }

  [(COMeshController *)v16 _performElectionGeneration:v7 source:v44 allowingPostTransition:1];
  if (v16->_internalFlags)
  {
    goto LABEL_30;
  }

  v39 = [v18 lastBallotSent];
  if (([v39 isEqualToBallot:v21] & 1) == 0)
  {

    goto LABEL_30;
  }

  v40 = [v18 lastGenerationSent] == v7;

  if (!v40)
  {
LABEL_30:
    [v18 setElectionStage:1];
    [v18 setLastBallotSent:v21];
    [v18 setLastGenerationSent:v7];
    [v18 setOutstandingRequest:1];
    v38 = [(COMeshController *)v16 ballot];
    v42 = [(COMeshController *)v16 _electionRequestWithBallot:v38 generation:[(COMeshController *)v16 generation]];
    [v47 sendMeshRequest:v42];

    goto LABEL_31;
  }

  [v18 setElectionStage:4];
  v41 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v49 = v16;
    v50 = 2048;
    v51 = v47;
    _os_log_impl(&dword_244378000, v41, OS_LOG_TYPE_DEFAULT, "%p backed off %p", buf, 0x16u);
  }

LABEL_33:
  v43 = *MEMORY[0x277D85DE8];
}

- (void)_handleVoteRequest:(id)a3 onNode:(id)a4 responseCallBack:(id)a5
{
  v60 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v43 = a4;
  v40 = a5;
  v8 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  v39 = [v43 remote];
  v9 = [v42 generation];
  v10 = [v42 variant];
  v41 = [v42 ballot];
  v11 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v39 software];
    v13 = [v42 rapportTransactionID];
    v14 = [v41 candidates];
    v15 = [v14 count];
    v16 = [v41 candidates];
    v17 = [v16 firstObject];

    *buf = 134219778;
    v45 = self;
    v46 = 2048;
    v47 = v9;
    v48 = 1024;
    v49 = v10;
    v50 = 2048;
    v51 = v43;
    v52 = 2114;
    v53 = v12;
    v54 = 2048;
    v55 = v13;
    v56 = 2048;
    v57 = v15;
    v58 = 2114;
    v59 = v17;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p received VOTE (%llu:%d) from %p (%{public}@) XID 0x%llX - (%lu, %{public}@)", buf, 0x4Eu);
  }

  v18 = self;
  objc_sync_enter(v18);
  v19 = [(COMeshController *)v18 trackers];
  v20 = [v19 nodeStateTrackerForNode:v43];

  objc_sync_exit(v18);
  [v20 setLastGenerationReceived:v9];
  [v20 setLastBallotReceived:v41];
  [v20 setElectionStage:0];
  if ([(COMeshController *)v18 _isCurrentElectionVariant:v10])
  {
    v21 = [v42 ballot];
    [(COMeshController *)v18 _handleDiscoveryUsingBallot:v21];

    v22 = [(COMeshController *)v18 ballot];
    v23 = [(COMeshController *)v18 generation];
    if (v23 != v9)
    {
      goto LABEL_11;
    }

    v24 = [v22 candidates];
    v25 = [v24 firstObject];

    v26 = [v41 candidates];
    v27 = [v26 firstObject];

    LODWORD(v26) = [v25 isEqual:v27];
    if (v26)
    {
      [v20 setLastBallotSent:v22];
      [v20 setLastGenerationSent:v9];
      v28 = [(COMeshController *)v18 _acceptResponseWithBallot:v22 generation:v9];
      v40[2](v40, v28, 0);

      [v20 setState:3];
      if ([(COMeshController *)v18 _isElectionComplete])
      {
        [(COMeshController *)v18 _transitionToPostElection];
      }
    }

    else
    {
LABEL_11:
      [v20 setLastBallotSent:v22];
      [v20 setLastGenerationSent:v9];
      v35 = [(COMeshController *)v18 _ballotResponseWithBallot:v22 generation:v23];
      v40[2](v40, v35, 0);
    }
  }

  else
  {
    v22 = [(COMeshController *)v18 ballot];
    v29 = [v42 ballot];
    v30 = [v22 candidates];
    v31 = [v30 firstObject];

    v32 = [v29 candidates];
    v33 = [v32 firstObject];

    LODWORD(v32) = [v31 isEqual:v33];
    if (v32)
    {
      v34 = [(COMeshController *)v18 _acceptResponseWithBallot:v22 generation:[(COMeshController *)v18 generation]];
      v40[2](v40, v34, 0);

      [v20 setState:3];
      if ([(COMeshController *)v18 _isElectionComplete])
      {
        [(COMeshController *)v18 _transitionToPostElection];
      }
    }

    else
    {
      v36 = [(COMeshController *)v18 _currentBallotMergedWithBallot:v29];
      [v20 setLastBallotSent:v36];
      v37 = [(COMeshController *)v18 _ballotResponseWithBallot:v36 generation:[(COMeshController *)v18 generation]];
      v40[2](v40, v37, 0);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_handleAcceptResponse:(id)a3 onNode:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v44 = a4;
  v6 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v6);

  v41 = [v44 remote];
  v7 = [v43 generation];
  v8 = [v43 variant];
  v42 = [v43 ballot];
  v9 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v41 software];
    v11 = [v43 rapportTransactionID];
    v12 = [v42 candidates];
    v13 = [v12 count];
    v14 = [v42 candidates];
    v15 = [v14 firstObject];

    *buf = 134219778;
    v46 = self;
    v47 = 2048;
    v48 = v7;
    v49 = 1024;
    v50 = v8;
    v51 = 2048;
    v52 = v44;
    v53 = 2114;
    v54 = v10;
    v55 = 2048;
    v56 = v11;
    v57 = 2048;
    v58 = v13;
    v59 = 2114;
    v60 = v15;
    _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%p received ACCEPT (%llu:%d) from %p (%{public}@) XID 0x%llX - (%lu, %{public}@)", buf, 0x4Eu);
  }

  v16 = self;
  objc_sync_enter(v16);
  v17 = [(COMeshController *)v16 trackers];
  v18 = [v17 nodeStateTrackerForNode:v44];

  objc_sync_exit(v16);
  [v18 setLastGenerationReceived:v7];
  [v18 setLastBallotReceived:v42];
  [v18 setOutstandingRequest:0];
  if ([(COMeshController *)v16 _isCurrentElectionVariant:v8])
  {
    v19 = [v43 ballot];
    [(COMeshController *)v16 _handleDiscoveryUsingBallot:v19];

    v20 = [(COMeshController *)v16 ballot];
    v21 = [(COMeshController *)v16 generation];
    if (v21 == v7)
    {
      v22 = [v20 candidates];
      v23 = [v22 firstObject];

      v24 = [v42 candidates];
      v25 = [v24 firstObject];

      LODWORD(v24) = [v23 isEqual:v25];
      if (v24)
      {
        [v18 setLastBallotSent:v20];
        [v18 setLastGenerationSent:v7];
        [v18 setState:3];
        [v18 setElectionStage:0];
        if ([(COMeshController *)v16 _isElectionComplete])
        {
          [(COMeshController *)v16 _transitionToPostElection];
        }

        goto LABEL_25;
      }
    }

    if ((v16->_internalFlags & 1) == 0)
    {
      v31 = [v18 lastBallotSent];
      if ([v31 isEqualToBallot:v20])
      {
        v32 = [v18 lastGenerationSent] == v7;

        if (v32)
        {
          [v18 setElectionStage:4];
          v33 = COCoreLogForCategory(0);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v46 = v16;
            v47 = 2048;
            v48 = v44;
            _os_log_impl(&dword_244378000, v33, OS_LOG_TYPE_DEFAULT, "%p backed off %p", buf, 0x16u);
          }

          goto LABEL_25;
        }
      }

      else
      {
      }
    }

    [v18 setLastBallotSent:v20];
    [v18 setLastGenerationSent:v7];
    [v18 setElectionStage:1];
    [v18 setOutstandingRequest:1];
    v39 = [(COMeshController *)v16 _electionRequestWithBallot:v20 generation:v21];
    [v44 sendMeshRequest:v39];

    goto LABEL_25;
  }

  [v18 setState:3];
  v20 = [(COMeshController *)v16 ballot];
  v26 = [v43 ballot];
  v27 = [v20 candidates];
  v28 = [v27 firstObject];

  v29 = [v26 candidates];
  v30 = [v29 firstObject];

  LODWORD(v29) = [v28 isEqual:v30];
  if (v29)
  {
    if ([(COMeshController *)v16 _isElectionComplete])
    {
      [(COMeshController *)v16 _transitionToPostElection];
    }
  }

  else
  {
    v34 = [(COMeshController *)v16 _currentBallotMergedWithBallot:v26];
    [(COMeshController *)v16 setBallot:v34];
    v35 = [v20 candidates];
    v36 = [v35 firstObject];

    v37 = [v34 candidates];
    v38 = [v37 firstObject];

    LODWORD(v37) = [v36 isEqual:v38];
    if (v37)
    {
      if ([(COMeshController *)v16 _isElectionComplete])
      {
        [(COMeshController *)v16 _transitionToPostElection];
      }
    }

    else
    {
      [(COMeshController *)v16 _performElectionGeneration:[(COMeshController *)v16 generation] source:0 allowingPostTransition:1];
    }
  }

LABEL_25:
  v40 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiscoveryUsingBallot:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = [a3 discovery];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v22;
    *&v6 = 134217984;
    v20 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [(COMeshController *)self me];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          v14 = COCoreLogForCategory(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = v20;
            v26 = self;
            _os_log_debug_impl(&dword_244378000, v14, OS_LOG_TYPE_DEBUG, "%p ignoring discovery of myself", buf, 0xCu);
          }
        }

        else
        {
          v14 = [v4 objectForKey:v11];
          v15 = [(COMeshController *)self discoveryManager];
          v8 |= [v15 addDiscoveryRecord:v14];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v7);
    if (v8)
    {
      v16 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(COMeshController *)self discoveryManager];
        v18 = [v17 count];
        *buf = 134218240;
        v26 = self;
        v27 = 2048;
        v28 = v18;
        _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%p Discovery (IP) has %ld queued records", buf, 0x16u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_handleDiscoveryUsingElectionRequest:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2857D4880])
  {
    v5 = [v4 listeningPort];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 _sendingConstituent];
  v7 = [v4 rapportOptions];
  v8 = [v7 objectForKey:*MEMORY[0x277D442C8]];
  v9 = [v7 objectForKey:*MEMORY[0x277D442D0]];
  v10 = [v7 objectForKey:*MEMORY[0x277D44298]];
  if (v6 && [v8 length] && objc_msgSend(v9, "length") && objc_msgSend(v10, "length") && (+[CODiscoveryRecord discoveryRecordWithConstituent:rapportIdentifier:IDSIdentifier:peerAddress:port:](CODiscoveryRecord, "discoveryRecordWithConstituent:rapportIdentifier:IDSIdentifier:peerAddress:port:", v6, v8, v9, v10, v5), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v13 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218242;
      v20 = self;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p discovered (election) %@", &v19, 0x16u);
    }

    v14 = [(COMeshController *)self listener];
    v15 = [v14 _handleDiscoveryRecord:v12];
  }

  else
  {
    v14 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [COMeshController _handleDiscoveryUsingElectionRequest:];
    }

    v12 = 0;
    v15 = 0;
  }

  v16 = v15;
  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)_finalizeCompletionOfNode:(id)a3 memberOfMesh:(BOOL)a4 eventProvider:(id)a5
{
  v6 = a4;
  v70 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v43 = a5;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v9 = self;
  objc_sync_enter(v9);
  v10 = [(COMeshController *)v9 trackers];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __73__COMeshController__finalizeCompletionOfNode_memberOfMesh_eventProvider___block_invoke;
  v61[3] = &unk_278E16658;
  v61[4] = &v62;
  [v10 enumerateNodeStateTrackersUsingBlock:v61];

  v11 = [(COMeshController *)v9 state];
  v12 = [(COMeshController *)v9 addOns];
  objc_sync_exit(v9);

  if (v6)
  {
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __73__COMeshController__finalizeCompletionOfNode_memberOfMesh_eventProvider___block_invoke_2;
    v60[3] = &unk_278E16400;
    v60[4] = v9;
    [v12 enumerateObjectsUsingBlock:v60];
  }

  if (v11 == 4)
  {
    if (!v63[3])
    {
      [(COMeshController *)v9 willTransitionToState:0];
      v13 = v9;
      objc_sync_enter(v13);
      v13->_state = 0;
      objc_sync_exit(v13);

      [(COMeshController *)v13 setListener:0];
      [(COMeshController *)v13 didTransitionToState:0];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __73__COMeshController__finalizeCompletionOfNode_memberOfMesh_eventProvider___block_invoke_181;
      v44[3] = &unk_278E16400;
      v44[4] = v13;
      [v12 enumerateObjectsUsingBlock:v44];
    }
  }

  else
  {
    v41 = [v8 remote];
    if (v41)
    {
      v14 = [(COMeshController *)v9 ballot];
      v42 = [v14 mutableCopy];

      v15 = [v42 candidates];
      v37 = [v15 firstObject];

      [v42 removeCandidate:v41];
      [(COMeshController *)v9 setBallot:v42];
      v16 = [(COMeshController *)v9 sentCommands];
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __73__COMeshController__finalizeCompletionOfNode_memberOfMesh_eventProvider___block_invoke_3;
      v56[3] = &unk_278E166F8;
      v58 = v17;
      v59 = v18;
      v19 = v8;
      v57 = v19;
      v40 = [v16 indexesOfObjectsPassingTest:v56];
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshControllerErrorDomain" code:-4100 userInfo:0];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __73__COMeshController__finalizeCompletionOfNode_memberOfMesh_eventProvider___block_invoke_4;
      v53[3] = &unk_278E16720;
      v21 = v16;
      v54 = v21;
      v36 = v20;
      v55 = v36;
      [v40 enumerateIndexesUsingBlock:v53];
      v39 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(v21, "count")}];
      [v39 removeIndexes:v40];
      v38 = [v21 objectsAtIndexes:v39];

      [(COMeshController *)v9 setSentCommands:v38];
      if (v11)
      {
        if ([v37 isEqual:v41])
        {
          v22 = objc_alloc_init(MEMORY[0x277CCAB58]);
          v23 = objc_alloc_init(MEMORY[0x277CCAB58]);
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __73__COMeshController__finalizeCompletionOfNode_memberOfMesh_eventProvider___block_invoke_5;
          v47[3] = &unk_278E16748;
          v51 = v17;
          v52 = v18;
          v24 = v22;
          v48 = v24;
          v49 = v19;
          v25 = v23;
          v50 = v25;
          [v38 enumerateObjectsUsingBlock:v47];
          if ([v24 count])
          {
            v26 = [v38 objectsAtIndexes:v24];
            v27 = [(COMeshController *)v9 queuedCommands];
            v28 = [v26 arrayByAddingObjectsFromArray:v27];
            [(COMeshController *)v9 setQueuedCommands:v28];
          }

          if ([v25 count])
          {
            [v38 objectsAtIndexes:v25];
          }

          else
          {
            [MEMORY[0x277CBEA60] array];
          }
          v29 = ;
          [(COMeshController *)v9 setSentCommands:v29];

          v30 = v9;
          objc_sync_enter(v30);
          [(COMeshController *)v30 setLeader:0];
          objc_sync_exit(v30);

          if (!v43)
          {
            v31 = [(COMeshController *)v30 label];
            v45[0] = MEMORY[0x277D85DD0];
            v45[1] = 3221225472;
            v45[2] = __73__COMeshController__finalizeCompletionOfNode_memberOfMesh_eventProvider___block_invoke_6;
            v45[3] = &unk_278E16770;
            v46 = v31;
            v32 = v31;
            v43 = MEMORY[0x245D5FF10](v45);
          }

          v33 = [(COMeshController *)v30 recorder];
          (v33)[2](v33, 0x2857B5D68, v43);

          v34 = COCoreLogForCategory(0);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v67 = v30;
            v68 = 2112;
            v69 = v41;
            _os_log_impl(&dword_244378000, v34, OS_LOG_TYPE_DEFAULT, "%p lost leader %@", buf, 0x16u);
          }

          [(COMeshController *)v30 _performElectionGeneration:[(COMeshController *)v30 generation] source:0 allowingPostTransition:1];
        }

        else if (v11 == 2 && [(COMeshController *)v9 _isElectionComplete])
        {
          [(COMeshController *)v9 _transitionToPostElection];
        }
      }
    }
  }

  _Block_object_dispose(&v62, 8);
  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __73__COMeshController__finalizeCompletionOfNode_memberOfMesh_eventProvider___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 state];
  if (result == 4)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

BOOL __73__COMeshController__finalizeCompletionOfNode_memberOfMesh_eventProvider___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  if (objc_opt_isKindOfClass() & 1) != 0 || (v5 = a1[6], (objc_opt_isKindOfClass()))
  {
    v6 = [v3 destination];
    v7 = v6 == a1[4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __73__COMeshController__finalizeCompletionOfNode_memberOfMesh_eventProvider___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndex:a2];
  [v3 invokeCallbackWithError:*(a1 + 40)];
}

void __73__COMeshController__finalizeCompletionOfNode_memberOfMesh_eventProvider___block_invoke_5(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1[7];
  v11 = v5;
  if (objc_opt_isKindOfClass() & 1) != 0 || (v7 = a1[8], (objc_opt_isKindOfClass()))
  {
    v8 = [v11 destination];
    v9 = a1[5];

    if (v8 == v9)
    {
      goto LABEL_7;
    }

    v10 = 6;
  }

  else
  {
    v10 = 4;
  }

  [a1[v10] addIndex:a3];
LABEL_7:
}

id __73__COMeshController__finalizeCompletionOfNode_memberOfMesh_eventProvider___block_invoke_6(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0x2857B5228;
  v5[1] = 0x2857B5DC8;
  v1 = *(a1 + 32);
  v6[0] = 0x2857B5F88;
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_performStopOfNode:(id)a3 error:(id)a4 eventProvider:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v11);

  v12 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218240;
    v19 = self;
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p stopping %p", &v18, 0x16u);
  }

  v13 = self;
  objc_sync_enter(v13);
  v14 = [(COMeshController *)v13 trackers];
  v15 = v14;
  if (v9)
  {
    [v14 setNodeDormant:v8 withState:0 error:v9];
  }

  else
  {
    v16 = [v14 nodeStateTrackerForNode:v8];
    [v16 setState:0];
  }

  objc_sync_exit(v13);
  [(COMeshController *)v13 _finalizeCompletionOfNode:v8 memberOfMesh:1 eventProvider:v10];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_performInvalidationOfNode:(id)a3 error:(id)a4 eventProvider:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [v8 delegate];
  v13 = v12 == 0;

  v14 = COCoreLogForCategory(0);
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [COMeshController _performInvalidationOfNode:error:eventProvider:];
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 134218240;
      v29 = self;
      v30 = 2048;
      v31 = v8;
      _os_log_impl(&dword_244378000, v15, OS_LOG_TYPE_DEFAULT, "%p invalidating %p", &v28, 0x16u);
    }

    v16 = self;
    objc_sync_enter(v16);
    v17 = [(COMeshController *)v16 trackers];
    v18 = [v17 nodeStateTrackerForNode:v8];
    v19 = v18 == 0;

    if (v19)
    {
      v26 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [COMeshController _performInvalidationOfNode:error:eventProvider:];
      }

      objc_sync_exit(v16);
    }

    else
    {
      objc_sync_exit(v16);

      [v8 setDelegate:0];
      [(COMeshController *)v16 willInvalidateNode:v8 error:v9];
      v20 = v16;
      objc_sync_enter(v20);
      v21 = [(COMeshController *)v20 trackers];
      v22 = [v21 nodeStateTrackerForNode:v8];
      v23 = [v22 status];

      objc_sync_exit(v20);
      [v8 invalidate];
      v24 = v20;
      objc_sync_enter(v24);
      v25 = [(COMeshController *)v24 trackers];
      [v25 removeNodeStateTrackerForNode:v8];

      objc_sync_exit(v24);
      [(COMeshController *)v24 _finalizeCompletionOfNode:v8 memberOfMesh:v23 == 1 eventProvider:v10];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)didAddNode:(id)a3
{
  v8 = a3;
  v4 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    [(COMeshController *)self _handleNodeChanges];
  }

  else
  {
    v5 = [[COMeshNodeStateTracker alloc] initWithNode:v8];
    [(COMeshNodeStateTracker *)v5 setDelegate:self];
    v6 = self;
    objc_sync_enter(v6);
    v7 = [(COMeshController *)v6 trackers];
    [v7 addNodeStateTracker:v5];

    objc_sync_exit(v6);
    [(COMeshController *)v6 willActivateNode:v8];
    [v8 setDelegate:v6];
    [v8 activate];
  }
}

- (void)didActivateNode:(id)a3
{
  v4 = a3;
  v5 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(COMeshController *)self listener];

  if (v6 == v4)
  {
    [(COMeshController *)self _performElectionGeneration:[(COMeshController *)self generation] source:0 allowingPostTransition:1];
  }

  else
  {
    v7 = self;
    objc_sync_enter(v7);
    v8 = [(COMeshController *)v7 trackers];
    v9 = [v8 nodeStateTrackerForNode:v4];

    objc_sync_exit(v7);
    v10 = [v9 status];
    v11 = COCoreLogForCategory(0);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (v10 == 1)
    {
      if (v12)
      {
        [COMeshController didActivateNode:];
      }
    }

    else
    {
      if (v12)
      {
        [COMeshController didActivateNode:];
      }

      [v9 setState:1];
      v13 = [(COMeshController *)v7 ballot];
      v11 = [(COMeshController *)v7 _electionRequestWithBallot:v13 generation:[(COMeshController *)v7 generation]];

      [v9 setElectionStage:1];
      [v9 setOutstandingRequest:1];
      [v9 setLastGenerationSent:{-[COMeshController generation](v7, "generation")}];
      v14 = [(COMeshController *)v7 ballot];
      [v9 setLastBallotSent:v14];

      [v4 sendMeshRequest:v11];
    }
  }
}

- (void)node:(id)a3 didSendCommand:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(COMeshController *)self label];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __40__COMeshController_node_didSendCommand___block_invoke;
    v11[3] = &unk_278E16770;
    v12 = v9;
    v10 = v9;
    [(COMeshController *)self _performStopOfNode:v6 error:0 eventProvider:v11];
  }

  else
  {
    [(COMeshController *)self _removeSentCommand:v7 fromNode:v6 withResponse:0 error:0];
  }
}

id __40__COMeshController_node_didSendCommand___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0x2857B5228;
  v5[1] = 0x2857B5DC8;
  v1 = *(a1 + 32);
  v6[0] = 0x2857B5EC8;
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)node:(id)a3 didReceiveCommand:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    v9 = objc_opt_class();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(COMeshController *)self notificationHandlers];
    }

    else
    {
      [(COMeshController *)self commandHandlers];
    }
    v17 = ;
    v18 = [v17 objectForKey:v9];
    v15 = MEMORY[0x245D5FF10]();

    if (v18)
    {
      (v18)[2](v18, v7);
    }

    if (!v15)
    {
      v16 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v10 = [(COMeshController *)self trackers];
    v11 = [v10 nodeStateTrackerForNode:v6];
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceReferenceDate];
    [v11 setLastHeard:?];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [COMeshController node:didReceiveCommand:];
      }

      v14 = [(COMeshController *)self label];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __43__COMeshController_node_didReceiveCommand___block_invoke;
      v23[3] = &unk_278E16770;
      v24 = v14;
      v15 = v14;
      [(COMeshController *)self _performStopOfNode:v6 error:0 eventProvider:v23];
      v16 = v24;
      goto LABEL_21;
    }

    v9 = objc_opt_class();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(COMeshController *)self notificationHandlers];
    }

    else
    {
      [(COMeshController *)self commandHandlers];
    }
    v19 = ;
    v20 = [v19 objectForKey:v9];
    v15 = MEMORY[0x245D5FF10]();

    if (v20)
    {
      (v20)[2](v20, v7);
    }

    if (!v15)
    {
      v16 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
LABEL_23:
        v22 = NSStringFromClass(v9);
        *buf = 134218498;
        v26 = self;
        v27 = 2112;
        v28 = v22;
        v29 = 2048;
        v30 = v6;
        _os_log_debug_impl(&dword_244378000, v16, OS_LOG_TYPE_DEBUG, "%p found no handler for %@ from %p", buf, 0x20u);
      }

LABEL_21:
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

id __43__COMeshController_node_didReceiveCommand___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0x2857B5228;
  v5[1] = 0x2857B5DC8;
  v1 = *(a1 + 32);
  v6[0] = 0x2857B5EA8;
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)unknownNodeForCommand:(id)a3 result:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_opt_class();
  v10 = [v6 _sendingConstituent];
  v11 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = 134218754;
    v14 = self;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v10;
    _os_log_error_impl(&dword_244378000, v11, OS_LOG_TYPE_ERROR, "%p disregarding command %@ (%@) from unknown node %@", &v13, 0x2Au);
  }

  v7[2](v7, 0);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)node:(id)a3 didReceiveRequest:(id)a4 responseCallBack:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v10);

  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    goto LABEL_2;
  }

  v13 = [(COMeshController *)self trackers];
  v14 = [v13 nodeStateTrackerForNode:v16];
  v15 = [MEMORY[0x277CBEAA8] now];
  [v15 timeIntervalSinceReferenceDate];
  [v14 setLastHeard:?];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(COMeshController *)self _handleElectionRequest:v8 onNode:v16 responseCallBack:v9];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = objc_alloc_init(COMeshResponse);
        v9[2](v9, v12, 0);
LABEL_4:

        goto LABEL_9;
      }

LABEL_2:
      v11 = [(COMeshController *)self requestHandlers];
      v12 = [v11 objectForKey:objc_opt_class()];

      if (v12)
      {
        (v12[1].super.super.isa)(v12, v8, v9);
      }

      goto LABEL_4;
    }

    [(COMeshController *)self _handleVoteRequest:v8 onNode:v16 responseCallBack:v9];
  }

LABEL_9:
}

- (void)node:(id)a3 didReceiveResponse:(id)a4 toRequest:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [(COMeshController *)self trackers];
  v12 = [v11 nodeStateTrackerForNode:v14];
  v13 = [MEMORY[0x277CBEAA8] now];
  [v13 timeIntervalSinceReferenceDate];
  [v12 setLastHeard:?];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(COMeshController *)self _handleBallotResponse:v8 onNode:v14];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(COMeshController *)self _handleAcceptResponse:v8 onNode:v14];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(COMeshController *)self setPendingPing:0];
      }

      else
      {
        [(COMeshController *)self _removeSentCommand:v9 fromNode:v14 withResponse:v8 error:0];
      }
    }
  }
}

- (void)node:(id)a3 didReceiveError:(id)a4 forCommand:(id)a5
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v11);

  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    [(COMeshController *)self _removeSentCommand:v10 fromNode:v8 withResponse:0 error:v9];
    goto LABEL_62;
  }

  v12 = [(COMeshController *)self listener];

  if (v12 != v8)
  {
    v13 = self;
    objc_sync_enter(v13);
    v14 = [(COMeshController *)v13 trackers];
    v46 = [v14 nodeStateTrackerForNode:v8];

    objc_sync_exit(v13);
    v15 = [v9 code];
    v47 = [v9 domain];
    v16 = [v47 isEqualToString:@"COMeshNodeErrorDomain"];
    if (v15 == -4000)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    isKindOfClass = 0;
    v44 = [v47 isEqualToString:*MEMORY[0x277D44250]];
    if (v44 && v15 == -6722)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v45 = 1;
    }

    else
    {
      objc_opt_class();
      v45 = objc_opt_isKindOfClass();
    }

    v20 = v17 | isKindOfClass;
    if ((v17 | isKindOfClass))
    {
      goto LABEL_21;
    }

    v21 = v44;
    if (v15 != -6714)
    {
      v21 = 0;
    }

    if ((v21 & v45) == 1)
    {
LABEL_21:
      v43 = v17;
      if (isKindOfClass)
      {
        v22 = [(COMeshController *)v13 label];
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __52__COMeshController_node_didReceiveError_forCommand___block_invoke;
        v53[3] = &unk_278E16798;
        v23 = v10;
        v54 = v23;
        v55 = v22;
        v24 = v22;
        v25 = MEMORY[0x245D5FF10](v53);
        v26 = COCoreLogForCategory(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [COMeshController node:v13 didReceiveError:v23 forCommand:v26];
        }

        [(COMeshController *)v13 setPendingPing:0];
      }

      else
      {
        v25 = 0;
      }

      v27 = [v8 remote];
      if (v27)
      {
        v28 = [(COMeshController *)v13 ballot];
        v29 = [v28 candidates];
        v30 = [v29 firstObject];

        if ([v27 isEqual:v30])
        {
          v31 = v25;
          if (!v25)
          {
            v32 = [(COMeshController *)v13 label];
            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __52__COMeshController_node_didReceiveError_forCommand___block_invoke_186;
            v50[3] = &unk_278E167C0;
            v52 = v43;
            v51 = v32;
            v33 = v32;
            v31 = MEMORY[0x245D5FF10](v50);

            v25 = v31;
          }

          goto LABEL_32;
        }

        if (v20)
        {
          v31 = 0;
LABEL_32:
          [(COMeshController *)v13 _performStopOfNode:v8 error:v9 eventProvider:v31];
LABEL_33:

          goto LABEL_62;
        }
      }

      if (v43)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v46 state] == 1)
        {
          v34 = [(COMeshController *)v13 ballot];
          v30 = [(COMeshController *)v13 _electionRequestWithBallot:v34 generation:[(COMeshController *)v13 generation]];

          [v46 setOutstandingRequest:1];
          [v46 setLastGenerationSent:{-[COMeshController generation](v13, "generation")}];
          v35 = [(COMeshController *)v13 ballot];
          [v46 setLastBallotSent:v35];

          [v8 sendMeshRequest:v30];
          goto LABEL_33;
        }
      }
    }

    [(COMeshController *)v13 _removeSentCommand:v10 fromNode:v8 withResponse:0 error:v9];
    v36 = [v46 state];
    switch(v36)
    {
      case 4:
        v39 = COCoreLogForCategory(0);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [COMeshController node:didReceiveError:forCommand:];
        }

        v40 = [(COMeshController *)v13 label];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __52__COMeshController_node_didReceiveError_forCommand___block_invoke_187;
        v48[3] = &unk_278E16770;
        v49 = v40;
        v41 = v40;
        [(COMeshController *)v13 _performStopOfNode:v8 error:v9 eventProvider:v48];

        goto LABEL_61;
      case 2:
        if ((v44 & v45) != 1)
        {
          goto LABEL_61;
        }

        v38 = COCoreLogForCategory(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v57 = v8;
          v58 = 2112;
          v59 = v9;
          _os_log_impl(&dword_244378000, v38, OS_LOG_TYPE_DEFAULT, "electing node %p failed with %@", buf, 0x16u);
        }

        break;
      case 1:
        v37 = COCoreLogForCategory(0);
        v38 = v37;
        if ((v45 & 1) == 0)
        {
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [COMeshController node:didReceiveError:forCommand:];
          }

          goto LABEL_47;
        }

        if (v44)
        {
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v57 = v8;
            v58 = 2112;
            v59 = v9;
            _os_log_impl(&dword_244378000, v38, OS_LOG_TYPE_DEFAULT, "starting node %p failed with %@", buf, 0x16u);
          }

LABEL_47:

          [v46 setState:0];
          goto LABEL_61;
        }

        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [COMeshController node:didReceiveError:forCommand:];
        }

        break;
      default:
LABEL_61:

        goto LABEL_62;
    }

    [(COMeshController *)v13 _performStopOfNode:v8 error:v9 eventProvider:0];
    goto LABEL_61;
  }

  v19 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [COMeshController node:didReceiveError:forCommand:];
  }

  [(COMeshController *)self stop];
LABEL_62:

  v42 = *MEMORY[0x277D85DE8];
}

id __52__COMeshController_node_didReceiveError_forCommand___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v9[0] = 0x2857B5E88;
  v8[0] = 0x2857B5228;
  v8[1] = 0x2857B5E88;
  v2 = MEMORY[0x277CCABB0];
  [*(a1 + 32) responseTimeout];
  v3 = [v2 numberWithDouble:?];
  v8[2] = 0x2857B5DC8;
  v4 = *(a1 + 40);
  v9[1] = v3;
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id __52__COMeshController_node_didReceiveError_forCommand___block_invoke_186(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v1 = COMeshControllerLostLeaderReasonGone;
  if (*(a1 + 40))
  {
    v1 = &COMeshControllerLostLeaderReasonRoll;
  }

  v2 = *v1;
  v7[0] = 0x2857B5228;
  v7[1] = 0x2857B5DC8;
  v3 = *(a1 + 32);
  v8[0] = v2;
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id __52__COMeshController_node_didReceiveError_forCommand___block_invoke_187(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0x2857B5228;
  v5[1] = 0x2857B5DC8;
  v1 = *(a1 + 32);
  v6[0] = 0x2857B5A28;
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)unknownNodeForRequest:(id)a3 result:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(COMeshController *)self _handleDiscoveryUsingElectionRequest:v6];
  }

  else
  {
    v10 = objc_opt_class();
    v11 = [v6 _sendingConstituent];
    v12 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 134218754;
      v15 = self;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v11;
      _os_log_error_impl(&dword_244378000, v12, OS_LOG_TYPE_ERROR, "%p disregarding request %@ (%@) from unknown node %@", &v14, 0x2Au);
    }

    v9 = 0;
  }

  v7[2](v7, v9);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didInvalidateNode:(id)a3
{
  v4 = a3;
  v5 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(COMeshController *)self listener];

  if (v6 == v4)
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [(COMeshController *)v10 state];
    objc_sync_exit(v10);

    if ((v11 & 0xFFFFFFFFFFFFFFFBLL) == 0)
    {
      [(COMeshController *)v10 stop];
      goto LABEL_8;
    }

    v12 = [(COMeshController *)v10 label];
    v13 = [(COMeshController *)v10 recorder];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __38__COMeshController_didInvalidateNode___block_invoke_2;
    v25 = &unk_278E16770;
    v26 = v12;
    v14 = v13[2];
    v8 = v12;
    v14(v13, 0x2857B5D68, &v22);

    v15 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(COMeshController *)v10 didInvalidateNode:v15];
    }

    v16 = [(COMeshController *)v10 trackers:v22];
    [v16 removeAllNodeStateTrackers];

    v17 = [(COMeshController *)v10 me];
    v18 = [[COBallot alloc] initWithCandidate:v17];
    [(COMeshController *)v10 setBallot:v18];

    v19 = [(COMeshController *)v10 _newCompanionLinkClient];
    v20 = [[COMeshLocalNode alloc] initWithCompanionLinkClient:v19 source:v17];
    v21 = [(COMeshController *)v10 companionLinkClientFactory];
    [(COMeshLocalNode *)v20 setCompanionLinkClientFactory:v21];

    [(COMeshController *)v10 setListener:v20];
    [(COMeshController *)v10 _performElectionGeneration:[(COMeshController *)v10 generation]+ 1 source:0 allowingPostTransition:0];

    v9 = v26;
  }

  else
  {
    v7 = [(COMeshController *)self label];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __38__COMeshController_didInvalidateNode___block_invoke;
    v27[3] = &unk_278E16770;
    v28 = v7;
    v8 = v7;
    [(COMeshController *)self _performInvalidationOfNode:v4 error:0 eventProvider:v27];
    v9 = v28;
  }

LABEL_8:
}

id __38__COMeshController_didInvalidateNode___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0x2857B5228;
  v5[1] = 0x2857B5DC8;
  v1 = *(a1 + 32);
  v6[0] = 0x2857B5F28;
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __38__COMeshController_didInvalidateNode___block_invoke_2(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0x2857B5228;
  v5[1] = 0x2857B5DC8;
  v1 = *(a1 + 32);
  v6[0] = 0x2857B5F68;
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)didRemoveNode:(id)a3
{
  v4 = a3;
  v5 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    [(COMeshController *)self _handleNodeChanges];
  }

  else
  {
    v6 = [(COMeshController *)self label];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __34__COMeshController_didRemoveNode___block_invoke;
    v8[3] = &unk_278E16770;
    v9 = v6;
    v7 = v6;
    [(COMeshController *)self _performInvalidationOfNode:v4 error:0 eventProvider:v8];
  }
}

id __34__COMeshController_didRemoveNode___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0x2857B5228;
  v5[1] = 0x2857B5DC8;
  v1 = *(a1 + 32);
  v6[0] = 0x2857B5F48;
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)nodeBecameAvailable:(id)a3
{
  v4 = a3;
  v5 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(COMeshController *)v6 addOns];
  objc_sync_exit(v6);

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__COMeshController_nodeBecameAvailable___block_invoke;
  v8[3] = &unk_278E16400;
  v8[4] = v6;
  [v7 enumerateObjectsUsingBlock:v8];
}

- (void)nodeShouldRetryAfterBackoff:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 electionStage] == 4 && objc_msgSend(v4, "state") == 2)
  {
    v5 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 backoffBucket] - 1;
      v7 = [v4 node];
      v17 = 134218496;
      v18 = self;
      v19 = 2048;
      v20 = v6;
      v21 = 2048;
      v22 = v7;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p back off (%ld) firing for %p", &v17, 0x20u);
    }

    v8 = [(COMeshController *)self ballot];
    v9 = [(COMeshController *)self generation];
    v10 = [v4 backoffResponse];
    if (v10)
    {
      [v4 setLastGenerationSent:v9];
      [v4 setLastBallotSent:v8];
      v11 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v4 node];
        v17 = 134218496;
        v18 = self;
        v19 = 2048;
        v20 = v9;
        v21 = 2048;
        v22 = v12;
        _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p delayed BALLOT (%llu) to %p", &v17, 0x20u);
      }

      v13 = [(COMeshController *)self _ballotResponseWithBallot:v8 generation:v9];
      (v10)[2](v10, v13, 0);

      [v4 setBackoffResponse:0];
    }

    else if (([v4 hasOutstandingRequest] & 1) == 0)
    {
      [v4 setLastGenerationSent:v9];
      [v4 setLastBallotSent:v8];
      [v4 setElectionStage:1];
      v14 = [(COMeshBaseBallotRequest *)[COMeshElectionRequest alloc] initWithBallot:v8 generation:v9];
      v15 = [v4 node];
      [v15 sendMeshRequest:v14];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)backedOffNodeMovedOutOfElection:(id)a3
{
  v7 = a3;
  v4 = [v7 totalBackedOffTime];
  if (v4 > [(COMeshController *)self longestBackOff])
  {
    -[COMeshController setLongestBackOff:](self, "setLongestBackOff:", [v7 totalBackedOffTime]);
    v5 = [v7 node];
    v6 = [v5 remote];
    [(COMeshController *)self setLongestBackedOffConstituent:v6];
  }
}

- (void)discoveryManager:(id)a3 didDiscoverRecords:(id)a4
{
  v5 = a4;
  v6 = [(COMeshController *)self dispatchQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__COMeshController_discoveryManager_didDiscoverRecords___block_invoke;
  v8[3] = &unk_278E156B0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __56__COMeshController_discoveryManager_didDiscoverRecords___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) count];
    *buf = 134218240;
    v20 = v3;
    v21 = 2048;
    v22 = v4;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p delayed Discovery (IP) - %lu records", buf, 0x16u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [*(a1 + 32) listener];
        v12 = [v11 _handleDiscoveryRecord:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didStartElection
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  state = v2->_state;
  objc_sync_exit(v2);

  if (state != 2)
  {
    [(COMeshController *)v2 willTransitionToState:2];
    v4 = v2;
    objc_sync_enter(v4);
    v2->_state = 2;
    objc_sync_exit(v4);

    v5 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = v4;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p moved to election state", &v7, 0xCu);
    }

    [(COMeshController *)v4 didTransitionToState:2];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didCompleteElection
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  state = v2->_state;
  objc_sync_exit(v2);

  if (state != 3)
  {
    [(COMeshController *)v2 willTransitionToState:3];
    v4 = v2;
    objc_sync_enter(v4);
    v2->_state = 3;
    objc_sync_exit(v4);

    v5 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = v4;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p moved to processing state", &v7, 0xCu);
    }

    [(COMeshController *)v4 didTransitionToState:3];
    [(COMeshController *)v4 setElectionEnd:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW)];
    [(COMeshController *)v4 _processQueuedCommands];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleNodeChanges
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(COMeshController *)v2 addOns];
  objc_sync_exit(v2);

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__COMeshController__handleNodeChanges__block_invoke;
  v4[3] = &unk_278E16400;
  v4[4] = v2;
  [v3 enumerateObjectsUsingBlock:v4];
}

- (void)_setupCoordinationPrefsObserver
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = self;
    _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%p setting up observers to watch coordination prefs", &v9, 0xCu);
  }

  v4 = MEMORY[0x277CFD0B0];
  v5 = [MEMORY[0x277CFD0B0] coordinationBundleID];
  v6 = [v4 userDefaultsForIdentifer:v5];
  coordinationDefaults = self->_coordinationDefaults;
  self->_coordinationDefaults = v6;

  [(NSUserDefaults *)self->_coordinationDefaults addObserver:self forKeyPath:*MEMORY[0x277CFCF00] options:0 context:0];
  [(NSUserDefaults *)self->_coordinationDefaults addObserver:self forKeyPath:*MEMORY[0x277CFCF08] options:0 context:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_tearDownCoordinationPrefsObserver
{
  [(NSUserDefaults *)self->_coordinationDefaults removeObserver:self forKeyPath:*MEMORY[0x277CFCF00]];
  coordinationDefaults = self->_coordinationDefaults;
  v4 = *MEMORY[0x277CFCF08];

  [(NSUserDefaults *)coordinationDefaults removeObserver:self forKeyPath:v4];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = *MEMORY[0x277CFCF00];
  if ([v9 isEqualToString:*MEMORY[0x277CFCF00]])
  {
    v13 = [v10 objectForKey:v12];
    if (v13)
    {
      v14 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 134218240;
        v25 = self;
        v26 = 1024;
        v27 = [v13 BOOLValue];
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p observed an update to fast fold enablement. new value = %d", &v24, 0x12u);
      }

      v15 = [v13 BOOLValue];
      if (v15 != [MEMORY[0x277CFD0B8] isFastFoldEnabled])
      {
        v22 = COCoreLogForCategory(0);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        v24 = 134217984;
        v25 = self;
        v23 = "%p fast fold changed. Exiting process";
        goto LABEL_18;
      }
    }
  }

  v16 = *MEMORY[0x277CFCF08];
  if ([v9 isEqualToString:*MEMORY[0x277CFCF08]])
  {
    v17 = [v10 objectForKey:v16];
    if (!v17)
    {
      goto LABEL_12;
    }

    v18 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v17 BOOLValue];
      v24 = 134218240;
      v25 = self;
      v26 = 1024;
      v27 = v19;
      _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%p observed an update to ip diffing enablement. new value = %d", &v24, 0x12u);
    }

    v20 = [v17 BOOLValue];
    if (v20 == [MEMORY[0x277CFD0B8] isIPDiscoveryDiffingEnabled])
    {
LABEL_12:

      goto LABEL_13;
    }

    v22 = COCoreLogForCategory(0);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
LABEL_19:

      exit(1);
    }

    v24 = 134217984;
    v25 = self;
    v23 = "%p ip diffing changed. Exiting process";
LABEL_18:
    _os_log_impl(&dword_244378000, v22, OS_LOG_TYPE_DEFAULT, v23, &v24, 0xCu);
    goto LABEL_19;
  }

LABEL_13:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)setListener:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "%p listener is now %p", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

void __52__COMeshController_registerHandler_forCommandClass___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_8_0(a1);
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __53__COMeshController_deregisterHandlerForCommandClass___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_9_0(a1);
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __57__COMeshController_registerHandler_forNotificationClass___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_8_0(a1);
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __58__COMeshController_deregisterHandlerForNotificationClass___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_9_0(a1);
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __52__COMeshController_registerHandler_forRequestClass___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_8_0(a1);
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __53__COMeshController_deregisterHandlerForRequestClass___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_9_0(a1);
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __54__COMeshController_sendCommand_withCompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_0(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __54__COMeshController_sendRequest_withCompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_0(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __39__COMeshController_sendCommand_toPeer___block_invoke_cold_1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v2 = a1[5];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = a1[6];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);

  v12 = *MEMORY[0x277D85DE8];
}

void __39__COMeshController_sendCommand_toPeer___block_invoke_82_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a1[4];
  v6 = a1[5];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = a1[6];
  v13 = 134218754;
  v14 = v7;
  OUTLINED_FUNCTION_5_0();
  v15 = v11;
  v16 = a2;
  _os_log_error_impl(&dword_244378000, a3, OS_LOG_TYPE_ERROR, "%p failed to send command %@ to peer %@. Error %@", &v13, 0x2Au);

  v12 = *MEMORY[0x277D85DE8];
}

void __61__COMeshController_sendRequest_toPeer_withCompletionHandler___block_invoke_cold_1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v2 = a1[5];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = a1[6];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_processBackedOffNodesExcludingTracker:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_244378000, v0, OS_LOG_TYPE_ERROR, "%p legacy nodes don't need to handle backoffs", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiscoveryUsingElectionRequest:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_10_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_performInvalidationOfNode:error:eventProvider:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_244378000, v0, OS_LOG_TYPE_DEBUG, "Bailing on invalidation of node %p since we're not tracking it", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_performInvalidationOfNode:error:eventProvider:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "%p already invalidated or in the process of invalidating %p", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)didActivateNode:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "%p probing %p", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)didActivateNode:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "%p not probing %p", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)node:didReceiveCommand:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "%p received exit from %p", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)node:(uint64_t)a1 didReceiveError:(void *)a2 forCommand:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  [a2 responseTimeout];
  v8 = 134218240;
  v9 = a1;
  v10 = 2048;
  v11 = v5;
  OUTLINED_FUNCTION_10_0(&dword_244378000, a3, v6, "%p ping (%g) failed!", &v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)node:didReceiveError:forCommand:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_10_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)node:didReceiveError:forCommand:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_10_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)node:didReceiveError:forCommand:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_10_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)node:didReceiveError:forCommand:.cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_244378000, v0, OS_LOG_TYPE_ERROR, "listener failed with %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)didInvalidateNode:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a1 meshName];
  v5 = [a1 me];
  v7 = 134218498;
  v8 = a1;
  v9 = 2112;
  v10 = v4;
  v11 = 2112;
  v12 = v5;
  _os_log_error_impl(&dword_244378000, a2, OS_LOG_TYPE_ERROR, "%p restarting %@ mesh (%@)", &v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

@end