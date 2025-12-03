@interface BMBiomeScheduler
- (BMBiomeScheduler)initWithIdentifier:(id)identifier targetQueue:(id)queue;
- (BMBiomeScheduler)initWithIdentifier:(id)identifier targetQueue:(id)queue client:(id)client;
- (BMBiomeScheduler)initWithIdentifier:(id)identifier targetQueue:(id)queue client:(id)client waking:(BOOL)waking;
- (id)_publisherWithStreamIdentifier:(id)identifier storeEvent:(id)event;
- (id)_updatedPublisherForSubscription:(id)subscription;
- (void)_persistBookmarkForPublisher:(id)publisher;
- (void)cancel;
- (void)subscribeWithDSLGraph:(id)graph forSubscriber:(id)subscriber;
- (void)subscribeWithDSLGraph:(id)graph publisherBlock:(id)block;
@end

@implementation BMBiomeScheduler

- (BMBiomeScheduler)initWithIdentifier:(id)identifier targetQueue:(id)queue
{
  queueCopy = queue;
  identifierCopy = identifier;
  v8 = +[BMComputePublisherClient shared];
  v9 = [(BMBiomeScheduler *)self initWithIdentifier:identifierCopy targetQueue:queueCopy client:v8];

  return v9;
}

- (BMBiomeScheduler)initWithIdentifier:(id)identifier targetQueue:(id)queue client:(id)client
{
  v26[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queueCopy = queue;
  clientCopy = client;
  current = [MEMORY[0x1E698E9D8] current];
  isManagedByLaunchd = [current isManagedByLaunchd];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleURL = [mainBundle bundleURL];
  v26[0] = *MEMORY[0x1E695DB70];
  v14 = v26[0];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v25 = 0;
  v16 = [bundleURL resourceValuesForKeys:v15 error:&v25];
  v17 = v25;

  v18 = [v16 objectForKeyedSubscript:v14];
  v19 = v18;
  if (v17)
  {
    bundleIdentifier = __biome_log_for_category();
    if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_ERROR))
    {
      [BMBiomeScheduler initWithIdentifier:targetQueue:client:];
    }

    goto LABEL_6;
  }

  if ([v18 BOOLValue])
  {
    bundleIdentifier = [mainBundle bundleIdentifier];
    isManagedByLaunchd = [bundleIdentifier isEqualToString:@"com.apple.springboard"];
LABEL_6:
  }

  v21 = [(BMBiomeScheduler *)self initWithIdentifier:identifierCopy targetQueue:queueCopy client:clientCopy waking:isManagedByLaunchd, self];

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BMBiomeScheduler)initWithIdentifier:(id)identifier targetQueue:(id)queue client:(id)client waking:(BOOL)waking
{
  identifierCopy = identifier;
  queueCopy = queue;
  clientCopy = client;
  v17.receiver = self;
  v17.super_class = BMBiomeScheduler;
  v13 = [(BMBiomeScheduler *)&v17 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    objc_storeStrong(&v13->_queue, queue);
    objc_storeStrong(&v13->_client, client);
    v13->_waking = waking;
    v13->_lock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

- (void)subscribeWithDSLGraph:(id)graph forSubscriber:(id)subscriber
{
  v25 = *MEMORY[0x1E69E9840];
  graphCopy = graph;
  subscriberCopy = subscriber;
  [graphCopy streamPublishers];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v23 = 0u;
  v9 = [(_BMBiomeXPCSchedulerInner *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 streamType] != 1 && objc_msgSend(v13, "streamType") != 2)
        {
          v18 = v8;
          goto LABEL_14;
        }
      }

      v10 = [(_BMBiomeXPCSchedulerInner *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = [_BMBiomeXPCSchedulerInner alloc];
  identifier = [(BMBiomeScheduler *)self identifier];
  client = [(BMBiomeScheduler *)self client];
  queue = [(BMBiomeScheduler *)self queue];
  v18 = [(_BMBiomeXPCSchedulerInner *)v14 initWithDownstream:subscriberCopy identifier:identifier graph:graphCopy client:client targetQueue:queue waking:[(BMBiomeScheduler *)self waking]];

  if (self->_bookmarkStorage)
  {
    [(_BMBiomeXPCSchedulerInner *)v18 setBookmarkStorage:?];
  }

  [subscriberCopy receiveSubscription:{v18, v20}];
LABEL_14:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)subscribeWithDSLGraph:(id)graph publisherBlock:(id)block
{
  v37 = *MEMORY[0x1E69E9840];
  graphCopy = graph;
  blockCopy = block;
  [graphCopy streamPublishers];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v9 = v33 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = *v33;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        if ([v13 streamType] != 1 && objc_msgSend(v13, "streamType") != 2)
        {
          v26 = __biome_log_for_category();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [BMBiomeScheduler subscribeWithDSLGraph:v13 publisherBlock:v26];
          }

          goto LABEL_18;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__BMBiomeScheduler_subscribeWithDSLGraph_publisherBlock___block_invoke;
  aBlock[3] = &unk_1E6E54448;
  objc_copyWeak(&v30, &location);
  v29 = blockCopy;
  v14 = _Block_copy(aBlock);
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_graph, graph);
  if (!self->_bookmarkStorage)
  {
    v15 = +[BMComputePublisherStorage bookmarkStorageForCurrentProcess];
    bookmarkStorage = self->_bookmarkStorage;
    self->_bookmarkStorage = v15;
  }

  current = [MEMORY[0x1E698E9D8] current];
  identifier = [current identifier];

  if (![(BMBiomeScheduler *)self waking])
  {
    v19 = self->_bookmarkStorage;
    identifier2 = [(BMBiomeScheduler *)self identifier];
    [(BMComputePublisherStorage *)v19 removeBookmarkFileForSubscriptionWithIdentifier:identifier2 client:identifier];
  }

  v21 = [BMComputeSubscription alloc];
  identifier3 = [(BMBiomeScheduler *)self identifier];
  v23 = [(BMComputeSubscription *)v21 initWithIdentifier:identifier3 client:identifier waking:[(BMBiomeScheduler *)self waking] DSLGraph:graphCopy block:v14];

  identifier4 = [(BMComputeSubscription *)v23 identifier];
  [(BMBiomeScheduler *)self setSubscriptionIdentifier:identifier4];

  os_unfair_lock_unlock(&self->_lock);
  client = [(BMBiomeScheduler *)self client];
  [client subscribe:v23];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
LABEL_18:

  v27 = *MEMORY[0x1E69E9840];
}

void __57__BMBiomeScheduler_subscribeWithDSLGraph_publisherBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = __biome_log_for_category();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if (v8 && v9)
    {
      if (v12)
      {
        *buf = 138412802;
        v27 = v7;
        v28 = 2112;
        v29 = v9;
        v30 = 2112;
        v31 = v8;
        _os_log_impl(&dword_1848EE000, v11, OS_LOG_TYPE_INFO, "BMBiomeScheduler received callback from subscription %@, publishing event %@ for stream %@", buf, 0x20u);
      }

      v13 = [WeakRetained queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__BMBiomeScheduler_subscribeWithDSLGraph_publisherBlock___block_invoke_161;
      block[3] = &unk_1E6E543F8;
      block[4] = WeakRetained;
      v14 = &v22;
      v22 = v7;
      v15 = &v23;
      v23 = v9;
      v24 = v8;
      v25 = *(a1 + 32);
      dispatch_async(v13, block);

      v16 = v24;
    }

    else
    {
      if (v12)
      {
        *buf = 138412290;
        v27 = v7;
        _os_log_impl(&dword_1848EE000, v11, OS_LOG_TYPE_INFO, "BMBiomeScheduler received callback from subscription %@, reading bookmark and subscribing to DSL graph publisher", buf, 0xCu);
      }

      v16 = [WeakRetained queue];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __57__BMBiomeScheduler_subscribeWithDSLGraph_publisherBlock___block_invoke_162;
      v18[3] = &unk_1E6E54420;
      v18[4] = WeakRetained;
      v14 = &v19;
      v19 = v7;
      v15 = &v20;
      v20 = *(a1 + 32);
      dispatch_async(v16, v18);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __57__BMBiomeScheduler_subscribeWithDSLGraph_publisherBlock___block_invoke_161(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 20));
  v2 = MEMORY[0x1E695DF00];
  [*(a1 + 48) timestamp];
  v3 = [v2 dateWithTimeIntervalSinceReferenceDate:?];
  [*(a1 + 40) setInitialBookmarkTimestamp:v3];

  v5 = [*(a1 + 32) _publisherWithStreamIdentifier:*(a1 + 56) storeEvent:*(a1 + 48)];
  os_unfair_lock_unlock((*(a1 + 32) + 20));
  v4 = v5;
  if (v5)
  {
    (*(*(a1 + 64) + 16))();
    v4 = v5;
  }
}

void __57__BMBiomeScheduler_subscribeWithDSLGraph_publisherBlock___block_invoke_162(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 20));
  v2 = [*(a1 + 32) _updatedPublisherForSubscription:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 20));
  if (v2)
  {
    (*(*(a1 + 48) + 16))();
  }

  os_unfair_lock_lock((*(a1 + 32) + 20));
  [*(a1 + 32) _persistBookmarkForPublisher:v2];
  os_unfair_lock_unlock((*(a1 + 32) + 20));
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  subscriptionIdentifier = [(BMBiomeScheduler *)self subscriptionIdentifier];
  bpsPublisher = [(BMBiomeScheduler *)self bpsPublisher];
  [(BMBiomeScheduler *)self setSubscriptionIdentifier:0];
  [(BMBiomeScheduler *)self setBpsPublisher:0];
  current = [MEMORY[0x1E698E9D8] current];
  identifier = [current identifier];

  [(BMComputePublisherStorage *)self->_bookmarkStorage removeBookmarkFileForSubscriptionWithIdentifier:subscriptionIdentifier client:identifier];
  os_unfair_lock_unlock(&self->_lock);
  if (subscriptionIdentifier)
  {
    client = [(BMBiomeScheduler *)self client];
    [client unsubscribeWithIdentifier:subscriptionIdentifier];
  }

  if (bpsPublisher)
  {
    [bpsPublisher reset];
  }

  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1848EE000, v8, OS_LOG_TYPE_DEFAULT, "BMBiomeScheduler client invoked cancel, unsubscribing", v9, 2u);
  }
}

- (id)_publisherWithStreamIdentifier:(id)identifier storeEvent:(id)event
{
  v43 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  eventCopy = event;
  os_unfair_lock_assert_owner(&self->_lock);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  selfCopy = self;
  graph = [(BMBiomeScheduler *)self graph];
  streamPublishers = [graph streamPublishers];

  v10 = [streamPublishers countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(streamPublishers);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        identifier = [v14 identifier];
        v16 = [identifier isEqualToString:identifierCopy];

        if (v16)
        {
          v41 = eventCopy;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
          [v14 setBackingEvents:v17];
        }
      }

      v11 = [streamPublishers countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v11);
  }

  graph2 = [(BMBiomeScheduler *)selfCopy graph];
  bpsPublisher = [graph2 bpsPublisher];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  graph3 = [(BMBiomeScheduler *)selfCopy graph];
  streamPublishers2 = [graph3 streamPublishers];

  v22 = [streamPublishers2 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(streamPublishers2);
        }

        v26 = *(*(&v32 + 1) + 8 * j);
        identifier2 = [v26 identifier];
        v28 = [identifier2 isEqualToString:identifierCopy];

        if (v28)
        {
          [v26 setBackingEvents:0];
        }
      }

      v23 = [streamPublishers2 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v23);
  }

  v29 = *MEMORY[0x1E69E9840];

  return bpsPublisher;
}

- (id)_updatedPublisherForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  os_unfair_lock_assert_owner(&self->_lock);
  bpsPublisher = [(BMBiomeScheduler *)self bpsPublisher];

  if (!bpsPublisher)
  {
    graph = [(BMBiomeScheduler *)self graph];
    bpsPublisher2 = [graph bpsPublisher];

    bookmarkStorage = self->_bookmarkStorage;
    v28 = 0;
    v9 = [subscriptionCopy fetchBookmarkFromStorage:bookmarkStorage error:&v28];
    v10 = v28;
    v11 = v10;
    if (v9 && !v10)
    {
      v12 = [bpsPublisher2 validateBookmarkNode:v9];
      if (v12)
      {
        current = [MEMORY[0x1E698E9D8] current];
        identifier = [current identifier];

        v15 = self->_bookmarkStorage;
        identifier2 = [subscriptionCopy identifier];
        [(BMComputePublisherStorage *)v15 removeBookmarkFileForSubscriptionWithIdentifier:identifier2 client:identifier];

        v17 = __biome_log_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [BMBiomeScheduler _updatedPublisherForSubscription:];
        }

        v18 = self->_bookmarkStorage;
        v27 = 0;
        v19 = [subscriptionCopy fetchBookmarkFromStorage:v18 error:&v27];
        v11 = v27;

        v9 = v19;
      }

      else
      {
        v11 = 0;
      }
    }

    if (v11)
    {
      v20 = __biome_log_for_category();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [_BMBiomeXPCSchedulerInner switchToUpdatedPublisher];
      }
    }

    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [_BMBiomeXPCSchedulerInner switchToUpdatedPublisher];
    }

    [bpsPublisher2 applyBookmarkNode:v9];
    v22 = [bpsPublisher2 startWithSubscriber:0];
    if (v22)
    {
      v23 = __biome_log_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [BMBiomeScheduler _updatedPublisherForSubscription:];
      }
    }

    else
    {
      [(BMBiomeScheduler *)self setBpsPublisher:bpsPublisher2];
      v23 = __biome_log_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [BMBiomeScheduler _updatedPublisherForSubscription:v23];
      }
    }
  }

  v24 = __biome_log_for_category();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [BMBiomeScheduler _updatedPublisherForSubscription:v24];
  }

  bpsPublisher3 = [(BMBiomeScheduler *)self bpsPublisher];

  return bpsPublisher3;
}

- (void)_persistBookmarkForPublisher:(id)publisher
{
  publisherCopy = publisher;
  os_unfair_lock_assert_owner(&self->_lock);
  if (publisherCopy && [publisherCopy conformsToProtocol:&unk_1EF30FAF0])
  {
    bookmarkNode = [publisherCopy bookmarkNode];
    bookmarkStorage = self->_bookmarkStorage;
    identifier = [(BMBiomeScheduler *)self identifier];
    current = [MEMORY[0x1E698E9D8] current];
    identifier2 = [current identifier];
    [(BMComputePublisherStorage *)bookmarkStorage writeBookmark:bookmarkNode forSubscriptionWithIdentifier:identifier client:identifier2];

    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(BMBiomeScheduler *)self _persistBookmarkForPublisher:v10];
    }
  }
}

@end