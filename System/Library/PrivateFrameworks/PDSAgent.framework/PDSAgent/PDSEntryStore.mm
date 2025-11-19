@interface PDSEntryStore
- (BOOL)_permitTransitionFromState:(unsigned __int8)a3 toState:(unsigned __int8)a4;
- (BOOL)deleteEntry:(id)a3 withError:(id *)a4;
- (BOOL)hasActiveEntries;
- (BOOL)hasPendingEntries;
- (BOOL)storeEntries:(id)a3 deleteEntries:(id)a4 withError:(id *)a5;
- (BOOL)storeEntry:(id)a3 withError:(id *)a4;
- (PDSEntryStore)initWithCache:(id)a3;
- (PDSEntryStoreDelegate)delegate;
- (id)activeUsers;
- (id)activeUsersWithClientID:(id)a3;
- (id)entries;
- (id)entriesForUser:(id)a3;
- (id)entriesForUser:(id)a3 withClientID:(id)a4;
- (id)entriesWithClientID:(id)a3;
- (id)users;
- (id)usersWithClientID:(id)a3;
@end

@implementation PDSEntryStore

- (PDSEntryStore)initWithCache:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(PDSEntryStore *)a2 initWithCache:?];
  }

  v10.receiver = self;
  v10.super_class = PDSEntryStore;
  v7 = [(PDSEntryStore *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_cache, a3);
  }

  return v8;
}

- (BOOL)storeEntry:(id)a3 withError:(id *)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(PDSEntryStore *)self cache];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__PDSEntryStore_storeEntry_withError___block_invoke;
  v15[3] = &unk_2799F8550;
  v15[4] = self;
  v8 = [v7 storeEntry:v6 transitionBlock:v15 withError:a4];

  if (v8)
  {
    v9 = [(PDSEntryStore *)self delegate];
    v10 = [v6 registration];
    v11 = [v10 topicString];
    v16[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [v9 entryStore:self didUpdatePendingTopics:v12 forceImmediateUpdate:0];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

id __61__PDSEntryStore_updateEntryState_forUser_clientID_withError___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 registration];
  v3 = [v2 topicString];

  return v3;
}

id __61__PDSEntryStore_updateAllEntriesWithState_toState_withError___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 registration];
  v3 = [v2 topicString];

  return v3;
}

- (BOOL)deleteEntry:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(PDSEntryStore *)self cache];
  LOBYTE(a4) = [v7 deleteEntry:v6 withError:a4];

  return a4;
}

- (BOOL)storeEntries:(id)a3 deleteEntries:(id)a4 withError:(id *)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(PDSEntryStore *)self cache];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __54__PDSEntryStore_storeEntries_deleteEntries_withError___block_invoke;
  v40[3] = &unk_2799F8550;
  v40[4] = self;
  v11 = [v10 storeEntries:v8 transitionBlock:v40 deleteEntries:v9 withError:a5];

  if (v11)
  {
    v31 = v11;
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v36 + 1) + 8 * i) registration];
          v19 = [v18 topicString];
          [v12 addObject:v19];
        }

        v15 = [v13 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v15);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = v9;
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v33;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v32 + 1) + 8 * j) registration];
          v26 = [v25 topicString];
          [v12 addObject:v26];
        }

        v22 = [v20 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v22);
    }

    v27 = [(PDSEntryStore *)self delegate];
    v28 = [v12 copy];
    [v27 entryStore:self didUpdatePendingTopics:v28 forceImmediateUpdate:0];

    LOBYTE(v11) = v31;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)hasPendingEntries
{
  v2 = [(PDSEntryStore *)self cache];
  v3 = [v2 hasPendingEntries];

  return v3;
}

- (BOOL)hasActiveEntries
{
  v2 = [(PDSEntryStore *)self cache];
  v3 = [v2 hasActiveEntries];

  return v3;
}

- (id)entries
{
  v2 = [(PDSEntryStore *)self cache];
  v3 = [v2 loadAllEntries];

  return v3;
}

- (id)entriesForUser:(id)a3
{
  v4 = a3;
  v5 = [(PDSEntryStore *)self cache];
  v6 = [v5 loadAllEntriesUser:v4];

  return v6;
}

- (id)entriesForUser:(id)a3 withClientID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PDSEntryStore *)self cache];
  v9 = [v8 loadAllEntriesUser:v7 withClientID:v6];

  return v9;
}

- (id)entriesWithClientID:(id)a3
{
  v4 = a3;
  v5 = [(PDSEntryStore *)self cache];
  v6 = [v5 loadAllEntriesForClientID:v4];

  return v6;
}

- (id)users
{
  v2 = [(PDSEntryStore *)self cache];
  v3 = [v2 loadAllUsers];

  return v3;
}

- (id)activeUsers
{
  v2 = [(PDSEntryStore *)self cache];
  v3 = [v2 loadAllActiveUsers];

  return v3;
}

- (id)usersWithClientID:(id)a3
{
  v4 = a3;
  v5 = [(PDSEntryStore *)self cache];
  v6 = [v5 loadAllUsersForClientID:v4];

  return v6;
}

- (id)activeUsersWithClientID:(id)a3
{
  v4 = a3;
  v5 = [(PDSEntryStore *)self cache];
  v6 = [v5 loadAllActiveUsersForClientID:v4];

  return v6;
}

- (BOOL)_permitTransitionFromState:(unsigned __int8)a3 toState:(unsigned __int8)a4
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (a4 < 4u)
      {
        v4 = a4;
        v5 = 6;
        goto LABEL_13;
      }
    }

    else if (a3 == 3 && a4 < 4u)
    {
      v4 = a4;
      v5 = 12;
      goto LABEL_13;
    }

LABEL_14:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if (a3)
  {
    if (a3 == 1 && a4 < 4u)
    {
      v4 = a4;
      v5 = 14;
LABEL_13:
      v6 = v5 >> v4;
      return v6 & 1;
    }

    goto LABEL_14;
  }

  LOBYTE(v6) = 1;
  return v6 & 1;
}

- (PDSEntryStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithCache:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PDSEntryStore.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"cache"}];
}

@end