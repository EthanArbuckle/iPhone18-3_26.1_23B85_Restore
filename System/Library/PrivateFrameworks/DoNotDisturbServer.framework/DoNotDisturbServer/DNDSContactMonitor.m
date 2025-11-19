@interface DNDSContactMonitor
- (BOOL)_fetchContactHistoryWithToken:(id)a3 monitoredContacts:(id)a4 handler:(id)a5;
- (DNDSContactMonitor)initWithContactStore:(id)a3 contactProvider:(id)a4;
- (id)_contactsWithCNContacts:(id)a3;
- (id)_lock_listenersByContactHistoryToken;
- (id)_lock_monitoredContactsByContactHistoryToken;
- (void)_contactStoreChanged:(id)a3;
- (void)_fetchContactsForMonitoredContacts:(id)a3 handler:(id)a4;
- (void)_fetchUpdatesWithContactHistoryToken:(id)a3 monitoredContacts:(id)a4 handler:(id)a5;
- (void)_queue_fetchUpdatesWithContactHistoryToken:(id)a3 monitoredContacts:(id)a4 handler:(id)a5;
- (void)_updateContactsWithIdentifiers;
- (void)_updateContactsWithoutIdentifiers;
- (void)addListener:(id)a3;
- (void)removeListener:(id)a3;
@end

@implementation DNDSContactMonitor

- (DNDSContactMonitor)initWithContactStore:(id)a3 contactProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = DNDSContactMonitor;
  v9 = [(DNDSContactMonitor *)&v17 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.donotdisturb.server.ContactMonitor", v10);
    fetchQueue = v9->_fetchQueue;
    v9->_fetchQueue = v11;

    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_contactStore, a3);
    objc_storeStrong(&v9->_contactProvider, a4);
    v13 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    listeners = v9->_listeners;
    v9->_listeners = v13;

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v9 selector:sel__contactStoreChanged_ name:*MEMORY[0x277CBD140] object:0];
  }

  return v9;
}

- (void)addListener:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_listeners addObject:v4];
  v5 = [v4 monitoredContacts];
  os_unfair_lock_unlock(&self->_lock);
  v6 = [v4 contactHistoryToken];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__DNDSContactMonitor_addListener___block_invoke;
  v8[3] = &unk_278F8A370;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(DNDSContactMonitor *)self _fetchUpdatesWithContactHistoryToken:v6 monitoredContacts:v5 handler:v8];
}

void __34__DNDSContactMonitor_addListener___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = [v7 _contactsWithCNContacts:a2];
  [*(a1 + 40) contactMonitor:*(a1 + 32) didReceiveUpdatedContacts:v10 deletedContactIdentifiers:v9 withContactHistoryToken:v8];
}

- (void)removeListener:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_listeners removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_contactsWithCNContacts:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277D058F0] contactWithCNContact:{*(*(&v13 + 1) + 8 * i), v13}];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_contactStoreChanged:(id)a3
{
  fetchQueue = self->_fetchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DNDSContactMonitor__contactStoreChanged___block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(fetchQueue, block);
}

uint64_t __43__DNDSContactMonitor__contactStoreChanged___block_invoke(uint64_t a1)
{
  v2 = DNDSLogSettings;
  if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_DEFAULT, "Contacts store changed", v4, 2u);
  }

  [*(a1 + 32) _updateContactsWithIdentifiers];
  return [*(a1 + 32) _updateContactsWithoutIdentifiers];
}

- (void)_updateContactsWithIdentifiers
{
  v36 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_fetchQueue);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(DNDSContactMonitor *)self _lock_listenersByContactHistoryToken];
  v19 = [(DNDSContactMonitor *)self _lock_monitoredContactsByContactHistoryToken];
  os_unfair_lock_unlock(&self->_lock);
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v30 = 0u;
  obj = v3;
  v20 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v20)
  {
    v17 = v23;
    v18 = *v31;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v30 + 1) + 8 * i);
        v6 = [v19 objectForKeyedSubscript:{v5, v17}];
        v7 = [MEMORY[0x277CBEB58] set];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v27;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v27 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v26 + 1) + 8 * j);
              v14 = [v13 contactIdentifier];

              if (v14)
              {
                [v7 addObject:v13];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v10);
        }

        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v23[0] = __52__DNDSContactMonitor__updateContactsWithIdentifiers__block_invoke;
        v23[1] = &unk_278F8A398;
        v23[2] = self;
        v15 = obj;
        v24 = v15;
        v25 = v5;
        [(DNDSContactMonitor *)self _queue_fetchUpdatesWithContactHistoryToken:v5 monitoredContacts:v7 handler:v22];
      }

      v20 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v20);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __52__DNDSContactMonitor__updateContactsWithIdentifiers__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) _contactsWithCNContacts:a2];
  v10 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) contactMonitor:*(a1 + 32) didReceiveUpdatedContacts:v9 deletedContactIdentifiers:v7 withContactHistoryToken:v8];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_updateContactsWithoutIdentifiers
{
  v29 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_fetchQueue);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSHashTable *)self->_listeners allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v3;
  v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v18)
  {
    v17 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v23 + 1) + 8 * i);
        v6 = [MEMORY[0x277CBEB38] dictionary];
        v7 = [v5 monitoredContacts];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v20;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v20 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v19 + 1) + 8 * j);
              v13 = [v12 contactIdentifier];

              if (!v13)
              {
                v14 = [(DNDSContactProviding *)self->_contactProvider contactForContact:v12];
                if (v14)
                {
                  [v6 setObject:v14 forKeyedSubscript:v12];
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v9);
        }

        if ([v7 count])
        {
          [v5 contactMonitor:self didReceiveUpdatedContactsForContactsWithoutIdentifiers:v6];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_fetchContactsForMonitoredContacts:(id)a3 handler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB58] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v20 + 1) + 8 * v13) contactIdentifier];
        if (v14)
        {
          [v8 addObject:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = [v8 allObjects];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__DNDSContactMonitor__fetchContactsForMonitoredContacts_handler___block_invoke;
  v18[3] = &unk_278F8A3E8;
  v18[4] = self;
  v19 = v7;
  v16 = v7;
  [v15 enumerateBatchesOfSize:10 handler:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __65__DNDSContactMonitor__fetchContactsForMonitoredContacts_handler___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a2;
  context = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v6 = [MEMORY[0x277CBEB58] set];
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = objc_alloc(MEMORY[0x277CBDA70]);
  v9 = [MEMORY[0x277D058F0] keysToFetch];
  v10 = [v8 initWithKeysToFetch:v9];

  v11 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:v4];
  [v10 setPredicate:v11];

  [v10 setUnifyResults:1];
  v12 = *(*(a1 + 32) + 8);
  v36 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __65__DNDSContactMonitor__fetchContactsForMonitoredContacts_handler___block_invoke_2;
  v33[3] = &unk_278F8A3C0;
  v13 = v7;
  v34 = v13;
  v14 = v6;
  v35 = v14;
  v15 = [v12 enumerateContactsWithFetchRequest:v10 error:&v36 usingBlock:v33];
  v16 = v36;
  v17 = [v5 mutableCopy];
  [v17 minusSet:v14];
  v18 = DNDSLogSettings;
  if (v15)
  {
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [v13 count];
      *buf = 134349056;
      v38 = v20;
      _os_log_impl(&dword_24912E000, v19, OS_LOG_TYPE_DEFAULT, "Fetched %{public}lld contacts", buf, 0xCu);
    }

    v21 = *(a1 + 40);
    v22 = [v17 allObjects];
    v23 = [*(*(a1 + 32) + 8) currentHistoryToken];
    (*(v21 + 16))(v21, v13, v22, v23);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
    {
      __65__DNDSContactMonitor__fetchContactsForMonitoredContacts_handler___block_invoke_cold_1(v16, v18, v24, v25, v26, v27, v28, v29);
    }

    *a3 = 1;
  }

  objc_autoreleasePoolPop(context);
  v30 = *MEMORY[0x277D85DE8];
}

void __65__DNDSContactMonitor__fetchContactsForMonitoredContacts_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addObject:v4];
  v5 = *(a1 + 40);
  v6 = [v4 identifier];

  [v5 addObject:v6];
}

- (BOOL)_fetchContactHistoryWithToken:(id)a3 monitoredContacts:(id)a4 handler:(id)a5
{
  v67 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277CBDA50]);
  [v11 setStartingToken:v8];
  v12 = [MEMORY[0x277D058F0] keysToFetch];
  [v11 setAdditionalContactKeyDescriptors:v12];

  contactStore = self->_contactStore;
  v60 = 0;
  v14 = [(CNContactStore *)contactStore enumeratorForChangeHistoryFetchRequest:v11 error:&v60];
  v15 = v60;
  if (v15)
  {
    v16 = DNDSLogSettings;
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
    {
      __65__DNDSContactMonitor__fetchContactsForMonitoredContacts_handler___block_invoke_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  else
  {
    v49 = v10;
    v51 = v8;
    v23 = [MEMORY[0x277CBEB58] set];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v50 = v9;
    v24 = v9;
    v25 = [v24 countByEnumeratingWithState:&v56 objects:v66 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v57;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v57 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v56 + 1) + 8 * i);
          v30 = [v29 contactIdentifier];

          if (v30)
          {
            v31 = [v29 contactIdentifier];
            [v23 addObject:v31];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v56 objects:v66 count:16];
      }

      while (v26);
    }

    v32 = [[DNDSContactMonitorChangeCollector alloc] initWithMonitoredContactIdentifiers:v23];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v33 = [v14 value];
    v34 = [v33 countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v53;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v53 != v36)
          {
            objc_enumerationMutation(v33);
          }

          [*(*(&v52 + 1) + 8 * j) acceptEventVisitor:v32];
        }

        v35 = [v33 countByEnumeratingWithState:&v52 objects:v65 count:16];
      }

      while (v35);
    }

    v38 = DNDSLogSettings;
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
      v40 = [(DNDSContactMonitorChangeCollector *)v32 updatedContacts];
      v41 = [v40 count];
      v42 = [(DNDSContactMonitorChangeCollector *)v32 deletedContactIdentifiers];
      v43 = [v42 count];
      *buf = 134349312;
      v62 = v41;
      v63 = 2050;
      v64 = v43;
      _os_log_impl(&dword_24912E000, v39, OS_LOG_TYPE_DEFAULT, "Collected %{public}lld changed contacts and %{public}lld", buf, 0x16u);
    }

    v44 = [(DNDSContactMonitorChangeCollector *)v32 updatedContacts];
    v45 = [(DNDSContactMonitorChangeCollector *)v32 deletedContactIdentifiers];
    v46 = [v14 currentHistoryToken];
    v10 = v49;
    v49[2](v49, v44, v45, v46);

    v9 = v50;
    v8 = v51;
  }

  v47 = *MEMORY[0x277D85DE8];
  return v15 == 0;
}

- (void)_fetchUpdatesWithContactHistoryToken:(id)a3 monitoredContacts:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  fetchQueue = self->_fetchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__DNDSContactMonitor__fetchUpdatesWithContactHistoryToken_monitoredContacts_handler___block_invoke;
  v15[3] = &unk_278F8A410;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(fetchQueue, v15);
}

- (void)_queue_fetchUpdatesWithContactHistoryToken:(id)a3 monitoredContacts:(id)a4 handler:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_fetchQueue);
  if ([v9 count])
  {
    v11 = [MEMORY[0x277CBEA90] data];
    v12 = [v8 isEqualToData:v11];

    if (v12)
    {

      v8 = 0;
    }

    v13 = objc_alloc_init(MEMORY[0x277CBDA50]);
    [v13 setStartingToken:v8];
    v14 = [MEMORY[0x277D058F0] keysToFetch];
    [v13 setAdditionalContactKeyDescriptors:v14];

    contactStore = self->_contactStore;
    v29 = 0;
    v16 = [(CNContactStore *)contactStore countForFetchRequest:v13 error:&v29];
    v17 = v29;
    if (v17)
    {
      v18 = DNDSLogSettings;
      if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
      {
        [(DNDSContactMonitor *)v17 _queue_fetchUpdatesWithContactHistoryToken:v18 monitoredContacts:v19 handler:v20, v21, v22, v23, v24];
      }
    }

    else
    {
      v26 = [v16 value];
      v27 = [v26 integerValue];

      v28 = DNDSLogSettings;
      if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        v31 = v27;
        _os_log_impl(&dword_24912E000, v28, OS_LOG_TYPE_DEFAULT, "History contains %{public}lld events", buf, 0xCu);
      }

      if (v27 < 1 || v27 <= 9 && [(DNDSContactMonitor *)self _fetchContactHistoryWithToken:v8 monitoredContacts:v9 handler:v10])
      {
        goto LABEL_8;
      }
    }

    [(DNDSContactMonitor *)self _fetchContactsForMonitoredContacts:v9 handler:v10];
LABEL_8:
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_lock_listenersByContactHistoryToken
{
  v22 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_listeners;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 contactHistoryToken];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = [MEMORY[0x277CBEA90] data];
        }

        v13 = v12;

        v14 = [v3 objectForKeyedSubscript:v13];
        if (!v14)
        {
          v14 = [MEMORY[0x277CBEB18] array];
        }

        [v14 addObject:v9];
        [v3 setObject:v14 forKeyedSubscript:v13];
      }

      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_lock_monitoredContactsByContactHistoryToken
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_listeners;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 contactHistoryToken];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = [MEMORY[0x277CBEA90] data];
        }

        v13 = v12;

        v14 = [v3 objectForKeyedSubscript:v13];
        if (!v14)
        {
          v14 = [MEMORY[0x277CBEB58] set];
        }

        v15 = [v9 monitoredContacts];
        [v14 unionSet:v15];

        [v3 setObject:v14 forKeyedSubscript:v13];
      }

      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

void __65__DNDSContactMonitor__fetchContactsForMonitoredContacts_handler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_24912E000, a2, a3, "Unable to fetch contact change history: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_fetchUpdatesWithContactHistoryToken:(uint64_t)a3 monitoredContacts:(uint64_t)a4 handler:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_24912E000, a2, a3, "Unable to fetch contact change history count: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end