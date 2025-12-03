@interface MPCAMSEngagementEventConsumer
- (BOOL)_enqueueDataForPlaybackChangingEvent:(id)event cursor:(id)cursor;
- (id)_JSONEncodableEvent:(id)event;
- (void)subscribeToEventStream:(id)stream;
- (void)unsubscribeFromEventStream:(id)stream;
@end

@implementation MPCAMSEngagementEventConsumer

- (id)_JSONEncodableEvent:(id)event
{
  if (event)
  {
    v3 = MEMORY[0x1E695DF90];
    eventCopy = event;
    v5 = objc_alloc_init(v3);
    type = [eventCopy type];
    [v5 setObject:type forKeyedSubscript:@"event-type"];

    date = [eventCopy date];
    v8 = [date description];
    [v5 setObject:v8 forKeyedSubscript:@"time"];

    identifier = [eventCopy identifier];
    v10 = [identifier description];
    [v5 setObject:v10 forKeyedSubscript:@"id"];

    payload = [eventCopy payload];

    [v5 setObject:payload forKeyedSubscript:@"payload"];
    [v5 setObject:&unk_1F45999E8 forKeyedSubscript:@"meta"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_enqueueDataForPlaybackChangingEvent:(id)event cursor:(id)cursor
{
  v70[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  cursorCopy = cursor;
  v49 = [(MPCAMSEngagementEventConsumer *)self _JSONEncodableEvent:eventCopy];
  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  payload = [eventCopy payload];
  v9 = [payload objectForKeyedSubscript:@"queue-section-id"];

  payload2 = [eventCopy payload];
  v11 = [payload2 objectForKeyedSubscript:@"queue-item-id"];

  v70[0] = @"device-changed";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
  v48 = [cursorCopy findPreviousEventWithTypes:v12 matchingPayload:0];

  v43 = v11;
  v44 = v9;
  if (v9)
  {
    v68 = @"queue-section-id";
    v69 = v9;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    v14 = [cursorCopy findPreviousEventWithType:@"queue-add" matchingPayload:v13];

    v66 = @"queue-section-id";
    v67 = v9;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v47 = [cursorCopy findPreviousEventWithType:@"container-begin" matchingPayload:v15];

    if (v11)
    {
      v64[0] = @"queue-section-id";
      v64[1] = @"queue-item-id";
      v65[0] = v9;
      v65[1] = v11;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
      v46 = [cursorCopy findPreviousEventWithType:@"item-begin" matchingPayload:v16];
    }

    else
    {
      v46 = 0;
    }

    v18 = cursorCopy;
    v17 = v14;
  }

  else
  {
    v46 = 0;
    v47 = 0;
    v17 = 0;
    v18 = cursorCopy;
  }

  payload3 = [v17 payload];
  v20 = [payload3 objectForKeyedSubscript:@"account-id"];

  v42 = v20;
  if (v20)
  {
    v63[0] = @"account-begin";
    v63[1] = @"account-update";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
    v61 = @"account-id";
    v62 = v20;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v45 = [v18 findPreviousEventWithTypes:v21 matchingPayload:v22];
  }

  else
  {
    v45 = 0;
  }

  payload4 = [v17 payload];
  v24 = [payload4 objectForKeyedSubscript:@"queue-delegated-account-id"];

  if (v24)
  {
    v60[0] = @"account-update";
    v60[1] = @"account-begin";
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
    v58 = @"account-id";
    v59 = v24;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v27 = [v18 findPreviousEventWithTypes:v25 matchingPayload:v26];
  }

  else
  {
    v27 = 0;
  }

  v28 = [(MPCAMSEngagementEventConsumer *)self _JSONEncodableEvent:v48];
  [v41 setObject:v28 forKeyedSubscript:@"device"];

  v29 = [(MPCAMSEngagementEventConsumer *)self _JSONEncodableEvent:v17];
  [v41 setObject:v29 forKeyedSubscript:@"queue-add"];

  v30 = [(MPCAMSEngagementEventConsumer *)self _JSONEncodableEvent:v47];
  [v41 setObject:v30 forKeyedSubscript:@"container-begin"];

  v31 = [(MPCAMSEngagementEventConsumer *)self _JSONEncodableEvent:v46];
  [v41 setObject:v31 forKeyedSubscript:@"item-begin"];

  v32 = [(MPCAMSEngagementEventConsumer *)self _JSONEncodableEvent:v45];
  [v41 setObject:v32 forKeyedSubscript:@"account"];

  v33 = [(MPCAMSEngagementEventConsumer *)self _JSONEncodableEvent:v27];
  [v41 setObject:v33 forKeyedSubscript:@"enqueuer-account"];

  [v49 setObject:v41 forKeyedSubscript:@"related-events"];
  v34 = MPCPlaybackEngineEventPayloadJSONFromPayload(v49);
  identifier = [eventCopy identifier];
  v36 = [identifier description];

  v37 = os_log_create("com.apple.amp.mediaplaybackcore", "Engagement_Oversize");
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v53 = objc_opt_class();
    v54 = 2114;
    v55 = v36;
    v56 = 2114;
    v57 = v34;
    _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_DEBUG, "%{public}@: started enqueueing event with id: %{public}@\nEvent: %{public}@", buf, 0x20u);
  }

  v38 = [(AMSEngagement *)self->_engagement enqueueData:v34];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __77__MPCAMSEngagementEventConsumer__enqueueDataForPlaybackChangingEvent_cursor___block_invoke;
  v50[3] = &unk_1E82319B0;
  v50[4] = self;
  v51 = v36;
  v39 = v36;
  [v38 addFinishBlock:v50];

  return 1;
}

void __77__MPCAMSEngagementEventConsumer__enqueueDataForPlaybackChangingEvent_cursor___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Engagement");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 40);
      v9 = [v4 treeDescription];
      v12 = 138543874;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Finished enqueueing event with id: %{public}@. error=%{public}@", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = *(a1 + 40);
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_INFO, "%{public}@: Finished enqueueing event with id: %{public}@.", &v12, 0x16u);
  }
}

- (void)unsubscribeFromEventStream:(id)stream
{
  subscription = self->_subscription;
  self->_subscription = 0;

  engagement = self->_engagement;
  self->_engagement = 0;
}

- (void)subscribeToEventStream:(id)stream
{
  objc_storeStrong(&self->_subscription, stream);
  streamCopy = stream;
  v6 = objc_alloc(MEMORY[0x1E698C8D8]);
  v7 = [MEMORY[0x1E698C7D8] bagForProfile:@"Music" profileVersion:@"1"];
  v8 = [v6 initWithBag:v7];
  engagement = self->_engagement;
  self->_engagement = v8;

  subscription = self->_subscription;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __56__MPCAMSEngagementEventConsumer_subscribeToEventStream___block_invoke;
  v21[3] = &unk_1E8232330;
  v21[4] = self;
  [(MPCPlaybackEngineEventStreamSubscription *)subscription subscribeToEventType:@"item-resume" handler:v21];
  v11 = self->_subscription;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __56__MPCAMSEngagementEventConsumer_subscribeToEventStream___block_invoke_2;
  v20[3] = &unk_1E8232330;
  v20[4] = self;
  [(MPCPlaybackEngineEventStreamSubscription *)v11 subscribeToEventType:@"item-position-jump" handler:v20];
  v12 = self->_subscription;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__MPCAMSEngagementEventConsumer_subscribeToEventStream___block_invoke_3;
  v19[3] = &unk_1E8232330;
  v19[4] = self;
  [(MPCPlaybackEngineEventStreamSubscription *)v12 subscribeToEventType:@"item-pause" handler:v19];
  v13 = self->_subscription;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__MPCAMSEngagementEventConsumer_subscribeToEventStream___block_invoke_4;
  v18[3] = &unk_1E8232330;
  v18[4] = self;
  [(MPCPlaybackEngineEventStreamSubscription *)v13 subscribeToEventType:@"item-end" handler:v18];
  v14 = self->_subscription;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__MPCAMSEngagementEventConsumer_subscribeToEventStream___block_invoke_5;
  v17[3] = &unk_1E8232330;
  v17[4] = self;
  [(MPCPlaybackEngineEventStreamSubscription *)v14 subscribeToEventType:@"application-termination" handler:v17];
  v15 = self->_subscription;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__MPCAMSEngagementEventConsumer_subscribeToEventStream___block_invoke_6;
  v16[3] = &unk_1E8232330;
  v16[4] = self;
  [(MPCPlaybackEngineEventStreamSubscription *)v15 subscribeToEventType:@"remote-control-begin" handler:v16];
}

@end