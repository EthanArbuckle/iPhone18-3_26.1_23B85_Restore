@interface BMKnowledgeContextPublisher
- (BMKnowledgeContextPublisher)initWithQuery:(id)a3 store:(id)a4 context:(id)a5 includeLiveEvents:(BOOL)a6;
- (BOOL)completed;
- (id)_combinedPublisher;
- (id)nextEvent;
- (id)startWithSubscriber:(id)a3;
- (id)withLiveEvents;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BMKnowledgeContextPublisher

- (BMKnowledgeContextPublisher)initWithQuery:(id)a3 store:(id)a4 context:(id)a5 includeLiveEvents:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v11 eventStreams];
  v15 = [v14 count];

  if (v15 != 1)
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [BMKnowledgeContextPublisher initWithQuery:v16 store:? context:? includeLiveEvents:?];
    }

    goto LABEL_7;
  }

  if ([v11 resultType])
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [BMKnowledgeContextPublisher initWithQuery:v16 store:? context:? includeLiveEvents:?];
    }

LABEL_7:

    v17 = 0;
    goto LABEL_8;
  }

  v21.receiver = self;
  v21.super_class = BMKnowledgeContextPublisher;
  v19 = [(BMKnowledgeContextPublisher *)&v21 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_query, a3);
    objc_storeStrong(&v20->_store, a4);
    objc_storeStrong(&v20->_context, a5);
    v20->_includeLiveEvents = a6;
  }

  self = v20;
  v17 = self;
LABEL_8:

  return v17;
}

- (id)withLiveEvents
{
  v3 = [BMKnowledgeContextPublisher alloc];
  v4 = [(BMKnowledgeContextPublisher *)self query];
  v5 = [(BMKnowledgeContextPublisher *)self store];
  v6 = [(BMKnowledgeContextPublisher *)self context];
  v7 = [(BMKnowledgeContextPublisher *)v3 initWithQuery:v4 store:v5 context:v6 includeLiveEvents:1];

  return v7;
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  v5 = [(BMKnowledgeContextPublisher *)self _combinedPublisher];
  [v5 subscribe:v4];
}

- (id)_combinedPublisher
{
  v3 = [(_DKEventQuery *)self->_query eventStreams];
  v4 = [v3 firstObject];
  v5 = [v4 name];

  DKBiomeQueryClass = get_DKBiomeQueryClass();
  if ((objc_opt_respondsToSelector() & 1) != 0 && [DKBiomeQueryClass canShimDuetStreamNamed:v5] && objc_msgSend(DKBiomeQueryClass, "instancesRespondToSelector:", sel_initWithDKEventQuery_) && objc_msgSend(DKBiomeQueryClass, "instancesRespondToSelector:", sel_publisherForQueryWithError_))
  {
    v7 = [objc_alloc(get_DKBiomeQueryClass()) initWithDKEventQuery:self->_query];
    v18 = 0;
    v8 = [v7 publisherForQueryWithError:&v18];
    v9 = v18;
    if (v9)
    {
      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(BMKnowledgeContextPublisher *)v9 _combinedPublisher];
      }
    }
  }

  else
  {
    v11 = [BPSKnowledgeStorePublisher alloc];
    v7 = [(BMKnowledgeContextPublisher *)self query];
    v9 = [(BMKnowledgeContextPublisher *)self store];
    v8 = [(BPSKnowledgeStorePublisher *)v11 initWithEventQuery:v7 knowledgeStore:v9];
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
    v14 = [v13 bpsPublisher];
    v15 = [(BPSPublisher *)v8 mergeWithOther:v14];
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

- (id)startWithSubscriber:(id)a3
{
  v4 = a3;
  v5 = [(BMKnowledgeContextPublisher *)self _combinedPublisher];
  [(BMKnowledgeContextPublisher *)self setCombinedPublisher:v5];

  v6 = [(BMKnowledgeContextPublisher *)self combinedPublisher];
  v7 = [v6 startWithSubscriber:v4];

  return v7;
}

- (id)nextEvent
{
  v2 = [(BMKnowledgeContextPublisher *)self combinedPublisher];
  v3 = [v2 nextEvent];

  return v3;
}

- (BOOL)completed
{
  v2 = [(BMKnowledgeContextPublisher *)self combinedPublisher];
  v3 = [v2 completed];

  return v3;
}

- (void)reset
{
  v3 = [(BMKnowledgeContextPublisher *)self combinedPublisher];
  [v3 reset];

  [(BMKnowledgeContextPublisher *)self setCombinedPublisher:0];
}

@end