@interface BMKnowledgeContextPublisher
- (BMKnowledgeContextPublisher)initWithQuery:(id)query store:(id)store context:(id)context includeLiveEvents:(BOOL)events;
- (BOOL)completed;
- (id)_combinedPublisher;
- (id)nextEvent;
- (id)startWithSubscriber:(id)subscriber;
- (id)withLiveEvents;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BMKnowledgeContextPublisher

- (BMKnowledgeContextPublisher)initWithQuery:(id)query store:(id)store context:(id)context includeLiveEvents:(BOOL)events
{
  queryCopy = query;
  storeCopy = store;
  contextCopy = context;
  eventStreams = [queryCopy eventStreams];
  v15 = [eventStreams count];

  if (v15 != 1)
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [BMKnowledgeContextPublisher initWithQuery:v16 store:? context:? includeLiveEvents:?];
    }

    goto LABEL_7;
  }

  if ([queryCopy resultType])
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [BMKnowledgeContextPublisher initWithQuery:v16 store:? context:? includeLiveEvents:?];
    }

LABEL_7:

    selfCopy = 0;
    goto LABEL_8;
  }

  v21.receiver = self;
  v21.super_class = BMKnowledgeContextPublisher;
  v19 = [(BMKnowledgeContextPublisher *)&v21 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_query, query);
    objc_storeStrong(&v20->_store, store);
    objc_storeStrong(&v20->_context, context);
    v20->_includeLiveEvents = events;
  }

  self = v20;
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)withLiveEvents
{
  v3 = [BMKnowledgeContextPublisher alloc];
  query = [(BMKnowledgeContextPublisher *)self query];
  store = [(BMKnowledgeContextPublisher *)self store];
  context = [(BMKnowledgeContextPublisher *)self context];
  v7 = [(BMKnowledgeContextPublisher *)v3 initWithQuery:query store:store context:context includeLiveEvents:1];

  return v7;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  _combinedPublisher = [(BMKnowledgeContextPublisher *)self _combinedPublisher];
  [_combinedPublisher subscribe:subscribeCopy];
}

- (id)_combinedPublisher
{
  eventStreams = [(_DKEventQuery *)self->_query eventStreams];
  firstObject = [eventStreams firstObject];
  name = [firstObject name];

  DKBiomeQueryClass = get_DKBiomeQueryClass();
  if ((objc_opt_respondsToSelector() & 1) != 0 && [DKBiomeQueryClass canShimDuetStreamNamed:name] && objc_msgSend(DKBiomeQueryClass, "instancesRespondToSelector:", sel_initWithDKEventQuery_) && objc_msgSend(DKBiomeQueryClass, "instancesRespondToSelector:", sel_publisherForQueryWithError_))
  {
    query = [objc_alloc(get_DKBiomeQueryClass()) initWithDKEventQuery:self->_query];
    v18 = 0;
    v8 = [query publisherForQueryWithError:&v18];
    store = v18;
    if (store)
    {
      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(BMKnowledgeContextPublisher *)store _combinedPublisher];
      }
    }
  }

  else
  {
    v11 = [BPSKnowledgeStorePublisher alloc];
    query = [(BMKnowledgeContextPublisher *)self query];
    store = [(BMKnowledgeContextPublisher *)self store];
    v8 = [(BPSKnowledgeStorePublisher *)v11 initWithEventQuery:query knowledgeStore:store];
  }

  if ([(BMKnowledgeContextPublisher *)self includeLiveEvents])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __49__BMKnowledgeContextPublisher__combinedPublisher__block_invoke;
    v17[3] = &unk_1E6E54040;
    v17[4] = self;
    v12 = _Block_copy(v17);
    v13 = v12[2]();
    bpsPublisher = [v13 bpsPublisher];
    v15 = [(BPSPublisher *)v8 mergeWithOther:bpsPublisher];
  }

  else
  {
    v15 = v8;
  }

  return v15;
}

id __49__BMKnowledgeContextPublisher__combinedPublisher__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) query];
  v3 = [*(a1 + 32) context];
  v4 = [BMKnowledgeContextMapping liveEventsForQuery:v2 context:v3];

  return v4;
}

- (id)startWithSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  _combinedPublisher = [(BMKnowledgeContextPublisher *)self _combinedPublisher];
  [(BMKnowledgeContextPublisher *)self setCombinedPublisher:_combinedPublisher];

  combinedPublisher = [(BMKnowledgeContextPublisher *)self combinedPublisher];
  v7 = [combinedPublisher startWithSubscriber:subscriberCopy];

  return v7;
}

- (id)nextEvent
{
  combinedPublisher = [(BMKnowledgeContextPublisher *)self combinedPublisher];
  nextEvent = [combinedPublisher nextEvent];

  return nextEvent;
}

- (BOOL)completed
{
  combinedPublisher = [(BMKnowledgeContextPublisher *)self combinedPublisher];
  completed = [combinedPublisher completed];

  return completed;
}

- (void)reset
{
  combinedPublisher = [(BMKnowledgeContextPublisher *)self combinedPublisher];
  [combinedPublisher reset];

  [(BMKnowledgeContextPublisher *)self setCombinedPublisher:0];
}

@end