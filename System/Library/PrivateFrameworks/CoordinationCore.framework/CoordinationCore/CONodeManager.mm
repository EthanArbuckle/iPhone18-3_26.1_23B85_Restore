@interface CONodeManager
- (BOOL)_updateBallot:(id)ballot;
- (COConstituent)leader;
- (COConstituent)me;
- (COMeshNode)nodeForMe;
- (CONodeManager)initWithExecutionContext:(id)context;
- (CONodeManagerDelegate)delegate;
- (NSString)description;
- (id)_constituentCharacteristics:(id)characteristics;
- (id)activeNodesWithSelfNode:(BOOL)node;
- (id)nodeControllerForConstituent:(id)constituent;
- (id)nodeControllerForIDS:(id)s;
- (id)shortDescription;
- (void)_bumpGeneration;
- (void)_checkForElectionCompletion:(id)completion nodeController:(id)controller;
- (void)_didDiscoverRecord:(id)record;
- (void)_didLoseRecord:(id)record;
- (void)_handleDiscoveryRecord:(id)record;
- (void)_handleEnqueuedCommandsForLostNode:(id)node error:(id)error;
- (void)_handleLostRecord:(id)record;
- (void)_informControllersAboutNewElectionInfo;
- (void)_informDelegateAboutNodeAddition:(id)addition oldState:(int64_t)state;
- (void)_informDelegateAboutNodeRemoval:(id)removal oldState:(int64_t)state;
- (void)_logElectionSummary;
- (void)_nodeBecameInactive:(id)inactive withReason:(int64_t)reason;
- (void)_nodeStartedElection:(id)election withElectionInfo:(id)info;
- (void)_nodeStopped:(id)stopped withReason:(int64_t)reason;
- (void)_reportLostLeader:(id)leader withReason:(int64_t)reason;
- (void)_resetBallot;
- (void)addBrowser:(id)browser;
- (void)backedOffNodeMovedOutOfElection:(id)election;
- (void)fast_fold_nodeController:(id)controller didReceiveElectionCmd:(id)cmd withCompletionHandler:(id)handler;
- (void)nodeController:(id)controller didAddTransport:(id)transport;
- (void)nodeController:(id)controller didReceiveCommand:(id)command;
- (void)nodeController:(id)controller didReceiveElectionCmd:(id)cmd withCompletionHandler:(id)handler;
- (void)nodeController:(id)controller didReceiveError:(id)error forCommand:(id)command;
- (void)nodeController:(id)controller didReceiveOnDemandNodeCreationRequest:(id)request;
- (void)nodeController:(id)controller didReceiveRequest:(id)request callback:(id)callback;
- (void)nodeController:(id)controller didRemoveTransport:(id)transport withError:(id)error;
- (void)nodeController:(id)controller didUpdateRemoteConstituent:(id)constituent to:(id)to;
- (void)nodeController:(id)controller didUpdateState:(int64_t)state to:(int64_t)to reason:(int64_t)reason withLastSentElectionInfo:(id)info;
- (void)pingLeader;
- (void)removeBrowser:(id)browser;
- (void)sendCommand:(id)command;
- (void)sendCommands:(id)commands;
- (void)setElectionElapsedTimer:(id)timer;
- (void)setElectionEnd:(unint64_t)end;
- (void)setElectionPrevious:(unint64_t)previous;
- (void)setElectionStart:(unint64_t)start;
- (void)start;
- (void)stopWithCompletionHandler:(id)handler;
@end

@implementation CONodeManager

- (CONodeManager)initWithExecutionContext:(id)context
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = CONodeManager;
  v5 = [(CONodeManager *)&v19 init];
  if (v5)
  {
    v6 = [contextCopy copy];
    executionContext = v5->_executionContext;
    v5->_executionContext = v6;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    nodeControllers = v5->_nodeControllers;
    v5->_nodeControllers = dictionary;

    v10 = objc_alloc_init(COElectionInfo);
    electionInfo = v5->_electionInfo;
    v5->_electionInfo = v10;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    browsersObservers = v5->_browsersObservers;
    v5->_browsersObservers = dictionary2;

    v14 = [MEMORY[0x277CBEB98] set];
    acceptableCommands = v5->_acceptableCommands;
    v5->_acceptableCommands = v14;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    leaderCommands = v5->_leaderCommands;
    v5->_leaderCommands = dictionary3;
  }

  return v5;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  executionContext = [(CONodeManager *)self executionContext];
  meshControllerDescription = [executionContext meshControllerDescription];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"[m:%@] <%@: %p>", meshControllerDescription, v7, self];

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CONodeManager *)self me];
  browsersObservers = [(CONodeManager *)self browsersObservers];
  v8 = [v3 stringWithFormat:@"<%@: %p, \n ME: %@, Browsers: %@>", v5, self, v6, browsersObservers];

  return v8;
}

- (void)start
{
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if (!self->_started)
  {
    self->_started = 1;
    objc_initWeak(&location, self);
    browsersObservers = [(CONodeManager *)self browsersObservers];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __22__CONodeManager_start__block_invoke;
    v5[3] = &unk_278E17478;
    objc_copyWeak(&v6, &location);
    v5[4] = self;
    [browsersObservers enumerateKeysAndObjectsUsingBlock:v5];

    [(CONodeManager *)self _bumpGeneration];
    [(CONodeManager *)self _resetBallot];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __22__CONodeManager_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __22__CONodeManager_start__block_invoke_2;
  v13[3] = &unk_278E17428;
  objc_copyWeak(&v14, (a1 + 40));
  v7 = [v5 addObserverUsingBlock:v13];
  v8 = [*(a1 + 32) browsersObservers];
  [v8 setObject:v7 forKey:v5];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __22__CONodeManager_start__block_invoke_4;
  v10[3] = &unk_278E17450;
  objc_copyWeak(&v12, (a1 + 40));
  v9 = v5;
  v11 = v9;
  [v9 startWithCompletionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
}

void __22__CONodeManager_start__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained executionContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __22__CONodeManager_start__block_invoke_3;
    v9[3] = &unk_278E16998;
    v11 = a2;
    v9[4] = v7;
    v10 = v5;
    [v8 dispatchAsync:v9];
  }
}

uint64_t __22__CONodeManager_start__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    return [v3 _didDiscoverRecord:v4];
  }

  else
  {
    return [v3 _didLoseRecord:v4];
  }
}

void __22__CONodeManager_start__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = COCoreLogForCategory(15);
    v6 = v5;
    if (a2)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __22__CONodeManager_start__block_invoke_4_cold_1();
      }

      goto LABEL_9;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [WeakRetained shortDescription];
      v8 = *(a1 + 32);
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully started browser %@", &v12, 0x16u);
    }

    v9 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = *(a1 + 32);
      v6 = WeakRetained[6];
      WeakRetained[6] = v10;
LABEL_9:
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  self->_started = 0;
  objc_initWeak(&location, self);
  executionContext2 = [(CONodeManager *)self executionContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__CONodeManager_stopWithCompletionHandler___block_invoke;
  v8[3] = &unk_278E17510;
  objc_copyWeak(&v10, &location);
  v8[4] = self;
  v7 = handlerCopy;
  v9 = v7;
  [executionContext2 dispatchAsync:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __43__CONodeManager_stopWithCompletionHandler___block_invoke(id *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [WeakRetained shortDescription];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stopping", &buf, 0xCu);
    }

    v5 = [WeakRetained browsersObservers];
    [v5 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_4];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v20 = 0x2020000000;
    v21 = 0;
    v6 = a1[4];
    objc_sync_enter(v6);
    v7 = [WeakRetained nodeControllers];
    v8 = [v7 count];
    *(*(&buf + 1) + 24) = v8;

    v9 = [WeakRetained nodeControllers];
    v10 = [v9 copy];

    v11 = [WeakRetained activeNodesWithSelfNode:1];
    v12 = [v11 count];

    objc_sync_exit(v6);
    if (*(*(&buf + 1) + 24))
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __43__CONodeManager_stopWithCompletionHandler___block_invoke_2;
      v14[3] = &unk_278E174E8;
      objc_copyWeak(v18, a1 + 6);
      p_buf = &buf;
      v15 = v10;
      v18[1] = v12;
      v16 = a1[5];
      [v15 enumerateKeysAndObjectsUsingBlock:v14];

      objc_destroyWeak(v18);
    }

    else
    {
      (*(a1[5] + 2))();
    }

    _Block_object_dispose(&buf, 8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __43__CONodeManager_stopWithCompletionHandler___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v4 = a3;
  v5 = [MEMORY[0x277CBEB68] null];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    [v7 removeObserver:v4];
    [v7 stop];
  }
}

void __43__CONodeManager_stopWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__CONodeManager_stopWithCompletionHandler___block_invoke_3;
  v9[3] = &unk_278E174C0;
  objc_copyWeak(v13, (a1 + 56));
  v12 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v10 = v7;
  v13[1] = v8;
  v11 = *(a1 + 40);
  [v6 stopWithCompletionHandler:v9];

  objc_destroyWeak(v13);
}

void __43__CONodeManager_stopWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 24) - 1;
    *(v4 + 24) = v5;
    if (!v5)
    {
      v6 = [WeakRetained electionEnd];
      if (v6 > [v3 electionStart])
      {
        v7 = [v3 executionContext];
        v24 = [v7 label];

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v8 = [*(a1 + 32) allValues];
        v9 = 0;
        v10 = 0;
        v11 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v11)
        {
          v12 = *v32;
          do
          {
            v13 = 0;
            do
            {
              if (*v32 != v12)
              {
                objc_enumerationMutation(v8);
              }

              v14 = [*(*(&v31 + 1) + 8 * v13) node];
              if ([v14 connectionType] == 2)
              {
                ++v10;
                if ([v14 discoveryType] == 2)
                {
                  ++v9;
                }
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
          }

          while (v11);
        }

        v15 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        v16 = [v3 executionContext];
        v17 = [v16 analyticsRecorder];

        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __43__CONodeManager_stopWithCompletionHandler___block_invoke_4;
        v25[3] = &unk_278E16428;
        v18 = *(a1 + 64);
        v28 = v10;
        v29 = v9;
        v30 = (v15 - v6) / 1000000000.0;
        v26 = v24;
        v27 = v18;
        v19 = v17[2];
        v20 = v24;
        v19(v17, 0x2857B5D48, v25);
      }

      (*(*(a1 + 40) + 16))();
      v21 = v3;
      objc_sync_enter(v21);
      [v21 setElectionElapsedTimer:0];
      v22 = [v21 nodeControllers];
      [v22 removeAllObjects];

      objc_sync_exit(v21);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

id __43__CONodeManager_stopWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v11[0] = &unk_2857C8880;
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

- (void)addBrowser:(id)browser
{
  browserCopy = browser;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if (!self->_started)
  {
    browsersObservers = [(CONodeManager *)self browsersObservers];
    null = [MEMORY[0x277CBEB68] null];
    [browsersObservers setObject:null forKey:browserCopy];
  }
}

- (void)removeBrowser:(id)browser
{
  browserCopy = browser;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if (!self->_started)
  {
    browsersObservers = [(CONodeManager *)self browsersObservers];
    [browsersObservers removeObjectForKey:browserCopy];
  }
}

- (void)sendCommands:(id)commands
{
  v17 = *MEMORY[0x277D85DE8];
  commandsCopy = commands;
  if ([commandsCopy count])
  {
    executionContext = [(CONodeManager *)self executionContext];
    [executionContext assertDispatchQueue];

    [(CONodeManager *)self pingLeader];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = commandsCopy;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(CONodeManager *)self sendCommand:*(*(&v12 + 1) + 8 * v10++), v12];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendCommand:(id)command
{
  commandCopy = command;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  destination = [commandCopy destination];
  if (!destination)
  {
    if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
    {
      electionInfo = [(CONodeManager *)self electionInfo];
      leader = [electionInfo leader];
    }

    else
    {
      leader = [(CONodeManager *)self leader];
    }

    v9 = [(CONodeManager *)self nodeControllerForConstituent:leader];
    v10 = [COMeshNode alloc];
    node = [v9 node];
    destination = [(COMeshNode *)v10 initWithNode:node];

    [commandCopy setDestination:destination];
  }

  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  remote = [(COMeshNode *)destination remote];
  v16 = [(CONodeManager *)self nodeControllerForConstituent:remote];

  if (!v16)
  {
    iDSIdentifier = [(COMeshNode *)destination IDSIdentifier];
    v16 = [(CONodeManager *)self nodeControllerForIDS:iDSIdentifier];
  }

  selfCopy = self;
  objc_initWeak(&location, v16);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __29__CONodeManager_sendCommand___block_invoke;
  v21[3] = &unk_278E17538;
  v21[4] = selfCopy;
  objc_copyWeak(v24, &location);
  v19 = commandCopy;
  v22 = v19;
  v24[1] = v12;
  v24[2] = v13;
  v24[3] = v14;
  v20 = destination;
  v23 = v20;
  [v16 sendCommand:v19 withCompletionHandler:v21];

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);
}

void __29__CONodeManager_sendCommand___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if (v9)
  {
    v12 = WeakRetained == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = *(a1 + 40);
    v14 = *(a1 + 64);
    if (objc_opt_isKindOfClass() & 1) != 0 || (v15 = *(a1 + 40), v16 = *(a1 + 72), (objc_opt_isKindOfClass()) || (v17 = *(a1 + 40), v18 = *(a1 + 80), (objc_opt_isKindOfClass()))
    {
      v19 = [v9 delegate];
      if (!v8)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
LABEL_13:

          goto LABEL_14;
        }

        v21 = *(a1 + 48);
        v20 = [v23 command];
        [v19 node:v21 didReceiveResponse:v7 toRequest:v20];
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v19 = [v9 delegate];
      if (!v8)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_13;
        }

        v22 = *(a1 + 48);
        v20 = [v23 command];
        [v19 node:v22 didSendCommand:v20];
        goto LABEL_12;
      }
    }

    v20 = [v23 command];
    [v9 nodeController:v11 didReceiveError:v8 forCommand:v20];
    goto LABEL_12;
  }

LABEL_14:
}

- (void)pingLeader
{
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
  {
    electionInfo = [(CONodeManager *)self electionInfo];
    leader = [electionInfo leader];
  }

  else
  {
    leader = [(CONodeManager *)self leader];
  }

  v5 = [(CONodeManager *)self nodeControllerForConstituent:leader];
  [v5 sendPing];
}

- (COConstituent)me
{
  executionContext = [(CONodeManager *)self executionContext];
  constituentForMe = [executionContext constituentForMe];

  return constituentForMe;
}

- (COMeshNode)nodeForMe
{
  executionContext = [(CONodeManager *)self executionContext];
  constituentForMe = [executionContext constituentForMe];

  v5 = [(CONodeManager *)self nodeControllerForConstituent:constituentForMe];
  node = [v5 node];

  v7 = [[COMeshNode alloc] initWithNode:node];

  return v7;
}

- (COConstituent)leader
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_leader;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)nodeControllerForConstituent:(id)constituent
{
  constituentCopy = constituent;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
  v7 = [nodeControllers copy];

  objc_sync_exit(selfCopy);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__CONodeManager_nodeControllerForConstituent___block_invoke;
  v11[3] = &unk_278E17560;
  v8 = constituentCopy;
  v12 = v8;
  v13 = &v14;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __46__CONodeManager_nodeControllerForConstituent___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v7 = [v10 node];
  v8 = [v7 remote];
  v9 = [v8 isEqual:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)nodeControllerForIDS:(id)s
{
  sCopy = s;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
  v7 = [nodeControllers copy];

  objc_sync_exit(selfCopy);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__CONodeManager_nodeControllerForIDS___block_invoke;
  v11[3] = &unk_278E17560;
  v8 = sCopy;
  v12 = v8;
  v13 = &v14;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __38__CONodeManager_nodeControllerForIDS___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v7 = [v10 node];
  v8 = [v7 IDSIdentifier];
  v9 = [v8 isEqual:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)activeNodesWithSelfNode:(BOOL)node
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
  v7 = [nodeControllers copy];

  objc_sync_exit(selfCopy);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__CONodeManager_activeNodesWithSelfNode___block_invoke;
  v10[3] = &unk_278E17588;
  nodeCopy = node;
  v10[4] = &v12;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];
  v8 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v8;
}

void __41__CONodeManager_activeNodesWithSelfNode___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 nodeAfterReconciliation];
  if ([v4 isActive] && ((*(a1 + 40) & 1) != 0 || (objc_msgSend(v8, "isLocalNodeController") & 1) == 0))
  {
    v5 = [COMeshNode alloc];
    v6 = [v8 node];
    v7 = [(COMeshNode *)v5 initWithNode:v6];

    [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
  }
}

- (void)_didDiscoverRecord:(id)record
{
  recordCopy = record;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if (self->_started)
  {
    [(CONodeManager *)self _handleDiscoveryRecord:recordCopy];
  }
}

- (void)_didLoseRecord:(id)record
{
  v13 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  v6 = COCoreLogForCategory(15);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CONodeManager *)self shortDescription];
    v9 = 138543618;
    v10 = shortDescription;
    v11 = 2112;
    v12 = recordCopy;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ lost a record %@", &v9, 0x16u);
  }

  if (self->_started)
  {
    [(CONodeManager *)self _handleLostRecord:recordCopy];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)nodeController:(id)controller didUpdateState:(int64_t)state to:(int64_t)to reason:(int64_t)reason withLastSentElectionInfo:(id)info
{
  v28 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  infoCopy = info;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if (!self->_started)
  {
    goto LABEL_18;
  }

  v15 = COCoreLogForCategory(15);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CONodeManager *)self shortDescription];
    v17 = CONodeControllerStateDescription(state);
    v18 = CONodeControllerStateDescription(to);
    v20 = 138544130;
    v21 = shortDescription;
    v22 = 2048;
    v23 = controllerCopy;
    v24 = 2114;
    v25 = v17;
    v26 = 2114;
    v27 = v18;
    _os_log_impl(&dword_244378000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %p state from %{public}@ to %{public}@", &v20, 0x2Au);
  }

  if (to <= 3)
  {
    if (to == 1)
    {
      if ((state & 0xFFFFFFFFFFFFFFFDLL) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (to != 2)
    {
      goto LABEL_18;
    }

    [(CONodeManager *)self _nodeBecameInactive:controllerCopy withReason:reason];
LABEL_16:
    [(CONodeManager *)self _informDelegateAboutNodeRemoval:controllerCopy oldState:state];
    goto LABEL_17;
  }

  switch(to)
  {
    case 4:
      [(CONodeManager *)self _nodeStopped:controllerCopy withReason:reason];
      goto LABEL_16;
    case 5:
      [(CONodeManager *)self _nodeStartedElection:controllerCopy withElectionInfo:infoCopy];
      [(CONodeManager *)self _informDelegateAboutNodeAddition:controllerCopy oldState:state];
      break;
    case 6:
      [(CONodeManager *)self _informDelegateAboutNodeAddition:controllerCopy oldState:state];
LABEL_17:
      [(CONodeManager *)self _checkForElectionCompletion:infoCopy nodeController:controllerCopy];
      break;
  }

LABEL_18:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)fast_fold_nodeController:(id)controller didReceiveElectionCmd:(id)cmd withCompletionHandler:(id)handler
{
  v63 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  cmdCopy = cmd;
  handlerCopy = handler;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if (self->_started)
  {
    v12 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      shortDescription = [(CONodeManager *)self shortDescription];
      *buf = 138543874;
      selfCopy3 = shortDescription;
      v55 = 2112;
      v56 = cmdCopy;
      v57 = 2048;
      v58 = controllerCopy;
      _os_log_debug_impl(&dword_244378000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ got a command %@ from node controller %p", buf, 0x20u);
    }

    ballotBrowser = [(CONodeManager *)self ballotBrowser];
    ballot = [cmdCopy ballot];
    [ballotBrowser discoveryUsingBallot:ballot];

    v15 = [[COElectionInfo alloc] initWithCommand:cmdCopy];
    electionInfo = [(CONodeManager *)self electionInfo];
    v17 = [electionInfo hasSameGenerationAndLeader:v15];

    if (v17)
    {
      electionInfo2 = [(CONodeManager *)self electionInfo];
      handlerCopy[2](handlerCopy, electionInfo2);
LABEL_27:

      goto LABEL_28;
    }

    electionInfo3 = [(CONodeManager *)self electionInfo];
    generation = [electionInfo3 generation];

    generation2 = [(COElectionInfo *)v15 generation];
    if (generation > generation2)
    {
      v20 = COCoreLogForCategory(15);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription2 = [(CONodeManager *)self shortDescription];
        electionInfo4 = [(CONodeManager *)self electionInfo];
        generation3 = [electionInfo4 generation];
        generation4 = [(COElectionInfo *)v15 generation];
        *buf = 138543874;
        selfCopy3 = shortDescription2;
        v55 = 2048;
        v56 = generation3;
        v57 = 2048;
        v58 = generation4;
        _os_log_impl(&dword_244378000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Our generation %llu is greater than the incoming generation %llu", buf, 0x20u);
      }

      electionInfo2 = [(CONodeManager *)self electionInfo];
      handlerCopy[2](handlerCopy, electionInfo2);
      goto LABEL_27;
    }

    node = [controllerCopy node];
    electionInfo2 = [node remote];

    electionInfo5 = [(CONodeManager *)self electionInfo];
    ballot2 = [electionInfo5 ballot];
    candidates = [ballot2 candidates];
    v29 = [candidates containsObject:electionInfo2];

    if (v29)
    {
      v30 = 0;
      goto LABEL_21;
    }

    electionInfo6 = [(CONodeManager *)self electionInfo];
    ballot3 = [electionInfo6 ballot];
    v33 = [ballot3 mutableCopy];

    [v33 addCandidate:electionInfo2];
    ipDiscoveryRecord = [controllerCopy ipDiscoveryRecord];
    v35 = ipDiscoveryRecord;
    if (ipDiscoveryRecord && [ipDiscoveryRecord shouldAdvertise])
    {
      if (![v33 addDiscoveryRecord:v35])
      {
LABEL_20:
        v30 = [(CONodeManager *)self _updateBallot:v33, generation];

LABEL_21:
        if (generation2 <= generation)
        {
          electionInfo7 = [(CONodeManager *)self electionInfo];
          handlerCopy[2](handlerCopy, electionInfo7);

          if (!v30)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v38 = COCoreLogForCategory(15);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            shortDescription3 = [(CONodeManager *)self shortDescription];
            *buf = 138543874;
            selfCopy3 = shortDescription3;
            v55 = 2048;
            v56 = generation;
            v57 = 2048;
            v58 = generation2;
            _os_log_impl(&dword_244378000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ bumping election generation from %llu to %llu", buf, 0x20u);
          }

          electionInfo8 = [(CONodeManager *)self electionInfo];
          [electionInfo8 setGeneration:generation2];

          [(CONodeManager *)self _resetBallot];
          electionInfo9 = [(CONodeManager *)self electionInfo];
          handlerCopy[2](handlerCopy, electionInfo9);
        }

        selfCopy = self;
        objc_sync_enter(selfCopy);
        nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
        v45 = [nodeControllers copy];

        objc_sync_exit(selfCopy);
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __86__CONodeManager_fast_fold_nodeController_didReceiveElectionCmd_withCompletionHandler___block_invoke;
        v50[3] = &unk_278E175B0;
        v51 = controllerCopy;
        v52 = selfCopy;
        [v45 enumerateKeysAndObjectsUsingBlock:v50];

        goto LABEL_27;
      }

      v36 = COCoreLogForCategory(11);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        discovery = [v33 discovery];
        *buf = 134218498;
        selfCopy3 = self;
        v55 = 2112;
        v56 = discovery;
        v57 = 2048;
        v58 = v33;
        _os_log_impl(&dword_244378000, v36, OS_LOG_TYPE_DEFAULT, "%p updated Discovery %@ in ballot %p when handling response", buf, 0x20u);
      }
    }

    else
    {
      v36 = COCoreLogForCategory(11);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134219010;
        selfCopy3 = self;
        v55 = 2112;
        v56 = v35;
        v57 = 2112;
        v58 = controllerCopy;
        v59 = 2048;
        v60 = v33;
        v61 = 2112;
        v62 = cmdCopy;
        _os_log_debug_impl(&dword_244378000, v36, OS_LOG_TYPE_DEBUG, "%p cannot add Discovery %@ for %@ to ballot %p when handling response %@", buf, 0x34u);
      }
    }

    goto LABEL_20;
  }

LABEL_28:

  v46 = *MEMORY[0x277D85DE8];
}

void __86__CONodeManager_fast_fold_nodeController_didReceiveElectionCmd_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 32) != a3)
  {
    v4 = *(a1 + 40);
    v5 = a3;
    v6 = [v4 electionInfo];
    [v5 updateElectionInfo:v6];
  }
}

- (void)nodeController:(id)controller didReceiveElectionCmd:(id)cmd withCompletionHandler:(id)handler
{
  v80 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  cmdCopy = cmd;
  handlerCopy = handler;
  if (![MEMORY[0x277CFD0B8] isFastFoldEnabled])
  {
    executionContext = [(CONodeManager *)self executionContext];
    [executionContext assertDispatchQueue];

    if (!self->_started)
    {
      goto LABEL_45;
    }

    v12 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      shortDescription = [(CONodeManager *)self shortDescription];
      *buf = 138543874;
      selfCopy3 = shortDescription;
      v72 = 2112;
      v73 = cmdCopy;
      v74 = 2048;
      v75 = controllerCopy;
      _os_log_debug_impl(&dword_244378000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ got a command %@ from node controller %p", buf, 0x20u);
    }

    ballotBrowser = [(CONodeManager *)self ballotBrowser];
    ballot = [cmdCopy ballot];
    [ballotBrowser discoveryUsingBallot:ballot];

    v66 = [[COElectionInfo alloc] initWithCommand:cmdCopy];
    electionInfo = [(CONodeManager *)self electionInfo];
    v16 = [electionInfo hasGreaterGenerationThan:v66];

    if (v16)
    {
      v17 = COCoreLogForCategory(15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription2 = [(CONodeManager *)self shortDescription];
        electionInfo2 = [(CONodeManager *)self electionInfo];
        generation = [electionInfo2 generation];
        generation2 = [(COElectionInfo *)v66 generation];
        *buf = 138543874;
        selfCopy3 = shortDescription2;
        v72 = 2048;
        v73 = generation;
        v74 = 2048;
        v75 = generation2;
        _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Our generation %llu is greater than the incoming generation %llu", buf, 0x20u);
      }

LABEL_9:

      electionInfo3 = [(CONodeManager *)self electionInfo];
      handlerCopy[2](handlerCopy, electionInfo3);
LABEL_44:

      goto LABEL_45;
    }

    electionInfo4 = [(CONodeManager *)self electionInfo];
    v24 = [electionInfo4 isEqual:v66];

    if (v24)
    {
      electionInfo3 = [(CONodeManager *)self electionInfo];
      handlerCopy[2](handlerCopy, electionInfo3);
      goto LABEL_44;
    }

    electionInfo5 = [(CONodeManager *)self electionInfo];
    v26 = [electionInfo5 hasSameGenerationAndLeader:v66];

    if (v26)
    {
      v17 = COCoreLogForCategory(15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription3 = [(CONodeManager *)self shortDescription];
        electionInfo6 = [(CONodeManager *)self electionInfo];
        leader = [electionInfo6 leader];
        electionInfo7 = [(CONodeManager *)self electionInfo];
        generation3 = [electionInfo7 generation];
        *buf = 138544130;
        selfCopy3 = shortDescription3;
        v72 = 2112;
        v73 = leader;
        v74 = 2048;
        v75 = generation3;
        v76 = 2112;
        v77 = controllerCopy;
        _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ The leader %@ and generation %llu for command  %@ on node has not changed", buf, 0x2Au);
      }

      goto LABEL_9;
    }

    electionInfo8 = [(CONodeManager *)self electionInfo];
    generation4 = [electionInfo8 generation];

    generation5 = [(COElectionInfo *)v66 generation];
    node = [controllerCopy node];
    electionInfo3 = [node remote];

    electionInfo9 = [(CONodeManager *)self electionInfo];
    ballot2 = [electionInfo9 ballot];
    candidates = [ballot2 candidates];
    v37 = [candidates containsObject:electionInfo3];

    if (v37)
    {
      v38 = 0;
      goto LABEL_31;
    }

    electionInfo10 = [(CONodeManager *)self electionInfo];
    ballot3 = [electionInfo10 ballot];
    v41 = [ballot3 mutableCopy];

    [v41 addCandidate:electionInfo3];
    ipDiscoveryRecord = [controllerCopy ipDiscoveryRecord];
    v43 = ipDiscoveryRecord;
    if (ipDiscoveryRecord && [ipDiscoveryRecord shouldAdvertise])
    {
      if (![v41 addDiscoveryRecord:v43])
      {
LABEL_26:
        v38 = [(CONodeManager *)self _updateBallot:v41];
        if (([MEMORY[0x277CFD0B8] isSlimBallotsEnabled] & 1) == 0)
        {
          v47 = COCoreLogForCategory(15);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            shortDescription4 = [(CONodeManager *)self shortDescription];
            *buf = 138543618;
            selfCopy3 = shortDescription4;
            v72 = 2114;
            v73 = electionInfo3;
            _os_log_impl(&dword_244378000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ adding candidate %{public}@ to our ballot", buf, 0x16u);
          }

          v38 = 1;
        }

LABEL_31:
        if (generation5 > generation4)
        {
          v49 = COCoreLogForCategory(15);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            shortDescription5 = [(CONodeManager *)self shortDescription];
            *buf = 138543874;
            selfCopy3 = shortDescription5;
            v72 = 2048;
            v73 = generation4;
            v74 = 2048;
            v75 = generation5;
            _os_log_impl(&dword_244378000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ upgrading election generation from %llu to %llu", buf, 0x20u);
          }

          electionInfo11 = [(CONodeManager *)self electionInfo];
          [electionInfo11 setGeneration:generation5];

          [(CONodeManager *)self _resetBallot];
          v38 = 1;
        }

        if (generation5 == generation4)
        {
          node2 = [controllerCopy node];
          if ([node2 isInElectionState])
          {
          }

          else
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              [(CONodeManager *)self _bumpGeneration];
              [(CONodeManager *)self _resetBallot];
              v54 = COCoreLogForCategory(15);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                shortDescription6 = [(CONodeManager *)self shortDescription];
                electionInfo12 = [(CONodeManager *)self electionInfo];
                generation6 = [electionInfo12 generation];
                *buf = 138543618;
                selfCopy3 = shortDescription6;
                v72 = 2048;
                v73 = generation6;
                _os_log_impl(&dword_244378000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting ELECTION %llu", buf, 0x16u);
              }

              electionInfo13 = [(CONodeManager *)self electionInfo];
              handlerCopy[2](handlerCopy, electionInfo13);

              goto LABEL_43;
            }
          }
        }

        electionInfo14 = [(CONodeManager *)self electionInfo];
        handlerCopy[2](handlerCopy, electionInfo14);

        if (!v38)
        {
          goto LABEL_44;
        }

LABEL_43:
        selfCopy = self;
        objc_sync_enter(selfCopy);
        nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
        v62 = [nodeControllers copy];

        objc_sync_exit(selfCopy);
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __76__CONodeManager_nodeController_didReceiveElectionCmd_withCompletionHandler___block_invoke;
        v67[3] = &unk_278E175B0;
        v68 = controllerCopy;
        v69 = selfCopy;
        [v62 enumerateKeysAndObjectsUsingBlock:v67];

        goto LABEL_44;
      }

      v44 = COCoreLogForCategory(11);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        discovery = [v41 discovery];
        *buf = 134218498;
        selfCopy3 = self;
        v72 = 2112;
        v73 = discovery;
        v74 = 2048;
        v75 = v41;
        _os_log_impl(&dword_244378000, v44, OS_LOG_TYPE_DEFAULT, "%p updated Discovery %@ in ballot %p when handling response", buf, 0x20u);
      }
    }

    else
    {
      v44 = COCoreLogForCategory(11);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134219010;
        selfCopy3 = self;
        v72 = 2112;
        v73 = v43;
        v74 = 2112;
        v75 = controllerCopy;
        v76 = 2048;
        v77 = v41;
        v78 = 2112;
        v79 = cmdCopy;
        _os_log_debug_impl(&dword_244378000, v44, OS_LOG_TYPE_DEBUG, "%p cannot add Discovery %@ for %@ to ballot %p when handling response %@", buf, 0x34u);
      }
    }

    goto LABEL_26;
  }

  [(CONodeManager *)self fast_fold_nodeController:controllerCopy didReceiveElectionCmd:cmdCopy withCompletionHandler:handlerCopy];
LABEL_45:

  v63 = *MEMORY[0x277D85DE8];
}

void __76__CONodeManager_nodeController_didReceiveElectionCmd_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 32) != a3)
  {
    v4 = *(a1 + 40);
    v5 = a3;
    v6 = [v4 electionInfo];
    [v5 updateElectionInfo:v6];
  }
}

- (void)nodeController:(id)controller didReceiveCommand:(id)command
{
  controllerCopy = controller;
  commandCopy = command;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  delegate = [(CONodeManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [COMeshNode alloc];
    node = [controllerCopy node];
    v12 = [(COMeshNode *)v10 initWithNode:node];

    [commandCopy _setSender:v12];
    [delegate node:v12 didReceiveCommand:commandCopy];
  }

  else
  {
    v13 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CONodeManager nodeController:didReceiveCommand:];
    }
  }
}

- (void)nodeController:(id)controller didReceiveRequest:(id)request callback:(id)callback
{
  controllerCopy = controller;
  requestCopy = request;
  callbackCopy = callback;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  delegate = [(CONodeManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [COMeshNode alloc];
    node = [controllerCopy node];
    v15 = [(COMeshNode *)v13 initWithNode:node];

    [requestCopy _setSender:v15];
    [delegate node:v15 didReceiveRequest:requestCopy responseCallBack:callbackCopy];
  }

  else
  {
    v16 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CONodeManager nodeController:didReceiveRequest:callback:];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
    callbackCopy[2](callbackCopy, 0, v15);
  }
}

- (void)nodeController:(id)controller didReceiveError:(id)error forCommand:(id)command
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  errorCopy = error;
  commandCopy = command;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  delegate = [(CONodeManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [COMeshNode alloc];
    node = [controllerCopy node];
    v15 = [(COMeshNode *)v13 initWithNode:node];

    [commandCopy _setSender:v15];
    [delegate node:v15 didReceiveError:errorCopy forCommand:commandCopy];
  }

  else
  {
    v16 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      shortDescription = [(CONodeManager *)self shortDescription];
      v19 = 138543874;
      v20 = shortDescription;
      v21 = 2112;
      v22 = commandCopy;
      v23 = 2112;
      v24 = errorCopy;
      _os_log_error_impl(&dword_244378000, v16, OS_LOG_TYPE_ERROR, "%{public}@ failed to send a command %@ with error %@", &v19, 0x20u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)nodeController:(id)controller didUpdateRemoteConstituent:(id)constituent to:(id)to
{
  v39 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  constituentCopy = constituent;
  toCopy = to;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if (self->_started)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
    [(CONodeManager *)self _handleEnqueuedCommandsForLostNode:controllerCopy error:v12];
    if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
    {
      electionInfo = [(CONodeManager *)self electionInfo];
      leader = [electionInfo leader];
    }

    else
    {
      leader = [(CONodeManager *)self leader];
    }

    if ([constituentCopy isEqual:leader])
    {
      executionContext2 = [(CONodeManager *)self executionContext];
      analyticsRecorder = [executionContext2 analyticsRecorder];

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __62__CONodeManager_nodeController_didUpdateRemoteConstituent_to___block_invoke;
      v30[3] = &unk_278E16770;
      v30[4] = self;
      (analyticsRecorder->super._discovery)(analyticsRecorder, 0x2857B5D68, v30);
      [(CONodeManager *)self _bumpGeneration];
      [(CONodeManager *)self _resetBallot];
    }

    else
    {
      isInElection = [(CONodeManager *)self isInElection];
      if (!leader || isInElection)
      {
        goto LABEL_9;
      }

      if (![MEMORY[0x277CFD0B8] isFastFoldEnabled])
      {
        analyticsRecorder = [(COBallot *)[COMutableBallot alloc] initWithCandidate:leader];
        [(COMutableBallot *)analyticsRecorder addCandidate:toCopy];
        candidates = [(COBallot *)analyticsRecorder candidates];
        firstObject = [candidates firstObject];

        if (([firstObject isEqual:leader] & 1) == 0)
        {
          v25 = COCoreLogForCategory(15);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            shortDescription = [(CONodeManager *)self shortDescription];
            *buf = 138544130;
            v32 = shortDescription;
            v33 = 2112;
            v34 = controllerCopy;
            v35 = 2112;
            v36 = toCopy;
            v37 = 2112;
            v38 = leader;
            _os_log_impl(&dword_244378000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ node controller changed %@ to a new constituent %@ that is better than our current leader %@", buf, 0x2Au);
          }

          [(CONodeManager *)self _bumpGeneration];
          [(CONodeManager *)self _resetBallot];
          [(CONodeManager *)self _informControllersAboutNewElectionInfo];
        }

        goto LABEL_8;
      }

      electionInfo2 = [(CONodeManager *)self electionInfo];
      ballot = [electionInfo2 ballot];
      if (ballot)
      {
        electionInfo3 = [(CONodeManager *)self electionInfo];
        [electionInfo3 ballot];
        v22 = v29 = electionInfo2;
        analyticsRecorder = [v22 mutableCopy];

        electionInfo2 = v29;
      }

      else
      {
        analyticsRecorder = objc_alloc_init(COMutableBallot);
      }

      [(COMutableBallot *)analyticsRecorder addCandidate:toCopy];
      if (![(CONodeManager *)self _updateBallot:analyticsRecorder])
      {
LABEL_8:

LABEL_9:
        goto LABEL_10;
      }

      v27 = COCoreLogForCategory(15);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription2 = [(CONodeManager *)self shortDescription];
        *buf = 138544130;
        v32 = shortDescription2;
        v33 = 2112;
        v34 = controllerCopy;
        v35 = 2112;
        v36 = toCopy;
        v37 = 2112;
        v38 = leader;
        _os_log_impl(&dword_244378000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ node controller changed %@ to a new constituent %@ that is better than our current leader %@", buf, 0x2Au);
      }
    }

    [(CONodeManager *)self _informControllersAboutNewElectionInfo];
    goto LABEL_8;
  }

LABEL_10:

  v17 = *MEMORY[0x277D85DE8];
}

id __62__CONodeManager_nodeController_didUpdateRemoteConstituent_to___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = 0x2857B5228;
  v6[1] = 0x2857B5DC8;
  v7[0] = 0x2857B5EE8;
  v1 = [*(a1 + 32) executionContext];
  v2 = [v1 label];
  v7[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)nodeController:(id)controller didAddTransport:(id)transport
{
  v30 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  transportCopy = transport;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if (self->_started)
  {
    supportsLeaderElection = [transportCopy supportsLeaderElection];
    v10 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(CONodeManager *)self shortDescription];
      v12 = @"does not support";
      *v25 = 138544130;
      *&v25[12] = 2048;
      *&v25[4] = shortDescription;
      if (supportsLeaderElection)
      {
        v12 = @"supports";
      }

      *&v25[14] = controllerCopy;
      v26 = 2112;
      v27 = transportCopy;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Node %p added a transport %@ that %@ election", v25, 0x2Au);
    }

    if (supportsLeaderElection)
    {
      node = [controllerCopy node];
      state = [node state];

      if (state)
      {
        isFastFoldEnabled = [MEMORY[0x277CFD0B8] isFastFoldEnabled];
        electionInfo = [(CONodeManager *)self electionInfo];
        v17 = electionInfo;
        if (isFastFoldEnabled)
        {

          if (!v17)
          {
            [(CONodeManager *)self _resetBallot];
          }

          [(CONodeManager *)self _informControllersAboutNewElectionInfo];
        }

        else
        {
          ballot = [electionInfo ballot];

          node2 = [controllerCopy node];
          remote = [node2 remote];

          candidates = [ballot candidates];
          v23 = [candidates containsObject:remote];

          if ((v23 & 1) == 0)
          {
            [(CONodeManager *)self _bumpGeneration];
            [(CONodeManager *)self _resetBallot];
            [(CONodeManager *)self _informControllersAboutNewElectionInfo];
          }
        }
      }

      else
      {
        electionInfo2 = [(CONodeManager *)self electionInfo];
        [controllerCopy updateElectionInfo:electionInfo2];
      }
    }

    else
    {
      [controllerCopy inquireForTransport:transportCopy];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)nodeController:(id)controller didRemoveTransport:(id)transport withError:(id)error
{
  v63 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  transportCopy = transport;
  errorCopy = error;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  v12 = COCoreLogForCategory(15);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CONodeManager *)self shortDescription];
    transports = [controllerCopy transports];
    *buf = 138544130;
    v56 = shortDescription;
    v57 = 2048;
    v58 = transportCopy;
    v59 = 2048;
    v60 = controllerCopy;
    v61 = 2114;
    v62 = transports;
    _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Lost transport %p for node %p. Remaining transports = %{public}@", buf, 0x2Au);
  }

  transports2 = [controllerCopy transports];
  v16 = [transports2 count];

  if (v16)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    transports3 = [controllerCopy transports];
    v18 = [transports3 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v51;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v51 != v21)
          {
            objc_enumerationMutation(transports3);
          }

          v20 |= [*(*(&v50 + 1) + 8 * i) supportsLeaderElection];
        }

        v19 = [transports3 countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v19);
    }

    else
    {
      LOBYTE(v20) = 0;
    }

    node = [controllerCopy node];
    remote = [node remote];

    electionInfo = [(CONodeManager *)self electionInfo];
    ballot = [electionInfo ballot];

    candidates = [ballot candidates];
    v37 = [candidates containsObject:remote];

    if (v37 && (v20 & 1) == 0)
    {
      v49 = errorCopy;
      if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
      {
        electionInfo2 = [(CONodeManager *)self electionInfo];
        leader = [electionInfo2 leader];
      }

      else
      {
        leader = [(CONodeManager *)self leader];
      }

      node2 = [controllerCopy node];
      remote2 = [node2 remote];

      if (remote2)
      {
        v48 = transportCopy;
        v42 = [remote2 isEqual:leader];
        electionInfo3 = [(CONodeManager *)self electionInfo];
        ballot2 = [electionInfo3 ballot];
        v45 = [ballot2 mutableCopy];

        [v45 removeCandidate:remote2];
        [(CONodeManager *)self _updateBallot:v45];
        if (v42)
        {
          [(CONodeManager *)self _bumpGeneration];
          [(CONodeManager *)self _resetBallot];
          [(CONodeManager *)self _informControllersAboutNewElectionInfo];
        }

        else
        {
          electionInfo4 = [(CONodeManager *)self electionInfo];
          [(CONodeManager *)self _checkForElectionCompletion:electionInfo4 nodeController:controllerCopy];
        }

        transportCopy = v48;
      }

      errorCopy = v49;
    }
  }

  else
  {
    v23 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription2 = [(CONodeManager *)self shortDescription];
      *buf = 138543618;
      v56 = shortDescription2;
      v57 = 2048;
      v58 = controllerCopy;
      _os_log_impl(&dword_244378000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping node %p since we don't have any more transports available", buf, 0x16u);
    }

    domain = [errorCopy domain];
    v26 = [domain isEqualToString:0x2857B6328];

    if (v26)
    {
      if ([errorCopy code] == -5001)
      {
        v27 = 18;
      }

      else
      {
        v27 = 20;
      }

      if ([errorCopy code] == -5003)
      {
        underlyingErrors = [errorCopy underlyingErrors];
        firstObject = [underlyingErrors firstObject];

        domain2 = [firstObject domain];
        if ([domain2 isEqualToString:0x2857B5628])
        {
          code = [firstObject code];

          if (code == -6001)
          {
            v27 = 19;
          }
        }

        else
        {
        }
      }
    }

    else
    {
      v27 = 20;
    }

    [controllerCopy invalidateWithReason:v27];
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (void)nodeController:(id)controller didReceiveOnDemandNodeCreationRequest:(id)request
{
  requestCopy = request;
  ballotBrowser = [(CONodeManager *)self ballotBrowser];
  [ballotBrowser discoveryUsingOnDemandNodeCreationRequest:requestCopy];
}

- (void)backedOffNodeMovedOutOfElection:(id)election
{
  electionCopy = election;
  node = [electionCopy node];
  totalBackedOffTime = [node totalBackedOffTime];
  longestBackOff = [(CONodeManager *)self longestBackOff];

  if (totalBackedOffTime > longestBackOff)
  {
    node2 = [electionCopy node];
    -[CONodeManager setLongestBackOff:](self, "setLongestBackOff:", [node2 totalBackedOffTime]);

    node3 = [electionCopy node];
    remote = [node3 remote];
    [(CONodeManager *)self setLongestBackedOffConstituent:remote];
  }
}

- (void)_bumpGeneration
{
  v18 = *MEMORY[0x277D85DE8];
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  electionInfo = [(CONodeManager *)self electionInfo];
  v5 = [electionInfo generation] + 1;

  electionInfo2 = [(CONodeManager *)self electionInfo];
  [electionInfo2 setGeneration:v5];

  v7 = COCoreLogForCategory(15);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CONodeManager *)self shortDescription];
    electionInfo3 = [(CONodeManager *)self electionInfo];
    leader = [electionInfo3 leader];
    v12 = 138543874;
    v13 = shortDescription;
    v14 = 2048;
    v15 = v5;
    v16 = 2114;
    v17 = leader;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ bumping generation to %llu. Current leader = %{public}@", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_resetBallot
{
  v19 = *MEMORY[0x277D85DE8];
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  executionContext2 = [(CONodeManager *)self executionContext];
  constituentForMe = [executionContext2 constituentForMe];

  v6 = [[COBallot alloc] initWithCandidate:constituentForMe];
  electionInfo = [(CONodeManager *)self electionInfo];
  [electionInfo setBallot:v6];

  v8 = COCoreLogForCategory(15);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CONodeManager *)self shortDescription];
    electionInfo2 = [(CONodeManager *)self electionInfo];
    v13 = 138543874;
    v14 = shortDescription;
    v15 = 2114;
    v16 = constituentForMe;
    v17 = 2048;
    generation = [electionInfo2 generation];
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ resetting ballot. Current leader = %{public}@. Current generation = %llu", &v13, 0x20u);
  }

  ballotBrowser = [(CONodeManager *)self ballotBrowser];
  [ballotBrowser clearRecords];

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateBallot:(id)ballot
{
  v29 = *MEMORY[0x277D85DE8];
  ballotCopy = ballot;
  if ([MEMORY[0x277CFD0B8] isSlimBallotsEnabled])
  {
    candidates = [ballotCopy candidates];
    v6 = [candidates count];

    if (!v6)
    {
      nodeForMe = [(CONodeManager *)self nodeForMe];
      underlyingNode = [nodeForMe underlyingNode];
      meConstituent = [underlyingNode meConstituent];
      [ballotCopy addCandidate:meConstituent];
    }
  }

  electionInfo = [(CONodeManager *)self electionInfo];
  leader = [electionInfo leader];

  electionInfo2 = [(CONodeManager *)self electionInfo];
  [electionInfo2 setBallot:ballotCopy];

  electionInfo3 = [(CONodeManager *)self electionInfo];
  leader2 = [electionInfo3 leader];

  v15 = [leader isEqual:leader2];
  if ((v15 & 1) == 0)
  {
    v16 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(CONodeManager *)self shortDescription];
      electionInfo4 = [(CONodeManager *)self electionInfo];
      v21 = 138544130;
      v22 = shortDescription;
      v23 = 2114;
      v24 = leader;
      v25 = 2114;
      v26 = leader2;
      v27 = 2048;
      generation = [electionInfo4 generation];
      _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Changing leader from %{public}@ to %{public}@. Current generation = %llu", &v21, 0x2Au);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v15 ^ 1;
}

- (void)_handleEnqueuedCommandsForLostNode:(id)node error:(id)error
{
  errorCopy = error;
  nodeCopy = node;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
  {
    electionInfo = [(CONodeManager *)self electionInfo];
    leader = [electionInfo leader];
  }

  else
  {
    leader = [(CONodeManager *)self leader];
  }

  node = [nodeCopy node];
  remote = [node remote];
  v13 = [leader isEqual:remote];

  sentElements = [nodeCopy sentElements];
  v15 = [sentElements copy];

  sentElements2 = [nodeCopy sentElements];

  [sentElements2 removeAllObjects];
  if (v13)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__CONodeManager__handleEnqueuedCommandsForLostNode_error___block_invoke_2;
    v21[3] = &unk_278E17600;
    v22 = errorCopy;
    v18 = dictionary;
    v23 = v18;
    v19 = errorCopy;
    [v15 enumerateKeysAndObjectsUsingBlock:v21];
    v20 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CONodeManager _handleEnqueuedCommandsForLostNode:error:];
    }

    [(CONodeManager *)self setLeaderCommands:v18];
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__CONodeManager__handleEnqueuedCommandsForLostNode_error___block_invoke;
    v24[3] = &unk_278E175D8;
    v25 = errorCopy;
    v18 = errorCopy;
    [v15 enumerateKeysAndObjectsUsingBlock:v24];
    v19 = v25;
  }
}

void __58__CONodeManager__handleEnqueuedCommandsForLostNode_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    (*(v5 + 2))(v5, v8, 0, *(a1 + 32));
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = MEMORY[0x245D5FF10](v5);
    [v6 setObject:v7 forKey:v8];
  }
}

- (void)_reportLostLeader:(id)leader withReason:(int64_t)reason
{
  leaderCopy = leader;
  executionContext = [(CONodeManager *)self executionContext];
  leaderElectionConfigured = [executionContext leaderElectionConfigured];

  if (leaderElectionConfigured)
  {
    executionContext2 = [(CONodeManager *)self executionContext];
    label = [executionContext2 label];

    v11 = reason - 6;
    if (reason - 6) <= 0xE && ((0x7D67u >> v11))
    {
      v12 = *off_278E17710[v11];
    }

    else
    {
      v12 = 0;
    }

    executionContext3 = [(CONodeManager *)self executionContext];
    analyticsRecorder = [executionContext3 analyticsRecorder];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __46__CONodeManager__reportLostLeader_withReason___block_invoke;
    v18[3] = &unk_278E17628;
    v19 = v12;
    v20 = label;
    v21 = leaderCopy;
    v15 = analyticsRecorder[2];
    v16 = label;
    v17 = v12;
    v15(analyticsRecorder, 0x2857B5D68, v18);
  }
}

id __46__CONodeManager__reportLostLeader_withReason___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:*(a1 + 32) forKey:0x2857B5228];
  [v2 setObject:*(a1 + 40) forKey:0x2857B5DC8];
  if ([*(a1 + 32) isEqualToString:0x2857B5E88])
  {
    v3 = [*(a1 + 48) rapportTransport];
    v4 = v3;
    if (v3)
    {
      v5 = MEMORY[0x277CCABB0];
      [v3 currentPingTimeout];
      v6 = [v5 numberWithDouble:?];
      [v2 setObject:v6 forKey:0x2857B5E88];
    }
  }

  return v2;
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
    [(CONodeManager *)self setElectionElapsedTimer:0];
    [(CONodeManager *)self setElectionPrevious:self->_electionStart];
    self->_electionStart = start;
  }
}

- (void)setElectionEnd:(unint64_t)end
{
  v50 = *MEMORY[0x277D85DE8];
  if (self->_electionEnd != end)
  {
    electionPrevious = [(CONodeManager *)self electionPrevious];
    if (electionPrevious)
    {
      electionStart = [(CONodeManager *)self electionStart];
      v5 = [(CONodeManager *)self activeNodesWithSelfNode:1];
      if (self->_electionEnd)
      {
        v6 = (electionStart - electionPrevious) / 1000000000.0;
      }

      else
      {
        v6 = 0.0;
      }

      executionContext = [(CONodeManager *)self executionContext];
      label = [executionContext label];

      v28 = [v5 count];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v8 = v5;
      totalBackedOffTime = 0;
      v10 = 0;
      v11 = 0;
      v12 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v12)
      {
        v13 = *v46;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v46 != v13)
            {
              objc_enumerationMutation(v8);
            }

            underlyingNode = [*(*(&v45 + 1) + 8 * i) underlyingNode];
            if ([underlyingNode connectionType] == 2)
            {
              ++v11;
              if ([underlyingNode discoveryType] == 2)
              {
                ++v10;
              }
            }

            if ([underlyingNode totalBackedOffTime] > totalBackedOffTime)
            {
              totalBackedOffTime = [underlyingNode totalBackedOffTime];
            }
          }

          v12 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v12);
      }

      executionContext2 = [(CONodeManager *)self executionContext];
      analyticsRecorder = [executionContext2 analyticsRecorder];

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __32__CONodeManager_setElectionEnd___block_invoke;
      v36[3] = &unk_278E17650;
      v39 = (end - electionStart) / 1000000.0;
      v40 = v28;
      v41 = v11;
      v42 = v10;
      v43 = v6;
      v18 = label;
      v44 = totalBackedOffTime;
      v37 = v18;
      selfCopy = self;
      (analyticsRecorder)[2](analyticsRecorder, 0x2857B5D48, v36);
      self->_electionEnd = end;
      electionElapsedTimer = [(CONodeManager *)self electionElapsedTimer];
      v20 = electionElapsedTimer == 0;

      if (v20)
      {
        executionContext3 = [(CONodeManager *)self executionContext];
        dispatchQueue = [executionContext3 dispatchQueue];

        v23 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, dispatchQueue);
        if (v23)
        {
          v24 = dispatch_walltime(0, 86400000000000);
          dispatch_source_set_timer(v23, v24, 0x4E94914F0000uLL, 0);
          objc_initWeak(&location, self);
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = __32__CONodeManager_setElectionEnd___block_invoke_2;
          handler[3] = &unk_278E17678;
          objc_copyWeak(v34, &location);
          v34[1] = electionPrevious;
          v34[2] = electionStart;
          v33 = analyticsRecorder;
          v34[3] = v28;
          v34[4] = v11;
          v34[5] = v10;
          v32 = v18;
          dispatch_source_set_event_handler(v23, handler);
          [(CONodeManager *)self setElectionElapsedTimer:v23];

          objc_destroyWeak(v34);
          objc_destroyWeak(&location);
        }
      }
    }
  }

  longestBackedOffConstituent = self->_longestBackedOffConstituent;
  self->_longestBackOff = 0;
  self->_longestBackedOffConstituent = 0;

  v26 = *MEMORY[0x277D85DE8];
}

id __32__CONodeManager_setElectionEnd___block_invoke(uint64_t a1)
{
  v16[7] = *MEMORY[0x277D85DE8];
  v15[0] = 0x2857B5E08;
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v16[0] = v2;
  v15[1] = 0x2857B5E28;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56)];
  v16[1] = v3;
  v15[2] = 0x2857B5E48;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
  v16[2] = v4;
  v15[3] = 0x2857B5E68;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 72)];
  v16[3] = v5;
  v15[4] = 0x2857B5DE8;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 80)];
  v7 = *(a1 + 32);
  v16[4] = v6;
  v16[5] = v7;
  v15[5] = 0x2857B5DC8;
  v15[6] = 0x2857B6048;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 88)];
  v16[6] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:7];
  v10 = [v9 mutableCopy];

  v11 = *(a1 + 40);
  if (v11[12])
  {
    v12 = [v11 _constituentCharacteristics:?];
    [v10 setObject:v12 forKey:0x2857B6068];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

void __32__CONodeManager_setElectionEnd___block_invoke_2(uint64_t a1)
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
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __32__CONodeManager_setElectionEnd___block_invoke_3;
        v7[3] = &unk_278E16388;
        v10 = *(a1 + 72);
        v11 = *(a1 + 88);
        v6 = *(a1 + 40);
        v8 = *(a1 + 32);
        v9 = v3;
        (*(v6 + 16))(v6, 0x2857B5D48, v7);
      }
    }
  }
}

id __32__CONodeManager_setElectionEnd___block_invoke_3(void *a1)
{
  v14[7] = *MEMORY[0x277D85DE8];
  v14[0] = &unk_2857C8880;
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
  v14[4] = &unk_2857C8938;
  v13[4] = 0x2857B5DE8;
  v13[5] = 0x2857B5DC8;
  v5 = a1[5];
  v14[5] = a1[4];
  v13[6] = 0x2857B6048;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v5 + 88)];
  v14[6] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:7];
  v8 = [v7 mutableCopy];

  v9 = a1[5];
  if (v9[12])
  {
    v10 = [v9 _constituentCharacteristics:?];
    [v8 setObject:v10 forKey:0x2857B6068];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
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

- (void)_informControllersAboutNewElectionInfo
{
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
  v6 = [nodeControllers copy];

  objc_sync_exit(selfCopy);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__CONodeManager__informControllersAboutNewElectionInfo__block_invoke;
  v7[3] = &unk_278E176A0;
  v7[4] = selfCopy;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
}

void __55__CONodeManager__informControllersAboutNewElectionInfo__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 electionInfo];
  [v4 updateElectionInfo:v5];
}

- (void)_handleDiscoveryRecord:(id)record
{
  v40 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  iDSIdentifier = [recordCopy IDSIdentifier];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__13;
  v32 = __Block_byref_object_dispose__13;
  v33 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
  v9 = [nodeControllers objectForKey:iDSIdentifier];
  v10 = v29[5];
  v29[5] = v9;

  objc_sync_exit(selfCopy);
  v11 = v29[5];
  if (v11)
  {
    [v11 addDiscoveryRecord:recordCopy];
  }

  else
  {
    v12 = [CONodeController alloc];
    executionContext2 = [(CONodeManager *)selfCopy executionContext];
    v14 = [(CONodeController *)v12 initWithDiscoveryRecord:recordCopy executionContext:executionContext2];
    v15 = v29[5];
    v29[5] = v14;

    v16 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(CONodeManager *)selfCopy shortDescription];
      v18 = v29[5];
      *buf = 138543874;
      v35 = shortDescription;
      v36 = 2048;
      v37 = v18;
      v38 = 2114;
      v39 = recordCopy;
      _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ created NodeController %p with record %{public}@", buf, 0x20u);
    }

    [v29[5] setDelegate:selfCopy];
    [v29[5] setAcceptableCommands:selfCopy->_acceptableCommands];
    v19 = selfCopy;
    objc_sync_enter(v19);
    nodeControllers2 = [(CONodeManager *)v19 nodeControllers];
    [nodeControllers2 setObject:v29[5] forKey:iDSIdentifier];

    objc_sync_exit(v19);
    objc_initWeak(buf, v19);
    v21 = v29[5];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __40__CONodeManager__handleDiscoveryRecord___block_invoke;
    v23[3] = &unk_278E176C8;
    objc_copyWeak(&v27, buf);
    v24 = recordCopy;
    v25 = iDSIdentifier;
    v26 = &v28;
    [v21 activateWithCompletionHandler:v23];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v28, 8);

  v22 = *MEMORY[0x277D85DE8];
}

void __40__CONodeManager__handleDiscoveryRecord___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = COCoreLogForCategory(15);
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __40__CONodeManager__handleDiscoveryRecord___block_invoke_cold_1(WeakRetained, a1);
      }

      v6 = WeakRetained;
      objc_sync_enter(v6);
      v7 = [v6 nodeControllers];
      [v7 removeObjectForKey:*(a1 + 40)];

      objc_sync_exit(v6);
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [WeakRetained shortDescription];
      v9 = *(*(*(a1 + 48) + 8) + 40);
      v11 = 138543618;
      v12 = v8;
      v13 = 2048;
      v14 = v9;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully activated NodeController %p", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleLostRecord:(id)record
{
  recordCopy = record;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  iDSIdentifier = [recordCopy IDSIdentifier];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
  v8 = [nodeControllers objectForKey:iDSIdentifier];

  objc_sync_exit(selfCopy);
  if (v8)
  {
    [v8 removeDiscoveryRecord:recordCopy];
  }
}

- (void)_nodeStopped:(id)stopped withReason:(int64_t)reason
{
  v20 = *MEMORY[0x277D85DE8];
  stoppedCopy = stopped;
  node = [stoppedCopy node];
  iDSIdentifier = [node IDSIdentifier];

  v9 = COCoreLogForCategory(15);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CONodeManager *)self shortDescription];
    v14 = 138543874;
    v15 = shortDescription;
    v16 = 2048;
    v17 = stoppedCopy;
    v18 = 2112;
    v19 = iDSIdentifier;
    _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ removing %p [IDS: %@] from our list", &v14, 0x20u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
  [nodeControllers removeObjectForKey:iDSIdentifier];

  objc_sync_exit(selfCopy);
  [(CONodeManager *)selfCopy _nodeBecameInactive:stoppedCopy withReason:reason];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_nodeBecameInactive:(id)inactive withReason:(int64_t)reason
{
  v25 = *MEMORY[0x277D85DE8];
  inactiveCopy = inactive;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  node = [inactiveCopy node];
  remote = [node remote];

  if (remote)
  {
    executionContext2 = [(CONodeManager *)self executionContext];
    leaderElectionConfigured = [executionContext2 leaderElectionConfigured];

    if (leaderElectionConfigured)
    {
      if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
      {
        electionInfo = [(CONodeManager *)self electionInfo];
        leader = [electionInfo leader];
      }

      else
      {
        leader = [(CONodeManager *)self leader];
      }

      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2857B5A08 code:-4101 userInfo:0];
      [(CONodeManager *)self _handleEnqueuedCommandsForLostNode:inactiveCopy error:v14];

      if ([remote isEqual:leader])
      {
        v15 = COCoreLogForCategory(15);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          shortDescription = [(CONodeManager *)self shortDescription];
          v23 = 138543362;
          v24 = shortDescription;
          _os_log_impl(&dword_244378000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ leader lost", &v23, 0xCu);
        }

        [(CONodeManager *)self _bumpGeneration];
        [(CONodeManager *)self _resetBallot];
        [(CONodeManager *)self _informControllersAboutNewElectionInfo];
        [(CONodeManager *)self _reportLostLeader:inactiveCopy withReason:reason];
      }

      else
      {
        electionInfo2 = [(CONodeManager *)self electionInfo];
        ballot = [electionInfo2 ballot];
        v19 = [ballot mutableCopy];

        node2 = [inactiveCopy node];
        remote2 = [node2 remote];
        [v19 removeCandidate:remote2];

        [(CONodeManager *)self _updateBallot:v19];
      }
    }

    [inactiveCopy markInactive];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_informDelegateAboutNodeAddition:(id)addition oldState:(int64_t)state
{
  additionCopy = addition;
  v7 = additionCopy;
  if (state <= 2)
  {
    v12 = additionCopy;
    additionCopy = [additionCopy isLocalNodeController];
    v7 = v12;
    if ((additionCopy & 1) == 0)
    {
      delegate = [(CONodeManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v9 = [COMeshNode alloc];
        node = [v12 node];
        v11 = [(COMeshNode *)v9 initWithNode:node];

        [delegate didAddNode:v11];
      }

      v7 = v12;
    }
  }

  MEMORY[0x2821F96F8](additionCopy, v7);
}

- (void)_informDelegateAboutNodeRemoval:(id)removal oldState:(int64_t)state
{
  removalCopy = removal;
  if ((state - 5) <= 1)
  {
    v11 = removalCopy;
    delegate = [(CONodeManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [COMeshNode alloc];
      node = [v11 node];
      v10 = [(COMeshNode *)v8 initWithNode:node];

      [delegate didRemoveNode:v10];
    }

    removalCopy = v11;
  }
}

- (void)_nodeStartedElection:(id)election withElectionInfo:(id)info
{
  v24 = *MEMORY[0x277D85DE8];
  electionCopy = election;
  infoCopy = info;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
  {
    v9 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(CONodeManager *)self shortDescription];
      v20 = 138543618;
      v21 = shortDescription;
      v22 = 2112;
      v23 = electionCopy;
      _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ node started election %@", &v20, 0x16u);
    }
  }

  else if ([MEMORY[0x277CFD0B8] isSlimBallotsEnabled])
  {
    executionContext2 = [(CONodeManager *)self executionContext];
    constituentForMe = [executionContext2 constituentForMe];

    node = [electionCopy node];
    meConstituent = [node meConstituent];
    if ([constituentForMe isEqual:meConstituent] && objc_msgSend(infoCopy, "generation") == 1)
    {
    }

    else
    {
      electionInfo = [(CONodeManager *)self electionInfo];
      v16 = [infoCopy isEqual:electionInfo];

      if (v16)
      {
        goto LABEL_15;
      }
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CONodeManager *)selfCopy setLeader:0];
  objc_sync_exit(selfCopy);

  if (![(CONodeManager *)selfCopy isInElection])
  {
    [(CONodeManager *)selfCopy setElectionStart:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW)];
    [(CONodeManager *)selfCopy setIsInElection:1];
  }

  delegate = [(CONodeManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didStartElection];
  }

LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_checkForElectionCompletion:(id)completion nodeController:(id)controller
{
  v42 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  controllerCopy = controller;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if ([(CONodeManager *)self isInElection])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
    v11 = [nodeControllers copy];

    objc_sync_exit(selfCopy);
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 1;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __60__CONodeManager__checkForElectionCompletion_nodeController___block_invoke;
    v33[3] = &unk_278E17560;
    v34 = completionCopy;
    v35 = &v36;
    [v11 enumerateKeysAndObjectsUsingBlock:v33];
    if (*(v37 + 24) == 1)
    {
      v12 = COCoreLogForCategory(15);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription = [(CONodeManager *)selfCopy shortDescription];
        *buf = 138543362;
        v41 = shortDescription;
        _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ all nodes have finished election. Moving to state processing", buf, 0xCu);
      }

      [(CONodeManager *)selfCopy _logElectionSummary];
      [(CONodeManager *)selfCopy setIsInElection:0];
      [(CONodeManager *)selfCopy setElectionEnd:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW)];
      v14 = selfCopy;
      objc_sync_enter(v14);
      electionInfo = [(CONodeManager *)v14 electionInfo];
      ballot = [electionInfo ballot];
      candidates = [ballot candidates];
      firstObject = [candidates firstObject];

      [(CONodeManager *)v14 setLeader:firstObject];
      objc_sync_exit(v14);

      delegate = [(CONodeManager *)v14 delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate didCompleteElection];
      }

      electionInfo2 = [(CONodeManager *)v14 electionInfo];
      ballot2 = [electionInfo2 ballot];
      candidates2 = [ballot2 candidates];
      firstObject2 = [candidates2 firstObject];

      v24 = [(CONodeManager *)v14 nodeControllerForConstituent:firstObject2];
      leaderCommands = [(CONodeManager *)v14 leaderCommands];
      v26 = [leaderCommands mutableCopy];

      leaderCommands2 = [(CONodeManager *)v14 leaderCommands];
      [leaderCommands2 removeAllObjects];

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __60__CONodeManager__checkForElectionCompletion_nodeController___block_invoke_66;
      v31[3] = &unk_278E175D8;
      v28 = v24;
      v32 = v28;
      [v26 enumerateKeysAndObjectsUsingBlock:v31];
    }

    _Block_object_dispose(&v36, 8);
  }

  else if ([controllerCopy isLocalNodeController])
  {
    delegate2 = [(CONodeManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate2 didCompleteElection];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __60__CONodeManager__checkForElectionCompletion_nodeController___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v6 = [v11 node];
  if (![v6 isActive])
  {
    goto LABEL_7;
  }

  v7 = [v11 supportsLeaderElection];

  if (!v7)
  {
    goto LABEL_10;
  }

  v6 = [v11 node];
  if ([v6 state] != 14)
  {

    goto LABEL_9;
  }

  if (!*(a1 + 32))
  {
LABEL_7:

    goto LABEL_10;
  }

  v8 = [v11 node];
  v9 = [v8 lastElectionInfoSent];
  v10 = [v9 hasSameGenerationAndLeader:*(a1 + 32)];

  if ((v10 & 1) == 0)
  {
LABEL_9:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

LABEL_10:
}

- (id)_constituentCharacteristics:(id)characteristics
{
  v3 = MEMORY[0x277CCACA8];
  characteristicsCopy = characteristics;
  device = [characteristicsCopy device];
  flags = [characteristicsCopy flags];

  return [v3 stringWithFormat:@"%d, %llu", device, flags];
}

- (void)_logElectionSummary
{
  v45 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  string2 = [MEMORY[0x277CCAB68] string];
  string3 = [MEMORY[0x277CCAB68] string];
  executionContext = [(CONodeManager *)self executionContext];
  meshName = [executionContext meshName];

  electionInfo = [(CONodeManager *)self electionInfo];
  generation = [electionInfo generation];

  electionInfo2 = [(CONodeManager *)self electionInfo];
  ballot = [electionInfo2 ballot];
  candidates = [ballot candidates];
  firstObject = [candidates firstObject];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
  v15 = [nodeControllers copy];

  objc_sync_exit(selfCopy);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __36__CONodeManager__logElectionSummary__block_invoke;
  v33[3] = &unk_278E176F0;
  v16 = string3;
  v34 = v16;
  v17 = string2;
  v35 = v17;
  v18 = string;
  v36 = v18;
  [v15 enumerateKeysAndObjectsUsingBlock:v33];
  v19 = COCoreLogForCategory(8);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    executionContext2 = [(CONodeManager *)selfCopy executionContext];
    meshControllerDescription = [executionContext2 meshControllerDescription];
    *buf = 138413058;
    v38 = meshControllerDescription;
    v39 = 2114;
    v40 = meshName;
    v41 = 2048;
    v42 = generation;
    v43 = 2114;
    v44 = firstObject;
    _os_log_impl(&dword_244378000, v19, OS_LOG_TYPE_DEFAULT, "[m:%@] %{public}@ : Completed Election(%llu). Leader is %{public}@", buf, 0x2Au);
  }

  v22 = COCoreLogForCategory(8);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    executionContext3 = [(CONodeManager *)selfCopy executionContext];
    meshControllerDescription2 = [executionContext3 meshControllerDescription];
    *buf = 138413058;
    v38 = meshControllerDescription2;
    v39 = 2114;
    v40 = meshName;
    v41 = 2048;
    v42 = generation;
    v43 = 2114;
    v44 = v18;
    _os_log_impl(&dword_244378000, v22, OS_LOG_TYPE_DEFAULT, "[m:%@] %{public}@ : Candidate summary for Election(%llu)\n%{public}@", buf, 0x2Au);
  }

  v25 = COCoreLogForCategory(8);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    executionContext4 = [(CONodeManager *)selfCopy executionContext];
    meshControllerDescription3 = [executionContext4 meshControllerDescription];
    *buf = 138413058;
    v38 = meshControllerDescription3;
    v39 = 2114;
    v40 = meshName;
    v41 = 2048;
    v42 = generation;
    v43 = 2114;
    v44 = v16;
    _os_log_impl(&dword_244378000, v25, OS_LOG_TYPE_DEFAULT, "[m:%@] %{public}@ : Dormant trackers summary for Election(%llu)\n%{public}@", buf, 0x2Au);
  }

  v28 = COCoreLogForCategory(8);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    executionContext5 = [(CONodeManager *)selfCopy executionContext];
    meshControllerDescription4 = [executionContext5 meshControllerDescription];
    *buf = 138413058;
    v38 = meshControllerDescription4;
    v39 = 2114;
    v40 = meshName;
    v41 = 2048;
    v42 = generation;
    v43 = 2114;
    v44 = v17;
    _os_log_impl(&dword_244378000, v28, OS_LOG_TYPE_DEFAULT, "[m:%@] %{public}@ : Discovered trackers summary for Election(%llu)\n%{public}@", buf, 0x2Au);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __36__CONodeManager__logElectionSummary__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v4 = [v13 node];
  v5 = [v4 state];

  if (v5)
  {
    v6 = [v13 node];
    v7 = [v6 state];

    if (v7 == 2)
    {
      v8 = 32;
    }

    else
    {
      v9 = [v13 node];
      v10 = [v9 state];

      v8 = 48;
      if (v10 == 1)
      {
        v8 = 40;
      }
    }

    v11 = *(a1 + v8);
    v12 = [v13 electionSummaryDetails];
    [v11 appendFormat:@"%@\n", v12];
  }
}

- (CONodeManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __22__CONodeManager_start__block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_9();
  v11 = *MEMORY[0x277D85DE8];
  v2 = [v1 shortDescription];
  v10 = *(v0 + 32);
  OUTLINED_FUNCTION_0_7(&dword_244378000, v3, v4, "%{public}@ failed to start browser %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)nodeController:didReceiveCommand:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 shortDescription];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_7(&dword_244378000, v2, v3, "%{public}@ received a command %@ but has no delegate to deliver to", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)nodeController:didReceiveRequest:callback:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 shortDescription];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_7(&dword_244378000, v2, v3, "%{public}@ received a request %@ but has no delegate to deliver to", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleEnqueuedCommandsForLostNode:error:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v1 shortDescription];
  [v0 count];
  OUTLINED_FUNCTION_0_7(&dword_244378000, v3, v4, "%{public}@ lost leader. Re-queuing %lu elements", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

void __40__CONodeManager__handleDiscoveryRecord___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a1 shortDescription];
  v11 = *(a2 + 32);
  OUTLINED_FUNCTION_0_7(&dword_244378000, v4, v5, "%{public}@ failed to create a NodeController using Record %{public}@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

@end