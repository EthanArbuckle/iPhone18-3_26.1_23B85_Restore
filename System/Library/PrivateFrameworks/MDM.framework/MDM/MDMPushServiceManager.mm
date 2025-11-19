@interface MDMPushServiceManager
- (MDMPushServiceManager)initWithChannel:(unint64_t)a3;
- (id)_connectionForEnvironment:(unint64_t)a3;
- (id)_staticTopics;
- (unint64_t)_environmentForConnection:(id)a3;
- (void)_notifyObserversWithBlock:(id)a3;
- (void)_setupConnectionForEnvironmentIfNeeded:(unint64_t)a3;
- (void)_startListeningForPushMessageWithTopic:(id)a3 environment:(unint64_t)a4;
- (void)_stopListeningForPushMessageWithTopic:(id)a3 environment:(unint64_t)a4;
- (void)_stopProdConnectionForEnvironmentIfNeeded:(unint64_t)a3;
- (void)_trimEnabledPushTopicsForEnvironment:(unint64_t)a3 filterBlock:(id)a4;
- (void)_updatePushWakeTopicsForConnection:(id)a3 expectedPushWakeTopics:(id)a4;
- (void)_updatePushWakeTopicsForConnectionIfNeeded:(id)a3 enablePushWake:(BOOL)a4;
- (void)addPushServiceObserver:(id)a3;
- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)dealloc;
- (void)disablePushWakeWithCompletionHandler:(id)a3;
- (void)enablePushWakeWithCompletionHandler:(id)a3;
- (void)requestAppTokenForTopic:(id)a3 environment:(unint64_t)a4;
- (void)requestPublicTokenWithEnvironment:(unint64_t)a3;
- (void)stopListeningForAllMDMPushMessagesWithEnvironment:(unint64_t)a3;
@end

@implementation MDMPushServiceManager

- (MDMPushServiceManager)initWithChannel:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = MDMPushServiceManager;
  v4 = [(MDMPushServiceManager *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_channel = a3;
    v6 = dispatch_queue_create("com.apple.MDMPushServiceManager.worker-queue", 0);
    notificationQueue = v5->_notificationQueue;
    v5->_notificationQueue = v6;

    v8 = objc_opt_new();
    observers = v5->_observers;
    v5->_observers = v8;
  }

  return v5;
}

- (void)dealloc
{
  [(MDMPushServiceManager *)self _stopProdConnectionForEnvironmentIfNeeded:0];
  [(MDMPushServiceManager *)self _stopProdConnectionForEnvironmentIfNeeded:1];
  v3.receiver = self;
  v3.super_class = MDMPushServiceManager;
  [(MDMPushServiceManager *)&v3 dealloc];
}

- (void)addPushServiceObserver:(id)a3
{
  observers = self->_observers;
  v4 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:a3];
  [(NSMutableArray *)observers addObject:v4];
}

- (void)requestPublicTokenWithEnvironment:(unint64_t)a3
{
  v5 = [(MDMPushServiceManager *)self notificationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__MDMPushServiceManager_requestPublicTokenWithEnvironment___block_invoke;
  v6[3] = &unk_27982BB90;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __59__MDMPushServiceManager_requestPublicTokenWithEnvironment___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupConnectionForEnvironmentIfNeeded:*(a1 + 40)];
  v2 = [*(a1 + 32) _connectionForEnvironment:*(a1 + 40)];
  v3 = [v2 publicToken];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__MDMPushServiceManager_requestPublicTokenWithEnvironment___block_invoke_2;
    v8[3] = &unk_27982CA00;
    v8[4] = v5;
    v6 = v3;
    v7 = *(a1 + 40);
    v9 = v6;
    v10 = v7;
    [v5 _notifyObserversWithBlock:v8];
  }
}

- (void)requestAppTokenForTopic:(id)a3 environment:(unint64_t)a4
{
  v6 = a3;
  v7 = [(MDMPushServiceManager *)self notificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__MDMPushServiceManager_requestAppTokenForTopic_environment___block_invoke;
  block[3] = &unk_27982CA28;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

void __61__MDMPushServiceManager_requestAppTokenForTopic_environment___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupConnectionForEnvironmentIfNeeded:*(a1 + 48)];
  v2 = [*(a1 + 32) _connectionForEnvironment:*(a1 + 48)];
  [v2 requestAppTokenForTopic:*(a1 + 40)];
}

- (void)stopListeningForAllMDMPushMessagesWithEnvironment:(unint64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __75__MDMPushServiceManager_stopListeningForAllMDMPushMessagesWithEnvironment___block_invoke;
  v3[3] = &unk_27982CA50;
  v3[4] = self;
  [(MDMPushServiceManager *)self _trimEnabledPushTopicsForEnvironment:a3 filterBlock:v3];
}

uint64_t __75__MDMPushServiceManager_stopListeningForAllMDMPushMessagesWithEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _staticTopics];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (void)enablePushWakeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(MDMPushServiceManager *)self notificationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__MDMPushServiceManager_enablePushWakeWithCompletionHandler___block_invoke;
  v7[3] = &unk_27982CA78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __61__MDMPushServiceManager_enablePushWakeWithCompletionHandler___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) enablePushWake] & 1) == 0)
  {
    v2 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_2561F5000, v2, OS_LOG_TYPE_DEFAULT, "MDMPushServiceManager: enabling push wake...", v4, 2u);
    }

    [*(a1 + 32) setEnablePushWake:1];
    [*(a1 + 32) _updatePushWakeTopicsIfNeededWithEnablePushWake:1];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)disablePushWakeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(MDMPushServiceManager *)self notificationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__MDMPushServiceManager_disablePushWakeWithCompletionHandler___block_invoke;
  v7[3] = &unk_27982CA78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __62__MDMPushServiceManager_disablePushWakeWithCompletionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) enablePushWake])
  {
    v2 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_2561F5000, v2, OS_LOG_TYPE_DEFAULT, "MDMPushServiceManager: disabling push wake...", v4, 2u);
    }

    [*(a1 + 32) setEnablePushWake:0];
    [*(a1 + 32) _updatePushWakeTopicsIfNeededWithEnablePushWake:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_staticTopics
{
  if (_staticTopics_onceToken != -1)
  {
    [MDMPushServiceManager _staticTopics];
  }

  v3 = _staticTopics_set;

  return v3;
}

void __38__MDMPushServiceManager__staticTopics__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"com.apple.dep.apnsv2";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = _staticTopics_set;
  _staticTopics_set = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_setupConnectionForEnvironmentIfNeeded:(unint64_t)a3
{
  v5 = [(MDMPushServiceManager *)self _connectionForEnvironment:?];

  if (!v5)
  {
    v6 = [(MDMPushServiceManager *)self channel];
    v7 = [(MDMPushServiceManager *)self notificationQueue];
    v8 = [MDMPushServiceConnection connectionWithEnvironment:a3 channel:v6 queue:v7];

    [v8 setDelegate:self];
    if (a3)
    {
      [(MDMPushServiceManager *)self setDevAPSConnection:v8];
    }

    else
    {
      [(MDMPushServiceManager *)self setProdAPSConnection:v8];
    }
  }
}

- (void)_stopProdConnectionForEnvironmentIfNeeded:(unint64_t)a3
{
  v5 = [(MDMPushServiceManager *)self _connectionForEnvironment:?];
  if (v5)
  {
    v10 = v5;
    [v5 shutdown];
    if (a3 == 1)
    {
      v8 = [(MDMPushServiceManager *)self devAPSConnection];

      v5 = v10;
      if (!v8)
      {
        goto LABEL_9;
      }

      v9 = [(MDMPushServiceManager *)self devAPSConnection];
      [v9 shutdown];

      [(MDMPushServiceManager *)self setDevAPSConnection:0];
      goto LABEL_8;
    }

    v5 = v10;
    if (!a3)
    {
      v6 = [(MDMPushServiceManager *)self prodAPSConnection];

      v5 = v10;
      if (v6)
      {
        v7 = [(MDMPushServiceManager *)self prodAPSConnection];
        [v7 shutdown];

        [(MDMPushServiceManager *)self setProdAPSConnection:0];
LABEL_8:
        v5 = v10;
      }
    }
  }

LABEL_9:
}

- (id)_connectionForEnvironment:(unint64_t)a3
{
  if (a3)
  {
    [(MDMPushServiceManager *)self devAPSConnection];
  }

  else
  {
    [(MDMPushServiceManager *)self prodAPSConnection];
  }
  v3 = ;

  return v3;
}

- (unint64_t)_environmentForConnection:(id)a3
{
  v4 = a3;
  v5 = [(MDMPushServiceManager *)self prodAPSConnection];

  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(MDMPushServiceManager *)self devAPSConnection];
    v7 = v6 == v4;
  }

  return v7;
}

- (void)_startListeningForPushMessageWithTopic:(id)a3 environment:(unint64_t)a4
{
  v6 = a3;
  v7 = [(MDMPushServiceManager *)self notificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__MDMPushServiceManager__startListeningForPushMessageWithTopic_environment___block_invoke;
  block[3] = &unk_27982CA28;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

void __76__MDMPushServiceManager__startListeningForPushMessageWithTopic_environment___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupConnectionForEnvironmentIfNeeded:*(a1 + 48)];
  v7 = [*(a1 + 32) _connectionForEnvironment:*(a1 + 48)];
  v2 = [v7 enabledTopics];
  v3 = [v2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  if (([v6 containsObject:*(a1 + 40)] & 1) == 0)
  {
    [v6 addObject:*(a1 + 40)];
    [v7 _setEnabledTopics:v6];
    if ([*(a1 + 32) enablePushWake])
    {
      [*(a1 + 32) _updatePushWakeTopicsIfNeededWithEnablePushWake:1];
    }
  }
}

- (void)_stopListeningForPushMessageWithTopic:(id)a3 environment:(unint64_t)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__MDMPushServiceManager__stopListeningForPushMessageWithTopic_environment___block_invoke;
  v8[3] = &unk_27982CA50;
  v9 = v6;
  v7 = v6;
  [(MDMPushServiceManager *)self _trimEnabledPushTopicsForEnvironment:a4 filterBlock:v8];
}

- (void)_trimEnabledPushTopicsForEnvironment:(unint64_t)a3 filterBlock:(id)a4
{
  v6 = a4;
  v7 = [(MDMPushServiceManager *)self notificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__MDMPushServiceManager__trimEnabledPushTopicsForEnvironment_filterBlock___block_invoke;
  block[3] = &unk_27982BB68;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

void __74__MDMPushServiceManager__trimEnabledPushTopicsForEnvironment_filterBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connectionForEnvironment:*(a1 + 48)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 enabledTopics];
    v5 = [v4 mutableCopy];

    v6 = MEMORY[0x277CCAC30];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__MDMPushServiceManager__trimEnabledPushTopicsForEnvironment_filterBlock___block_invoke_2;
    v8[3] = &unk_27982CAA0;
    v9 = *(a1 + 40);
    v7 = [v6 predicateWithBlock:v8];
    [v5 filterUsingPredicate:v7];

    [*(a1 + 32) _updatePushWakeTopicsIfNeededWithEnablePushWake:{objc_msgSend(*(a1 + 32), "enablePushWake")}];
    [v3 _setEnabledTopics:v5];
  }
}

- (void)_notifyObserversWithBlock:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MDMPushServiceManager *)self observers];
  v6 = [v5 copy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 nonretainedObjectValue];
        if (v13)
        {
          v4[2](v4, v13);
        }

        else
        {
          v14 = [(MDMPushServiceManager *)self observers];
          [v14 removeObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_updatePushWakeTopicsForConnectionIfNeeded:(id)a3 enablePushWake:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v12 = v6;
    if (v4)
    {
      v7 = MEMORY[0x277CBEB58];
      v8 = [v6 enabledTopics];
      v9 = [v7 setWithArray:v8];

      v10 = [(MDMPushServiceManager *)self _staticTopics];
      [v9 minusSet:v10];

      v11 = [v9 allObjects];
    }

    else
    {
      v11 = 0;
    }

    [(MDMPushServiceManager *)self _updatePushWakeTopicsForConnection:v12 expectedPushWakeTopics:v11];

    v6 = v12;
  }
}

- (void)_updatePushWakeTopicsForConnection:(id)a3 expectedPushWakeTopics:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "MDMPushServiceManager: setting push wake topics: %{public}@ for connection: %{public}@", &v9, 0x16u);
  }

  [v5 setPushWakeTopics:v6];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v17 = "[MDMPushServiceManager connection:didReceivePublicToken:]";
    _os_log_impl(&dword_2561F5000, v8, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v9 = [(MDMPushServiceManager *)self notificationQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(MDMPushServiceManager *)self _environmentForConnection:v7];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__MDMPushServiceManager_connection_didReceivePublicToken___block_invoke;
  v13[3] = &unk_27982CA00;
  v13[4] = self;
  v14 = v6;
  v15 = v10;
  v11 = v6;
  [(MDMPushServiceManager *)self _notifyObserversWithBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v23 = "[MDMPushServiceManager connection:didReceiveToken:forTopic:identifier:]";
    _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v13 = [(MDMPushServiceManager *)self notificationQueue];
  dispatch_assert_queue_V2(v13);

  v14 = [(MDMPushServiceManager *)self _environmentForConnection:v11];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__MDMPushServiceManager_connection_didReceiveToken_forTopic_identifier___block_invoke;
  v18[3] = &unk_27982CAC8;
  v18[4] = self;
  v19 = v9;
  v20 = v10;
  v21 = v14;
  v15 = v10;
  v16 = v9;
  [(MDMPushServiceManager *)self _notifyObserversWithBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __72__MDMPushServiceManager_connection_didReceiveToken_forTopic_identifier___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 pushServiceManager:a1[4] didReceiveAppToken:a1[5] forTopic:a1[6] environment:a1[7]];
  }
}

- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v22 = "[MDMPushServiceManager connection:didReceiveMessageForTopic:userInfo:]";
    _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v12 = [(MDMPushServiceManager *)self notificationQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(MDMPushServiceManager *)self _environmentForConnection:v10];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__MDMPushServiceManager_connection_didReceiveMessageForTopic_userInfo___block_invoke;
  v17[3] = &unk_27982CAC8;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v13;
  v14 = v9;
  v15 = v8;
  [(MDMPushServiceManager *)self _notifyObserversWithBlock:v17];

  v16 = *MEMORY[0x277D85DE8];
}

@end