@interface ML3LibraryNotificationManager
- (BOOL)observerShouldForwardDistributedNotification:(id)a3;
- (ML3LibraryNotificationManager)initWithLibrary:(id)a3 distributedAndLocalNames:(id)a4;
- (ML3MusicLibrary)library;
- (id)_observerForDistributedName:(id)a3;
- (id)_observerForLocalName:(id)a3;
- (void)_postEnqueuedDistributedNotifications;
- (void)_postEnqueuedLocalNotifications;
- (void)addObserverForDistributedName:(id)a3 localName:(id)a4;
- (void)enqueueDistributedNotificationNamed:(id)a3;
- (void)enqueueLocalNotification:(id)a3;
- (void)enqueueLocalNotificationNamed:(id)a3;
- (void)removeObserverWithDistributedName:(id)a3;
- (void)removeObserverWithLocalName:(id)a3;
@end

@implementation ML3LibraryNotificationManager

- (ML3MusicLibrary)library
{
  WeakRetained = objc_loadWeakRetained(&self->_library);

  return WeakRetained;
}

- (void)_postEnqueuedDistributedNotifications
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__ML3LibraryNotificationManager__postEnqueuedDistributedNotifications__block_invoke;
  block[3] = &unk_278765FB8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __70__ML3LibraryNotificationManager__postEnqueuedDistributedNotifications__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__17933;
  v25 = __Block_byref_object_dispose__17934;
  v26 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__ML3LibraryNotificationManager__postEnqueuedDistributedNotifications__block_invoke_2;
  block[3] = &unk_278766080;
  block[4] = v2;
  block[5] = &v21;
  dispatch_sync(v3, block);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v22[5];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [*(a1 + 32) _observerForDistributedName:v7];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 notifyToken];
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
          v12 = [WeakRetained databasePath];
          v13 = [v12 hash];

          notify_set_state(v10, v13);
        }

        v14 = v7;
        notify_post([v7 UTF8String]);
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v21, 8);
}

uint64_t __70__ML3LibraryNotificationManager__postEnqueuedDistributedNotifications__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) array];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1 + 32) + 32);

  return [v6 removeAllObjects];
}

- (void)_postEnqueuedLocalNotifications
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ML3LibraryNotificationManager__postEnqueuedLocalNotifications__block_invoke;
  block[3] = &unk_278765FB8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__ML3LibraryNotificationManager__postEnqueuedLocalNotifications__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__17933;
  v17 = __Block_byref_object_dispose__17934;
  v18 = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ML3LibraryNotificationManager__postEnqueuedLocalNotifications__block_invoke_22;
  block[3] = &unk_278766080;
  block[4] = v1;
  block[5] = &v13;
  dispatch_sync(v2, block);
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = v14[5];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v19 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [v3 postNotification:{*(*(&v8 + 1) + 8 * v7++), v8}];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v19 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __64__ML3LibraryNotificationManager__postEnqueuedLocalNotifications__block_invoke_22(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) array];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1 + 32) + 24);

  return [v6 removeAllObjects];
}

- (id)_observerForDistributedName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_notificationObservers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 distributedName];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_observerForLocalName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_notificationObservers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 localName];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)observerShouldForwardDistributedNotification:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 localName];
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_library);
    v7 = [WeakRetained databasePath];
    v8 = [v7 hash];

    v13 = 0;
    notify_get_state([v4 notifyToken], &v13);
    if (v13 == v8)
    {
      v14 = @"isSourceExternal";
      v15[0] = MEMORY[0x277CBEC38];
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v10 = objc_loadWeakRetained(&self->_library);
      v11 = [objc_alloc(MEMORY[0x277CCAB88]) initWithName:v5 object:v10 userInfo:v9];
      [(ML3LibraryNotificationManager *)self enqueueLocalNotification:v11];
    }
  }

  return 0;
}

- (void)enqueueDistributedNotificationNamed:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__ML3LibraryNotificationManager_enqueueDistributedNotificationNamed___block_invoke;
  v7[3] = &unk_2787660F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

uint64_t __69__ML3LibraryNotificationManager_enqueueDistributedNotificationNamed___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
    v3 = *(a1 + 32);

    return [v3 _postEnqueuedDistributedNotifications];
  }

  return result;
}

- (void)enqueueLocalNotificationNamed:(id)a3
{
  v4 = MEMORY[0x277CCAB88];
  v5 = a3;
  v6 = [v4 alloc];
  WeakRetained = objc_loadWeakRetained(&self->_library);
  v8 = [v6 initWithName:v5 object:WeakRetained userInfo:0];

  [(ML3LibraryNotificationManager *)self enqueueLocalNotification:v8];
}

- (void)enqueueLocalNotification:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ML3LibraryNotificationManager_enqueueLocalNotification___block_invoke;
  v7[3] = &unk_2787660F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

void __58__ML3LibraryNotificationManager_enqueueLocalNotification___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__ML3LibraryNotificationManager_enqueueLocalNotification___block_invoke_2;
  v3[3] = &unk_278763D30;
  v4 = *(a1 + 40);
  if ([v2 indexOfObjectPassingTest:v3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
    [*(a1 + 32) _postEnqueuedLocalNotifications];
  }
}

uint64_t __58__ML3LibraryNotificationManager_enqueueLocalNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [*(a1 + 32) name];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)removeObserverWithLocalName:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_notificationObservers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      v11 = [v10 localName];
      v12 = [v11 isEqualToString:v4];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v13 = v10;

    if (!v13)
    {
      goto LABEL_13;
    }

    [(NSMutableArray *)self->_notificationObservers removeObject:v13];
    v5 = v13;
  }

LABEL_12:

LABEL_13:
}

- (void)removeObserverWithDistributedName:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_notificationObservers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      v11 = [v10 distributedName];
      v12 = [v11 isEqualToString:v4];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v13 = v10;

    if (!v13)
    {
      goto LABEL_13;
    }

    [(NSMutableArray *)self->_notificationObservers removeObject:v13];
    v5 = v13;
  }

LABEL_12:

LABEL_13:
}

- (void)addObserverForDistributedName:(id)a3 localName:(id)a4
{
  v6 = MEMORY[0x277D27F00];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithDistributedName:v8 localName:v7 queue:0];

  [(NSMutableArray *)self->_notificationObservers addObject:v9];
}

- (ML3LibraryNotificationManager)initWithLibrary:(id)a3 distributedAndLocalNames:(id)a4
{
  v7 = a3;
  v8 = a4;
  v26.receiver = self;
  v26.super_class = ML3LibraryNotificationManager;
  v9 = [(ML3LibraryNotificationManager *)&v26 init];
  if (v9)
  {
    if (!v7)
    {
      v23 = [MEMORY[0x277CCA890] currentHandler];
      [v23 handleFailureInMethod:a2 object:v9 file:@"ML3LibraryNotificationManager.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"library"}];
    }

    objc_storeWeak(&v9->_library, v7);
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"com.apple.MusicLibrary.%@", v12];

    v14 = dispatch_queue_create([v13 UTF8String], 0);
    serialQueue = v9->_serialQueue;
    v9->_serialQueue = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    notificationObservers = v9->_notificationObservers;
    v9->_notificationObservers = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB40]);
    queuedLocalNotifications = v9->_queuedLocalNotifications;
    v9->_queuedLocalNotifications = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB40]);
    queuedDistributedNotificationNames = v9->_queuedDistributedNotificationNames;
    v9->_queuedDistributedNotificationNames = v20;

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __74__ML3LibraryNotificationManager_initWithLibrary_distributedAndLocalNames___block_invoke;
    v24[3] = &unk_2787655E8;
    v25 = v9;
    [v8 enumerateKeysAndObjectsUsingBlock:v24];
  }

  return v9;
}

void __74__ML3LibraryNotificationManager_initWithLibrary_distributedAndLocalNames___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D27F00];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithDistributedName:v7 localName:v6 queue:0];

  [v8 setDelegate:*(a1 + 32)];
  [*(*(a1 + 32) + 16) addObject:v8];
}

@end