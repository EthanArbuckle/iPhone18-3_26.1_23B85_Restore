@interface SGHistoryObserver
- (SGHistoryObserver)initWithStore:(id)store;
- (void)hashesDidChange;
- (void)processNewConfirmOrRejectEventHashes:(id)hashes;
- (void)processNewConfirmedOrRejectedReminderHashes:(id)hashes;
@end

@implementation SGHistoryObserver

- (void)hashesDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_store);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained clearMasterEntityCache];
    WeakRetained = v3;
  }
}

- (void)processNewConfirmedOrRejectedReminderHashes:(id)hashes
{
  v35 = *MEMORY[0x277D85DE8];
  hashesCopy = hashes;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained duplicateKeysMatchingAnyReminderHash:hashesCopy];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v30 = 0u;
    v20 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (!v20)
    {
      goto LABEL_22;
    }

    v19 = *v28;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v7;
        v8 = *(*(&v27 + 1) + 8 * v7);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v9 = [obj objectForKeyedSubscript:v8];
        v10 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v24;
          do
          {
            v13 = 0;
            do
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [v6 loadReminderByKey:*(*(&v23 + 1) + 8 * v13)];
              if (v14)
              {
                journal = [v6 journal];
                v16 = [[SGJournalEntry alloc] initWithOperation:20 reminder:v14];
                [journal addEntry:v16];
LABEL_14:

                goto LABEL_16;
              }

              journal = sgRemindersLogHandle();
              if (os_log_type_enabled(journal, OS_LOG_TYPE_ERROR))
              {
                v16 = [v8 base64EncodedDataWithOptions:0];
                *buf = 138412290;
                v32 = v16;
                _os_log_error_impl(&dword_231E60000, journal, OS_LOG_TYPE_ERROR, "SGDSuggestManager - Database inconsistency: Found key for reminder hash %@ but reminder is missing", buf, 0xCu);
                goto LABEL_14;
              }

LABEL_16:

              ++v13;
            }

            while (v11 != v13);
            v17 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
            v11 = v17;
          }

          while (v17);
        }

        v7 = v22 + 1;
      }

      while (v22 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (!v20)
      {
LABEL_22:

        break;
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)processNewConfirmOrRejectEventHashes:(id)hashes
{
  v37 = *MEMORY[0x277D85DE8];
  hashesCopy = hashes;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained duplicateKeysMatchingAnyEventHash:hashesCopy];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v32 = 0u;
    v21 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v21)
    {
      v7 = 0;
      v20 = *v30;
      do
      {
        v8 = 0;
        do
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v23 = v8;
          v9 = *(*(&v29 + 1) + 8 * v8);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v24 = v9;
          v10 = [obj objectForKeyedSubscript:?];
          v11 = [v10 countByEnumeratingWithState:&v25 objects:v35 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v26;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v26 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [v6 loadEventByDuplicateKey:*(*(&v25 + 1) + 8 * i)];
                if (v15)
                {
                  journal = [v6 journal];
                  v17 = [[SGJournalEntry alloc] initWithOperation:8 event:v15];
                  [journal addEntry:v17];

                  v7 = 1;
                }

                else
                {
                  journal = sgLogHandle();
                  if (os_log_type_enabled(journal, OS_LOG_TYPE_DEFAULT))
                  {
                    v18 = [v24 base64EncodedDataWithOptions:0];
                    *buf = 138412290;
                    v34 = v18;
                    _os_log_impl(&dword_231E60000, journal, OS_LOG_TYPE_DEFAULT, "Database inconsistency; found key for event hash %@ but event is missing", buf, 0xCu);
                  }
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v25 objects:v35 count:16];
            }

            while (v12);
          }

          v8 = v23 + 1;
        }

        while (v23 + 1 != v21);
        v21 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v21);
      if (v7)
      {
        +[SGDSuggestManager clearRequestCache];
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (SGHistoryObserver)initWithStore:(id)store
{
  storeCopy = store;
  v8.receiver = self;
  v8.super_class = SGHistoryObserver;
  v5 = [(SGHistoryObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_store, storeCopy);
  }

  return v6;
}

@end