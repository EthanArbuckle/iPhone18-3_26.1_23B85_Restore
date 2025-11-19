@interface BMBiomeScheduler
- (BMBiomeScheduler)initWithIdentifier:(id)a3 targetQueue:(id)a4;
- (BMBiomeScheduler)initWithIdentifier:(id)a3 targetQueue:(id)a4 client:(id)a5;
- (BMBiomeScheduler)initWithIdentifier:(id)a3 targetQueue:(id)a4 client:(id)a5 waking:(BOOL)a6;
- (id)_publisherWithStreamIdentifier:(id)a3 storeEvent:(id)a4;
- (id)_updatedPublisherForSubscription:(id)a3;
- (void)_persistBookmarkForPublisher:(id)a3;
- (void)cancel;
- (void)subscribeWithDSLGraph:(id)a3 forSubscriber:(id)a4;
- (void)subscribeWithDSLGraph:(id)a3 publisherBlock:(id)a4;
@end

@implementation BMBiomeScheduler

- (BMBiomeScheduler)initWithIdentifier:(id)a3 targetQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[BMComputePublisherClient shared];
  v9 = [(BMBiomeScheduler *)self initWithIdentifier:v7 targetQueue:v6 client:v8];

  return v9;
}

- (BMBiomeScheduler)initWithIdentifier:(id)a3 targetQueue:(id)a4 client:(id)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E698E9D8] current];
  v11 = [v10 isManagedByLaunchd];

  v12 = [MEMORY[0x1E696AAE8] mainBundle];
  v13 = [v12 bundleURL];
  v26[0] = *MEMORY[0x1E695DB70];
  v14 = v26[0];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v25 = 0;
  v16 = [v13 resourceValuesForKeys:v15 error:&v25];
  v17 = v25;

  v18 = [v16 objectForKeyedSubscript:v14];
  v19 = v18;
  if (v17)
  {
    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [BMBiomeScheduler initWithIdentifier:targetQueue:client:];
    }

    goto LABEL_6;
  }

  if ([v18 BOOLValue])
  {
    v20 = [v12 bundleIdentifier];
    v11 = [v20 isEqualToString:@"com.apple.springboard"];
LABEL_6:
  }

  v21 = [(BMBiomeScheduler *)self initWithIdentifier:v7 targetQueue:v8 client:v9 waking:v11, self];

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BMBiomeScheduler)initWithIdentifier:(id)a3 targetQueue:(id)a4 client:(id)a5 waking:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = BMBiomeScheduler;
  v13 = [(BMBiomeScheduler *)&v17 init];
  if (v13)
  {
    v14 = [v10 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    objc_storeStrong(&v13->_queue, a4);
    objc_storeStrong(&v13->_client, a5);
    v13->_waking = a6;
    v13->_lock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

- (void)subscribeWithDSLGraph:(id)a3 forSubscriber:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 streamPublishers];
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
  v15 = [(BMBiomeScheduler *)self identifier];
  v16 = [(BMBiomeScheduler *)self client];
  v17 = [(BMBiomeScheduler *)self queue];
  v18 = [(_BMBiomeXPCSchedulerInner *)v14 initWithDownstream:v7 identifier:v15 graph:v6 client:v16 targetQueue:v17 waking:[(BMBiomeScheduler *)self waking]];

  if (self->_bookmarkStorage)
  {
    [(_BMBiomeXPCSchedulerInner *)v18 setBookmarkStorage:?];
  }

  [v7 receiveSubscription:{v18, v20}];
LABEL_14:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)subscribeWithDSLGraph:(id)a3 publisherBlock:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [v7 streamPublishers];
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
  v29 = v8;
  v14 = _Block_copy(aBlock);
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_graph, a3);
  if (!self->_bookmarkStorage)
  {
    v15 = +[BMComputePublisherStorage bookmarkStorageForCurrentProcess];
    bookmarkStorage = self->_bookmarkStorage;
    self->_bookmarkStorage = v15;
  }

  v17 = [MEMORY[0x1E698E9D8] current];
  v18 = [v17 identifier];

  if (![(BMBiomeScheduler *)self waking])
  {
    v19 = self->_bookmarkStorage;
    v20 = [(BMBiomeScheduler *)self identifier];
    [(BMComputePublisherStorage *)v19 removeBookmarkFileForSubscriptionWithIdentifier:v20 client:v18];
  }

  v21 = [BMComputeSubscription alloc];
  v22 = [(BMBiomeScheduler *)self identifier];
  v23 = [(BMComputeSubscription *)v21 initWithIdentifier:v22 client:v18 waking:[(BMBiomeScheduler *)self waking] DSLGraph:v7 block:v14];

  v24 = [(BMComputeSubscription *)v23 identifier];
  [(BMBiomeScheduler *)self setSubscriptionIdentifier:v24];

  os_unfair_lock_unlock(&self->_lock);
  v25 = [(BMBiomeScheduler *)self client];
  [v25 subscribe:v23];

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
  v3 = [(BMBiomeScheduler *)self subscriptionIdentifier];
  v4 = [(BMBiomeScheduler *)self bpsPublisher];
  [(BMBiomeScheduler *)self setSubscriptionIdentifier:0];
  [(BMBiomeScheduler *)self setBpsPublisher:0];
  v5 = [MEMORY[0x1E698E9D8] current];
  v6 = [v5 identifier];

  [(BMComputePublisherStorage *)self->_bookmarkStorage removeBookmarkFileForSubscriptionWithIdentifier:v3 client:v6];
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    v7 = [(BMBiomeScheduler *)self client];
    [v7 unsubscribeWithIdentifier:v3];
  }

  if (v4)
  {
    [v4 reset];
  }

  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1848EE000, v8, OS_LOG_TYPE_DEFAULT, "BMBiomeScheduler client invoked cancel, unsubscribing", v9, 2u);
  }
}

- (id)_publisherWithStreamIdentifier:(id)a3 storeEvent:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v31 = self;
  v8 = [(BMBiomeScheduler *)self graph];
  v9 = [v8 streamPublishers];

  v10 = [v9 countByEnumeratingWithState:&v36 objects:v42 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v15 = [v14 identifier];
        v16 = [v15 isEqualToString:v6];

        if (v16)
        {
          v41 = v7;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
          [v14 setBackingEvents:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v11);
  }

  v18 = [(BMBiomeScheduler *)v31 graph];
  v19 = [v18 bpsPublisher];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = [(BMBiomeScheduler *)v31 graph];
  v21 = [v20 streamPublishers];

  v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
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
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v32 + 1) + 8 * j);
        v27 = [v26 identifier];
        v28 = [v27 isEqualToString:v6];

        if (v28)
        {
          [v26 setBackingEvents:0];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v23);
  }

  v29 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_updatedPublisherForSubscription:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(BMBiomeScheduler *)self bpsPublisher];

  if (!v5)
  {
    v6 = [(BMBiomeScheduler *)self graph];
    v7 = [v6 bpsPublisher];

    bookmarkStorage = self->_bookmarkStorage;
    v28 = 0;
    v9 = [v4 fetchBookmarkFromStorage:bookmarkStorage error:&v28];
    v10 = v28;
    v11 = v10;
    if (v9 && !v10)
    {
      v12 = [v7 validateBookmarkNode:v9];
      if (v12)
      {
        v13 = [MEMORY[0x1E698E9D8] current];
        v14 = [v13 identifier];

        v15 = self->_bookmarkStorage;
        v16 = [v4 identifier];
        [(BMComputePublisherStorage *)v15 removeBookmarkFileForSubscriptionWithIdentifier:v16 client:v14];

        v17 = __biome_log_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [BMBiomeScheduler _updatedPublisherForSubscription:];
        }

        v18 = self->_bookmarkStorage;
        v27 = 0;
        v19 = [v4 fetchBookmarkFromStorage:v18 error:&v27];
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

    [v7 applyBookmarkNode:v9];
    v22 = [v7 startWithSubscriber:0];
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
      [(BMBiomeScheduler *)self setBpsPublisher:v7];
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

  v25 = [(BMBiomeScheduler *)self bpsPublisher];

  return v25;
}

- (void)_persistBookmarkForPublisher:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (v4 && [v4 conformsToProtocol:&unk_1EF30FAF0])
  {
    v5 = [v4 bookmarkNode];
    bookmarkStorage = self->_bookmarkStorage;
    v7 = [(BMBiomeScheduler *)self identifier];
    v8 = [MEMORY[0x1E698E9D8] current];
    v9 = [v8 identifier];
    [(BMComputePublisherStorage *)bookmarkStorage writeBookmark:v5 forSubscriptionWithIdentifier:v7 client:v9];

    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(BMBiomeScheduler *)self _persistBookmarkForPublisher:v10];
    }
  }
}

@end