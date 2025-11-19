@interface DDUIRapportPeopleDiscovery
- (DDUIRapportPeopleDiscovery)initWithRemoteDisplayDiscovery:(id)a3 deviceSelectedHandler:(id)a4;
- (id)availablePeople;
- (id)getDiscoveredDevicesMap;
- (void)activateDiscoveryWithCompletion:(id)a3;
- (void)cancelPerson:(id)a3;
- (void)invalidate;
- (void)setAvailablePeopleChangedHandler:(id)a3;
- (void)setDedicatedDeviceChangedHandler:(id)a3;
- (void)setDiscoverySessionChangedHandler:(id)a3;
- (void)setPersonDeclinedHandler:(id)a3;
@end

@implementation DDUIRapportPeopleDiscovery

- (DDUIRapportPeopleDiscovery)initWithRemoteDisplayDiscovery:(id)a3 deviceSelectedHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_discovery, a3);
  [(RPRemoteDisplayDiscovery *)self->_discovery setDiscoveryFlags:[(RPRemoteDisplayDiscovery *)self->_discovery discoveryFlags]| 3];
  [(RPRemoteDisplayDiscovery *)self->_discovery setDeviceSelectedHandler:v8];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__DDUIRapportPeopleDiscovery_initWithRemoteDisplayDiscovery_deviceSelectedHandler___block_invoke;
  v14[3] = &unk_2788F5FD0;
  objc_copyWeak(&v15, &location);
  [(RPRemoteDisplayDiscovery *)self->_discovery setDeviceFoundHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__DDUIRapportPeopleDiscovery_initWithRemoteDisplayDiscovery_deviceSelectedHandler___block_invoke_1;
  v12[3] = &unk_2788F5FF8;
  objc_copyWeak(&v13, &location);
  [(RPRemoteDisplayDiscovery *)self->_discovery setDeviceChangedHandler:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__DDUIRapportPeopleDiscovery_initWithRemoteDisplayDiscovery_deviceSelectedHandler___block_invoke_3;
  v10[3] = &unk_2788F5FD0;
  objc_copyWeak(&v11, &location);
  [(RPRemoteDisplayDiscovery *)self->_discovery setDeviceLostHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return self;
}

void __83__DDUIRapportPeopleDiscovery_initWithRemoteDisplayDiscovery_deviceSelectedHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "RPRemoteDisplayDevice found: %@", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained discoveredDevicesMap];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [WeakRetained setDiscoveredDevicesMap:v7];
  }

  v8 = [WeakRetained discoveredDevicesMap];
  v9 = [v3 idsDeviceIdentifier];
  [v8 setObject:v3 forKeyedSubscript:v9];

  v10 = *MEMORY[0x277D85DE8];
}

void __83__DDUIRapportPeopleDiscovery_initWithRemoteDisplayDiscovery_deviceSelectedHandler___block_invoke_1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "RPRemoteDisplayDevice changed: %@", &v13, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained discoveredDevicesMap];

  if (v6)
  {
    v7 = [WeakRetained discoveredDevicesMap];
    v8 = [v3 idsDeviceIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [WeakRetained discoveredDevicesMap];
      v11 = [v3 idsDeviceIdentifier];
      [v10 setObject:v3 forKeyedSubscript:v11];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __83__DDUIRapportPeopleDiscovery_initWithRemoteDisplayDiscovery_deviceSelectedHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "RPRemoteDisplayDevice lost: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained discoveredDevicesMap];

  if (v6)
  {
    v7 = [WeakRetained discoveredDevicesMap];
    v8 = [v3 idsDeviceIdentifier];
    [v7 removeObjectForKey:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)activateDiscoveryWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  discovery = self->_discovery;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__DDUIRapportPeopleDiscovery_activateDiscoveryWithCompletion___block_invoke;
  v7[3] = &unk_2788F6020;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  objc_copyWeak(&v9, &location);
  [(RPRemoteDisplayDiscovery *)discovery activateWithCompletion:v7];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

void __62__DDUIRapportPeopleDiscovery_activateDiscoveryWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v18 = 134218242;
    v19 = v5;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "DDUIRapportPeopleDiscovery activated {self: %p, inError: %@}", &v18, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (!v3 && WeakRetained)
  {
    v8 = [WeakRetained availablePeopleChangedHandler];

    if (v8)
    {
      v9 = [v7 availablePeopleChangedHandler];
      v10 = [v7 availablePeople];
      (v9)[2](v9, v10);
    }

    v11 = [v7 discoverySessionChangedHandler];

    if (v11)
    {
      v12 = [v7 discoverySessionChangedHandler];
      v13 = [v7 discovery];
      v14 = [v13 currentState];
      v15 = [v7 discovery];
      v16 = [v15 peerDeviceIdentifier];
      (v12)[2](v12, v14, v16);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)availablePeople
{
  v75 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v57 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v51 = self;
  v4 = [(RPRemoteDisplayDiscovery *)self->_discovery discoveredPeople];
  v5 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v74 = v4;
    _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "Finding available people among %@", buf, 0xCu);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v67;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v67 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v66 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 accountAltDSID];
          if (v11 && [v57 containsObject:v11] && objc_msgSend(v3, "count"))
          {
            v12 = 0;
            do
            {
              v13 = [v3 objectAtIndexedSubscript:v12];
              v14 = [v13 accountAltDSID];
              v15 = [v14 isEqual:v11];

              if (v15)
              {
                [v3 removeObjectAtIndex:v12--];
              }

              ++v12;
            }

            while (v12 < [v3 count]);
          }

          v16 = _DDUICoreRapportLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v74 = v10;
            _os_log_impl(&dword_230EF9000, v16, OS_LOG_TYPE_DEFAULT, "Found acceptable person %@", buf, 0xCu);
          }

          [v3 addObject:v10];
          [v57 addObject:v11];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v7);
  }

  v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v18 = [(DDUIRapportPeopleDiscovery *)v51 previousAvailablePeople];
  v19 = [v18 countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v63;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v63 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v62 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          v24 = [v23 accountAltDSID];
          [v17 addObject:v24];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v20);
  }

  v54 = [v57 mutableCopy];
  [v54 minusSet:v17];
  v52 = [v17 mutableCopy];
  [v52 minusSet:v57];
  v53 = [v17 mutableCopy];
  [v53 unionSet:v57];
  v25 = [(DDUIRapportPeopleDiscovery *)v51 previousAvailablePeople];
  v26 = [v25 mutableCopy];
  v27 = v26;
  v49 = v17;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = [MEMORY[0x277CBEB18] array];
  }

  v29 = v28;

  if ([v29 count])
  {
    v30 = 0;
    do
    {
      v31 = [v29 objectAtIndexedSubscript:{v30, v49}];
      if (objc_opt_respondsToSelector())
      {
        v32 = [v31 accountAltDSID];
        if ([v52 containsObject:v32])
        {
          [v29 removeObjectAtIndex:v30--];
        }
      }

      ++v30;
    }

    while (v30 < [v29 count]);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v55 = v3;
  v33 = [v55 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v59;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v59 != v35)
        {
          objc_enumerationMutation(v55);
        }

        v37 = *(*(&v58 + 1) + 8 * k);
        if (objc_opt_respondsToSelector())
        {
          v38 = v34;
          v39 = [v37 accountAltDSID];
          if ([v54 containsObject:v39])
          {
            [v29 addObject:v37];
          }

          else if ([v53 containsObject:v39] && objc_msgSend(v29, "count"))
          {
            v40 = 0;
            while (1)
            {
              v41 = [v29 objectAtIndexedSubscript:{v40, v49}];
              v42 = [v41 accountAltDSID];
              v43 = [v39 isEqual:v42];

              if (v43)
              {
                break;
              }

              if (++v40 >= [v29 count])
              {
                goto LABEL_55;
              }
            }

            [v29 replaceObjectAtIndex:v40 withObject:v37];
          }

LABEL_55:

          v34 = v38;
        }
      }

      v34 = [v55 countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v34);
  }

  v44 = [v29 copy];
  objc_autoreleasePoolPop(context);
  [(DDUIRapportPeopleDiscovery *)v51 setPreviousAvailablePeople:v44];
  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v74 = v45;
    _os_log_impl(&dword_230EF9000, v46, OS_LOG_TYPE_DEFAULT, "rapport people: %@", buf, 0xCu);
  }

  v47 = *MEMORY[0x277D85DE8];

  return v45;
}

- (id)getDiscoveredDevicesMap
{
  v2 = [(DDUIRapportPeopleDiscovery *)self discoveredDevicesMap];
  v3 = [v2 copy];

  return v3;
}

- (void)setAvailablePeopleChangedHandler:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_availablePeopleChangedHandler != v4)
  {
    v5 = _DDUICoreRapportLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _Block_copy(v4);
      *buf = 134218242;
      v22 = self;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPeopleDiscovery set people changed handler {self: %p, availableDevicesChangedHandler: %@}", buf, 0x16u);
    }

    v7 = _Block_copy(v4);
    availablePeopleChangedHandler = self->_availablePeopleChangedHandler;
    self->_availablePeopleChangedHandler = v7;

    objc_initWeak(buf, self);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __63__DDUIRapportPeopleDiscovery_setAvailablePeopleChangedHandler___block_invoke;
    v18[3] = &unk_2788F6048;
    objc_copyWeak(&v20, buf);
    v9 = v4;
    v19 = v9;
    [(RPRemoteDisplayDiscovery *)self->_discovery setPersonFoundHandler:v18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__DDUIRapportPeopleDiscovery_setAvailablePeopleChangedHandler___block_invoke_2;
    v15[3] = &unk_2788F6048;
    objc_copyWeak(&v17, buf);
    v10 = v9;
    v16 = v10;
    [(RPRemoteDisplayDiscovery *)self->_discovery setPersonChangedHandler:v15];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__DDUIRapportPeopleDiscovery_setAvailablePeopleChangedHandler___block_invoke_3;
    v12[3] = &unk_2788F6048;
    objc_copyWeak(&v14, buf);
    v13 = v10;
    [(RPRemoteDisplayDiscovery *)self->_discovery setPersonLostHandler:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v17);

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __63__DDUIRapportPeopleDiscovery_setAvailablePeopleChangedHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    v4 = [WeakRetained availablePeople];
    (*(v3 + 16))(v3, v4);

    WeakRetained = v5;
  }
}

void __63__DDUIRapportPeopleDiscovery_setAvailablePeopleChangedHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    v4 = [WeakRetained availablePeople];
    (*(v3 + 16))(v3, v4);

    WeakRetained = v5;
  }
}

void __63__DDUIRapportPeopleDiscovery_setAvailablePeopleChangedHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    v4 = [WeakRetained availablePeople];
    (*(v3 + 16))(v3, v4);

    WeakRetained = v5;
  }
}

- (void)setDiscoverySessionChangedHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_discoverySessionChangedHandler != v4)
  {
    v5 = _DDUICoreRapportLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _Block_copy(v4);
      v10 = 134218242;
      v11 = self;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPeopleDiscovery set session changed handler {self: %p, discoverySessionStateChangedHandler: %@}", &v10, 0x16u);
    }

    v7 = _Block_copy(v4);
    discoverySessionChangedHandler = self->_discoverySessionChangedHandler;
    self->_discoverySessionChangedHandler = v7;

    [(RPRemoteDisplayDiscovery *)self->_discovery setDiscoverySessionStateChangedHandler:self->_discoverySessionChangedHandler];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setDedicatedDeviceChangedHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_dedicatedDeviceChangedHandler != v4)
  {
    v5 = _DDUICoreRapportLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _Block_copy(v4);
      v10 = 134218242;
      v11 = self;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPeopleDiscovery set dedicated device changed handler {self: %p, dedicatedDeviceChangedHandler: %@}", &v10, 0x16u);
    }

    v7 = _Block_copy(v4);
    dedicatedDeviceChangedHandler = self->_dedicatedDeviceChangedHandler;
    self->_dedicatedDeviceChangedHandler = v7;

    [(RPRemoteDisplayDiscovery *)self->_discovery setDedicatedDeviceChangedHandler:self->_dedicatedDeviceChangedHandler];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __62__DDUIRapportPeopleDiscovery_attemptDedicatedDeviceConnection__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "requestDedicatedDeviceConfirmation completed with error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setPersonDeclinedHandler:(id)a3
{
  if (self->_personDeclinedHandler != a3)
  {
    v7 = a3;
    v5 = _Block_copy(v7);
    personDeclinedHandler = self->_personDeclinedHandler;
    self->_personDeclinedHandler = v5;

    [(RPRemoteDisplayDiscovery *)self->_discovery setPersonDeclinedHandler:v7];
  }
}

- (void)cancelPerson:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "Canceling confirmation for person: %@", &v7, 0xCu);
  }

  [(RPRemoteDisplayDiscovery *)self->_discovery personCanceled:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  [(RPRemoteDisplayDiscovery *)self->_discovery invalidate];
  discovery = self->_discovery;
  self->_discovery = 0;
}

@end