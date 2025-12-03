@interface NDAnalyticsEnvelopeStore
- (NDAnalyticsEnvelopeStore)init;
- (NDAnalyticsEnvelopeStore)initWithStoreDirectoryFileURL:(id)l;
- (NDAnalyticsEnvelopeStoreObserver)observer;
- (id)allEntriesWithHoldToken:(id *)token;
- (id)envelopesForEntries:(id)entries;
- (id)sizesOfEnvelopesWithEntries:(id)entries;
- (unint64_t)cacheCoordinatorCurrentSizeWithReadLock:(id)lock;
- (void)_deleteEnvelopesForKeysFromStore:(id)store;
- (void)_reportEnvelopesToNewsAutomationIfNeeded:(id)needed;
- (void)cacheCoordinator:(id)coordinator flushKeysWithWriteLock:(id)lock;
- (void)copyEnvelopes:(id)envelopes;
- (void)deleteEnvelopesForEntries:(id)entries;
- (void)enableFlushing;
- (void)setObserver:(id)observer;
@end

@implementation NDAnalyticsEnvelopeStore

- (NDAnalyticsEnvelopeStore)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NDAnalyticsEnvelopeStore init]";
    v10 = 2080;
    v11 = "NDAnalyticsEnvelopeStore.m";
    v12 = 1024;
    v13 = 41;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BDF7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NDAnalyticsEnvelopeStore init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NDAnalyticsEnvelopeStore)initWithStoreDirectoryFileURL:(id)l
{
  lCopy = l;
  if (!lCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsEnvelopeStore initWithStoreDirectoryFileURL:];
  }

  v16.receiver = self;
  v16.super_class = NDAnalyticsEnvelopeStore;
  v5 = [(NDAnalyticsEnvelopeStore *)&v16 init];
  if (v5)
  {
    v6 = [lCopy URLByAppendingPathComponent:@"envelope-store" isDirectory:1];
    v7 = objc_alloc(MEMORY[0x277D30E18]);
    path = [v6 path];
    v9 = [v7 initWithDirectoryAtPath:path preferredAssetPathExtension:@"env"];

    assetStore = v5->_assetStore;
    v5->_assetStore = v9;
    v11 = v9;

    v12 = objc_opt_new();
    [v12 setDelegate:v5];
    allKeys = [(FCAssetStore *)v11 allKeys];
    [v12 setupWithInitialKeys:allKeys];

    cacheCoordinator = v5->_cacheCoordinator;
    v5->_cacheCoordinator = v12;
  }

  return v5;
}

- (void)copyEnvelopes:(id)envelopes
{
  envelopesCopy = envelopes;
  if (!envelopesCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsEnvelopeStore copyEnvelopes:];
  }

  date = [MEMORY[0x277CBEAA8] date];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __42__NDAnalyticsEnvelopeStore_copyEnvelopes___block_invoke;
  v20[3] = &unk_27997A780;
  v21 = date;
  v6 = date;
  v7 = [envelopesCopy fc_dictionaryWithKeyBlock:v20];
  assetStore = [(NDAnalyticsEnvelopeStore *)self assetStore];
  cacheCoordinator = [(NDAnalyticsEnvelopeStore *)self cacheCoordinator];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __42__NDAnalyticsEnvelopeStore_copyEnvelopes___block_invoke_2;
  v16 = &unk_27997A708;
  v17 = v7;
  v18 = assetStore;
  v19 = cacheCoordinator;
  v10 = cacheCoordinator;
  v11 = assetStore;
  v12 = v7;
  [v10 performCacheWrite:&v13];
  [(NDAnalyticsEnvelopeStore *)self _reportEnvelopesToNewsAutomationIfNeeded:envelopesCopy, v13, v14, v15, v16];
}

id __42__NDAnalyticsEnvelopeStore_copyEnvelopes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];
  [v4 setEnvelopeIdentifier:v6];

  v7 = [v3 contentType];
  [v4 setEnvelopeContentType:v7];
  [v4 setEnvelopeSubmissionDate:*(a1 + 32)];

  return v4;
}

void __42__NDAnalyticsEnvelopeStore_copyEnvelopes___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__NDAnalyticsEnvelopeStore_copyEnvelopes___block_invoke_3;
  v3[3] = &unk_27997A7A8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __42__NDAnalyticsEnvelopeStore_copyEnvelopes___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = [a2 stringRepresentation];
  v6 = *(a1 + 32);
  v7 = [v5 data];

  [*(a1 + 40) didInsertKeyIntoCache:v8 withLifetimeHint:1];
}

- (void)deleteEnvelopesForEntries:(id)entries
{
  entriesCopy = entries;
  if (!entriesCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsEnvelopeStore deleteEnvelopesForEntries:];
  }

  cacheCoordinator = [(NDAnalyticsEnvelopeStore *)self cacheCoordinator];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__NDAnalyticsEnvelopeStore_deleteEnvelopesForEntries___block_invoke;
  v8[3] = &unk_27997A708;
  v9 = entriesCopy;
  selfCopy = self;
  v11 = cacheCoordinator;
  v6 = cacheCoordinator;
  v7 = entriesCopy;
  [v6 performCacheWrite:v8];
}

void __54__NDAnalyticsEnvelopeStore_deleteEnvelopesForEntries___block_invoke(void **a1)
{
  v2 = NDAnalyticsEnvelopeStoreStringRepresentationsOfEntries(a1[4]);
  [a1[5] _deleteEnvelopesForKeysFromStore:v2];
  [a1[6] didRemoveKeysFromCache:v2];
}

- (void)enableFlushing
{
  v4 = [objc_alloc(MEMORY[0x277D30E90]) initWithLowWaterMark:5000000 highWaterMark:10000000 alwaysFlushKeysWithZeroInterest:0];
  cacheCoordinator = [(NDAnalyticsEnvelopeStore *)self cacheCoordinator];
  [cacheCoordinator enableFlushingWithPolicy:v4];
}

- (void)setObserver:(id)observer
{
  observerCopy = observer;
  cacheCoordinator = [(NDAnalyticsEnvelopeStore *)self cacheCoordinator];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__NDAnalyticsEnvelopeStore_setObserver___block_invoke;
  v7[3] = &unk_27997A678;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  [cacheCoordinator performCacheWrite:v7];
}

- (NDAnalyticsEnvelopeStoreObserver)observer
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  cacheCoordinator = [(NDAnalyticsEnvelopeStore *)self cacheCoordinator];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__NDAnalyticsEnvelopeStore_observer__block_invoke;
  v6[3] = &unk_27997A7D0;
  v6[4] = self;
  v6[5] = &v7;
  [cacheCoordinator performCacheWrite:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __36__NDAnalyticsEnvelopeStore_observer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (id)allEntriesWithHoldToken:(id *)token
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  cacheCoordinator = [(NDAnalyticsEnvelopeStore *)self cacheCoordinator];
  [cacheCoordinator pruneToMaxCount:10];

  cacheCoordinator2 = [(NDAnalyticsEnvelopeStore *)self cacheCoordinator];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__NDAnalyticsEnvelopeStore_allEntriesWithHoldToken___block_invoke;
  v9[3] = &unk_27997A7F8;
  v9[4] = self;
  v9[5] = &v16;
  v9[6] = &v10;
  v9[7] = token;
  [cacheCoordinator2 performCacheRead:v9];

  if (token)
  {
    *token = v11[5];
  }

  v7 = NDAnalyticsEnvelopeStoreEntriesFromStringRepresentations(v17[5]);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

void __52__NDAnalyticsEnvelopeStore_allEntriesWithHoldToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetStore];
  v3 = [v2 allKeys];
  v4 = [v3 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(a1 + 56))
  {
    v10 = [*(a1 + 32) cacheCoordinator];
    v7 = [v10 holdTokenForKeys:*(*(*(a1 + 40) + 8) + 40)];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (id)sizesOfEnvelopesWithEntries:(id)entries
{
  entriesCopy = entries;
  if (!entriesCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsEnvelopeStore sizesOfEnvelopesWithEntries:];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  cacheCoordinator = [(NDAnalyticsEnvelopeStore *)self cacheCoordinator];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__NDAnalyticsEnvelopeStore_sizesOfEnvelopesWithEntries___block_invoke;
  v9[3] = &unk_27997A848;
  v9[4] = self;
  v11 = &v12;
  v6 = entriesCopy;
  v10 = v6;
  [cacheCoordinator performCacheRead:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__NDAnalyticsEnvelopeStore_sizesOfEnvelopesWithEntries___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetStore];
  v3 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__NDAnalyticsEnvelopeStore_sizesOfEnvelopesWithEntries___block_invoke_2;
  v8[3] = &unk_27997A820;
  v9 = v2;
  v4 = v2;
  v5 = [v3 fc_dictionaryWithValueBlock:v8];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id __56__NDAnalyticsEnvelopeStore_sizesOfEnvelopesWithEntries___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = FCDynamicCast();

  v5 = [v4 stringRepresentation];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "sizeOfFileForKey:", v5)}];

  return v6;
}

- (id)envelopesForEntries:(id)entries
{
  entriesCopy = entries;
  if (!entriesCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsEnvelopeStore envelopesForEntries:];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  cacheCoordinator = [(NDAnalyticsEnvelopeStore *)self cacheCoordinator];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__NDAnalyticsEnvelopeStore_envelopesForEntries___block_invoke;
  v9[3] = &unk_27997A848;
  v9[4] = self;
  v11 = &v12;
  v6 = entriesCopy;
  v10 = v6;
  [cacheCoordinator performCacheRead:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __48__NDAnalyticsEnvelopeStore_envelopesForEntries___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetStore];
  v3 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__NDAnalyticsEnvelopeStore_envelopesForEntries___block_invoke_2;
  v8[3] = &unk_27997A870;
  v9 = v2;
  v4 = v2;
  v5 = [v3 fc_dictionaryWithValueBlock:v8];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id __48__NDAnalyticsEnvelopeStore_envelopesForEntries___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = FCDynamicCast();

  v5 = [v4 stringRepresentation];
  v6 = [*(a1 + 32) fileURLForKey:v5];
  v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v6];
  v8 = [objc_alloc(MEMORY[0x277D35468]) initWithData:v7];

  return v8;
}

- (unint64_t)cacheCoordinatorCurrentSizeWithReadLock:(id)lock
{
  assetStore = [(NDAnalyticsEnvelopeStore *)self assetStore];
  storeSize = [assetStore storeSize];

  return storeSize;
}

- (void)cacheCoordinator:(id)coordinator flushKeysWithWriteLock:(id)lock
{
  allObjects = [lock allObjects];
  [(NDAnalyticsEnvelopeStore *)self _deleteEnvelopesForKeysFromStore:allObjects];
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v6 = NDAnalyticsEnvelopeStoreEntriesFromStringRepresentations(allObjects);
  [WeakRetained envelopeStore:self didFlushEnvelopesForEntries:v6];
}

- (void)_deleteEnvelopesForKeysFromStore:(id)store
{
  v17 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  if (!storeCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsEnvelopeStore _deleteEnvelopesForKeysFromStore:];
  }

  assetStore = [(NDAnalyticsEnvelopeStore *)self assetStore];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = storeCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [assetStore removeFileWithKey:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_reportEnvelopesToNewsAutomationIfNeeded:(id)needed
{
  v45 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    v5 = [v4 BOOLForKey:*MEMORY[0x277D30C60]];

    if (v5)
    {
      v6 = FCURLForFeldsparUserAccountHomeDirectory();
      v27 = [v6 URLByAppendingPathComponent:@"envelopes" isDirectory:1];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v24 = neededCopy;
      obj = neededCopy;
      v28 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
      if (v28)
      {
        v26 = *v33;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v33 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v32 + 1) + 8 * i);
            v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"contentType-%d", objc_msgSend(v8, "contentType")];
            v10 = [v27 URLByAppendingPathComponent:v9 isDirectory:1];
            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            v31 = 0;
            [defaultManager createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v31];
            v29 = v31;

            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            path = [v10 path];
            v30 = 0;
            v14 = [defaultManager2 contentsOfDirectoryAtPath:path error:&v30];
            v15 = v30;
            v16 = [v14 count];

            if (v15 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"expected nil value for '%s'", "error2"];
              *buf = 136315906;
              v37 = "[NDAnalyticsEnvelopeStore _reportEnvelopesToNewsAutomationIfNeeded:]";
              v38 = 2080;
              v39 = "NDAnalyticsEnvelopeStore.m";
              v40 = 1024;
              v41 = 256;
              v42 = 2114;
              v43 = v22;
              _os_log_error_impl(&dword_25BDF7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
            }

            v17 = MEMORY[0x277CCACA8];
            v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
            v19 = [v17 stringWithFormat:@"%@", v18];
            v20 = [v10 URLByAppendingPathComponent:v19];

            data = [v8 data];
            [data writeToURL:v20 atomically:1];
          }

          v28 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
        }

        while (v28);
      }

      neededCopy = v24;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)initWithStoreDirectoryFileURL:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "storeDirectoryFileURL", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)copyEnvelopes:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "envelopes", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteEnvelopesForEntries:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "entries", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)sizesOfEnvelopesWithEntries:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "entries", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)envelopesForEntries:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "entries", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_deleteEnvelopesForKeysFromStore:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "keys", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end