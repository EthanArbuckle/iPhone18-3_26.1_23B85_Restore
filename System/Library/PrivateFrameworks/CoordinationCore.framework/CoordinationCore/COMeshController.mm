@interface COMeshController
- (BOOL)_isElectionComplete;
- (BOOL)addAddOn:(id)on;
- (BOOL)removeAddOn:(id)on;
- (COBallot)ballot;
- (COCompanionLinkClientFactoryProtocol)companionLinkClientFactory;
- (COConstituent)leader;
- (COMeshController)initWithConstituentType:(unint64_t)type;
- (COMeshNode)nodeForMe;
- (NSArray)nodes;
- (NSOrderedSet)addOns;
- (NSString)description;
- (id)_acceptResponseWithBallot:(id)ballot generation:(unint64_t)generation;
- (id)_ballotResponseWithBallot:(id)ballot generation:(unint64_t)generation;
- (id)_constituentCharacteristics:(id)characteristics;
- (id)_currentBallotMergedWithBallot:(id)ballot;
- (id)_electionRequestWithBallot:(id)ballot generation:(unint64_t)generation;
- (id)_handleDiscoveryUsingElectionRequest:(id)request;
- (id)_inflateQueueCommands;
- (id)_newCompanionLinkClient;
- (id)_nodeDetails:(id)details;
- (id)_voteRequestWithBallot:(id)ballot generation:(unint64_t)generation;
- (id)nodeForConstituent:(id)constituent;
- (unint64_t)generation;
- (void)_enqueueCommand:(id)command;
- (void)_finalizeCompletionOfNode:(id)node memberOfMesh:(BOOL)mesh eventProvider:(id)provider;
- (void)_handleAcceptResponse:(id)response onNode:(id)node;
- (void)_handleBallotResponse:(id)response onNode:(id)node;
- (void)_handleDiscoveryUsingBallot:(id)ballot;
- (void)_handleElectionRequest:(id)request onNode:(id)node responseCallBack:(id)back;
- (void)_handleNodeChanges;
- (void)_handleVoteRequest:(id)request onNode:(id)node responseCallBack:(id)back;
- (void)_logElectionSummary;
- (void)_performElectionGeneration:(unint64_t)generation source:(id)source allowingPostTransition:(BOOL)transition;
- (void)_performInvalidationOfNode:(id)node error:(id)error eventProvider:(id)provider;
- (void)_performStopOfNode:(id)node error:(id)error eventProvider:(id)provider;
- (void)_pingLeader;
- (void)_processBackedOffNodesExcludingTracker:(id)tracker;
- (void)_processQueuedCommands;
- (void)_removeSentCommand:(id)command fromNode:(id)node withResponse:(id)response error:(id)error;
- (void)_setupBrowsers;
- (void)_setupCoordinationPrefsObserver;
- (void)_tearDownCoordinationPrefsObserver;
- (void)_transitionToPostElection;
- (void)backedOffNodeMovedOutOfElection:(id)election;
- (void)broadcastRequest:(id)request includingSelf:(BOOL)self recipientsCallback:(id)callback completionHandler:(id)handler;
- (void)deregisterHandlerForCommandClass:(Class)class;
- (void)deregisterHandlerForNotificationClass:(Class)class;
- (void)deregisterHandlerForRequestClass:(Class)class;
- (void)didActivateNode:(id)node;
- (void)didAddNode:(id)node;
- (void)didCompleteElection;
- (void)didInvalidateNode:(id)node;
- (void)didRemoveNode:(id)node;
- (void)didStartElection;
- (void)didTransitionToState:(unint64_t)state;
- (void)discoveryManager:(id)manager didDiscoverRecords:(id)records;
- (void)node:(id)node didReceiveCommand:(id)command;
- (void)node:(id)node didReceiveError:(id)error forCommand:(id)command;
- (void)node:(id)node didReceiveRequest:(id)request responseCallBack:(id)back;
- (void)node:(id)node didReceiveResponse:(id)response toRequest:(id)request;
- (void)node:(id)node didSendCommand:(id)command;
- (void)nodeBecameAvailable:(id)available;
- (void)nodeShouldRetryAfterBackoff:(id)backoff;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerHandler:(id)handler forCommandClass:(Class)class;
- (void)registerHandler:(id)handler forNotificationClass:(Class)class;
- (void)registerHandler:(id)handler forRequestClass:(Class)class;
- (void)sendCommand:(id)command toPeer:(id)peer;
- (void)sendCommand:(id)command withCompletionHandler:(id)handler;
- (void)sendNotification:(id)notification;
- (void)sendRequest:(id)request sentRequestCallback:(id)callback;
- (void)sendRequest:(id)request toPeer:(id)peer withCompletionHandler:(id)handler;
- (void)sendRequest:(id)request withCompletionHandler:(id)handler;
- (void)setAddOns:(id)ons;
- (void)setDispatchQueue:(id)queue;
- (void)setElectionElapsedTimer:(id)timer;
- (void)setElectionEnd:(unint64_t)end;
- (void)setElectionPrevious:(unint64_t)previous;
- (void)setElectionStart:(unint64_t)start;
- (void)setInternalFlags:(unint64_t)flags;
- (void)setListener:(id)listener;
- (void)setRecorder:(id)recorder;
- (void)start;
- (void)stop;
- (void)unknownNodeForCommand:(id)command result:(id)result;
- (void)unknownNodeForRequest:(id)request result:(id)result;
- (void)willActivateNode:(id)node;
- (void)willInvalidateNode:(id)node error:(id)error;
- (void)willTransitionToState:(unint64_t)state;
@end

@implementation COMeshController

- (COMeshController)initWithConstituentType:(unint64_t)type
{
  v35.receiver = self;
  v35.super_class = COMeshController;
  v4 = [(COMeshController *)&v35 init];
  if (v4)
  {
    v5 = [[COConstituent alloc] initWithType:type];
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
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v27 = *(v4 + 36);
    *(v4 + 36) = bundleIdentifier;

    if (![*(v4 + 36) length])
    {
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      processName = [processInfo processName];
      v30 = *(v4 + 36);
      *(v4 + 36) = processName;
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
  state = [(COMeshController *)self state];
  if (state > 4)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_278E167E0[state];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  nodes = [(COMeshController *)self nodes];
  v9 = [v5 stringWithFormat:@"<%@: %p, %@, %@>", v7, self, v4, nodes];

  return v9;
}

- (void)setInternalFlags:(unint64_t)flags
{
  flagsCopy = flags;
  self->_internalFlags = flags;
  if (![(COMeshController *)self state])
  {
    v7 = [(COMeshController *)self me];
    if ([v7 supportsBackoff] == (flagsCopy & 1))
    {
      flags = [v7 flags];
      if (flagsCopy)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0xFFFFFFFF80000000;
      }

      [v7 setFlags:v6 & 0xFFFFFFFF80000000 | flags & 0x7FFFFFFF];
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

- (void)setListener:(id)listener
{
  listenerCopy = listener;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  listener = [(COMeshController *)self listener];
  v8 = listener;
  if (listener != listenerCopy)
  {
    if (listener)
    {
      [listener setDelegate:0];
      [v8 invalidate];
    }

    objc_storeStrong(&self->_listener, listener);
    v9 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [COMeshController setListener:];
    }

    listener = self->_listener;
    if (listener)
    {
      meshName = [(COMeshController *)self meshName];
      [(COMeshNode *)listener setMeshName:meshName];

      v12 = self->_listener;
      label = [(COMeshController *)self label];
      [(COMeshNode *)v12 setLabel:label];

      v14 = self->_listener;
      recorder = [(COMeshController *)self recorder];
      [(COMeshNode *)v14 setRecorder:recorder];

      v16 = MEMORY[0x277CBEB58];
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      v19 = objc_opt_class();
      v20 = [v16 setWithObjects:{v17, v18, v19, objc_opt_class(), 0}];
      commandHandlers = [(COMeshController *)self commandHandlers];
      allKeys = [commandHandlers allKeys];
      [v20 addObjectsFromArray:allKeys];

      notificationHandlers = [(COMeshController *)self notificationHandlers];
      allKeys2 = [notificationHandlers allKeys];
      [v20 addObjectsFromArray:allKeys2];

      requestHandlers = [(COMeshController *)self requestHandlers];
      allKeys3 = [requestHandlers allKeys];
      [v20 addObjectsFromArray:allKeys3];

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
      leader = [(CONodeManager *)self->_nodeManager leader];
    }

    else
    {
      leader = 0;
    }
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(COMeshController *)selfCopy state]== 3)
    {
      leader = selfCopy->_leader;
    }

    else
    {
      leader = 0;
    }

    objc_sync_exit(selfCopy);
  }

  return leader;
}

- (COMeshNode)nodeForMe
{
  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    nodeManager = [(COMeshController *)self nodeManager];
    nodeForMe = [nodeManager nodeForMe];
  }

  else
  {
    nodeForMe = self->_listener;
  }

  return nodeForMe;
}

- (unint64_t)generation
{
  if (![MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    return self->_generation;
  }

  nodeManager = [(COMeshController *)self nodeManager];
  electionInfo = [nodeManager electionInfo];
  generation = [electionInfo generation];

  return generation;
}

- (COBallot)ballot
{
  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    nodeManager = [(COMeshController *)self nodeManager];
    electionInfo = [nodeManager electionInfo];
    ballot = [electionInfo ballot];
  }

  else
  {
    ballot = self->_ballot;
  }

  return ballot;
}

- (NSOrderedSet)addOns
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSOrderedSet *)selfCopy->_addOns copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setAddOns:(id)ons
{
  onsCopy = ons;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  addOns = [(COMeshController *)selfCopy addOns];
  v6 = [addOns isEqualToOrderedSet:onsCopy];

  if ((v6 & 1) == 0)
  {
    v7 = [onsCopy copy];
    addOns = selfCopy->_addOns;
    selfCopy->_addOns = v7;
  }

  objc_sync_exit(selfCopy);
}

- (void)setElectionPrevious:(unint64_t)previous
{
  if (self->_electionPrevious != previous)
  {
    if (!previous)
    {
      self->_electionEnd = 0;
    }

    self->_electionPrevious = previous;
  }
}

- (void)setElectionStart:(unint64_t)start
{
  if (self->_electionStart != start)
  {
    [(COMeshController *)self setElectionElapsedTimer:0];
    [(COMeshController *)self setElectionPrevious:self->_electionStart];
    self->_electionStart = start;
  }
}

- (void)setElectionEnd:(unint64_t)end
{
  v47 = *MEMORY[0x277D85DE8];
  if (self->_electionEnd != end)
  {
    electionPrevious = [(COMeshController *)self electionPrevious];
    if (electionPrevious)
    {
      v6 = electionPrevious;
      electionStart = [(COMeshController *)self electionStart];
      v28 = electionStart;
      if (self->_electionEnd)
      {
        v8 = (electionStart - v6) / 1000000000.0;
      }

      else
      {
        v8 = 0.0;
      }

      label = [(COMeshController *)self label];
      nodes = [(COMeshController *)self nodes];
      v26 = [nodes count];

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      nodes2 = [(COMeshController *)self nodes];
      v11 = 0;
      v12 = 0;
      v13 = [nodes2 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v13)
      {
        v14 = *v43;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v43 != v14)
            {
              objc_enumerationMutation(nodes2);
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

          v13 = [nodes2 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v13);
      }

      recorder = [(COMeshController *)self recorder];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __35__COMeshController_setElectionEnd___block_invoke;
      v34[3] = &unk_278E16360;
      v37 = (end - v28) / 1000000.0;
      v38 = v26 + 1;
      v39 = v12;
      v40 = v11;
      v41 = v8;
      v18 = label;
      v35 = v18;
      selfCopy = self;
      (recorder)[2](recorder, 0x2857B5D48, v34);

      self->_electionEnd = end;
      electionElapsedTimer = [(COMeshController *)self electionElapsedTimer];
      v20 = electionElapsedTimer == 0;

      if (v20)
      {
        dispatchQueue = [(COMeshController *)self dispatchQueue];
        v22 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, dispatchQueue);

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
          selfCopy2 = self;
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

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  if (self->_dispatchQueue != queueCopy && [MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    nodeManager = [(COMeshController *)self nodeManager];
    executionContext = [nodeManager executionContext];
    v7 = [executionContext mutableCopy];

    [v7 setObject:queueCopy forKey:0x2857B7128];
    nodeManager2 = [(COMeshController *)self nodeManager];
    [nodeManager2 setExecutionContext:v7];
  }

  dispatchQueue = self->_dispatchQueue;
  self->_dispatchQueue = queueCopy;
}

- (void)setRecorder:(id)recorder
{
  recorderCopy = recorder;
  v13 = recorderCopy;
  if (self->_recorder != recorderCopy)
  {
    isGlobalMessagingEnabled = [MEMORY[0x277CFD0B8] isGlobalMessagingEnabled];
    recorderCopy = v13;
    if (isGlobalMessagingEnabled)
    {
      nodeManager = [(COMeshController *)self nodeManager];
      executionContext = [nodeManager executionContext];
      v8 = [executionContext mutableCopy];

      v9 = MEMORY[0x245D5FF10](v13);
      [v8 setObject:v9 forKey:0x2857B7148];

      nodeManager2 = [(COMeshController *)self nodeManager];
      [nodeManager2 setExecutionContext:v8];

      recorderCopy = v13;
    }
  }

  v11 = MEMORY[0x245D5FF10](recorderCopy);
  recorder = self->_recorder;
  self->_recorder = v11;
}

- (void)setElectionElapsedTimer:(id)timer
{
  timerCopy = timer;
  electionElapsedTimer = self->_electionElapsedTimer;
  p_electionElapsedTimer = &self->_electionElapsedTimer;
  v6 = electionElapsedTimer;
  v9 = timerCopy;
  if (electionElapsedTimer != timerCopy)
  {
    if (v6)
    {
      dispatch_source_cancel(v6);
    }

    objc_storeStrong(p_electionElapsedTimer, timer);
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
    selfCopy = [(COMeshController *)self nodeManager];
    nodes = [(COMeshController *)selfCopy nodes];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    trackers = [(COMeshController *)selfCopy trackers];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __25__COMeshController_nodes__block_invoke;
    v8[3] = &unk_278E163D8;
    nodes = v5;
    v9 = nodes;
    [trackers enumerateNodeStateTrackersOfStatus:1 usingBlock:v8];

    objc_sync_exit(selfCopy);
  }

  return nodes;
}

void __25__COMeshController_nodes__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 node];
  [v2 addObject:v3];
}

- (BOOL)addAddOn:(id)on
{
  onCopy = on;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  addOns = [(COMeshController *)selfCopy addOns];
  if (-[COMeshController state](selfCopy, "state") || ([addOns containsObject:onCopy] & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v9 = [addOns mutableCopy];
    [v9 addObject:onCopy];
    [onCopy willAddToMeshController:selfCopy];
    [(COMeshController *)selfCopy setAddOns:v9];
    [onCopy didAddToMeshController:selfCopy];

    v7 = 1;
  }

  objc_sync_exit(selfCopy);
  return v7;
}

- (BOOL)removeAddOn:(id)on
{
  onCopy = on;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  addOns = [(COMeshController *)selfCopy addOns];
  if (-[COMeshController state](selfCopy, "state") || ![addOns containsObject:onCopy])
  {
    v8 = 0;
  }

  else
  {
    v7 = [addOns mutableCopy];
    [v7 removeObject:onCopy];
    [onCopy willRemoveFromMeshController:selfCopy];
    [(COMeshController *)selfCopy setAddOns:v7];
    [onCopy didRemoveFromMeshController:selfCopy];

    v8 = 1;
  }

  objc_sync_exit(selfCopy);
  return v8;
}

- (void)start
{
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__COMeshController_start__block_invoke;
  block[3] = &unk_278E15AB8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
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
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__COMeshController_stop__block_invoke;
  block[3] = &unk_278E15AB8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
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

- (void)willTransitionToState:(unint64_t)state
{
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  addOns = [(COMeshController *)selfCopy addOns];
  objc_sync_exit(selfCopy);

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__COMeshController_willTransitionToState___block_invoke;
  v8[3] = &unk_278E16478;
  v8[4] = selfCopy;
  v8[5] = state;
  [addOns enumerateObjectsUsingBlock:v8];
}

- (void)didTransitionToState:(unint64_t)state
{
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  addOns = [(COMeshController *)selfCopy addOns];
  objc_sync_exit(selfCopy);

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__COMeshController_didTransitionToState___block_invoke;
  v8[3] = &unk_278E16478;
  v8[4] = selfCopy;
  v8[5] = state;
  [addOns enumerateObjectsUsingBlock:v8];
}

- (void)willActivateNode:(id)node
{
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);
}

- (void)willInvalidateNode:(id)node error:(id)error
{
  v4 = [(COMeshController *)self dispatchQueue:node];
  dispatch_assert_queue_V2(v4);
}

- (void)registerHandler:(id)handler forCommandClass:(Class)class
{
  handlerCopy = handler;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__COMeshController_registerHandler_forCommandClass___block_invoke;
  block[3] = &unk_278E164A0;
  v10 = handlerCopy;
  classCopy = class;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
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

- (void)deregisterHandlerForCommandClass:(Class)class
{
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__COMeshController_deregisterHandlerForCommandClass___block_invoke;
  v6[3] = &unk_278E164C8;
  v6[4] = self;
  v6[5] = class;
  dispatch_async(dispatchQueue, v6);
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

- (void)registerHandler:(id)handler forNotificationClass:(Class)class
{
  handlerCopy = handler;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__COMeshController_registerHandler_forNotificationClass___block_invoke;
  block[3] = &unk_278E164A0;
  v10 = handlerCopy;
  classCopy = class;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
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

- (void)deregisterHandlerForNotificationClass:(Class)class
{
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__COMeshController_deregisterHandlerForNotificationClass___block_invoke;
  v6[3] = &unk_278E164C8;
  v6[4] = self;
  v6[5] = class;
  dispatch_async(dispatchQueue, v6);
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

- (void)registerHandler:(id)handler forRequestClass:(Class)class
{
  handlerCopy = handler;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__COMeshController_registerHandler_forRequestClass___block_invoke;
  block[3] = &unk_278E164A0;
  v10 = handlerCopy;
  classCopy = class;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
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

- (void)deregisterHandlerForRequestClass:(Class)class
{
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__COMeshController_deregisterHandlerForRequestClass___block_invoke;
  v6[3] = &unk_278E164C8;
  v6[4] = self;
  v6[5] = class;
  dispatch_async(dispatchQueue, v6);
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

- (void)sendCommand:(id)command withCompletionHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__COMeshController_sendCommand_withCompletionHandler___block_invoke;
  block[3] = &unk_278E15B60;
  block[4] = self;
  v12 = commandCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = commandCopy;
  dispatch_async(dispatchQueue, block);
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

- (void)sendRequest:(id)request sentRequestCallback:(id)callback
{
  callbackCopy = callback;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__COMeshController_sendRequest_sentRequestCallback___block_invoke;
  v10[3] = &unk_278E164F0;
  v11 = callbackCopy;
  v7 = callbackCopy;
  requestCopy = request;
  v9 = MEMORY[0x245D5FF10](v10);
  [(COMeshController *)self sendRequest:requestCopy withCompletionHandler:v9];
}

- (void)sendRequest:(id)request withCompletionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__COMeshController_sendRequest_withCompletionHandler___block_invoke;
  block[3] = &unk_278E15B60;
  block[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(dispatchQueue, block);
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

- (void)sendCommand:(id)command toPeer:(id)peer
{
  commandCopy = command;
  peerCopy = peer;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__COMeshController_sendCommand_toPeer___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = commandCopy;
  v13 = peerCopy;
  v9 = peerCopy;
  v10 = commandCopy;
  dispatch_async(dispatchQueue, block);
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

- (void)sendRequest:(id)request toPeer:(id)peer withCompletionHandler:(id)handler
{
  requestCopy = request;
  peerCopy = peer;
  handlerCopy = handler;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__COMeshController_sendRequest_toPeer_withCompletionHandler___block_invoke;
  v15[3] = &unk_278E15D00;
  v15[4] = self;
  v16 = requestCopy;
  v17 = peerCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = peerCopy;
  v14 = requestCopy;
  dispatch_async(dispatchQueue, v15);
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

- (void)broadcastRequest:(id)request includingSelf:(BOOL)self recipientsCallback:(id)callback completionHandler:(id)handler
{
  requestCopy = request;
  callbackCopy = callback;
  handlerCopy = handler;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__COMeshController_broadcastRequest_includingSelf_recipientsCallback_completionHandler___block_invoke;
  block[3] = &unk_278E16540;
  selfCopy = self;
  v20 = callbackCopy;
  v21 = handlerCopy;
  v18 = requestCopy;
  selfCopy2 = self;
  v14 = handlerCopy;
  v15 = callbackCopy;
  v16 = requestCopy;
  dispatch_async(dispatchQueue, block);
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

- (void)sendNotification:(id)notification
{
  notificationCopy = notification;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__COMeshController_sendNotification___block_invoke;
  v7[3] = &unk_278E156B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(dispatchQueue, v7);
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
  companionLinkClientFactory = [(COMeshController *)self companionLinkClientFactory];
  companionLinkClientForCurrentDevice = [companionLinkClientFactory companionLinkClientForCurrentDevice];

  dispatchQueue = [(COMeshController *)self dispatchQueue];
  [companionLinkClientForCurrentDevice setDispatchQueue:dispatchQueue];

  return companionLinkClientForCurrentDevice;
}

- (id)nodeForConstituent:(id)constituent
{
  v20 = *MEMORY[0x277D85DE8];
  constituentCopy = constituent;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  nodes = [(COMeshController *)self nodes];
  v7 = [nodes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(nodes);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        remote = [v10 remote];
        v12 = [remote isEqual:constituentCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [nodes countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)_currentBallotMergedWithBallot:(id)ballot
{
  v24 = *MEMORY[0x277D85DE8];
  ballotCopy = ballot;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  ballot = [(COMeshController *)self ballot];
  v7 = [ballot mutableCopy];

  [v7 mergeBallot:ballotCopy];
  v8 = [(COMeshController *)self me];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  candidates = [v7 candidates];
  v10 = [candidates countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(candidates);
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

      v11 = [candidates countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  selfCopy = self;
  v6 = 2048;
  v7 = a3;
  _os_log_debug_impl(&dword_244378000, a2, OS_LOG_TYPE_DEBUG, "%p sending ping (%g)", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (id)_inflateQueueCommands
{
  v32 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  nodes = [(COMeshController *)self nodes];
  v4 = [nodes copy];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  queuedCommands = [(COMeshController *)self queuedCommands];
  v6 = [queuedCommands countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(queuedCommands);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = v4;
          if ([v11 includeSelfInBroadcast])
          {
            nodeForMe = [(COMeshController *)selfCopy nodeForMe];
            [v12 arrayByAddingObject:nodeForMe];
            v14 = queuedCommands;
            v16 = v15 = v4;

            v12 = v16;
            v4 = v15;
            queuedCommands = v14;
          }

          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __41__COMeshController__inflateQueueCommands__block_invoke;
          v24[3] = &unk_278E16568;
          v17 = v11;
          v25 = v17;
          v26 = array;
          [v12 enumerateObjectsUsingBlock:v24];
          recipientCallback = [v17 recipientCallback];

          if (recipientCallback)
          {
            recipientCallback2 = [v17 recipientCallback];
            (recipientCallback2)[2](recipientCallback2, v12);
          }
        }

        else
        {
          [array addObject:v10];
        }
      }

      v7 = [queuedCommands countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v20 = *MEMORY[0x277D85DE8];

  return array;
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

- (void)_enqueueCommand:(id)command
{
  commandCopy = command;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  queuedCommands = [(COMeshController *)self queuedCommands];
  v7 = [queuedCommands arrayByAddingObject:commandCopy];

  [(COMeshController *)self setQueuedCommands:v7];

  [(COMeshController *)self _processQueuedCommands];
}

- (void)_removeSentCommand:(id)command fromNode:(id)node withResponse:(id)response error:(id)error
{
  commandCopy = command;
  nodeCopy = node;
  responseCopy = response;
  errorCopy = error;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if (([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled] & 1) == 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    trackers = [(COMeshController *)selfCopy trackers];
    v16 = [trackers nodeStateTrackerForNode:nodeCopy];
    state = [v16 state];

    objc_sync_exit(selfCopy);
    if ((state & 0xFFFFFFFFFFFFFFFBLL) == 0)
    {
      goto LABEL_15;
    }
  }

  sentCommands = [(COMeshController *)self sentCommands];
  v19 = [sentCommands count];
  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = v19;
  v21 = 0;
  while (1)
  {
    v22 = [sentCommands objectAtIndex:v21];
    command = [v22 command];
    if (command == commandCopy)
    {
      break;
    }

LABEL_8:
    if (v20 == ++v21)
    {
      goto LABEL_14;
    }
  }

  destination = [v22 destination];
  v25 = [destination isEqual:nodeCopy];

  if (!v25)
  {
    goto LABEL_8;
  }

  v26 = [sentCommands mutableCopy];
  [v26 removeObjectAtIndex:v21];
  [(COMeshController *)self setSentCommands:v26];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v22 setResponse:v27];
  }

  [v22 invokeCallbackWithError:errorCopy];

LABEL_14:
  responseCopy = v27;
LABEL_15:
}

- (id)_electionRequestWithBallot:(id)ballot generation:(unint64_t)generation
{
  ballotCopy = ballot;
  listener = [(COMeshController *)self listener];
  listeningPort = [listener listeningPort];

  v9 = [[COMeshElectionRequest alloc] initWithBallot:ballotCopy generation:generation listeningPort:listeningPort];

  return v9;
}

- (id)_ballotResponseWithBallot:(id)ballot generation:(unint64_t)generation
{
  ballotCopy = ballot;
  v6 = [(COMeshBaseBallotResponse *)[COMeshBallotResponse alloc] initWithBallot:ballotCopy generation:generation];

  return v6;
}

- (id)_voteRequestWithBallot:(id)ballot generation:(unint64_t)generation
{
  ballotCopy = ballot;
  v6 = [(COMeshBaseBallotRequest *)[COMeshVoteRequest alloc] initWithBallot:ballotCopy generation:generation];

  return v6;
}

- (id)_acceptResponseWithBallot:(id)ballot generation:(unint64_t)generation
{
  ballotCopy = ballot;
  v6 = [(COMeshBaseBallotResponse *)[COMeshAcceptResponse alloc] initWithBallot:ballotCopy generation:generation];

  return v6;
}

- (void)_performElectionGeneration:(unint64_t)generation source:(id)source allowingPostTransition:(BOOL)transition
{
  transitionCopy = transition;
  v62 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  state = [(COMeshController *)selfCopy state];
  trackers = [(COMeshController *)selfCopy trackers];
  v12 = [trackers nodeStateTrackersWithStatus:1];
  v13 = [trackers nodeStateTrackersWithStatus:2];

  objc_sync_exit(selfCopy);
  if ((state & 0xFFFFFFFFFFFFFFFBLL) == 0)
  {
    goto LABEL_37;
  }

  [(COMeshController *)selfCopy _pingLeader];
  if (state == 2)
  {
    generation = [(COMeshController *)selfCopy generation];
    v24 = generation >= generation;
    if (generation > generation)
    {
      generation = generation;
    }

    if (v24)
    {
      ballot = [(COMeshController *)selfCopy ballot];
      v20 = [ballot mutableCopy];

      v21 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = selfCopy;
        *&buf[12] = 2048;
        *&buf[14] = generation;
        v28 = "%p continuing ELECTION (%llu)";
        goto LABEL_17;
      }
    }

    else
    {
      discoveryManager = [(COMeshController *)selfCopy discoveryManager];
      [discoveryManager clearRecords];

      v26 = [COMutableBallot alloc];
      v27 = [(COMeshController *)selfCopy me];
      v20 = [(COBallot *)v26 initWithCandidate:v27];

      v21 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = selfCopy;
        *&buf[12] = 2048;
        *&buf[14] = generation;
        v28 = "%p update to ELECTION (%llu)";
LABEL_17:
        _os_log_impl(&dword_244378000, v21, OS_LOG_TYPE_DEFAULT, v28, buf, 0x16u);
      }
    }

    v22 = 1;
    goto LABEL_19;
  }

  if (state == 1)
  {
    addOns = [(COMeshController *)selfCopy addOns];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __77__COMeshController__performElectionGeneration_source_allowingPostTransition___block_invoke;
    v57[3] = &unk_278E16400;
    v57[4] = selfCopy;
    [addOns enumerateObjectsUsingBlock:v57];
  }

  [(COMeshController *)selfCopy setElectionStart:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW)];
  [(COMeshController *)selfCopy willTransitionToState:2];
  v15 = selfCopy;
  objc_sync_enter(v15);
  v15->_state = 2;
  objc_sync_exit(v15);

  generation2 = [(COMeshController *)v15 generation];
  if (generation2 + 1 > generation)
  {
    generation = generation2 + 1;
  }

  discoveryManager2 = [(COMeshController *)v15 discoveryManager];
  [discoveryManager2 clearRecords];

  v18 = [COMutableBallot alloc];
  v19 = [(COMeshController *)v15 me];
  v20 = [(COBallot *)v18 initWithCandidate:v19];

  v21 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = v15;
    *&buf[12] = 2048;
    *&buf[14] = generation;
    _os_log_impl(&dword_244378000, v21, OS_LOG_TYPE_DEFAULT, "%p starting ELECTION (%llu)", buf, 0x16u);
  }

  v22 = 0;
LABEL_19:

  [(COMeshController *)selfCopy setGeneration:generation];
  if (sourceCopy)
  {
    [(COMutableBallot *)v20 addCandidate:sourceCopy];
    v30 = [(COMeshController *)selfCopy nodeForConstituent:sourceCopy];
    v31 = v30;
    if (!v30)
    {
LABEL_30:

      goto LABEL_31;
    }

    discoveryRecord = [(COMutableBallot *)v30 discoveryRecord];
    v33 = discoveryRecord;
    if (discoveryRecord && [discoveryRecord shouldAdvertise])
    {
      if (![(COMutableBallot *)v20 addDiscoveryRecord:v33])
      {
LABEL_29:

        goto LABEL_30;
      }

      v34 = COCoreLogForCategory(11);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        discovery = [(COBallot *)v20 discovery];
        *buf = 134218498;
        *&buf[4] = selfCopy;
        *&buf[12] = 2112;
        *&buf[14] = discovery;
        *&buf[22] = 2048;
        v59 = v20;
        v45 = discovery;
        _os_log_impl(&dword_244378000, v34, OS_LOG_TYPE_DEFAULT, "%p updated Discovery %@ in ballot %p", buf, 0x20u);
      }
    }

    else
    {
      v34 = COCoreLogForCategory(11);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218754;
        *&buf[4] = selfCopy;
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
  [(COMeshController *)selfCopy setBallot:v20, v45];
  candidates = [(COBallot *)v20 candidates];
  firstObject = [candidates firstObject];

  v38 = [(COMeshController *)selfCopy _electionRequestWithBallot:v20 generation:generation];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v59) = 0;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __77__COMeshController__performElectionGeneration_source_allowingPostTransition___block_invoke_99;
  v51[3] = &unk_278E16608;
  v55 = buf;
  generationCopy = generation;
  v39 = firstObject;
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
  v47[4] = selfCopy;
  v42 = v40;
  v48 = v42;
  generationCopy2 = generation;
  v43 = v41;
  v49 = v43;
  [v13 enumerateObjectsUsingBlock:v47];
  if ((v22 & 1) == 0)
  {
    [(COMeshController *)selfCopy didTransitionToState:2];
  }

  if (transitionCopy && (*(*&buf[8] + 24) & 1) == 0)
  {
    [(COMeshController *)selfCopy _transitionToPostElection];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  trackers = [(COMeshController *)selfCopy trackers];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__COMeshController__isElectionComplete__block_invoke;
  v5[3] = &unk_278E16658;
  v5[4] = &v6;
  [trackers enumerateNodeStateTrackersOfStatus:1 usingBlock:v5];

  objc_sync_exit(selfCopy);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
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
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if (!self->_rapportBrowser)
  {
    v4 = objc_alloc_init(CORapportBrowser);
    companionLinkClientFactory = [(COMeshController *)self companionLinkClientFactory];
    if (companionLinkClientFactory)
    {
      [(CORapportBrowser *)v4 setCompanionLinkClientFactory:companionLinkClientFactory];
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
    meshName = [(COMeshController *)self meshName];
    globalServiceName = [(COMeshController *)self globalServiceName];
    v14 = [(COIDSBrowser *)v11 initWithMeshName:meshName idsServiceName:globalServiceName];

    idsBrowser = self->_idsBrowser;
    self->_idsBrowser = v14;
    v16 = v14;

    [(COMeshController *)self addBrowser:v16];
  }
}

- (id)_constituentCharacteristics:(id)characteristics
{
  v3 = MEMORY[0x277CCACA8];
  characteristicsCopy = characteristics;
  device = [characteristicsCopy device];
  flags = [characteristicsCopy flags];

  return [v3 stringWithFormat:@"%d, %llu", device, flags];
}

- (id)_nodeDetails:(id)details
{
  detailsCopy = details;
  v5 = detailsCopy;
  if (detailsCopy)
  {
    remote = [detailsCopy remote];
    client = [v5 client];
    destinationDevice = [client destinationDevice];
    name = [destinationDevice name];

    client2 = [v5 client];
    destinationDevice2 = [client2 destinationDevice];
    identifier = [destinationDevice2 identifier];

    connectionType = [v5 connectionType];
    if (connectionType > 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = off_278E16808[connectionType];
    }

    discoveryType = [v5 discoveryType];
    v17 = 67;
    if ((discoveryType & 2) == 0)
    {
      v17 = 99;
    }

    v18 = 82;
    if ((discoveryType & 1) == 0)
    {
      v18 = 114;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c", v18, v17];
  }

  else
  {
    remote = [(COMeshController *)self me];
    identifier = 0;
    name = 0;
    v14 = 0;
    v15 = 0;
  }

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"[COMeshNode : %p] %@ [Name] - %@ [Rapport ID] - %@ [Conn] - %@ [Disc] - %@", v5, remote, name, identifier, v14, v15];

  return v19;
}

- (void)_logElectionSummary
{
  v50 = *MEMORY[0x277D85DE8];
  ballot = [(COMeshController *)self ballot];
  candidates = [ballot candidates];
  v5 = [candidates mutableCopy];

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__9;
  v40 = __Block_byref_object_dispose__9;
  string = [MEMORY[0x277CCAB68] string];
  trackers = [(COMeshController *)self trackers];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __39__COMeshController__logElectionSummary__block_invoke;
  v33[3] = &unk_278E16680;
  v35 = &v36;
  v33[4] = self;
  v7 = v5;
  v34 = v7;
  [trackers enumerateNodeStateTrackersOfStatus:1 usingBlock:v33];

  v8 = v37[5];
  v9 = [(COMeshController *)self _nodeDetails:0];
  [v8 appendFormat:@"%@\n", v9];

  v10 = [(COMeshController *)self me];
  [v7 removeObject:v10];

  v11 = COCoreLogForCategory(8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    meshName = [(COMeshController *)self meshName];
    generation = [(COMeshController *)self generation];
    v14 = v37[5];
    *buf = 134218754;
    selfCopy4 = self;
    v44 = 2114;
    v45 = meshName;
    v46 = 2048;
    v47 = generation;
    v48 = 2114;
    v49 = v14;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p %{public}@ : Candidate summary for Election(%llu)\n%{public}@", buf, 0x2Au);
  }

  if ([v7 count])
  {
    v15 = COCoreLogForCategory(8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      meshName2 = [(COMeshController *)self meshName];
      generation2 = [(COMeshController *)self generation];
      *buf = 134218754;
      selfCopy4 = self;
      v44 = 2114;
      v45 = meshName2;
      v46 = 2048;
      v47 = generation2;
      v48 = 2112;
      v49 = v7;
      _os_log_error_impl(&dword_244378000, v15, OS_LOG_TYPE_ERROR, "%p %{public}@ : Ballot contituents and active trackers are mismatched for Election(%llu). Constituents not found in active trackers = %@", buf, 0x2Au);
    }
  }

  v16 = v37[5];
  v37[5] = 0;

  trackers2 = [(COMeshController *)self trackers];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __39__COMeshController__logElectionSummary__block_invoke_125;
  v32[3] = &unk_278E166A8;
  v32[4] = self;
  v32[5] = &v36;
  [trackers2 enumerateNodeStateTrackersOfStatus:2 usingBlock:v32];

  v18 = COCoreLogForCategory(8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    meshName3 = [(COMeshController *)self meshName];
    generation3 = [(COMeshController *)self generation];
    v21 = v37[5];
    *buf = 134218754;
    selfCopy4 = self;
    v44 = 2114;
    v45 = meshName3;
    v46 = 2048;
    v47 = generation3;
    v48 = 2114;
    v49 = v21;
    _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%p %{public}@ : Dormant trackers summary for Election(%llu)\n%{public}@", buf, 0x2Au);
  }

  v22 = v37[5];
  v37[5] = 0;

  trackers3 = [(COMeshController *)self trackers];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __39__COMeshController__logElectionSummary__block_invoke_126;
  v31[3] = &unk_278E166A8;
  v31[4] = self;
  v31[5] = &v36;
  [trackers3 enumerateNodeStateTrackersOfStatus:0 usingBlock:v31];

  v24 = COCoreLogForCategory(8);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    meshName4 = [(COMeshController *)self meshName];
    generation4 = [(COMeshController *)self generation];
    v27 = v37[5];
    *buf = 134218754;
    selfCopy4 = self;
    v44 = 2114;
    v45 = meshName4;
    v46 = 2048;
    v47 = generation4;
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

- (void)_processBackedOffNodesExcludingTracker:(id)tracker
{
  trackerCopy = tracker;
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
    ballot = [(COMeshController *)self ballot];
    generation = [(COMeshController *)self generation];
    v7 = [(COMeshBaseBallotRequest *)[COMeshElectionRequest alloc] initWithBallot:ballot generation:generation];
    trackers = [(COMeshController *)self trackers];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__COMeshController__processBackedOffNodesExcludingTracker___block_invoke;
    v11[3] = &unk_278E166D0;
    v12 = trackerCopy;
    v13 = ballot;
    v15 = v7;
    v16 = generation;
    selfCopy = self;
    v9 = v7;
    v10 = ballot;
    [trackers enumerateNodeStateTrackersUsingBlock:v11];
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

- (void)_handleElectionRequest:(id)request onNode:(id)node responseCallBack:(id)back
{
  v58 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  nodeCopy = node;
  backCopy = back;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  remote = [nodeCopy remote];
  generation = [requestCopy generation];
  variant = [requestCopy variant];
  ballot = [requestCopy ballot];
  v11 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    software = [remote software];
    rapportTransactionID = [requestCopy rapportTransactionID];
    candidates = [ballot candidates];
    v15 = [candidates count];
    candidates2 = [ballot candidates];
    firstObject = [candidates2 firstObject];

    *buf = 134219778;
    selfCopy = self;
    v46 = 2048;
    v47 = generation;
    v48 = 1024;
    *v49 = variant;
    *&v49[4] = 2048;
    *&v49[6] = nodeCopy;
    v50 = 2114;
    v51 = software;
    v52 = 2048;
    v53 = rapportTransactionID;
    v54 = 2048;
    v55 = v15;
    v56 = 2114;
    v57 = firstObject;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p received ELECTION (%llu:%d) from %p (%{public}@) XID 0x%llX - (%lu, %{public}@)", buf, 0x4Eu);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  trackers = [(COMeshController *)selfCopy2 trackers];
  v20 = [trackers nodeStateTrackerForNode:nodeCopy];

  objc_sync_exit(selfCopy2);
  [v20 setState:2];
  if (selfCopy2->_internalFlags)
  {
    goto LABEL_11;
  }

  remote2 = [nodeCopy remote];
  if ([remote2 supportsBackoff])
  {
LABEL_10:

    goto LABEL_11;
  }

  lastBallotReceived = [v20 lastBallotReceived];
  if (([lastBallotReceived isEqualToBallot:ballot] & 1) == 0)
  {

    goto LABEL_10;
  }

  v23 = [v20 lastGenerationReceived] == generation;

  if (v23)
  {
    [v20 setElectionStage:4];
    [v20 setBackoffResponse:backCopy];
    ballot2 = COCoreLogForCategory(0);
    if (os_log_type_enabled(ballot2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      selfCopy = selfCopy2;
      v46 = 2048;
      v47 = nodeCopy;
      _os_log_impl(&dword_244378000, ballot2, OS_LOG_TYPE_DEFAULT, "%p backed off legacy node %p", buf, 0x16u);
    }

    goto LABEL_24;
  }

LABEL_11:
  [v20 setLastGenerationReceived:generation];
  [v20 setLastBallotReceived:ballot];
  if (![(COMeshController *)selfCopy2 _isCurrentElectionVariant:variant])
  {
    ballot2 = [(COMeshController *)selfCopy2 ballot];
    generation2 = [(COMeshController *)selfCopy2 generation];
    if (([ballot2 isEqualToBallot:ballot]& 1) == 0)
    {
      ballot3 = [(COMeshController *)selfCopy2 _currentBallotMergedWithBallot:ballot];
      [v20 setLastBallotSent:ballot3];
      candidates3 = [ballot2 candidates];
      firstObject2 = [candidates3 firstObject];

      candidates4 = [ballot3 candidates];
      firstObject3 = [candidates4 firstObject];

      LODWORD(candidates4) = [firstObject2 isEqual:firstObject3];
      if (candidates4)
      {
        v35 = COCoreLogForCategory(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218496;
          selfCopy = selfCopy2;
          v46 = 2048;
          v47 = generation2;
          v48 = 2048;
          *v49 = nodeCopy;
          _os_log_debug_impl(&dword_244378000, v35, OS_LOG_TYPE_DEBUG, "%p performing fast election (%llu) with %p", buf, 0x20u);
        }

        v36 = [(COMeshController *)selfCopy2 _acceptResponseWithBallot:ballot3 generation:generation2];
        backCopy[2](backCopy, v36, 0);

        [v20 setState:3];
        if ([(COMeshController *)selfCopy2 _isElectionComplete])
        {
          [(COMeshController *)selfCopy2 _transitionToPostElection];
        }

        goto LABEL_23;
      }

      [(COMeshController *)selfCopy2 _performElectionGeneration:[(COMeshController *)selfCopy2 generation] source:remote allowingPostTransition:1];
    }

    ballot3 = [(COMeshController *)selfCopy2 ballot];
    v37 = [(COMeshController *)selfCopy2 _ballotResponseWithBallot:ballot3 generation:generation2];
    backCopy[2](backCopy, v37, 0);

LABEL_23:
    goto LABEL_24;
  }

  ballot4 = [requestCopy ballot];
  [(COMeshController *)selfCopy2 _handleDiscoveryUsingBallot:ballot4];

  [(COMeshController *)selfCopy2 _performElectionGeneration:generation source:remote allowingPostTransition:1];
  ballot2 = [(COMeshController *)selfCopy2 ballot];
  generation3 = [(COMeshController *)selfCopy2 generation];
  [v20 setElectionStage:0];
  [v20 setLastBallotSent:ballot2];
  [v20 setLastGenerationSent:generation3];
  v27 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    selfCopy = selfCopy2;
    v46 = 2048;
    v47 = generation3;
    v48 = 2048;
    *v49 = nodeCopy;
    _os_log_debug_impl(&dword_244378000, v27, OS_LOG_TYPE_DEBUG, "%p sending BALLOT (%llu) to %p", buf, 0x20u);
  }

  v28 = [(COMeshController *)selfCopy2 _ballotResponseWithBallot:ballot2 generation:generation3];
  backCopy[2](backCopy, v28, 0);

  [(COMeshController *)selfCopy2 _processBackedOffNodesExcludingTracker:v20];
LABEL_24:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_handleBallotResponse:(id)response onNode:(id)node
{
  v58 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  nodeCopy = node;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  remote = [nodeCopy remote];
  generation = [responseCopy generation];
  variant = [responseCopy variant];
  ballot = [responseCopy ballot];
  v9 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    software = [remote software];
    rapportTransactionID = [responseCopy rapportTransactionID];
    candidates = [ballot candidates];
    v13 = [candidates count];
    candidates2 = [ballot candidates];
    firstObject = [candidates2 firstObject];

    *buf = 134219778;
    selfCopy = self;
    v50 = 2048;
    v51 = generation;
    v52 = 1024;
    *v53 = variant;
    *&v53[4] = 2048;
    *&v53[6] = nodeCopy;
    *&v53[14] = 2114;
    *&v53[16] = software;
    *&v53[24] = 2048;
    *&v53[26] = rapportTransactionID;
    v54 = 2048;
    v55 = v13;
    v56 = 2114;
    v57 = firstObject;
    _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%p received BALLOT (%llu:%d) from %p (%{public}@) XID 0x%llX - (%lu, %{public}@)", buf, 0x4Eu);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  trackers = [(COMeshController *)selfCopy2 trackers];
  v18 = [trackers nodeStateTrackerForNode:nodeCopy];

  objc_sync_exit(selfCopy2);
  [v18 setState:2];
  [v18 setLastGenerationReceived:generation];
  [v18 setLastBallotReceived:ballot];
  [v18 setOutstandingRequest:0];
  if (![(COMeshController *)selfCopy2 _isCurrentElectionVariant:variant])
  {
    ballot2 = [(COMeshController *)selfCopy2 ballot];
    ballot3 = [responseCopy ballot];
    candidates3 = [ballot2 candidates];
    firstObject2 = [candidates3 firstObject];

    candidates4 = [ballot3 candidates];
    firstObject3 = [candidates4 firstObject];

    LODWORD(candidates4) = [firstObject2 isEqual:firstObject3];
    if (candidates4)
    {
      [v18 setLastBallotSent:ballot3];
      v34 = [(COMeshController *)selfCopy2 _voteRequestWithBallot:ballot3 generation:[(COMeshController *)selfCopy2 generation]];
      [nodeCopy sendMeshRequest:v34];
    }

    else
    {
      [v18 setState:3];
      [(COMeshController *)selfCopy2 _performElectionGeneration:[(COMeshController *)selfCopy2 generation] source:remote allowingPostTransition:1];
    }

    goto LABEL_33;
  }

  ballot4 = [responseCopy ballot];
  [(COMeshController *)selfCopy2 _handleDiscoveryUsingBallot:ballot4];

  if ([(COMeshController *)selfCopy2 generation]!= generation)
  {
    [(COMeshController *)selfCopy2 _performElectionGeneration:generation source:remote allowingPostTransition:1];
    generation2 = [(COMeshController *)selfCopy2 generation];
    ballot5 = [(COMeshController *)selfCopy2 ballot];
    [v18 setLastBallotSent:ballot5];
    [v18 setLastGenerationSent:generation2];
    [v18 setElectionStage:1];
    [v18 setOutstandingRequest:1];
    firstObject4 = [(COMeshController *)selfCopy2 _electionRequestWithBallot:ballot5 generation:generation2];
    [nodeCopy sendMeshRequest:firstObject4];
LABEL_32:

    [(COMeshController *)selfCopy2 _processBackedOffNodesExcludingTracker:v18];
    goto LABEL_33;
  }

  ballot6 = [(COMeshController *)selfCopy2 ballot];
  ballot5 = [ballot6 mutableCopy];

  candidates5 = [ballot5 candidates];
  firstObject4 = [candidates5 firstObject];

  [ballot5 addCandidate:remote];
  discoveryRecord = [nodeCopy discoveryRecord];
  v25 = discoveryRecord;
  if (!discoveryRecord || ![discoveryRecord shouldAdvertise])
  {
    v26 = COCoreLogForCategory(11);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 134219010;
      selfCopy = selfCopy2;
      v50 = 2112;
      v51 = v25;
      v52 = 2112;
      *v53 = nodeCopy;
      *&v53[8] = 2048;
      *&v53[10] = ballot5;
      *&v53[18] = 2112;
      *&v53[20] = responseCopy;
      _os_log_error_impl(&dword_244378000, v26, OS_LOG_TYPE_ERROR, "%p cannot add Discovery %@ for %@ to ballot %p when handling response %@", buf, 0x34u);
    }

    goto LABEL_17;
  }

  if ([ballot5 addDiscoveryRecord:v25])
  {
    v26 = COCoreLogForCategory(11);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      discovery = [ballot5 discovery];
      *buf = 134218498;
      selfCopy = selfCopy2;
      v50 = 2112;
      v51 = discovery;
      v52 = 2048;
      *v53 = ballot5;
      _os_log_impl(&dword_244378000, v26, OS_LOG_TYPE_DEFAULT, "%p updated Discovery %@ in ballot %p when handling response", buf, 0x20u);
    }

LABEL_17:
  }

  [(COMeshController *)selfCopy2 setBallot:ballot5];
  candidates6 = [ballot candidates];
  firstObject5 = [candidates6 firstObject];

  LODWORD(candidates6) = [firstObject4 isEqual:firstObject5];
  if (candidates6)
  {
    [v18 setLastBallotSent:ballot5];
    [v18 setLastGenerationSent:generation];
    [v18 setElectionStage:3];
    [v18 setOutstandingRequest:1];
    ballot7 = [(COMeshController *)selfCopy2 _voteRequestWithBallot:ballot5 generation:generation];
    [nodeCopy sendMeshRequest:ballot7];
LABEL_31:

    goto LABEL_32;
  }

  if (firstObject4 && ([firstObject4 isEqual:remote] & 1) == 0)
  {
    [(COMeshController *)selfCopy2 _pingLeader];
  }

  [(COMeshController *)selfCopy2 _performElectionGeneration:generation source:remote allowingPostTransition:1];
  if (selfCopy2->_internalFlags)
  {
    goto LABEL_30;
  }

  lastBallotSent = [v18 lastBallotSent];
  if (([lastBallotSent isEqualToBallot:ballot5] & 1) == 0)
  {

    goto LABEL_30;
  }

  v40 = [v18 lastGenerationSent] == generation;

  if (!v40)
  {
LABEL_30:
    [v18 setElectionStage:1];
    [v18 setLastBallotSent:ballot5];
    [v18 setLastGenerationSent:generation];
    [v18 setOutstandingRequest:1];
    ballot7 = [(COMeshController *)selfCopy2 ballot];
    v42 = [(COMeshController *)selfCopy2 _electionRequestWithBallot:ballot7 generation:[(COMeshController *)selfCopy2 generation]];
    [nodeCopy sendMeshRequest:v42];

    goto LABEL_31;
  }

  [v18 setElectionStage:4];
  v41 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    selfCopy = selfCopy2;
    v50 = 2048;
    v51 = nodeCopy;
    _os_log_impl(&dword_244378000, v41, OS_LOG_TYPE_DEFAULT, "%p backed off %p", buf, 0x16u);
  }

LABEL_33:
  v43 = *MEMORY[0x277D85DE8];
}

- (void)_handleVoteRequest:(id)request onNode:(id)node responseCallBack:(id)back
{
  v60 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  nodeCopy = node;
  backCopy = back;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  remote = [nodeCopy remote];
  generation = [requestCopy generation];
  variant = [requestCopy variant];
  ballot = [requestCopy ballot];
  v11 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    software = [remote software];
    rapportTransactionID = [requestCopy rapportTransactionID];
    candidates = [ballot candidates];
    v15 = [candidates count];
    candidates2 = [ballot candidates];
    firstObject = [candidates2 firstObject];

    *buf = 134219778;
    selfCopy = self;
    v46 = 2048;
    v47 = generation;
    v48 = 1024;
    v49 = variant;
    v50 = 2048;
    v51 = nodeCopy;
    v52 = 2114;
    v53 = software;
    v54 = 2048;
    v55 = rapportTransactionID;
    v56 = 2048;
    v57 = v15;
    v58 = 2114;
    v59 = firstObject;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p received VOTE (%llu:%d) from %p (%{public}@) XID 0x%llX - (%lu, %{public}@)", buf, 0x4Eu);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  trackers = [(COMeshController *)selfCopy2 trackers];
  v20 = [trackers nodeStateTrackerForNode:nodeCopy];

  objc_sync_exit(selfCopy2);
  [v20 setLastGenerationReceived:generation];
  [v20 setLastBallotReceived:ballot];
  [v20 setElectionStage:0];
  if ([(COMeshController *)selfCopy2 _isCurrentElectionVariant:variant])
  {
    ballot2 = [requestCopy ballot];
    [(COMeshController *)selfCopy2 _handleDiscoveryUsingBallot:ballot2];

    ballot3 = [(COMeshController *)selfCopy2 ballot];
    generation2 = [(COMeshController *)selfCopy2 generation];
    if (generation2 != generation)
    {
      goto LABEL_11;
    }

    candidates3 = [ballot3 candidates];
    firstObject2 = [candidates3 firstObject];

    candidates4 = [ballot candidates];
    firstObject3 = [candidates4 firstObject];

    LODWORD(candidates4) = [firstObject2 isEqual:firstObject3];
    if (candidates4)
    {
      [v20 setLastBallotSent:ballot3];
      [v20 setLastGenerationSent:generation];
      v28 = [(COMeshController *)selfCopy2 _acceptResponseWithBallot:ballot3 generation:generation];
      backCopy[2](backCopy, v28, 0);

      [v20 setState:3];
      if ([(COMeshController *)selfCopy2 _isElectionComplete])
      {
        [(COMeshController *)selfCopy2 _transitionToPostElection];
      }
    }

    else
    {
LABEL_11:
      [v20 setLastBallotSent:ballot3];
      [v20 setLastGenerationSent:generation];
      v35 = [(COMeshController *)selfCopy2 _ballotResponseWithBallot:ballot3 generation:generation2];
      backCopy[2](backCopy, v35, 0);
    }
  }

  else
  {
    ballot3 = [(COMeshController *)selfCopy2 ballot];
    ballot4 = [requestCopy ballot];
    candidates5 = [ballot3 candidates];
    firstObject4 = [candidates5 firstObject];

    candidates6 = [ballot4 candidates];
    firstObject5 = [candidates6 firstObject];

    LODWORD(candidates6) = [firstObject4 isEqual:firstObject5];
    if (candidates6)
    {
      v34 = [(COMeshController *)selfCopy2 _acceptResponseWithBallot:ballot3 generation:[(COMeshController *)selfCopy2 generation]];
      backCopy[2](backCopy, v34, 0);

      [v20 setState:3];
      if ([(COMeshController *)selfCopy2 _isElectionComplete])
      {
        [(COMeshController *)selfCopy2 _transitionToPostElection];
      }
    }

    else
    {
      v36 = [(COMeshController *)selfCopy2 _currentBallotMergedWithBallot:ballot4];
      [v20 setLastBallotSent:v36];
      v37 = [(COMeshController *)selfCopy2 _ballotResponseWithBallot:v36 generation:[(COMeshController *)selfCopy2 generation]];
      backCopy[2](backCopy, v37, 0);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_handleAcceptResponse:(id)response onNode:(id)node
{
  v61 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  nodeCopy = node;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  remote = [nodeCopy remote];
  generation = [responseCopy generation];
  variant = [responseCopy variant];
  ballot = [responseCopy ballot];
  v9 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    software = [remote software];
    rapportTransactionID = [responseCopy rapportTransactionID];
    candidates = [ballot candidates];
    v13 = [candidates count];
    candidates2 = [ballot candidates];
    firstObject = [candidates2 firstObject];

    *buf = 134219778;
    selfCopy = self;
    v47 = 2048;
    v48 = generation;
    v49 = 1024;
    v50 = variant;
    v51 = 2048;
    v52 = nodeCopy;
    v53 = 2114;
    v54 = software;
    v55 = 2048;
    v56 = rapportTransactionID;
    v57 = 2048;
    v58 = v13;
    v59 = 2114;
    v60 = firstObject;
    _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%p received ACCEPT (%llu:%d) from %p (%{public}@) XID 0x%llX - (%lu, %{public}@)", buf, 0x4Eu);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  trackers = [(COMeshController *)selfCopy2 trackers];
  v18 = [trackers nodeStateTrackerForNode:nodeCopy];

  objc_sync_exit(selfCopy2);
  [v18 setLastGenerationReceived:generation];
  [v18 setLastBallotReceived:ballot];
  [v18 setOutstandingRequest:0];
  if ([(COMeshController *)selfCopy2 _isCurrentElectionVariant:variant])
  {
    ballot2 = [responseCopy ballot];
    [(COMeshController *)selfCopy2 _handleDiscoveryUsingBallot:ballot2];

    ballot3 = [(COMeshController *)selfCopy2 ballot];
    generation2 = [(COMeshController *)selfCopy2 generation];
    if (generation2 == generation)
    {
      candidates3 = [ballot3 candidates];
      firstObject2 = [candidates3 firstObject];

      candidates4 = [ballot candidates];
      firstObject3 = [candidates4 firstObject];

      LODWORD(candidates4) = [firstObject2 isEqual:firstObject3];
      if (candidates4)
      {
        [v18 setLastBallotSent:ballot3];
        [v18 setLastGenerationSent:generation];
        [v18 setState:3];
        [v18 setElectionStage:0];
        if ([(COMeshController *)selfCopy2 _isElectionComplete])
        {
          [(COMeshController *)selfCopy2 _transitionToPostElection];
        }

        goto LABEL_25;
      }
    }

    if ((selfCopy2->_internalFlags & 1) == 0)
    {
      lastBallotSent = [v18 lastBallotSent];
      if ([lastBallotSent isEqualToBallot:ballot3])
      {
        v32 = [v18 lastGenerationSent] == generation;

        if (v32)
        {
          [v18 setElectionStage:4];
          v33 = COCoreLogForCategory(0);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            selfCopy = selfCopy2;
            v47 = 2048;
            v48 = nodeCopy;
            _os_log_impl(&dword_244378000, v33, OS_LOG_TYPE_DEFAULT, "%p backed off %p", buf, 0x16u);
          }

          goto LABEL_25;
        }
      }

      else
      {
      }
    }

    [v18 setLastBallotSent:ballot3];
    [v18 setLastGenerationSent:generation];
    [v18 setElectionStage:1];
    [v18 setOutstandingRequest:1];
    v39 = [(COMeshController *)selfCopy2 _electionRequestWithBallot:ballot3 generation:generation2];
    [nodeCopy sendMeshRequest:v39];

    goto LABEL_25;
  }

  [v18 setState:3];
  ballot3 = [(COMeshController *)selfCopy2 ballot];
  ballot4 = [responseCopy ballot];
  candidates5 = [ballot3 candidates];
  firstObject4 = [candidates5 firstObject];

  candidates6 = [ballot4 candidates];
  firstObject5 = [candidates6 firstObject];

  LODWORD(candidates6) = [firstObject4 isEqual:firstObject5];
  if (candidates6)
  {
    if ([(COMeshController *)selfCopy2 _isElectionComplete])
    {
      [(COMeshController *)selfCopy2 _transitionToPostElection];
    }
  }

  else
  {
    v34 = [(COMeshController *)selfCopy2 _currentBallotMergedWithBallot:ballot4];
    [(COMeshController *)selfCopy2 setBallot:v34];
    candidates7 = [ballot3 candidates];
    firstObject6 = [candidates7 firstObject];

    candidates8 = [v34 candidates];
    firstObject7 = [candidates8 firstObject];

    LODWORD(candidates8) = [firstObject6 isEqual:firstObject7];
    if (candidates8)
    {
      if ([(COMeshController *)selfCopy2 _isElectionComplete])
      {
        [(COMeshController *)selfCopy2 _transitionToPostElection];
      }
    }

    else
    {
      [(COMeshController *)selfCopy2 _performElectionGeneration:[(COMeshController *)selfCopy2 generation] source:0 allowingPostTransition:1];
    }
  }

LABEL_25:
  v40 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiscoveryUsingBallot:(id)ballot
{
  v30 = *MEMORY[0x277D85DE8];
  discovery = [ballot discovery];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [discovery countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(discovery);
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
            selfCopy2 = self;
            _os_log_debug_impl(&dword_244378000, v14, OS_LOG_TYPE_DEBUG, "%p ignoring discovery of myself", buf, 0xCu);
          }
        }

        else
        {
          v14 = [discovery objectForKey:v11];
          discoveryManager = [(COMeshController *)self discoveryManager];
          v8 |= [discoveryManager addDiscoveryRecord:v14];
        }
      }

      v7 = [discovery countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v7);
    if (v8)
    {
      v16 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        discoveryManager2 = [(COMeshController *)self discoveryManager];
        v18 = [discoveryManager2 count];
        *buf = 134218240;
        selfCopy2 = self;
        v27 = 2048;
        v28 = v18;
        _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%p Discovery (IP) has %ld queued records", buf, 0x16u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_handleDiscoveryUsingElectionRequest:(id)request
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if ([requestCopy conformsToProtocol:&unk_2857D4880])
  {
    listeningPort = [requestCopy listeningPort];
  }

  else
  {
    listeningPort = 0;
  }

  _sendingConstituent = [requestCopy _sendingConstituent];
  rapportOptions = [requestCopy rapportOptions];
  v8 = [rapportOptions objectForKey:*MEMORY[0x277D442C8]];
  v9 = [rapportOptions objectForKey:*MEMORY[0x277D442D0]];
  v10 = [rapportOptions objectForKey:*MEMORY[0x277D44298]];
  if (_sendingConstituent && [v8 length] && objc_msgSend(v9, "length") && objc_msgSend(v10, "length") && (+[CODiscoveryRecord discoveryRecordWithConstituent:rapportIdentifier:IDSIdentifier:peerAddress:port:](CODiscoveryRecord, "discoveryRecordWithConstituent:rapportIdentifier:IDSIdentifier:peerAddress:port:", _sendingConstituent, v8, v9, v10, listeningPort), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v13 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218242;
      selfCopy = self;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p discovered (election) %@", &v19, 0x16u);
    }

    listener = [(COMeshController *)self listener];
    v15 = [listener _handleDiscoveryRecord:v12];
  }

  else
  {
    listener = COCoreLogForCategory(0);
    if (os_log_type_enabled(listener, OS_LOG_TYPE_ERROR))
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

- (void)_finalizeCompletionOfNode:(id)node memberOfMesh:(BOOL)mesh eventProvider:(id)provider
{
  meshCopy = mesh;
  v70 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  providerCopy = provider;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  trackers = [(COMeshController *)selfCopy trackers];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __73__COMeshController__finalizeCompletionOfNode_memberOfMesh_eventProvider___block_invoke;
  v61[3] = &unk_278E16658;
  v61[4] = &v62;
  [trackers enumerateNodeStateTrackersUsingBlock:v61];

  state = [(COMeshController *)selfCopy state];
  addOns = [(COMeshController *)selfCopy addOns];
  objc_sync_exit(selfCopy);

  if (meshCopy)
  {
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __73__COMeshController__finalizeCompletionOfNode_memberOfMesh_eventProvider___block_invoke_2;
    v60[3] = &unk_278E16400;
    v60[4] = selfCopy;
    [addOns enumerateObjectsUsingBlock:v60];
  }

  if (state == 4)
  {
    if (!v63[3])
    {
      [(COMeshController *)selfCopy willTransitionToState:0];
      v13 = selfCopy;
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
      [addOns enumerateObjectsUsingBlock:v44];
    }
  }

  else
  {
    remote = [nodeCopy remote];
    if (remote)
    {
      ballot = [(COMeshController *)selfCopy ballot];
      v42 = [ballot mutableCopy];

      candidates = [v42 candidates];
      firstObject = [candidates firstObject];

      [v42 removeCandidate:remote];
      [(COMeshController *)selfCopy setBallot:v42];
      sentCommands = [(COMeshController *)selfCopy sentCommands];
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __73__COMeshController__finalizeCompletionOfNode_memberOfMesh_eventProvider___block_invoke_3;
      v56[3] = &unk_278E166F8;
      v58 = v17;
      v59 = v18;
      v19 = nodeCopy;
      v57 = v19;
      v40 = [sentCommands indexesOfObjectsPassingTest:v56];
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshControllerErrorDomain" code:-4100 userInfo:0];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __73__COMeshController__finalizeCompletionOfNode_memberOfMesh_eventProvider___block_invoke_4;
      v53[3] = &unk_278E16720;
      v21 = sentCommands;
      v54 = v21;
      v36 = v20;
      v55 = v36;
      [v40 enumerateIndexesUsingBlock:v53];
      v39 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(v21, "count")}];
      [v39 removeIndexes:v40];
      v38 = [v21 objectsAtIndexes:v39];

      [(COMeshController *)selfCopy setSentCommands:v38];
      if (state)
      {
        if ([firstObject isEqual:remote])
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
            queuedCommands = [(COMeshController *)selfCopy queuedCommands];
            v28 = [v26 arrayByAddingObjectsFromArray:queuedCommands];
            [(COMeshController *)selfCopy setQueuedCommands:v28];
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
          [(COMeshController *)selfCopy setSentCommands:v29];

          v30 = selfCopy;
          objc_sync_enter(v30);
          [(COMeshController *)v30 setLeader:0];
          objc_sync_exit(v30);

          if (!providerCopy)
          {
            label = [(COMeshController *)v30 label];
            v45[0] = MEMORY[0x277D85DD0];
            v45[1] = 3221225472;
            v45[2] = __73__COMeshController__finalizeCompletionOfNode_memberOfMesh_eventProvider___block_invoke_6;
            v45[3] = &unk_278E16770;
            v46 = label;
            v32 = label;
            providerCopy = MEMORY[0x245D5FF10](v45);
          }

          recorder = [(COMeshController *)v30 recorder];
          (recorder)[2](recorder, 0x2857B5D68, providerCopy);

          v34 = COCoreLogForCategory(0);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v67 = v30;
            v68 = 2112;
            v69 = remote;
            _os_log_impl(&dword_244378000, v34, OS_LOG_TYPE_DEFAULT, "%p lost leader %@", buf, 0x16u);
          }

          [(COMeshController *)v30 _performElectionGeneration:[(COMeshController *)v30 generation] source:0 allowingPostTransition:1];
        }

        else if (state == 2 && [(COMeshController *)selfCopy _isElectionComplete])
        {
          [(COMeshController *)selfCopy _transitionToPostElection];
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

- (void)_performStopOfNode:(id)node error:(id)error eventProvider:(id)provider
{
  v22 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  errorCopy = error;
  providerCopy = provider;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v12 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218240;
    selfCopy = self;
    v20 = 2048;
    v21 = nodeCopy;
    _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p stopping %p", &v18, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  trackers = [(COMeshController *)selfCopy2 trackers];
  v15 = trackers;
  if (errorCopy)
  {
    [trackers setNodeDormant:nodeCopy withState:0 error:errorCopy];
  }

  else
  {
    v16 = [trackers nodeStateTrackerForNode:nodeCopy];
    [v16 setState:0];
  }

  objc_sync_exit(selfCopy2);
  [(COMeshController *)selfCopy2 _finalizeCompletionOfNode:nodeCopy memberOfMesh:1 eventProvider:providerCopy];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_performInvalidationOfNode:(id)node error:(id)error eventProvider:(id)provider
{
  v32 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  errorCopy = error;
  providerCopy = provider;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  delegate = [nodeCopy delegate];
  v13 = delegate == 0;

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
      selfCopy = self;
      v30 = 2048;
      v31 = nodeCopy;
      _os_log_impl(&dword_244378000, v15, OS_LOG_TYPE_DEFAULT, "%p invalidating %p", &v28, 0x16u);
    }

    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    trackers = [(COMeshController *)selfCopy2 trackers];
    v18 = [trackers nodeStateTrackerForNode:nodeCopy];
    v19 = v18 == 0;

    if (v19)
    {
      v26 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [COMeshController _performInvalidationOfNode:error:eventProvider:];
      }

      objc_sync_exit(selfCopy2);
    }

    else
    {
      objc_sync_exit(selfCopy2);

      [nodeCopy setDelegate:0];
      [(COMeshController *)selfCopy2 willInvalidateNode:nodeCopy error:errorCopy];
      v20 = selfCopy2;
      objc_sync_enter(v20);
      trackers2 = [(COMeshController *)v20 trackers];
      v22 = [trackers2 nodeStateTrackerForNode:nodeCopy];
      status = [v22 status];

      objc_sync_exit(v20);
      [nodeCopy invalidate];
      v24 = v20;
      objc_sync_enter(v24);
      trackers3 = [(COMeshController *)v24 trackers];
      [trackers3 removeNodeStateTrackerForNode:nodeCopy];

      objc_sync_exit(v24);
      [(COMeshController *)v24 _finalizeCompletionOfNode:nodeCopy memberOfMesh:status == 1 eventProvider:providerCopy];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)didAddNode:(id)node
{
  nodeCopy = node;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    [(COMeshController *)self _handleNodeChanges];
  }

  else
  {
    v5 = [[COMeshNodeStateTracker alloc] initWithNode:nodeCopy];
    [(COMeshNodeStateTracker *)v5 setDelegate:self];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    trackers = [(COMeshController *)selfCopy trackers];
    [trackers addNodeStateTracker:v5];

    objc_sync_exit(selfCopy);
    [(COMeshController *)selfCopy willActivateNode:nodeCopy];
    [nodeCopy setDelegate:selfCopy];
    [nodeCopy activate];
  }
}

- (void)didActivateNode:(id)node
{
  nodeCopy = node;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  listener = [(COMeshController *)self listener];

  if (listener == nodeCopy)
  {
    [(COMeshController *)self _performElectionGeneration:[(COMeshController *)self generation] source:0 allowingPostTransition:1];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    trackers = [(COMeshController *)selfCopy trackers];
    v9 = [trackers nodeStateTrackerForNode:nodeCopy];

    objc_sync_exit(selfCopy);
    status = [v9 status];
    v11 = COCoreLogForCategory(0);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (status == 1)
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
      ballot = [(COMeshController *)selfCopy ballot];
      v11 = [(COMeshController *)selfCopy _electionRequestWithBallot:ballot generation:[(COMeshController *)selfCopy generation]];

      [v9 setElectionStage:1];
      [v9 setOutstandingRequest:1];
      [v9 setLastGenerationSent:{-[COMeshController generation](selfCopy, "generation")}];
      ballot2 = [(COMeshController *)selfCopy ballot];
      [v9 setLastBallotSent:ballot2];

      [nodeCopy sendMeshRequest:v11];
    }
  }
}

- (void)node:(id)node didSendCommand:(id)command
{
  nodeCopy = node;
  commandCopy = command;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    label = [(COMeshController *)self label];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __40__COMeshController_node_didSendCommand___block_invoke;
    v11[3] = &unk_278E16770;
    v12 = label;
    v10 = label;
    [(COMeshController *)self _performStopOfNode:nodeCopy error:0 eventProvider:v11];
  }

  else
  {
    [(COMeshController *)self _removeSentCommand:commandCopy fromNode:nodeCopy withResponse:0 error:0];
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

- (void)node:(id)node didReceiveCommand:(id)command
{
  v31 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  commandCopy = command;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

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
      (v18)[2](v18, commandCopy);
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
    trackers = [(COMeshController *)self trackers];
    v11 = [trackers nodeStateTrackerForNode:nodeCopy];
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

      label = [(COMeshController *)self label];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __43__COMeshController_node_didReceiveCommand___block_invoke;
      v23[3] = &unk_278E16770;
      v24 = label;
      v15 = label;
      [(COMeshController *)self _performStopOfNode:nodeCopy error:0 eventProvider:v23];
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
      (v20)[2](v20, commandCopy);
    }

    if (!v15)
    {
      v16 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
LABEL_23:
        v22 = NSStringFromClass(v9);
        *buf = 134218498;
        selfCopy = self;
        v27 = 2112;
        v28 = v22;
        v29 = 2048;
        v30 = nodeCopy;
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

- (void)unknownNodeForCommand:(id)command result:(id)result
{
  v21 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  resultCopy = result;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v9 = objc_opt_class();
  _sendingConstituent = [commandCopy _sendingConstituent];
  v11 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = 134218754;
    selfCopy = self;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = commandCopy;
    v19 = 2112;
    v20 = _sendingConstituent;
    _os_log_error_impl(&dword_244378000, v11, OS_LOG_TYPE_ERROR, "%p disregarding command %@ (%@) from unknown node %@", &v13, 0x2Au);
  }

  resultCopy[2](resultCopy, 0);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)node:(id)node didReceiveRequest:(id)request responseCallBack:(id)back
{
  nodeCopy = node;
  requestCopy = request;
  backCopy = back;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    goto LABEL_2;
  }

  trackers = [(COMeshController *)self trackers];
  v14 = [trackers nodeStateTrackerForNode:nodeCopy];
  v15 = [MEMORY[0x277CBEAA8] now];
  [v15 timeIntervalSinceReferenceDate];
  [v14 setLastHeard:?];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(COMeshController *)self _handleElectionRequest:requestCopy onNode:nodeCopy responseCallBack:backCopy];
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
        backCopy[2](backCopy, v12, 0);
LABEL_4:

        goto LABEL_9;
      }

LABEL_2:
      requestHandlers = [(COMeshController *)self requestHandlers];
      v12 = [requestHandlers objectForKey:objc_opt_class()];

      if (v12)
      {
        (v12[1].super.super.isa)(v12, requestCopy, backCopy);
      }

      goto LABEL_4;
    }

    [(COMeshController *)self _handleVoteRequest:requestCopy onNode:nodeCopy responseCallBack:backCopy];
  }

LABEL_9:
}

- (void)node:(id)node didReceiveResponse:(id)response toRequest:(id)request
{
  nodeCopy = node;
  responseCopy = response;
  requestCopy = request;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  trackers = [(COMeshController *)self trackers];
  v12 = [trackers nodeStateTrackerForNode:nodeCopy];
  v13 = [MEMORY[0x277CBEAA8] now];
  [v13 timeIntervalSinceReferenceDate];
  [v12 setLastHeard:?];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(COMeshController *)self _handleBallotResponse:responseCopy onNode:nodeCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(COMeshController *)self _handleAcceptResponse:responseCopy onNode:nodeCopy];
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
        [(COMeshController *)self _removeSentCommand:requestCopy fromNode:nodeCopy withResponse:responseCopy error:0];
      }
    }
  }
}

- (void)node:(id)node didReceiveError:(id)error forCommand:(id)command
{
  v60 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  errorCopy = error;
  commandCopy = command;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    [(COMeshController *)self _removeSentCommand:commandCopy fromNode:nodeCopy withResponse:0 error:errorCopy];
    goto LABEL_62;
  }

  listener = [(COMeshController *)self listener];

  if (listener != nodeCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    trackers = [(COMeshController *)selfCopy trackers];
    v46 = [trackers nodeStateTrackerForNode:nodeCopy];

    objc_sync_exit(selfCopy);
    code = [errorCopy code];
    domain = [errorCopy domain];
    v16 = [domain isEqualToString:@"COMeshNodeErrorDomain"];
    if (code == -4000)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    isKindOfClass = 0;
    v44 = [domain isEqualToString:*MEMORY[0x277D44250]];
    if (v44 && code == -6722)
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
    if (code != -6714)
    {
      v21 = 0;
    }

    if ((v21 & v45) == 1)
    {
LABEL_21:
      v43 = v17;
      if (isKindOfClass)
      {
        label = [(COMeshController *)selfCopy label];
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __52__COMeshController_node_didReceiveError_forCommand___block_invoke;
        v53[3] = &unk_278E16798;
        v23 = commandCopy;
        v54 = v23;
        v55 = label;
        v24 = label;
        v25 = MEMORY[0x245D5FF10](v53);
        v26 = COCoreLogForCategory(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [COMeshController node:selfCopy didReceiveError:v23 forCommand:v26];
        }

        [(COMeshController *)selfCopy setPendingPing:0];
      }

      else
      {
        v25 = 0;
      }

      remote = [nodeCopy remote];
      if (remote)
      {
        ballot = [(COMeshController *)selfCopy ballot];
        candidates = [ballot candidates];
        firstObject = [candidates firstObject];

        if ([remote isEqual:firstObject])
        {
          v31 = v25;
          if (!v25)
          {
            label2 = [(COMeshController *)selfCopy label];
            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __52__COMeshController_node_didReceiveError_forCommand___block_invoke_186;
            v50[3] = &unk_278E167C0;
            v52 = v43;
            v51 = label2;
            v33 = label2;
            v31 = MEMORY[0x245D5FF10](v50);

            v25 = v31;
          }

          goto LABEL_32;
        }

        if (v20)
        {
          v31 = 0;
LABEL_32:
          [(COMeshController *)selfCopy _performStopOfNode:nodeCopy error:errorCopy eventProvider:v31];
LABEL_33:

          goto LABEL_62;
        }
      }

      if (v43)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v46 state] == 1)
        {
          ballot2 = [(COMeshController *)selfCopy ballot];
          firstObject = [(COMeshController *)selfCopy _electionRequestWithBallot:ballot2 generation:[(COMeshController *)selfCopy generation]];

          [v46 setOutstandingRequest:1];
          [v46 setLastGenerationSent:{-[COMeshController generation](selfCopy, "generation")}];
          ballot3 = [(COMeshController *)selfCopy ballot];
          [v46 setLastBallotSent:ballot3];

          [nodeCopy sendMeshRequest:firstObject];
          goto LABEL_33;
        }
      }
    }

    [(COMeshController *)selfCopy _removeSentCommand:commandCopy fromNode:nodeCopy withResponse:0 error:errorCopy];
    state = [v46 state];
    switch(state)
    {
      case 4:
        v39 = COCoreLogForCategory(0);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [COMeshController node:didReceiveError:forCommand:];
        }

        label3 = [(COMeshController *)selfCopy label];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __52__COMeshController_node_didReceiveError_forCommand___block_invoke_187;
        v48[3] = &unk_278E16770;
        v49 = label3;
        v41 = label3;
        [(COMeshController *)selfCopy _performStopOfNode:nodeCopy error:errorCopy eventProvider:v48];

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
          v57 = nodeCopy;
          v58 = 2112;
          v59 = errorCopy;
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
            v57 = nodeCopy;
            v58 = 2112;
            v59 = errorCopy;
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

    [(COMeshController *)selfCopy _performStopOfNode:nodeCopy error:errorCopy eventProvider:0];
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

- (void)unknownNodeForRequest:(id)request result:(id)result
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  resultCopy = result;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(COMeshController *)self _handleDiscoveryUsingElectionRequest:requestCopy];
  }

  else
  {
    v10 = objc_opt_class();
    _sendingConstituent = [requestCopy _sendingConstituent];
    v12 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 134218754;
      selfCopy = self;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = requestCopy;
      v20 = 2112;
      v21 = _sendingConstituent;
      _os_log_error_impl(&dword_244378000, v12, OS_LOG_TYPE_ERROR, "%p disregarding request %@ (%@) from unknown node %@", &v14, 0x2Au);
    }

    v9 = 0;
  }

  resultCopy[2](resultCopy, v9);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didInvalidateNode:(id)node
{
  nodeCopy = node;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  listener = [(COMeshController *)self listener];

  if (listener == nodeCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    state = [(COMeshController *)selfCopy state];
    objc_sync_exit(selfCopy);

    if ((state & 0xFFFFFFFFFFFFFFFBLL) == 0)
    {
      [(COMeshController *)selfCopy stop];
      goto LABEL_8;
    }

    label = [(COMeshController *)selfCopy label];
    recorder = [(COMeshController *)selfCopy recorder];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __38__COMeshController_didInvalidateNode___block_invoke_2;
    v25 = &unk_278E16770;
    v26 = label;
    v14 = recorder[2];
    v8 = label;
    v14(recorder, 0x2857B5D68, &v22);

    v15 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(COMeshController *)selfCopy didInvalidateNode:v15];
    }

    v16 = [(COMeshController *)selfCopy trackers:v22];
    [v16 removeAllNodeStateTrackers];

    v17 = [(COMeshController *)selfCopy me];
    v18 = [[COBallot alloc] initWithCandidate:v17];
    [(COMeshController *)selfCopy setBallot:v18];

    _newCompanionLinkClient = [(COMeshController *)selfCopy _newCompanionLinkClient];
    v20 = [[COMeshLocalNode alloc] initWithCompanionLinkClient:_newCompanionLinkClient source:v17];
    companionLinkClientFactory = [(COMeshController *)selfCopy companionLinkClientFactory];
    [(COMeshLocalNode *)v20 setCompanionLinkClientFactory:companionLinkClientFactory];

    [(COMeshController *)selfCopy setListener:v20];
    [(COMeshController *)selfCopy _performElectionGeneration:[(COMeshController *)selfCopy generation]+ 1 source:0 allowingPostTransition:0];

    v9 = v26;
  }

  else
  {
    label2 = [(COMeshController *)self label];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __38__COMeshController_didInvalidateNode___block_invoke;
    v27[3] = &unk_278E16770;
    v28 = label2;
    v8 = label2;
    [(COMeshController *)self _performInvalidationOfNode:nodeCopy error:0 eventProvider:v27];
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

- (void)didRemoveNode:(id)node
{
  nodeCopy = node;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    [(COMeshController *)self _handleNodeChanges];
  }

  else
  {
    label = [(COMeshController *)self label];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __34__COMeshController_didRemoveNode___block_invoke;
    v8[3] = &unk_278E16770;
    v9 = label;
    v7 = label;
    [(COMeshController *)self _performInvalidationOfNode:nodeCopy error:0 eventProvider:v8];
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

- (void)nodeBecameAvailable:(id)available
{
  availableCopy = available;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  addOns = [(COMeshController *)selfCopy addOns];
  objc_sync_exit(selfCopy);

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__COMeshController_nodeBecameAvailable___block_invoke;
  v8[3] = &unk_278E16400;
  v8[4] = selfCopy;
  [addOns enumerateObjectsUsingBlock:v8];
}

- (void)nodeShouldRetryAfterBackoff:(id)backoff
{
  v23 = *MEMORY[0x277D85DE8];
  backoffCopy = backoff;
  if ([backoffCopy electionStage] == 4 && objc_msgSend(backoffCopy, "state") == 2)
  {
    v5 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [backoffCopy backoffBucket] - 1;
      node = [backoffCopy node];
      v17 = 134218496;
      selfCopy2 = self;
      v19 = 2048;
      v20 = v6;
      v21 = 2048;
      v22 = node;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p back off (%ld) firing for %p", &v17, 0x20u);
    }

    ballot = [(COMeshController *)self ballot];
    generation = [(COMeshController *)self generation];
    backoffResponse = [backoffCopy backoffResponse];
    if (backoffResponse)
    {
      [backoffCopy setLastGenerationSent:generation];
      [backoffCopy setLastBallotSent:ballot];
      v11 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        node2 = [backoffCopy node];
        v17 = 134218496;
        selfCopy2 = self;
        v19 = 2048;
        v20 = generation;
        v21 = 2048;
        v22 = node2;
        _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p delayed BALLOT (%llu) to %p", &v17, 0x20u);
      }

      v13 = [(COMeshController *)self _ballotResponseWithBallot:ballot generation:generation];
      (backoffResponse)[2](backoffResponse, v13, 0);

      [backoffCopy setBackoffResponse:0];
    }

    else if (([backoffCopy hasOutstandingRequest] & 1) == 0)
    {
      [backoffCopy setLastGenerationSent:generation];
      [backoffCopy setLastBallotSent:ballot];
      [backoffCopy setElectionStage:1];
      v14 = [(COMeshBaseBallotRequest *)[COMeshElectionRequest alloc] initWithBallot:ballot generation:generation];
      node3 = [backoffCopy node];
      [node3 sendMeshRequest:v14];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)backedOffNodeMovedOutOfElection:(id)election
{
  electionCopy = election;
  totalBackedOffTime = [electionCopy totalBackedOffTime];
  if (totalBackedOffTime > [(COMeshController *)self longestBackOff])
  {
    -[COMeshController setLongestBackOff:](self, "setLongestBackOff:", [electionCopy totalBackedOffTime]);
    node = [electionCopy node];
    remote = [node remote];
    [(COMeshController *)self setLongestBackedOffConstituent:remote];
  }
}

- (void)discoveryManager:(id)manager didDiscoverRecords:(id)records
{
  recordsCopy = records;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__COMeshController_discoveryManager_didDiscoverRecords___block_invoke;
  v8[3] = &unk_278E156B0;
  v8[4] = self;
  v9 = recordsCopy;
  v7 = recordsCopy;
  dispatch_async(dispatchQueue, v8);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  state = selfCopy->_state;
  objc_sync_exit(selfCopy);

  if (state != 2)
  {
    [(COMeshController *)selfCopy willTransitionToState:2];
    v4 = selfCopy;
    objc_sync_enter(v4);
    selfCopy->_state = 2;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  state = selfCopy->_state;
  objc_sync_exit(selfCopy);

  if (state != 3)
  {
    [(COMeshController *)selfCopy willTransitionToState:3];
    v4 = selfCopy;
    objc_sync_enter(v4);
    selfCopy->_state = 3;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  addOns = [(COMeshController *)selfCopy addOns];
  objc_sync_exit(selfCopy);

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__COMeshController__handleNodeChanges__block_invoke;
  v4[3] = &unk_278E16400;
  v4[4] = selfCopy;
  [addOns enumerateObjectsUsingBlock:v4];
}

- (void)_setupCoordinationPrefsObserver
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%p setting up observers to watch coordination prefs", &v9, 0xCu);
  }

  v4 = MEMORY[0x277CFD0B0];
  coordinationBundleID = [MEMORY[0x277CFD0B0] coordinationBundleID];
  v6 = [v4 userDefaultsForIdentifer:coordinationBundleID];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v28 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v12 = *MEMORY[0x277CFCF00];
  if ([pathCopy isEqualToString:*MEMORY[0x277CFCF00]])
  {
    v13 = [objectCopy objectForKey:v12];
    if (v13)
    {
      v14 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 134218240;
        selfCopy4 = self;
        v26 = 1024;
        bOOLValue = [v13 BOOLValue];
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p observed an update to fast fold enablement. new value = %d", &v24, 0x12u);
      }

      bOOLValue2 = [v13 BOOLValue];
      if (bOOLValue2 != [MEMORY[0x277CFD0B8] isFastFoldEnabled])
      {
        v22 = COCoreLogForCategory(0);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        v24 = 134217984;
        selfCopy4 = self;
        v23 = "%p fast fold changed. Exiting process";
        goto LABEL_18;
      }
    }
  }

  v16 = *MEMORY[0x277CFCF08];
  if ([pathCopy isEqualToString:*MEMORY[0x277CFCF08]])
  {
    v17 = [objectCopy objectForKey:v16];
    if (!v17)
    {
      goto LABEL_12;
    }

    v18 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      bOOLValue3 = [v17 BOOLValue];
      v24 = 134218240;
      selfCopy4 = self;
      v26 = 1024;
      bOOLValue = bOOLValue3;
      _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%p observed an update to ip diffing enablement. new value = %d", &v24, 0x12u);
    }

    bOOLValue4 = [v17 BOOLValue];
    if (bOOLValue4 == [MEMORY[0x277CFD0B8] isIPDiscoveryDiffingEnabled])
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
    selfCopy4 = self;
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