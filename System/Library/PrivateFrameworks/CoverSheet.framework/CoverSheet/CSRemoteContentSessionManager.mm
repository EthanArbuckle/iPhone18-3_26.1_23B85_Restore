@interface CSRemoteContentSessionManager
- (CSRemoteContentSessionHostDelegate)forwardingHostDelegate;
- (CSRemoteContentSessionManager)initWithAuthenticationStatusProvider:(id)provider;
- (id)_queue_createSessionWithDefinition:(id)definition;
- (id)_queue_existingSessions;
- (id)_queue_existingSessionsWithDefinition:(id)definition;
- (id)createSessionWithDefinition:(id)definition;
- (id)existingSessions;
- (id)existingSessionsWithDefinition:(id)definition;
- (id)preferencesForRemoteContentSession:(id)session;
- (void)didInvalidateSessionWithSessionID:(id)d;
- (void)remoteContentSession:(id)session didUpdateWithPreferences:(id)preferences;
@end

@implementation CSRemoteContentSessionManager

- (CSRemoteContentSessionManager)initWithAuthenticationStatusProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = CSRemoteContentSessionManager;
  v6 = [(CSRemoteContentSessionManager *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.SpringBoard.CSRemoteContentSessionManager.accessSerialQueue", v7);
    accessSerialQueue = v6->_accessSerialQueue;
    v6->_accessSerialQueue = v8;

    objc_storeStrong(&v6->_authenticationStatusProvider, provider);
  }

  return v6;
}

- (id)existingSessions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__CSRemoteContentSessionManager_existingSessions__block_invoke;
  v5[3] = &unk_27838DBB8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __49__CSRemoteContentSessionManager_existingSessions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_existingSessions];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)existingSessionsWithDefinition:(id)definition
{
  definitionCopy = definition;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CSRemoteContentSessionManager_existingSessionsWithDefinition___block_invoke;
  block[3] = &unk_27838DBE0;
  v10 = definitionCopy;
  v11 = &v12;
  block[4] = self;
  v6 = definitionCopy;
  dispatch_sync(accessSerialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __64__CSRemoteContentSessionManager_existingSessionsWithDefinition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_existingSessionsWithDefinition:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)createSessionWithDefinition:(id)definition
{
  definitionCopy = definition;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CSRemoteContentSessionManager_createSessionWithDefinition___block_invoke;
  block[3] = &unk_27838DBE0;
  v10 = definitionCopy;
  v11 = &v12;
  block[4] = self;
  v6 = definitionCopy;
  dispatch_sync(accessSerialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __61__CSRemoteContentSessionManager_createSessionWithDefinition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_createSessionWithDefinition:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)didInvalidateSessionWithSessionID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = SBLogDashBoard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = dCopy;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "[RemoteContent] Remove session %{public}@", buf, 0xCu);
  }

  accessSerialQueue = self->_accessSerialQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__CSRemoteContentSessionManager_didInvalidateSessionWithSessionID___block_invoke;
  v8[3] = &unk_27838B838;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_sync(accessSerialQueue, v8);
}

- (id)_queue_createSessionWithDefinition:(id)definition
{
  v35 = *MEMORY[0x277D85DE8];
  definitionCopy = definition;
  dispatch_assert_queue_V2(self->_accessSerialQueue);
  v5 = [[CSRemoteContentSession alloc] initWithDefinition:definitionCopy authenticationStatusProvider:self->_authenticationStatusProvider];
  sessionID = [(CSRemoteContentSession *)v5 sessionID];
  WeakRetained = objc_loadWeakRetained(&self->_forwardingHostDelegate);
  [(CSRemoteContentSession *)v5 setHostDelegate:WeakRetained];

  [(CSRemoteContentSession *)v5 setPreferencesProvider:self];
  if (self->_sessionIDToSession)
  {
    v24 = sessionID;
    v25 = v5;
    v8 = definitionCopy;
    v9 = [(CSRemoteContentSessionManager *)self _queue_existingSessionsWithDefinition:definitionCopy];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = SBLogDashBoard();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            sessionID2 = [v14 sessionID];
            *buf = 138543618;
            v31 = sessionID2;
            v32 = 2114;
            v33 = v8;
            _os_log_impl(&dword_21EB05000, v15, OS_LOG_TYPE_DEFAULT, "[RemoteContent] Removing stale session %{public}@ that matches incoming definition: %{public}@", buf, 0x16u);
          }

          sessionIDToSession = self->_sessionIDToSession;
          sessionID3 = [v14 sessionID];
          [(NSMutableDictionary *)sessionIDToSession removeObjectForKey:sessionID3];
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v11);
    }

    definitionCopy = v8;
    sessionID = v24;
    v5 = v25;
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v20 = self->_sessionIDToSession;
    self->_sessionIDToSession = v19;
  }

  [(NSMutableDictionary *)self->_sessionIDToSession setObject:v5 forKey:sessionID];
  v21 = SBLogDashBoard();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    sessionID4 = [(CSRemoteContentSession *)v5 sessionID];
    *buf = 138543618;
    v31 = sessionID4;
    v32 = 2114;
    v33 = definitionCopy;
    _os_log_impl(&dword_21EB05000, v21, OS_LOG_TYPE_DEFAULT, "[RemoteContent] Created session %{public}@ for definition: %{public}@", buf, 0x16u);
  }

  return v5;
}

- (id)_queue_existingSessions
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_accessSerialQueue);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_sessionIDToSession objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (!v6)
        {
          v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
        }

        [v6 addObject:v9];
      }

      v5 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_queue_existingSessionsWithDefinition:(id)definition
{
  v27 = *MEMORY[0x277D85DE8];
  definitionCopy = definition;
  dispatch_assert_queue_V2(self->_accessSerialQueue);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(NSMutableDictionary *)self->_sessionIDToSession objectEnumerator];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        definition = [v9 definition];
        v11 = definitionCopy;
        serviceName = [definition serviceName];
        serviceName2 = [v11 serviceName];
        v14 = [serviceName isEqualToString:serviceName2];

        viewControllerClassName = [definition viewControllerClassName];
        viewControllerClassName2 = [v11 viewControllerClassName];

        v17 = [viewControllerClassName isEqualToString:viewControllerClassName2];
        if (v14)
        {
          v18 = v17 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          if (!v6)
          {
            v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
          }

          [v6 addObject:v9];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)preferencesForRemoteContentSession:(id)session
{
  sessionCopy = session;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__CSRemoteContentSessionManager_preferencesForRemoteContentSession___block_invoke;
  block[3] = &unk_27838DBE0;
  v10 = sessionCopy;
  v11 = &v12;
  block[4] = self;
  v6 = sessionCopy;
  dispatch_sync(accessSerialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __68__CSRemoteContentSessionManager_preferencesForRemoteContentSession___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v7 = [*(a1 + 40) definition];
  v3 = [v7 serviceName];
  v4 = [v2 objectForKey:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)remoteContentSession:(id)session didUpdateWithPreferences:(id)preferences
{
  sessionCopy = session;
  preferencesCopy = preferences;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__CSRemoteContentSessionManager_remoteContentSession_didUpdateWithPreferences___block_invoke;
  block[3] = &unk_27838B7C0;
  v12 = preferencesCopy;
  selfCopy = self;
  v14 = sessionCopy;
  v9 = sessionCopy;
  v10 = preferencesCopy;
  dispatch_sync(accessSerialQueue, block);
}

void __79__CSRemoteContentSessionManager_remoteContentSession_didUpdateWithPreferences___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(*(a1 + 40) + 24);
    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v5 = *(a1 + 40);
      v6 = *(v5 + 24);
      *(v5 + 24) = v4;

      v1 = *(a1 + 32);
      v3 = *(*(a1 + 40) + 24);
    }

    v8 = [*(a1 + 48) definition];
    v7 = [v8 serviceName];
    [v3 setObject:v1 forKey:v7];
  }
}

- (CSRemoteContentSessionHostDelegate)forwardingHostDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardingHostDelegate);

  return WeakRetained;
}

@end