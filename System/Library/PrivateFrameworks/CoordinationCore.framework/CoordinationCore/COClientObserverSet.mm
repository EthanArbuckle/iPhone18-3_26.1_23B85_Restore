@interface COClientObserverSet
- (COClientObserverSet)init;
- (id)clientObservers;
- (id)clientObserversForNotificationName:(id)name;
- (id)clientObserversForXPCConnection:(id)connection;
- (void)_withLock:(id)lock;
- (void)addClientObserver:(id)observer forNotificationName:(id)name;
- (void)removeClientObserver:(id)observer forNotificationName:(id)name;
@end

@implementation COClientObserverSet

- (COClientObserverSet)init
{
  v8.receiver = self;
  v8.super_class = COClientObserverSet;
  v2 = [(COClientObserverSet *)&v8 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    observers = v2->_observers;
    v2->_observers = strongToStrongObjectsMapTable;

    v5 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    registrations = v2->_registrations;
    v2->_registrations = v5;
  }

  return v2;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)clientObservers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__COClientObserverSet_clientObservers__block_invoke;
  v8[3] = &unk_278E156B0;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(COClientObserverSet *)self _withLock:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __38__COClientObserverSet_clientObservers__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) observers];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [v2 objectForKey:*(*(&v10 + 1) + 8 * v6)];
        [v7 addObjectsFromArray:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)clientObserversForXPCConnection:(id)connection
{
  connectionCopy = connection;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__17;
  v15 = __Block_byref_object_dispose__17;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__COClientObserverSet_clientObserversForXPCConnection___block_invoke;
  v8[3] = &unk_278E15A18;
  v10 = &v11;
  v8[4] = self;
  v5 = connectionCopy;
  v9 = v5;
  [(COClientObserverSet *)self _withLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __55__COClientObserverSet_clientObserversForXPCConnection___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) observers];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)clientObserversForNotificationName:(id)name
{
  nameCopy = name;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__17;
  v15 = __Block_byref_object_dispose__17;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__COClientObserverSet_clientObserversForNotificationName___block_invoke;
  v8[3] = &unk_278E15A18;
  v10 = &v11;
  v8[4] = self;
  v5 = nameCopy;
  v9 = v5;
  [(COClientObserverSet *)self _withLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __58__COClientObserverSet_clientObserversForNotificationName___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) registrations];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addClientObserver:(id)observer forNotificationName:(id)name
{
  observerCopy = observer;
  nameCopy = name;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__COClientObserverSet_addClientObserver_forNotificationName___block_invoke;
  v10[3] = &unk_278E15728;
  v10[4] = self;
  v11 = nameCopy;
  v12 = observerCopy;
  v8 = observerCopy;
  v9 = nameCopy;
  [(COClientObserverSet *)self _withLock:v10];
}

void __61__COClientObserverSet_addClientObserver_forNotificationName___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) registrations];
  v2 = [v8 objectForKey:*(a1 + 40)];
  if (([v2 containsObject:*(a1 + 48)] & 1) == 0)
  {
    if (v2)
    {
      v3 = [v2 arrayByAddingObject:*(a1 + 48)];
    }

    else
    {
      v3 = [MEMORY[0x277CBEA60] arrayWithObject:*(a1 + 48)];
    }

    v4 = [v8 mutableCopy];
    [v4 setObject:v3 forKey:*(a1 + 40)];
    [*(a1 + 32) setRegistrations:v4];

    v5 = [*(a1 + 32) observers];
    v6 = [*(a1 + 48) connection];
    v2 = [v5 objectForKey:v6];

    if (([v2 containsObject:*(a1 + 48)] & 1) == 0)
    {
      if (v2)
      {
        v7 = [v2 arrayByAddingObject:*(a1 + 48)];

        v2 = v7;
      }

      else
      {
        v2 = [MEMORY[0x277CBEA60] arrayWithObject:*(a1 + 48)];
      }

      [v5 setObject:v2 forKey:v6];
    }
  }
}

- (void)removeClientObserver:(id)observer forNotificationName:(id)name
{
  observerCopy = observer;
  nameCopy = name;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__COClientObserverSet_removeClientObserver_forNotificationName___block_invoke;
  v10[3] = &unk_278E15728;
  v10[4] = self;
  v11 = observerCopy;
  v12 = nameCopy;
  v8 = nameCopy;
  v9 = observerCopy;
  [(COClientObserverSet *)self _withLock:v10];
}

void __64__COClientObserverSet_removeClientObserver_forNotificationName___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) registrations];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [v2 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v4)
  {

LABEL_17:
    v17 = [*(a1 + 32) observers];
    v18 = [*(a1 + 40) connection];
    v19 = [v17 objectForKey:v18];
    v20 = [v19 mutableCopy];
    [v20 removeObject:*(a1 + 40)];
    if ([v20 count])
    {
      [v17 setObject:v20 forKey:v18];
    }

    else
    {
      [v17 removeObjectForKey:v18];
    }

    goto LABEL_21;
  }

  v5 = v4;
  v22 = 0;
  v6 = *v24;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v24 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v23 + 1) + 8 * i);
      v9 = [v2 objectForKey:v8];
      v10 = [v9 indexOfObject:*(a1 + 40)];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = v10;
        v12 = *(a1 + 48);
        if (v12 && ![v12 isEqualToString:v8])
        {
          v22 = 1;
        }

        else
        {
          v13 = v3;
          v14 = [v9 mutableCopy];
          [v14 removeObjectAtIndex:v11];
          v15 = [v2 mutableCopy];
          [v15 setObject:v14 forKey:v8];
          v16 = v15;

          [*(a1 + 32) setRegistrations:v16];
          v3 = v13;
          v2 = v16;
        }
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v5);

  if ((v22 & 1) == 0 || !*(a1 + 48))
  {
    goto LABEL_17;
  }

LABEL_21:

  v21 = *MEMORY[0x277D85DE8];
}

@end