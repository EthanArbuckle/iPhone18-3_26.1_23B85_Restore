@interface _BMBiomeXPCSchedulerInner
+ (id)streamIdentifierFromGraph:(id)graph;
- (_BMBiomeXPCSchedulerInner)initWithDownstream:(id)downstream identifier:(id)identifier graph:(id)graph client:(id)client targetQueue:(id)queue waking:(BOOL)waking;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
- (void)requestDemand:(int64_t)demand;
- (void)switchToPublisherWithStreamIdentifier:(id)identifier storeEvent:(id)event;
- (void)switchToUpdatedPublisher;
@end

@implementation _BMBiomeXPCSchedulerInner

- (_BMBiomeXPCSchedulerInner)initWithDownstream:(id)downstream identifier:(id)identifier graph:(id)graph client:(id)client targetQueue:(id)queue waking:(BOOL)waking
{
  downstreamCopy = downstream;
  identifierCopy = identifier;
  graphCopy = graph;
  clientCopy = client;
  queueCopy = queue;
  v28.receiver = self;
  v28.super_class = _BMBiomeXPCSchedulerInner;
  v18 = [(_BMBiomeXPCSchedulerInner *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_downstream, downstream);
    objc_storeStrong(&v19->_graph, graph);
    objc_storeStrong(&v19->_client, client);
    objc_storeStrong(&v19->_identifier, identifier);
    v20 = [BMComputePublisherStorage bookmarkStorageForCurrentProcess:identifierCopy];
    bookmarkStorage = v19->_bookmarkStorage;
    v19->_bookmarkStorage = v20;

    objc_storeStrong(&v19->_queue, queue);
    v19->_lock._os_unfair_lock_opaque = 0;
    v19->_waking = waking;
    v22 = [objc_alloc(MEMORY[0x1E698F0F0]) initWithState:0 subscription:0];
    status = v19->_status;
    v19->_status = v22;

    bpsPublisher = v19->_bpsPublisher;
    v19->_bpsPublisher = 0;

    v19->_latestEventTime = 0.0;
  }

  return v19;
}

- (void)requestDemand:(int64_t)demand
{
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  downstream = [(_BMBiomeXPCSchedulerInner *)selfCopy downstream];
  if (!downstream)
  {
    goto LABEL_6;
  }

  demand = [(_BMBiomeXPCSchedulerInner *)selfCopy demand];
  if (demand != *MEMORY[0x1E698F0A8])
  {
    [(_BMBiomeXPCSchedulerInner *)selfCopy setDemand:[(_BMBiomeXPCSchedulerInner *)selfCopy demand]+ demand];
  }

  if ([(_BMBiomeXPCSchedulerInner *)selfCopy demand]&& ([(_BMBiomeXPCSchedulerInner *)selfCopy xpcSubscription], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    objc_initWeak(&location, selfCopy);
    identifier = [(_BMBiomeXPCSchedulerInner *)selfCopy identifier];
    graph = [(_BMBiomeXPCSchedulerInner *)selfCopy graph];
    os_unfair_lock_unlock(&selfCopy->_lock);
    v10 = [BMComputeSubscription alloc];
    current = [MEMORY[0x1E698E9D8] current];
    identifier2 = [current identifier];
    waking = [(_BMBiomeXPCSchedulerInner *)selfCopy waking];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __43___BMBiomeXPCSchedulerInner_requestDemand___block_invoke;
    v18[3] = &unk_1E6E543D0;
    v18[4] = selfCopy;
    objc_copyWeak(&v19, &location);
    v14 = [(BMComputeSubscription *)v10 initWithIdentifier:identifier client:identifier2 waking:waking DSLGraph:graph block:v18];

    os_unfair_lock_lock(&selfCopy->_lock);
    [(_BMBiomeXPCSchedulerInner *)selfCopy setXpcSubscription:v14];
    client = [(_BMBiomeXPCSchedulerInner *)selfCopy client];
    current2 = [MEMORY[0x1E698E9D8] current];
    identifier3 = [current2 identifier];

    if (![(_BMBiomeXPCSchedulerInner *)selfCopy waking])
    {
      [(BMComputePublisherStorage *)selfCopy->_bookmarkStorage removeBookmarkFileForSubscriptionWithIdentifier:identifier client:identifier3];
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
    [client subscribe:v14];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
LABEL_6:
    os_unfair_lock_unlock(&selfCopy->_lock);
  }
}

- (void)switchToPublisherWithStreamIdentifier:(id)identifier storeEvent:(id)event
{
  v45 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  eventCopy = event;
  os_unfair_lock_lock(&self->_lock);
  status = [(_BMBiomeXPCSchedulerInner *)self status];
  state = [status state];

  if (state == 2)
  {
    [(_BMBiomeXPCSchedulerInner *)self setXpcSubscription:0];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    selfCopy = self;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    graph = [(_BMBiomeXPCSchedulerInner *)self graph];
    streamPublishers = [graph streamPublishers];

    v12 = [streamPublishers countByEnumeratingWithState:&v38 objects:v44 count:16];
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
            objc_enumerationMutation(streamPublishers);
          }

          v16 = *(*(&v38 + 1) + 8 * i);
          identifier = [v16 identifier];
          v18 = [identifier isEqualToString:identifierCopy];

          if (v18)
          {
            v43 = eventCopy;
            v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
            [v16 setBackingEvents:v19];
          }
        }

        v13 = [streamPublishers countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v13);
    }

    graph2 = [(_BMBiomeXPCSchedulerInner *)selfCopy graph];
    bpsPublisher = [graph2 bpsPublisher];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    graph3 = [(_BMBiomeXPCSchedulerInner *)selfCopy graph];
    streamPublishers2 = [graph3 streamPublishers];

    v24 = [streamPublishers2 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
            objc_enumerationMutation(streamPublishers2);
          }

          v28 = *(*(&v34 + 1) + 8 * j);
          identifier2 = [v28 identifier];
          v30 = [identifier2 isEqualToString:identifierCopy];

          if (v30)
          {
            [v28 setBackingEvents:0];
          }
        }

        v25 = [streamPublishers2 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v25);
    }

    bpsPublisher = selfCopy->_bpsPublisher;
    selfCopy->_bpsPublisher = 0;

    os_unfair_lock_unlock(&selfCopy->_lock);
    [bpsPublisher subscribe:selfCopy];
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)switchToUpdatedPublisher
{
  os_unfair_lock_lock(&self->_lock);
  status = [(_BMBiomeXPCSchedulerInner *)self status];
  state = [status state];

  if (state == 2)
  {
    [(_BMBiomeXPCSchedulerInner *)self setXpcSubscription:0];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    xpcSubscription = [(_BMBiomeXPCSchedulerInner *)self xpcSubscription];
    bookmarkStorage = [(_BMBiomeXPCSchedulerInner *)self bookmarkStorage];
    v16 = 0;
    v7 = [xpcSubscription fetchBookmarkFromStorage:bookmarkStorage error:&v16];
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
        graph = [(_BMBiomeXPCSchedulerInner *)self graph];
        bpsPublisher = [graph bpsPublisher];
        v14 = self->_bpsPublisher;
        self->_bpsPublisher = bpsPublisher;

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
  selfCopy = self;
  os_unfair_lock_lock(&self->_lock);
  client = [(_BMBiomeXPCSchedulerInner *)selfCopy client];
  xpcSubscription = [(_BMBiomeXPCSchedulerInner *)selfCopy xpcSubscription];
  identifier = [xpcSubscription identifier];

  current = [MEMORY[0x1E698E9D8] current];
  identifier2 = [current identifier];

  [(BMComputePublisherStorage *)selfCopy->_bookmarkStorage removeBookmarkFileForSubscriptionWithIdentifier:identifier client:identifier2];
  os_unfair_lock_unlock(&self->_lock);
  [client unsubscribeWithIdentifier:identifier];
  os_unfair_lock_lock(&self->_lock);
  [(_BMBiomeXPCSchedulerInner *)selfCopy setClient:0];
  [(_BMBiomeXPCSchedulerInner *)selfCopy setXpcSubscription:0];
  [(_BMBiomeXPCSchedulerInner *)selfCopy setDownstream:0];
  status = [(_BMBiomeXPCSchedulerInner *)selfCopy status];
  [status setState:2];

  status2 = [(_BMBiomeXPCSchedulerInner *)selfCopy status];
  [status2 setSubscription:0];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)receiveCompletion:(id)completion
{
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if (selfCopy->_bpsPublisher && (-[_BMBiomeXPCSchedulerInner status](selfCopy, "status"), v3 = objc_claimAutoreleasedReturnValue(), [v3 subscription], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "conformsToProtocol:", &unk_1EF30F6F0), v4, v3, v5))
  {
    status = [(_BMBiomeXPCSchedulerInner *)selfCopy status];
    subscription = [status subscription];

    identifier = [(_BMBiomeXPCSchedulerInner *)selfCopy identifier];
    bookmarkStorage = [(_BMBiomeXPCSchedulerInner *)selfCopy bookmarkStorage];
    os_unfair_lock_unlock(&selfCopy->_lock);
    newBookmark = [subscription newBookmark];
    current = [MEMORY[0x1E698E9D8] current];
    identifier2 = [current identifier];
    [bookmarkStorage writeBookmark:newBookmark forSubscriptionWithIdentifier:identifier client:identifier2];
  }

  else
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }
}

- (int64_t)receiveInput:(id)input
{
  v29 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  status = [(_BMBiomeXPCSchedulerInner *)selfCopy status];
  state = [status state];

  if (state == 2)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = inputCopy;
    [v8 timestamp];
    v10 = v9 >= selfCopy->_latestEventTime;
    v11 = __biome_log_for_category();
    v12 = v11;
    if (!v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(_BMBiomeXPCSchedulerInner *)v8 receiveInput:v12];
      }

      os_unfair_lock_unlock(&selfCopy->_lock);
      goto LABEL_12;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(_BMBiomeXPCSchedulerInner *)selfCopy identifier];
      v14 = MEMORY[0x1E696AD98];
      [v8 timestamp];
      v15 = [v14 numberWithDouble:?];
      *buf = 138412546;
      *&buf[4] = identifier;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_1848EE000, v12, OS_LOG_TYPE_DEFAULT, "BMBiomeScheduler publishing event for %@ with timestamp %@", buf, 0x16u);
    }

    [v8 timestamp];
    selfCopy->_latestEventTime = v16;
  }

  if ([(_BMBiomeXPCSchedulerInner *)selfCopy demand]< 1)
  {
LABEL_11:
    os_unfair_lock_unlock(&selfCopy->_lock);
LABEL_12:
    v18 = *MEMORY[0x1E698F0A0];
    goto LABEL_13;
  }

  [(_BMBiomeXPCSchedulerInner *)selfCopy setDemand:[(_BMBiomeXPCSchedulerInner *)selfCopy demand]- 1];
  downstream = [(_BMBiomeXPCSchedulerInner *)selfCopy downstream];
  os_unfair_lock_unlock(&selfCopy->_lock);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v18 = *MEMORY[0x1E698F0A0];
  v28 = *MEMORY[0x1E698F0A0];
  queue = [(_BMBiomeXPCSchedulerInner *)selfCopy queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___BMBiomeXPCSchedulerInner_receiveInput___block_invoke;
  block[3] = &unk_1E6E529A8;
  v26 = buf;
  v20 = downstream;
  v24 = v20;
  v25 = inputCopy;
  dispatch_async(queue, block);

  os_unfair_lock_lock(&selfCopy->_lock);
  if (*(*&buf[8] + 24) >= 1)
  {
    [(_BMBiomeXPCSchedulerInner *)selfCopy setDemand:*(*&buf[8] + 24) + [(_BMBiomeXPCSchedulerInner *)selfCopy demand]];
  }

  os_unfair_lock_unlock(&selfCopy->_lock);

  _Block_object_dispose(buf, 8);
LABEL_13:

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  os_unfair_lock_lock(&self->_lock);
  status = [(_BMBiomeXPCSchedulerInner *)self status];
  state = [status state];

  if (state == 2)
  {
    os_unfair_lock_unlock(&self->_lock);
    [subscriptionCopy cancel];
  }

  else
  {
    status2 = [(_BMBiomeXPCSchedulerInner *)self status];
    [status2 setState:1];

    status3 = [(_BMBiomeXPCSchedulerInner *)self status];
    [status3 setSubscription:subscriptionCopy];

    demand = [(_BMBiomeXPCSchedulerInner *)self demand];
    os_unfair_lock_unlock(&self->_lock);
    if (demand >= 1)
    {
      [subscriptionCopy requestDemand:{-[_BMBiomeXPCSchedulerInner demand](self, "demand")}];
    }
  }
}

+ (id)streamIdentifierFromGraph:(id)graph
{
  v11[1] = *MEMORY[0x1E69E9840];
  graphCopy = graph;
  v11[0] = graphCopy;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v5 = [v4 mutableCopy];

  if (![v5 count])
  {
LABEL_6:
    identifier = 0;
    goto LABEL_8;
  }

  while (1)
  {
    firstObject = [v5 firstObject];
    if (firstObject)
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
    upstreams = [firstObject upstreams];
    [v5 addObjectsFromArray:upstreams];

    goto LABEL_5;
  }

  identifier = [firstObject identifier];

LABEL_8:
  v9 = *MEMORY[0x1E69E9840];

  return identifier;
}

@end