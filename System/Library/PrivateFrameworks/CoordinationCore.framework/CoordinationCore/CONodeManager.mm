@interface CONodeManager
- (BOOL)_updateBallot:(id)a3;
- (COConstituent)leader;
- (COConstituent)me;
- (COMeshNode)nodeForMe;
- (CONodeManager)initWithExecutionContext:(id)a3;
- (CONodeManagerDelegate)delegate;
- (NSString)description;
- (id)_constituentCharacteristics:(id)a3;
- (id)activeNodesWithSelfNode:(BOOL)a3;
- (id)nodeControllerForConstituent:(id)a3;
- (id)nodeControllerForIDS:(id)a3;
- (id)shortDescription;
- (void)_bumpGeneration;
- (void)_checkForElectionCompletion:(id)a3 nodeController:(id)a4;
- (void)_didDiscoverRecord:(id)a3;
- (void)_didLoseRecord:(id)a3;
- (void)_handleDiscoveryRecord:(id)a3;
- (void)_handleEnqueuedCommandsForLostNode:(id)a3 error:(id)a4;
- (void)_handleLostRecord:(id)a3;
- (void)_informControllersAboutNewElectionInfo;
- (void)_informDelegateAboutNodeAddition:(id)a3 oldState:(int64_t)a4;
- (void)_informDelegateAboutNodeRemoval:(id)a3 oldState:(int64_t)a4;
- (void)_logElectionSummary;
- (void)_nodeBecameInactive:(id)a3 withReason:(int64_t)a4;
- (void)_nodeStartedElection:(id)a3 withElectionInfo:(id)a4;
- (void)_nodeStopped:(id)a3 withReason:(int64_t)a4;
- (void)_reportLostLeader:(id)a3 withReason:(int64_t)a4;
- (void)_resetBallot;
- (void)addBrowser:(id)a3;
- (void)backedOffNodeMovedOutOfElection:(id)a3;
- (void)fast_fold_nodeController:(id)a3 didReceiveElectionCmd:(id)a4 withCompletionHandler:(id)a5;
- (void)nodeController:(id)a3 didAddTransport:(id)a4;
- (void)nodeController:(id)a3 didReceiveCommand:(id)a4;
- (void)nodeController:(id)a3 didReceiveElectionCmd:(id)a4 withCompletionHandler:(id)a5;
- (void)nodeController:(id)a3 didReceiveError:(id)a4 forCommand:(id)a5;
- (void)nodeController:(id)a3 didReceiveOnDemandNodeCreationRequest:(id)a4;
- (void)nodeController:(id)a3 didReceiveRequest:(id)a4 callback:(id)a5;
- (void)nodeController:(id)a3 didRemoveTransport:(id)a4 withError:(id)a5;
- (void)nodeController:(id)a3 didUpdateRemoteConstituent:(id)a4 to:(id)a5;
- (void)nodeController:(id)a3 didUpdateState:(int64_t)a4 to:(int64_t)a5 reason:(int64_t)a6 withLastSentElectionInfo:(id)a7;
- (void)pingLeader;
- (void)removeBrowser:(id)a3;
- (void)sendCommand:(id)a3;
- (void)sendCommands:(id)a3;
- (void)setElectionElapsedTimer:(id)a3;
- (void)setElectionEnd:(unint64_t)a3;
- (void)setElectionPrevious:(unint64_t)a3;
- (void)setElectionStart:(unint64_t)a3;
- (void)start;
- (void)stopWithCompletionHandler:(id)a3;
@end

@implementation CONodeManager

- (CONodeManager)initWithExecutionContext:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CONodeManager;
  v5 = [(CONodeManager *)&v19 init];
  if (v5)
  {
    v6 = [v4 copy];
    executionContext = v5->_executionContext;
    v5->_executionContext = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    nodeControllers = v5->_nodeControllers;
    v5->_nodeControllers = v8;

    v10 = objc_alloc_init(COElectionInfo);
    electionInfo = v5->_electionInfo;
    v5->_electionInfo = v10;

    v12 = [MEMORY[0x277CBEB38] dictionary];
    browsersObservers = v5->_browsersObservers;
    v5->_browsersObservers = v12;

    v14 = [MEMORY[0x277CBEB98] set];
    acceptableCommands = v5->_acceptableCommands;
    v5->_acceptableCommands = v14;

    v16 = [MEMORY[0x277CBEB38] dictionary];
    leaderCommands = v5->_leaderCommands;
    v5->_leaderCommands = v16;
  }

  return v5;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CONodeManager *)self executionContext];
  v5 = [v4 meshControllerDescription];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"[m:%@] <%@: %p>", v5, v7, self];

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CONodeManager *)self me];
  v7 = [(CONodeManager *)self browsersObservers];
  v8 = [v3 stringWithFormat:@"<%@: %p, \n ME: %@, Browsers: %@>", v5, self, v6, v7];

  return v8;
}

- (void)start
{
  v3 = [(CONodeManager *)self executionContext];
  [v3 assertDispatchQueue];

  if (!self->_started)
  {
    self->_started = 1;
    objc_initWeak(&location, self);
    v4 = [(CONodeManager *)self browsersObservers];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __22__CONodeManager_start__block_invoke;
    v5[3] = &unk_278E17478;
    objc_copyWeak(&v6, &location);
    v5[4] = self;
    [v4 enumerateKeysAndObjectsUsingBlock:v5];

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

- (void)stopWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CONodeManager *)self executionContext];
  [v5 assertDispatchQueue];

  self->_started = 0;
  objc_initWeak(&location, self);
  v6 = [(CONodeManager *)self executionContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__CONodeManager_stopWithCompletionHandler___block_invoke;
  v8[3] = &unk_278E17510;
  objc_copyWeak(&v10, &location);
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  [v6 dispatchAsync:v8];

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

- (void)addBrowser:(id)a3
{
  v7 = a3;
  v4 = [(CONodeManager *)self executionContext];
  [v4 assertDispatchQueue];

  if (!self->_started)
  {
    v5 = [(CONodeManager *)self browsersObservers];
    v6 = [MEMORY[0x277CBEB68] null];
    [v5 setObject:v6 forKey:v7];
  }
}

- (void)removeBrowser:(id)a3
{
  v6 = a3;
  v4 = [(CONodeManager *)self executionContext];
  [v4 assertDispatchQueue];

  if (!self->_started)
  {
    v5 = [(CONodeManager *)self browsersObservers];
    [v5 removeObjectForKey:v6];
  }
}

- (void)sendCommands:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(CONodeManager *)self executionContext];
    [v5 assertDispatchQueue];

    [(CONodeManager *)self pingLeader];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v4;
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

- (void)sendCommand:(id)a3
{
  v4 = a3;
  v5 = [(CONodeManager *)self executionContext];
  [v5 assertDispatchQueue];

  v6 = [v4 destination];
  if (!v6)
  {
    if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
    {
      v7 = [(CONodeManager *)self electionInfo];
      v8 = [v7 leader];
    }

    else
    {
      v8 = [(CONodeManager *)self leader];
    }

    v9 = [(CONodeManager *)self nodeControllerForConstituent:v8];
    v10 = [COMeshNode alloc];
    v11 = [v9 node];
    v6 = [(COMeshNode *)v10 initWithNode:v11];

    [v4 setDestination:v6];
  }

  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [(COMeshNode *)v6 remote];
  v16 = [(CONodeManager *)self nodeControllerForConstituent:v15];

  if (!v16)
  {
    v17 = [(COMeshNode *)v6 IDSIdentifier];
    v16 = [(CONodeManager *)self nodeControllerForIDS:v17];
  }

  v18 = self;
  objc_initWeak(&location, v16);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __29__CONodeManager_sendCommand___block_invoke;
  v21[3] = &unk_278E17538;
  v21[4] = v18;
  objc_copyWeak(v24, &location);
  v19 = v4;
  v22 = v19;
  v24[1] = v12;
  v24[2] = v13;
  v24[3] = v14;
  v20 = v6;
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
  v3 = [(CONodeManager *)self executionContext];
  [v3 assertDispatchQueue];

  if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
  {
    v4 = [(CONodeManager *)self electionInfo];
    v6 = [v4 leader];
  }

  else
  {
    v6 = [(CONodeManager *)self leader];
  }

  v5 = [(CONodeManager *)self nodeControllerForConstituent:v6];
  [v5 sendPing];
}

- (COConstituent)me
{
  v2 = [(CONodeManager *)self executionContext];
  v3 = [v2 constituentForMe];

  return v3;
}

- (COMeshNode)nodeForMe
{
  v3 = [(CONodeManager *)self executionContext];
  v4 = [v3 constituentForMe];

  v5 = [(CONodeManager *)self nodeControllerForConstituent:v4];
  v6 = [v5 node];

  v7 = [[COMeshNode alloc] initWithNode:v6];

  return v7;
}

- (COConstituent)leader
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_leader;
  objc_sync_exit(v2);

  return v3;
}

- (id)nodeControllerForConstituent:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = 0;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(CONodeManager *)v5 nodeControllers];
  v7 = [v6 copy];

  objc_sync_exit(v5);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__CONodeManager_nodeControllerForConstituent___block_invoke;
  v11[3] = &unk_278E17560;
  v8 = v4;
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

- (id)nodeControllerForIDS:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = 0;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(CONodeManager *)v5 nodeControllers];
  v7 = [v6 copy];

  objc_sync_exit(v5);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__CONodeManager_nodeControllerForIDS___block_invoke;
  v11[3] = &unk_278E17560;
  v8 = v4;
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

- (id)activeNodesWithSelfNode:(BOOL)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = [MEMORY[0x277CBEB18] array];
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(CONodeManager *)v5 nodeControllers];
  v7 = [v6 copy];

  objc_sync_exit(v5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__CONodeManager_activeNodesWithSelfNode___block_invoke;
  v10[3] = &unk_278E17588;
  v11 = a3;
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

- (void)_didDiscoverRecord:(id)a3
{
  v5 = a3;
  v4 = [(CONodeManager *)self executionContext];
  [v4 assertDispatchQueue];

  if (self->_started)
  {
    [(CONodeManager *)self _handleDiscoveryRecord:v5];
  }
}

- (void)_didLoseRecord:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CONodeManager *)self executionContext];
  [v5 assertDispatchQueue];

  v6 = COCoreLogForCategory(15);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(CONodeManager *)self shortDescription];
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ lost a record %@", &v9, 0x16u);
  }

  if (self->_started)
  {
    [(CONodeManager *)self _handleLostRecord:v4];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)nodeController:(id)a3 didUpdateState:(int64_t)a4 to:(int64_t)a5 reason:(int64_t)a6 withLastSentElectionInfo:(id)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
  v14 = [(CONodeManager *)self executionContext];
  [v14 assertDispatchQueue];

  if (!self->_started)
  {
    goto LABEL_18;
  }

  v15 = COCoreLogForCategory(15);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(CONodeManager *)self shortDescription];
    v17 = CONodeControllerStateDescription(a4);
    v18 = CONodeControllerStateDescription(a5);
    v20 = 138544130;
    v21 = v16;
    v22 = 2048;
    v23 = v12;
    v24 = 2114;
    v25 = v17;
    v26 = 2114;
    v27 = v18;
    _os_log_impl(&dword_244378000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %p state from %{public}@ to %{public}@", &v20, 0x2Au);
  }

  if (a5 <= 3)
  {
    if (a5 == 1)
    {
      if ((a4 & 0xFFFFFFFFFFFFFFFDLL) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (a5 != 2)
    {
      goto LABEL_18;
    }

    [(CONodeManager *)self _nodeBecameInactive:v12 withReason:a6];
LABEL_16:
    [(CONodeManager *)self _informDelegateAboutNodeRemoval:v12 oldState:a4];
    goto LABEL_17;
  }

  switch(a5)
  {
    case 4:
      [(CONodeManager *)self _nodeStopped:v12 withReason:a6];
      goto LABEL_16;
    case 5:
      [(CONodeManager *)self _nodeStartedElection:v12 withElectionInfo:v13];
      [(CONodeManager *)self _informDelegateAboutNodeAddition:v12 oldState:a4];
      break;
    case 6:
      [(CONodeManager *)self _informDelegateAboutNodeAddition:v12 oldState:a4];
LABEL_17:
      [(CONodeManager *)self _checkForElectionCompletion:v13 nodeController:v12];
      break;
  }

LABEL_18:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)fast_fold_nodeController:(id)a3 didReceiveElectionCmd:(id)a4 withCompletionHandler:(id)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CONodeManager *)self executionContext];
  [v11 assertDispatchQueue];

  if (self->_started)
  {
    v12 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v47 = [(CONodeManager *)self shortDescription];
      *buf = 138543874;
      v54 = v47;
      v55 = 2112;
      v56 = v9;
      v57 = 2048;
      v58 = v8;
      _os_log_debug_impl(&dword_244378000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ got a command %@ from node controller %p", buf, 0x20u);
    }

    v13 = [(CONodeManager *)self ballotBrowser];
    v14 = [v9 ballot];
    [v13 discoveryUsingBallot:v14];

    v15 = [[COElectionInfo alloc] initWithCommand:v9];
    v16 = [(CONodeManager *)self electionInfo];
    v17 = [v16 hasSameGenerationAndLeader:v15];

    if (v17)
    {
      v18 = [(CONodeManager *)self electionInfo];
      v10[2](v10, v18);
LABEL_27:

      goto LABEL_28;
    }

    v19 = [(CONodeManager *)self electionInfo];
    v48 = [v19 generation];

    v49 = [(COElectionInfo *)v15 generation];
    if (v48 > v49)
    {
      v20 = COCoreLogForCategory(15);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(CONodeManager *)self shortDescription];
        v22 = [(CONodeManager *)self electionInfo];
        v23 = [v22 generation];
        v24 = [(COElectionInfo *)v15 generation];
        *buf = 138543874;
        v54 = v21;
        v55 = 2048;
        v56 = v23;
        v57 = 2048;
        v58 = v24;
        _os_log_impl(&dword_244378000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Our generation %llu is greater than the incoming generation %llu", buf, 0x20u);
      }

      v18 = [(CONodeManager *)self electionInfo];
      v10[2](v10, v18);
      goto LABEL_27;
    }

    v25 = [v8 node];
    v18 = [v25 remote];

    v26 = [(CONodeManager *)self electionInfo];
    v27 = [v26 ballot];
    v28 = [v27 candidates];
    v29 = [v28 containsObject:v18];

    if (v29)
    {
      v30 = 0;
      goto LABEL_21;
    }

    v31 = [(CONodeManager *)self electionInfo];
    v32 = [v31 ballot];
    v33 = [v32 mutableCopy];

    [v33 addCandidate:v18];
    v34 = [v8 ipDiscoveryRecord];
    v35 = v34;
    if (v34 && [v34 shouldAdvertise])
    {
      if (![v33 addDiscoveryRecord:v35])
      {
LABEL_20:
        v30 = [(CONodeManager *)self _updateBallot:v33, v48];

LABEL_21:
        if (v49 <= v48)
        {
          v42 = [(CONodeManager *)self electionInfo];
          v10[2](v10, v42);

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
            v39 = [(CONodeManager *)self shortDescription];
            *buf = 138543874;
            v54 = v39;
            v55 = 2048;
            v56 = v48;
            v57 = 2048;
            v58 = v49;
            _os_log_impl(&dword_244378000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ bumping election generation from %llu to %llu", buf, 0x20u);
          }

          v40 = [(CONodeManager *)self electionInfo];
          [v40 setGeneration:v49];

          [(CONodeManager *)self _resetBallot];
          v41 = [(CONodeManager *)self electionInfo];
          v10[2](v10, v41);
        }

        v43 = self;
        objc_sync_enter(v43);
        v44 = [(CONodeManager *)v43 nodeControllers];
        v45 = [v44 copy];

        objc_sync_exit(v43);
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __86__CONodeManager_fast_fold_nodeController_didReceiveElectionCmd_withCompletionHandler___block_invoke;
        v50[3] = &unk_278E175B0;
        v51 = v8;
        v52 = v43;
        [v45 enumerateKeysAndObjectsUsingBlock:v50];

        goto LABEL_27;
      }

      v36 = COCoreLogForCategory(11);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v33 discovery];
        *buf = 134218498;
        v54 = self;
        v55 = 2112;
        v56 = v37;
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
        v54 = self;
        v55 = 2112;
        v56 = v35;
        v57 = 2112;
        v58 = v8;
        v59 = 2048;
        v60 = v33;
        v61 = 2112;
        v62 = v9;
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

- (void)nodeController:(id)a3 didReceiveElectionCmd:(id)a4 withCompletionHandler:(id)a5
{
  v80 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![MEMORY[0x277CFD0B8] isFastFoldEnabled])
  {
    v11 = [(CONodeManager *)self executionContext];
    [v11 assertDispatchQueue];

    if (!self->_started)
    {
      goto LABEL_45;
    }

    v12 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v46 = [(CONodeManager *)self shortDescription];
      *buf = 138543874;
      v71 = v46;
      v72 = 2112;
      v73 = v9;
      v74 = 2048;
      v75 = v8;
      _os_log_debug_impl(&dword_244378000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ got a command %@ from node controller %p", buf, 0x20u);
    }

    v13 = [(CONodeManager *)self ballotBrowser];
    v14 = [v9 ballot];
    [v13 discoveryUsingBallot:v14];

    v66 = [[COElectionInfo alloc] initWithCommand:v9];
    v15 = [(CONodeManager *)self electionInfo];
    v16 = [v15 hasGreaterGenerationThan:v66];

    if (v16)
    {
      v17 = COCoreLogForCategory(15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(CONodeManager *)self shortDescription];
        v19 = [(CONodeManager *)self electionInfo];
        v20 = [v19 generation];
        v21 = [(COElectionInfo *)v66 generation];
        *buf = 138543874;
        v71 = v18;
        v72 = 2048;
        v73 = v20;
        v74 = 2048;
        v75 = v21;
        _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Our generation %llu is greater than the incoming generation %llu", buf, 0x20u);
      }

LABEL_9:

      v22 = [(CONodeManager *)self electionInfo];
      v10[2](v10, v22);
LABEL_44:

      goto LABEL_45;
    }

    v23 = [(CONodeManager *)self electionInfo];
    v24 = [v23 isEqual:v66];

    if (v24)
    {
      v22 = [(CONodeManager *)self electionInfo];
      v10[2](v10, v22);
      goto LABEL_44;
    }

    v25 = [(CONodeManager *)self electionInfo];
    v26 = [v25 hasSameGenerationAndLeader:v66];

    if (v26)
    {
      v17 = COCoreLogForCategory(15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(CONodeManager *)self shortDescription];
        v28 = [(CONodeManager *)self electionInfo];
        v29 = [v28 leader];
        v30 = [(CONodeManager *)self electionInfo];
        v31 = [v30 generation];
        *buf = 138544130;
        v71 = v27;
        v72 = 2112;
        v73 = v29;
        v74 = 2048;
        v75 = v31;
        v76 = 2112;
        v77 = v8;
        _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ The leader %@ and generation %llu for command  %@ on node has not changed", buf, 0x2Au);
      }

      goto LABEL_9;
    }

    v32 = [(CONodeManager *)self electionInfo];
    v64 = [v32 generation];

    v65 = [(COElectionInfo *)v66 generation];
    v33 = [v8 node];
    v22 = [v33 remote];

    v34 = [(CONodeManager *)self electionInfo];
    v35 = [v34 ballot];
    v36 = [v35 candidates];
    v37 = [v36 containsObject:v22];

    if (v37)
    {
      v38 = 0;
      goto LABEL_31;
    }

    v39 = [(CONodeManager *)self electionInfo];
    v40 = [v39 ballot];
    v41 = [v40 mutableCopy];

    [v41 addCandidate:v22];
    v42 = [v8 ipDiscoveryRecord];
    v43 = v42;
    if (v42 && [v42 shouldAdvertise])
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
            v48 = [(CONodeManager *)self shortDescription];
            *buf = 138543618;
            v71 = v48;
            v72 = 2114;
            v73 = v22;
            _os_log_impl(&dword_244378000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ adding candidate %{public}@ to our ballot", buf, 0x16u);
          }

          v38 = 1;
        }

LABEL_31:
        if (v65 > v64)
        {
          v49 = COCoreLogForCategory(15);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v50 = [(CONodeManager *)self shortDescription];
            *buf = 138543874;
            v71 = v50;
            v72 = 2048;
            v73 = v64;
            v74 = 2048;
            v75 = v65;
            _os_log_impl(&dword_244378000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ upgrading election generation from %llu to %llu", buf, 0x20u);
          }

          v51 = [(CONodeManager *)self electionInfo];
          [v51 setGeneration:v65];

          [(CONodeManager *)self _resetBallot];
          v38 = 1;
        }

        if (v65 == v64)
        {
          v52 = [v8 node];
          if ([v52 isInElectionState])
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
                v55 = [(CONodeManager *)self shortDescription];
                v56 = [(CONodeManager *)self electionInfo];
                v57 = [v56 generation];
                *buf = 138543618;
                v71 = v55;
                v72 = 2048;
                v73 = v57;
                _os_log_impl(&dword_244378000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting ELECTION %llu", buf, 0x16u);
              }

              v58 = [(CONodeManager *)self electionInfo];
              v10[2](v10, v58);

              goto LABEL_43;
            }
          }
        }

        v59 = [(CONodeManager *)self electionInfo];
        v10[2](v10, v59);

        if (!v38)
        {
          goto LABEL_44;
        }

LABEL_43:
        v60 = self;
        objc_sync_enter(v60);
        v61 = [(CONodeManager *)v60 nodeControllers];
        v62 = [v61 copy];

        objc_sync_exit(v60);
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __76__CONodeManager_nodeController_didReceiveElectionCmd_withCompletionHandler___block_invoke;
        v67[3] = &unk_278E175B0;
        v68 = v8;
        v69 = v60;
        [v62 enumerateKeysAndObjectsUsingBlock:v67];

        goto LABEL_44;
      }

      v44 = COCoreLogForCategory(11);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [v41 discovery];
        *buf = 134218498;
        v71 = self;
        v72 = 2112;
        v73 = v45;
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
        v71 = self;
        v72 = 2112;
        v73 = v43;
        v74 = 2112;
        v75 = v8;
        v76 = 2048;
        v77 = v41;
        v78 = 2112;
        v79 = v9;
        _os_log_debug_impl(&dword_244378000, v44, OS_LOG_TYPE_DEBUG, "%p cannot add Discovery %@ for %@ to ballot %p when handling response %@", buf, 0x34u);
      }
    }

    goto LABEL_26;
  }

  [(CONodeManager *)self fast_fold_nodeController:v8 didReceiveElectionCmd:v9 withCompletionHandler:v10];
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

- (void)nodeController:(id)a3 didReceiveCommand:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CONodeManager *)self executionContext];
  [v8 assertDispatchQueue];

  v9 = [(CONodeManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [COMeshNode alloc];
    v11 = [v6 node];
    v12 = [(COMeshNode *)v10 initWithNode:v11];

    [v7 _setSender:v12];
    [v9 node:v12 didReceiveCommand:v7];
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

- (void)nodeController:(id)a3 didReceiveRequest:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CONodeManager *)self executionContext];
  [v11 assertDispatchQueue];

  v12 = [(CONodeManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [COMeshNode alloc];
    v14 = [v8 node];
    v15 = [(COMeshNode *)v13 initWithNode:v14];

    [v9 _setSender:v15];
    [v12 node:v15 didReceiveRequest:v9 responseCallBack:v10];
  }

  else
  {
    v16 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CONodeManager nodeController:didReceiveRequest:callback:];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
    v10[2](v10, 0, v15);
  }
}

- (void)nodeController:(id)a3 didReceiveError:(id)a4 forCommand:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CONodeManager *)self executionContext];
  [v11 assertDispatchQueue];

  v12 = [(CONodeManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [COMeshNode alloc];
    v14 = [v8 node];
    v15 = [(COMeshNode *)v13 initWithNode:v14];

    [v10 _setSender:v15];
    [v12 node:v15 didReceiveError:v9 forCommand:v10];
  }

  else
  {
    v16 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = [(CONodeManager *)self shortDescription];
      v19 = 138543874;
      v20 = v18;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v9;
      _os_log_error_impl(&dword_244378000, v16, OS_LOG_TYPE_ERROR, "%{public}@ failed to send a command %@ with error %@", &v19, 0x20u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)nodeController:(id)a3 didUpdateRemoteConstituent:(id)a4 to:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CONodeManager *)self executionContext];
  [v11 assertDispatchQueue];

  if (self->_started)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
    [(CONodeManager *)self _handleEnqueuedCommandsForLostNode:v8 error:v12];
    if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
    {
      v13 = [(CONodeManager *)self electionInfo];
      v14 = [v13 leader];
    }

    else
    {
      v14 = [(CONodeManager *)self leader];
    }

    if ([v9 isEqual:v14])
    {
      v15 = [(CONodeManager *)self executionContext];
      v16 = [v15 analyticsRecorder];

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __62__CONodeManager_nodeController_didUpdateRemoteConstituent_to___block_invoke;
      v30[3] = &unk_278E16770;
      v30[4] = self;
      (v16->super._discovery)(v16, 0x2857B5D68, v30);
      [(CONodeManager *)self _bumpGeneration];
      [(CONodeManager *)self _resetBallot];
    }

    else
    {
      v18 = [(CONodeManager *)self isInElection];
      if (!v14 || v18)
      {
        goto LABEL_9;
      }

      if (![MEMORY[0x277CFD0B8] isFastFoldEnabled])
      {
        v16 = [(COBallot *)[COMutableBallot alloc] initWithCandidate:v14];
        [(COMutableBallot *)v16 addCandidate:v10];
        v23 = [(COBallot *)v16 candidates];
        v24 = [v23 firstObject];

        if (([v24 isEqual:v14] & 1) == 0)
        {
          v25 = COCoreLogForCategory(15);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [(CONodeManager *)self shortDescription];
            *buf = 138544130;
            v32 = v26;
            v33 = 2112;
            v34 = v8;
            v35 = 2112;
            v36 = v10;
            v37 = 2112;
            v38 = v14;
            _os_log_impl(&dword_244378000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ node controller changed %@ to a new constituent %@ that is better than our current leader %@", buf, 0x2Au);
          }

          [(CONodeManager *)self _bumpGeneration];
          [(CONodeManager *)self _resetBallot];
          [(CONodeManager *)self _informControllersAboutNewElectionInfo];
        }

        goto LABEL_8;
      }

      v19 = [(CONodeManager *)self electionInfo];
      v20 = [v19 ballot];
      if (v20)
      {
        v21 = [(CONodeManager *)self electionInfo];
        [v21 ballot];
        v22 = v29 = v19;
        v16 = [v22 mutableCopy];

        v19 = v29;
      }

      else
      {
        v16 = objc_alloc_init(COMutableBallot);
      }

      [(COMutableBallot *)v16 addCandidate:v10];
      if (![(CONodeManager *)self _updateBallot:v16])
      {
LABEL_8:

LABEL_9:
        goto LABEL_10;
      }

      v27 = COCoreLogForCategory(15);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [(CONodeManager *)self shortDescription];
        *buf = 138544130;
        v32 = v28;
        v33 = 2112;
        v34 = v8;
        v35 = 2112;
        v36 = v10;
        v37 = 2112;
        v38 = v14;
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

- (void)nodeController:(id)a3 didAddTransport:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CONodeManager *)self executionContext];
  [v8 assertDispatchQueue];

  if (self->_started)
  {
    v9 = [v7 supportsLeaderElection];
    v10 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(CONodeManager *)self shortDescription];
      v12 = @"does not support";
      *v25 = 138544130;
      *&v25[12] = 2048;
      *&v25[4] = v11;
      if (v9)
      {
        v12 = @"supports";
      }

      *&v25[14] = v6;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Node %p added a transport %@ that %@ election", v25, 0x2Au);
    }

    if (v9)
    {
      v13 = [v6 node];
      v14 = [v13 state];

      if (v14)
      {
        v15 = [MEMORY[0x277CFD0B8] isFastFoldEnabled];
        v16 = [(CONodeManager *)self electionInfo];
        v17 = v16;
        if (v15)
        {

          if (!v17)
          {
            [(CONodeManager *)self _resetBallot];
          }

          [(CONodeManager *)self _informControllersAboutNewElectionInfo];
        }

        else
        {
          v19 = [v16 ballot];

          v20 = [v6 node];
          v21 = [v20 remote];

          v22 = [v19 candidates];
          v23 = [v22 containsObject:v21];

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
        v18 = [(CONodeManager *)self electionInfo];
        [v6 updateElectionInfo:v18];
      }
    }

    else
    {
      [v6 inquireForTransport:v7];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)nodeController:(id)a3 didRemoveTransport:(id)a4 withError:(id)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CONodeManager *)self executionContext];
  [v11 assertDispatchQueue];

  v12 = COCoreLogForCategory(15);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(CONodeManager *)self shortDescription];
    v14 = [v8 transports];
    *buf = 138544130;
    v56 = v13;
    v57 = 2048;
    v58 = v9;
    v59 = 2048;
    v60 = v8;
    v61 = 2114;
    v62 = v14;
    _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Lost transport %p for node %p. Remaining transports = %{public}@", buf, 0x2Au);
  }

  v15 = [v8 transports];
  v16 = [v15 count];

  if (v16)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v17 = [v8 transports];
    v18 = [v17 countByEnumeratingWithState:&v50 objects:v54 count:16];
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
            objc_enumerationMutation(v17);
          }

          v20 |= [*(*(&v50 + 1) + 8 * i) supportsLeaderElection];
        }

        v19 = [v17 countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v19);
    }

    else
    {
      LOBYTE(v20) = 0;
    }

    v32 = [v8 node];
    v33 = [v32 remote];

    v34 = [(CONodeManager *)self electionInfo];
    v35 = [v34 ballot];

    v36 = [v35 candidates];
    v37 = [v36 containsObject:v33];

    if (v37 && (v20 & 1) == 0)
    {
      v49 = v10;
      if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
      {
        v38 = [(CONodeManager *)self electionInfo];
        v39 = [v38 leader];
      }

      else
      {
        v39 = [(CONodeManager *)self leader];
      }

      v40 = [v8 node];
      v41 = [v40 remote];

      if (v41)
      {
        v48 = v9;
        v42 = [v41 isEqual:v39];
        v43 = [(CONodeManager *)self electionInfo];
        v44 = [v43 ballot];
        v45 = [v44 mutableCopy];

        [v45 removeCandidate:v41];
        [(CONodeManager *)self _updateBallot:v45];
        if (v42)
        {
          [(CONodeManager *)self _bumpGeneration];
          [(CONodeManager *)self _resetBallot];
          [(CONodeManager *)self _informControllersAboutNewElectionInfo];
        }

        else
        {
          v46 = [(CONodeManager *)self electionInfo];
          [(CONodeManager *)self _checkForElectionCompletion:v46 nodeController:v8];
        }

        v9 = v48;
      }

      v10 = v49;
    }
  }

  else
  {
    v23 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(CONodeManager *)self shortDescription];
      *buf = 138543618;
      v56 = v24;
      v57 = 2048;
      v58 = v8;
      _os_log_impl(&dword_244378000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping node %p since we don't have any more transports available", buf, 0x16u);
    }

    v25 = [v10 domain];
    v26 = [v25 isEqualToString:0x2857B6328];

    if (v26)
    {
      if ([v10 code] == -5001)
      {
        v27 = 18;
      }

      else
      {
        v27 = 20;
      }

      if ([v10 code] == -5003)
      {
        v28 = [v10 underlyingErrors];
        v29 = [v28 firstObject];

        v30 = [v29 domain];
        if ([v30 isEqualToString:0x2857B5628])
        {
          v31 = [v29 code];

          if (v31 == -6001)
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

    [v8 invalidateWithReason:v27];
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (void)nodeController:(id)a3 didReceiveOnDemandNodeCreationRequest:(id)a4
{
  v5 = a4;
  v6 = [(CONodeManager *)self ballotBrowser];
  [v6 discoveryUsingOnDemandNodeCreationRequest:v5];
}

- (void)backedOffNodeMovedOutOfElection:(id)a3
{
  v10 = a3;
  v4 = [v10 node];
  v5 = [v4 totalBackedOffTime];
  v6 = [(CONodeManager *)self longestBackOff];

  if (v5 > v6)
  {
    v7 = [v10 node];
    -[CONodeManager setLongestBackOff:](self, "setLongestBackOff:", [v7 totalBackedOffTime]);

    v8 = [v10 node];
    v9 = [v8 remote];
    [(CONodeManager *)self setLongestBackedOffConstituent:v9];
  }
}

- (void)_bumpGeneration
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(CONodeManager *)self executionContext];
  [v3 assertDispatchQueue];

  v4 = [(CONodeManager *)self electionInfo];
  v5 = [v4 generation] + 1;

  v6 = [(CONodeManager *)self electionInfo];
  [v6 setGeneration:v5];

  v7 = COCoreLogForCategory(15);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CONodeManager *)self shortDescription];
    v9 = [(CONodeManager *)self electionInfo];
    v10 = [v9 leader];
    v12 = 138543874;
    v13 = v8;
    v14 = 2048;
    v15 = v5;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ bumping generation to %llu. Current leader = %{public}@", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_resetBallot
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(CONodeManager *)self executionContext];
  [v3 assertDispatchQueue];

  v4 = [(CONodeManager *)self executionContext];
  v5 = [v4 constituentForMe];

  v6 = [[COBallot alloc] initWithCandidate:v5];
  v7 = [(CONodeManager *)self electionInfo];
  [v7 setBallot:v6];

  v8 = COCoreLogForCategory(15);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CONodeManager *)self shortDescription];
    v10 = [(CONodeManager *)self electionInfo];
    v13 = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v5;
    v17 = 2048;
    v18 = [v10 generation];
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ resetting ballot. Current leader = %{public}@. Current generation = %llu", &v13, 0x20u);
  }

  v11 = [(CONodeManager *)self ballotBrowser];
  [v11 clearRecords];

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateBallot:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277CFD0B8] isSlimBallotsEnabled])
  {
    v5 = [v4 candidates];
    v6 = [v5 count];

    if (!v6)
    {
      v7 = [(CONodeManager *)self nodeForMe];
      v8 = [v7 underlyingNode];
      v9 = [v8 meConstituent];
      [v4 addCandidate:v9];
    }
  }

  v10 = [(CONodeManager *)self electionInfo];
  v11 = [v10 leader];

  v12 = [(CONodeManager *)self electionInfo];
  [v12 setBallot:v4];

  v13 = [(CONodeManager *)self electionInfo];
  v14 = [v13 leader];

  v15 = [v11 isEqual:v14];
  if ((v15 & 1) == 0)
  {
    v16 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(CONodeManager *)self shortDescription];
      v18 = [(CONodeManager *)self electionInfo];
      v21 = 138544130;
      v22 = v17;
      v23 = 2114;
      v24 = v11;
      v25 = 2114;
      v26 = v14;
      v27 = 2048;
      v28 = [v18 generation];
      _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Changing leader from %{public}@ to %{public}@. Current generation = %llu", &v21, 0x2Au);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v15 ^ 1;
}

- (void)_handleEnqueuedCommandsForLostNode:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CONodeManager *)self executionContext];
  [v8 assertDispatchQueue];

  if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
  {
    v9 = [(CONodeManager *)self electionInfo];
    v10 = [v9 leader];
  }

  else
  {
    v10 = [(CONodeManager *)self leader];
  }

  v11 = [v7 node];
  v12 = [v11 remote];
  v13 = [v10 isEqual:v12];

  v14 = [v7 sentElements];
  v15 = [v14 copy];

  v16 = [v7 sentElements];

  [v16 removeAllObjects];
  if (v13)
  {
    v17 = [MEMORY[0x277CBEB38] dictionary];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__CONodeManager__handleEnqueuedCommandsForLostNode_error___block_invoke_2;
    v21[3] = &unk_278E17600;
    v22 = v6;
    v18 = v17;
    v23 = v18;
    v19 = v6;
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
    v25 = v6;
    v18 = v6;
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

- (void)_reportLostLeader:(id)a3 withReason:(int64_t)a4
{
  v6 = a3;
  v7 = [(CONodeManager *)self executionContext];
  v8 = [v7 leaderElectionConfigured];

  if (v8)
  {
    v9 = [(CONodeManager *)self executionContext];
    v10 = [v9 label];

    v11 = a4 - 6;
    if (a4 - 6) <= 0xE && ((0x7D67u >> v11))
    {
      v12 = *off_278E17710[v11];
    }

    else
    {
      v12 = 0;
    }

    v13 = [(CONodeManager *)self executionContext];
    v14 = [v13 analyticsRecorder];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __46__CONodeManager__reportLostLeader_withReason___block_invoke;
    v18[3] = &unk_278E17628;
    v19 = v12;
    v20 = v10;
    v21 = v6;
    v15 = v14[2];
    v16 = v10;
    v17 = v12;
    v15(v14, 0x2857B5D68, v18);
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
    [(CONodeManager *)self setElectionElapsedTimer:0];
    [(CONodeManager *)self setElectionPrevious:self->_electionStart];
    self->_electionStart = a3;
  }
}

- (void)setElectionEnd:(unint64_t)a3
{
  v50 = *MEMORY[0x277D85DE8];
  if (self->_electionEnd != a3)
  {
    v29 = [(CONodeManager *)self electionPrevious];
    if (v29)
    {
      v30 = [(CONodeManager *)self electionStart];
      v5 = [(CONodeManager *)self activeNodesWithSelfNode:1];
      if (self->_electionEnd)
      {
        v6 = (v30 - v29) / 1000000000.0;
      }

      else
      {
        v6 = 0.0;
      }

      v7 = [(CONodeManager *)self executionContext];
      v27 = [v7 label];

      v28 = [v5 count];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v8 = v5;
      v9 = 0;
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

            v15 = [*(*(&v45 + 1) + 8 * i) underlyingNode];
            if ([v15 connectionType] == 2)
            {
              ++v11;
              if ([v15 discoveryType] == 2)
              {
                ++v10;
              }
            }

            if ([v15 totalBackedOffTime] > v9)
            {
              v9 = [v15 totalBackedOffTime];
            }
          }

          v12 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v12);
      }

      v16 = [(CONodeManager *)self executionContext];
      v17 = [v16 analyticsRecorder];

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __32__CONodeManager_setElectionEnd___block_invoke;
      v36[3] = &unk_278E17650;
      v39 = (a3 - v30) / 1000000.0;
      v40 = v28;
      v41 = v11;
      v42 = v10;
      v43 = v6;
      v18 = v27;
      v44 = v9;
      v37 = v18;
      v38 = self;
      (v17)[2](v17, 0x2857B5D48, v36);
      self->_electionEnd = a3;
      v19 = [(CONodeManager *)self electionElapsedTimer];
      v20 = v19 == 0;

      if (v20)
      {
        v21 = [(CONodeManager *)self executionContext];
        v22 = [v21 dispatchQueue];

        v23 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v22);
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
          v34[1] = v29;
          v34[2] = v30;
          v33 = v17;
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

- (void)_informControllersAboutNewElectionInfo
{
  v3 = [(CONodeManager *)self executionContext];
  [v3 assertDispatchQueue];

  v4 = self;
  objc_sync_enter(v4);
  v5 = [(CONodeManager *)v4 nodeControllers];
  v6 = [v5 copy];

  objc_sync_exit(v4);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__CONodeManager__informControllersAboutNewElectionInfo__block_invoke;
  v7[3] = &unk_278E176A0;
  v7[4] = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
}

void __55__CONodeManager__informControllersAboutNewElectionInfo__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 electionInfo];
  [v4 updateElectionInfo:v5];
}

- (void)_handleDiscoveryRecord:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CONodeManager *)self executionContext];
  [v5 assertDispatchQueue];

  v6 = [v4 IDSIdentifier];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__13;
  v32 = __Block_byref_object_dispose__13;
  v33 = 0;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(CONodeManager *)v7 nodeControllers];
  v9 = [v8 objectForKey:v6];
  v10 = v29[5];
  v29[5] = v9;

  objc_sync_exit(v7);
  v11 = v29[5];
  if (v11)
  {
    [v11 addDiscoveryRecord:v4];
  }

  else
  {
    v12 = [CONodeController alloc];
    v13 = [(CONodeManager *)v7 executionContext];
    v14 = [(CONodeController *)v12 initWithDiscoveryRecord:v4 executionContext:v13];
    v15 = v29[5];
    v29[5] = v14;

    v16 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(CONodeManager *)v7 shortDescription];
      v18 = v29[5];
      *buf = 138543874;
      v35 = v17;
      v36 = 2048;
      v37 = v18;
      v38 = 2114;
      v39 = v4;
      _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ created NodeController %p with record %{public}@", buf, 0x20u);
    }

    [v29[5] setDelegate:v7];
    [v29[5] setAcceptableCommands:v7->_acceptableCommands];
    v19 = v7;
    objc_sync_enter(v19);
    v20 = [(CONodeManager *)v19 nodeControllers];
    [v20 setObject:v29[5] forKey:v6];

    objc_sync_exit(v19);
    objc_initWeak(buf, v19);
    v21 = v29[5];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __40__CONodeManager__handleDiscoveryRecord___block_invoke;
    v23[3] = &unk_278E176C8;
    objc_copyWeak(&v27, buf);
    v24 = v4;
    v25 = v6;
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

- (void)_handleLostRecord:(id)a3
{
  v9 = a3;
  v4 = [(CONodeManager *)self executionContext];
  [v4 assertDispatchQueue];

  v5 = [v9 IDSIdentifier];
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(CONodeManager *)v6 nodeControllers];
  v8 = [v7 objectForKey:v5];

  objc_sync_exit(v6);
  if (v8)
  {
    [v8 removeDiscoveryRecord:v9];
  }
}

- (void)_nodeStopped:(id)a3 withReason:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 node];
  v8 = [v7 IDSIdentifier];

  v9 = COCoreLogForCategory(15);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(CONodeManager *)self shortDescription];
    v14 = 138543874;
    v15 = v10;
    v16 = 2048;
    v17 = v6;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ removing %p [IDS: %@] from our list", &v14, 0x20u);
  }

  v11 = self;
  objc_sync_enter(v11);
  v12 = [(CONodeManager *)v11 nodeControllers];
  [v12 removeObjectForKey:v8];

  objc_sync_exit(v11);
  [(CONodeManager *)v11 _nodeBecameInactive:v6 withReason:a4];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_nodeBecameInactive:(id)a3 withReason:(int64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(CONodeManager *)self executionContext];
  [v7 assertDispatchQueue];

  v8 = [v6 node];
  v9 = [v8 remote];

  if (v9)
  {
    v10 = [(CONodeManager *)self executionContext];
    v11 = [v10 leaderElectionConfigured];

    if (v11)
    {
      if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
      {
        v12 = [(CONodeManager *)self electionInfo];
        v13 = [v12 leader];
      }

      else
      {
        v13 = [(CONodeManager *)self leader];
      }

      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2857B5A08 code:-4101 userInfo:0];
      [(CONodeManager *)self _handleEnqueuedCommandsForLostNode:v6 error:v14];

      if ([v9 isEqual:v13])
      {
        v15 = COCoreLogForCategory(15);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(CONodeManager *)self shortDescription];
          v23 = 138543362;
          v24 = v16;
          _os_log_impl(&dword_244378000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ leader lost", &v23, 0xCu);
        }

        [(CONodeManager *)self _bumpGeneration];
        [(CONodeManager *)self _resetBallot];
        [(CONodeManager *)self _informControllersAboutNewElectionInfo];
        [(CONodeManager *)self _reportLostLeader:v6 withReason:a4];
      }

      else
      {
        v17 = [(CONodeManager *)self electionInfo];
        v18 = [v17 ballot];
        v19 = [v18 mutableCopy];

        v20 = [v6 node];
        v21 = [v20 remote];
        [v19 removeCandidate:v21];

        [(CONodeManager *)self _updateBallot:v19];
      }
    }

    [v6 markInactive];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_informDelegateAboutNodeAddition:(id)a3 oldState:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 <= 2)
  {
    v12 = v6;
    v6 = [v6 isLocalNodeController];
    v7 = v12;
    if ((v6 & 1) == 0)
    {
      v8 = [(CONodeManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v9 = [COMeshNode alloc];
        v10 = [v12 node];
        v11 = [(COMeshNode *)v9 initWithNode:v10];

        [v8 didAddNode:v11];
      }

      v7 = v12;
    }
  }

  MEMORY[0x2821F96F8](v6, v7);
}

- (void)_informDelegateAboutNodeRemoval:(id)a3 oldState:(int64_t)a4
{
  v6 = a3;
  if ((a4 - 5) <= 1)
  {
    v11 = v6;
    v7 = [(CONodeManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [COMeshNode alloc];
      v9 = [v11 node];
      v10 = [(COMeshNode *)v8 initWithNode:v9];

      [v7 didRemoveNode:v10];
    }

    v6 = v11;
  }
}

- (void)_nodeStartedElection:(id)a3 withElectionInfo:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CONodeManager *)self executionContext];
  [v8 assertDispatchQueue];

  if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
  {
    v9 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CONodeManager *)self shortDescription];
      v20 = 138543618;
      v21 = v10;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ node started election %@", &v20, 0x16u);
    }
  }

  else if ([MEMORY[0x277CFD0B8] isSlimBallotsEnabled])
  {
    v11 = [(CONodeManager *)self executionContext];
    v12 = [v11 constituentForMe];

    v13 = [v6 node];
    v14 = [v13 meConstituent];
    if ([v12 isEqual:v14] && objc_msgSend(v7, "generation") == 1)
    {
    }

    else
    {
      v15 = [(CONodeManager *)self electionInfo];
      v16 = [v7 isEqual:v15];

      if (v16)
      {
        goto LABEL_15;
      }
    }
  }

  v17 = self;
  objc_sync_enter(v17);
  [(CONodeManager *)v17 setLeader:0];
  objc_sync_exit(v17);

  if (![(CONodeManager *)v17 isInElection])
  {
    [(CONodeManager *)v17 setElectionStart:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW)];
    [(CONodeManager *)v17 setIsInElection:1];
  }

  v18 = [(CONodeManager *)v17 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v18 didStartElection];
  }

LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_checkForElectionCompletion:(id)a3 nodeController:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CONodeManager *)self executionContext];
  [v8 assertDispatchQueue];

  if ([(CONodeManager *)self isInElection])
  {
    v9 = self;
    objc_sync_enter(v9);
    v10 = [(CONodeManager *)v9 nodeControllers];
    v11 = [v10 copy];

    objc_sync_exit(v9);
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 1;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __60__CONodeManager__checkForElectionCompletion_nodeController___block_invoke;
    v33[3] = &unk_278E17560;
    v34 = v6;
    v35 = &v36;
    [v11 enumerateKeysAndObjectsUsingBlock:v33];
    if (*(v37 + 24) == 1)
    {
      v12 = COCoreLogForCategory(15);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(CONodeManager *)v9 shortDescription];
        *buf = 138543362;
        v41 = v13;
        _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ all nodes have finished election. Moving to state processing", buf, 0xCu);
      }

      [(CONodeManager *)v9 _logElectionSummary];
      [(CONodeManager *)v9 setIsInElection:0];
      [(CONodeManager *)v9 setElectionEnd:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW)];
      v14 = v9;
      objc_sync_enter(v14);
      v15 = [(CONodeManager *)v14 electionInfo];
      v16 = [v15 ballot];
      v17 = [v16 candidates];
      v18 = [v17 firstObject];

      [(CONodeManager *)v14 setLeader:v18];
      objc_sync_exit(v14);

      v19 = [(CONodeManager *)v14 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v19 didCompleteElection];
      }

      v20 = [(CONodeManager *)v14 electionInfo];
      v21 = [v20 ballot];
      v22 = [v21 candidates];
      v23 = [v22 firstObject];

      v24 = [(CONodeManager *)v14 nodeControllerForConstituent:v23];
      v25 = [(CONodeManager *)v14 leaderCommands];
      v26 = [v25 mutableCopy];

      v27 = [(CONodeManager *)v14 leaderCommands];
      [v27 removeAllObjects];

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

  else if ([v7 isLocalNodeController])
  {
    v29 = [(CONodeManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v29 didCompleteElection];
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

- (id)_constituentCharacteristics:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v4 device];
  v6 = [v4 flags];

  return [v3 stringWithFormat:@"%d, %llu", v5, v6];
}

- (void)_logElectionSummary
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = [(CONodeManager *)self executionContext];
  v7 = [v6 meshName];

  v8 = [(CONodeManager *)self electionInfo];
  v9 = [v8 generation];

  v10 = [(CONodeManager *)self electionInfo];
  v11 = [v10 ballot];
  v12 = [v11 candidates];
  v32 = [v12 firstObject];

  v13 = self;
  objc_sync_enter(v13);
  v14 = [(CONodeManager *)v13 nodeControllers];
  v15 = [v14 copy];

  objc_sync_exit(v13);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __36__CONodeManager__logElectionSummary__block_invoke;
  v33[3] = &unk_278E176F0;
  v16 = v5;
  v34 = v16;
  v17 = v4;
  v35 = v17;
  v18 = v3;
  v36 = v18;
  [v15 enumerateKeysAndObjectsUsingBlock:v33];
  v19 = COCoreLogForCategory(8);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(CONodeManager *)v13 executionContext];
    v21 = [v20 meshControllerDescription];
    *buf = 138413058;
    v38 = v21;
    v39 = 2114;
    v40 = v7;
    v41 = 2048;
    v42 = v9;
    v43 = 2114;
    v44 = v32;
    _os_log_impl(&dword_244378000, v19, OS_LOG_TYPE_DEFAULT, "[m:%@] %{public}@ : Completed Election(%llu). Leader is %{public}@", buf, 0x2Au);
  }

  v22 = COCoreLogForCategory(8);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(CONodeManager *)v13 executionContext];
    v24 = [v23 meshControllerDescription];
    *buf = 138413058;
    v38 = v24;
    v39 = 2114;
    v40 = v7;
    v41 = 2048;
    v42 = v9;
    v43 = 2114;
    v44 = v18;
    _os_log_impl(&dword_244378000, v22, OS_LOG_TYPE_DEFAULT, "[m:%@] %{public}@ : Candidate summary for Election(%llu)\n%{public}@", buf, 0x2Au);
  }

  v25 = COCoreLogForCategory(8);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [(CONodeManager *)v13 executionContext];
    v27 = [v26 meshControllerDescription];
    *buf = 138413058;
    v38 = v27;
    v39 = 2114;
    v40 = v7;
    v41 = 2048;
    v42 = v9;
    v43 = 2114;
    v44 = v16;
    _os_log_impl(&dword_244378000, v25, OS_LOG_TYPE_DEFAULT, "[m:%@] %{public}@ : Dormant trackers summary for Election(%llu)\n%{public}@", buf, 0x2Au);
  }

  v28 = COCoreLogForCategory(8);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [(CONodeManager *)v13 executionContext];
    v30 = [v29 meshControllerDescription];
    *buf = 138413058;
    v38 = v30;
    v39 = 2114;
    v40 = v7;
    v41 = 2048;
    v42 = v9;
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