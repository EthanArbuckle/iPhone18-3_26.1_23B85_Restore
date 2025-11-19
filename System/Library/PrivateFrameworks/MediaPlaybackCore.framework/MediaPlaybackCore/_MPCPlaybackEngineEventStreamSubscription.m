@interface _MPCPlaybackEngineEventStreamSubscription
- (MPCPlaybackEngineEventConsumer)consumer;
- (MPCPlaybackEngineEventStream)eventStream;
- (NSString)debugDescription;
- (_MPCPlaybackEngineEventStreamSubscription)initWithConsumer:(id)a3 eventStream:(id)a4;
- (void)_locked_onQueue_eventEmitted:(id)a3;
- (void)_onQueue_enqueueIncrementalFlush;
- (void)_onQueue_flush:(uint64_t)a1;
- (void)cancelSubscription;
- (void)flushEventsWithCompletion:(id)a3;
- (void)subscribeToEventType:(id)a3 options:(unint64_t)a4 handler:(id)a5;
@end

@implementation _MPCPlaybackEngineEventStreamSubscription

- (MPCPlaybackEngineEventStream)eventStream
{
  WeakRetained = objc_loadWeakRetained(&self->_eventStream);

  return WeakRetained;
}

- (MPCPlaybackEngineEventConsumer)consumer
{
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  return WeakRetained;
}

- (void)_onQueue_enqueueIncrementalFlush
{
  WeakRetained = objc_loadWeakRetained(&self->_consumer);
  if (WeakRetained && self->_hasUnhandledEvents && !self->_hasEnqueuedIncrementalFlush)
  {
    v4 = objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 preferredQoSClass];
    }

    else
    {
      v5 = QOS_CLASS_UTILITY;
    }

    v6 = objc_loadWeakRetained(&self->_eventStream);
    v7 = v6;
    if (v6)
    {
      dispatch_assert_queue_V2(*(v6 + 10));
      self->_hasEnqueuedIncrementalFlush = 1;
      v8 = v7[11];
    }

    else
    {
      dispatch_assert_queue_V2(0);
      v8 = 0;
      self->_hasEnqueuedIncrementalFlush = 1;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77___MPCPlaybackEngineEventStreamSubscription__onQueue_enqueueIncrementalFlush__block_invoke;
    v12[3] = &unk_1E82392C0;
    v13 = v7;
    v14 = self;
    v9 = v7;
    v10 = v8;
    v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v5, 0, v12);
    dispatch_async(v10, v11);
  }
}

- (void)_onQueue_flush:(uint64_t)a1
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (!WeakRetained || *(a1 + 13) != 1)
  {
    goto LABEL_55;
  }

  v51 = [objc_opt_class() identifier];
  isa = objc_loadWeakRetained((a1 + 24));
  v4 = isa;
  if (isa)
  {
    isa = isa[10].isa;
  }

  dispatch_assert_queue_V2(isa);
  if ((a2 & 1) == 0 && [(MPCPlaybackEngineEventStream *)v4 isPerformingQuery])
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v4 engineID];
      *buf = 138543874;
      v66 = v6;
      v67 = 2114;
      v68 = v51;
      v69 = 2048;
      v70 = WeakRetained;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEBUG, "[EVS:%{public}@:%{public}@:%p] _onQueue_flush | yield without processing any event", buf, 0x20u);
    }

    goto LABEL_54;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = @"SELECT identifier, type, monoAbsolute, monoContinuous, monoTimebaseNS, userNS, threadPriority, payload, _ns FROM events WHERE _ns > @lastNS && _ns < @maximumNS ORDER BY _ns";
  }

  else
  {
    v8 = @"SELECT identifier, type, monoAbsolute, monoContinuous, monoTimebaseNS, userNS, threadPriority, payload, _ns FROM events WHERE _ns > @lastNS ORDER BY _ns";
  }

  v9 = [(MPCPlaybackEngineEventStream *)v4 sql];
  v60 = 0;
  v10 = [v9 statementWithString:v8 error:&v60];
  v5 = v60;

  [v10 bindUInt64Value:*(a1 + 40) toParameterNamed:@"@lastNS"];
  if (v7)
  {
    [v10 bindUInt64Value:v7 toParameterNamed:@"@maximumNS"];
  }

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v4 engineID];
    v13 = *(a1 + 40);
    *buf = 138544130;
    v66 = v12;
    v67 = 2114;
    v68 = v51;
    v69 = 2048;
    v70 = WeakRetained;
    v71 = 2048;
    v72 = v13;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEBUG, "[EVS:%{public}@:%{public}@:%p] _onQueue_flush | running query [] lastEventSuccessTimestamp=%llu", buf, 0x2Au);
  }

  if (v4)
  {
    v14 = v4[8].isa;
  }

  else
  {
    v14 = 0;
  }

  [(objc_class *)v14 resultsForStatement:v10];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v59 = 0u;
  v15 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
  v49 = v4;
  if (!v15)
  {
    v50 = 0;
    v17 = 0;
    goto LABEL_51;
  }

  v16 = v15;
  v44 = v10;
  v45 = v5;
  LODWORD(v17) = 0;
  v18 = *v57;
  v47 = *v57;
  while (2)
  {
    v19 = 0;
    v20 = v17;
    v17 = (v17 + 1);
    v46 = v20 + v16;
    v48 = v16;
    do
    {
      if (*v57 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v56 + 1) + 8 * v19);
      v22 = objc_autoreleasePoolPush();
      v23 = [v21 stringValueAtColumnIndex:1];
      v24 = [v21 uint64ValueAtColumnIndex:8];
      os_unfair_lock_lock((a1 + 8));
      v55 = v23;
      v25 = [*(a1 + 64) objectForKeyedSubscript:v23];
      os_unfair_lock_unlock((a1 + 8));
      if (v25)
      {
        v26 = [MPCPlaybackEngineEvent eventFromRowResult:v21];
        if (v26)
        {
          v27 = [[_MPCPlaybackEngineEventStreamCursor alloc] initWithEventStream:v4 startEvent:v26 endEvent:0];
          v28 = (v25)[2](v25, v26, v27);
          *(a1 + 14) = v28;
          v50 = v28;
          if (!v28)
          {
            goto LABEL_50;
          }

          v29 = [v4 testingDelegate];

          if (!v29)
          {
            _MPCPlaybackEngineEventStreamValidateSystemTime(v55, v24);
          }

          v30 = *(a1 + 40);
          if (v30 && v24 - v30 >= 0x34630B8A001)
          {
            v31 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = [v4 engineID];
              v33 = v24 - *(a1 + 40);
              *buf = 138544130;
              v66 = v32;
              v67 = 2114;
              v68 = v51;
              v69 = 2048;
              v70 = WeakRetained;
              v71 = 2048;
              v72 = v33;
              _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_INFO, "[EVS:%{public}@:%{public}@:%p] _onQueue_flush | unusual delay between events [more than 5m between events] delta=%lluns", buf, 0x2Au);

              v4 = v49;
            }
          }

          *(a1 + 40) = v24;
          v34 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v35 = [v4 engineID];
            *buf = 138544130;
            v66 = v35;
            v67 = 2114;
            v68 = v51;
            v69 = 2048;
            v70 = WeakRetained;
            v71 = 2048;
            v72 = v24;
            _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEBUG, "[EVS:%{public}@:%{public}@:%p] _onQueue_flush | updating bookmark [successful delivery] lastEventSuccessTimestamp=%llu", buf, 0x2Au);

            v4 = v49;
          }

          if ((a2 & 1) == 0 && [(MPCPlaybackEngineEventStream *)v4 isPerformingQuery])
          {
            v37 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v38 = [v4 engineID];
              *buf = 138543874;
              v66 = v38;
              v67 = 2114;
              v68 = v51;
              v69 = 2048;
              v70 = WeakRetained;
              _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_DEBUG, "[EVS:%{public}@:%{public}@:%p] _onQueue_flush | yield without processing all events", buf, 0x20u);

              v4 = v49;
            }

LABEL_50:
            objc_autoreleasePoolPop(v22);
            v10 = v44;
            v5 = v45;
            goto LABEL_51;
          }

          v18 = v47;
          v16 = v48;
        }
      }

      else
      {
        if (*(a1 + 14) != 1)
        {
          goto LABEL_43;
        }

        *(a1 + 40) = v24;
        v26 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v36 = [v4 engineID];
          *buf = 138544130;
          v66 = v36;
          v67 = 2114;
          v68 = v51;
          v69 = 2048;
          v70 = WeakRetained;
          v71 = 2048;
          v72 = v24;
          _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_DEBUG, "[EVS:%{public}@:%{public}@:%p] _onQueue_flush | updating bookmark [unsubscribed event] lastEventSuccessTimestamp=%llu", buf, 0x2Au);

          v4 = v49;
        }
      }

LABEL_43:
      objc_autoreleasePoolPop(v22);
      ++v19;
      v17 = (v17 + 1);
    }

    while (v16 != v19);
    v16 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
    v17 = v46;
    if (v16)
    {
      continue;
    }

    break;
  }

  v50 = 0;
  v10 = v44;
  v5 = v45;
LABEL_51:

  [v10 invalidate];
  if (v17 >= 1001)
  {
    v39 = MEMORY[0x1E69B13D8];
    v40 = *MEMORY[0x1E69B1340];
    v61 = @"EventCount";
    v41 = [MEMORY[0x1E696AD98] numberWithInt:v17];
    v62 = v41;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v63 = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
    [v39 snapshotWithDomain:v40 type:@"Bug" subType:@"LargeEVSFlushWindow" context:v51 triggerThresholdValues:&stru_1F454A698 events:v43 completion:0];

    v4 = v49;
  }

  *(a1 + 13) = v50;

LABEL_54:
LABEL_55:
}

- (void)_locked_onQueue_eventEmitted:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_hasUnhandledEvents)
  {
    v7 = v4;
    v6 = [(NSMutableDictionary *)self->_eventHandlers objectForKeyedSubscript:v4];

    v5 = v7;
    if (v6)
    {
      self->_hasUnhandledEvents = 1;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)subscribeToEventType:(id)a3 options:(unint64_t)a4 handler:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  aBlock = a5;
  WeakRetained = objc_loadWeakRetained(&self->_consumer);
  v11 = objc_loadWeakRetained(&self->_eventStream);
  v12 = [objc_opt_class() identifier];
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v11 engineID];
    *buf = 138544386;
    v24 = v14;
    v25 = 2114;
    v26 = v12;
    v27 = 2048;
    v28 = WeakRetained;
    v29 = 2114;
    v30 = v9;
    v31 = 2048;
    v32 = a4;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEBUG, "[EVS:%{public}@:%{public}@:%p] subscribeToEventType:%{public}@ options:%llu | adding handlers", buf, 0x34u);
  }

  os_unfair_lock_lock(&self->_lock);
  v15 = [(NSMutableDictionary *)self->_mutatingEventHandlers objectForKeyedSubscript:v9];

  if (v15)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEventStream.m" lineNumber:898 description:{@"Consumer %@ already has a mutating subscription to %@", v12, v9}];
  }

  v16 = [(NSMutableDictionary *)self->_eventHandlers objectForKeyedSubscript:v9];

  if (v16)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEventStream.m" lineNumber:899 description:{@"Consumer %@ already has a subscription to %@", v12, v9}];
  }

  v17 = ~a4;
  v18 = _Block_copy(aBlock);
  if ((v17 & 0x101) != 0)
  {
    p_eventHandlers = &self->_eventHandlers;
  }

  else
  {
    p_eventHandlers = &self->_mutatingEventHandlers;
  }

  [(NSMutableDictionary *)*p_eventHandlers setObject:v18 forKeyedSubscript:v9];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)flushEventsWithCompletion:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_consumer);
  v6 = objc_loadWeakRetained(&self->_eventStream);
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v6 engineID];
    v9 = [objc_opt_class() identifier];
    *buf = 138543874;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    v22 = 2048;
    v23 = WeakRetained;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEBUG, "[EVS:%{public}@:%{public}@:%p] flushEventsWithCompletion:… | flushing events async", buf, 0x20u);
  }

  if (v6)
  {
    v10 = v6[10];
  }

  else
  {
    v10 = 0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71___MPCPlaybackEngineEventStreamSubscription_flushEventsWithCompletion___block_invoke;
  v14[3] = &unk_1E8237160;
  v14[4] = self;
  v15 = v6;
  v16 = WeakRetained;
  v17 = v4;
  v11 = v4;
  v12 = WeakRetained;
  v13 = v6;
  dispatch_async(v10, v14);
}

- (void)cancelSubscription
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_consumer);
  v4 = objc_loadWeakRetained(&self->_eventStream);
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 engineID];
    v7 = [objc_opt_class() identifier];
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = WeakRetained;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEBUG, "[EVS:%{public}@:%{public}@:%p] cancelSubscription | removing handlers", &v8, 0x20u);
  }

  [(NSMutableDictionary *)self->_mutatingEventHandlers removeAllObjects];
  [(NSMutableDictionary *)self->_eventHandlers removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)debugDescription
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(NSMutableDictionary *)self->_mutatingEventHandlers allKeys];
  [v3 addObjectsFromArray:v4];

  v5 = [(NSMutableDictionary *)self->_eventHandlers allKeys];
  [v3 addObjectsFromArray:v5];

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_consumer);
  v9 = [objc_opt_class() identifier];
  v10 = [v6 stringWithFormat:@"<%@: %p consumer=%@ events=%@>", v7, self, v9, v3];

  return v10;
}

- (_MPCPlaybackEngineEventStreamSubscription)initWithConsumer:(id)a3 eventStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = _MPCPlaybackEngineEventStreamSubscription;
  v8 = [(_MPCPlaybackEngineEventStreamSubscription *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_consumer, v6);
    objc_storeWeak(&v9->_eventStream, v7);
    v10 = MEMORY[0x1E696AEC0];
    objc_opt_self();
    if (processID_onceToken != -1)
    {
      dispatch_once(&processID_onceToken, &__block_literal_global_251);
    }

    v11 = processID_processID;
    v12 = [v7 engineID];
    v13 = [v10 stringWithFormat:@"%@:%@", v11, v12];
    streamID = v9->_streamID;
    v9->_streamID = v13;

    v15 = [MEMORY[0x1E695DF90] dictionary];
    mutatingEventHandlers = v9->_mutatingEventHandlers;
    v9->_mutatingEventHandlers = v15;

    v17 = [MEMORY[0x1E695DF90] dictionary];
    eventHandlers = v9->_eventHandlers;
    v9->_eventHandlers = v17;
  }

  return v9;
}

@end