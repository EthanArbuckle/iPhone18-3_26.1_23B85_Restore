@interface _UIKeyboardArbiter
+ (BOOL)unitTestEnvironment;
+ (void)configureEncodedClassesForXPCConnection:(id)connection;
- (BOOL)activateHandle:(id)handle;
- (BOOL)deactivateHandle:(id)handle;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_UIKeyboardArbiter)initWithLink:(id)link;
- (_UIKeyboardArbiterClientHandle)activeInputDestinationHandle;
- (_UIKeyboardArbiterClientHandle)focusRequestedHandle;
- (_UIKeyboardArbiterClientHandle)keyboardUIHandle;
- (_UIKeyboardArbiterOmniscientDelegate)omniscientDelegate;
- (_UIKeyboardArbiterSceneDelegate)sceneDelegate;
- (id)_activeFocusedHostHandleForKeyboardFocusAndGetLeafHandle:(id *)handle;
- (id)_activeHandleForFocusEvaluation;
- (id)_currentFocusedHandle;
- (id)_handleForSceneIdentity:(id)identity;
- (id)_previouslyFocusedHostHandle;
- (id)focusContext;
- (id)handlerForBundleID:(id)d;
- (id)handlerForPID:(int)d;
- (id)handlerForToken:(id)token;
- (id)hostBundleIdentifierForHandle:(id)handle hosts:(id)hosts;
- (id)hostForHandle:(id)handle hosts:(id)hosts;
- (id)lastActivatedHandle;
- (id)preferredSceneIdentityForKeyboardFocusWithChangeInformation:(id)information;
- (id)remoteFocusContext;
- (int)presentingKeyboardProcessIdentifier;
- (void)_applyPendingSceneFocusUpdateFromOmniscientDelegateForGeneration:(unint64_t)generation;
- (void)_arbiterQueue_keyboardFocusDidChangeWithoutAdvisorInputForGeneration:(unint64_t)generation pid:(int)pid sceneIdentity:(id)identity;
- (void)_cullRecentlyActiveSceneIdentities;
- (void)_findForHandle:(id)handle deepestHandleHandler:(id)handler;
- (void)_findForHandle:(id)handle deepestHandleHandler:(id)handler checklist:(id)checklist;
- (void)_focusSceneHandle:(id)handle previousHostFocusHandle:(id)focusHandle previousLeafFocusHandle:(id)leafFocusHandle shouldStealKeyboardOnSuccess:(BOOL)success;
- (void)_trackRecentlyActiveArbiterHandle:(id)handle;
- (void)_updateCurrentKeyboardFocusToPID:(int)d sceneIdentity:(id)identity;
- (void)activateClients;
- (void)applySceneFocusChange:(id)change forRequest:(id)request;
- (void)attemptConnection;
- (void)captureStateForDebug;
- (void)checkHostingState;
- (void)completeKeyboardStatusChangedFromHandler:(id)handler;
- (void)dealloc;
- (void)handleUnexpectedDeallocForHandler:(id)handler;
- (void)handlerRequestedForcedClientSceneIdentityUpdate:(id)update;
- (void)newClientConnected:(id)connected withExpectedState:(id)state onConnected:(id)onConnected;
- (void)notifyHeightUpdated:(id)updated;
- (void)prewarmFocusContext;
- (void)processWithPID:(int)d foreground:(BOOL)foreground suspended:(BOOL)suspended;
- (void)reevaluateSceneClientSettings;
- (void)retrieveClientDebugInformationWithCompletion:(id)completion;
- (void)retrieveDebugInformationWithCompletion:(id)completion;
- (void)runOperations:(id)operations onHandler:(id)handler fromFunction:(const char *)function;
- (void)scheduleWindowTimeout;
- (void)setActiveInputDestinationHandle:(id)handle;
- (void)setKeyboardTotalDisable:(BOOL)disable withFence:(id)fence fromHandler:(id)handler completionHandler:(id)completionHandler;
- (void)setSuppressionCount:(int)count ofPIDs:(id)ds;
- (void)signalEventSourceChanged:(int64_t)changed fromHandler:(id)handler completionHandler:(id)completionHandler;
- (void)transition:(id)transition eventStage:(unint64_t)stage withInfo:(id)info fromHandler:(id)handler;
- (void)updateInterestedBundleIDs;
- (void)updateKeyboardSceneSettings;
- (void)updateKeyboardStatus:(id)status fromHandler:(id)handler fromFocus:(BOOL)focus;
- (void)updateKeyboardUIStatus:(id)status fromHandler:(id)handler;
- (void)updateSceneClientSettings:(id)settings;
@end

@implementation _UIKeyboardArbiter

- (void)updateInterestedBundleIDs
{
  v27 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  selfCopy = self;
  v4 = self->_clients;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        processHandle = [v9 processHandle];

        if (processHandle)
        {
          v11 = MEMORY[0x277D46FA0];
          processHandle2 = [v9 processHandle];
          v13 = [v11 predicateMatchingHandle:processHandle2];
        }

        else
        {
          if (![v9 processIdentifier])
          {
            continue;
          }

          v14 = MEMORY[0x277D46FA0];
          processHandle2 = [MEMORY[0x277D46F50] identifierWithPid:{objc_msgSend(v9, "processIdentifier")}];
          v13 = [v14 predicateMatchingIdentifier:processHandle2];
        }

        v15 = v13;

        [array addObject:v15];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  processMonitor = selfCopy->_processMonitor;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47___UIKeyboardArbiter_updateInterestedBundleIDs__block_invoke;
  v20[3] = &unk_2797F49D8;
  v21 = array;
  v17 = array;
  [(RBSProcessMonitor *)processMonitor updateConfiguration:v20];

  v18 = *MEMORY[0x277D85DE8];
}

+ (BOOL)unitTestEnvironment
{
  if (qword_28122B770 != -1)
  {
    dispatch_once(&qword_28122B770, &__block_literal_global_330);
  }

  return _MergedGlobals_2;
}

- (id)_activeHandleForFocusEvaluation
{
  WeakRetained = objc_loadWeakRetained(&self->_focusRequestedHandle);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_lastActivatedHandle);
  }

  v6 = v5;

  return v6;
}

- (id)_currentFocusedHandle
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_currentFocusPID != -1)
  {
    v3 = [(_UIKeyboardArbiter *)self handlerForPID:?];
    if (v3)
    {
      goto LABEL_6;
    }

    memset(v16, 0, sizeof(v16));
    v4 = _UIArbiterLog();
    os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    currentFocusPID = self->_currentFocusPID;
    currentFocusSceneIdentity = self->_currentFocusSceneIdentity;
    v13[0] = 67240450;
    v13[1] = currentFocusPID;
    v14 = 2114;
    v15 = currentFocusSceneIdentity;
    LODWORD(v12) = 18;
    v7 = _os_log_send_and_compose_impl();

    v8 = [_UIKeyboardArbiterDebug sharedInstance:v13];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v16];
    [v8 errorWithMessage:v9];

    if (v7 != v16)
    {
      free(v7);
    }
  }

  v3 = 0;
LABEL_6:
  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (_UIKeyboardArbiterOmniscientDelegate)omniscientDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_omniscientDelegate);

  return WeakRetained;
}

- (void)reevaluateSceneClientSettings
{
  dispatch_assert_queue_V2(self->_queue);
  sceneLink = [(_UIKeyboardArbiter *)self sceneLink];
  isAvailable = [sceneLink isAvailable];

  if (isAvailable)
  {
    sceneLink2 = [(_UIKeyboardArbiter *)self sceneLink];
    [sceneLink2 updateSceneSettings];
  }
}

- (id)focusContext
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
    [v4 level];
  }

  v5 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
  remoteFocusContext = [v5 remoteFocusContext];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_clients;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([v12 active])
        {
          remoteFocusContext2 = [v12 remoteFocusContext];
          sceneIdentity = [remoteFocusContext2 sceneIdentity];

          if (sceneIdentity)
          {
            v15 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
            v16 = [v12 isHandlerShowableWithHandler:v15];

            if (v16)
            {
              [v12 level];
              remoteFocusContext3 = [v12 remoteFocusContext];

              remoteFocusContext = remoteFocusContext3;
            }
          }
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];

  return remoteFocusContext;
}

- (_UIKeyboardArbiterSceneDelegate)sceneDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);

  return WeakRetained;
}

- (void)updateKeyboardSceneSettings
{
  dispatch_assert_queue_V2(self->_queue);
  remoteFocusContext = [(_UIKeyboardArbiter *)self remoteFocusContext];
  sceneIdentity = [remoteFocusContext sceneIdentity];

  v5 = sceneIdentity;
  BSDispatchMain();
}

- (id)remoteFocusContext
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
  remoteFocusContext = [WeakRetained remoteFocusContext];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_clients;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 active])
        {
          v11 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
          if (v10 == v11)
          {
            goto LABEL_11;
          }

          v12 = objc_loadWeakRetained(&self->_keyboardUIHandle);

          if (v10 != v12)
          {
            v13 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
            v14 = [v10 isHandlerShowableWithHandler:v13];

            if (v14)
            {
              [v10 remoteFocusContext];
              remoteFocusContext = v11 = remoteFocusContext;
LABEL_11:

              continue;
            }
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return remoteFocusContext;
}

- (void)_cullRecentlyActiveSceneIdentities
{
  v3 = [(NSMutableOrderedSet *)self->_recentlyActiveSceneIdentities count];
  if ([(NSMutableOrderedSet *)self->_recentlyActiveSceneIdentities count]>= 7)
  {
    recentlyActiveSceneIdentities = self->_recentlyActiveSceneIdentities;

    [(NSMutableOrderedSet *)recentlyActiveSceneIdentities removeObjectsInRange:0, v3 - 6];
  }
}

- (void)scheduleWindowTimeout
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = self->_updateCounter + 1;
  self->_updateCounter = v3;
  v4 = dispatch_time(0, 4000000000);
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43___UIKeyboardArbiter_scheduleWindowTimeout__block_invoke;
  v6[3] = &unk_2797F4880;
  v6[4] = self;
  v7 = v3;
  dispatch_after(v4, queue, v6);
}

- (void)captureStateForDebug
{
  v3 = +[_UIKeyboardArbiterDebug sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42___UIKeyboardArbiter_captureStateForDebug__block_invoke;
  v4[3] = &unk_2797F46F8;
  v4[4] = self;
  [v3 addAsynchronousData:v4];
}

- (_UIKeyboardArbiter)initWithLink:(id)link
{
  linkCopy = link;
  v32.receiver = self;
  v32.super_class = _UIKeyboardArbiter;
  v6 = [(_UIKeyboardArbiter *)&v32 init];
  if (v6)
  {
    v7 = MEMORY[0x277CF32B0];
    userInteractive = [MEMORY[0x277CF32C8] userInteractive];
    v9 = [v7 queueWithName:@"com.apple.UIKit.keyboard-arbiter" serviceQuality:userInteractive];
    bsQueue = v6->_bsQueue;
    v6->_bsQueue = v9;

    queue = [(BSServiceDispatchQueue *)v6->_bsQueue queue];
    queue = v6->_queue;
    v6->_queue = queue;

    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    clients = v6->_clients;
    v6->_clients = v13;

    v6->_currentFocusPID = -1;
    v6->_pendingFocusLock._os_unfair_lock_opaque = 0;
    v6->_pendingFocusLock_PID = -1;
    objc_storeStrong(&v6->_sceneLink, link);
    [(_UIKeyboardArbiterLink *)v6->_sceneLink setOwner:v6];
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    recentlyActiveSceneIdentities = v6->_recentlyActiveSceneIdentities;
    v6->_recentlyActiveSceneIdentities = orderedSet;

    v17 = v6->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35___UIKeyboardArbiter_initWithLink___block_invoke;
    block[3] = &unk_2797F4630;
    v18 = v6;
    v31 = v18;
    dispatch_sync(v17, block);
    sceneLink = [(_UIKeyboardArbiter *)v18 sceneLink];
    serviceName = [sceneLink serviceName];

    if (serviceName)
    {
      serviceListener = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:serviceName];
    }

    else
    {
      serviceListener = [MEMORY[0x277CCAE98] serviceListener];
    }

    listener = v18->_listener;
    v18->_listener = serviceListener;

    [(NSXPCListener *)v18->_listener setDelegate:v18];
    objc_initWeak(&location, v18);
    v23 = MEMORY[0x277D46F80];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __35___UIKeyboardArbiter_initWithLink___block_invoke_2;
    v27[3] = &unk_2797F4680;
    objc_copyWeak(&v28, &location);
    v24 = [v23 monitorWithConfiguration:v27];
    processMonitor = v18->_processMonitor;
    v18->_processMonitor = v24;

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  [(RBSProcessMonitor *)self->_processMonitor invalidate];
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = _UIKeyboardArbiter;
  [(_UIKeyboardArbiter *)&v3 dealloc];
}

- (void)retrieveDebugInformationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_group_create();
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy_;
  v23[4] = __Block_byref_object_dispose_;
  v24 = 0;
  dispatch_group_enter(v5);
  v6 = +[_UIKeyboardArbiterDebug sharedInstance];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __61___UIKeyboardArbiter_retrieveDebugInformationWithCompletion___block_invoke;
  v20[3] = &unk_2797F46A8;
  v22 = v23;
  v7 = v5;
  v21 = v7;
  [v6 getDebugInfoDictionariesWithCompletionHandler:v20];

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy_;
  v18[4] = __Block_byref_object_dispose_;
  v19 = 0;
  dispatch_group_enter(v7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61___UIKeyboardArbiter_retrieveDebugInformationWithCompletion___block_invoke_77;
  v15[3] = &unk_2797F46A8;
  v17 = v18;
  v8 = v7;
  v16 = v8;
  [(_UIKeyboardArbiter *)self retrieveClientDebugInformationWithCompletion:v15];
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61___UIKeyboardArbiter_retrieveDebugInformationWithCompletion___block_invoke_2;
  v11[3] = &unk_2797F46D0;
  v13 = v23;
  v14 = v18;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_group_notify(v8, queue, v11);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v23, 8);
}

- (void)retrieveClientDebugInformationWithCompletion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v29 = completionCopy;
    array = [MEMORY[0x277CBEB18] array];
    v7 = dispatch_group_create();
    queue = self->_queue;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __67___UIKeyboardArbiter_retrieveClientDebugInformationWithCompletion___block_invoke;
    v47[3] = &unk_2797F4748;
    v47[4] = self;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __67___UIKeyboardArbiter_retrieveClientDebugInformationWithCompletion___block_invoke_3;
    v44[3] = &unk_2797F4770;
    v9 = array;
    v45 = v9;
    selfCopy = self;
    group = v7;
    AsyncTaskWithTimeout(v7, queue, v47, v44);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = self->_clients;
    v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v41;
      do
      {
        v13 = 0;
        do
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v40 + 1) + 8 * v13);
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          v16 = [v14 description];
          [dictionary setObject:v16 forKey:@"Description"];

          v17 = MEMORY[0x277CCABB0];
          WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
          v19 = [v17 numberWithInt:WeakRetained == v14];
          [dictionary setObject:v19 forKey:@"Active"];

          v20 = MEMORY[0x277CCABB0];
          v21 = objc_loadWeakRetained(&self->_lastActivatedHandle);
          v22 = [v20 numberWithInt:v21 == v14];
          [dictionary setObject:v22 forKey:@"LastActivated"];

          v23 = MEMORY[0x277CCABB0];
          v24 = objc_loadWeakRetained(&self->_focusRequestedHandle);
          v25 = [v23 numberWithInt:v24 == v14];
          [dictionary setObject:v25 forKey:@"FocusRequested"];

          if ([v14 running])
          {
            v35[0] = MEMORY[0x277D85DD0];
            v35[1] = 3221225472;
            v35[2] = __67___UIKeyboardArbiter_retrieveClientDebugInformationWithCompletion___block_invoke_4;
            v35[3] = &unk_2797F47E8;
            v36 = group;
            selfCopy2 = self;
            v38 = dictionary;
            v39 = v9;
            [(_UIKeyboardArbiter *)self runOperations:v35 onHandler:v14 fromFunction:"[_UIKeyboardArbiter retrieveClientDebugInformationWithCompletion:]"];
          }

          else
          {
            [dictionary setObject:@"Suspended" forKey:@"Process"];
            [v9 addObject:dictionary];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v11);
    }

    v26 = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67___UIKeyboardArbiter_retrieveClientDebugInformationWithCompletion___block_invoke_8;
    block[3] = &unk_2797F4720;
    v5 = v29;
    v33 = v9;
    v34 = v29;
    v27 = v9;
    dispatch_group_notify(group, v26, block);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)attemptConnection
{
  dispatch_assert_queue_V2(self->_queue);
  sceneLink = [(_UIKeyboardArbiter *)self sceneLink];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39___UIKeyboardArbiter_attemptConnection__block_invoke;
  v4[3] = &unk_2797F4810;
  v4[4] = self;
  [sceneLink createSceneWithCompletion:v4];
}

- (void)runOperations:(id)operations onHandler:(id)handler fromFunction:(const char *)function
{
  v69 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  handlerCopy = handler;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = _UIArbiterLog();
  os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  v33 = 136315394;
  functionCopy3 = function;
  v35 = 2112;
  v36 = handlerCopy;
  LODWORD(v26) = 22;
  v11 = _os_log_send_and_compose_impl();

  v12 = [_UIKeyboardArbiterDebug sharedInstance:&v33];
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v37];
  [v12 debugWithMessage:v13];

  if (v11 != &v37)
  {
    free(v11);
  }

  dispatch_assert_queue_V2(self->_queue);
  if ([handlerCopy running])
  {
    connection = [handlerCopy connection];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __59___UIKeyboardArbiter_runOperations_onHandler_fromFunction___block_invoke;
    v30[3] = &unk_2797F4838;
    functionCopy2 = function;
    v15 = handlerCopy;
    v31 = v15;
    v16 = [connection remoteObjectProxyWithErrorHandler:v30];

    if (v16)
    {
      if ([v15 takeProcessAssertionOnRemoteWithQueue:self->_queue])
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __59___UIKeyboardArbiter_runOperations_onHandler_fromFunction___block_invoke_125;
        v28[3] = &unk_2797F45E0;
        v28[4] = self;
        v29 = v15;
        operationsCopy[2](operationsCopy, v16, v28);
      }

      else
      {
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v21 = _UIArbiterLog();
        os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
        v33 = 138412290;
        functionCopy3 = handlerCopy;
        LODWORD(v27) = 12;
        v22 = _os_log_send_and_compose_impl();

        v23 = [_UIKeyboardArbiterDebug sharedInstance:&v33];
        v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v37];
        [v23 errorWithMessage:v24];

        if (v22 != &v37)
        {
          free(v22);
        }

        [v15 releaseProcessAssertion];
      }
    }

    else
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v17 = _UIArbiterLog();
      os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
      v33 = 136315394;
      functionCopy3 = function;
      v35 = 2112;
      v36 = handlerCopy;
      LODWORD(v27) = 22;
      v18 = _os_log_send_and_compose_impl();

      v19 = [_UIKeyboardArbiterDebug sharedInstance:&v33];
      v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v37];
      [v19 errorWithMessage:v20];

      if (v18 != &v37)
      {
        free(v18);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)hostForHandle:(id)handle hosts:(id)hosts
{
  v27 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  hostsCopy = hosts;
  remoteFocusContext = [handleCopy remoteFocusContext];
  sceneIdentity = [remoteFocusContext sceneIdentity];

  if (sceneIdentity)
  {
    v10 = 0;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = self->_clients;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          if ([hostsCopy containsObject:{v16, v22}] & 1) == 0 && (objc_msgSend(v16, "isHostingPID:", objc_msgSend(handleCopy, "processIdentifier")))
          {
            [hostsCopy addObject:v16];
            v17 = [(_UIKeyboardArbiter *)self hostForHandle:v16 hosts:hostsCopy];
            v18 = v17;
            if (v17)
            {
              v19 = v17;
            }

            else
            {
              v19 = v16;
            }

            v10 = v19;

            goto LABEL_17;
          }
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_17:
  }

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)hostBundleIdentifierForHandle:(id)handle hosts:(id)hosts
{
  v4 = [(_UIKeyboardArbiter *)self hostForHandle:handle hosts:hosts];
  bundleIdentifier = [v4 bundleIdentifier];

  return bundleIdentifier;
}

- (void)_trackRecentlyActiveArbiterHandle:(id)handle
{
  handleCopy = handle;
  remoteFocusContext = [handleCopy remoteFocusContext];
  sceneIdentity = [remoteFocusContext sceneIdentity];
  if (sceneIdentity)
  {
    v6 = sceneIdentity;
    isKeyboardOnScreen = [handleCopy isKeyboardOnScreen];

    if (isKeyboardOnScreen)
    {
      recentlyActiveSceneIdentities = self->_recentlyActiveSceneIdentities;
      remoteFocusContext2 = [handleCopy remoteFocusContext];
      sceneIdentity2 = [remoteFocusContext2 sceneIdentity];
      stringRepresentation = [sceneIdentity2 stringRepresentation];
      [(NSMutableOrderedSet *)recentlyActiveSceneIdentities addObject:stringRepresentation];

      [(_UIKeyboardArbiter *)self _cullRecentlyActiveSceneIdentities];
    }
  }

  else
  {
  }
}

- (void)updateKeyboardUIStatus:(id)status fromHandler:(id)handler
{
  v95 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  handlerCopy = handler;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v5 = _UIArbiterLog();
  os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  v57 = 138412802;
  v58 = objc_opt_class();
  v59 = 2112;
  v60 = statusCopy;
  v61 = 2112;
  v62 = handlerCopy;
  v6 = v58;
  LODWORD(v41) = 32;
  v7 = _os_log_send_and_compose_impl();

  v8 = [_UIKeyboardArbiterDebug sharedInstance:&v57];
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v63];
  [v8 infoWithMessage:v9];

  if (v7 != &v63)
  {
    free(v7);
  }

  dispatch_assert_queue_V2(self->_queue);
  obj = +[_UIKeyboardArbiterDebug sharedInstance];
  objc_sync_enter(obj);
  if (([statusCopy hasValidNotification] & 1) == 0)
  {
    v10 = [statusCopy copy];
    lastUIInformation = self->_lastUIInformation;
    self->_lastUIInformation = v10;
  }

  v12 = [statusCopy copy];
  copyWithoutFence = [v12 copyWithoutFence];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __57___UIKeyboardArbiter_updateKeyboardUIStatus_fromHandler___block_invoke;
  v53[3] = &unk_2797F48A8;
  v53[4] = self;
  v44 = v12;
  v54 = v44;
  v43 = copyWithoutFence;
  v55 = v43;
  v14 = MEMORY[0x259C414B0](v53);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v15 = self->_clients;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (!v16)
  {

LABEL_27:
    bundleIdentifier = [statusCopy bundleIdentifier];
    pendingBundleIdentifier = self->_pendingBundleIdentifier;
    self->_pendingBundleIdentifier = bundleIdentifier;

    v36 = MEMORY[0x259C414B0](v14);
    goto LABEL_28;
  }

  v17 = 0;
  v18 = *v50;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v50 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v49 + 1) + 8 * i);
      if (([v20 inputUIHost] & 1) == 0)
      {
        if (v17)
        {
          v17 = 1;
        }

        else
        {
          bundleIdentifier2 = [v20 bundleIdentifier];
          bundleIdentifier3 = [statusCopy bundleIdentifier];
          v17 = [bundleIdentifier2 isEqualToString:bundleIdentifier3];
        }

        if ([v20 deactivating])
        {
          [v20 setPendingNotifyKeyboardChanged:v14];
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v23 = _UIArbiterLog();
          os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
          v24 = objc_opt_class();
          v57 = 138412546;
          v58 = v24;
          v59 = 2112;
          v60 = v20;
          v25 = v24;
          LODWORD(v42) = 22;
          v26 = _os_log_send_and_compose_impl();

          v27 = [_UIKeyboardArbiterDebug sharedInstance:&v57];
          v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v63];
          [v27 infoWithMessage:v28];

          if (v26 != &v63)
          {
            free(v26);
          }
        }

        else if (![statusCopy resizing] || objc_msgSend(v20, "active"))
        {
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v29 = _UIArbiterLog();
          os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
          v30 = objc_opt_class();
          v57 = 138412546;
          v58 = v30;
          v59 = 2112;
          v60 = v20;
          v31 = v30;
          LODWORD(v42) = 22;
          v32 = _os_log_send_and_compose_impl();

          v33 = [_UIKeyboardArbiterDebug sharedInstance:&v57];
          v34 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v63];
          [v33 infoWithMessage:v34];

          if (v32 != &v63)
          {
            free(v32);
          }

          (v14)[2](v14, v20);
        }
      }
    }

    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v49 objects:v56 count:16];
  }

  while (v16);

  if ((v17 & 1) == 0)
  {
    goto LABEL_27;
  }

  v35 = self->_pendingBundleIdentifier;
  self->_pendingBundleIdentifier = 0;

  v36 = 0;
LABEL_28:
  pendingNotifyKeyboardChanged = self->_pendingNotifyKeyboardChanged;
  self->_pendingNotifyKeyboardChanged = v36;

  [statusCopy resetAnimationFencing];
  [v44 resetAnimationFencing];

  objc_sync_exit(obj);
  v40 = *MEMORY[0x277D85DE8];
}

- (void)setActiveInputDestinationHandle:(id)handle
{
  obj = handle;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v6 = obj;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
    if (!obj || !WeakRetained)
    {
      goto LABEL_6;
    }

    v8 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);

    v6 = obj;
    if (v8 != obj)
    {
      WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
      [(_UIKeyboardArbiter *)self runOperations:&__block_literal_global_129 onHandler:WeakRetained fromFunction:"[_UIKeyboardArbiter setActiveInputDestinationHandle:]"];
LABEL_6:

      v6 = obj;
    }
  }

  objc_storeWeak(&self->_activeInputDestinationHandle, v6);
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v11 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
      [(_UIKeyboardArbiter *)self runOperations:&__block_literal_global_131 onHandler:v12 fromFunction:"[_UIKeyboardArbiter setActiveInputDestinationHandle:]"];
    }
  }

  v13 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);

  if (!v13)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_133);
  }
}

- (void)updateKeyboardStatus:(id)status fromHandler:(id)handler fromFocus:(BOOL)focus
{
  focusCopy = focus;
  v210 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  handlerCopy = handler;
  selfCopy = self;
  dispatch_assert_queue_V2(self->_queue);
  array = [MEMORY[0x277CBEB18] array];
  v155 = [(_UIKeyboardArbiter *)self hostForHandle:handlerCopy hosts:array];

  v9 = statusCopy;
  if (focusCopy || ([statusCopy keyboardOnScreen] & 1) != 0 || (v10 = objc_loadWeakRetained(&self->_activeInputDestinationHandle), v10, v10 == handlerCopy))
  {
    WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
    if (WeakRetained)
    {
      v12 = WeakRetained;
      v13 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
      if (v13 == handlerCopy || (pidOnDeviceLocked = selfCopy->_pidOnDeviceLocked, pidOnDeviceLocked != [handlerCopy processIdentifier]))
      {
      }

      else
      {
        v15 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
        bundleIdentifier = [v15 bundleIdentifier];
        v17 = [bundleIdentifier isEqualToString:@"com.apple.Spotlight"];

        v9 = statusCopy;
        if ((v17 & 1) == 0)
        {
          goto LABEL_8;
        }
      }
    }

    if (([v9 keyboardOnScreen] & 1) == 0)
    {
      selfCopy->_pidOnDeviceLocked = 0;
    }

    bundleIdentifier2 = [v155 bundleIdentifier];
    v151 = [bundleIdentifier2 isEqualToString:@"com.apple.InputUI"];

    v27 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
    v28 = v27;
    if (v27 == handlerCopy)
    {
      v29 = statusCopy;
      keyboardOnScreen = [statusCopy keyboardOnScreen];

      if ((keyboardOnScreen & 1) == 0)
      {
        p_previouslyActiveHandle = &selfCopy->_previouslyActiveHandle;
        v34 = handlerCopy;
        goto LABEL_23;
      }
    }

    else
    {

      v29 = statusCopy;
    }

    v31 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
    if (v31 && [v29 keyboardOnScreen])
    {

      if (v151)
      {
        v32 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
        objc_storeWeak(&selfCopy->_previouslyActiveHandle, v32);

        goto LABEL_24;
      }
    }

    else
    {
    }

    p_previouslyActiveHandle = &selfCopy->_previouslyActiveHandle;
    v34 = 0;
LABEL_23:
    objc_storeWeak(p_previouslyActiveHandle, v34);
LABEL_24:
    hostBundleIdentifier = [v29 hostBundleIdentifier];
    v36 = [hostBundleIdentifier isEqualToString:@"com.apple.InputUI"];

    if ((v36 & 1) == 0)
    {
      bundleIdentifier3 = [v155 bundleIdentifier];
      [statusCopy setHostBundleIdentifier:bundleIdentifier3];
    }

    [statusCopy setHostProcessIdentifier:{objc_msgSend(v155, "processIdentifier")}];
    [statusCopy setProcessIdentifier:{objc_msgSend(handlerCopy, "processIdentifier")}];
    sourceBundleIdentifier = [statusCopy sourceBundleIdentifier];

    if (!sourceBundleIdentifier)
    {
      bundleIdentifier4 = [handlerCopy bundleIdentifier];
      [statusCopy setSourceBundleIdentifier:bundleIdentifier4];
    }

    v40 = statusCopy;
    if ([statusCopy keyboardOnScreen])
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      v43 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
      v40 = statusCopy;
      if (v43)
      {
        v44 = objc_loadWeakRetained(&selfCopy->_omniscientDelegate);
        if (objc_opt_respondsToSelector())
        {
          v45 = objc_loadWeakRetained(&selfCopy->_omniscientDelegate);
          remoteFocusContext = [handlerCopy remoteFocusContext];
          sceneIdentity = [remoteFocusContext sceneIdentity];
          v48 = [v45 shouldKeyboardBeWindowSizedForHostWithIdentity:sceneIdentity];

          v40 = statusCopy;
          if (v48)
          {
            v162 = [statusCopy copyWithoutIAVKeyboardRect:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
            goto LABEL_37;
          }
        }

        else
        {
        }
      }
    }

    [v40 keyboardPosition];
    v49 = [v40 copyWithoutIAVKeyboardRect:?];
    [v40 keyboardPosition];
    v51 = v50;
    [v40 keyboardPositionWithIAV];
    v162 = v49;
    if (vabdd_f64(v51, v52) > 0.00000011920929)
    {
      [v40 keyboardPositionWithIAV];
      [v49 setKeyboardPositionWithRemoteIAV:?];
    }

LABEL_37:
    obj = +[_UIKeyboardArbiterDebug sharedInstance];
    objc_sync_enter(obj);
    v53 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);

    if (v53 == handlerCopy)
    {
      goto LABEL_46;
    }

    array2 = [MEMORY[0x277CBEB18] array];
    v55 = [(_UIKeyboardArbiter *)selfCopy hostForHandle:handlerCopy hosts:array2];

    v56 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
    if ([v56 running])
    {
      v57 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
      if ([v57 isKeyboardOnScreen])
      {
        lastUpdate = [(_UIKeyboardArbiter *)selfCopy lastUpdate];
        hostBundleIdentifier2 = [lastUpdate hostBundleIdentifier];
        if (![hostBundleIdentifier2 isEqualToString:@"com.apple.springboard"])
        {

LABEL_135:
          v149 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          [handlerCopy setPrevActiveIdentifier:{objc_msgSend(v149, "processIdentifier")}];

          [v55 setPrevActiveIdentifier:{objc_msgSend(handlerCopy, "prevActiveIdentifier")}];
          goto LABEL_45;
        }

        bundleIdentifier5 = [v55 bundleIdentifier];
        v61 = [bundleIdentifier5 isEqualToString:@"com.apple.springboard"];

        if (v61)
        {
          goto LABEL_135;
        }

LABEL_45:

LABEL_46:
        keyboardOnScreen2 = [statusCopy keyboardOnScreen];
        v63 = handlerCopy;
        if (!keyboardOnScreen2)
        {
          v63 = 0;
        }

        v154 = v63;
        if (((v154 == 0) & v151) == 1)
        {
          v64 = objc_loadWeakRetained(&selfCopy->_previouslyActiveHandle);

          if (v64)
          {
            v65 = _UIArbiterEventsLog();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              v66 = objc_loadWeakRetained(&selfCopy->_previouslyActiveHandle);
              descriptionForLog = [v66 descriptionForLog];
              *buf = 138543362;
              *&buf[4] = descriptionForLog;
              _os_log_impl(&dword_2557BA000, v65, OS_LOG_TYPE_DEFAULT, "Trying to restore previouslyActiveHandle: %{public}@", buf, 0xCu);
            }
          }

          v154 = objc_loadWeakRetained(&selfCopy->_previouslyActiveHandle);
        }

        v152 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);

        inputUIOOP = [MEMORY[0x277D75658] inputUIOOP];
        if (v154)
        {
          v69 = 0;
        }

        else
        {
          v69 = inputUIOOP;
        }

        if (v69 == 1)
        {
          v70 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          if (v70 && ([handlerCopy bundleIdentifier], v71 = objc_claimAutoreleasedReturnValue(), v72 = objc_msgSend(v71, "isEqualToString:", @"com.apple.Spotlight"), v71, v72))
          {
            v73 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
            bundleIdentifier6 = [v73 bundleIdentifier];
            v75 = [bundleIdentifier6 isEqualToString:@"com.apple.Spotlight"];

            if ((v75 & 1) == 0)
            {
              v154 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
              v208 = 0u;
              v209 = 0u;
              v206 = 0u;
              v207 = 0u;
              v204 = 0u;
              v205 = 0u;
              v202 = 0u;
              v203 = 0u;
              v200 = 0u;
              v201 = 0u;
              v198 = 0u;
              v199 = 0u;
              v196 = 0u;
              v197 = 0u;
              v194 = 0u;
              v195 = 0u;
              v192 = 0u;
              v193 = 0u;
              v190 = 0u;
              v191 = 0u;
              v188 = 0u;
              v189 = 0u;
              v186 = 0u;
              v187 = 0u;
              v184 = 0u;
              v185 = 0u;
              v182 = 0u;
              v183 = 0u;
              v180 = 0u;
              v181 = 0u;
              memset(buf, 0, sizeof(buf));
              v76 = _UIArbiterLog();
              os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG);
              v77 = objc_opt_class();
              v78 = v77;
              v79 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
              v173 = 138412546;
              v174 = v77;
              v175 = 2112;
              v176 = v79;
              LODWORD(v150) = 22;
              v80 = _os_log_send_and_compose_impl();

              v81 = [_UIKeyboardArbiterDebug sharedInstance:&v173];
              v82 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
              [v81 debugWithMessage:v82];

              if (v80 != buf)
              {
                free(v80);
              }

              [statusCopy resetAnimationFencing];
              [v162 resetAnimationFencing];
LABEL_132:

              objc_sync_exit(obj);
              goto LABEL_133;
            }
          }

          else
          {
          }
        }

        v83 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
        prevActiveIdentifier = [v83 prevActiveIdentifier];
        if (prevActiveIdentifier == [handlerCopy processIdentifier])
        {
          v85 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          bundleIdentifier7 = [v85 bundleIdentifier];
          if ([bundleIdentifier7 isEqualToString:@"com.apple.siri"])
          {

            goto LABEL_82;
          }

          v105 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          bundleIdentifier8 = [v105 bundleIdentifier];
          v107 = [bundleIdentifier8 isEqualToString:@"com.apple.WritingToolsUIService"];

          if (v107)
          {
LABEL_82:
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0u;
            v195 = 0u;
            v192 = 0u;
            v193 = 0u;
            v190 = 0u;
            v191 = 0u;
            v188 = 0u;
            v189 = 0u;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v182 = 0u;
            v183 = 0u;
            v180 = 0u;
            v181 = 0u;
            memset(buf, 0, sizeof(buf));
            v108 = _UIArbiterLog();
            os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG);
            v109 = objc_opt_class();
            bundleIdentifier9 = [handlerCopy bundleIdentifier];
            v111 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
            bundleIdentifier10 = [v111 bundleIdentifier];
            v173 = 138412802;
            v174 = v109;
            v175 = 2112;
            v176 = bundleIdentifier9;
            v177 = 2112;
            v178 = bundleIdentifier10;
            LODWORD(v150) = 32;
            v113 = _os_log_send_and_compose_impl();

            v114 = [_UIKeyboardArbiterDebug sharedInstance:&v173];
            v115 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
            [v114 debugWithMessage:v115];

            if (v113 != buf)
            {
              free(v113);
            }

            goto LABEL_132;
          }
        }

        else
        {
        }

        v87 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
        bundleIdentifier11 = [v87 bundleIdentifier];
        if ([bundleIdentifier11 isEqualToString:@"com.apple.CoreAuthUI"])
        {
        }

        else
        {
          bundleIdentifier12 = [v87 bundleIdentifier];
          v90 = [bundleIdentifier12 isEqualToString:@"com.apple.LocalAuthenticationUIService"];

          if (!v90)
          {
            goto LABEL_77;
          }
        }

        if ([statusCopy keyboardOnScreen])
        {
          v91 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          isKeyboardOnScreen = [v91 isKeyboardOnScreen];

          if (isKeyboardOnScreen)
          {
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0u;
            v195 = 0u;
            v192 = 0u;
            v193 = 0u;
            v190 = 0u;
            v191 = 0u;
            v188 = 0u;
            v189 = 0u;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v182 = 0u;
            v183 = 0u;
            v180 = 0u;
            v181 = 0u;
            memset(buf, 0, sizeof(buf));
            v93 = _UIArbiterLog();
            os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG);
            v94 = objc_opt_class();
            bundleIdentifier13 = [handlerCopy bundleIdentifier];
            v96 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
            bundleIdentifier14 = [v96 bundleIdentifier];
            v173 = 138412802;
            v174 = v94;
            v175 = 2112;
            v176 = bundleIdentifier13;
            v177 = 2112;
            v178 = bundleIdentifier14;
            LODWORD(v150) = 32;
            v98 = _os_log_send_and_compose_impl();

            v99 = [_UIKeyboardArbiterDebug sharedInstance:&v173];
            v100 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
            [v99 debugWithMessage:v100];

            if (v98 != buf)
            {
              free(v98);
            }

            processIdentifier = [handlerCopy processIdentifier];
            v102 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
            [v102 setPrevActiveIdentifier:processIdentifier];

            goto LABEL_132;
          }

LABEL_78:
          if ([statusCopy keyboardOnScreen])
          {
            goto LABEL_88;
          }

          v103 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          bundleIdentifier15 = [v103 bundleIdentifier];
          if ([bundleIdentifier15 isEqualToString:@"com.apple.CoreAuthUI"])
          {
          }

          else
          {
            bundleIdentifier16 = [v103 bundleIdentifier];
            v117 = [bundleIdentifier16 isEqualToString:@"com.apple.LocalAuthenticationUIService"];

            if (!v117)
            {
              goto LABEL_87;
            }
          }

          v118 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          v119 = [v118 prevActiveIdentifier] == 0;

          if (v119)
          {
            goto LABEL_88;
          }

          v120 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          [v120 activeProcessResign];

          v103 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          [v103 setPrevActiveIdentifier:0];
LABEL_87:

LABEL_88:
          v170[0] = MEMORY[0x277D85DD0];
          v170[1] = 3221225472;
          v170[2] = __65___UIKeyboardArbiter_updateKeyboardStatus_fromHandler_fromFocus___block_invoke;
          v170[3] = &unk_2797F48F8;
          v170[4] = selfCopy;
          v121 = handlerCopy;
          v171 = v121;
          v158 = MEMORY[0x259C414B0](v170);
          if (!focusCopy || (v122 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle), v123 = v122 == 0, v122, v123))
          {
            v161 = 0;
          }

          else
          {
            v161 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
            v158[2]();
          }

          [(_UIKeyboardArbiter *)selfCopy setActiveInputDestinationHandle:v154];
          v124 = _UIArbiterEventsLog();
          if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
          {
            v125 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
            descriptionForLog2 = [v125 descriptionForLog];
            *buf = 138543362;
            *&buf[4] = descriptionForLog2;
            _os_log_impl(&dword_2557BA000, v124, OS_LOG_TYPE_DEFAULT, "set activeInputDestination:%{public}@", buf, 0xCu);
          }

          v127 = _UIArbiterLog();
          if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
          {
            v128 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
            *buf = 138543618;
            *&buf[4] = v128;
            *&buf[12] = 2114;
            *&buf[14] = statusCopy;
            _os_log_impl(&dword_2557BA000, v127, OS_LOG_TYPE_DEFAULT, "active input destination is now %{public}@; information: %{public}@", buf, 0x16u);
          }

          if ([statusCopy keyboardOnScreen])
          {
            v129 = v162;
          }

          else
          {
            v129 = 0;
          }

          [(_UIKeyboardArbiter *)selfCopy setLastUpdate:v129];
          v130 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          [(_UIKeyboardArbiter *)selfCopy _trackRecentlyActiveArbiterHandle:v130];

          v168 = 0u;
          v169 = 0u;
          v166 = 0u;
          v167 = 0u;
          v159 = selfCopy->_clients;
          v131 = [(NSMutableArray *)v159 countByEnumeratingWithState:&v166 objects:v172 count:16];
          if (v131)
          {
            v132 = *v167;
            do
            {
              for (i = 0; i != v131; ++i)
              {
                if (*v167 != v132)
                {
                  objc_enumerationMutation(v159);
                }

                v134 = *(*(&v166 + 1) + 8 * i);
                v135 = v162;
                if ([v134 isHandlerShowableWithHandler:v121])
                {
                  v136 = statusCopy;

                  if ([v134 wantedState] && (objc_msgSend(v134, "active") & 1) == 0)
                  {
                    sceneLayer = [v134 sceneLayer];
                    contextID = [sceneLayer contextID];
                    remoteFocusContext2 = [v134 remoteFocusContext];
                    [v134 level];
                    [v134 setWindowContextID:contextID focusContext:remoteFocusContext2 windowState:1 withLevel:?];
                  }
                }

                else
                {
                  v136 = v135;
                }

                if (v134 != v121 || [v121 multipleScenes])
                {
                  if ([v134 active] && objc_msgSend(v134, "deactivating"))
                  {
                    bundleIdentifier17 = [v121 bundleIdentifier];
                    v141 = [bundleIdentifier17 isEqualToString:@"com.apple.Spotlight"];

                    if ((v141 & 1) == 0)
                    {
                      v142 = v121;
                      bundleIdentifier18 = [v142 bundleIdentifier];
                      if ([bundleIdentifier18 isEqualToString:@"com.apple.CoreAuthUI"])
                      {
                      }

                      else
                      {
                        bundleIdentifier19 = [v142 bundleIdentifier];
                        v145 = [bundleIdentifier19 isEqualToString:@"com.apple.LocalAuthenticationUIService"];

                        if ((v145 & 1) == 0)
                        {
                          [(_UIKeyboardArbiter *)selfCopy runOperations:&__block_literal_global_153 onHandler:v134 fromFunction:"[_UIKeyboardArbiter updateKeyboardStatus:fromHandler:fromFocus:]"];
                        }
                      }
                    }

                    if (v134 != v161)
                    {
                      v146 = dispatch_time(0, 500000000);
                      queue = selfCopy->_queue;
                      block[0] = MEMORY[0x277D85DD0];
                      block[1] = 3221225472;
                      block[2] = __65___UIKeyboardArbiter_updateKeyboardStatus_fromHandler_fromFocus___block_invoke_2_154;
                      block[3] = &unk_2797F4920;
                      block[4] = v134;
                      block[5] = selfCopy;
                      v165 = v158;
                      v164 = v136;
                      dispatch_after(v146, queue, block);
                    }
                  }

                  else if (v134 != v161)
                  {
                    (v158[2])(v158, v134, v136);
                  }
                }
              }

              v131 = [(NSMutableArray *)v159 countByEnumeratingWithState:&v166 objects:v172 count:16];
            }

            while (v131);
          }

          [statusCopy resetAnimationFencing];
          [v162 resetAnimationFencing];
          if (v154 != v152 && (([MEMORY[0x277D75658] inputUIOOP] & 1) != 0 || v151 && objc_msgSend(MEMORY[0x277D75658], "usesInputSystemUIForAutoFillOnly")))
          {
            [(_UIKeyboardArbiter *)selfCopy reevaluateSceneClientSettings];
          }

          [(_UIKeyboardArbiter *)selfCopy scheduleWindowTimeout];
          if (([statusCopy resizing] & 1) == 0)
          {
            [(_UIKeyboardArbiter *)selfCopy captureStateForDebug];
          }

          goto LABEL_132;
        }

LABEL_77:

        goto LABEL_78;
      }
    }

    goto LABEL_45;
  }

LABEL_8:
  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  memset(buf, 0, sizeof(buf));
  v18 = _UIArbiterLog();
  os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
  v19 = objc_opt_class();
  v20 = v19;
  bundleIdentifier20 = [handlerCopy bundleIdentifier];
  v22 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
  v173 = 138412802;
  v174 = v19;
  v175 = 2112;
  v176 = bundleIdentifier20;
  v177 = 2112;
  v178 = v22;
  LODWORD(v150) = 32;
  v23 = _os_log_send_and_compose_impl();

  v24 = [_UIKeyboardArbiterDebug sharedInstance:&v173];
  v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v24 debugWithMessage:v25];

  if (v23 != buf)
  {
    free(v23);
  }

LABEL_133:

  v148 = *MEMORY[0x277D85DE8];
}

- (void)completeKeyboardStatusChangedFromHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_clients;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10 != handlerCopy)
        {
          [(_UIKeyboardArbiter *)self runOperations:&__block_literal_global_156 onHandler:v10 fromFunction:"[_UIKeyboardArbiter completeKeyboardStatusChangedFromHandler:]", v12];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_findForHandle:(id)handle deepestHandleHandler:(id)handler checklist:(id)checklist
{
  v25 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  handlerCopy = handler;
  checklistCopy = checklist;
  v11 = checklistCopy;
  if (handleCopy)
  {
    [checklistCopy addObject:handleCopy];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_clients;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v13)
  {

LABEL_16:
    handlerCopy[2](handlerCopy, handleCopy);
    goto LABEL_17;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v21;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v21 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v20 + 1) + 8 * i);
      if (([v11 containsObject:{v18, v20}] & 1) == 0 && objc_msgSend(v18, "isHostingPID:", objc_msgSend(handleCopy, "processIdentifier")))
      {
        ++v15;
        [(_UIKeyboardArbiter *)self _findForHandle:v18 deepestHandleHandler:handlerCopy checklist:v11];
      }
    }

    v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v14);

  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_findForHandle:(id)handle deepestHandleHandler:(id)handler
{
  v6 = MEMORY[0x277CBEB18];
  handlerCopy = handler;
  handleCopy = handle;
  array = [v6 array];
  [(_UIKeyboardArbiter *)self _findForHandle:handleCopy deepestHandleHandler:handlerCopy checklist:array];
}

- (void)notifyHeightUpdated:(id)updated
{
  v37 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  dispatch_assert_queue_V2(self->_queue);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __42___UIKeyboardArbiter_notifyHeightUpdated___block_invoke;
  v33[3] = &unk_2797F4948;
  v33[4] = self;
  v6 = dictionary;
  v34 = v6;
  [(_UIKeyboardArbiter *)self _findForHandle:updatedCopy deepestHandleHandler:v33];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  allValues = [v6 allValues];
  v8 = [allValues countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v29 + 1) + 8 * i) doubleValue];
        if (v11 < v13)
        {
          v11 = v13;
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = v6;
  allKeys = [v6 allKeys];
  v15 = [allKeys countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(allKeys);
        }

        v19 = *(*(&v25 + 1) + 8 * j);
        intValue = [v19 intValue];
        if (intValue != [updatedCopy processIdentifier])
        {
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __42___UIKeyboardArbiter_notifyHeightUpdated___block_invoke_2;
          v24[3] = &__block_descriptor_40_e49_v24__0____UIKeyboardArbitrationClient__8___v___16l;
          *&v24[4] = v11;
          v21 = -[_UIKeyboardArbiter handlerForPID:](self, "handlerForPID:", [v19 intValue]);
          [(_UIKeyboardArbiter *)self runOperations:v24 onHandler:v21 fromFunction:"[_UIKeyboardArbiter notifyHeightUpdated:]"];
        }
      }

      v16 = [allKeys countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v16);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)newClientConnected:(id)connected withExpectedState:(id)state onConnected:(id)onConnected
{
  connectedCopy = connected;
  stateCopy = state;
  onConnectedCopy = onConnected;
  dispatch_assert_queue_V2(self->_queue);
  if ([stateCopy keyboardOnScreen] && (v11 = objc_loadWeakRetained(&self->_disablingHandle), v11, !v11))
  {
    v18 = stateCopy;
    if (self->_pidOnDeviceLocked >= 1 && [connectedCopy processIdentifier] == self->_pidOnDeviceLocked)
    {
      WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);

      if (WeakRetained)
      {
        informationForKeyboardDown = [MEMORY[0x277D76088] informationForKeyboardDown];

        v18 = informationForKeyboardDown;
      }

      else
      {
        self->_pidOnDeviceLocked = 0;
      }
    }

    [(_UIKeyboardArbiter *)self updateKeyboardStatus:v18 fromHandler:connectedCopy];
    (*(onConnectedCopy + 2))(onConnectedCopy, 0, 0, self->_lastEventSource, 0);
  }

  else
  {
    v12 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
    deactivating = [v12 deactivating];

    if (deactivating)
    {
      deactivating2 = 1;
    }

    else
    {
      v15 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
      remoteFocusContext = [v15 remoteFocusContext];
      sceneIdentity = [remoteFocusContext sceneIdentity];

      if (sceneIdentity)
      {
        deactivating2 = 0;
      }

      else
      {
        v21 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
        array = [MEMORY[0x277CBEB18] array];
        v23 = [(_UIKeyboardArbiter *)self hostForHandle:v21 hosts:array];

        deactivating2 = [v23 deactivating];
      }
    }

    lastUpdate = [(_UIKeyboardArbiter *)self lastUpdate];

    if (!lastUpdate || deactivating2)
    {
      informationForKeyboardDown2 = [MEMORY[0x277D76088] informationForKeyboardDown];
    }

    else
    {
      informationForKeyboardDown2 = [(_UIKeyboardArbiter *)self lastUpdate];
    }

    v18 = informationForKeyboardDown2;
    lastUIInformation = self->_lastUIInformation;
    if ((lastUIInformation == 0) | deactivating2 & 1)
    {
      v27 = objc_alloc(MEMORY[0x277D76090]);
      v28 = [v27 initWithKeyboardFrame:0 onScreen:0 animated:0 tracking:0 wantsFence:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    }

    else
    {
      v28 = lastUIInformation;
    }

    v29 = v28;
    lastEventSource = self->_lastEventSource;
    v31 = objc_loadWeakRetained(&self->_disablingHandle);
    (*(onConnectedCopy + 2))(onConnectedCopy, v18, v29, lastEventSource, v31 != 0);
  }

  bundleIdentifier = [connectedCopy bundleIdentifier];
  v33 = [bundleIdentifier isEqualToString:@"com.apple.Spotlight"];

  v41 = connectedCopy;
  bundleIdentifier2 = [v41 bundleIdentifier];
  if ([bundleIdentifier2 isEqualToString:@"com.apple.CoreAuthUI"])
  {
    v35 = 1;
  }

  else
  {
    bundleIdentifier3 = [v41 bundleIdentifier];
    v35 = [bundleIdentifier3 isEqualToString:@"com.apple.LocalAuthenticationUIService"];
  }

  v37 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
  if (!v37 || (v38 = v37, v39 = objc_loadWeakRetained(&self->_activeInputDestinationHandle), v40 = (v39 == v41) | v33 | v35, v39, v38, (v40 & 1) != 0))
  {
    [(_UIKeyboardArbiter *)self handlerRequestedFocus:v41 shouldStealKeyboard:0];
  }
}

- (id)lastActivatedHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_lastActivatedHandle);

  return WeakRetained;
}

- (BOOL)activateHandle:(id)handle
{
  v79 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dispatch_assert_queue_V2(self->_queue);
  sceneLink = [(_UIKeyboardArbiter *)self sceneLink];
  isAvailable = [sceneLink isAvailable];

  if ((isAvailable & 1) == 0)
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v7 = _UIArbiterLog();
    os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    v41 = 138412290;
    v42 = handleCopy;
    LODWORD(v40) = 12;
    v8 = _os_log_send_and_compose_impl();

    v9 = [_UIKeyboardArbiterDebug sharedInstance:&v41];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v47];
    [v9 errorWithMessage:v10];

    if (v8 != &v47)
    {
      free(v8);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
  if (WeakRetained && (v12 = objc_loadWeakRetained(&self->_activeInputDestinationHandle), v13 = [handleCopy isHandlerShowableWithHandler:v12], v12, WeakRetained, (v13 & 1) == 0))
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v31 = _UIArbiterLog();
    os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    v32 = objc_opt_class();
    v33 = v32;
    v34 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
    v41 = 138412802;
    v42 = v32;
    v43 = 2112;
    v44 = handleCopy;
    v45 = 2112;
    v46 = v34;
    LODWORD(v40) = 32;
    v35 = _os_log_send_and_compose_impl();

    v36 = [_UIKeyboardArbiterDebug sharedInstance:&v41];
    v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v47];
    [v36 errorWithMessage:v37];

    if (v35 != &v47)
    {
      free(v35);
    }

    v30 = 0;
  }

  else
  {
    sceneLayer = [handleCopy sceneLayer];
    sceneLink2 = [(_UIKeyboardArbiter *)self sceneLink];
    isAvailable2 = [sceneLink2 isAvailable];
    if (sceneLayer)
    {
      v17 = isAvailable2;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      p_sceneLayer = &selfCopy->_sceneLayer;
      if (selfCopy->_sceneLayer)
      {
        sceneLink3 = [(_UIKeyboardArbiter *)selfCopy sceneLink];
        [sceneLink3 detach:*p_sceneLayer];

        v21 = *p_sceneLayer;
        *p_sceneLayer = 0;
      }

      objc_storeStrong(&selfCopy->_sceneLayer, sceneLayer);
      objc_sync_exit(selfCopy);

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v22 = _UIArbiterLog();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
      v23 = objc_opt_class();
      v41 = 138412802;
      v42 = v23;
      v43 = 2112;
      v44 = handleCopy;
      v45 = 2112;
      v46 = sceneLayer;
      v24 = v23;
      LODWORD(v40) = 32;
      v25 = _os_log_send_and_compose_impl();

      v26 = [_UIKeyboardArbiterDebug sharedInstance:&v41];
      v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v47];
      [v26 debugWithMessage:v27];

      if (v25 != &v47)
      {
        free(v25);
      }

      sceneLink4 = [(_UIKeyboardArbiter *)selfCopy sceneLink];
      [sceneLink4 attach:sceneLayer];

      [handleCopy didAttachLayer];
    }

    if (([handleCopy inputUIHost] & 1) == 0)
    {
      v29 = objc_loadWeakRetained(&self->_lastActivatedHandle);
      [v29 clearAcquiringFocus];

      objc_storeWeak(&self->_lastActivatedHandle, handleCopy);
      [(_UIKeyboardArbiter *)self handlerRequestedFocus:handleCopy shouldStealKeyboard:0];
    }

    v30 = 1;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)checkHostingState
{
  v86 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_keyboardUIHandle);

    if (v5)
    {
      array = [MEMORY[0x277CBEB18] array];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v7 = self->_clients;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v44 objects:v85 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v45;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v45 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v44 + 1) + 8 * i);
            if (([v12 inputUIHost] & 1) == 0)
            {
              if ([v12 running])
              {
                if ([v12 wantedState])
                {
                  if (([v12 active] & 1) == 0)
                  {
                    v13 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
                    v14 = [v12 isHandlerShowableWithHandler:v13];

                    if (v14)
                    {
                      [array addObject:v12];
                    }
                  }
                }
              }
            }
          }

          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v44 objects:v85 count:16];
        }

        while (v9);
      }

      if (![array count])
      {
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v21 = _UIArbiterLog();
        os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
        v22 = objc_opt_class();
        v49 = 138412290;
        v50 = v22;
        v23 = v22;
        LODWORD(v39) = 12;
        v24 = _os_log_send_and_compose_impl();

        v25 = [_UIKeyboardArbiterDebug sharedInstance:&v49];
        v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v53];
        [v25 errorWithMessage:v26];

        if (v24 != &v53)
        {
          free(v24);
        }

        goto LABEL_32;
      }

      if ([array count] < 2)
      {
        v83 = 0uLL;
        v84 = 0uLL;
        v81 = 0uLL;
        v82 = 0uLL;
        v79 = 0uLL;
        v80 = 0uLL;
        v77 = 0uLL;
        v78 = 0uLL;
        v75 = 0uLL;
        v76 = 0uLL;
        v73 = 0uLL;
        v74 = 0uLL;
        v71 = 0uLL;
        v72 = 0uLL;
        v69 = 0uLL;
        v70 = 0uLL;
        v67 = 0uLL;
        v68 = 0uLL;
        v65 = 0uLL;
        v66 = 0uLL;
        v63 = 0uLL;
        v64 = 0uLL;
        v61 = 0uLL;
        v62 = 0uLL;
        v59 = 0uLL;
        v60 = 0uLL;
        v57 = 0uLL;
        v58 = 0uLL;
        v55 = 0uLL;
        v56 = 0uLL;
        v53 = 0uLL;
        v54 = 0uLL;
        v27 = _UIArbiterLog();
        os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
        v28 = objc_opt_class();
        v29 = v28;
        lastObject = [array lastObject];
        v49 = 138412546;
        v50 = v28;
        v51 = 2112;
        v52 = lastObject;
        LODWORD(v39) = 22;
        v18 = _os_log_send_and_compose_impl();

        v31 = [_UIKeyboardArbiterDebug sharedInstance:&v49];
        v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v53];
        [v31 debugWithMessage:v32];

        if (v18 == &v53)
        {
LABEL_24:
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v33 = array;
          v34 = [v33 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v41;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v41 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                [*(*(&v40 + 1) + 8 * j) checkActivation:1];
              }

              v35 = [v33 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v35);
          }

          [(_UIKeyboardArbiter *)self reevaluateSceneClientSettings];
          [(_UIKeyboardArbiter *)self updateKeyboardSceneSettings];
LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
        v83 = 0uLL;
        v84 = 0uLL;
        v81 = 0uLL;
        v82 = 0uLL;
        v79 = 0uLL;
        v80 = 0uLL;
        v77 = 0uLL;
        v78 = 0uLL;
        v75 = 0uLL;
        v76 = 0uLL;
        v73 = 0uLL;
        v74 = 0uLL;
        v71 = 0uLL;
        v72 = 0uLL;
        v69 = 0uLL;
        v70 = 0uLL;
        v67 = 0uLL;
        v68 = 0uLL;
        v65 = 0uLL;
        v66 = 0uLL;
        v63 = 0uLL;
        v64 = 0uLL;
        v61 = 0uLL;
        v62 = 0uLL;
        v59 = 0uLL;
        v60 = 0uLL;
        v57 = 0uLL;
        v58 = 0uLL;
        v55 = 0uLL;
        v56 = 0uLL;
        v53 = 0uLL;
        v54 = 0uLL;
        v15 = _UIArbiterLog();
        os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
        v16 = objc_opt_class();
        v49 = 138412546;
        v50 = v16;
        v51 = 2112;
        v52 = array;
        v17 = v16;
        LODWORD(v39) = 22;
        v18 = _os_log_send_and_compose_impl();

        v19 = [_UIKeyboardArbiterDebug sharedInstance:&v49];
        v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v53];
        [v19 errorWithMessage:v20];

        if (v18 == &v53)
        {
          goto LABEL_24;
        }
      }

      free(v18);
      goto LABEL_24;
    }
  }

LABEL_33:
  v38 = *MEMORY[0x277D85DE8];
}

- (BOOL)deactivateHandle:(id)handle
{
  v59 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dispatch_assert_queue_V2(self->_queue);
  [handleCopy clearAcquiringFocus];
  sceneLayer = [handleCopy sceneLayer];
  sceneLink = [(_UIKeyboardArbiter *)self sceneLink];
  if ([sceneLink isAvailable] && sceneLayer || (objc_msgSend(MEMORY[0x277D75658], "inputUIOOP") & 1) != 0)
  {
  }

  else
  {
    requiresInputUIForAutofillUIOnly = [handleCopy requiresInputUIForAutofillUIOnly];

    if ((requiresInputUIForAutofillUIOnly & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = _UIArbiterLog();
  os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  *v25 = 138412802;
  *&v25[4] = objc_opt_class();
  *&v25[12] = 2112;
  *&v25[14] = handleCopy;
  *&v25[22] = 2112;
  v26 = sceneLayer;
  v8 = *&v25[4];
  LODWORD(v24) = 32;
  v9 = _os_log_send_and_compose_impl();

  v10 = [_UIKeyboardArbiterDebug sharedInstance:v25];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v27];
  [v10 debugWithMessage:v11];

  if (v9 != &v27)
  {
    free(v9);
  }

  if (sceneLayer)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_sceneLayer == sceneLayer)
    {
      sceneLink2 = [(_UIKeyboardArbiter *)selfCopy sceneLink];
      [sceneLink2 detach:sceneLayer];

      sceneLayer = selfCopy->_sceneLayer;
      selfCopy->_sceneLayer = 0;
    }

    objc_sync_exit(selfCopy);

    [handleCopy didDetachLayer];
  }

  WeakRetained = objc_loadWeakRetained(&self->_previouslyActiveHandle);
  v16 = WeakRetained == handleCopy;

  if (v16)
  {
    objc_storeWeak(&self->_previouslyActiveHandle, 0);
    [(_UIKeyboardArbiter *)self scheduleWindowTimeout];
  }

  v17 = objc_loadWeakRetained(&self->_lastActivatedHandle);
  v18 = v17 == handleCopy;

  if (v18)
  {
    objc_storeWeak(&self->_lastActivatedHandle, 0);
  }

  _activeHandleForFocusEvaluation = [(_UIKeyboardArbiter *)self _activeHandleForFocusEvaluation];
  v20 = _activeHandleForFocusEvaluation == 0;

  if (v20)
  {
    [(_UIKeyboardArbiter *)self reevaluateFocusedSceneIdentityForKeyboardFocusStealingKeyboardOnSuccess:0];
  }

LABEL_18:

  v22 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)handleUnexpectedDeallocForHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56___UIKeyboardArbiter_handleUnexpectedDeallocForHandler___block_invoke;
  v9[3] = &unk_2797F45E0;
  v5 = handlerCopy;
  v10 = v5;
  selfCopy = self;
  v6 = MEMORY[0x259C414B0](v9);
  v7 = dispatch_get_current_queue();
  queue = self->_queue;
  if (v7 == queue)
  {
    v6[2](v6);
  }

  else
  {
    dispatch_sync(queue, v6);
  }
}

- (void)updateSceneClientSettings:(id)settings
{
  v72 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  settingsCopy = settings;
  dispatch_assert_queue_V2(queue);
  WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
    [v7 level];
    v9 = v8;
  }

  else
  {
    v9 = -1.0;
  }

  focusContext = [(_UIKeyboardArbiter *)self focusContext];
  if (v9 < 2.0)
  {
    v9 = 2.0;
  }

  [settingsCopy setPreferredLevel:v9];
  sceneIdentity = [focusContext sceneIdentity];
  [settingsCopy setPreferredSceneHostIdentity:sceneIdentity];

  if (([MEMORY[0x277D75658] inputUIOOP] & 1) == 0)
  {
    if (![MEMORY[0x277D75658] usesInputSystemUIForAutoFillOnly])
    {
      goto LABEL_12;
    }

    v12 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
    if (![v12 requiresInputUIForAutofillUIOnly])
    {
LABEL_11:

LABEL_12:
      if (focusContext)
      {
        goto LABEL_30;
      }

      goto LABEL_15;
    }

    v13 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
    if ([v13 deactivating])
    {

      goto LABEL_11;
    }
  }

LABEL_15:
  v14 = _UIArbiterLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "[_UIKeyboardArbiter updateSceneClientSettings:]";
    *&buf[12] = 2112;
    *&buf[14] = objc_opt_class();
    *&buf[22] = 2112;
    *&buf[24] = focusContext;
    LOWORD(v42) = 2048;
    *(&v42 + 2) = v9;
    v35 = *&buf[14];
    _os_log_debug_impl(&dword_2557BA000, v14, OS_LOG_TYPE_DEBUG, "%s  [%@] Updating focus context to %@ level %f", buf, 0x2Au);
  }

  sceneDelegate = [(_UIKeyboardArbiter *)self sceneDelegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    sceneDelegate2 = [(_UIKeyboardArbiter *)self sceneDelegate];
    sceneIdentity2 = [focusContext sceneIdentity];
    [sceneDelegate2 focusedSceneIdentityDidChange:sceneIdentity2];
  }

  sceneDelegate3 = [(_UIKeyboardArbiter *)self sceneDelegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    sceneIdentity3 = [focusContext sceneIdentity];
    if (sceneIdentity3 && (v22 = sceneIdentity3, v23 = [focusContext contextID], v22, !v23))
    {
      sceneDelegate4 = _UIArbiterLog();
      if (os_log_type_enabled(sceneDelegate4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "[_UIKeyboardArbiter updateSceneClientSettings:]";
        *&buf[12] = 2112;
        *&buf[14] = focusContext;
        _os_log_debug_impl(&dword_2557BA000, sceneDelegate4, OS_LOG_TYPE_DEBUG, "%s  skipping updating focustContext = %@", buf, 0x16u);
      }
    }

    else
    {
      sceneDelegate4 = [(_UIKeyboardArbiter *)self sceneDelegate];
      [sceneDelegate4 focusContextDidChange:focusContext];
    }
  }

  sceneDelegate5 = [(_UIKeyboardArbiter *)self sceneDelegate];
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    memset(buf, 0, sizeof(buf));
    v27 = _UIArbiterLog();
    os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
    v28 = objc_opt_class();
    v29 = v28;
    v37 = 138412546;
    v38 = v28;
    v39 = 2048;
    keyboardScenePresentationMode = [(_UIKeyboardArbiter *)self keyboardScenePresentationMode];
    LODWORD(v36) = 22;
    v30 = _os_log_send_and_compose_impl();

    v31 = [_UIKeyboardArbiterDebug sharedInstance:&v37];
    v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
    [v31 debugWithMessage:v32];

    if (v30 != buf)
    {
      free(v30);
    }

    sceneDelegate6 = [(_UIKeyboardArbiter *)self sceneDelegate];
    [sceneDelegate6 focusContext:focusContext didChangeKeyboardScenePresentationMode:{-[_UIKeyboardArbiter keyboardScenePresentationMode](self, "keyboardScenePresentationMode")}];
  }

LABEL_30:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)prewarmFocusContext
{
  v35 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);

  if (!WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_focusRequestedHandle);
    if (v4)
    {
      v5 = objc_loadWeakRetained(&self->_focusRequestedHandle);
      [v5 level];
    }

    v6 = objc_loadWeakRetained(&self->_focusRequestedHandle);
    remoteFocusContext = [v6 remoteFocusContext];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = self->_clients;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          if ([v13 active])
          {
            remoteFocusContext2 = [v13 remoteFocusContext];
            sceneIdentity = [remoteFocusContext2 sceneIdentity];

            if (sceneIdentity)
            {
              v16 = objc_loadWeakRetained(&self->_focusRequestedHandle);
              v17 = [v13 isHandlerShowableWithHandler:v16];

              if (v17)
              {
                [v13 level];
                remoteFocusContext3 = [v13 remoteFocusContext];

                remoteFocusContext = remoteFocusContext3;
              }
            }
          }
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v10);
    }

    sceneDelegate = [(_UIKeyboardArbiter *)self sceneDelegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      sceneIdentity2 = [remoteFocusContext sceneIdentity];
      if (sceneIdentity2 && (v22 = sceneIdentity2, v23 = [remoteFocusContext contextID], v22, !v23))
      {
        sceneDelegate2 = _UIArbiterLog();
        if (os_log_type_enabled(sceneDelegate2, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v31 = "[_UIKeyboardArbiter prewarmFocusContext]";
          v32 = 2112;
          v33 = remoteFocusContext;
          _os_log_debug_impl(&dword_2557BA000, sceneDelegate2, OS_LOG_TYPE_DEBUG, "%s  skipping prewarming focustContext = %@", buf, 0x16u);
        }
      }

      else
      {
        sceneDelegate2 = [(_UIKeyboardArbiter *)self sceneDelegate];
        [sceneDelegate2 focusContextDidChange:remoteFocusContext];
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)setSuppressionCount:(int)count ofPIDs:(id)ds
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = ds;
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = -[_UIKeyboardArbiter handlerForPID:](self, "handlerForPID:", [v10 intValue]);
        if ([v11 suppressionCount] != count)
        {
          suppressionCount = [v11 suppressionCount];
          v13 = count - suppressionCount;
          if (count != suppressionCount)
          {
            if (v13 >= 0)
            {
              v14 = count - suppressionCount;
            }

            else
            {
              v14 = suppressionCount - count;
            }

            if (v14 <= 1)
            {
              v15 = 1;
            }

            else
            {
              v15 = v14;
            }

            do
            {
              -[_UIKeyboardArbiter updateSuppression:ofPID:active:](self, "updateSuppression:ofPID:active:", v13 > 0, v10, [v11 active]);
              --v15;
            }

            while (v15);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)activateClients
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_clients;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 active])
        {
          [(_UIKeyboardArbiter *)self activateHandle:v8];
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)handlerForPID:(int)d
{
  v19 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_clients;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 processIdentifier] == d)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)handlerForBundleID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy && ([dCopy isEqualToString:&stru_2867933A0] & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_clients;
    v6 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          bundleIdentifier = [v10 bundleIdentifier];
          v12 = [bundleIdentifier isEqualToString:v5];

          if (v12)
          {
            v6 = v10;
            goto LABEL_14;
          }
        }

        v6 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)handlerForToken:(id)token
{
  v67 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  if (tokenCopy)
  {
    v28 = 0uLL;
    v29 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    selfCopy = self;
    v4 = self->_clients;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v27;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          remoteFocusContext = [v9 remoteFocusContext];
          sceneIdentity = [remoteFocusContext sceneIdentity];
          stringRepresentation = [sceneIdentity stringRepresentation];
          _string = [tokenCopy _string];
          v14 = [stringRepresentation isEqualToString:_string];

          if (v14)
          {
            v17 = v9;

            goto LABEL_16;
          }
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = _UIArbiterLog();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    clients = selfCopy->_clients;
    v30 = 138543618;
    v31 = tokenCopy;
    v32 = 2114;
    v33 = clients;
    LODWORD(v23) = 22;
  }

  else
  {
    v65 = 0uLL;
    v66 = 0uLL;
    v63 = 0uLL;
    v64 = 0uLL;
    v61 = 0uLL;
    v62 = 0uLL;
    v59 = 0uLL;
    v60 = 0uLL;
    v57 = 0uLL;
    v58 = 0uLL;
    v55 = 0uLL;
    v56 = 0uLL;
    v53 = 0uLL;
    v54 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    v15 = _UIArbiterLog();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    LOWORD(v30) = 0;
    LODWORD(v23) = 2;
  }

  v18 = _os_log_send_and_compose_impl();

  v19 = [_UIKeyboardArbiterDebug sharedInstance:&v30];
  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v35];
  [v19 debugWithMessage:v20];

  if (v18 != &v35)
  {
    free(v18);
  }

  v17 = 0;
LABEL_16:

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)processWithPID:(int)d foreground:(BOOL)foreground suspended:(BOOL)suspended
{
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58___UIKeyboardArbiter_processWithPID_foreground_suspended___block_invoke;
  v10[3] = &unk_2797F4A28;
  v10[4] = self;
  dCopy = d;
  suspendedCopy = suspended;
  foregroundCopy = foreground;
  dispatch_async(queue, v10);
}

- (void)transition:(id)transition eventStage:(unint64_t)stage withInfo:(id)info fromHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  infoCopy = info;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  if (![MEMORY[0x277D75658] inputUIOOP] || (-[NSMutableArray active](handlerCopy, "active") & 1) != 0)
  {
LABEL_6:
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = self->_clients;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          if (v18 != handlerCopy)
          {
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __65___UIKeyboardArbiter_transition_eventStage_withInfo_fromHandler___block_invoke;
            v28[3] = &unk_2797F4A50;
            v29 = transitionCopy;
            stageCopy = stage;
            v30 = infoCopy;
            [(_UIKeyboardArbiter *)self runOperations:v28 onHandler:v18 fromFunction:"[_UIKeyboardArbiter transition:eventStage:withInfo:fromHandler:]"];
          }
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v15);
    }

    goto LABEL_19;
  }

  array = [MEMORY[0x277CBEB18] array];
  v11 = [(_UIKeyboardArbiter *)self hostForHandle:handlerCopy hosts:array];

  v12 = handlerCopy;
  if (v11)
  {
    v12 = v11;
    if (([(NSMutableArray *)v11 active]& 1) != 0)
    {

      goto LABEL_6;
    }
  }

  memset(v39, 0, 512);
  v19 = _UIArbiterLog();
  os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
  v37 = 138412290;
  v38 = v12;
  LODWORD(v24) = 12;
  v20 = _os_log_send_and_compose_impl();

  v21 = [_UIKeyboardArbiterDebug sharedInstance:&v37];
  v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v39];
  [v21 debugWithMessage:v22];

  if (v20 != v39)
  {
    free(v20);
  }

  v13 = v11;
LABEL_19:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handlerRequestedForcedClientSceneIdentityUpdate:(id)update
{
  v24 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (([updateCopy inputUIHost] & 1) == 0)
  {
    dispatch_assert_queue_V2(self->_queue);
    remoteFocusContext = [updateCopy remoteFocusContext];
    sceneIdentity = [remoteFocusContext sceneIdentity];

    if (!sceneIdentity)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIKeyboardArbiter.m" lineNumber:1525 description:{@"Handler must have a remote scene identity: %@", updateCopy}];
    }

    if (([updateCopy requestedCorrectionOfClientSceneIdentityWhileAcquiringFocus] & 1) == 0)
    {
      memset(v23, 0, sizeof(v23));
      v8 = _UIArbiterLog();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
      v19 = 138543618;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = updateCopy;
      v9 = v20;
      LODWORD(v16) = 22;
      v10 = _os_log_send_and_compose_impl();

      v11 = [_UIKeyboardArbiterDebug sharedInstance:&v19];
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v23];
      [v11 debugWithMessage:v12];

      if (v10 != v23)
      {
        free(v10);
      }

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __70___UIKeyboardArbiter_handlerRequestedForcedClientSceneIdentityUpdate___block_invoke;
      v17[3] = &unk_2797F4A78;
      v13 = updateCopy;
      v18 = v13;
      [(_UIKeyboardArbiter *)self runOperations:v17 onHandler:v13 fromFunction:"[_UIKeyboardArbiter handlerRequestedForcedClientSceneIdentityUpdate:]"];
      [v13 setRequestedCorrectionOfClientSceneIdentityWhileAcquiringFocus:1];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setKeyboardTotalDisable:(BOOL)disable withFence:(id)fence fromHandler:(id)handler completionHandler:(id)completionHandler
{
  disableCopy = disable;
  v54 = *MEMORY[0x277D85DE8];
  fenceCopy = fence;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  obj = +[_UIKeyboardArbiterDebug sharedInstance];
  objc_sync_enter(obj);
  dispatch_assert_queue_V2(self->_queue);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __86___UIKeyboardArbiter_setKeyboardTotalDisable_withFence_fromHandler_completionHandler___block_invoke;
  v50[3] = &unk_2797F4AA0;
  v12 = fenceCopy;
  v51 = v12;
  v13 = completionHandlerCopy;
  v52 = v13;
  v14 = MEMORY[0x259C414B0](v50);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __86___UIKeyboardArbiter_setKeyboardTotalDisable_withFence_fromHandler_completionHandler___block_invoke_2;
  v48[3] = &unk_2797F4AC8;
  v15 = v14;
  v49 = v15;
  v16 = MEMORY[0x259C414B0](v48);
  WeakRetained = objc_loadWeakRetained(&self->_disablingHandle);
  LODWORD(completionHandler) = WeakRetained == 0;

  if ((completionHandler ^ disableCopy))
  {
    v18 = 1;
LABEL_11:
    v16[2](v16, v18);
    goto LABEL_25;
  }

  if (disableCopy)
  {
    if (v12)
    {
      [_UIKeyboardChangedInformationWithManualFence pushFence:v12];
    }

    v19 = +[_UIKeyboardChangedInformationWithManualFence informationForKeyboardDown];
    [(_UIKeyboardArbiter *)self updateKeyboardStatus:v19 fromHandler:handlerCopy];

    if (v12)
    {
      +[_UIKeyboardChangedInformationWithManualFence popFence];
    }

    v20 = dispatch_time(0, 500000000);
    v21 = v16;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86___UIKeyboardArbiter_setKeyboardTotalDisable_withFence_fromHandler_completionHandler___block_invoke_3;
    block[3] = &unk_2797F45E0;
    block[4] = self;
    v47 = handlerCopy;
    v23 = queue;
    v16 = v21;
    dispatch_after(v20, v23, block);
  }

  else
  {
    v24 = objc_loadWeakRetained(&self->_disablingHandle);
    v25 = v24 == handlerCopy;

    if (!v25)
    {
      v18 = 2;
      goto LABEL_11;
    }
  }

  v33 = v16;
  v34 = v15;
  v35 = v13;
  v36 = v12;
  v37 = handlerCopy;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = self->_clients;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v27)
  {
    v28 = *v43;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v42 + 1) + 8 * i);
        if (([v30 inputUIHost] & 1) == 0)
        {
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __86___UIKeyboardArbiter_setKeyboardTotalDisable_withFence_fromHandler_completionHandler___block_invoke_4;
          v40[3] = &__block_descriptor_33_e49_v24__0____UIKeyboardArbitrationClient__8___v___16l;
          v41 = disableCopy;
          [(_UIKeyboardArbiter *)self runOperations:v40 onHandler:v30 fromFunction:"[_UIKeyboardArbiter setKeyboardTotalDisable:withFence:fromHandler:completionHandler:]"];
        }
      }

      v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v27);
  }

  v12 = v36;
  handlerCopy = v37;
  v15 = v34;
  v13 = v35;
  v16 = v33;
  if (disableCopy)
  {
    v31 = v37;
  }

  else
  {
    v31 = 0;
  }

  objc_storeWeak(&self->_disablingHandle, v31);
  (*(v34 + 2))(v34, 0);
LABEL_25:

  objc_sync_exit(obj);
  v32 = *MEMORY[0x277D85DE8];
}

- (void)signalEventSourceChanged:(int64_t)changed fromHandler:(id)handler completionHandler:(id)completionHandler
{
  v23 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  dispatch_assert_queue_V2(self->_queue);
  self->_lastEventSource = changed;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = self->_clients;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (v14 != handlerCopy)
        {
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __77___UIKeyboardArbiter_signalEventSourceChanged_fromHandler_completionHandler___block_invoke;
          v17[3] = &__block_descriptor_40_e49_v24__0____UIKeyboardArbitrationClient__8___v___16l;
          v17[4] = changed;
          [(_UIKeyboardArbiter *)self runOperations:v17 onHandler:v14 fromFunction:"[_UIKeyboardArbiter signalEventSourceChanged:fromHandler:completionHandler:]"];
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  if (completionHandlerCopy)
  {
    completionHandlerCopy[2](completionHandlerCopy);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)preferredSceneIdentityForKeyboardFocusWithChangeInformation:(id)information
{
  dispatch_assert_queue_V2(self->_queue);
  _previouslyFocusedHostHandle = [(_UIKeyboardArbiter *)self _activeFocusedHostHandleForKeyboardFocusAndGetLeafHandle:0];
  if (!_previouslyFocusedHostHandle)
  {
    _previouslyFocusedHostHandle = [(_UIKeyboardArbiter *)self _previouslyFocusedHostHandle];
  }

  remoteFocusContext = [_previouslyFocusedHostHandle remoteFocusContext];
  sceneIdentity = [remoteFocusContext sceneIdentity];

  return sceneIdentity;
}

- (id)_activeFocusedHostHandleForKeyboardFocusAndGetLeafHandle:(id *)handle
{
  v62 = *MEMORY[0x277D85DE8];
  _activeHandleForFocusEvaluation = [(_UIKeyboardArbiter *)self _activeHandleForFocusEvaluation];
  v6 = _activeHandleForFocusEvaluation;
  if (handle)
  {
    v7 = _activeHandleForFocusEvaluation;
    *handle = v6;
  }

  remoteFocusContext = [v6 remoteFocusContext];
  sceneIdentity = [remoteFocusContext sceneIdentity];

  v10 = v6;
  v11 = v10;
  v12 = v10;
  if (v10)
  {
    v12 = v10;
    if (!sceneIdentity)
    {
      array = [MEMORY[0x277CBEB18] array];
      v12 = [(_UIKeyboardArbiter *)self hostForHandle:v11 hosts:array];
    }
  }

  remoteFocusContext2 = [v12 remoteFocusContext];
  sceneIdentity2 = [remoteFocusContext2 sceneIdentity];

  if (sceneIdentity2)
  {
    v60 = 0uLL;
    v61 = 0uLL;
    v58 = 0uLL;
    v59 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v16 = _UIArbiterLog();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    v28 = 138412290;
    v29 = v12;
    LODWORD(v27) = 12;
    v17 = _os_log_send_and_compose_impl();

    v18 = [_UIKeyboardArbiterDebug sharedInstance:&v28];
    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v30];
    [v18 debugWithMessage:v19];

    if (v17 != &v30)
    {
      free(v17);
    }

    v20 = v12;
  }

  else
  {
    v60 = 0uLL;
    v61 = 0uLL;
    v58 = 0uLL;
    v59 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v21 = _UIArbiterLog();
    os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
    LOWORD(v28) = 0;
    LODWORD(v27) = 2;
    v22 = _os_log_send_and_compose_impl();

    v23 = [_UIKeyboardArbiterDebug sharedInstance:&v28];
    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v30];
    [v23 debugWithMessage:v24];

    if (v22 != &v30)
    {
      free(v22);
    }

    v20 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_previouslyFocusedHostHandle
{
  v84 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_previouslyActiveHandle);

  if (WeakRetained)
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v4 = _UIArbiterLog();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
    v5 = objc_loadWeakRetained(&self->_previouslyActiveHandle);
    v50 = 138412290;
    v51 = v5;
    LODWORD(v38) = 12;
    v6 = _os_log_send_and_compose_impl();

    v7 = [_UIKeyboardArbiterDebug sharedInstance:&v50];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v52];
    [v7 debugWithMessage:v8];

    if (v6 != &v52)
    {
      free(v6);
    }

    v9 = objc_loadWeakRetained(&self->_previouslyActiveHandle);
  }

  else
  {
    if ([(NSMutableOrderedSet *)self->_recentlyActiveSceneIdentities count])
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      reverseObjectEnumerator = [(NSMutableOrderedSet *)self->_recentlyActiveSceneIdentities reverseObjectEnumerator];
      v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v45;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v45 != v15)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v17 = *(*(&v44 + 1) + 8 * i);
            clients = self->_clients;
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = __50___UIKeyboardArbiter__previouslyFocusedHostHandle__block_invoke;
            v43[3] = &unk_2797F4AF0;
            v43[4] = v17;
            v19 = [(NSMutableArray *)clients indexOfObjectPassingTest:v43];
            if (v19 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v9 = [(NSMutableArray *)self->_clients objectAtIndex:v19];
              v82 = 0u;
              v83 = 0u;
              v80 = 0u;
              v81 = 0u;
              v78 = 0u;
              v79 = 0u;
              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v64 = 0u;
              v65 = 0u;
              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              v58 = 0u;
              v59 = 0u;
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v52 = 0u;
              v53 = 0u;
              v30 = _UIArbiterLog();
              os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
              v50 = 138412290;
              v51 = v9;
              LODWORD(v38) = 12;
              v31 = _os_log_send_and_compose_impl();

              v32 = [_UIKeyboardArbiterDebug sharedInstance:&v50];
              v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v52];
              [v32 debugWithMessage:v33];

              if (v31 != &v52)
              {
                free(v31);
              }

              goto LABEL_5;
            }
          }

          v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v44 objects:v49 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    reverseObjectEnumerator2 = [(NSMutableArray *)self->_clients reverseObjectEnumerator];
    v21 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v40;
      while (2)
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(reverseObjectEnumerator2);
          }

          v25 = *(*(&v39 + 1) + 8 * j);
          if ([v25 active])
          {
            v82 = 0u;
            v83 = 0u;
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v34 = _UIArbiterLog();
            os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG);
            v50 = 138412290;
            v51 = v25;
            LODWORD(v38) = 12;
            v35 = _os_log_send_and_compose_impl();

            v36 = [_UIKeyboardArbiterDebug sharedInstance:&v50];
            v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v52];
            [v36 debugWithMessage:v37];

            if (v35 != &v52)
            {
              free(v35);
            }

            v9 = v25;

            goto LABEL_5;
          }
        }

        v22 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v26 = _UIArbiterLog();
    os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
    LOWORD(v50) = 0;
    LODWORD(v38) = 2;
    v27 = _os_log_send_and_compose_impl();

    v28 = [_UIKeyboardArbiterDebug sharedInstance:&v50];
    v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v52];
    [v28 debugWithMessage:v29];

    if (v27 != &v52)
    {
      free(v27);
    }

    v9 = 0;
  }

LABEL_5:
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_arbiterQueue_keyboardFocusDidChangeWithoutAdvisorInputForGeneration:(unint64_t)generation pid:(int)pid sceneIdentity:(id)identity
{
  v24 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  identityCopy = identity;
  dispatch_assert_queue_V2(queue);
  memset(v23, 0, sizeof(v23));
  v10 = _UIArbiterLog();
  os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  stringRepresentation = [identityCopy stringRepresentation];

  v17 = 134218498;
  generationCopy = generation;
  v19 = 1024;
  pidCopy = pid;
  v21 = 2112;
  v22 = stringRepresentation;
  LODWORD(v16) = 28;
  v12 = _os_log_send_and_compose_impl();

  v13 = [_UIKeyboardArbiterDebug sharedInstance:&v17];
  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v23];
  [v13 debugWithMessage:v14];

  if (v12 != v23)
  {
    free(v12);
  }

  [(_UIKeyboardArbiter *)self _applyPendingSceneFocusUpdateFromOmniscientDelegateForGeneration:generation];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_applyPendingSceneFocusUpdateFromOmniscientDelegateForGeneration:(unint64_t)generation
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  os_unfair_lock_lock(&self->_pendingFocusLock);
  pendingFocusLock_generation = self->_pendingFocusLock_generation;
  pendingFocusLock_PID = self->_pendingFocusLock_PID;
  v7 = self->_pendingFocusLock_sceneIdentity;
  if (pendingFocusLock_PID != -1 && pendingFocusLock_generation == generation)
  {
    self->_pendingFocusLock_PID = -1;
    pendingFocusLock_sceneIdentity = self->_pendingFocusLock_sceneIdentity;
    self->_pendingFocusLock_sceneIdentity = 0;

    os_unfair_lock_unlock(&self->_pendingFocusLock);
    memset(v21, 0, sizeof(v21));
    v10 = _UIArbiterLog();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    *v16 = 134218498;
    *&v16[4] = generation;
    v17 = 1024;
    v18 = pendingFocusLock_PID;
    v19 = 2112;
    v20 = v7;
    LODWORD(v15) = 28;
    v11 = _os_log_send_and_compose_impl();

    v12 = [_UIKeyboardArbiterDebug sharedInstance:v16];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v21];
    [v12 debugWithMessage:v13];

    if (v11 != v21)
    {
      free(v11);
    }

    [(_UIKeyboardArbiter *)self _updateCurrentKeyboardFocusToPID:pendingFocusLock_PID sceneIdentity:v7];
  }

  else
  {
    os_unfair_lock_unlock(&self->_pendingFocusLock);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateCurrentKeyboardFocusToPID:(int)d sceneIdentity:(id)identity
{
  v57 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  dispatch_assert_queue_V2(self->_queue);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  memset(buf, 0, sizeof(buf));
  v7 = _UIArbiterLog();
  os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  v23[0] = 67109378;
  v23[1] = d;
  v24 = 2112;
  v25 = identityCopy;
  LODWORD(v22) = 18;
  v8 = _os_log_send_and_compose_impl();

  v9 = [_UIKeyboardArbiterDebug sharedInstance:v23];
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v9 debugWithMessage:v10];

  if (v8 != buf)
  {
    free(v8);
  }

  _currentFocusedHandle = [(_UIKeyboardArbiter *)self _currentFocusedHandle];
  v12 = _currentFocusedHandle;
  if (_currentFocusedHandle)
  {
    processIdentifier = [_currentFocusedHandle processIdentifier];
    remoteFocusContext = [v12 remoteFocusContext];
    sceneIdentity = [remoteFocusContext sceneIdentity];
    v16 = BSEqualObjects();

    if (processIdentifier != d && (v16 & 1) == 0)
    {
      [v12 clearAcquiringFocus];
    }
  }

  v17 = _UIArbiterEventsLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [identityCopy description];
    v19 = _UISceneIdentityToLogString();
    *buf = 67109378;
    *&buf[4] = d;
    *&buf[8] = 2114;
    *&buf[10] = v19;
    _os_log_impl(&dword_2557BA000, v17, OS_LOG_TYPE_DEFAULT, "set currentFocus PID:%d sceneIdentity:%{public}@", buf, 0x12u);
  }

  self->_currentFocusPID = d;
  currentFocusSceneIdentity = self->_currentFocusSceneIdentity;
  self->_currentFocusSceneIdentity = identityCopy;

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_handleForSceneIdentity:(id)identity
{
  v20 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  if (identityCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_clients;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          remoteFocusContext = [v9 remoteFocusContext];
          sceneIdentity = [remoteFocusContext sceneIdentity];
          v12 = [sceneIdentity isEqual:identityCopy];

          if (v12)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_focusSceneHandle:(id)handle previousHostFocusHandle:(id)focusHandle previousLeafFocusHandle:(id)leafFocusHandle shouldStealKeyboardOnSuccess:(BOOL)success
{
  successCopy = success;
  v68 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  focusHandleCopy = focusHandle;
  leafFocusHandleCopy = leafFocusHandle;
  if (!handleCopy)
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"must have a handle here"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v31 = NSStringFromSelector(a2);
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138544642;
      *&buf[4] = v31;
      *&buf[12] = 2114;
      *&buf[14] = v33;
      *&buf[22] = 2048;
      *&buf[24] = self;
      LOWORD(v38) = 2114;
      *(&v38 + 2) = @"_UIKeyboardArbiter.m";
      WORD5(v38) = 1024;
      HIDWORD(v38) = 1898;
      LOWORD(v39) = 2114;
      *(&v39 + 2) = v30;
      _os_log_error_impl(&dword_2557BA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v30 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x2557CA6ACLL);
  }

  v14 = leafFocusHandleCopy;
  processIdentifier = [handleCopy processIdentifier];
  remoteFocusContext = [handleCopy remoteFocusContext];
  sceneIdentity = [remoteFocusContext sceneIdentity];
  [(_UIKeyboardArbiter *)self _updateCurrentKeyboardFocusToPID:processIdentifier sceneIdentity:sceneIdentity];

  [handleCopy beginAcquiringFocusOnQueue:self->_queue];
  bundleIdentifier = [handleCopy bundleIdentifier];
  v19 = [bundleIdentifier isEqualToString:@"com.apple.siri"];

  v20 = handleCopy == v14 || handleCopy == focusHandleCopy;
  if (v20 && successCopy && (v19 & 1) == 0)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    memset(buf, 0, sizeof(buf));
    v21 = _UIArbiterLog();
    os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
    v35 = 138412290;
    v36 = v14;
    LODWORD(v34) = 12;
    v22 = _os_log_send_and_compose_impl();

    v23 = [_UIKeyboardArbiterDebug sharedInstance:&v35];
    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
    [v23 debugWithMessage:v24];

    if (v22 != buf)
    {
      free(v22);
    }

    informationForKeyboardDown = [MEMORY[0x277D76088] informationForKeyboardDown];
    remoteFocusContext2 = [v14 remoteFocusContext];
    sceneIdentity2 = [remoteFocusContext2 sceneIdentity];
    stringRepresentation = [sceneIdentity2 stringRepresentation];
    [informationForKeyboardDown setSourceSceneIdentityString:stringRepresentation];

    [(_UIKeyboardArbiter *)self updateKeyboardStatus:informationForKeyboardDown fromHandler:v14 fromFocus:1];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)applySceneFocusChange:(id)change forRequest:(id)request
{
  changeCopy = change;
  requestCopy = request;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55___UIKeyboardArbiter_applySceneFocusChange_forRequest___block_invoke;
  block[3] = &unk_2797F4B40;
  v12 = changeCopy;
  v13 = requestCopy;
  selfCopy = self;
  v9 = requestCopy;
  v10 = changeCopy;
  dispatch_async(queue, block);
}

- (int)presentingKeyboardProcessIdentifier
{
  v3 = +[_UIKeyboardArbiterDebug sharedInstance];
  objc_sync_enter(v3);
  WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
    processIdentifier = [v5 processIdentifier];
  }

  else
  {
    processIdentifier = -1;
  }

  objc_sync_exit(v3);

  return processIdentifier;
}

+ (void)configureEncodedClassesForXPCConnection:(id)connection
{
  connectionCopy = connection;
  remoteObjectInterface = [connectionCopy remoteObjectInterface];
  v5 = _UIKBArbiterSetForPlacements();
  [remoteObjectInterface setClasses:v5 forSelector:sel_queue_keyboardTransition_event_withInfo_onComplete_ argumentIndex:2 ofReply:0];

  exportedInterface = [connectionCopy exportedInterface];

  v6 = _UIKBArbiterSetForPlacements();
  [exportedInterface setClasses:v6 forSelector:sel_transition_eventStage_withInfo_ argumentIndex:2 ofReply:0];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v42 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dispatch_assert_queue_not_V2(self->_queue);
  v6 = [_UIKeyboardArbiterClientHandle handlerWithArbiter:self forConnection:connectionCopy];
  [connectionCopy setExportedObject:v6];
  bundleIdentifier = [v6 bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.TapToRadar"])
  {

LABEL_4:
    v10 = +[_UIKeyboardArbiterDebug sharedInstance];
    v11 = 1;
    [v10 setPause:1];

    goto LABEL_6;
  }

  bundleIdentifier2 = [v6 bundleIdentifier];
  v9 = [bundleIdentifier2 isEqualToString:@"com.apple.appleseed.FeedbackAssistant"];

  if (v9)
  {
    goto LABEL_4;
  }

  v11 = 0;
LABEL_6:
  memset(v41, 0, 512);
  v12 = _UIArbiterLog();
  os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  v37 = 138412546;
  v38 = objc_opt_class();
  v39 = 2112;
  v40 = v6;
  v13 = v38;
  LODWORD(v31) = 22;
  v14 = _os_log_send_and_compose_impl();

  v15 = [_UIKeyboardArbiterDebug sharedInstance:&v37];
  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v41];
  [v15 debugWithMessage:v16];

  if (v14 != v41)
  {
    free(v14);
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __57___UIKeyboardArbiter_listener_shouldAcceptNewConnection___block_invoke;
  v35[3] = &unk_2797F4B90;
  v35[4] = self;
  v35[5] = connectionCopy;
  v35[6] = v6;
  v36 = v11;
  [connectionCopy setInvalidationHandler:v35];
  if ([objc_opt_class() unitTestEnvironment])
  {
    v17 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28679DF80];
    [connectionCopy setExportedInterface:v17];

    v18 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28679E060];
    [connectionCopy setRemoteObjectInterface:v18];

    [_UIKeyboardArbiter configureEncodedClassesForXPCConnection:connectionCopy];
  }

  else
  {
    v19 = [connectionCopy valueForEntitlement:@"com.apple.KeyboardArbiter.client.inputuihost"];
    bOOLValue = [v19 BOOLValue];

    if (bOOLValue)
    {
      v21 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28679DF80];
      [connectionCopy setExportedInterface:v21];

      v22 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28679CCA0];
      [connectionCopy setRemoteObjectInterface:v22];

      [v6 setInputUIHost:1];
      objc_storeWeak(&self->_keyboardUIHandle, v6);
    }

    else
    {
      if ([MEMORY[0x277D75658] inputUIOOP])
      {
        v23 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28679C9D0];
        [connectionCopy setExportedInterface:v23];

        [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28679E060];
      }

      else
      {
        v24 = _UIKeyboardArbitration_Interface();
        [connectionCopy setExportedInterface:v24];

        _UIKeyboardArbitrationClient_Interface();
      }
      v25 = ;
      [connectionCopy setRemoteObjectInterface:v25];
    }
  }

  [connectionCopy _setQueue:self->_queue];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57___UIKeyboardArbiter_listener_shouldAcceptNewConnection___block_invoke_328;
  block[3] = &unk_2797F4B40;
  block[4] = self;
  v33 = v6;
  v34 = connectionCopy;
  v27 = connectionCopy;
  v28 = v6;
  dispatch_async(queue, block);

  v29 = *MEMORY[0x277D85DE8];
  return 1;
}

- (_UIKeyboardArbiterClientHandle)activeInputDestinationHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);

  return WeakRetained;
}

- (_UIKeyboardArbiterClientHandle)focusRequestedHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_focusRequestedHandle);

  return WeakRetained;
}

- (_UIKeyboardArbiterClientHandle)keyboardUIHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardUIHandle);

  return WeakRetained;
}

@end