@interface PDSEntryStore
- (BOOL)_permitTransitionFromState:(unsigned __int8)state toState:(unsigned __int8)toState;
- (BOOL)deleteEntry:(id)entry withError:(id *)error;
- (BOOL)hasActiveEntries;
- (BOOL)hasPendingEntries;
- (BOOL)storeEntries:(id)entries deleteEntries:(id)deleteEntries withError:(id *)error;
- (BOOL)storeEntry:(id)entry withError:(id *)error;
- (PDSEntryStore)initWithCache:(id)cache;
- (PDSEntryStoreDelegate)delegate;
- (id)activeUsers;
- (id)activeUsersWithClientID:(id)d;
- (id)entries;
- (id)entriesForUser:(id)user;
- (id)entriesForUser:(id)user withClientID:(id)d;
- (id)entriesWithClientID:(id)d;
- (id)users;
- (id)usersWithClientID:(id)d;
@end

@implementation PDSEntryStore

- (PDSEntryStore)initWithCache:(id)cache
{
  cacheCopy = cache;
  if (!cacheCopy)
  {
    [(PDSEntryStore *)a2 initWithCache:?];
  }

  v10.receiver = self;
  v10.super_class = PDSEntryStore;
  v7 = [(PDSEntryStore *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_cache, cache);
  }

  return v8;
}

- (BOOL)storeEntry:(id)entry withError:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  cache = [(PDSEntryStore *)self cache];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__PDSEntryStore_storeEntry_withError___block_invoke;
  v15[3] = &unk_2799F8550;
  v15[4] = self;
  v8 = [cache storeEntry:entryCopy transitionBlock:v15 withError:error];

  if (v8)
  {
    delegate = [(PDSEntryStore *)self delegate];
    registration = [entryCopy registration];
    topicString = [registration topicString];
    v16[0] = topicString;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [delegate entryStore:self didUpdatePendingTopics:v12 forceImmediateUpdate:0];
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

- (BOOL)deleteEntry:(id)entry withError:(id *)error
{
  entryCopy = entry;
  cache = [(PDSEntryStore *)self cache];
  LOBYTE(error) = [cache deleteEntry:entryCopy withError:error];

  return error;
}

- (BOOL)storeEntries:(id)entries deleteEntries:(id)deleteEntries withError:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  deleteEntriesCopy = deleteEntries;
  cache = [(PDSEntryStore *)self cache];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __54__PDSEntryStore_storeEntries_deleteEntries_withError___block_invoke;
  v40[3] = &unk_2799F8550;
  v40[4] = self;
  v11 = [cache storeEntries:entriesCopy transitionBlock:v40 deleteEntries:deleteEntriesCopy withError:error];

  if (v11)
  {
    v31 = v11;
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v13 = entriesCopy;
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

          registration = [*(*(&v36 + 1) + 8 * i) registration];
          topicString = [registration topicString];
          [v12 addObject:topicString];
        }

        v15 = [v13 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v15);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = deleteEntriesCopy;
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

          registration2 = [*(*(&v32 + 1) + 8 * j) registration];
          topicString2 = [registration2 topicString];
          [v12 addObject:topicString2];
        }

        v22 = [v20 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v22);
    }

    delegate = [(PDSEntryStore *)self delegate];
    v28 = [v12 copy];
    [delegate entryStore:self didUpdatePendingTopics:v28 forceImmediateUpdate:0];

    LOBYTE(v11) = v31;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)hasPendingEntries
{
  cache = [(PDSEntryStore *)self cache];
  hasPendingEntries = [cache hasPendingEntries];

  return hasPendingEntries;
}

- (BOOL)hasActiveEntries
{
  cache = [(PDSEntryStore *)self cache];
  hasActiveEntries = [cache hasActiveEntries];

  return hasActiveEntries;
}

- (id)entries
{
  cache = [(PDSEntryStore *)self cache];
  loadAllEntries = [cache loadAllEntries];

  return loadAllEntries;
}

- (id)entriesForUser:(id)user
{
  userCopy = user;
  cache = [(PDSEntryStore *)self cache];
  v6 = [cache loadAllEntriesUser:userCopy];

  return v6;
}

- (id)entriesForUser:(id)user withClientID:(id)d
{
  dCopy = d;
  userCopy = user;
  cache = [(PDSEntryStore *)self cache];
  v9 = [cache loadAllEntriesUser:userCopy withClientID:dCopy];

  return v9;
}

- (id)entriesWithClientID:(id)d
{
  dCopy = d;
  cache = [(PDSEntryStore *)self cache];
  v6 = [cache loadAllEntriesForClientID:dCopy];

  return v6;
}

- (id)users
{
  cache = [(PDSEntryStore *)self cache];
  loadAllUsers = [cache loadAllUsers];

  return loadAllUsers;
}

- (id)activeUsers
{
  cache = [(PDSEntryStore *)self cache];
  loadAllActiveUsers = [cache loadAllActiveUsers];

  return loadAllActiveUsers;
}

- (id)usersWithClientID:(id)d
{
  dCopy = d;
  cache = [(PDSEntryStore *)self cache];
  v6 = [cache loadAllUsersForClientID:dCopy];

  return v6;
}

- (id)activeUsersWithClientID:(id)d
{
  dCopy = d;
  cache = [(PDSEntryStore *)self cache];
  v6 = [cache loadAllActiveUsersForClientID:dCopy];

  return v6;
}

- (BOOL)_permitTransitionFromState:(unsigned __int8)state toState:(unsigned __int8)toState
{
  if (state > 1)
  {
    if (state == 2)
    {
      if (toState < 4u)
      {
        toStateCopy3 = toState;
        v5 = 6;
        goto LABEL_13;
      }
    }

    else if (state == 3 && toState < 4u)
    {
      toStateCopy3 = toState;
      v5 = 12;
      goto LABEL_13;
    }

LABEL_14:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if (state)
  {
    if (state == 1 && toState < 4u)
    {
      toStateCopy3 = toState;
      v5 = 14;
LABEL_13:
      v6 = v5 >> toStateCopy3;
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