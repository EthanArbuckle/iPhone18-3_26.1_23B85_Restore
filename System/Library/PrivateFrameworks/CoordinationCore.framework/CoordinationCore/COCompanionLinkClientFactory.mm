@interface COCompanionLinkClientFactory
- (BOOL)_isKnownDevice:(id)device;
- (COCompanionLinkClientFactory)init;
- (COCompanionLinkClientFactory)initWithDispatchQueue:(id)queue;
- (id)_clientsForRapportClient_unsafe:(id)client_unsafe;
- (id)_reuseableRapportClientInClientsList:(id)list;
- (id)activeDevices;
- (id)companionLinkClientForCurrentDevice;
- (id)companionLinkClientForDevice:(id)device withIDSIdentifier:(id)identifier;
- (void)_withLock:(id)lock;
- (void)activateCompanionLinkClient:(id)client;
- (void)didActivate:(id)activate error:(id)error;
- (void)didChangeDevice:(id)device flags:(unsigned int)flags;
- (void)didChangeErrorFlags:(id)flags;
- (void)didDisconnect:(id)disconnect;
- (void)didFindDevice:(id)device;
- (void)didInterrupt:(id)interrupt;
- (void)didInvalidate:(id)invalidate;
- (void)didLoseDevice:(id)device;
- (void)didRegisterEventID:(id)d client:(id)client;
- (void)didRegisterRequestID:(id)d client:(id)client;
- (void)didUpdateLocalDevice:(id)device;
- (void)didUpdateState:(id)state;
- (void)invalidateCompanionLinkClient:(id)client;
- (void)removeClient:(id)client;
@end

@implementation COCompanionLinkClientFactory

- (COCompanionLinkClientFactory)initWithDispatchQueue:(id)queue
{
  v20 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = COCompanionLinkClientFactory;
  v6 = [(COCompanionLinkClientFactory *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, queue);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    locals = v7->_locals;
    v7->_locals = weakObjectsHashTable;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    clients = v7->_clients;
    v7->_clients = strongToStrongObjectsMapTable;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    activeDevices = v7->_activeDevices;
    v7->_activeDevices = dictionary;

    v14 = COCoreLogForCategory(19);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = v7;
      _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p companion link factory created", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (COCompanionLinkClientFactory)init
{
  if (init_onceToken != -1)
  {
    [COCompanionLinkClientFactory init];
  }

  v3 = init_queue;

  return [(COCompanionLinkClientFactory *)self initWithDispatchQueue:v3];
}

void __36__COCompanionLinkClientFactory_init__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INTERACTIVE, 0);

  v1 = dispatch_queue_create("com.apple.coordination.COCompanionLinkClientFactory", attr);
  v2 = init_queue;
  init_queue = v1;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)activeDevices
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__COCompanionLinkClientFactory_activeDevices__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCompanionLinkClientFactory *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __45__COCompanionLinkClientFactory_activeDevices__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_isKnownDevice:(id)device
{
  v36 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  os_unfair_lock_assert_owner(&self->_lock);
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
  if (idsDeviceIdentifier)
  {
    clients = [(COCompanionLinkClientFactory *)self clients];
    v7 = [clients objectForKey:idsDeviceIdentifier];
  }

  else
  {
    v7 = 0;
  }

  if ([v7 count] == 1)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    locals = [(COCompanionLinkClientFactory *)self locals];
    v24 = [locals countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v24)
    {
      v9 = *v31;
      v25 = locals;
      v23 = *v31;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(locals);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          rapport = [v11 rapport];
          activeDevices = [rapport activeDevices];

          v14 = [activeDevices countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v27;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(activeDevices);
                }

                idsDeviceIdentifier2 = [*(*(&v26 + 1) + 8 * j) idsDeviceIdentifier];
                v19 = [idsDeviceIdentifier2 isEqualToString:idsDeviceIdentifier];

                if (v19)
                {

                  v20 = 1;
                  locals = v25;
                  goto LABEL_24;
                }
              }

              v15 = [activeDevices countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          locals = v25;
          v9 = v23;
        }

        v20 = 0;
        v24 = [v25 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v24);
    }

    else
    {
      v20 = 0;
    }

LABEL_24:
  }

  else
  {
    v20 = 1;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)_clientsForRapportClient_unsafe:(id)client_unsafe
{
  v44 = *MEMORY[0x277D85DE8];
  client_unsafeCopy = client_unsafe;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  locals = [(COCompanionLinkClientFactory *)self locals];
  v7 = [locals countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(locals);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        rapport = [v11 rapport];

        if (rapport == client_unsafeCopy)
        {
          v13 = [v5 arrayByAddingObject:v11];

          v5 = v13;
        }
      }

      v8 = [locals countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v8);
  }

  clients = [(COCompanionLinkClientFactory *)self clients];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = [clients countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v28)
  {
    v27 = *v34;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(clients);
        }

        v16 = *(*(&v33 + 1) + 8 * j);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v17 = [clients objectForKey:{v16, v27}];
        v18 = [v17 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v30;
          do
          {
            for (k = 0; k != v19; ++k)
            {
              if (*v30 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v29 + 1) + 8 * k);
              rapport2 = [v22 rapport];

              if (rapport2 == client_unsafeCopy)
              {
                v24 = [v5 arrayByAddingObject:v22];

                v5 = v24;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v29 objects:v41 count:16];
          }

          while (v19);
        }
      }

      v28 = [clients countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v28);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_reuseableRapportClientInClientsList:(id)list
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  listCopy = list;
  v4 = [listCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(listCopy);
      }

      rapport = [*(*(&v11 + 1) + 8 * v7) rapport];
      if (([rapport co_CompanionLinkClientFlags] & 0xC) == 0)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [listCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    rapport = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return rapport;
}

- (id)companionLinkClientForCurrentDevice
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke;
  v9[3] = &unk_278E15950;
  v9[4] = self;
  v9[5] = &v10;
  [(COCompanionLinkClientFactory *)self _withLock:v9];
  v3 = COCoreLogForCategory(19);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v11[5];
    rapport = [v4 rapport];
    *buf = 134218496;
    selfCopy = self;
    v18 = 2048;
    v19 = v4;
    v20 = 2048;
    v21 = rapport;
    _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%p returning %p for current device use riding on %p", buf, 0x20u);
  }

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) locals];
  v4 = [*v2 _reuseableRapportClientInClientsList:v3];
  if (!v4)
  {
    v5 = [*(a1 + 32) companionLinkClientClass];
    v6 = [*(a1 + 32) dispatchQueue];
    v4 = [v5 co_companionLinkClientForDiscoveryOnDispatchQueue:v6];

    objc_initWeak(&location, *(a1 + 32));
    objc_initWeak(&from, v4);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_2;
    v39[3] = &unk_278E158B0;
    objc_copyWeak(&v40, &location);
    objc_copyWeak(&v41, &from);
    [v4 setInterruptionHandler:v39];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_3;
    v36[3] = &unk_278E158B0;
    objc_copyWeak(&v37, &location);
    objc_copyWeak(&v38, &from);
    [v4 setStateUpdatedHandler:v36];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_4;
    v33[3] = &unk_278E158B0;
    objc_copyWeak(&v34, &location);
    objc_copyWeak(&v35, &from);
    [v4 setErrorFlagsChangedHandler:v33];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_5;
    v30[3] = &unk_278E158B0;
    objc_copyWeak(&v31, &location);
    objc_copyWeak(&v32, &from);
    [v4 setDisconnectHandler:v30];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_6;
    v27[3] = &unk_278E158B0;
    objc_copyWeak(&v28, &location);
    objc_copyWeak(&v29, &from);
    [v4 setInvalidationHandler:v27];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_7;
    v25[3] = &unk_278E158D8;
    objc_copyWeak(&v26, &location);
    [v4 setDeviceFoundHandler:v25];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_8;
    v23[3] = &unk_278E158D8;
    objc_copyWeak(&v24, &location);
    [v4 setDeviceLostHandler:v23];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_9;
    v21[3] = &unk_278E15900;
    objc_copyWeak(&v22, &location);
    [v4 setDeviceChangedHandler:v21];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_10;
    v19[3] = &unk_278E158D8;
    objc_copyWeak(&v20, &location);
    [v4 setLocalDeviceUpdatedHandler:v19];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_11;
    v16[3] = &unk_278E15928;
    objc_copyWeak(&v17, &location);
    objc_copyWeak(&v18, &from);
    [v4 setRequestIDRegistrationCompletion:v16];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_12;
    v13[3] = &unk_278E15928;
    objc_copyWeak(&v14, &location);
    objc_copyWeak(&v15, &from);
    [v4 setEventIDRegistrationCompletion:v13];
    v7 = COCoreLogForCategory(19);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 134218498;
      v45 = v8;
      v46 = 2048;
      v47 = v4;
      v48 = 2112;
      v49 = v4;
      _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p created new local link %p (%@)", buf, 0x20u);
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&v41);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  v9 = [[COCompanionLinkClient alloc] initWithCompanionLinkClient:v4];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  [*(*(*(a1 + 40) + 8) + 40) setFactory:*(a1 + 32)];
  [v3 addObject:*(*(*(a1 + 40) + 8) + 40)];

  v12 = *MEMORY[0x277D85DE8];
}

void __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    [WeakRetained didInterrupt:v2];
  }
}

void __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    [WeakRetained didUpdateState:v2];
  }
}

void __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    [WeakRetained didChangeErrorFlags:v2];
  }
}

void __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    [WeakRetained didDisconnect:v2];
  }
}

void __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    [WeakRetained didInvalidate:v2];
  }
}

void __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_7(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setValue:0 forKey:@"siriInfo"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained didFindDevice:v5];
  }
}

void __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_8(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setValue:0 forKey:@"siriInfo"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained didLoseDevice:v5];
  }
}

void __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_9(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  [v7 setValue:0 forKey:@"siriInfo"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained didChangeDevice:v7 flags:a3];
  }
}

void __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_10(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setValue:0 forKey:@"siriInfo"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained didUpdateLocalDevice:v5];
  }
}

void __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_11(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (WeakRetained && v4)
  {
    [WeakRetained didRegisterRequestID:v6 client:v4];
  }
}

void __67__COCompanionLinkClientFactory_companionLinkClientForCurrentDevice__block_invoke_12(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (WeakRetained && v4)
  {
    [WeakRetained didRegisterEventID:v6 client:v4];
  }
}

- (id)companionLinkClientForDevice:(id)device withIDSIdentifier:(id)identifier
{
  v36 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  identifierCopy = identifier;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __79__COCompanionLinkClientFactory_companionLinkClientForDevice_withIDSIdentifier___block_invoke;
  v19 = &unk_278E15978;
  v8 = deviceCopy;
  v20 = v8;
  v9 = identifierCopy;
  v21 = v9;
  selfCopy = self;
  v23 = &v24;
  [(COCompanionLinkClientFactory *)self _withLock:&v16];
  v10 = COCoreLogForCategory(19);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v25[5];
    rapport = [v11 rapport];
    *buf = 134218496;
    selfCopy2 = self;
    v32 = 2048;
    v33 = v11;
    v34 = 2048;
    v35 = rapport;
    _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "%p returning %p for device use riding on %p", buf, 0x20u);
  }

  v13 = v25[5];
  _Block_object_dispose(&v24, 8);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __79__COCompanionLinkClientFactory_companionLinkClientForDevice_withIDSIdentifier___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) idsDeviceIdentifier];
  v3 = [v2 isEqualToString:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) setValue:*(a1 + 40) forKey:@"idsDeviceIdentifier"];
  }

  v4 = [*(a1 + 48) clients];
  v5 = [v4 objectForKey:*(a1 + 40)];
  v6 = [*(a1 + 48) _reuseableRapportClientInClientsList:v5];
  if (!v6)
  {
    if (!v5)
    {
      v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      [v4 setObject:v5 forKey:*(a1 + 40)];
    }

    v7 = [*(a1 + 48) companionLinkClientClass];
    v8 = *(a1 + 32);
    v9 = [*(a1 + 48) dispatchQueue];
    v6 = [v7 co_companionLinkClientToDevice:v8 dispatchQueue:v9];

    objc_initWeak(&location, *(a1 + 48));
    objc_initWeak(&from, v6);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __79__COCompanionLinkClientFactory_companionLinkClientForDevice_withIDSIdentifier___block_invoke_2;
    v28[3] = &unk_278E158B0;
    objc_copyWeak(&v29, &location);
    objc_copyWeak(&v30, &from);
    [v6 setInterruptionHandler:v28];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __79__COCompanionLinkClientFactory_companionLinkClientForDevice_withIDSIdentifier___block_invoke_3;
    v25[3] = &unk_278E158B0;
    objc_copyWeak(&v26, &location);
    objc_copyWeak(&v27, &from);
    [v6 setStateUpdatedHandler:v25];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __79__COCompanionLinkClientFactory_companionLinkClientForDevice_withIDSIdentifier___block_invoke_4;
    v22[3] = &unk_278E158B0;
    objc_copyWeak(&v23, &location);
    objc_copyWeak(&v24, &from);
    [v6 setErrorFlagsChangedHandler:v22];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __79__COCompanionLinkClientFactory_companionLinkClientForDevice_withIDSIdentifier___block_invoke_5;
    v19[3] = &unk_278E158B0;
    objc_copyWeak(&v20, &location);
    objc_copyWeak(&v21, &from);
    [v6 setDisconnectHandler:v19];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__COCompanionLinkClientFactory_companionLinkClientForDevice_withIDSIdentifier___block_invoke_6;
    v16[3] = &unk_278E158B0;
    objc_copyWeak(&v17, &location);
    objc_copyWeak(&v18, &from);
    [v6 setInvalidationHandler:v16];
    v10 = COCoreLogForCategory(19);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      *buf = 134218498;
      v34 = v11;
      v35 = 2048;
      v36 = v6;
      v37 = 2112;
      v38 = v6;
      _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "%p created new device link %p (%@)", buf, 0x20u);
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  v12 = [[COCompanionLinkClient alloc] initWithCompanionLinkClient:v6];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  [*(*(*(a1 + 56) + 8) + 40) setFactory:*(a1 + 48)];
  [v5 addObject:*(*(*(a1 + 56) + 8) + 40)];

  v15 = *MEMORY[0x277D85DE8];
}

void __79__COCompanionLinkClientFactory_companionLinkClientForDevice_withIDSIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    [WeakRetained didInterrupt:v2];
  }
}

void __79__COCompanionLinkClientFactory_companionLinkClientForDevice_withIDSIdentifier___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    [WeakRetained didUpdateState:v2];
  }
}

void __79__COCompanionLinkClientFactory_companionLinkClientForDevice_withIDSIdentifier___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    [WeakRetained didChangeErrorFlags:v2];
  }
}

void __79__COCompanionLinkClientFactory_companionLinkClientForDevice_withIDSIdentifier___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    [WeakRetained didDisconnect:v2];
  }
}

void __79__COCompanionLinkClientFactory_companionLinkClientForDevice_withIDSIdentifier___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    [WeakRetained didInvalidate:v2];
  }
}

- (void)didFindDevice:(id)device
{
  v33 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];

  if (idsDeviceIdentifier)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__0;
    v30 = __Block_byref_object_dispose__0;
    v31 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __46__COCompanionLinkClientFactory_didFindDevice___block_invoke;
    v23[3] = &unk_278E15700;
    v23[4] = self;
    v5 = deviceCopy;
    v24 = v5;
    v25 = &v26;
    [(COCompanionLinkClientFactory *)self _withLock:v23];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v27[5];
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v32 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          deviceFoundHandler = [v10 deviceFoundHandler];
          if (deviceFoundHandler && ([v10 flags] & 0xA) == 2)
          {
            dispatchQueue = [v10 dispatchQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __46__COCompanionLinkClientFactory_didFindDevice___block_invoke_14;
            block[3] = &unk_278E159A0;
            v18 = deviceFoundHandler;
            v17 = v5;
            dispatch_async(dispatchQueue, block);
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v19 objects:v32 count:16];
      }

      while (v7);
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v13 = COCoreLogForCategory(19);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(COCompanionLinkClientFactory *)self didFindDevice:deviceCopy, v13];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __46__COCompanionLinkClientFactory_didFindDevice___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(19);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v14 = 134218242;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p informing locals of found %@", &v14, 0x16u);
  }

  v5 = [*(a1 + 32) locals];
  v6 = [v5 allObjects];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(v9 + 16);
  v12 = [v10 idsDeviceIdentifier];
  [v11 setObject:v10 forKey:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didLoseDevice:(id)device
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  deviceCopy = device;
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
  v5 = idsDeviceIdentifier == 0;

  if (!v5)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __46__COCompanionLinkClientFactory_didLoseDevice___block_invoke;
    v23[3] = &unk_278E15700;
    v23[4] = self;
    v6 = deviceCopy;
    v24 = v6;
    v25 = &v26;
    [(COCompanionLinkClientFactory *)self _withLock:v23];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v27[5];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v32 count:16];
    if (v8)
    {
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          deviceLostHandler = [v11 deviceLostHandler];
          if (deviceLostHandler && ([v11 flags] & 0xA) == 2)
          {
            dispatchQueue = [v11 dispatchQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __46__COCompanionLinkClientFactory_didLoseDevice___block_invoke_15;
            block[3] = &unk_278E159A0;
            v18 = deviceLostHandler;
            v17 = v6;
            dispatch_async(dispatchQueue, block);
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v19 objects:v32 count:16];
      }

      while (v8);
    }
  }

  _Block_object_dispose(&v26, 8);

  v14 = *MEMORY[0x277D85DE8];
}

void __46__COCompanionLinkClientFactory_didLoseDevice___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(19);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v13 = 134218242;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p informing locals of lost %@", &v13, 0x16u);
  }

  v5 = [*(a1 + 32) locals];
  v6 = [v5 allObjects];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 40);
  v10 = *(*(a1 + 32) + 16);
  v11 = [v9 idsDeviceIdentifier];
  [v10 removeObjectForKey:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)didChangeDevice:(id)device flags:(unsigned int)flags
{
  v46 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__0;
  v39 = __Block_byref_object_dispose__0;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__0;
  v33 = __Block_byref_object_dispose__0;
  v34 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __54__COCompanionLinkClientFactory_didChangeDevice_flags___block_invoke;
  v25[3] = &unk_278E159C8;
  v27 = &v35;
  v25[4] = self;
  v16 = deviceCopy;
  v26 = v16;
  v28 = &v29;
  [(COCompanionLinkClientFactory *)self _withLock:v25];
  if (v36[5])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v30[5];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v41 count:16];
    if (v8)
    {
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          deviceChangedHandler = [v11 deviceChangedHandler];
          if (deviceChangedHandler && ([v11 flags] & 0xA) == 2)
          {
            dispatchQueue = [v11 dispatchQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __54__COCompanionLinkClientFactory_didChangeDevice_flags___block_invoke_16;
            block[3] = &unk_278E159F0;
            v19 = deviceChangedHandler;
            v18 = v16;
            flagsCopy = flags;
            dispatch_async(dispatchQueue, block);
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v21 objects:v41 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v14 = COCoreLogForCategory(19);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy = self;
      v44 = 2112;
      v45 = v16;
      _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p device updated which wasn't in our active list. Treating as found device %@", buf, 0x16u);
    }

    [(COCompanionLinkClientFactory *)self didFindDevice:v16];
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  v15 = *MEMORY[0x277D85DE8];
}

void __54__COCompanionLinkClientFactory_didChangeDevice_flags___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) idsDeviceIdentifier];
  v4 = [v2 objectForKey:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (v4)
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 16);
    v9 = [v7 idsDeviceIdentifier];
    [v8 setObject:v7 forKey:v9];
  }

  v13 = [*(a1 + 32) locals];
  v10 = [v13 allObjects];
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)didUpdateLocalDevice:(id)device
{
  v31 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__COCompanionLinkClientFactory_didUpdateLocalDevice___block_invoke;
  v21[3] = &unk_278E15700;
  v21[4] = self;
  v5 = deviceCopy;
  v22 = v5;
  v23 = &v24;
  [(COCompanionLinkClientFactory *)self _withLock:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v25[5];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v30 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        localDeviceUpdatedHandler = [v10 localDeviceUpdatedHandler];
        if (localDeviceUpdatedHandler && ([v10 flags] & 0xA) == 2)
        {
          dispatchQueue = [v10 dispatchQueue];
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __53__COCompanionLinkClientFactory_didUpdateLocalDevice___block_invoke_17;
          v14[3] = &unk_278E159A0;
          v16 = localDeviceUpdatedHandler;
          v15 = v5;
          dispatch_async(dispatchQueue, v14);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v30 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v24, 8);
  v13 = *MEMORY[0x277D85DE8];
}

void __53__COCompanionLinkClientFactory_didUpdateLocalDevice___block_invoke(uint64_t a1)
{
  v2 = COCoreLogForCategory(19);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __53__COCompanionLinkClientFactory_didUpdateLocalDevice___block_invoke_cold_1(a1, v2);
  }

  v3 = [*(a1 + 32) locals];
  v4 = [v3 allObjects];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)didInterrupt:(id)interrupt
{
  v25 = *MEMORY[0x277D85DE8];
  interruptCopy = interrupt;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __45__COCompanionLinkClientFactory_didInterrupt___block_invoke;
  v15[3] = &unk_278E15A18;
  v17 = &v18;
  v15[4] = self;
  v5 = interruptCopy;
  v16 = v5;
  [(COCompanionLinkClientFactory *)self _withLock:v15];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v19[5];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v24 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9++) didInterrupt];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v24 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v18, 8);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __45__COCompanionLinkClientFactory_didInterrupt___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientsForRapportClient_unsafe:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)didUpdateState:(id)state
{
  v25 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__COCompanionLinkClientFactory_didUpdateState___block_invoke;
  v15[3] = &unk_278E15A18;
  v17 = &v18;
  v15[4] = self;
  v5 = stateCopy;
  v16 = v5;
  [(COCompanionLinkClientFactory *)self _withLock:v15];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v19[5];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v24 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9++) didUpdateState];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v24 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v18, 8);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __47__COCompanionLinkClientFactory_didUpdateState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientsForRapportClient_unsafe:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)didChangeErrorFlags:(id)flags
{
  v25 = *MEMORY[0x277D85DE8];
  flagsCopy = flags;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__COCompanionLinkClientFactory_didChangeErrorFlags___block_invoke;
  v15[3] = &unk_278E15A18;
  v17 = &v18;
  v15[4] = self;
  v5 = flagsCopy;
  v16 = v5;
  [(COCompanionLinkClientFactory *)self _withLock:v15];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v19[5];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v24 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9++) didChangeErrorFlags];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v24 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v18, 8);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __52__COCompanionLinkClientFactory_didChangeErrorFlags___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientsForRapportClient_unsafe:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)didDisconnect:(id)disconnect
{
  v26 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__COCompanionLinkClientFactory_didDisconnect___block_invoke;
  v15[3] = &unk_278E15A40;
  v5 = disconnectCopy;
  selfCopy = self;
  v18 = &v19;
  v16 = v5;
  [(COCompanionLinkClientFactory *)self _withLock:v15];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v20[5];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v25 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9++) didDisconnect];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v25 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v19, 8);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __46__COCompanionLinkClientFactory_didDisconnect___block_invoke(uint64_t a1)
{
  [*(a1 + 32) co_SetCompanionLinkClientFlags:{objc_msgSend(*(a1 + 32), "co_CompanionLinkClientFlags") | 4}];
  v2 = [*(a1 + 40) _clientsForRapportClient_unsafe:*(a1 + 32)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)didInvalidate:(id)invalidate
{
  v26 = *MEMORY[0x277D85DE8];
  invalidateCopy = invalidate;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__COCompanionLinkClientFactory_didInvalidate___block_invoke;
  v15[3] = &unk_278E15A40;
  v5 = invalidateCopy;
  selfCopy = self;
  v18 = &v19;
  v16 = v5;
  [(COCompanionLinkClientFactory *)self _withLock:v15];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v20[5];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v25 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9++) didInvalidate];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v25 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v19, 8);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __46__COCompanionLinkClientFactory_didInvalidate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) co_SetCompanionLinkClientFlags:{objc_msgSend(*(a1 + 32), "co_CompanionLinkClientFlags") | 8}];
  v2 = [*(a1 + 40) _clientsForRapportClient_unsafe:*(a1 + 32)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)didActivate:(id)activate error:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  activateCopy = activate;
  errorCopy = error;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__COCompanionLinkClientFactory_didActivate_error___block_invoke;
  v18[3] = &unk_278E15A40;
  v8 = activateCopy;
  selfCopy = self;
  v21 = &v22;
  v19 = v8;
  [(COCompanionLinkClientFactory *)self _withLock:v18];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v23[5];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v28 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v12++) didActivateWithError:{errorCopy, v14}];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v28 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(&v22, 8);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __50__COCompanionLinkClientFactory_didActivate_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) co_SetCompanionLinkClientFlags:{objc_msgSend(*(a1 + 32), "co_CompanionLinkClientFlags") | 2}];
  v2 = [*(a1 + 40) _clientsForRapportClient_unsafe:*(a1 + 32)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)didRegisterRequestID:(id)d client:(id)client
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  clientCopy = client;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__COCompanionLinkClientFactory_didRegisterRequestID_client___block_invoke;
  v20[3] = &unk_278E15A18;
  v22 = &v23;
  v20[4] = self;
  v8 = clientCopy;
  v21 = v8;
  [(COCompanionLinkClientFactory *)self _withLock:v20];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v24[5];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v29 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        requestIDRegistrationCompletion = [*(*(&v16 + 1) + 8 * v12) requestIDRegistrationCompletion];
        v14 = requestIDRegistrationCompletion;
        if (requestIDRegistrationCompletion)
        {
          (*(requestIDRegistrationCompletion + 16))(requestIDRegistrationCompletion, dCopy);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v29 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(&v23, 8);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __60__COCompanionLinkClientFactory_didRegisterRequestID_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientsForRapportClient_unsafe:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)didRegisterEventID:(id)d client:(id)client
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  clientCopy = client;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __58__COCompanionLinkClientFactory_didRegisterEventID_client___block_invoke;
  v20[3] = &unk_278E15A18;
  v22 = &v23;
  v20[4] = self;
  v8 = clientCopy;
  v21 = v8;
  [(COCompanionLinkClientFactory *)self _withLock:v20];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v24[5];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v29 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        eventIDRegistrationCompletion = [*(*(&v16 + 1) + 8 * v12) eventIDRegistrationCompletion];
        v14 = eventIDRegistrationCompletion;
        if (eventIDRegistrationCompletion)
        {
          (*(eventIDRegistrationCompletion + 16))(eventIDRegistrationCompletion, dCopy);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v29 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(&v23, 8);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __58__COCompanionLinkClientFactory_didRegisterEventID_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientsForRapportClient_unsafe:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)activateCompanionLinkClient:(id)client
{
  clientCopy = client;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__COCompanionLinkClientFactory_activateCompanionLinkClient___block_invoke;
  v6[3] = &unk_278E156B0;
  v7 = clientCopy;
  selfCopy = self;
  v5 = clientCopy;
  [(COCompanionLinkClientFactory *)self _withLock:v6];
}

void __60__COCompanionLinkClientFactory_activateCompanionLinkClient___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) rapport];
  v3 = [v2 co_CompanionLinkClientFlags];
  v4 = v3;
  if ((v3 & 1) == 0)
  {
    v5 = COCoreLogForCategory(19);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 134218498;
      v34 = v6;
      v35 = 2048;
      v36 = v2;
      v37 = 2112;
      v38 = v2;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p activating %p (%@)", buf, 0x20u);
    }

    [v2 co_SetCompanionLinkClientFlags:v4 | 1];
    v7 = [*(a1 + 32) destinationDevice];
    if (v7)
    {
      v8 = [*(a1 + 40) _isKnownDevice:v7];
    }

    else
    {
      v8 = 0;
    }

    objc_initWeak(buf, *(a1 + 40));
    objc_initWeak(&location, v2);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __60__COCompanionLinkClientFactory_activateCompanionLinkClient___block_invoke_18;
    v26[3] = &unk_278E15A68;
    objc_copyWeak(&v28, buf);
    objc_copyWeak(&v29, &location);
    v30 = v8;
    v17 = v7;
    v27 = v17;
    [v2 activateWithCompletion:v26];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
LABEL_21:

    goto LABEL_22;
  }

  if ((v3 & 2) != 0)
  {
    v9 = COCoreLogForCategory(19);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 134218498;
      v34 = v10;
      v35 = 2048;
      v36 = v2;
      v37 = 2112;
      v38 = v2;
      _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%p already activated %p (%@)", buf, 0x20u);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [*(a1 + 40) _clientsForRapportClient_unsafe:v2];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v12)
    {
      v13 = *v23;
LABEL_11:
      v14 = 0;
      while (1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [*(*(&v22 + 1) + 8 * v14) activationError];
        if (v15)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v11 countByEnumeratingWithState:&v22 objects:v32 count:16];
          if (v12)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      v15 = 0;
    }

    v16 = *(*(a1 + 40) + 24);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __60__COCompanionLinkClientFactory_activateCompanionLinkClient___block_invoke_20;
    v19[3] = &unk_278E156B0;
    v20 = *(a1 + 32);
    v21 = v15;
    v17 = v15;
    dispatch_async(v16, v19);

    goto LABEL_21;
  }

LABEL_22:

  v18 = *MEMORY[0x277D85DE8];
}

void __60__COCompanionLinkClientFactory_activateCompanionLinkClient___block_invoke_18(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = v4;
  if (WeakRetained)
  {
    if (v4)
    {
      [WeakRetained didActivate:v4 error:v6];
      if (!v6 && (*(a1 + 56) & 1) == 0 && *(a1 + 32))
      {
        [WeakRetained didFindDevice:?];
      }
    }
  }
}

uint64_t __60__COCompanionLinkClientFactory_activateCompanionLinkClient___block_invoke_20(uint64_t a1)
{
  result = [*(a1 + 32) didActivateWithError:*(a1 + 40)];
  if (!*(a1 + 40))
  {
    if ([*(a1 + 32) usingOnDemandConnection])
    {
      [*(a1 + 32) didUpdateState];
    }

    result = [*(a1 + 32) errorFlags];
    if (result)
    {
      v3 = *(a1 + 32);

      return [v3 didChangeErrorFlags];
    }
  }

  return result;
}

- (void)invalidateCompanionLinkClient:(id)client
{
  clientCopy = client;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__COCompanionLinkClientFactory_invalidateCompanionLinkClient___block_invoke;
  v6[3] = &unk_278E156B0;
  v7 = clientCopy;
  selfCopy = self;
  v5 = clientCopy;
  [(COCompanionLinkClientFactory *)self _withLock:v6];
}

void __62__COCompanionLinkClientFactory_invalidateCompanionLinkClient___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) rapport];
  v3 = [*(a1 + 40) _clientsForRapportClient_unsafe:v2];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__COCompanionLinkClientFactory_invalidateCompanionLinkClient___block_invoke_2;
  v15[3] = &unk_278E15A90;
  v16 = *(a1 + 32);
  v4 = [v3 indexesOfObjectsPassingTest:v15];
  v5 = [v3 objectsAtIndexes:v4];

  v6 = [v5 count];
  v7 = COCoreLogForCategory(19);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 40);
      *buf = 134218498;
      v18 = v9;
      v19 = 2048;
      v20 = v2;
      v21 = 2112;
      v22 = v2;
      _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p already invalidated %p (%@)", buf, 0x20u);
    }

    v10 = *(*(a1 + 40) + 24);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __62__COCompanionLinkClientFactory_invalidateCompanionLinkClient___block_invoke_22;
    v13[3] = &unk_278E15AB8;
    v14 = *(a1 + 32);
    dispatch_async(v10, v13);
  }

  else
  {
    if (v8)
    {
      v11 = *(a1 + 40);
      *buf = 134218498;
      v18 = v11;
      v19 = 2048;
      v20 = v2;
      v21 = 2112;
      v22 = v2;
      _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p invalidating %p (%@)", buf, 0x20u);
    }

    [v2 co_SetCompanionLinkClientFlags:{objc_msgSend(v2, "co_CompanionLinkClientFlags") | 8}];
    [v2 invalidate];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __62__COCompanionLinkClientFactory_invalidateCompanionLinkClient___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == a2)
  {
    return 0;
  }

  else
  {
    return [a2 isInvalidated] ^ 1;
  }
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__COCompanionLinkClientFactory_removeClient___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = clientCopy;
  v5 = clientCopy;
  [(COCompanionLinkClientFactory *)self _withLock:v6];
}

void __45__COCompanionLinkClientFactory_removeClient___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(19);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11 = 134218240;
    v12 = v3;
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p removing knowledge of %p", &v11, 0x16u);
  }

  v5 = [*(a1 + 32) locals];
  [v5 removeObject:*(a1 + 40)];

  v6 = [*(a1 + 40) destinationDevice];
  v7 = [v6 idsDeviceIdentifier];

  if (v7)
  {
    v8 = [*(a1 + 32) clients];
    v9 = [v8 objectForKey:v7];
    [v9 removeObject:*(a1 + 40)];
    if (![v9 count])
    {
      [v8 removeObjectForKey:v7];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)didFindDevice:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_244378000, log, OS_LOG_TYPE_ERROR, "%p found device %@ which doesn't have an IDS identifier. Deferring informing locals about this device", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __53__COCompanionLinkClientFactory_didUpdateLocalDevice___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = 134218242;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_244378000, a2, OS_LOG_TYPE_DEBUG, "%p informing locals of updated %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end