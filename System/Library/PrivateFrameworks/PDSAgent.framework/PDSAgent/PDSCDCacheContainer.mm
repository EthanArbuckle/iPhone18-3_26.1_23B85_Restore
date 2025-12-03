@interface PDSCDCacheContainer
- (BOOL)_deleteEntry:(id)entry context:(id)context withError:(id *)error;
- (BOOL)_storeEntry:(id)entry transitionBlock:(id)block context:(id)context withError:(id *)error;
- (BOOL)_updateAllEntriesWithState:(unsigned __int8)state toState:(unsigned __int8)toState withError:(id *)error;
- (BOOL)_updateEntryState:(unsigned __int8)state forUser:(id)user clientID:(id)d withError:(id *)error;
- (BOOL)deleteEntriesForUser:(id)user withState:(unsigned __int8)state withError:(id *)error;
- (BOOL)deleteEntry:(id)entry withError:(id *)error;
- (BOOL)hasActiveEntries;
- (BOOL)hasPendingEntries;
- (BOOL)storeEntries:(id)entries transitionBlock:(id)block deleteEntries:(id)deleteEntries withError:(id *)error;
- (BOOL)storeEntry:(id)entry transitionBlock:(id)block withError:(id *)error;
- (NSPersistentContainer)container;
- (PDSCDCacheContainer)initWithContainingPath:(id)path;
- (id)_cdRegistrationsMatchingEntry:(id)entry inContext:(id)context;
- (id)_cdRegistrationsMatchingUser:(id)user withClientID:(id)d inContext:(id)context;
- (id)_entriesFromRegistrations:(id)registrations inContext:(id)context;
- (id)_loadUsersIncludingOnlyActive:(BOOL)active;
- (id)_usersForClientID:(id)d activeOnly:(BOOL)only;
- (id)allStoredValues;
- (id)dataForKey:(id)key;
- (id)loadAllEntries;
- (id)loadAllEntriesForClientID:(id)d;
- (id)loadAllEntriesUser:(id)user;
- (id)loadAllEntriesUser:(id)user withClientID:(id)d;
- (id)loadAllUsers;
- (id)loadPendingEntries;
- (id)loadWithError:(id *)error;
- (id)numberForKey:(id)key;
- (id)stringForKey:(id)key;
- (void)_KVEntryForKey:(id)key withBlock:(id)block;
- (void)_syncBlockWithContext:(id)context;
- (void)deleteCache;
- (void)setData:(id)data forKey:(id)key;
- (void)setNumber:(id)number forKey:(id)key;
- (void)setString:(id)string forKey:(id)key;
@end

@implementation PDSCDCacheContainer

- (NSPersistentContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

- (PDSCDCacheContainer)initWithContainingPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    [PDSCDCacheContainer initWithContainingPath:];
  }

  absoluteString = [pathCopy absoluteString];
  v7 = [absoluteString length];

  if (!v7)
  {
    [PDSCDCacheContainer initWithContainingPath:];
  }

  v11.receiver = self;
  v11.super_class = PDSCDCacheContainer;
  v8 = [(PDSCDCacheContainer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_containingPath, path);
  }

  return v9;
}

- (id)loadWithError:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  container = [(PDSCDCacheContainer *)self container];
  if (!container)
  {
    v6 = MEMORY[0x277CBE450];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v34[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    v9 = [v6 mergedModelFromBundles:v8];

    entities = [v9 entities];
    LOBYTE(v8) = [entities count] == 0;

    if (v8)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loaded model has no entities"];
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D37AE8];
      v31 = *MEMORY[0x277CCA068];
      v32 = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v18 = [v16 errorWithDomain:v17 code:-404 userInfo:v14];
      v19 = v26[5];
      v26[5] = v18;

      container = 0;
    }

    else
    {
      container = [MEMORY[0x277CBE4A0] persistentContainerWithName:@"PDSCDCache" managedObjectModel:v9];
      containingPath = [(PDSCDCacheContainer *)self containingPath];
      name = [container name];
      v13 = [containingPath URLByAppendingPathComponent:name];

      v14 = [MEMORY[0x277CBE4E0] persistentStoreDescriptionWithURL:v13];
      [v14 setType:*MEMORY[0x277CBE2E8]];
      v33 = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
      [container setPersistentStoreDescriptions:v15];

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __37__PDSCDCacheContainer_loadWithError___block_invoke;
      v24[3] = &unk_2799F85E8;
      v24[4] = &v25;
      [container loadPersistentStoresWithCompletionHandler:v24];
      [(PDSCDCacheContainer *)self setContainer:container];
    }
  }

  v20 = v26[5];
  if (v20)
  {
    v21 = 0;
    if (error)
    {
      *error = v20;
    }
  }

  else
  {
    v21 = [[PDSCDCacheReferenceProxy alloc] initWithCacheContainer:self persistentContainer:container];
  }

  _Block_object_dispose(&v25, 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)loadAllEntriesUser:(id)user
{
  userCopy = user;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__PDSCDCacheContainer_loadAllEntriesUser___block_invoke;
  v8[3] = &unk_2799F8610;
  v8[4] = self;
  v5 = userCopy;
  v9 = v5;
  v10 = &v11;
  [(PDSCDCacheContainer *)self _syncBlockWithContext:v8];
  v6 = [v12[5] copy];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __42__PDSCDCacheContainer_loadAllEntriesUser___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v9 = [v3 _cdRegistrationsMatchingUser:v4 withClientID:0 inContext:v5];
  v6 = [*(a1 + 32) _entriesFromRegistrations:v9 inContext:v5];

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)loadAllEntriesUser:(id)user withClientID:(id)d
{
  userCopy = user;
  dCopy = d;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __55__PDSCDCacheContainer_loadAllEntriesUser_withClientID___block_invoke;
  v15 = &unk_2799F8638;
  selfCopy = self;
  v8 = userCopy;
  v17 = v8;
  v9 = dCopy;
  v18 = v9;
  v19 = &v20;
  [(PDSCDCacheContainer *)self _syncBlockWithContext:&v12];
  v10 = [v21[5] copy];

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __55__PDSCDCacheContainer_loadAllEntriesUser_withClientID___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  v10 = [v3 _cdRegistrationsMatchingUser:v4 withClientID:v5 inContext:v6];
  v7 = [*(a1 + 32) _entriesFromRegistrations:v10 inContext:v6];

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)loadAllEntriesForClientID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__PDSCDCacheContainer_loadAllEntriesForClientID___block_invoke;
  v8[3] = &unk_2799F8660;
  v5 = dCopy;
  selfCopy = self;
  v11 = &v12;
  v9 = v5;
  [(PDSCDCacheContainer *)self _syncBlockWithContext:v8];
  v6 = [v13[5] copy];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __49__PDSCDCacheContainer_loadAllEntriesForClientID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = +[PDSCDRegistration fetchRequest];
  v4 = [PDSCDRegistration registrationsForClientID:*(a1 + 32)];
  [v9 setPredicate:v4];

  v5 = [v3 executeFetchRequest:v9 error:0];
  v6 = [*(a1 + 40) _entriesFromRegistrations:v5 inContext:v3];

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)loadAllUsers
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__PDSCDCacheContainer_loadAllUsers__block_invoke;
  v4[3] = &unk_2799F8688;
  v4[4] = &v5;
  [(PDSCDCacheContainer *)self _syncBlockWithContext:v4];
  v2 = [v6[5] copy];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __35__PDSCDCacheContainer_loadAllUsers__block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[PDSCDUser fetchRequest];
  v5 = [v3 executeFetchRequest:v4 error:0];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [v15 user];
        if (v16)
        {
          v17 = *(*(*(a1 + 32) + 8) + 40);
          v18 = v16;
        }

        else
        {
          v17 = v9;
          v18 = v15;
        }

        [v17 addObject:v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = v9;
    v20 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v27;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [v3 deleteObject:*(*(&v26 + 1) + 8 * j)];
        }

        v21 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v21);
    }

    v25 = 0;
    [v3 save:&v25];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)loadAllEntries
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__PDSCDCacheContainer_loadAllEntries__block_invoke;
  v4[3] = &unk_2799F86B0;
  v4[4] = self;
  v4[5] = &v5;
  [(PDSCDCacheContainer *)self _syncBlockWithContext:v4];
  v2 = [v6[5] copy];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __37__PDSCDCacheContainer_loadAllEntries__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PDSCDRegistration fetchRequest];
  v8 = [v3 executeFetchRequest:v4 error:0];

  v5 = [*(a1 + 32) _entriesFromRegistrations:v8 inContext:v3];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)loadPendingEntries
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__PDSCDCacheContainer_loadPendingEntries__block_invoke;
  v4[3] = &unk_2799F86B0;
  v4[4] = self;
  v4[5] = &v5;
  [(PDSCDCacheContainer *)self _syncBlockWithContext:v4];
  v2 = [v6[5] copy];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __41__PDSCDCacheContainer_loadPendingEntries__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = +[PDSCDRegistration fetchRequest];
  v4 = +[PDSCDRegistration pendingRegistrations];
  [v9 setPredicate:v4];

  v5 = [v3 executeFetchRequest:v9 error:0];
  v6 = [*(a1 + 32) _entriesFromRegistrations:v5 inContext:v3];

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (BOOL)hasPendingEntries
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__PDSCDCacheContainer_hasPendingEntries__block_invoke;
  v4[3] = &unk_2799F8688;
  v4[4] = &v5;
  [(PDSCDCacheContainer *)self _syncBlockWithContext:v4];
  v2 = v6[3] != 0;
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __40__PDSCDCacheContainer_hasPendingEntries__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = +[PDSCDRegistration fetchRequest];
  v4 = +[PDSCDRegistration pendingRegistrations];
  [v6 setPredicate:v4];

  [v6 setResultType:4];
  v5 = [v3 countForFetchRequest:v6 error:0];

  *(*(*(a1 + 32) + 8) + 24) = v5;
}

- (BOOL)hasActiveEntries
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__PDSCDCacheContainer_hasActiveEntries__block_invoke;
  v4[3] = &unk_2799F8688;
  v4[4] = &v5;
  [(PDSCDCacheContainer *)self _syncBlockWithContext:v4];
  v2 = v6[3] != 0;
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __39__PDSCDCacheContainer_hasActiveEntries__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = +[PDSCDRegistration fetchRequest];
  v4 = +[PDSCDRegistration activeRegistrations];
  [v6 setPredicate:v4];

  [v6 setResultType:4];
  v5 = [v3 countForFetchRequest:v6 error:0];

  *(*(*(a1 + 32) + 8) + 24) = v5;
}

- (BOOL)storeEntry:(id)entry transitionBlock:(id)block withError:(id *)error
{
  entryCopy = entry;
  blockCopy = block;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__PDSCDCacheContainer_storeEntry_transitionBlock_withError___block_invoke;
  v15[3] = &unk_2799F86F8;
  v15[4] = self;
  v10 = entryCopy;
  v16 = v10;
  v11 = blockCopy;
  v17 = v11;
  v18 = &v20;
  v19 = &v26;
  [(PDSCDCacheContainer *)self _syncBlockWithContext:v15];
  if (error)
  {
    v12 = v21[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = *(v27 + 24) == 1 && v21[5] == 0;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

void __60__PDSCDCacheContainer_storeEntry_transitionBlock_withError___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(a1[7] + 8);
  obj = *(v7 + 40);
  v8 = [v4 _storeEntry:v5 transitionBlock:v6 context:v3 withError:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    v9 = *(a1[7] + 8);
    v11 = *(v9 + 40);
    v10 = [v3 save:&v11];
    objc_storeStrong((v9 + 40), v11);
    *(*(a1[8] + 8) + 24) = v10;
  }
}

- (BOOL)storeEntries:(id)entries transitionBlock:(id)block deleteEntries:(id)deleteEntries withError:(id *)error
{
  entriesCopy = entries;
  blockCopy = block;
  deleteEntriesCopy = deleteEntries;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__PDSCDCacheContainer_storeEntries_transitionBlock_deleteEntries_withError___block_invoke;
  v19[3] = &unk_2799F8720;
  v13 = entriesCopy;
  v20 = v13;
  selfCopy = self;
  v14 = blockCopy;
  v23 = v14;
  v24 = &v26;
  v15 = deleteEntriesCopy;
  v22 = v15;
  v25 = &v32;
  [(PDSCDCacheContainer *)self _syncBlockWithContext:v19];
  if (error)
  {
    v16 = v27[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = *(v33 + 24) == 1 && v27[5] == 0;

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v17;
}

void __76__PDSCDCacheContainer_storeEntries_transitionBlock_deleteEntries_withError___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v33 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v32 + 1) + 8 * v8);
      v10 = *(a1 + 40);
      v11 = *(a1 + 56);
      v12 = *(*(a1 + 64) + 8);
      obj = *(v12 + 40);
      v13 = [v10 _storeEntry:v9 transitionBlock:v11 context:v3 withError:&obj];
      objc_storeStrong((v12 + 40), obj);
      if (!v13)
      {
        goto LABEL_18;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = *(a1 + 48);
  v14 = [v4 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
LABEL_11:
    v17 = 0;
    while (1)
    {
      if (*v28 != v16)
      {
        objc_enumerationMutation(v4);
      }

      v18 = *(*(&v27 + 1) + 8 * v17);
      v19 = *(a1 + 40);
      v20 = *(*(a1 + 64) + 8);
      v26 = *(v20 + 40);
      v21 = [v19 _deleteEntry:v18 context:v3 withError:&v26];
      objc_storeStrong((v20 + 40), v26);
      if (!v21)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v4 countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (v15)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

LABEL_18:

    [v3 rollback];
    goto LABEL_19;
  }

LABEL_17:

  v22 = *(*(a1 + 64) + 8);
  v25 = *(v22 + 40);
  v23 = [v3 save:&v25];
  objc_storeStrong((v22 + 40), v25);
  *(*(*(a1 + 72) + 8) + 24) = v23;
LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)deleteEntry:(id)entry withError:(id *)error
{
  entryCopy = entry;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__PDSCDCacheContainer_deleteEntry_withError___block_invoke;
  v11[3] = &unk_2799F8748;
  v11[4] = self;
  v7 = entryCopy;
  v12 = v7;
  v13 = &v15;
  v14 = &v21;
  [(PDSCDCacheContainer *)self _syncBlockWithContext:v11];
  if (error)
  {
    v8 = v16[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = *(v22 + 24) == 1 && v16[5] == 0;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __45__PDSCDCacheContainer_deleteEntry_withError___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  v7 = [v4 _deleteEntry:v5 context:v3 withError:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    v8 = *(a1[6] + 8);
    v10 = *(v8 + 40);
    v9 = [v3 save:&v10];
    objc_storeStrong((v8 + 40), v10);
    *(*(a1[7] + 8) + 24) = v9;
  }
}

- (BOOL)deleteEntriesForUser:(id)user withState:(unsigned __int8)state withError:(id *)error
{
  userCopy = user;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__PDSCDCacheContainer_deleteEntriesForUser_withState_withError___block_invoke;
  v13[3] = &unk_2799F8770;
  v13[4] = self;
  v9 = userCopy;
  stateCopy = state;
  v14 = v9;
  v15 = &v18;
  v16 = &v24;
  [(PDSCDCacheContainer *)self _syncBlockWithContext:v13];
  if (error)
  {
    v10 = v19[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = *(v25 + 24) == 1 && v19[5] == 0;

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __64__PDSCDCacheContainer_deleteEntriesForUser_withState_withError___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _cdRegistrationsMatchingUser:*(a1 + 40) withClientID:0 inContext:v3];
  [*(a1 + 32) _entriesFromRegistrations:v4 inContext:v3];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ([v10 state] == *(a1 + 64))
        {
          v11 = *(a1 + 32);
          v12 = *(*(a1 + 48) + 8);
          obj = *(v12 + 40);
          v13 = [v11 _deleteEntry:v10 context:v3 withError:&obj];
          objc_storeStrong((v12 + 40), obj);
          if ((v13 & 1) == 0)
          {

            [v3 rollback];
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = *(*(a1 + 48) + 8);
  v17 = *(v14 + 40);
  v15 = [v3 save:&v17];
  objc_storeStrong((v14 + 40), v17);
  *(*(*(a1 + 56) + 8) + 24) = v15;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)deleteCache
{
  v20 = *MEMORY[0x277D85DE8];
  container = [(PDSCDCacheContainer *)self container];
  if (container)
  {
    v3 = pds_defaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DED8000, v3, OS_LOG_TYPE_DEFAULT, "Deleting PDS Core data stores!", buf, 2u);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    persistentStoreDescriptions = [container persistentStoreDescriptions];
    v5 = [persistentStoreDescriptions countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(persistentStoreDescriptions);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          persistentStoreCoordinator = [container persistentStoreCoordinator];
          v11 = [v9 URL];
          type = [v9 type];
          [persistentStoreCoordinator destroyPersistentStoreAtURL:v11 withType:type options:0 error:0];

          ++v8;
        }

        while (v6 != v8);
        v6 = [persistentStoreDescriptions countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v6);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_storeEntry:(id)entry transitionBlock:(id)block context:(id)context withError:(id *)error
{
  v89 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  blockCopy = block;
  selfCopy = self;
  contextCopy = context;
  [(PDSCDCacheContainer *)self _cdRegistrationsMatchingEntry:entryCopy inContext:?];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v79 = 0u;
  v12 = [obj countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  errorCopy = error;
  v71 = blockCopy;
  v74 = 0;
  v14 = 0;
  v15 = *v77;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v77 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v76 + 1) + 8 * i);
      user = [v17 user];
      v18User = [user user];
      user2 = [entryCopy user];
      v21 = [v18User isEqualToUser:user2];

      if (v21)
      {
        entryState = [v17 entryState];
        if (entryState == [entryCopy state])
        {
          v23 = v17;

          v14 = v23;
        }

        else if (v74)
        {
          [v17 setUser:0];
          [contextCopy deleteObject:v17];
        }

        else
        {
          v74 = v17;
        }
      }
    }

    v13 = [obj countByEnumeratingWithState:&v76 objects:v88 count:16];
  }

  while (v13);
  if (!v14)
  {
    v28 = errorCopy;
    blockCopy = v71;
    if (v74)
    {
      clientID = [v74 clientID];
      clientID2 = [entryCopy clientID];
      v38 = [clientID isEqualToString:clientID2];

      if (v38)
      {
        v39 = v74;
        if (v71 && (*(v71 + 2))(v71, [v74 entryState], objc_msgSend(entryCopy, "state")))
        {
          [v74 setEntryState:{objc_msgSend(entryCopy, "state")}];
          v40 = 0;
          v41 = 0;
LABEL_25:
          v14 = 0;
          goto LABEL_37;
        }

        v62 = MEMORY[0x277CCACA8];
        [v74 entryState];
        v63 = PDSStringForEntryState();
        [entryCopy state];
        v64 = PDSStringForEntryState();
        v55 = [v62 stringWithFormat:@"Invalid transition from %@ to %@", v63, v64];

        v65 = MEMORY[0x277CCA9B8];
        v66 = *MEMORY[0x277D37AE8];
        v82 = *MEMORY[0x277CCA068];
        v83 = v55;
        v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v59 = v65;
        v60 = v66;
        v61 = -402;
      }

      else
      {
        v52 = MEMORY[0x277CCACA8];
        clientID3 = [0 clientID];
        clientID4 = [entryCopy clientID];
        v55 = [v52 stringWithFormat:@"Existing entry has client ID %@, trying to store with %@", clientID3, clientID4];

        v56 = MEMORY[0x277CCA9B8];
        v57 = *MEMORY[0x277D37AE8];
        v80 = *MEMORY[0x277CCA068];
        v81 = v55;
        v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        v59 = v56;
        v60 = v57;
        v61 = -401;
      }

      v41 = [v59 errorWithDomain:v60 code:v61 userInfo:v58];

      goto LABEL_33;
    }

LABEL_22:
    v42 = [PDSCDRegistration registrationFromEntry:entryCopy insertIntoManagedObjectContext:contextCopy];
    user3 = [entryCopy user];
    userID = [user3 userID];
    user4 = [entryCopy user];
    v46 = -[PDSCDCacheContainer _cdUsersMatchingUserID:userType:inContext:](selfCopy, "_cdUsersMatchingUserID:userType:inContext:", userID, [user4 userType], contextCopy);

    if (!v46)
    {
      user5 = [entryCopy user];
      v46 = [PDSCDUser userFromUser:user5 insertIntoManagedObjectContext:contextCopy];
    }

    [v42 setUser:v46];

    v40 = 0;
    v41 = 0;
    v39 = 0;
    goto LABEL_25;
  }

  clientID5 = [v14 clientID];
  clientID6 = [entryCopy clientID];
  v26 = [clientID5 isEqualToString:clientID6];

  v27 = MEMORY[0x277CCACA8];
  v28 = errorCopy;
  blockCopy = v71;
  if (v26)
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"The entry already exists"];
    v30 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277D37AE8];
    v86 = *MEMORY[0x277CCA068];
    v87 = v29;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    v33 = v30;
    v34 = v31;
    v35 = -400;
  }

  else
  {
    clientID7 = [v14 clientID];
    clientID8 = [entryCopy clientID];
    v29 = [v27 stringWithFormat:@"Existing entry has client ID %@, trying to store with %@", clientID7, clientID8];

    v50 = MEMORY[0x277CCA9B8];
    v51 = *MEMORY[0x277D37AE8];
    v84 = *MEMORY[0x277CCA068];
    v85 = v29;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    v33 = v50;
    v34 = v51;
    v35 = -401;
  }

  v41 = [v33 errorWithDomain:v34 code:v35 userInfo:v32];

  if (v74)
  {
    [contextCopy deleteObject:?];
  }

  else
  {
    v74 = 0;
  }

LABEL_33:
  v40 = v41 != 0;
  if (v28 && v41)
  {
    v67 = v41;
    *v28 = v41;
    v40 = 1;
  }

  v39 = v74;
LABEL_37:

  v68 = *MEMORY[0x277D85DE8];
  return !v40;
}

- (BOOL)_deleteEntry:(id)entry context:(id)context withError:(id *)error
{
  v53[1] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  contextCopy = context;
  v41 = entryCopy;
  v9 = [(PDSCDCacheContainer *)self _cdRegistrationsMatchingEntry:entryCopy inContext:?];
  if ([v9 count])
  {
    goto LABEL_2;
  }

  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Nothing to delete"];
  v35 = MEMORY[0x277CCA9B8];
  v36 = *MEMORY[0x277D37AE8];
  v52 = *MEMORY[0x277CCA068];
  v53[0] = v34;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  v30 = [v35 errorWithDomain:v36 code:-403 userInfo:v37];

  if (!v30)
  {
LABEL_2:
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v39 = v9;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v47;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v47 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v46 + 1) + 8 * i);
          user = [v16 user];
          v17User = [user user];
          user2 = [v41 user];
          v20 = [v17User isEqual:user2];

          if (v20)
          {
            user3 = [v16 user];
            [v10 addObject:user3];

            [v16 setUser:0];
            [contextCopy deleteObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v13);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v22 = v10;
    v23 = [v22 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v43;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v43 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v42 + 1) + 8 * j);
          registrations = [v27 registrations];
          v29 = [registrations count];

          if (!v29)
          {
            [contextCopy deleteObject:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v24);
    }

    v30 = 0;
    v31 = 1;
    v9 = v39;
  }

  else if (error)
  {
    v38 = v30;
    v31 = 0;
    *error = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (void)setNumber:(id)number forKey:(id)key
{
  numberCopy = number;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__PDSCDCacheContainer_setNumber_forKey___block_invoke;
  v8[3] = &unk_2799F8798;
  v9 = numberCopy;
  v7 = numberCopy;
  [(PDSCDCacheContainer *)self _KVEntryForKey:key withBlock:v8];
}

void __40__PDSCDCacheContainer_setNumber_forKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setNumValue:v2];
  [v3 setStringValue:0];
  [v3 setDataValue:0];
}

- (id)numberForKey:(id)key
{
  keyCopy = key;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__PDSCDCacheContainer_numberForKey___block_invoke;
  v7[3] = &unk_2799F87C0;
  v7[4] = &v8;
  [(PDSCDCacheContainer *)self _KVEntryForKey:keyCopy withBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __36__PDSCDCacheContainer_numberForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 numValue];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)setString:(id)string forKey:(id)key
{
  stringCopy = string;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__PDSCDCacheContainer_setString_forKey___block_invoke;
  v8[3] = &unk_2799F8798;
  v9 = stringCopy;
  v7 = stringCopy;
  [(PDSCDCacheContainer *)self _KVEntryForKey:key withBlock:v8];
}

void __40__PDSCDCacheContainer_setString_forKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setNumValue:0];
  [v3 setStringValue:*(a1 + 32)];
  [v3 setDataValue:0];
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__PDSCDCacheContainer_stringForKey___block_invoke;
  v7[3] = &unk_2799F87C0;
  v7[4] = &v8;
  [(PDSCDCacheContainer *)self _KVEntryForKey:keyCopy withBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __36__PDSCDCacheContainer_stringForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 stringValue];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)setData:(id)data forKey:(id)key
{
  dataCopy = data;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__PDSCDCacheContainer_setData_forKey___block_invoke;
  v8[3] = &unk_2799F8798;
  v9 = dataCopy;
  v7 = dataCopy;
  [(PDSCDCacheContainer *)self _KVEntryForKey:key withBlock:v8];
}

void __38__PDSCDCacheContainer_setData_forKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setNumValue:0];
  [v3 setStringValue:0];
  [v3 setDataValue:*(a1 + 32)];
}

- (id)dataForKey:(id)key
{
  keyCopy = key;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__PDSCDCacheContainer_dataForKey___block_invoke;
  v7[3] = &unk_2799F87C0;
  v7[4] = &v8;
  [(PDSCDCacheContainer *)self _KVEntryForKey:keyCopy withBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __34__PDSCDCacheContainer_dataForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dataValue];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)allStoredValues
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__PDSCDCacheContainer_allStoredValues__block_invoke;
  v5[3] = &unk_2799F8688;
  v5[4] = &v6;
  [(PDSCDCacheContainer *)self _syncBlockWithContext:v5];
  v3 = [v7[5] copy];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__PDSCDCacheContainer_allStoredValues__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[PDSCDKV fetchRequest];
  v23 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v23];
  v18 = v23;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 key];

        if (v12)
        {
          v13 = [v11 stringValue];
          if (v13 || ([v11 dataValue], (v13 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v11, "numValue"), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v14 = v13;
            v15 = *(*(*(a1 + 32) + 8) + 40);
            v16 = [v11 key];
            [v15 setObject:v14 forKeyedSubscript:v16];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_entriesFromRegistrations:(id)registrations inContext:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  registrationsCopy = registrations;
  contextCopy = context;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(registrationsCopy, "count")}];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = registrationsCopy;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        v16 = [v15 entryWithUserCache:v9];
        if (v16)
        {
          v17 = v7;
          v18 = v16;
        }

        else
        {
          v17 = v8;
          v18 = v15;
        }

        [v17 addObject:v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v12);
  }

  if ([v8 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = v8;
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [contextCopy deleteObject:*(*(&v27 + 1) + 8 * j)];
        }

        v21 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v21);
    }

    v26 = 0;
    [contextCopy save:&v26];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_updateEntryState:(unsigned __int8)state forUser:(id)user clientID:(id)d withError:(id *)error
{
  stateCopy = state;
  userCopy = user;
  dCopy = d;
  if (stateCopy >= 4)
  {
    [PDSCDCacheContainer _updateEntryState:forUser:clientID:withError:];
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__PDSCDCacheContainer__updateEntryState_forUser_clientID_withError___block_invoke;
  v17[3] = &unk_2799F87E8;
  v17[4] = self;
  v12 = userCopy;
  v18 = v12;
  v13 = dCopy;
  v22 = stateCopy;
  v19 = v13;
  v20 = &v29;
  v21 = &v23;
  [(PDSCDCacheContainer *)self _syncBlockWithContext:v17];
  if (error)
  {
    v14 = v24[5];
    if (v14)
    {
      *error = v14;
    }
  }

  v15 = *(v30 + 24) == 1 && v24[5] == 0;

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

void __68__PDSCDCacheContainer__updateEntryState_forUser_clientID_withError___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _cdRegistrationsMatchingUser:*(a1 + 40) withClientID:*(a1 + 48) inContext:v3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v13 + 1) + 8 * v8++) setEntryState:*(a1 + 72)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v9 = *(*(a1 + 64) + 8);
  obj = *(v9 + 40);
  v10 = [v3 save:&obj];
  objc_storeStrong((v9 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v10;

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateAllEntriesWithState:(unsigned __int8)state toState:(unsigned __int8)toState withError:(id *)error
{
  toStateCopy = toState;
  if (state >= 4u)
  {
    [PDSCDCacheContainer _updateAllEntriesWithState:toState:withError:];
  }

  if (toStateCopy >= 4)
  {
    [PDSCDCacheContainer _updateAllEntriesWithState:toState:withError:];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__PDSCDCacheContainer__updateAllEntriesWithState_toState_withError___block_invoke;
  v12[3] = &unk_2799F8810;
  stateCopy = state;
  v14 = toStateCopy;
  v12[4] = &v21;
  v12[5] = &v15;
  [(PDSCDCacheContainer *)self _syncBlockWithContext:v12];
  if (error)
  {
    v9 = v16[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = *(v22 + 24) == 1 && v16[5] == 0;
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v10;
}

void __68__PDSCDCacheContainer__updateAllEntriesWithState_toState_withError___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[PDSCDRegistration fetchRequest];
  v5 = [PDSCDRegistration registrationsWithState:*(a1 + 48)];
  [v4 setPredicate:v5];

  v6 = [v3 executeFetchRequest:v4 error:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v15 + 1) + 8 * v10++) setEntryState:*(a1 + 49)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v11 = *(*(a1 + 40) + 8);
  obj = *(v11 + 40);
  v12 = [v3 save:&obj];
  objc_storeStrong((v11 + 40), obj);
  *(*(*(a1 + 32) + 8) + 24) = v12;

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_cdRegistrationsMatchingUser:(id)user withClientID:(id)d inContext:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  userCopy = user;
  dCopy = d;
  contextCopy = context;
  v10 = +[PDSCDRegistration fetchRequest];
  if (dCopy)
  {
    v11 = [PDSCDRegistration registrationsForClientID:dCopy];
    [v10 setPredicate:v11];
  }

  v29 = contextCopy;
  v30 = dCopy;
  v12 = [contextCopy executeFetchRequest:v10 error:{0, v10}];
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    do
    {
      v16 = 0;
      v32 = v14;
      do
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v34 + 1) + 8 * v16);
        user = [v17 user];
        userID = [user userID];
        userID2 = [userCopy userID];
        if ([userID isEqualToString:userID2])
        {
          user2 = [v17 user];
          userType = [user2 userType];
          v23 = userCopy;
          userType2 = [userCopy userType];

          v25 = userType == userType2;
          v14 = v32;
          userCopy = v23;
          if (v25)
          {
            [v31 addObject:v17];
          }
        }

        else
        {
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)_loadUsersIncludingOnlyActive:(BOOL)active
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__PDSCDCacheContainer__loadUsersIncludingOnlyActive___block_invoke;
  v5[3] = &unk_2799F8688;
  v5[4] = &v6;
  [(PDSCDCacheContainer *)self _syncBlockWithContext:v5];
  v3 = [v7[5] copy];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __53__PDSCDCacheContainer__loadUsersIncludingOnlyActive___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[PDSCDUser fetchRequest];
  v5 = [v3 executeFetchRequest:v4 error:0];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [v15 user];
        if (v16)
        {
          v17 = *(*(*(a1 + 32) + 8) + 40);
          v18 = v16;
        }

        else
        {
          v17 = v9;
          v18 = v15;
        }

        [v17 addObject:v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = v9;
    v20 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v27;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [v3 deleteObject:*(*(&v26 + 1) + 8 * j)];
        }

        v21 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v21);
    }

    v25 = 0;
    [v3 save:&v25];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_usersForClientID:(id)d activeOnly:(BOOL)only
{
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__PDSCDCacheContainer__usersForClientID_activeOnly___block_invoke;
  v10[3] = &unk_2799F8838;
  v7 = dCopy;
  onlyCopy = only;
  v11 = v7;
  v12 = &v14;
  [(PDSCDCacheContainer *)self _syncBlockWithContext:v10];
  allObjects = [v15[5] allObjects];

  _Block_object_dispose(&v14, 8);

  return allObjects;
}

void __52__PDSCDCacheContainer__usersForClientID_activeOnly___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[PDSCDRegistration fetchRequest];
  v5 = v4;
  v6 = *(a1 + 48);
  if (*(a1 + 32))
  {
    if (*(a1 + 48))
    {
      [PDSCDRegistration activeRegistrationsForClientID:?];
    }

    else
    {
      [PDSCDRegistration registrationsForClientID:?];
    }
    v7 = ;
    goto LABEL_8;
  }

  if (*(a1 + 48))
  {
    v7 = +[PDSCDRegistration activeRegistrations];
LABEL_8:
    v8 = v7;
    [v5 setPredicate:v7];

    goto LABEL_9;
  }

  [v4 setPredicate:0];
LABEL_9:
  v9 = [v3 executeFetchRequest:v5 error:{0, v5}];
  v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        v20 = [v19 user];
        v21 = [v20 user];

        if (v21)
        {
          v22 = *(*(*(a1 + 40) + 8) + 40);
          v23 = v21;
        }

        else
        {
          v22 = v13;
          v23 = v19;
        }

        [v22 addObject:v23];
      }

      v16 = [v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v16);
  }

  if ([v13 count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = v13;
    v25 = [v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [v3 deleteObject:*(*(&v32 + 1) + 8 * j)];
        }

        v26 = [v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v26);
    }

    v31 = 0;
    [v3 save:&v31];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)_cdRegistrationsMatchingEntry:(id)entry inContext:(id)context
{
  contextCopy = context;
  entryCopy = entry;
  v7 = +[PDSCDRegistration fetchRequest];
  v8 = [PDSCDRegistration uniquenessPredicateForEntry:entryCopy];

  [v7 setPredicate:v8];
  v9 = [contextCopy executeFetchRequest:v7 error:0];

  return v9;
}

- (void)_KVEntryForKey:(id)key withBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__PDSCDCacheContainer__KVEntryForKey_withBlock___block_invoke;
  v10[3] = &unk_2799F8860;
  v11 = keyCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = keyCopy;
  [(PDSCDCacheContainer *)self _syncBlockWithContext:v10];
}

void __48__PDSCDCacheContainer__KVEntryForKey_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PDSHeartbeatTracker;
  v5 = +[PDSCDKV fetchRequest];
  v6 = [PDSCDKV predicateForKey:*(a1 + 32)];
  [v5 setPredicate:v6];

  v27 = 0;
  v7 = [v3 executeFetchRequest:v5 error:&v27];
  v8 = v27;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (!v10)
  {

    v13 = 0;
    goto LABEL_14;
  }

  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = *v24;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v24 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v23 + 1) + 8 * i);
      if (v12)
      {
        [v3 deleteObject:v16];
        v13 = 1;
      }

      else
      {
        v12 = v16;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
  }

  while (v11);

  if (!v12)
  {
    v4 = PDSHeartbeatTracker;
LABEL_14:
    v12 = [&v4[9] insertIntoManagedObjectContext:v3];
    [v12 setKey:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
  if (v13)
  {
    v17 = 1;
  }

  else
  {
    v17 = [v12 hasChanges];
  }

  v18 = [v12 dataValue];
  if (v18 || ([v12 stringValue], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v21 = [v12 numValue];

    if (!v21)
    {
      [v3 deleteObject:v12];
    }
  }

  if (v17)
  {
    v22 = v8;
    [v3 save:&v22];
    v19 = v22;

    v8 = v19;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_syncBlockWithContext:(id)context
{
  contextCopy = context;
  container = [(PDSCDCacheContainer *)self container];
  newBackgroundContext = [container newBackgroundContext];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__PDSCDCacheContainer__syncBlockWithContext___block_invoke;
  v9[3] = &unk_2799F8888;
  v10 = newBackgroundContext;
  v11 = contextCopy;
  v7 = newBackgroundContext;
  v8 = contextCopy;
  [v7 performBlockAndWait:v9];
}

- (void)initWithContainingPath:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"containingPath" object:? file:? lineNumber:? description:?];
}

- (void)initWithContainingPath:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"containingPath.absoluteString.length > 0" object:? file:? lineNumber:? description:?];
}

- (void)_updateEntryState:forUser:clientID:withError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"state <= PDSEntryStateHeartbeat" object:? file:? lineNumber:? description:?];
}

- (void)_updateAllEntriesWithState:toState:withError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"state <= PDSEntryStateHeartbeat" object:? file:? lineNumber:? description:?];
}

- (void)_updateAllEntriesWithState:toState:withError:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"newState <= PDSEntryStateHeartbeat" object:? file:? lineNumber:? description:?];
}

@end