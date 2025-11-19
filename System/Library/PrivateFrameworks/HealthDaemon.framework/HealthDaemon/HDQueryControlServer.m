@interface HDQueryControlServer
- (BOOL)hasActiveQueries;
- (HDQueryControlServer)initWithParentServer:(id)a3 connectionQueue:(id)a4;
- (const)_lock_hasActiveQueries;
- (id)createQueryServerEndpointForIdentifier:(id)a3 queryUUID:(id)a4 configuration:(id)a5 forceReactivation:(BOOL)a6 error:(id *)a7;
- (void)_lock_queryDidFinish:(uint64_t)a1;
- (void)invalidate;
- (void)queryServer:(id)a3 shouldStartWithCompletion:(id)a4;
- (void)queryServerDidFinish:(id)a3;
- (void)taskServerDidFailToInitializeForUUID:(id)a3;
@end

@implementation HDQueryControlServer

- (HDQueryControlServer)initWithParentServer:(id)a3 connectionQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = HDQueryControlServer;
  v8 = [(HDQueryControlServer *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_server, v6);
    v10 = [v6 client];
    client = v9->_client;
    v9->_client = v10;

    v12 = [v6 profile];
    objc_storeWeak(&v9->_profile, v12);

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    queryServersByUUID = v9->_queryServersByUUID;
    v9->_queryServersByUUID = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    queryServerEndpointsByUUID = v9->_queryServerEndpointsByUUID;
    v9->_queryServerEndpointsByUUID = v15;

    objc_storeStrong(&v9->_connectionQueue, a4);
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (void)invalidate
{
  v30 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_queryServersByUUID allValues];
  queryServersByUUID = self->_queryServersByUUID;
  self->_queryServersByUUID = 0;

  v5 = [(NSMutableDictionary *)self->_queryServerEndpointsByUUID allValues];
  queryServerEndpointsByUUID = self->_queryServerEndpointsByUUID;
  self->_queryServerEndpointsByUUID = 0;

  os_unfair_lock_unlock(&self->_lock);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __34__HDQueryControlServer_invalidate__block_invoke;
        v23[3] = &unk_278613920;
        v23[4] = self;
        v23[5] = v12;
        [v12 deactivateServerWithCompletion:v23];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v19 + 1) + 8 * v17++) invalidate];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __34__HDQueryControlServer_invalidate__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 40);
    v5 = v2;
    v6 = [v4 queryUUID];
    v7 = 138412290;
    v8 = v6;
    _os_log_debug_impl(&dword_228986000, v5, OS_LOG_TYPE_DEBUG, "Stopped query server %@", &v7, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (id)createQueryServerEndpointForIdentifier:(id)a3 queryUUID:(id)a4 configuration:(id)a5 forceReactivation:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!v12)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Nil query server identifier";
LABEL_13:
    [v22 hk_assignError:a7 code:3 format:v23];
    v24 = 0;
    goto LABEL_21;
  }

  if (!v13)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Nil query UUID";
    goto LABEL_13;
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_server);
  }

  else
  {
    WeakRetained = 0;
  }

  v16 = [WeakRetained daemon];
  v17 = [v16 taskServerRegistry];

  if (self)
  {
    client = self->_client;
  }

  else
  {
    client = 0;
  }

  v19 = [v17 createTaskServerEndpointForIdentifier:v12 taskUUID:v13 instanceUUID:v13 configuration:v14 client:client connectionQueue:self->_connectionQueue error:a7];
  if (v19)
  {
    v20 = v19;
    os_unfair_lock_lock(&self->_lock);
    if (v8)
    {
      v21 = [(NSMutableDictionary *)self->_queryServersByUUID objectForKeyedSubscript:v13];
      if (v21)
      {
        [(HDQueryControlServer *)self _lock_queryDidFinish:v21];
      }
    }

    else
    {
      v21 = 0;
    }

    v25 = [(NSMutableDictionary *)self->_queryServerEndpointsByUUID objectForKeyedSubscript:v13];

    if (v25)
    {
      v26 = MEMORY[0x277CCA9B8];
      v27 = [v13 UUIDString];
      [v26 hk_assignError:a7 code:100 format:{@"Query '%@' already exists", v27}];

      [v20 invalidate];
      v20 = 0;
    }

    else
    {
      [(NSMutableDictionary *)self->_queryServerEndpointsByUUID setObject:v20 forKeyedSubscript:v13];
      [v20 setDelegate:self];
      [v20 setTaskServerDelegate:self];
      [v20 resume];
    }

    os_unfair_lock_unlock(&self->_lock);
    [v21 deactivateServerWithCompletion:0];
    v24 = [v20 listenerEndpoint];
  }

  else
  {
    v24 = 0;
  }

LABEL_21:

  return v24;
}

- (void)_lock_queryDidFinish:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_assert_owner((a1 + 32));
    v9 = [v3 queryUUID];
    v4 = [*(a1 + 8) objectForKeyedSubscript:?];

    if (v4 == v3)
    {
      v5 = [(HDQueryControlServer *)a1 _lock_hasActiveQueries];
      v6 = [*(a1 + 16) objectForKeyedSubscript:v9];
      [*(a1 + 8) removeObjectForKey:v9];
      [*(a1 + 16) removeObjectForKey:v9];
      v7 = [(HDQueryControlServer *)a1 _lock_hasActiveQueries];
      [v6 invalidate];
      if (v5 != v7)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained _serverActivityChanged];
      }
    }
  }
}

- (BOOL)hasActiveQueries
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HDQueryControlServer *)self _lock_hasActiveQueries];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (const)_lock_hasActiveQueries
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_assert_owner(result + 8);
    if ([*&v1[2]._os_unfair_lock_opaque count])
    {
      return 1;
    }

    else
    {
      return ([*&v1[4]._os_unfair_lock_opaque count] != 0);
    }
  }

  return result;
}

- (void)taskServerDidFailToInitializeForUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_queryServerEndpointsByUUID objectForKeyedSubscript:v4];
  [(NSMutableDictionary *)self->_queryServerEndpointsByUUID setObject:0 forKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_lock);
  [v5 invalidate];
}

void __53__HDQueryControlServer__startQueryServer_completion___block_invoke(void *a1, int a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    os_unfair_lock_lock((a1[4] + 32));
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = [v5 queryUUID];
    [v6 setObject:v5 forKeyedSubscript:v7];

    os_unfair_lock_unlock((a1[4] + 32));
  }

  (*(a1[6] + 16))();
}

void __95__HDQueryControlServer_queryServer_requestsAuthorizationWithContext_promptIfNeeded_completion___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a3)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = v10[6];
    }

    v11 = v10;
    v12 = [v11 authorizationOracle];
    v13 = *(a1 + 32);
    if (v13)
    {
      WeakRetained = objc_loadWeakRetained((v13 + 40));
    }

    else
    {
      WeakRetained = 0;
    }

    v15 = [WeakRetained objectAuthorizationPromptHandler];
    [v12 handleObjectAuthorizationRequestsWithPromptHandler:v15 objectType:0 completion:&__block_literal_global_143];

LABEL_10:
    goto LABEL_11;
  }

  if (v8)
  {
    _HKInitializeLogging();
    v11 = HKLogAuthorization();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543362;
      v18 = v9;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "Failed to determine object authorization status: %{public}@", &v17, 0xCu);
    }

    goto LABEL_10;
  }

LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
}

void __95__HDQueryControlServer_queryServer_requestsAuthorizationWithContext_promptIfNeeded_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = HKLogAuthorization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Failed to handle object authorization request: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)queryServer:(id)a3 shouldStartWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_server);
    v9 = [WeakRetained daemon];
    v10 = [v9 queryManager];

    if (v10)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __53__HDQueryControlServer__startQueryServer_completion___block_invoke;
      v12[3] = &unk_278613150;
      v12[4] = self;
      v13 = v6;
      v14 = v7;
      [v10 startQueryServer:v13 completion:v12];
    }

    else
    {
      v11 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Query manager unavailable"];
      (*(v7 + 2))(v7, 0, v11);
    }
  }
}

- (void)queryServerDidFinish:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HDQueryControlServer *)self _lock_queryDidFinish:v4];

  os_unfair_lock_unlock(&self->_lock);
}

@end