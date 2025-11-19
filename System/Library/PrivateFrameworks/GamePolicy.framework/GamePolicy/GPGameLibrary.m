@interface GPGameLibrary
+ (id)gameLibraryAppsFromGameLibraryGames:(id)a3;
- (GPGameLibrary)init;
- (id)appsWithBundleIdentifiers:(id)a3;
- (id)appsWithStoreIdentifiers:(id)a3;
- (id)installedGames;
- (void)_onqueue_connectToXPCService;
- (void)dealloc;
- (void)fetchAppsWithBundleIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)fetchAppsWithStoreIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)fetchInstalledGamesWithCompletionHandler:(id)a3;
- (void)installedGamesDidChange:(id)a3;
- (void)pong;
- (void)refreshInstalledGamesLibrary;
- (void)registerInstalledGamesDidChangeHandler:(id)a3;
@end

@implementation GPGameLibrary

- (GPGameLibrary)init
{
  v16.receiver = self;
  v16.super_class = GPGameLibrary;
  v2 = [(GPGameLibrary *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = dispatch_queue_create("com.apple.GPGameLibrary", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    gameLibrary = v2->_gameLibrary;
    v2->_gameLibrary = MEMORY[0x277CBEBF8];

    v8 = [MEMORY[0x277CBEAA8] now];
    creationDate = v2->_creationDate;
    v2->_creationDate = v8;

    objc_initWeak(&location, v2);
    v10 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __21__GPGameLibrary_init__block_invoke;
    block[3] = &unk_279685870;
    objc_copyWeak(&v14, &location);
    v13 = v2;
    dispatch_sync(v10, block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __21__GPGameLibrary_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = *(a1 + 32);

    [v3 _onqueue_connectToXPCService];
  }
}

- (void)_onqueue_connectToXPCService
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.gamepolicyd.app.privileged" options:0];
  daemonConnection = self->_daemonConnection;
  self->_daemonConnection = v3;

  v5 = +[_TtC10GamePolicy26GamePolicyPrivilegedAppXPC GamePolicyPrivilegedAppServerInterface];
  [(NSXPCConnection *)self->_daemonConnection setRemoteObjectInterface:v5];

  v6 = +[_TtC10GamePolicy26GamePolicyPrivilegedAppXPC GamePolicyPrivilegedAppClientInterface];
  [(NSXPCConnection *)self->_daemonConnection setExportedInterface:v6];

  [(NSXPCConnection *)self->_daemonConnection setExportedObject:self];
  objc_initWeak(&location, self);
  v7 = self->_daemonConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__GPGameLibrary__onqueue_connectToXPCService__block_invoke;
  v12[3] = &unk_279685898;
  objc_copyWeak(&v13, &location);
  [(NSXPCConnection *)v7 setInvalidationHandler:v12];
  v8 = self->_daemonConnection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__GPGameLibrary__onqueue_connectToXPCService__block_invoke_7;
  v10[3] = &unk_279685898;
  objc_copyWeak(&v11, &location);
  [(NSXPCConnection *)v8 setInterruptionHandler:v10];
  [(NSXPCConnection *)self->_daemonConnection resume];
  v9 = [(NSXPCConnection *)self->_daemonConnection remoteObjectProxy];
  [v9 ping];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __45__GPGameLibrary__onqueue_connectToXPCService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3[5] lock];
    *(v3 + 33) = 1;
    if (gp_isInternalBuild())
    {
      __45__GPGameLibrary__onqueue_connectToXPCService__block_invoke_cold_1();
    }

    [v3[5] unlock];
  }
}

void __45__GPGameLibrary__onqueue_connectToXPCService__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3[5] lock];
    *(v3 + 33) = 1;
    if (gp_isInternalBuild())
    {
      __45__GPGameLibrary__onqueue_connectToXPCService__block_invoke_7_cold_1();
    }

    [v3[5] unlock];
    [v3[1] invalidate];
  }
}

- (void)dealloc
{
  daemonConnection = self->_daemonConnection;
  if (daemonConnection)
  {
    [(NSXPCConnection *)daemonConnection invalidate];
    v4 = self->_daemonConnection;
    self->_daemonConnection = 0;
  }

  v5.receiver = self;
  v5.super_class = GPGameLibrary;
  [(GPGameLibrary *)&v5 dealloc];
}

- (void)pong
{
  v1 = getGPLogger();
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)installedGamesDidChange:(id)a3
{
  v4 = a3;
  if (gp_isInternalBuild())
  {
    [GPGameLibrary installedGamesDidChange:v4];
  }

  if (!self->_libraryInitialized)
  {
    self->_libraryInitialized = 1;
    v5 = [MEMORY[0x277CBEAA8] now];
    [v5 timeIntervalSinceDate:self->_creationDate];
    if (gp_isInternalBuild())
    {
      [GPGameLibrary installedGamesDidChange:];
    }
  }

  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__GPGameLibrary_installedGamesDidChange___block_invoke;
  block[3] = &unk_279685870;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __41__GPGameLibrary_installedGamesDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5[5] lock];
    v3 = [GPGameLibrary gameLibraryAppsFromGameLibraryGames:*(a1 + 32)];
    objc_storeStrong(v5 + 6, v3);
    v4 = v5[7];
    if (v4)
    {
      v4[2](v4, v3);
    }

    [v5[5] unlock];
  }
}

- (void)registerInstalledGamesDidChangeHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__GPGameLibrary_registerInstalledGamesDidChangeHandler___block_invoke;
  block[3] = &unk_2796858C0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__GPGameLibrary_registerInstalledGamesDidChangeHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    [v3[5] lock];
    v4 = _Block_copy(*(a1 + 32));
    v5 = v3[7];
    v3[7] = v4;

    if (v3[7] && [v3[6] count])
    {
      if (gp_isInternalBuild())
      {
        __56__GPGameLibrary_registerInstalledGamesDidChangeHandler___block_invoke_cold_1(v3 + 6);
      }

      v6 = v3[6];
      (*(v3[7] + 2))();
    }

    [v3[5] unlock];
  }
}

+ (id)gameLibraryAppsFromGameLibraryGames:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [GPGameLibraryApp alloc];
        v11 = [v9 persistentIdentifier];
        v12 = [v9 bundleID];
        v13 = [v9 adamID];
        v14 = -[GPGameLibraryApp initWithPersistentIdentifier:bundleID:adamID:isGame:](v10, "initWithPersistentIdentifier:bundleID:adamID:isGame:", v11, v12, v13, [v9 isGame]);

        [v4 addObject:v14];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)refreshInstalledGamesLibrary
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__GPGameLibrary_refreshInstalledGamesLibrary__block_invoke;
  v4[3] = &unk_279685898;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __45__GPGameLibrary_refreshInstalledGamesLibrary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4[5] lock];
    v3 = [v4[1] remoteObjectProxy];
    [v4[5] unlock];
    [v3 requestInstalledGamesWithReply:&__block_literal_global_1];
  }
}

- (void)fetchInstalledGamesWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__GPGameLibrary_fetchInstalledGamesWithCompletionHandler___block_invoke;
    block[3] = &unk_2796858C0;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    dispatch_async(queue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __58__GPGameLibrary_fetchInstalledGamesWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    [v6[5] lock];
    if (*(v6 + 33) == 1)
    {
      [v6[5] unlock];
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v4 = [v6[1] remoteObjectProxy];
      [v6[5] unlock];
      [v4 requestInstalledGamesWithReply:&__block_literal_global_14];
      v5 = v6[6];
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

- (void)fetchAppsWithBundleIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__GPGameLibrary_fetchAppsWithBundleIdentifiers_completionHandler___block_invoke;
    v9[3] = &unk_279685930;
    objc_copyWeak(&v12, &location);
    v11 = v7;
    v10 = v6;
    dispatch_async(queue, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __66__GPGameLibrary_fetchAppsWithBundleIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 48));
    [v3[5] lock];
    if (*(v3 + 33) == 1)
    {
      [v3[5] unlock];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v5 = [v3[1] remoteObjectProxy];
      [v3[5] unlock];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __66__GPGameLibrary_fetchAppsWithBundleIdentifiers_completionHandler___block_invoke_2;
      v7[3] = &unk_279685908;
      v6 = *(a1 + 32);
      v8 = *(a1 + 40);
      [v5 requestInstalledGamesWithBundleIDs:v6 withReply:v7];
    }
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void __66__GPGameLibrary_fetchAppsWithBundleIdentifiers_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [GPGameLibrary gameLibraryAppsFromGameLibraryGames:a2];
  (*(*(a1 + 32) + 16))();
}

- (void)fetchAppsWithStoreIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__GPGameLibrary_fetchAppsWithStoreIdentifiers_completionHandler___block_invoke;
    v9[3] = &unk_279685930;
    objc_copyWeak(&v12, &location);
    v11 = v7;
    v10 = v6;
    dispatch_async(queue, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __65__GPGameLibrary_fetchAppsWithStoreIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 48));
    [v3[5] lock];
    if (*(v3 + 33) == 1)
    {
      [v3[5] unlock];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v5 = [v3[1] remoteObjectProxy];
      [v3[5] unlock];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __65__GPGameLibrary_fetchAppsWithStoreIdentifiers_completionHandler___block_invoke_2;
      v7[3] = &unk_279685908;
      v6 = *(a1 + 32);
      v8 = *(a1 + 40);
      [v5 requestInstalledGamesWithAdamIDs:v6 withReply:v7];
    }
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void __65__GPGameLibrary_fetchAppsWithStoreIdentifiers_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [GPGameLibrary gameLibraryAppsFromGameLibraryGames:a2];
  (*(*(a1 + 32) + 16))();
}

- (id)installedGames
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = objc_opt_new();
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__GPGameLibrary_installedGames__block_invoke;
  v6[3] = &unk_279685980;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __31__GPGameLibrary_installedGames__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) lock];
  v2 = *(a1 + 32);
  if (*(v2 + 33) == 1)
  {
    v3 = *(v2 + 40);

    [v3 unlock];
  }

  else
  {
    v4 = [*(v2 + 8) remoteObjectProxy];
    [*(*(a1 + 32) + 40) unlock];
    v5 = dispatch_semaphore_create(0);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __31__GPGameLibrary_installedGames__block_invoke_2;
    v9[3] = &unk_279685958;
    v6 = *(a1 + 40);
    v10 = v5;
    v11 = v6;
    v7 = v5;
    [v4 requestInstalledGamesWithReply:v9];
    v8 = dispatch_time(0, 1000000000);
    dispatch_semaphore_wait(v7, v8);
  }
}

void __31__GPGameLibrary_installedGames__block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = [GPGameLibraryApp alloc];
        v10 = [v8 persistentIdentifier];
        v11 = [v8 bundleID];
        v12 = [v8 adamID];
        v13 = -[GPGameLibraryApp initWithPersistentIdentifier:bundleID:adamID:isGame:](v9, "initWithPersistentIdentifier:bundleID:adamID:isGame:", v10, v11, v12, [v8 isGame]);

        [v3 addObject:v13];
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v3;
  v16 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
  v17 = *MEMORY[0x277D85DE8];
}

- (id)appsWithBundleIdentifiers:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = objc_opt_new();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__GPGameLibrary_appsWithBundleIdentifiers___block_invoke;
  block[3] = &unk_2796859A8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __43__GPGameLibrary_appsWithBundleIdentifiers___block_invoke(void *a1)
{
  [*(a1[4] + 40) lock];
  v2 = a1[4];
  if (*(v2 + 33) == 1)
  {
    v3 = *(v2 + 40);

    [v3 unlock];
  }

  else
  {
    v4 = [*(v2 + 8) remoteObjectProxy];
    [*(a1[4] + 40) unlock];
    v5 = dispatch_semaphore_create(0);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__GPGameLibrary_appsWithBundleIdentifiers___block_invoke_2;
    v10[3] = &unk_279685958;
    v7 = a1[5];
    v6 = a1[6];
    v11 = v5;
    v12 = v6;
    v8 = v5;
    [v4 requestInstalledGamesWithBundleIDs:v7 withReply:v10];
    v9 = dispatch_time(0, 1000000000);
    dispatch_semaphore_wait(v8, v9);
  }
}

void __43__GPGameLibrary_appsWithBundleIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = [GPGameLibraryApp alloc];
        v10 = [v8 persistentIdentifier];
        v11 = [v8 bundleID];
        v12 = [v8 adamID];
        v13 = -[GPGameLibraryApp initWithPersistentIdentifier:bundleID:adamID:isGame:](v9, "initWithPersistentIdentifier:bundleID:adamID:isGame:", v10, v11, v12, [v8 isGame]);

        [v3 addObject:v13];
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v3;
  v16 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
  v17 = *MEMORY[0x277D85DE8];
}

- (id)appsWithStoreIdentifiers:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = objc_opt_new();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__GPGameLibrary_appsWithStoreIdentifiers___block_invoke;
  block[3] = &unk_2796859A8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __42__GPGameLibrary_appsWithStoreIdentifiers___block_invoke(void *a1)
{
  [*(a1[4] + 40) lock];
  v2 = a1[4];
  if (*(v2 + 33) == 1)
  {
    v3 = *(v2 + 40);

    [v3 unlock];
  }

  else
  {
    v4 = [*(v2 + 8) remoteObjectProxy];
    [*(a1[4] + 40) unlock];
    v5 = dispatch_semaphore_create(0);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__GPGameLibrary_appsWithStoreIdentifiers___block_invoke_2;
    v10[3] = &unk_279685958;
    v7 = a1[5];
    v6 = a1[6];
    v11 = v5;
    v12 = v6;
    v8 = v5;
    [v4 requestInstalledGamesWithAdamIDs:v7 withReply:v10];
    v9 = dispatch_time(0, 1000000000);
    dispatch_semaphore_wait(v8, v9);
  }
}

void __42__GPGameLibrary_appsWithStoreIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = [GPGameLibraryApp alloc];
        v10 = [v8 persistentIdentifier];
        v11 = [v8 bundleID];
        v12 = [v8 adamID];
        v13 = -[GPGameLibraryApp initWithPersistentIdentifier:bundleID:adamID:isGame:](v9, "initWithPersistentIdentifier:bundleID:adamID:isGame:", v10, v11, v12, [v8 isGame]);

        [v3 addObject:v13];
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v3;
  v16 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
  v17 = *MEMORY[0x277D85DE8];
}

void __45__GPGameLibrary__onqueue_connectToXPCService__block_invoke_cold_1()
{
  v1 = getGPLogger();
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void __45__GPGameLibrary__onqueue_connectToXPCService__block_invoke_7_cold_1()
{
  v1 = getGPLogger();
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)installedGamesDidChange:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = getGPLogger();
  if (OUTLINED_FUNCTION_1(v3))
  {
    [a1 count];
    OUTLINED_FUNCTION_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)installedGamesDidChange:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = getGPLogger();
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __56__GPGameLibrary_registerInstalledGamesDidChangeHandler___block_invoke_cold_1(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = getGPLogger();
  if (OUTLINED_FUNCTION_1(v3))
  {
    [*a1 count];
    OUTLINED_FUNCTION_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end