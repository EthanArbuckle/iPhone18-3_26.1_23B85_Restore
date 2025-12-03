@interface BBRemoteDataProviderConnection
- (BBRemoteDataProviderConnection)initWithServiceName:(id)name bundleID:(id)d delegate:(id)delegate;
- (id)dataProviderForSectionID:(id)d;
- (id)dataProvidersForUniversalSectionID:(id)d;
- (id)debugDescriptionWithChildren:(unint64_t)children;
- (void)_queue_removeDataProvider:(id)provider;
- (void)addDataProviderWithSectionID:(id)d clientProxy:(id)proxy identity:(id)identity completion:(id)completion;
- (void)addParentSectionFactory:(id)factory;
- (void)clientIsReady:(id)ready;
- (void)performBlockOnDataProviders:(id)providers;
- (void)removeDataProvider:(id)provider;
- (void)removeDataProviderWithSectionID:(id)d;
- (void)setConnected:(BOOL)connected completion:(id)completion;
@end

@implementation BBRemoteDataProviderConnection

- (BBRemoteDataProviderConnection)initWithServiceName:(id)name bundleID:(id)d delegate:(id)delegate
{
  nameCopy = name;
  dCopy = d;
  delegateCopy = delegate;
  if (!nameCopy)
  {
    [BBRemoteDataProviderConnection initWithServiceName:a2 bundleID:self delegate:?];
  }

  v12 = [(BBRemoteDataProviderConnection *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_delegate, delegate);
    v13->_connected = 0;
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.bulletinboard.BBRemoteDataProviderConnection.queue", v14);
    queue = v13->_queue;
    v13->_queue = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dataProvidersBySectionID = v13->_dataProvidersBySectionID;
    v13->_dataProvidersBySectionID = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dataProvidersByUniversalSectionID = v13->_dataProvidersByUniversalSectionID;
    v13->_dataProvidersByUniversalSectionID = v19;

    [(BBRemoteDataProviderConnection *)v13 setServiceName:nameCopy];
    [(BBRemoteDataProviderConnection *)v13 setBundleID:dCopy];
    v13->_clientReady = 0;
  }

  return v13;
}

- (id)debugDescriptionWithChildren:(unint64_t)children
{
  v5 = [MEMORY[0x277CCAB68] stringWithString:&stru_28541A970];
  if (children)
  {
    childrenCopy = children;
    do
    {
      [v5 appendString:@"    "];
      --childrenCopy;
    }

    while (childrenCopy);
  }

  v7 = MEMORY[0x277CCAB68];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = objc_msgSend(v7, "stringWithFormat:", @"%@<%@: %p> (%@"), v5, v9, self, self->_serviceName;

  if (self->_bundleID)
  {
    [v10 appendFormat:@", %@", self->_bundleID];
  }

  [v10 appendString:@""]);
  if (self->_connected)
  {
    v11 = @" [CONNECTED]";
  }

  else
  {
    v11 = @" [DISCONNECTED]";
  }

  [v10 appendString:v11];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__BBRemoteDataProviderConnection_debugDescriptionWithChildren___block_invoke;
  block[3] = &unk_278D2A9F0;
  block[4] = self;
  v13 = v10;
  v18 = v13;
  childrenCopy2 = children;
  dispatch_sync(queue, block);
  v14 = v18;
  v15 = v13;

  return v13;
}

void __63__BBRemoteDataProviderConnection_debugDescriptionWithChildren___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(a1[4] + 32) count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = *(a1[4] + 32);
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = [*(a1[4] + 32) objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v6)];
          v8 = a1[5];
          v9 = [v7 debugDescriptionWithChildren:a1[6] + 1];
          [v8 appendFormat:@"\n%@", v9];

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setConnected:(BOOL)connected completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__BBRemoteDataProviderConnection_setConnected_completion___block_invoke;
  block[3] = &unk_278D2B638;
  connectedCopy = connected;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

uint64_t __58__BBRemoteDataProviderConnection_setConnected_completion___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (*(v2 + 8) != v3)
  {
    *(v2 + 8) = v3;
    v4 = *(*(a1 + 32) + 8);
    v5 = BBLogConnection;
    v6 = os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT);
    if (v4 == 1)
    {
      if (!v6)
      {
        goto LABEL_19;
      }

      v7 = *(a1 + 32);
      v8 = v5;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(*(a1 + 32) + 56);
      *buf = 138543618;
      v33 = v10;
      v34 = 2114;
      v35 = v11;
      _os_log_impl(&dword_241EFF000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ CONNECTED", buf, 0x16u);
    }

    else
    {
      if (v6)
      {
        v12 = *(a1 + 32);
        v13 = v5;
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = *(*(a1 + 32) + 56);
        *buf = 138543618;
        v33 = v15;
        v34 = 2114;
        v35 = v16;
        _os_log_impl(&dword_241EFF000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ DISCONNECTED", buf, 0x16u);
      }

      v17 = *(a1 + 32);
      if (*(v17 + 48) == 1)
      {
        v18 = BBLogConnection;
        if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(*(a1 + 32) + 56);
          *buf = 138543362;
          v33 = v19;
          _os_log_impl(&dword_241EFF000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ suspending access queue", buf, 0xCu);
        }

        *(*(a1 + 32) + 48) = 0;
        v17 = *(a1 + 32);
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v8 = *(v17 + 32);
      v20 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v28;
        do
        {
          v23 = 0;
          do
          {
            if (*v28 != v22)
            {
              objc_enumerationMutation(v8);
            }

            v24 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:{*(*(&v27 + 1) + 8 * v23), v27}];
            [v24 setClientProxy:0 completion:0];

            ++v23;
          }

          while (v21 != v23);
          v21 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v21);
      }
    }
  }

LABEL_19:
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_queue_removeDataProvider:(id)provider
{
  v16 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  sectionIdentifier = [providerCopy sectionIdentifier];
  if (sectionIdentifier)
  {
    [providerCopy setClientProxy:0 completion:0];
    [(NSMutableDictionary *)self->_dataProvidersBySectionID removeObjectForKey:sectionIdentifier];
    universalSectionIdentifier = [providerCopy universalSectionIdentifier];
    if (universalSectionIdentifier)
    {
      v7 = [(NSMutableDictionary *)self->_dataProvidersByUniversalSectionID objectForKey:universalSectionIdentifier];
      [v7 removeObject:providerCopy];
      if (![v7 count])
      {
        [(NSMutableDictionary *)self->_dataProvidersByUniversalSectionID removeObjectForKey:universalSectionIdentifier];
      }
    }

    [(BBRemoteDataProviderStoreDelegate *)self->_delegate dataProviderStore:self didRemoveDataProvider:providerCopy];
    goto LABEL_9;
  }

  v8 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    universalSectionIdentifier = v8;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = providerCopy;
    _os_log_impl(&dword_241EFF000, universalSectionIdentifier, OS_LOG_TYPE_DEFAULT, "%{public}@ Asked to remove a data provider (%@) without a sectionID. Ignoring.", &v12, 0x16u);

LABEL_9:
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addDataProviderWithSectionID:(id)d clientProxy:(id)proxy identity:(id)identity completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  proxyCopy = proxy;
  identityCopy = identity;
  completionCopy = completion;
  v14 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = self->_serviceName;
    *buf = 138543618;
    v28 = serviceName;
    v29 = 2114;
    v30 = dCopy;
    _os_log_impl(&dword_241EFF000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ updating data provider proxy for section %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__BBRemoteDataProviderConnection_addDataProviderWithSectionID_clientProxy_identity_completion___block_invoke;
  block[3] = &unk_278D2B1D8;
  block[4] = self;
  v23 = dCopy;
  v24 = identityCopy;
  v25 = proxyCopy;
  v26 = completionCopy;
  v17 = completionCopy;
  v18 = proxyCopy;
  v19 = identityCopy;
  v20 = dCopy;
  dispatch_async(queue, block);

  v21 = *MEMORY[0x277D85DE8];
}

void __95__BBRemoteDataProviderConnection_addDataProviderWithSectionID_clientProxy_identity_completion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v4 = [*(v2 + 32) objectForKey:*(a1 + 40)];
    v5 = v4 == 0;
    v6 = BBLogConnection;
    if (v4)
    {
      if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
      {
        __95__BBRemoteDataProviderConnection_addDataProviderWithSectionID_clientProxy_identity_completion___block_invoke_cold_1(v3, (a1 + 40));
      }
    }

    else
    {
      if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*v3 + 56);
        v11 = *(a1 + 40);
        *buf = 138543618;
        v23 = v10;
        v24 = 2114;
        v25 = v11;
        _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ adding new data provider proxy for section %{public}@", buf, 0x16u);
      }

      v4 = [[BBRemoteDataProvider alloc] initWithSectionID:*(a1 + 40) delegate:*(a1 + 32)];
      [*(*(a1 + 32) + 32) setObject:v4 forKey:*(a1 + 40)];
      v12 = [*(a1 + 48) universalSectionIdentifier];
      if (v12)
      {
        v13 = [*(*v3 + 40) objectForKey:v12];
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
        }

        [v13 addObject:v4];
        [*(*v3 + 40) setObject:v13 forKey:v12];
      }
    }

    [(BBDataProvider *)v4 setIdentity:*(a1 + 48)];
    objc_initWeak(buf, v4);
    v14 = *(a1 + 56);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __95__BBRemoteDataProviderConnection_addDataProviderWithSectionID_clientProxy_identity_completion___block_invoke_37;
    v17[3] = &unk_278D2B660;
    objc_copyWeak(&v20, buf);
    v21 = v5;
    v15 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v18 = v15;
    v19 = *(a1 + 64);
    [(BBRemoteDataProvider *)v4 setClientProxy:v14 completion:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);

    v16 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *(a1 + 64);
    v8 = *(*(a1 + 64) + 16);
    v9 = *MEMORY[0x277D85DE8];

    v8();
  }
}

void __95__BBRemoteDataProviderConnection_addDataProviderWithSectionID_clientProxy_identity_completion___block_invoke_37(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  v4 = *(a1 + 64) != 1 || WeakRetained == 0;
  if (!v4 && ([*(a1 + 32) dataProviderForSectionID:*(a1 + 40)], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 == v3))
  {
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEBUG))
    {
      __95__BBRemoteDataProviderConnection_addDataProviderWithSectionID_clientProxy_identity_completion___block_invoke_37_cold_1((a1 + 40));
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __95__BBRemoteDataProviderConnection_addDataProviderWithSectionID_clientProxy_identity_completion___block_invoke_38;
    v8[3] = &unk_278D2AC38;
    v9 = v3;
    v10 = *(a1 + 48);
    [v7 dataProviderStore:v6 didAddDataProvider:v9 performMigration:0 completion:v8];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __95__BBRemoteDataProviderConnection_addDataProviderWithSectionID_clientProxy_identity_completion___block_invoke_38(uint64_t a1)
{
  [*(a1 + 32) setServerIsReady:1];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)removeDataProviderWithSectionID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__BBRemoteDataProviderConnection_removeDataProviderWithSectionID___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

void __66__BBRemoteDataProviderConnection_removeDataProviderWithSectionID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[4] objectForKeyedSubscript:*(a1 + 40)];
  [v1 _queue_removeDataProvider:v2];
}

- (void)addParentSectionFactory:(id)factory
{
  v15 = *MEMORY[0x277D85DE8];
  factoryCopy = factory;
  v5 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = self->_serviceName;
    v7 = v5;
    sectionIdentifier = [factoryCopy sectionIdentifier];
    v11 = 138543618;
    v12 = serviceName;
    v13 = 2114;
    v14 = sectionIdentifier;
    _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ adding parent section factory for section %{public}@", &v11, 0x16u);
  }

  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(BBRemoteDataProviderStoreDelegate *)self->_delegate dataProviderStore:self didAddParentSectionFactory:factoryCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)clientIsReady:(id)ready
{
  v10 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  if (!self->_clientReady)
  {
    v5 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = self->_serviceName;
      v8 = 138543362;
      v9 = serviceName;
      _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ told client is ready", &v8, 0xCu);
    }

    self->_clientReady = 1;
  }

  readyCopy[2](readyCopy);

  v7 = *MEMORY[0x277D85DE8];
}

- (id)dataProviderForSectionID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__BBRemoteDataProviderConnection_dataProviderForSectionID___block_invoke;
  block[3] = &unk_278D2A8D8;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __59__BBRemoteDataProviderConnection_dataProviderForSectionID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)dataProvidersForUniversalSectionID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__BBRemoteDataProviderConnection_dataProvidersForUniversalSectionID___block_invoke;
  block[3] = &unk_278D2A8D8;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __69__BBRemoteDataProviderConnection_dataProvidersForUniversalSectionID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)removeDataProvider:(id)provider
{
  providerCopy = provider;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(BBRemoteDataProviderConnection *)a2 removeDataProvider:?];
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__BBRemoteDataProviderConnection_removeDataProvider___block_invoke;
  v8[3] = &unk_278D2A628;
  v8[4] = self;
  v9 = providerCopy;
  v7 = providerCopy;
  dispatch_async(queue, v8);
}

- (void)performBlockOnDataProviders:(id)providers
{
  providersCopy = providers;
  if (!providersCopy)
  {
    [(BBRemoteDataProviderConnection *)a2 performBlockOnDataProviders:?];
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__BBRemoteDataProviderConnection_performBlockOnDataProviders___block_invoke;
  v8[3] = &unk_278D2AC38;
  v8[4] = self;
  v9 = providersCopy;
  v7 = providersCopy;
  dispatch_async(queue, v8);
}

void __62__BBRemoteDataProviderConnection_performBlockOnDataProviders___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = *(*(a1 + 32) + 32);
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(*(&v20 + 1) + 8 * v7)];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v2;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)initWithServiceName:(uint64_t)a1 bundleID:(uint64_t)a2 delegate:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBRemoteDataProviderConnection.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"serviceName"}];
}

void __95__BBRemoteDataProviderConnection_addDataProviderWithSectionID_clientProxy_identity_completion___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 56);
  v3 = *a2;
  OUTLINED_FUNCTION_0_1();
  v8 = v4;
  _os_log_error_impl(&dword_241EFF000, v5, OS_LOG_TYPE_ERROR, "%{public}@ already have data provider for section %{public}@; using existing one", v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __95__BBRemoteDataProviderConnection_addDataProviderWithSectionID_clientProxy_identity_completion___block_invoke_37_cold_1(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_0_1();
  v6 = v2;
  _os_log_debug_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEBUG, "ADDING REMOTE %{public}@, %{public}@", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)removeDataProvider:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBRemoteDataProviderConnection.m" lineNumber:247 description:@"BBRemoteDataProviderConnection was asked to remove a data provider that isn't a BBRemoteDataProvider"];
}

- (void)performBlockOnDataProviders:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBRemoteDataProviderConnection.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

@end