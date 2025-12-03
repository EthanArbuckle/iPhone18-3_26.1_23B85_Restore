@interface IPProgressServer
+ (id)defaultAccessAdjudicator;
+ (id)defaultBehavior;
- (IPProgressServer)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (IPProgressServer)initWithDelegate:(id)delegate delegateQueue:(id)queue accessAdjudicator:(id)adjudicator behavior:(id)behavior;
- (IPProgressServerDelegate)delegate;
- (id)_progressForIdentity:(id)identity createIfMissing:(BOOL)missing;
- (id)_queue_progressForIdentity:(id)identity createIfMissing:(BOOL)missing;
- (id)activeInstallationsForBehavior:(id)behavior;
- (id)initiateProgressForIdentity:(id)identity;
- (id)serverBehavior:(id)behavior progressForIdentity:(id)identity error:(id *)error;
- (void)_queue_removePublishedProgress:(id)progress;
- (void)identityProgress:(id)progress didChangeProgressData:(id)data;
- (void)identityProgress:(id)progress didFinishWithState:(unint64_t)state;
- (void)identityWasUninstalled:(id)uninstalled;
- (void)resume;
- (void)serverBehavior:(id)behavior acceptedClient:(id)client;
@end

@implementation IPProgressServer

+ (id)defaultBehavior
{
  if (defaultBehavior_onceToken != -1)
  {
    +[IPProgressServer defaultBehavior];
  }

  v3 = defaultBehavior_sharedBehavior;

  return v3;
}

uint64_t __35__IPProgressServer_defaultBehavior__block_invoke()
{
  if (_os_feature_enabled_impl())
  {
    v8 = +[IPServerXPCTransport defaultXPCTransport];
    v0 = [IPXPCEventStateUpdateStream alloc];
    v1 = [v8 serviceQueue];
    v2 = [(IPXPCEventStateUpdateStream *)v0 initWithStreamName:@"com.apple.InstallProgress.events" queue:v1];

    v3 = [IPProgressServerDefaultBehavior alloc];
    v4 = [(IPXPCEventStateUpdateStream *)v2 sink];
    v5 = [(IPProgressServerDefaultBehavior *)v3 initWithTransport:v8 stateUpdateSink:v4];
    v6 = defaultBehavior_sharedBehavior;
    defaultBehavior_sharedBehavior = v5;
  }

  else
  {
    defaultBehavior_sharedBehavior = [[IPProgressStubBehavior alloc] initWithEventStreamName:@"com.apple.InstallProgress.events"];
  }

  return MEMORY[0x2821F96F8]();
}

+ (id)defaultAccessAdjudicator
{
  if (defaultAccessAdjudicator_onceToken != -1)
  {
    +[IPProgressServer defaultAccessAdjudicator];
  }

  v3 = defaultAccessAdjudicator_sharedAdjudicator;

  return v3;
}

uint64_t __44__IPProgressServer_defaultAccessAdjudicator__block_invoke()
{
  defaultAccessAdjudicator_sharedAdjudicator = objc_alloc_init(IPProductionAccessAdjudicator);

  return MEMORY[0x2821F96F8]();
}

- (IPProgressServer)initWithDelegate:(id)delegate delegateQueue:(id)queue accessAdjudicator:(id)adjudicator behavior:(id)behavior
{
  delegateCopy = delegate;
  queueCopy = queue;
  adjudicatorCopy = adjudicator;
  behaviorCopy = behavior;
  v20.receiver = self;
  v20.super_class = IPProgressServer;
  v14 = [(IPProgressServer *)&v20 init];
  if (v14)
  {
    queue = [behaviorCopy queue];
    queue = v14->_queue;
    v14->_queue = queue;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeProgresses = v14->_activeProgresses;
    v14->_activeProgresses = v17;

    [(IPProgressServer *)v14 setDelegate:delegateCopy];
    [(IPProgressServer *)v14 setDelegateQueue:queueCopy];
    objc_storeStrong(&v14->_behavior, behavior);
    [(IPProgressServerBehavior *)v14->_behavior setDelegate:v14];
    objc_storeStrong(&v14->_accessAdjudicator, adjudicator);
  }

  return v14;
}

- (IPProgressServer)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  v8 = +[IPProgressServer defaultAccessAdjudicator];
  v9 = +[IPProgressServer defaultBehavior];
  v10 = [(IPProgressServer *)self initWithDelegate:delegateCopy delegateQueue:queueCopy accessAdjudicator:v8 behavior:v9];

  return v10;
}

- (id)_queue_progressForIdentity:(id)identity createIfMissing:(BOOL)missing
{
  missingCopy = missing;
  identityCopy = identity;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [(NSMutableDictionary *)self->_activeProgresses objectForKey:identityCopy];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !missingCopy;
  }

  if (!v8)
  {
    v9 = [[IPPublishedIdentityProgress alloc] initWithAppIdentity:identityCopy observer:self];
    [(NSMutableDictionary *)self->_activeProgresses setObject:v9 forKey:identityCopy];
  }

  v10 = [(NSMutableDictionary *)self->_activeProgresses objectForKey:identityCopy];

  return v10;
}

- (void)_queue_removePublishedProgress:(id)progress
{
  queue = self->_queue;
  progressCopy = progress;
  dispatch_assert_queue_V2(queue);
  activeProgresses = self->_activeProgresses;
  miIdentity = [progressCopy miIdentity];

  [(NSMutableDictionary *)activeProgresses removeObjectForKey:miIdentity];
}

- (id)_progressForIdentity:(id)identity createIfMissing:(BOOL)missing
{
  identityCopy = identity;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__IPProgressServer__progressForIdentity_createIfMissing___block_invoke;
  v11[3] = &unk_2797B2278;
  v12 = identityCopy;
  v13 = &v15;
  v11[4] = self;
  missingCopy = missing;
  v8 = identityCopy;
  dispatch_sync(queue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t __57__IPProgressServer__progressForIdentity_createIfMissing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_progressForIdentity:*(a1 + 40) createIfMissing:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)initiateProgressForIdentity:(id)identity
{
  v19 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v5 = _IPServerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = identityCopy;
    _os_log_impl(&dword_254C69000, v5, OS_LOG_TYPE_DEFAULT, "initiating progress for %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__IPProgressServer_initiateProgressForIdentity___block_invoke;
  block[3] = &unk_2797B2120;
  v12 = identityCopy;
  p_buf = &buf;
  block[4] = self;
  v7 = identityCopy;
  dispatch_sync(queue, block);
  v8 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __48__IPProgressServer_initiateProgressForIdentity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_progressForIdentity:*(a1 + 40) createIfMissing:1];
  v3 = (a1 + 48);
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v2;

  v6 = [*(*(*(a1 + 48) + 8) + 40) lsIdentity];
  if (*(a1 + 40))
  {
    [*(*(a1 + 32) + 24) progressForIdentityInitiated:v6];
  }

  else
  {
    v7 = _IPServerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __48__IPProgressServer_initiateProgressForIdentity___block_invoke_cold_1(v3);
    }
  }
}

- (void)identityWasUninstalled:(id)uninstalled
{
  uninstalledCopy = uninstalled;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__IPProgressServer_identityWasUninstalled___block_invoke;
  v7[3] = &unk_2797B1E00;
  v8 = uninstalledCopy;
  selfCopy = self;
  v6 = uninstalledCopy;
  dispatch_sync(queue, v7);
}

void __43__IPProgressServer_identityWasUninstalled___block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v7 = 0;
  v4 = IPLSIdentityFromMIIdentity(v2, &v7);
  v5 = v7;
  if (v4)
  {
    [*(*(a1 + 40) + 24) identityWasUninstalled:v4];
  }

  else
  {
    v6 = _IPDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __43__IPProgressServer_identityWasUninstalled___block_invoke_cold_1(v3);
    }
  }
}

- (void)resume
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _IPServerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    behavior = self->_behavior;
    *buf = 138412290;
    v9 = behavior;
    _os_log_impl(&dword_254C69000, v3, OS_LOG_TYPE_DEFAULT, "Starting progress server with behavior %@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__IPProgressServer_resume__block_invoke;
  block[3] = &unk_2797B2030;
  block[4] = self;
  dispatch_sync(queue, block);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)serverBehavior:(id)behavior acceptedClient:(id)client
{
  v9 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v5 = _IPServerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = clientCopy;
    _os_log_impl(&dword_254C69000, v5, OS_LOG_TYPE_DEFAULT, "new client %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)activeInstallationsForBehavior:(id)behavior
{
  v31 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_activeProgresses;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v19 = 0;
        v11 = IPLSIdentityFromMIIdentity(v10, &v19);
        v12 = v19;
        if (v10)
        {
          v13 = [[IPInstallableStateData alloc] initWithIdentity:v11 isInstalling:1];
          [v4 addObject:v13];
        }

        else
        {
          v13 = _IPDefaultLog();
          if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_ERROR))
          {
            bundleID = [0 bundleID];
            personaUniqueString = [0 personaUniqueString];
            *buf = 138412802;
            v25 = bundleID;
            v26 = 2112;
            v27 = personaUniqueString;
            v15 = personaUniqueString;
            v28 = 2112;
            v29 = v12;
            _os_log_error_impl(&dword_254C69000, &v13->super, OS_LOG_TYPE_ERROR, "could not find identity for %@/%@: %@", buf, 0x20u);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)serverBehavior:(id)behavior progressForIdentity:(id)identity error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  dispatch_assert_queue_V2(self->_queue);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = self->_activeProgresses;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v29 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v28 + 1) + 8 * v12);
      v14 = IPLSIdentityFromMIIdentity(v13, 0);
      if ([v14 isEqual:identityCopy])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v28 objects:v38 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = [(NSMutableDictionary *)self->_activeProgresses objectForKey:v13];
    currentProgress = [v15 currentProgress];

    if (!currentProgress)
    {
      goto LABEL_12;
    }

    v17 = 0;
  }

  else
  {
LABEL_9:

LABEL_12:
    v27 = 0;
    v18 = [identityCopy findApplicationRecordFetchingPlaceholder:2 error:&v27];
    v17 = v27;
    if (v18 && ([v18 isPlaceholder] & 1) == 0)
    {
      currentProgress = objc_alloc_init(IPInstallableProgressData);
      [(IPInstallableProgressData *)currentProgress setInstallPhase:6];
      [(IPInstallableProgressData *)currentProgress setFinalPhase:3];
      v36[0] = &unk_286718588;
      v36[1] = &unk_2867185B8;
      v37[0] = &unk_2867185A0;
      v37[1] = &unk_2867185A0;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
      [(IPInstallableProgressData *)currentProgress setTotalUnitCountsForPhases:v23];

      [(IPInstallableProgressData *)currentProgress setCompletedUnitCount:10 forPhase:2];
      [(IPInstallableProgressData *)currentProgress setCompletedUnitCount:10 forPhase:3];
    }

    else
    {
      isPlaceholder = [v18 isPlaceholder];
      v20 = _IPServerLog();
      v21 = v20;
      if (isPlaceholder)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = identityCopy;
          _os_log_impl(&dword_254C69000, v21, OS_LOG_TYPE_DEFAULT, "asked for progress for identity %@ for which we do not have active progress but a placeholder exists. Returning a resonable ersatz progress.", buf, 0xCu);
        }

        currentProgress = objc_alloc_init(IPInstallableProgressData);
        [(IPInstallableProgressData *)currentProgress setInstallPhase:2];
        [(IPInstallableProgressData *)currentProgress setFinalPhase:3];
        v32[0] = &unk_286718588;
        v32[1] = &unk_2867185B8;
        v33[0] = &unk_2867185A0;
        v33[1] = &unk_2867185A0;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
        [(IPInstallableProgressData *)currentProgress setTotalUnitCountsForPhases:v22];
      }

      else
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [IPProgressServer serverBehavior:identityCopy progressForIdentity:v17 error:v21];
        }

        currentProgress = 0;
      }
    }

    if (error && !currentProgress)
    {
      v24 = v17;
      *error = v17;
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return currentProgress;
}

- (void)identityProgress:(id)progress didChangeProgressData:(id)data
{
  progressCopy = progress;
  dataCopy = data;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__IPProgressServer_identityProgress_didChangeProgressData___block_invoke;
  block[3] = &unk_2797B21B8;
  v12 = progressCopy;
  selfCopy = self;
  v14 = dataCopy;
  v9 = dataCopy;
  v10 = progressCopy;
  dispatch_sync(queue, block);
}

void __59__IPProgressServer_identityProgress_didChangeProgressData___block_invoke(uint64_t *a1)
{
  v2 = a1 + 4;
  v3 = [a1[4] lsIdentity];
  if (v3)
  {
    [*(a1[5] + 24) progressForIdentity:v3 changed:a1[6]];
  }

  else
  {
    v4 = _IPServerLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__IPProgressServer_identityProgress_didChangeProgressData___block_invoke_cold_1(v2);
    }
  }
}

- (void)identityProgress:(id)progress didFinishWithState:(unint64_t)state
{
  progressCopy = progress;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__IPProgressServer_identityProgress_didFinishWithState___block_invoke;
  block[3] = &unk_2797B21E0;
  block[4] = self;
  v10 = progressCopy;
  stateCopy = state;
  v8 = progressCopy;
  dispatch_sync(queue, block);
}

void __56__IPProgressServer_identityProgress_didFinishWithState___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  [*(a1 + 32) _queue_removePublishedProgress:*(a1 + 40)];
  v3 = [*v2 lsIdentity];
  if (v3)
  {
    [*(*(a1 + 32) + 24) progressForIdentity:v3 finishedWithState:*(a1 + 48)];
  }

  else
  {
    v4 = _IPServerLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __56__IPProgressServer_identityProgress_didFinishWithState___block_invoke_cold_1(v2);
    }
  }
}

- (IPProgressServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __48__IPProgressServer_initiateProgressForIdentity___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  v2 = *(*(v1 + 8) + 40);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_254C69000, v3, v4, "published progress %@ had no identity in %s", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void __43__IPProgressServer_identityWasUninstalled___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  v5 = 138412546;
  v6 = v1;
  v7 = 2112;
  v8 = v2;
  _os_log_fault_impl(&dword_254C69000, v3, OS_LOG_TYPE_FAULT, "could not make LS identity from MI identity %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)serverBehavior:(uint64_t)a1 progressForIdentity:(uint64_t)a2 error:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_254C69000, log, OS_LOG_TYPE_ERROR, "asked for progress for totally unknown identity %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __59__IPProgressServer_identityProgress_didChangeProgressData___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_254C69000, v1, v2, "published progress %@ had no identity in %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __56__IPProgressServer_identityProgress_didFinishWithState___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_254C69000, v1, v2, "published progress %@ had no identity in %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end