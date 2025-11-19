@interface _BMBiomeXPCSchedulerInner
+ (id)streamIdentifierFromGraph:(id)a3;
- (_BMBiomeXPCSchedulerInner)initWithDownstream:(id)a3 identifier:(id)a4 graph:(id)a5 client:(id)a6 targetQueue:(id)a7 waking:(BOOL)a8;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
- (void)requestDemand:(int64_t)a3;
- (void)switchToPublisherWithStreamIdentifier:(id)a3 storeEvent:(id)a4;
- (void)switchToUpdatedPublisher;
@end

@implementation _BMBiomeXPCSchedulerInner

- (_BMBiomeXPCSchedulerInner)initWithDownstream:(id)a3 identifier:(id)a4 graph:(id)a5 client:(id)a6 targetQueue:(id)a7 waking:(BOOL)a8
{
  v27 = a3;
  v26 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v28.receiver = self;
  v28.super_class = _BMBiomeXPCSchedulerInner;
  v18 = [(_BMBiomeXPCSchedulerInner *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_downstream, a3);
    objc_storeStrong(&v19->_graph, a5);
    objc_storeStrong(&v19->_client, a6);
    objc_storeStrong(&v19->_identifier, a4);
    v20 = [BMComputePublisherStorage bookmarkStorageForCurrentProcess:v26];
    bookmarkStorage = v19->_bookmarkStorage;
    v19->_bookmarkStorage = v20;

    objc_storeStrong(&v19->_queue, a7);
    v19->_lock._os_unfair_lock_opaque = 0;
    v19->_waking = a8;
    v22 = [objc_alloc(MEMORY[0x1E698F0F0]) initWithState:0 subscription:0];
    status = v19->_status;
    v19->_status = v22;

    bpsPublisher = v19->_bpsPublisher;
    v19->_bpsPublisher = 0;

    v19->_latestEventTime = 0.0;
  }

  return v19;
}

- (void)requestDemand:(int64_t)a3
{
  v4 = self;
  os_unfair_lock_lock(&v4->_lock);
  v5 = [(_BMBiomeXPCSchedulerInner *)v4 downstream];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [(_BMBiomeXPCSchedulerInner *)v4 demand];
  if (v6 != *MEMORY[0x1E698F0A8])
  {
    [(_BMBiomeXPCSchedulerInner *)v4 setDemand:[(_BMBiomeXPCSchedulerInner *)v4 demand]+ a3];
  }

  if ([(_BMBiomeXPCSchedulerInner *)v4 demand]&& ([(_BMBiomeXPCSchedulerInner *)v4 xpcSubscription], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    objc_initWeak(&location, v4);
    v8 = [(_BMBiomeXPCSchedulerInner *)v4 identifier];
    v9 = [(_BMBiomeXPCSchedulerInner *)v4 graph];
    os_unfair_lock_unlock(&v4->_lock);
    v10 = [BMComputeSubscription alloc];
    v11 = [MEMORY[0x1E698E9D8] current];
    v12 = [v11 identifier];
    v13 = [(_BMBiomeXPCSchedulerInner *)v4 waking];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __43___BMBiomeXPCSchedulerInner_requestDemand___block_invoke;
    v18[3] = &unk_1E6E543D0;
    v18[4] = v4;
    objc_copyWeak(&v19, &location);
    v14 = [(BMComputeSubscription *)v10 initWithIdentifier:v8 client:v12 waking:v13 DSLGraph:v9 block:v18];

    os_unfair_lock_lock(&v4->_lock);
    [(_BMBiomeXPCSchedulerInner *)v4 setXpcSubscription:v14];
    v15 = [(_BMBiomeXPCSchedulerInner *)v4 client];
    v16 = [MEMORY[0x1E698E9D8] current];
    v17 = [v16 identifier];

    if (![(_BMBiomeXPCSchedulerInner *)v4 waking])
    {
      [(BMComputePublisherStorage *)v4->_bookmarkStorage removeBookmarkFileForSubscriptionWithIdentifier:v8 client:v17];
    }

    os_unfair_lock_unlock(&v4->_lock);
    [v15 subscribe:v14];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
LABEL_6:
    os_unfair_lock_unlock(&v4->_lock);
  }
}

- (void)switchToPublisherWithStreamIdentifier:(id)a3 storeEvent:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(_BMBiomeXPCSchedulerInner *)self status];
  v9 = [v8 state];

  if (v9 == 2)
  {
    [(_BMBiomeXPCSchedulerInner *)self setXpcSubscription:0];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v33 = self;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = [(_BMBiomeXPCSchedulerInner *)self graph];
    v11 = [v10 streamPublishers];

    v12 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v39;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v38 + 1) + 8 * i);
          v17 = [v16 identifier];
          v18 = [v17 isEqualToString:v6];

          if (v18)
          {
            v43 = v7;
            v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
            [v16 setBackingEvents:v19];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v13);
    }

    v20 = [(_BMBiomeXPCSchedulerInner *)v33 graph];
    v21 = [v20 bpsPublisher];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = [(_BMBiomeXPCSchedulerInner *)v33 graph];
    v23 = [v22 streamPublishers];

    v24 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v35;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v34 + 1) + 8 * j);
          v29 = [v28 identifier];
          v30 = [v29 isEqualToString:v6];

          if (v30)
          {
            [v28 setBackingEvents:0];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v25);
    }

    bpsPublisher = v33->_bpsPublisher;
    v33->_bpsPublisher = 0;

    os_unfair_lock_unlock(&v33->_lock);
    [v21 subscribe:v33];
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)switchToUpdatedPublisher
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(_BMBiomeXPCSchedulerInner *)self status];
  v4 = [v3 state];

  if (v4 == 2)
  {
    [(_BMBiomeXPCSchedulerInner *)self setXpcSubscription:0];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = [(_BMBiomeXPCSchedulerInner *)self xpcSubscription];
    v6 = [(_BMBiomeXPCSchedulerInner *)self bookmarkStorage];
    v16 = 0;
    v7 = [v5 fetchBookmarkFromStorage:v6 error:&v16];
    v8 = v16;

    v9 = __biome_log_for_category();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_BMBiomeXPCSchedulerInner switchToUpdatedPublisher];
      }

      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [_BMBiomeXPCSchedulerInner switchToUpdatedPublisher];
      }

      bpsPublisher = self->_bpsPublisher;
      if (!bpsPublisher)
      {
        v12 = [(_BMBiomeXPCSchedulerInner *)self graph];
        v13 = [v12 bpsPublisher];
        v14 = self->_bpsPublisher;
        self->_bpsPublisher = v13;

        bpsPublisher = self->_bpsPublisher;
      }

      v15 = [(BMBookmarkablePublisher *)bpsPublisher withBookmark:v7];
      os_unfair_lock_unlock(&self->_lock);
      [v15 subscribe:self];
    }
  }
}

- (void)cancel
{
  v10 = self;
  os_unfair_lock_lock(&self->_lock);
  v3 = [(_BMBiomeXPCSchedulerInner *)v10 client];
  v4 = [(_BMBiomeXPCSchedulerInner *)v10 xpcSubscription];
  v5 = [v4 identifier];

  v6 = [MEMORY[0x1E698E9D8] current];
  v7 = [v6 identifier];

  [(BMComputePublisherStorage *)v10->_bookmarkStorage removeBookmarkFileForSubscriptionWithIdentifier:v5 client:v7];
  os_unfair_lock_unlock(&self->_lock);
  [v3 unsubscribeWithIdentifier:v5];
  os_unfair_lock_lock(&self->_lock);
  [(_BMBiomeXPCSchedulerInner *)v10 setClient:0];
  [(_BMBiomeXPCSchedulerInner *)v10 setXpcSubscription:0];
  [(_BMBiomeXPCSchedulerInner *)v10 setDownstream:0];
  v8 = [(_BMBiomeXPCSchedulerInner *)v10 status];
  [v8 setState:2];

  v9 = [(_BMBiomeXPCSchedulerInner *)v10 status];
  [v9 setSubscription:0];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)receiveCompletion:(id)a3
{
  v13 = self;
  os_unfair_lock_lock(&v13->_lock);
  if (v13->_bpsPublisher && (-[_BMBiomeXPCSchedulerInner status](v13, "status"), v3 = objc_claimAutoreleasedReturnValue(), [v3 subscription], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "conformsToProtocol:", &unk_1EF30F6F0), v4, v3, v5))
  {
    v6 = [(_BMBiomeXPCSchedulerInner *)v13 status];
    v7 = [v6 subscription];

    v8 = [(_BMBiomeXPCSchedulerInner *)v13 identifier];
    v9 = [(_BMBiomeXPCSchedulerInner *)v13 bookmarkStorage];
    os_unfair_lock_unlock(&v13->_lock);
    v10 = [v7 newBookmark];
    v11 = [MEMORY[0x1E698E9D8] current];
    v12 = [v11 identifier];
    [v9 writeBookmark:v10 forSubscriptionWithIdentifier:v8 client:v12];
  }

  else
  {
    os_unfair_lock_unlock(&v13->_lock);
  }
}

- (int64_t)receiveInput:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  os_unfair_lock_lock(&v5->_lock);
  v6 = [(_BMBiomeXPCSchedulerInner *)v5 status];
  v7 = [v6 state];

  if (v7 == 2)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
    [v8 timestamp];
    v10 = v9 >= v5->_latestEventTime;
    v11 = __biome_log_for_category();
    v12 = v11;
    if (!v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(_BMBiomeXPCSchedulerInner *)v8 receiveInput:v12];
      }

      os_unfair_lock_unlock(&v5->_lock);
      goto LABEL_12;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(_BMBiomeXPCSchedulerInner *)v5 identifier];
      v14 = MEMORY[0x1E696AD98];
      [v8 timestamp];
      v15 = [v14 numberWithDouble:?];
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_1848EE000, v12, OS_LOG_TYPE_DEFAULT, "BMBiomeScheduler publishing event for %@ with timestamp %@", buf, 0x16u);
    }

    [v8 timestamp];
    v5->_latestEventTime = v16;
  }

  if ([(_BMBiomeXPCSchedulerInner *)v5 demand]< 1)
  {
LABEL_11:
    os_unfair_lock_unlock(&v5->_lock);
LABEL_12:
    v18 = *MEMORY[0x1E698F0A0];
    goto LABEL_13;
  }

  [(_BMBiomeXPCSchedulerInner *)v5 setDemand:[(_BMBiomeXPCSchedulerInner *)v5 demand]- 1];
  v17 = [(_BMBiomeXPCSchedulerInner *)v5 downstream];
  os_unfair_lock_unlock(&v5->_lock);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v18 = *MEMORY[0x1E698F0A0];
  v28 = *MEMORY[0x1E698F0A0];
  v19 = [(_BMBiomeXPCSchedulerInner *)v5 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___BMBiomeXPCSchedulerInner_receiveInput___block_invoke;
  block[3] = &unk_1E6E529A8;
  v26 = buf;
  v20 = v17;
  v24 = v20;
  v25 = v4;
  dispatch_async(v19, block);

  os_unfair_lock_lock(&v5->_lock);
  if (*(*&buf[8] + 24) >= 1)
  {
    [(_BMBiomeXPCSchedulerInner *)v5 setDemand:*(*&buf[8] + 24) + [(_BMBiomeXPCSchedulerInner *)v5 demand]];
  }

  os_unfair_lock_unlock(&v5->_lock);

  _Block_object_dispose(buf, 8);
LABEL_13:

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)receiveSubscription:(id)a3
{
  v9 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(_BMBiomeXPCSchedulerInner *)self status];
  v5 = [v4 state];

  if (v5 == 2)
  {
    os_unfair_lock_unlock(&self->_lock);
    [v9 cancel];
  }

  else
  {
    v6 = [(_BMBiomeXPCSchedulerInner *)self status];
    [v6 setState:1];

    v7 = [(_BMBiomeXPCSchedulerInner *)self status];
    [v7 setSubscription:v9];

    v8 = [(_BMBiomeXPCSchedulerInner *)self demand];
    os_unfair_lock_unlock(&self->_lock);
    if (v8 >= 1)
    {
      [v9 requestDemand:{-[_BMBiomeXPCSchedulerInner demand](self, "demand")}];
    }
  }
}

+ (id)streamIdentifierFromGraph:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v5 = [v4 mutableCopy];

  if (![v5 count])
  {
LABEL_6:
    v8 = 0;
    goto LABEL_8;
  }

  while (1)
  {
    v6 = [v5 firstObject];
    if (v6)
    {
      break;
    }

LABEL_5:

    if (![v5 count])
    {
      goto LABEL_6;
    }
  }

  [v5 removeObjectAtIndex:0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = [v6 upstreams];
    [v5 addObjectsFromArray:v7];

    goto LABEL_5;
  }

  v8 = [v6 identifier];

LABEL_8:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end