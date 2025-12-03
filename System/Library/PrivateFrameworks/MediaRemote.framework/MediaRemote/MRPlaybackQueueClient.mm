@interface MRPlaybackQueueClient
- (MRPlaybackQueueClient)initWithQueue:(id)queue;
- (id)debugDescription;
- (id)existingSubscriptionControllerForPlayerPath:(id)path;
- (id)subscriptionControllerForPlayerPath:(id)path;
- (void)_handleApplicationRemovedNotification:(id)notification;
- (void)_handleOriginRemovedNotification:(id)notification;
- (void)_handlePlayerPathRemovedNotification:(id)notification;
- (void)dealloc;
@end

@implementation MRPlaybackQueueClient

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MRPlaybackQueueClient;
  [(MRPlaybackQueueClient *)&v4 dealloc];
}

- (MRPlaybackQueueClient)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    [(MRPlaybackQueueClient *)a2 initWithQueue:?];
  }

  v14.receiver = self;
  v14.super_class = MRPlaybackQueueClient;
  v7 = [(MRPlaybackQueueClient *)&v14 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    controllers = v7->_controllers;
    v7->_controllers = v8;

    objc_storeStrong(&v7->_queue, queue);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__handlePlayerPathRemovedNotification_ name:@"kMRMediaRemoteNowPlayingPlayerDidUnregister" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel__handleApplicationRemovedNotification_ name:@"kMRMediaRemoteNowPlayingApplicationDidUnregister" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v7 selector:sel__handleOriginRemovedNotification_ name:@"kMRMediaRemoteOriginDidUnregisterNotification" object:0];
  }

  return v7;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  allValues = [(NSMutableDictionary *)self->_controllers allValues];
  v6 = MRCreateIndentedDebugDescriptionFromArray(allValues);
  v7 = [v3 initWithFormat:@"<%@:%p {\n %@ \n}", v4, self, v6];

  return v7;
}

- (id)subscriptionControllerForPlayerPath:(id)path
{
  pathCopy = path;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__38;
  v15 = __Block_byref_object_dispose__38;
  v16 = 0;
  if ([pathCopy isResolved])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__MRPlaybackQueueClient_subscriptionControllerForPlayerPath___block_invoke;
    block[3] = &unk_1E769BBB8;
    v10 = &v11;
    block[4] = self;
    v9 = pathCopy;
    dispatch_sync(queue, block);
  }

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __61__MRPlaybackQueueClient_subscriptionControllerForPlayerPath___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = [[MRPlaybackQueueSubscriptionController alloc] initWithPlayerPath:a1[5]];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = a1[5];
    v9 = *(*(a1[6] + 8) + 40);
    v10 = *(a1[4] + 8);

    [v10 setObject:v9 forKeyedSubscript:v8];
  }
}

- (id)existingSubscriptionControllerForPlayerPath:(id)path
{
  pathCopy = path;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__38;
  v15 = __Block_byref_object_dispose__38;
  v16 = 0;
  if ([pathCopy isResolved])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__MRPlaybackQueueClient_existingSubscriptionControllerForPlayerPath___block_invoke;
    block[3] = &unk_1E769BBB8;
    v10 = &v11;
    block[4] = self;
    v9 = pathCopy;
    dispatch_sync(queue, block);
  }

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __69__MRPlaybackQueueClient_existingSubscriptionControllerForPlayerPath___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_handlePlayerPathRemovedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v6 = MRGetPlayerPathFromUserInfo(userInfo, v5);

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__MRPlaybackQueueClient__handlePlayerPathRemovedNotification___block_invoke;
  v9[3] = &unk_1E769A4A0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(queue, v9);
}

- (void)_handleApplicationRemovedNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetOriginFromUserInfo(userInfo);

  userInfo2 = [notificationCopy userInfo];

  v8 = MRGetClientFromUserInfo(userInfo2);

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MRPlaybackQueueClient__handleApplicationRemovedNotification___block_invoke;
  block[3] = &unk_1E769BA00;
  block[4] = self;
  v13 = v6;
  v14 = v8;
  v10 = v8;
  v11 = v6;
  dispatch_sync(queue, block);
}

void __63__MRPlaybackQueueClient__handleApplicationRemovedNotification___block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1[4] + 8) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = a1[5];
        v9 = [v7 origin];
        LODWORD(v8) = [v8 isEqual:v9];

        v10 = a1[6];
        v11 = [v7 client];
        v12 = [v10 isEqual:v11];

        if (v8)
        {
          v13 = v12 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          [*(a1[4] + 8) setObject:0 forKeyedSubscript:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleOriginRemovedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = MRGetOriginFromUserInfo(userInfo);

  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__MRPlaybackQueueClient__handleOriginRemovedNotification___block_invoke;
  v8[3] = &unk_1E769A4A0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(queue, v8);
}

void __58__MRPlaybackQueueClient__handleOriginRemovedNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(*(a1 + 32) + 8) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 origin];
        LODWORD(v8) = [v8 isEqual:v9];

        if (v8)
        {
          [*(*(a1 + 32) + 8) setObject:0 forKeyedSubscript:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)initWithQueue:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRPlaybackQueueClient.m" lineNumber:374 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
}

@end