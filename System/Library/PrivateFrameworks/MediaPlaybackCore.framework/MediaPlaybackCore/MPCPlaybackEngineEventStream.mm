@interface MPCPlaybackEngineEventStream
- (BOOL)performQueryReturningBOOL:(id)l;
- (MPCPlabackEngineEventStreamTestingDelegate)testingDelegate;
- (MPCPlaybackEngineEvent)lastEvent;
- (MPCPlaybackEngineEventStream)initWithDatabaseCreationBlock:(id)block;
- (MPCPlaybackEngineEventStream)initWithParameters:(id)parameters;
- (id)cachedEventWithTypes:(void *)types matchingPayload:(void *)payload cursor:;
- (id)debugDescription;
- (id)eventDeliveryDeferralAssertionOfType:(int64_t)type forReason:(id)reason withTimeout:(double)timeout;
- (id)lastEventsWithCount:(int64_t)count;
- (id)performQueryReturningObject:(id)object;
- (os_unfair_lock_s)_hasNoDeferralAssertions;
- (uint64_t)isPerformingQuery;
- (void)_onQueue_flushAndInvalidate;
- (void)_onQueue_flushIfReady;
- (void)_removeAllDatabasePackagesIn:(void *)in withPrefix:;
- (void)addConsumer:(id)consumer;
- (void)dealloc;
- (void)emitEventType:(id)type payload:(id)payload;
- (void)emitEventType:(id)type payload:(id)payload atTime:(id *)time;
- (void)flushEvents;
- (void)flushEventsWithConsumer:(id)consumer fromTimestamp:(unint64_t)timestamp untilTimestamp:(unint64_t)untilTimestamp;
- (void)invalidate;
- (void)performQuery:(id)query;
- (void)removeConsumer:(id)consumer;
- (void)resetConsumerEventDeliveryToTimestamp:(unint64_t)timestamp;
- (void)scheduleInvalidation;
- (void)setMaximumEventDeliveryTimestamp:(unint64_t)timestamp;
- (void)sql;
@end

@implementation MPCPlaybackEngineEventStream

- (MPCPlabackEngineEventStreamTestingDelegate)testingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);

  return WeakRetained;
}

- (os_unfair_lock_s)_hasNoDeferralAssertions
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 2);
    v2 = [*&v1[12]._os_unfair_lock_opaque count];
    if (v2 < 1)
    {
      v3 = v2;
    }

    else if ((os_trace_get_mode() & 8) != 0)
    {
      allObjects = [*&v1[12]._os_unfair_lock_opaque allObjects];
      v5 = [allObjects msv_filter:&__block_literal_global_5283];
      v3 = [v5 count];
    }

    else
    {
      v3 = 1;
    }

    os_unfair_lock_unlock(v1 + 2);
    return (v3 == 0);
  }

  return result;
}

- (void)sql
{
  if (self)
  {
    v2 = self[9];
    if (!v2)
    {
      v2 = self[8];
    }

    self = v2;
    v1 = vars8;
  }

  return self;
}

- (void)_onQueue_flushIfReady
{
  v13 = *MEMORY[0x1E69E9840];
  if (self && *(self + 96) <= 0 && ([*(self + 104) msv_isFuture] & 1) == 0 && -[MPCPlaybackEngineEventStream _hasNoDeferralAssertions](self) && (*(self + 17) & 1) == 0)
  {
    v2 = *(self + 104);
    *(self + 96) = 0;
    *(self + 104) = 0;

    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = *(self + 40);
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) _onQueue_enqueueIncrementalFlush];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)resetConsumerEventDeliveryToTimestamp:(unint64_t)timestamp
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__MPCPlaybackEngineEventStream_resetConsumerEventDeliveryToTimestamp___block_invoke;
  v4[3] = &unk_1E8239338;
  v4[4] = self;
  v4[5] = timestamp;
  dispatch_async(queue, v4);
}

void __70__MPCPlaybackEngineEventStream_resetConsumerEventDeliveryToTimestamp___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setLastEventSuccessTimestamp:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setMaximumEventDeliveryTimestamp:(unint64_t)timestamp
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__MPCPlaybackEngineEventStream_setMaximumEventDeliveryTimestamp___block_invoke;
  v4[3] = &unk_1E8239338;
  v4[4] = self;
  v4[5] = timestamp;
  dispatch_async(queue, v4);
}

void __65__MPCPlaybackEngineEventStream_setMaximumEventDeliveryTimestamp___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setMaximumEventDeliveryTimestamp:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)lastEventsWithCount:(int64_t)count
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_invalidated)
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      engineID = self->_engineID;
      v17 = 138543618;
      v18 = engineID;
      v19 = 1024;
      countCopy = count;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_ERROR, "[EVS:%{public}@] lastEventsWithCount:%d | returning empty [invalidated]", &v17, 0x12u);
    }

    v7 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v8 = [(MPCPlaybackEngineEventStream *)self sql];
    v9 = [v8 statementWithString:@"SELECT identifier error:{type, monoAbsolute, monoContinuous, monoTimebaseNS, userNS, threadPriority, payload, _ns FROM events ORDER BY _ns LIMIT @count", 0}];

    [v9 bindInt64Value:count toParameterNamed:@"@count"];
    v10 = [(MPCPlaybackEngineEventStream *)self sql];
    v11 = [v10 resultsForStatement:v9];

    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:count];
    nextObject = [v11 nextObject];
    if (nextObject)
    {
      v13 = nextObject;
      do
      {
        v14 = [MPCPlaybackEngineEvent eventFromRowResult:v13];
        if (v14)
        {
          [v7 addObject:v14];
        }

        nextObject2 = [v11 nextObject];

        v13 = nextObject2;
      }

      while (nextObject2);
    }

    [v9 invalidate];
  }

  return v7;
}

- (MPCPlaybackEngineEvent)lastEvent
{
  v2 = [(MPCPlaybackEngineEventStream *)self lastEventsWithCount:1];
  firstObject = [v2 firstObject];

  return firstObject;
}

- (BOOL)performQueryReturningBOOL:(id)l
{
  lCopy = l;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__MPCPlaybackEngineEventStream_performQueryReturningBOOL___block_invoke;
  v7[3] = &unk_1E82324E8;
  v9 = &v10;
  v5 = lCopy;
  v8 = v5;
  [(MPCPlaybackEngineEventStream *)self performQuery:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __58__MPCPlaybackEngineEventStream_performQueryReturningBOOL___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)performQueryReturningObject:(id)object
{
  objectCopy = object;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5088;
  v15 = __Block_byref_object_dispose__5089;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MPCPlaybackEngineEventStream_performQueryReturningObject___block_invoke;
  v8[3] = &unk_1E82324E8;
  v10 = &v11;
  v5 = objectCopy;
  v9 = v5;
  [(MPCPlaybackEngineEventStream *)self performQuery:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __60__MPCPlaybackEngineEventStream_performQueryReturningObject___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)performQuery:(id)query
{
  queryCopy = query;
  os_unfair_lock_lock(&self->_lock);
  self->_isPerformingQuery = 1;
  os_unfair_lock_unlock(&self->_lock);
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__MPCPlaybackEngineEventStream_performQuery___block_invoke;
  v7[3] = &unk_1E8239170;
  v7[4] = self;
  v8 = queryCopy;
  v6 = queryCopy;
  dispatch_sync(queue, v7);
  os_unfair_lock_lock(&self->_lock);
  self->_isPerformingQuery = 0;
  os_unfair_lock_unlock(&self->_lock);
}

void __45__MPCPlaybackEngineEventStream_performQuery___block_invoke(uint64_t a1)
{
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  MPCPlaybackEngineEventGetMonotonicTime(&v4);
  v2 = [_MPCPlaybackEngineEventStreamCursor alloc];
  v3 = [(_MPCPlaybackEngineEventStreamCursor *)v2 initWithEventStream:*(a1 + 32) fromNanoSeconds:v5 + *(&v5 + 1) endEvent:0];
  (*(*(a1 + 40) + 16))();
}

- (id)cachedEventWithTypes:(void *)types matchingPayload:(void *)payload cursor:
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  typesCopy = types;
  payloadCopy = payload;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 80));
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if (!_MPCPlaybackEngineEventTypeIsCacheable(*(*(&v22 + 1) + 8 * i)))
          {
            self = 0;
            goto LABEL_15;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    if (typesCopy)
    {
      v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(typesCopy, "count")}];
      _MPCPlaybackEngineEventFlattenPayload(typesCopy, v15, &unk_1F4599850);
    }

    else
    {
      v15 = 0;
    }

    reverseObjectEnumerator = [*(self + 56) reverseObjectEnumerator];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __76__MPCPlaybackEngineEventStream_cachedEventWithTypes_matchingPayload_cursor___block_invoke;
    v18[3] = &unk_1E8232538;
    v19 = v10;
    v20 = payloadCopy;
    v21 = v15;
    v10 = v15;
    self = [reverseObjectEnumerator msv_firstWhere:v18];

LABEL_15:
  }

  return self;
}

uint64_t __76__MPCPlaybackEngineEventStream_cachedEventWithTypes_matchingPayload_cursor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 type];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4 && (([*(a1 + 40) startEvent], (v6 = objc_claimAutoreleasedReturnValue()) == 0) || (v7 = v6, objc_msgSend(*(a1 + 40), "startEvent"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v3, "compare:", v8), v8, v7, v9 == -1)) && ((objc_msgSend(*(a1 + 40), "endEvent"), (v10 = objc_claimAutoreleasedReturnValue()) == 0) || (v11 = v10, objc_msgSend(*(a1 + 40), "endEvent"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v3, "compare:", v12), v12, v11, v13 == 1)))
  {
    v14 = 1;
    if (*(a1 + 48))
    {
      v15 = MEMORY[0x1E695DF90];
      v16 = [v3 payload];
      v17 = [v15 dictionaryWithCapacity:{objc_msgSend(v16, "count")}];

      v18 = [v3 payload];
      _MPCPlaybackEngineEventFlattenPayload(v18, v17, &unk_1F4599868);

      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 1;
      v19 = *(a1 + 48);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __76__MPCPlaybackEngineEventStream_cachedEventWithTypes_matchingPayload_cursor___block_invoke_2;
      v22[3] = &unk_1E8232510;
      v20 = v17;
      v23 = v20;
      v24 = &v25;
      [v19 enumerateKeysAndObjectsUsingBlock:v22];
      v14 = *(v26 + 24);

      _Block_object_dispose(&v25, 8);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void __76__MPCPlaybackEngineEventStream_cachedEventWithTypes_matchingPayload_cursor___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v7 == v9)
  {
  }

  else
  {
    v8 = [v9 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

- (void)flushEventsWithConsumer:(id)consumer fromTimestamp:(unint64_t)timestamp untilTimestamp:(unint64_t)untilTimestamp
{
  consumerCopy = consumer;
  v9 = [[_MPCPlaybackEngineEventStreamSubscription alloc] initWithConsumer:consumerCopy eventStream:self];
  [(_MPCPlaybackEngineEventStreamSubscription *)v9 setLastEventSuccessTimestamp:timestamp];
  [(_MPCPlaybackEngineEventStreamSubscription *)v9 setMaximumEventDeliveryTimestamp:untilTimestamp];
  [consumerCopy subscribeToEventStream:v9];

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__MPCPlaybackEngineEventStream_flushEventsWithConsumer_fromTimestamp_untilTimestamp___block_invoke;
  block[3] = &unk_1E8239298;
  v13 = v9;
  v11 = v9;
  dispatch_sync(queue, block);
}

void __85__MPCPlaybackEngineEventStream_flushEventsWithConsumer_fromTimestamp_untilTimestamp___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onQueue_flush];
  [*(a1 + 32) cancelSubscription];
  v2 = [*(a1 + 32) consumer];
  [v2 unsubscribeFromEventStream:*(a1 + 32)];
}

- (uint64_t)isPerformingQuery
{
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    v2 = *(self + 16);
    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)flushEvents
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MPCPlaybackEngineEventStream_flushEvents__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __43__MPCPlaybackEngineEventStream_flushEvents__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v1 = *(*(a1 + 32) + 40);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) _onQueue_flush];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)emitEventType:(id)type payload:(id)payload atTime:(id *)time
{
  v47 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  payloadCopy = payload;
  v40 = 0.0;
  v38 = 0u;
  v39 = 0u;
  MPCPlaybackEngineEventGetMonotonicTime(&v38);
  if ((time->var0 & 1) == 0)
  {
    v11 = v39;
    *&time->var0 = v38;
    *&time->var2 = v11;
    time->var4 = v40;
  }

  v22 = vdupq_n_s64(0x41CDCD6500000000uLL);
  v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{vaddvq_f64(vdivq_f64(vcvtq_f64_u64(v39), v22)), *&v22}];
  v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{vaddvq_f64(vdivq_f64(vcvtq_f64_u64(*&time->var2), v23))}];
  if (self->_invalidated)
  {
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      engineID = self->_engineID;
      [v13 timeIntervalSince1970];
      *buf = 138543874;
      v42 = engineID;
      v43 = 2114;
      v44 = typeCopy;
      v45 = 2048;
      v46 = v16;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "[EVS:%{public}@] emitEventType:%{public}@ | dropping event [invalidated] time=%{time_t}zd", buf, 0x20u);
    }
  }

  else
  {
    v17 = time->var2 + time->var3;
    testingDelegate = [(MPCPlaybackEngineEventStream *)self testingDelegate];

    if (!testingDelegate)
    {
      _MPCPlaybackEngineEventStreamValidateSystemTime(typeCopy, v17);
    }

    v19 = MSVGetCurrentThreadPriority();
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__MPCPlaybackEngineEventStream_emitEventType_payload_atTime___block_invoke;
    block[3] = &unk_1E82324C0;
    block[4] = self;
    v25 = typeCopy;
    v26 = v13;
    v21 = *&time->var2;
    v29 = *&time->var0;
    v30 = v21;
    var4 = time->var4;
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v27 = v12;
    v35 = a2;
    v37 = v19;
    v28 = payloadCopy;
    v36 = v17;
    dispatch_async(queue, block);
  }
}

void __61__MPCPlaybackEngineEventStream_emitEventType_payload_atTime___block_invoke(uint64_t a1)
{
  v130 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 17) != 1)
  {
    v2 = [MEMORY[0x1E696AFB0] UUID];
    if (*(a1 + 88) > *(a1 + 128))
    {
      [*(a1 + 48) timeIntervalSinceDate:*(a1 + 56)];
      if (v6 > 60.0)
      {
        v101 = [MEMORY[0x1E696AAA8] currentHandler];
        [v101 handleFailureInMethod:*(a1 + 152) object:*(a1 + 32) file:@"MPCPlaybackEngineEventStream.m" lineNumber:424 description:{@"Projected event date is too far in the future: %@ %@ %@", *(a1 + 48), *(a1 + 40), *(a1 + 64)}];
      }

      v7 = *(*(a1 + 32) + 104);
      if (!v7 || ([v7 earlierDate:*(a1 + 48)], v8 = objc_claimAutoreleasedReturnValue(), v9 = *(*(a1 + 32) + 104), v8, v8 == v9))
      {
        v10 = [*(a1 + 48) dateByAddingTimeInterval:0.1];
        v11 = *(a1 + 32);
        v12 = *(v11 + 104);
        *(v11 + 104) = v10;

        [*(*(a1 + 32) + 104) timeIntervalSinceNow];
        v14 = dispatch_time(0, (fabs(v13) * 1000000000.0));
        v15 = *(a1 + 32);
        v16 = *(v15 + 80);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __61__MPCPlaybackEngineEventStream_emitEventType_payload_atTime___block_invoke_71;
        block[3] = &unk_1E8239298;
        block[4] = v15;
        dispatch_after(v14, v16, block);
      }
    }

    v17 = *(a1 + 32);
    if (!*(v17 + 72))
    {
      v18 = [*(v17 + 64) transactionWithName:@"event emit" error:0];
      v19 = *(a1 + 32);
      v20 = *(v19 + 72);
      *(v19 + 72) = v18;

      v21 = dispatch_time(0, (*(*(a1 + 32) + 32) * 1000000000.0));
      v22 = *(a1 + 32);
      v23 = *(v22 + 80);
      v122[0] = MEMORY[0x1E69E9820];
      v122[1] = 3221225472;
      v122[2] = __61__MPCPlaybackEngineEventStream_emitEventType_payload_atTime___block_invoke_2;
      v122[3] = &unk_1E8239298;
      v122[4] = v22;
      dispatch_after(v21, v23, v122);
    }

    v107 = MPCPlaybackEngineEventPayloadJSONFromPayload(*(a1 + 64));
    v24 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a1 + 40);
      v26 = *(*(a1 + 32) + 24);
      [*(a1 + 48) timeIntervalSince1970];
      v27 = *(a1 + 88) + *(a1 + 96);
      *buf = 138544386;
      *&buf[4] = v26;
      *&buf[12] = 2114;
      *&buf[14] = v25;
      *&buf[22] = 2048;
      *&buf[24] = v28;
      *v127 = 2048;
      *&v127[2] = v27;
      v128 = 2114;
      v129 = v2;
      _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEBUG, "[EVS:%{public}@] emitEventType:%{public}@ payload:… atTime:%{time_t}zd | emitting event [] continuousTime=%ldns event.id=%{public}@", buf, 0x34u);
    }

    v29 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream_Oversize");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(a1 + 40);
      v31 = *(*(a1 + 32) + 24);
      [*(a1 + 48) timeIntervalSince1970];
      *buf = 138544386;
      *&buf[4] = v31;
      *&buf[12] = 2114;
      *&buf[14] = v30;
      *&buf[22] = 2048;
      *&buf[24] = v32;
      *v127 = 2114;
      *&v127[2] = v2;
      v128 = 2114;
      v129 = v107;
      _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_DEBUG, "[EVS:%{public}@] emitEventType:%{public}@ payload:… atTime:%{time_t}zd | emitting payload [] event.id=%{public}@ payload=%{public}@", buf, 0x34u);
    }

    v33 = [*(*(a1 + 32) + 72) statementWithString:@"INSERT INTO events (identifier error:{type, monoAbsolute, monoContinuous, monoTimebaseNS, userNS, threadPriority, payload) VALUES (@identifier, @type, @monoAbsolute, @monoContinuous, @monoTimebaseNS, @userNS, @threadPriority, @payload)", 0}];
    v34 = [v2 msv_UUIDData];
    [v33 bindDataValue:v34 toParameterNamed:@"@identifier"];

    [v33 bindStringValue:*(a1 + 40) toParameterNamed:@"@type"];
    [v33 bindUInt64Value:*(a1 + 80) toParameterNamed:@"@monoAbsolute"];
    [v33 bindUInt64Value:*(a1 + 88) toParameterNamed:@"@monoContinuous"];
    [v33 bindUInt64Value:*(a1 + 96) toParameterNamed:@"@monoTimebaseNS"];
    [v33 bindUInt64Value:(*(a1 + 104) * 1000000000.0) toParameterNamed:@"@userNS"];
    [v33 bindUInt64Value:*(a1 + 168) toParameterNamed:@"@threadPriority"];
    v121 = 0;
    [v33 bindJSONValue:v107 toParameterNamed:@"@payload" error:&v121];
    v35 = v121;
    v36 = [*(a1 + 32) testingDelegate];
    if (v35)
    {
      v37 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        v38 = *(a1 + 40);
        v39 = *(*(a1 + 32) + 24);
        [*(a1 + 48) timeIntervalSince1970];
        *buf = 138544386;
        *&buf[4] = v39;
        *&buf[12] = 2114;
        *&buf[14] = v38;
        *&buf[22] = 2048;
        *&buf[24] = v40;
        *v127 = 2114;
        *&v127[2] = v2;
        v128 = 2114;
        v129 = v35;
        _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_FAULT, "[EVS:%{public}@] emitEventType:%{public}@ payload:… atTime:%{time_t}zd | failed [json bind failure] event.id=%{public}@ error=%{public}@", buf, 0x34u);
      }

      if (v36)
      {
        v41 = MPCPlaybackEngineEventPayloadFromPayloadJSON(v107);
        v42 = [MPCPlaybackEngineEvent alloc];
        v43 = *(a1 + 40);
        v44 = *(a1 + 168);
        v45 = *(a1 + 88);
        *buf = *(a1 + 72);
        *&buf[16] = v45;
        *v127 = *(a1 + 104);
        v46 = [(MPCPlaybackEngineEvent *)v42 initWithType:v43 payload:v41 monotonicTime:buf threadPriority:v44 identifier:v2];
        [v36 eventStream:*(a1 + 32) didFailToEmitEvent:v46 error:v35];

        goto LABEL_56;
      }

LABEL_57:

      goto LABEL_58;
    }

    v47 = *(*(a1 + 32) + 72);
    v120 = 0;
    v48 = [v47 executeStatement:v33 error:&v120];
    v49 = v120;
    v41 = v49;
    if ((v48 & 1) == 0)
    {
      v88 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
      if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
      {
        v89 = *(a1 + 40);
        v90 = v41;
        v91 = *(*(a1 + 32) + 24);
        [*(a1 + 48) timeIntervalSince1970];
        *buf = 138544386;
        *&buf[4] = v91;
        v41 = v90;
        *&buf[12] = 2114;
        *&buf[14] = v89;
        *&buf[22] = 2048;
        *&buf[24] = v92;
        *v127 = 2114;
        *&v127[2] = v2;
        v128 = 2114;
        v129 = v90;
        _os_log_impl(&dword_1C5C61000, v88, OS_LOG_TYPE_FAULT, "[EVS:%{public}@] emitEventType:%{public}@ payload:… atTime:%{time_t}zd | failed [insert statement failed] event.id=%{public}@ error=%{public}@", buf, 0x34u);
      }

      if (v36)
      {
        v93 = MPCPlaybackEngineEventPayloadFromPayloadJSON(v107);
        v94 = [MPCPlaybackEngineEvent alloc];
        v95 = *(a1 + 40);
        v96 = *(a1 + 168);
        v97 = *(a1 + 88);
        *buf = *(a1 + 72);
        *&buf[16] = v97;
        *v127 = *(a1 + 104);
        v98 = [(MPCPlaybackEngineEvent *)v94 initWithType:v95 payload:v93 monotonicTime:buf threadPriority:v96 identifier:v2];
        [v36 eventStream:*(a1 + 32) didFailToEmitEvent:v98 error:v41];
      }

      [v33 invalidate];
LABEL_56:

      goto LABEL_57;
    }

    v102 = v49;
    v103 = v36;
    v104 = v33;
    v106 = v2;
    [v33 invalidate];
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    obj = *(*(a1 + 32) + 40);
    v50 = [obj countByEnumeratingWithState:&v116 objects:v125 count:16];
    if (!v50)
    {
      v52 = 0;
      v53 = 0;
      goto LABEL_55;
    }

    v51 = v50;
    v52 = 0;
    v53 = 0;
    v54 = *v117;
    v111 = *MEMORY[0x1E69B1340];
    v110 = *v117;
LABEL_24:
    v55 = 0;
    v112 = v51;
    while (1)
    {
      if (*v117 != v54)
      {
        objc_enumerationMutation(obj);
      }

      v56 = *(*(&v116 + 1) + 8 * v55);
      if ([(os_unfair_lock_s *)v56 lastEventSuccessTimestamp]> *(a1 + 160))
      {
        break;
      }

LABEL_35:
      os_unfair_lock_lock(v56 + 2);
      [(os_unfair_lock_s *)v56 _locked_onQueue_eventEmitted:*(a1 + 40)];
      v75 = [(os_unfair_lock_s *)v56 mutatingEventHandlers];
      v76 = [v75 objectForKeyedSubscript:*(a1 + 40)];

      os_unfair_lock_unlock(v56 + 2);
      if (!v53)
      {
        if ((_MPCPlaybackEngineEventTypeIsCacheable(*(a1 + 40)) & 1) == 0 && !v76)
        {
          v53 = 0;
          goto LABEL_46;
        }

        v77 = MPCPlaybackEngineEventPayloadFromPayloadJSON(v107);
        v78 = [MPCPlaybackEngineEvent alloc];
        v79 = *(a1 + 40);
        v80 = *(a1 + 168);
        v81 = *(a1 + 88);
        *buf = *(a1 + 72);
        *&buf[16] = v81;
        *v127 = *(a1 + 104);
        v82 = [(MPCPlaybackEngineEvent *)v78 initWithType:v79 payload:v77 monotonicTime:buf threadPriority:v80 identifier:v106];
        v83 = *(a1 + 32);
        v84 = v82;
        if (v83)
        {
          dispatch_assert_queue_V2(*(v83 + 80));
          v85 = [(MPCPlaybackEngineEvent *)v84 type];
          IsCacheable = _MPCPlaybackEngineEventTypeIsCacheable(v85);

          if (IsCacheable)
          {
            [*(v83 + 56) addObject:v84];
            [*(v83 + 56) sortUsingSelector:sel_compare_];
            if ([*(v83 + 56) count] >= 0x65)
            {
              [*(v83 + 56) removeObjectsInRange:{0, objc_msgSend(*(v83 + 56), "count") - 100}];
            }
          }
        }

        v87 = [[_MPCPlaybackEngineEventStreamCursor alloc] initWithEventStream:*(a1 + 32) startEvent:v84 endEvent:0];
        v52 = v87;
        v53 = v84;
        v54 = v110;
        if (!v76)
        {
          goto LABEL_46;
        }

LABEL_37:
        (v76)[2](v76, v53, v52);
        goto LABEL_46;
      }

      if (v76)
      {
        goto LABEL_37;
      }

LABEL_46:

      if (v51 == ++v55)
      {
        v51 = [obj countByEnumeratingWithState:&v116 objects:v125 count:16];
        if (!v51)
        {
LABEL_55:

          ++*(*(a1 + 32) + 96);
          v99 = *(a1 + 32);
          v100 = *(v99 + 80);
          v115[0] = MEMORY[0x1E69E9820];
          v115[1] = 3221225472;
          v115[2] = __61__MPCPlaybackEngineEventStream_emitEventType_payload_atTime___block_invoke_112;
          v115[3] = &unk_1E8239298;
          v115[4] = v99;
          dispatch_async(v100, v115);

          v2 = v106;
          v35 = 0;
          v33 = v104;
          v41 = v102;
          v36 = v103;
          goto LABEL_56;
        }

        goto LABEL_24;
      }
    }

    v57 = [(os_unfair_lock_s *)v56 consumer];
    v58 = *(a1 + 40);
    v59 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
    v60 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
    v114 = v53;
    if (v58 == @"item-position-jump")
    {
      if (v60)
      {
        v105 = *(a1 + 40);
        v109 = v52;
        v66 = *(*(a1 + 32) + 24);
        [*(a1 + 48) timeIntervalSince1970];
        v68 = v67;
        v65 = [objc_opt_class() identifier];
        v69 = [*(a1 + 64) objectForKeyedSubscript:@"item-jump-identifier"];
        *buf = 138544386;
        *&buf[4] = v66;
        v52 = v109;
        *&buf[12] = 2114;
        *&buf[14] = v105;
        *&buf[22] = 2048;
        *&buf[24] = v68;
        *v127 = 2114;
        *&v127[2] = v65;
        v128 = 2114;
        v129 = v69;
        _os_log_impl(&dword_1C5C61000, v59, OS_LOG_TYPE_ERROR, "[EVS:%{public}@] emitEventType:%{public}@ payload:… atTime:%{time_t}zd | subscriber ahead of event [backdated jump event] consumer=%{public}@ jumpIdentifier=%{public}@", buf, 0x34u);

        goto LABEL_33;
      }
    }

    else if (v60)
    {
      v108 = *(a1 + 40);
      v61 = *(*(a1 + 32) + 24);
      [*(a1 + 48) timeIntervalSince1970];
      v62 = v52;
      v64 = v63;
      v65 = [objc_opt_class() identifier];
      *buf = 138544130;
      *&buf[4] = v61;
      *&buf[12] = 2114;
      *&buf[14] = v108;
      *&buf[22] = 2048;
      *&buf[24] = v64;
      v52 = v62;
      v54 = v110;
      *v127 = 2114;
      *&v127[2] = v65;
      _os_log_impl(&dword_1C5C61000, v59, OS_LOG_TYPE_ERROR, "[EVS:%{public}@] emitEventType:%{public}@ payload:… atTime:%{time_t}zd | subscriber ahead of event [out of order delivery] consumer=%{public}@", buf, 0x2Au);
LABEL_33:
    }

    v70 = MEMORY[0x1E69B13D8];
    v71 = *(a1 + 40);
    v72 = [objc_opt_class() identifier];
    v73 = *(a1 + 64);
    v124[0] = v72;
    v124[1] = v73;
    v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:2];
    [v70 snapshotWithDomain:v111 type:@"Bug" subType:@"EVSSubscriberAheadOfEvent" context:v71 triggerThresholdValues:0 events:v74 completion:0];

    v51 = v112;
    v53 = v114;
    goto LABEL_35;
  }

  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 24);
    [*(a1 + 48) timeIntervalSince1970];
    *buf = 138543874;
    *&buf[4] = v4;
    *&buf[12] = 2114;
    *&buf[14] = v3;
    *&buf[22] = 2048;
    *&buf[24] = v5;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_ERROR, "[EVS:%{public}@] emitEventType:%{public}@ | dropping event [invalidated] time=%{time_t}zd", buf, 0x20u);
  }

LABEL_58:
}

void __61__MPCPlaybackEngineEventStream_emitEventType_payload_atTime___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 72) commit];
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;
}

- (void)emitEventType:(id)type payload:(id)payload
{
  payloadCopy = payload;
  typeCopy = type;
  MPCPlaybackEngineEventGetMonotonicTime(v8);
  [(MPCPlaybackEngineEventStream *)self emitEventType:typeCopy payload:payloadCopy atTime:v8];
}

- (id)eventDeliveryDeferralAssertionOfType:(int64_t)type forReason:(id)reason withTimeout:(double)timeout
{
  v29 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (!reasonCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEventStream.m" lineNumber:370 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  v10 = [[_MPCPlaybackEngineEventStreamDeferralAssertion alloc] initWithEventStream:self type:type reason:reasonCopy timeout:timeout];
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_deferralAssertions addObject:v10];
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    engineID = self->_engineID;
    identifier = [(_MPCPlaybackEngineEventStreamDeferralAssertion *)v10 identifier];
    v14 = [(NSHashTable *)self->_deferralAssertions count];
    *buf = 138544642;
    v18 = engineID;
    v19 = 1024;
    typeCopy = type;
    v21 = 2048;
    timeoutCopy = timeout;
    v23 = 2114;
    v24 = reasonCopy;
    v25 = 2114;
    v26 = identifier;
    v27 = 1024;
    v28 = v14;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[EVS:%{public}@] eventDeliveryDeferralAssertionOfType:%d reason:… timeout:%g | taking assertion [%{public}@] id=%{public}@ assertionCount=%d", buf, 0x36u);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (void)removeConsumer:(id)consumer
{
  v18 = *MEMORY[0x1E69E9840];
  consumerCopy = consumer;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    engineID = self->_engineID;
    identifier = [objc_opt_class() identifier];
    *buf = 138543874;
    v13 = engineID;
    v14 = 2114;
    v15 = identifier;
    v16 = 2048;
    v17 = consumerCopy;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEBUG, "[EVS:%{public}@] removeConsumer:<%{public}@: %p>", buf, 0x20u);
  }

  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__MPCPlaybackEngineEventStream_removeConsumer___block_invoke;
  v10[3] = &unk_1E82392C0;
  v10[4] = self;
  v11 = consumerCopy;
  v9 = consumerCopy;
  dispatch_async(queue, v10);
}

void __47__MPCPlaybackEngineEventStream_removeConsumer___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 consumer];
        v9 = *(a1 + 40);

        if (v8 == v9)
        {
          [*(*(a1 + 32) + 40) removeObject:v7];
          [v7 cancelSubscription];
          [*(a1 + 40) unsubscribeFromEventStream:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)addConsumer:(id)consumer
{
  v19 = *MEMORY[0x1E69E9840];
  consumerCopy = consumer;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    engineID = self->_engineID;
    identifier = [objc_opt_class() identifier];
    *buf = 138543874;
    v14 = engineID;
    v15 = 2114;
    v16 = identifier;
    v17 = 2048;
    v18 = consumerCopy;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEBUG, "[EVS:%{public}@] addConsumer:<%{public}@: %p>", buf, 0x20u);
  }

  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__MPCPlaybackEngineEventStream_addConsumer___block_invoke;
  v10[3] = &unk_1E82392C0;
  v11 = consumerCopy;
  selfCopy = self;
  v9 = consumerCopy;
  dispatch_async(queue, v10);
}

void __44__MPCPlaybackEngineEventStream_addConsumer___block_invoke(uint64_t a1)
{
  v2 = [[_MPCPlaybackEngineEventStreamSubscription alloc] initWithConsumer:*(a1 + 32) eventStream:*(a1 + 40)];
  [*(*(a1 + 40) + 40) addObject:v2];
  [*(a1 + 32) subscribeToEventStream:v2];
}

- (id)debugDescription
{
  v6.receiver = self;
  v6.super_class = MPCPlaybackEngineEventStream;
  v3 = [(MPCPlaybackEngineEventStream *)&v6 debugDescription];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"\n - Database: %@", self->_database];
  [v4 appendFormat:@"\n - Subscriptions: %@", self->_subscriptions];
  os_unfair_lock_lock(&self->_lock);
  [v4 appendFormat:@"\n - Assertions: %@", self->_deferralAssertions];
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)scheduleInvalidation
{
  if (!self->_invalidated)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__MPCPlaybackEngineEventStream_scheduleInvalidation__block_invoke;
    block[3] = &unk_1E8239298;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_onQueue_flushAndInvalidate
{
  v34 = *MEMORY[0x1E69E9840];
  if (self && (*(self + 17) & 1) == 0)
  {
    v2 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(self + 24);
      *buf = 138543362;
      v28 = v3;
      _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "[EVS:%{public}@] invalidate | invalidating event stream", buf, 0xCu);
    }

    os_unfair_lock_lock((self + 8));
    [*(self + 48) removeAllObjects];
    os_unfair_lock_unlock((self + 8));
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = *(self + 40);
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          [v9 _onQueue_flush];
          [v9 cancelSubscription];
          consumer = [v9 consumer];
          [consumer unsubscribeFromEventStream:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v23 objects:v33 count:16];
      }

      while (v6);
    }

    *(self + 17) = 1;
    databaseURL = [*(self + 64) databaseURL];
    v12 = objc_autoreleasePoolPush();
    v13 = *(self + 72);
    *(self + 72) = 0;

    v14 = *(self + 64);
    *(self + 64) = 0;

    objc_autoreleasePoolPop(v12);
    if (databaseURL)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v22 = 0;
      [defaultManager removeItemAtURL:databaseURL error:&v22];
      v16 = v22;

      v17 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
      v18 = v17;
      if (v16)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v19 = *(self + 24);
          treeDescription = [v16 treeDescription];
          *buf = 138543874;
          v28 = v19;
          v29 = 2114;
          v30 = databaseURL;
          v31 = 2114;
          v32 = treeDescription;
          _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "[EVS:%{public}@] invalidate | removing database [invalidation] url=%{public}@ error=%{public}@", buf, 0x20u);
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(self + 24);
          *buf = 138543618;
          v28 = v21;
          v29 = 2114;
          v30 = databaseURL;
          _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[EVS:%{public}@] invalidate | removing database [invalidation] url=%{public}@", buf, 0x16u);
        }

        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    dispatch_assert_queue_not_V2(self->_queue);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__MPCPlaybackEngineEventStream_invalidate__block_invoke;
    block[3] = &unk_1E8239298;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEventStream.m" lineNumber:310 description:@"EVS: deallocated before invalidation"];
  }

  notify_cancel(self->_deferralDebugToken);
  v5.receiver = self;
  v5.super_class = MPCPlaybackEngineEventStream;
  [(MPCPlaybackEngineEventStream *)&v5 dealloc];
}

- (MPCPlaybackEngineEventStream)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__MPCPlaybackEngineEventStream_initWithParameters___block_invoke;
  v8[3] = &unk_1E8232498;
  selfCopy = self;
  v10 = parametersCopy;
  v5 = parametersCopy;
  v6 = [(MPCPlaybackEngineEventStream *)selfCopy initWithDatabaseCreationBlock:v8];

  return v6;
}

id __51__MPCPlaybackEngineEventStream_initWithParameters___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) engineID];
  v3 = [v2 copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 URLsForDirectory:14 inDomains:1];
  v8 = [v7 lastObject];

  v9 = [v8 URLByAppendingPathComponent:@"com.apple.MediaPlaybackCore.PlaybackEventStreams" isDirectory:1];
  v10 = [v9 path];
  v42 = 0;
  v11 = [v6 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v42];
  v12 = v42;

  if (v11)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [*(a1 + 40) playerID];
    v15 = [*(a1 + 40) engineID];
    v16 = [v13 stringWithFormat:@"%@-%@.sqlpkg", v14, v15];
    v17 = [v9 URLByAppendingPathComponent:v16 isDirectory:1];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__MPCPlaybackEngineEventStream_initWithParameters___block_invoke_23;
    block[3] = &unk_1E8239310;
    v38 = *(a1 + 32);
    v39 = v9;
    v40 = *(a1 + 40);
    v18 = v6;
    v41 = v18;
    if (_block_invoke_onceToken != -1)
    {
      dispatch_once(&_block_invoke_onceToken, block);
    }

    [v18 removeItemAtURL:v17 error:0];
    v19 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v19 setBool:0 forKey:@"_MPC_CLEAR_EVS"];

    v20 = [v17 path];
    v36 = v12;
    v21 = [v18 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:0 error:&v36];
    v22 = v36;

    if (v21)
    {
      v23 = [v17 URLByAppendingPathComponent:@"Database" isDirectory:0];
      v35 = 0;
      v24 = [objc_alloc(MEMORY[0x1E69B1490]) initWithURL:v23 error:&v35];
      v25 = v35;
      if (v25 || !v24)
      {
        v32 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          v33 = *(*(a1 + 32) + 24);
          *buf = 138543874;
          v44 = v33;
          v45 = 2114;
          v46 = v23;
          v47 = 2114;
          v48 = v25;
          _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_FAULT, "[EVS:%{public}@] initWithParameters:… | unable to create events database [] url=%{public}@ error=%{public}@", buf, 0x20u);
        }

        v26 = [objc_alloc(MEMORY[0x1E69B1490]) initWithMemory];
      }

      else
      {
        v26 = v24;
      }

      v29 = v26;
    }

    else
    {
      v30 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        v31 = *(*(a1 + 32) + 24);
        *buf = 138543874;
        v44 = v31;
        v45 = 2114;
        v46 = v17;
        v47 = 2114;
        v48 = v22;
        _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_FAULT, "[EVS:%{public}@] initWithParameters:… | unable to create directory [] url=%{public}@ error=%{public}@", buf, 0x20u);
      }

      v29 = [objc_alloc(MEMORY[0x1E69B1490]) initWithMemory];
    }

    v12 = v22;
  }

  else
  {
    v27 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      v28 = *(*(a1 + 32) + 24);
      *buf = 138543874;
      v44 = v28;
      v45 = 2114;
      v46 = v9;
      v47 = 2114;
      v48 = v12;
      _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_FAULT, "[EVS:%{public}@] initWithParameters:… | unable to create directory [] url=%{public}@ error=%{public}@", buf, 0x20u);
    }

    v29 = [objc_alloc(MEMORY[0x1E69B1490]) initWithMemory];
  }

  return v29;
}

void __51__MPCPlaybackEngineEventStream_initWithParameters___block_invoke_23(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (+[MPCPlaybackEngine isSystemMusic](MPCPlaybackEngine, "isSystemMusic") || +[MPCPlaybackEngine isSystemPodcasts])
  {
    [(MPCPlaybackEngineEventStream *)*(a1 + 32) _removeAllDatabasePackagesIn:0 withPrefix:?];
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) playerID];
    [(MPCPlaybackEngineEventStream *)v2 _removeAllDatabasePackagesIn:v3 withPrefix:v4];
  }

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"_MPC_EVS_IN_DOCUMENTS_IS_CLEAN"];

  if ((v6 & 1) == 0)
  {
    v7 = [*(a1 + 56) URLsForDirectory:9 inDomains:1];
    v8 = [v7 lastObject];

    v9 = [v8 URLByAppendingPathComponent:@"PlaybackEventStreams" isDirectory:1];
    [(MPCPlaybackEngineEventStream *)*(a1 + 32) _removeAllDatabasePackagesIn:v9 withPrefix:0];
    v10 = *(a1 + 56);
    v15 = 0;
    [v10 removeItemAtURL:v9 error:&v15];
    v11 = v15;
    if (v11)
    {
      v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v9 path];
        *buf = 138543618;
        v17 = v13;
        v18 = 2114;
        v19 = v11;
        _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_ERROR, "Failed to remove legacy EVS container folder: %{public}@ error: %{public}@", buf, 0x16u);
      }
    }

    v14 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v14 setBool:1 forKey:@"_MPC_EVS_IN_DOCUMENTS_IS_CLEAN"];
  }
}

- (void)_removeAllDatabasePackagesIn:(void *)in withPrefix:
{
  v51[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  inCopy = in;
  selfCopy = self;
  if (self)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v7 = *MEMORY[0x1E695DB78];
    v51[0] = *MEMORY[0x1E695DB78];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
    v43 = 0;
    v35 = defaultManager;
    v9 = [defaultManager contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v8 options:4 error:&v43];
    v10 = v43;

    if (v10)
    {
      v11 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(selfCopy + 24);
        *buf = 138543875;
        v46 = v12;
        v47 = 2113;
        v48 = v5;
        v49 = 2114;
        v50 = v10;
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "[EVS:%{public}@] _removeAllDatabasePackages | unable to list directory [] url=%{private}@ error=%{public}@", buf, 0x20u);
      }
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v11 = v9;
      v13 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v13)
      {
        v14 = v13;
        v31 = v9;
        v32 = v5;
        v10 = 0;
        v15 = *v40;
        v16 = inCopy;
        do
        {
          v17 = 0;
          v36 = v14;
          do
          {
            if (*v40 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v18 = *(*(&v39 + 1) + 8 * v17);
            v38 = 0;
            [v18 getResourceValue:&v38 forKey:v7 error:{0, v31, v32}];
            v19 = v38;
            if ([v19 BOOLValue])
            {
              v20 = v7;
              v21 = v11;
              if (v16 && ([v18 lastPathComponent], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "hasPrefix:", v16), v22, (v23 & 1) == 0))
              {
                v26 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  v29 = *(selfCopy + 24);
                  *buf = 138543875;
                  v46 = v29;
                  v47 = 2113;
                  v48 = v18;
                  v49 = 2114;
                  v50 = v16;
                  _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_DEFAULT, "[EVS:%{public}@] _removeAllDatabasePackages | skipped [unmatched prefix] url=%{private}@ prefix=%{public}@", buf, 0x20u);
                }
              }

              else
              {
                v37 = v10;
                [v35 removeItemAtURL:v18 error:&v37];
                v24 = v37;

                v25 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
                v26 = v25;
                if (v24)
                {
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    v27 = *(selfCopy + 24);
                    treeDescription = [v24 treeDescription];
                    *buf = 138543874;
                    v46 = v27;
                    v16 = inCopy;
                    v47 = 2114;
                    v48 = v18;
                    v49 = 2114;
                    v50 = treeDescription;
                    _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_ERROR, "[EVS:%{public}@] _removeAllDatabasePackages | removing database package [] url=%{public}@ error=%{public}@", buf, 0x20u);
                  }

                  v10 = v24;
                }

                else
                {
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                  {
                    v30 = *(selfCopy + 24);
                    *buf = 138543618;
                    v46 = v30;
                    v47 = 2114;
                    v48 = v18;
                    _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_DEFAULT, "[EVS:%{public}@] _removeAllDatabasePackages | removing database package [] url=%{public}@", buf, 0x16u);
                  }

                  v10 = 0;
                }
              }

              v11 = v21;
              v7 = v20;
              v14 = v36;
            }

            ++v17;
          }

          while (v14 != v17);
          v14 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v14);
        v9 = v31;
        v5 = v32;
      }

      else
      {
        v10 = 0;
      }
    }
  }
}

- (MPCPlaybackEngineEventStream)initWithDatabaseCreationBlock:(id)block
{
  blockCopy = block;
  v23.receiver = self;
  v23.super_class = MPCPlaybackEngineEventStream;
  v5 = [(MPCPlaybackEngineEventStream *)&v23 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_UTILITY, 0);
    v8 = dispatch_queue_create("com.apple.MediaPlaybackCore.MPCPlaybackEngineEventStream/access", v7);
    v9 = *(v5 + 10);
    *(v5 + 10) = v8;

    v10 = dispatch_workloop_create("com.apple.MediaPlaybackCore.MPCPlaybackEngineEventStream/consumerWorkloop");
    v11 = *(v5 + 11);
    *(v5 + 11) = v10;

    array = [MEMORY[0x1E695DF70] array];
    v13 = *(v5 + 5);
    *(v5 + 5) = array;

    v14 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    v15 = *(v5 + 6);
    *(v5 + 6) = v14;

    *(v5 + 2) = 0;
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:101];
    v17 = *(v5 + 7);
    *(v5 + 7) = v16;

    *(v5 + 17) = 0;
    *(v5 + 4) = 0x3FF0000000000000;
    v18 = *(v5 + 10);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __62__MPCPlaybackEngineEventStream_initWithDatabaseCreationBlock___block_invoke;
    v20[3] = &unk_1E8239170;
    v21 = v5;
    v22 = blockCopy;
    dispatch_async(v18, v20);
  }

  return v5;
}

void __62__MPCPlaybackEngineEventStream_initWithDatabaseCreationBlock___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    v8 = *(v6 + 64);
    *buf = 138543618;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_INFO, "[EVS:%{public}@] initWithDatabaseCreationBlock:… | created database [] database=%{public}@", buf, 0x16u);
  }

  v9 = [*(*(a1 + 32) + 64) transactionWithName:@"schema" error:0];
  v13 = 0;
  [v9 executeStatementString:@"CREATE TABLE IF NOT EXISTS events(identifier BLOB PRIMARY KEY error:{type TEXT, monoAbsolute INT, monoContinuous INT, monoTimebaseNS INT, userNS INT, threadPriority INT, payload TEXT, _ns INT UNIQUE GENERATED ALWAYS AS (monoTimebaseNS + monoContinuous) STORED)", &v13}];
  v10 = v13;
  if (v10)
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(a1 + 32) + 24);
      *buf = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "[EVS:%{public}@] initWithDatabaseCreationBlock:… | failed to create table [] error=%{public}@", buf, 0x16u);
    }
  }

  [v9 executeStatementString:@"CREATE UNIQUE INDEX IF NOT EXISTS events_ns ON events (_ns)" error:0];
  [v9 executeStatementString:@"CREATE INDEX IF NOT EXISTS events_type ON events (type error:{_ns)", 0}];
  [v9 commit];
}

@end