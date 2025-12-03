@interface HDOntologyShardDownloader
- (HDOntologyShardDownloader)init;
- (HDOntologyShardDownloader)initWithOntologyUpdateCoordinator:(id)coordinator;
- (HDOntologyUpdateCoordinator)updateCoordinator;
- (id)_entriesToDownloadForRequiredEntries:(void *)entries existingStagedEntries:(uint64_t)stagedEntries error:;
- (id)_entriesToDownloadWithError:(uint64_t)error;
- (id)_entriesToDownloadWithRequiredEntries:(uint64_t)entries error:;
- (id)_requiredEntriesWithError:(uint64_t)error;
- (uint64_t)_persistStagedEntries:(uint64_t)entries error:;
- (void)_downloadFilesForEntries:(void *)entries session:(void *)session completion:;
- (void)_downloadRequiredShardFilesWithSession:(void *)session requiredEntries:(void *)entries completion:;
- (void)_notifyDownloadObserversAboutStagedEntries:(uint64_t)entries;
@end

@implementation HDOntologyShardDownloader

- (HDOntologyShardDownloader)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyShardDownloader)initWithOntologyUpdateCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v15.receiver = self;
  v15.super_class = HDOntologyShardDownloader;
  v5 = [(HDOntologyShardDownloader *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_updateCoordinator, coordinatorCopy);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc(MEMORY[0x277CCD738]);
    v10 = NSStringFromProtocol(&unk_28637E958);
    v11 = HKLogHealthOntology();
    v12 = [v9 initWithName:v10 loggingCategory:v11];
    ontologyShardDownloaderObservers = v6->_ontologyShardDownloaderObservers;
    v6->_ontologyShardDownloaderObservers = v12;
  }

  return v6;
}

BOOL __94__HDOntologyShardDownloader__entriesToDownloadForRequiredEntries_existingStagedEntries_error___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v7 = [*(a1 + 32) identifier];
  v8 = [v6 identifier];
  if (v7 != v8)
  {
    v9 = [v6 identifier];
    if (!v9)
    {
      v14 = 0;
      goto LABEL_21;
    }

    v10 = v9;
    v2 = [*(a1 + 32) identifier];
    v3 = [v6 identifier];
    if (![v2 isEqualToString:v3])
    {
      v14 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v18 = v3;
    v19 = v2;
    v20 = v10;
  }

  v11 = [*(a1 + 32) schemaType];
  v12 = [v6 schemaType];
  if (v11 != v12)
  {
    v13 = [v6 schemaType];
    if (!v13)
    {
      goto LABEL_16;
    }

    v4 = v13;
    v2 = [*(a1 + 32) schemaType];
    v3 = [v6 schemaType];
    if (![v2 isEqualToString:v3])
    {
      v14 = 0;
LABEL_12:

      goto LABEL_18;
    }
  }

  v15 = [*(a1 + 32) schemaVersion];
  if (v15 != [v6 schemaVersion])
  {
    if (v11 == v12)
    {
      v14 = 0;
      goto LABEL_18;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_19;
  }

  v16 = [*(a1 + 32) availableVersion];
  v14 = v16 == [v6 availableVersion];
  if (v11 != v12)
  {
    goto LABEL_12;
  }

LABEL_18:

LABEL_19:
  v2 = v19;
  v10 = v20;
  v3 = v18;
  if (v7 != v8)
  {
    goto LABEL_20;
  }

LABEL_21:

  return v14;
}

void __72__HDOntologyShardDownloader__notifyDownloadObserversAboutStagedEntries___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 ontologyShardDownloader:*(a1 + 40) didStageEntry:{*(*(&v10 + 1) + 8 * v8++), v10}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (HDOntologyUpdateCoordinator)updateCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_updateCoordinator);

  return WeakRetained;
}

- (void)_downloadRequiredShardFilesWithSession:(void *)session requiredEntries:(void *)entries completion:
{
  v7 = a2;
  sessionCopy = session;
  entriesCopy = entries;
  if (self)
  {
    if (sessionCopy)
    {
      v15 = 0;
      v10 = &v15;
      v11 = [(HDOntologyShardDownloader *)self _entriesToDownloadWithRequiredEntries:sessionCopy error:&v15];
    }

    else
    {
      v14 = 0;
      v10 = &v14;
      v11 = [(HDOntologyShardDownloader *)self _entriesToDownloadWithError:?];
    }

    v12 = v11;
    v13 = *v10;
    if (v12)
    {
      [(HDOntologyShardDownloader *)self _downloadFilesForEntries:v12 session:v7 completion:entriesCopy];
    }

    else
    {
      (*(entriesCopy + 2))(entriesCopy, 0, v13);
    }
  }
}

- (id)_entriesToDownloadWithRequiredEntries:(uint64_t)entries error:
{
  v5 = a2;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 24));
    shardRegistry = [WeakRetained shardRegistry];
    v8 = [shardRegistry stagedShardFileEntriesWithError:entries];

    if (v8)
    {
      v9 = [(HDOntologyShardDownloader *)self _entriesToDownloadForRequiredEntries:v5 existingStagedEntries:v8 error:entries];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_entriesToDownloadWithError:(uint64_t)error
{
  if (error)
  {
    v4 = [(HDOntologyShardDownloader *)error _requiredEntriesWithError:a2];
    if (v4)
    {
      v5 = [(HDOntologyShardDownloader *)error _entriesToDownloadWithRequiredEntries:v4 error:a2];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_downloadFilesForEntries:(void *)entries session:(void *)session completion:
{
  if (self)
  {
    sessionCopy = session;
    entriesCopy = entries;
    v9 = a2;
    v10 = [[_HDOntologyDownloadTask alloc] initForDownloader:self session:entriesCopy queue:*(self + 8)];

    [v10 downloadShardsForEntries:v9 completion:sessionCopy];
  }
}

- (id)_requiredEntriesWithError:(uint64_t)error
{
  v25[3] = *MEMORY[0x277D85DE8];
  if (error)
  {
    v2 = MEMORY[0x277D10B20];
    v3 = [MEMORY[0x277D10B18] predicateWithProperty:@"desired_state" equalToValue:&unk_286374670];
    v25[0] = v3;
    v4 = [MEMORY[0x277D10B60] isNotNullPredicateWithProperty:@"available_url"];
    v25[1] = v4;
    v5 = MEMORY[0x277D10B20];
    v6 = [MEMORY[0x277D10B18] predicateWithProperty:@"available_state" equalToValue:&unk_286374688];
    v24[0] = v6;
    v7 = [MEMORY[0x277D10B18] predicateWithProperty:@"available_state" equalToValue:&unk_2863746A0];
    v24[1] = v7;
    v8 = [MEMORY[0x277D10B18] predicateWithProperty:@"current_version" lessThanOrEqualToValue:&unk_2863746B8];
    v24[2] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
    v10 = [v5 predicateMatchingAnyPredicates:v9];
    v25[2] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    v12 = [v2 predicateMatchingAllPredicates:v11];

    v13 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"current_version" entityClass:objc_opt_class() ascending:1];
    v23[0] = v13;
    v14 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"desired_state_date" entityClass:objc_opt_class() ascending:0];
    v23[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];

    WeakRetained = objc_loadWeakRetained((error + 24));
    shardRegistry = [WeakRetained shardRegistry];
    v18 = [shardRegistry entriesWithPredicate:v12 orderingTerms:v15 error:a2];
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_entriesToDownloadForRequiredEntries:(void *)entries existingStagedEntries:(uint64_t)stagedEntries error:
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a2;
  entriesCopy = entries;
  selfCopy = self;
  if (self)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = v10;
    v12 = *v28;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __94__HDOntologyShardDownloader__entriesToDownloadForRequiredEntries_existingStagedEntries_error___block_invoke;
        v26[3] = &unk_2796B9118;
        v26[4] = v14;
        if ([entriesCopy hk_containsObjectPassingTest:v26])
        {
          if ([v14 availableState] == 2)
          {
            continue;
          }

          v15 = [v14 copyWithAvailableState:2];
          v16 = v25;
        }

        else
        {
          v15 = v14;
          if ([v15 availableState] == 2)
          {
            v17 = v9;
            v18 = v8;
            v19 = [v15 copyWithAvailableState:1];

            [v25 addObject:v19];
            v15 = v19;
            v8 = v18;
            v9 = v17;
          }

          v16 = v8;
        }

        [v16 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (!v11)
      {
LABEL_16:

        if ([(HDOntologyShardDownloader *)selfCopy _persistStagedEntries:v25 error:stagedEntries])
        {
          v20 = v8;
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_20;
      }
    }
  }

  v20 = 0;
LABEL_20:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (uint64_t)_persistStagedEntries:(uint64_t)entries error:
{
  v5 = a2;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 24));
    shardRegistry = [WeakRetained shardRegistry];
    v8 = [shardRegistry insertEntries:v5 error:entries];

    if (v8)
    {
      [(HDOntologyShardDownloader *)self _notifyDownloadObserversAboutStagedEntries:v5];
      self = 1;
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (void)_notifyDownloadObserversAboutStagedEntries:(uint64_t)entries
{
  v3 = a2;
  v4 = v3;
  if (entries)
  {
    v5 = *(entries + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __72__HDOntologyShardDownloader__notifyDownloadObserversAboutStagedEntries___block_invoke;
    v6[3] = &unk_2796B96F0;
    v7 = v3;
    entriesCopy = entries;
    [v5 notifyObservers:v6];
  }
}

@end