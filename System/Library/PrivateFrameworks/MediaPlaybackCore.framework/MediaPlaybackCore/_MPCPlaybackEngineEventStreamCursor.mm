@interface _MPCPlaybackEngineEventStreamCursor
- (NSString)description;
- (_MPCPlaybackEngineEventStreamCursor)initWithEventStream:(id)stream fromNanoSeconds:(unint64_t)seconds endEvent:(id)event;
- (_MPCPlaybackEngineEventStreamCursor)initWithEventStream:(id)stream startEvent:(id)event endEvent:(id)endEvent;
- (id)_statementForColumnsExpression:(void *)expression eventTypes:(void *)types payload:(uint64_t)payload limit:;
- (id)_statementForEventTypes:(void *)types payload:(uint64_t)payload limit:;
- (id)cursorFromEvent:(id)event untilEvent:(id)untilEvent;
- (id)cursorUntilEvent:(id)event;
- (id)findPreviousEventWithType:(id)type matchingPayload:(id)payload;
- (id)findPreviousEventWithTypes:(id)types matchingPayload:(id)payload;
- (int64_t)countOfPreviousEventsWithType:(id)type matchingPayload:(id)payload;
- (int64_t)countOfPreviousEventsWithTypes:(id)types matchingPayload:(id)payload;
- (void)enumeratePreviousEventsWithType:(id)type matchingPayload:(id)payload usingBlock:(id)block;
- (void)enumeratePreviousEventsWithType:(id)type usingBlock:(id)block;
- (void)enumeratePreviousEventsWithTypes:(id)types matchingPayload:(id)payload usingBlock:(id)block;
@end

@implementation _MPCPlaybackEngineEventStreamCursor

- (id)findPreviousEventWithTypes:(id)types matchingPayload:(id)payload
{
  v31 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  payloadCopy = payload;
  eventStream = self->_eventStream;
  if (eventStream)
  {
    queue = eventStream->_queue;
  }

  else
  {
    queue = 0;
  }

  dispatch_assert_queue_V2(queue);
  v10 = self->_eventStream;
  if (v10 && v10->_invalidated)
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      engineID = [(MPCPlaybackEngineEventStream *)self->_eventStream engineID];
      *buf = 138543362;
      v26 = engineID;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "[EVS:%{public}@] findPreviousEventsWithTypes:… | return nil [invalidated]", buf, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    v14 = [(MPCPlaybackEngineEventStream *)v10 cachedEventWithTypes:typesCopy matchingPayload:payloadCopy cursor:self];
    if (v14)
    {
      v11 = v14;
      v13 = v11;
    }

    else
    {
      v15 = [(_MPCPlaybackEngineEventStreamCursor *)self _statementForEventTypes:typesCopy payload:payloadCopy limit:1];
      v16 = [(MPCPlaybackEngineEventStream *)&self->_eventStream->super.isa sql];
      v17 = [v16 resultsForStatement:v15];

      v24 = 0;
      v18 = [v17 nextObjectWithError:&v24];
      v19 = v24;
      if (v19)
      {
        v20 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          engineID2 = [(MPCPlaybackEngineEventStream *)self->_eventStream engineID];
          *buf = 134218498;
          v26 = engineID2;
          v27 = 2114;
          v28 = typesCopy;
          v29 = 2114;
          v30 = v19;
          _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_FAULT, "[EVS:%public}@] findPreviousEventsWithTypes:%{public}@ … | failed to find events [sql failure] error=%{public}@", buf, 0x20u);
        }

        v13 = 0;
      }

      else
      {
        if (v18)
        {
          v13 = [MPCPlaybackEngineEvent eventFromRowResult:v18];
          if (v13)
          {
            v22 = self->_eventStream;
            if (v22)
            {
              dispatch_assert_queue_V2(v22->_queue);
            }
          }
        }

        else
        {
          v13 = 0;
        }

        [v15 invalidate];
      }

      v11 = 0;
    }
  }

  return v13;
}

- (id)_statementForEventTypes:(void *)types payload:(uint64_t)payload limit:
{
  if (self)
  {
    self = [(_MPCPlaybackEngineEventStreamCursor *)self _statementForColumnsExpression:events.type eventTypes:events.monoAbsolute payload:events.monoContinuous limit:events.monoTimebaseNS, events.userNS, events.threadPriority, events.payload""), a2, types, payload];
    v4 = vars8;
  }

  return self;
}

- (id)_statementForColumnsExpression:(void *)expression eventTypes:(void *)types payload:(uint64_t)payload limit:
{
  v45 = *MEMORY[0x1E69E9840];
  v32 = a2;
  expressionCopy = expression;
  typesCopy = types;
  selfCopy = self;
  v34 = typesCopy;
  if (self)
  {
    v33 = MPCPlaybackEngineEventPayloadJSONFromPayload(typesCopy);
    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v34, "count")}];
    _MPCPlaybackEngineEventFlattenPayload(v33, v11, &unk_1F4599880);
    v12 = [expressionCopy count];
    if ((v12 + 2 * [v11 count] + 3) >= 0x3E7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__statementForColumnsExpression_eventTypes_payload_limit_ object:self file:@"MPCPlaybackEngineEventStream.m" lineNumber:1220 description:@"Query too large"];
    }

    v13 = [MEMORY[0x1E696AD60] stringWithFormat:@"SELECT %@ FROM events", v32];
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    if ([v11 count] && objc_msgSend(v11, "count") >= 1)
    {
      v15 = 0;
      do
      {
        [v13 appendFormat:@", json_tree(events.payload, @payload_key_%d) AS payload_%d", v15, v15];
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(payload_%d.value IS @payload_value_%d)", v15, v15];
        [v14 addObject:v16];

        ++v15;
      }

      while (v15 < [v11 count]);
    }

    if ([expressionCopy count] == 1)
    {
      [v14 addObject:@"events.type = @type"];
    }

    else if ([expressionCopy count] >= 2)
    {
      v17 = objc_msgSend(@"events.type IN ("), "mutableCopy";
      if ([expressionCopy count] >= 1)
      {
        v18 = 0;
        do
        {
          if (v18)
          {
            [v17 appendString:{@", "}];
          }

          [v17 appendFormat:@"@type_%d", v18++];
        }

        while (v18 < [expressionCopy count]);
      }

      [v17 appendString:@""]);
      [v14 addObject:v17];
    }

    [v14 addObject:@"_ns < @startNS"];
    if (*(self + 40))
    {
      [v14 addObject:@"_ns > @endNS"];
    }

    [v13 appendString:@" WHERE "];
    v19 = [v14 componentsJoinedByString:@" AND "];
    [v13 appendString:v19];

    [v13 appendString:@" ORDER BY _ns DESC"];
    if (payload >= 1)
    {
      [v13 appendFormat:@" LIMIT %lld", 1];
    }

    v20 = [(MPCPlaybackEngineEventStream *)*(self + 24) sql];
    v42 = 0;
    v31 = [v20 statementWithString:v13 error:&v42];
    v35 = v42;

    if (v35)
    {
      v21 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        engineID = [*(self + 24) engineID];
        *buf = 138543874;
        *&buf[4] = engineID;
        *&buf[12] = 2114;
        *&buf[14] = v13;
        *&buf[22] = 2114;
        v44 = v35;
        _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_FAULT, "[EVS:%{public}@] _statementForColumnsExpression:… | failed to create statement [sql failure] sql=%{public}@ error=%{public}@", buf, 0x20u);
      }

      v23 = 0;
    }

    else
    {
      [v31 bindUInt64Value:*(self + 8) toParameterNamed:@"@startNS"];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v44 = 0;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __95___MPCPlaybackEngineEventStreamCursor__statementForColumnsExpression_eventTypes_payload_limit___block_invoke;
      v37[3] = &unk_1E8232580;
      v40 = buf;
      v24 = v31;
      v41 = sel__statementForColumnsExpression_eventTypes_payload_limit_;
      v38 = v24;
      selfCopy2 = self;
      [v11 enumerateKeysAndObjectsUsingBlock:v37];
      if ([expressionCopy count] == 1)
      {
        firstObject = [expressionCopy firstObject];
        [v24 bindStringValue:firstObject toParameterNamed:@"@type"];
      }

      else if ([expressionCopy count] >= 2)
      {
        for (i = 0; i < [expressionCopy count]; ++i)
        {
          v27 = [expressionCopy objectAtIndexedSubscript:i];
          v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@type_%d", i];
          [v24 bindStringValue:v27 toParameterNamed:v28];
        }
      }

      if (*(selfCopy + 40))
      {
        [v24 bindUInt64Value:*(selfCopy + 16) toParameterNamed:@"@endNS"];
      }

      v23 = v24;

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)findPreviousEventWithType:(id)type matchingPayload:(id)payload
{
  v15 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v7 = typeCopy;
  if (typeCopy)
  {
    v14 = typeCopy;
    v8 = MEMORY[0x1E695DEC8];
    payloadCopy = payload;
    v10 = [v8 arrayWithObjects:&v14 count:1];
    v11 = [(_MPCPlaybackEngineEventStreamCursor *)self findPreviousEventWithTypes:v10 matchingPayload:payloadCopy, v14, v15];
  }

  else
  {
    payloadCopy2 = payload;
    v11 = [(_MPCPlaybackEngineEventStreamCursor *)self findPreviousEventWithTypes:MEMORY[0x1E695E0F0] matchingPayload:payloadCopy2];
  }

  return v11;
}

- (void)enumeratePreviousEventsWithTypes:(id)types matchingPayload:(id)payload usingBlock:(id)block
{
  v38 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  payloadCopy = payload;
  blockCopy = block;
  eventStream = self->_eventStream;
  if (eventStream)
  {
    queue = eventStream->_queue;
  }

  else
  {
    queue = 0;
  }

  dispatch_assert_queue_V2(queue);
  if (![typesCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEventStream.m" lineNumber:1148 description:@"Must provide event types to enumerate."];

    if (payloadCopy)
    {
      goto LABEL_5;
    }

LABEL_23:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEventStream.m" lineNumber:1149 description:{@"Invalid parameter not satisfying: %@", @"payload"}];

    goto LABEL_5;
  }

  if (!payloadCopy)
  {
    goto LABEL_23;
  }

LABEL_5:
  v14 = self->_eventStream;
  if (v14 && v14->_invalidated)
  {
    v15 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      engineID = [(MPCPlaybackEngineEventStream *)self->_eventStream engineID];
      *buf = 138543362;
      v33 = engineID;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_ERROR, "[EVS:%{public}@] enumeratePreviousEventsWithType:… | skipping enumeration [invalidated]", buf, 0xCu);
    }
  }

  else
  {
    v15 = [(_MPCPlaybackEngineEventStreamCursor *)self _statementForEventTypes:typesCopy payload:payloadCopy limit:0];
    v17 = [(MPCPlaybackEngineEventStream *)&self->_eventStream->super.isa sql];
    v18 = [v17 resultsForStatement:v15];

    v31 = 0;
    v30 = 0;
    v19 = [v18 nextObjectWithError:&v30];
    v20 = v30;
    v21 = v20;
    if (v19)
    {
      do
      {
        v22 = objc_autoreleasePoolPush();
        v23 = [MPCPlaybackEngineEvent eventFromRowResult:v19];
        if (v23)
        {
          blockCopy[2](blockCopy, v23, &v31);
        }

        objc_autoreleasePoolPop(v22);
        v30 = v21;
        v24 = [v18 nextObjectWithError:&v30];
        v25 = v30;

        if (!v24)
        {
          break;
        }

        v21 = v25;
        v19 = v24;
      }

      while ((v31 & 1) == 0);
    }

    else
    {
      v25 = v20;
    }

    [v15 invalidate];
    if (v25)
    {
      v26 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        engineID2 = [(MPCPlaybackEngineEventStream *)self->_eventStream engineID];
        *buf = 138543874;
        v33 = engineID2;
        v34 = 2114;
        v35 = typesCopy;
        v36 = 2114;
        v37 = v25;
        _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_FAULT, "[EVS:%{public}@] enumeratePreviousEventsWithTypes:%{public}@ … | failed enumeration [sql failure] error=%{public}@", buf, 0x20u);
      }
    }
  }
}

- (void)enumeratePreviousEventsWithType:(id)type matchingPayload:(id)payload usingBlock:(id)block
{
  v14[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  payloadCopy = payload;
  blockCopy = block;
  if (!payloadCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEventStream.m" lineNumber:1138 description:{@"Invalid parameter not satisfying: %@", @"payload"}];

    if (typeCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [(_MPCPlaybackEngineEventStreamCursor *)self enumeratePreviousEventsWithTypes:MEMORY[0x1E695E0F0] matchingPayload:payloadCopy usingBlock:blockCopy];
    goto LABEL_6;
  }

  if (!typeCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[0] = typeCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [(_MPCPlaybackEngineEventStreamCursor *)self enumeratePreviousEventsWithTypes:v12 matchingPayload:payloadCopy usingBlock:blockCopy];

LABEL_6:
}

- (void)enumeratePreviousEventsWithType:(id)type usingBlock:(id)block
{
  v11[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  blockCopy = block;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEventStream.m" lineNumber:1133 description:{@"Invalid parameter not satisfying: %@", @"eventType"}];
  }

  v11[0] = typeCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(_MPCPlaybackEngineEventStreamCursor *)self enumeratePreviousEventsWithTypes:v9 matchingPayload:MEMORY[0x1E695E0F8] usingBlock:blockCopy];
}

- (int64_t)countOfPreviousEventsWithTypes:(id)types matchingPayload:(id)payload
{
  v19 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  payloadCopy = payload;
  eventStream = self->_eventStream;
  if (eventStream && eventStream->_invalidated)
  {
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      engineID = [(MPCPlaybackEngineEventStream *)self->_eventStream engineID];
      v17 = 138543362;
      v18 = engineID;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_ERROR, "[EVS:%{public}@] countOfPreviousEventsWithTypes:… | returning 0 [invalidated]", &v17, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v12 = [(_MPCPlaybackEngineEventStreamCursor *)self _statementForColumnsExpression:typesCopy eventTypes:payloadCopy payload:0 limit:?];
    v13 = [(MPCPlaybackEngineEventStream *)&self->_eventStream->super.isa sql];
    v14 = [v13 resultsForStatement:v12];

    nextObject = [v14 nextObject];
    v11 = [nextObject int64ValueAtColumnIndex:0];
    [v12 invalidate];
  }

  return v11;
}

- (int64_t)countOfPreviousEventsWithType:(id)type matchingPayload:(id)payload
{
  v14 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v7 = typeCopy;
  if (typeCopy)
  {
    v13 = typeCopy;
    v8 = MEMORY[0x1E695DEC8];
    payloadCopy = payload;
    payloadCopy2 = [v8 arrayWithObjects:&v13 count:1];
    v11 = [(_MPCPlaybackEngineEventStreamCursor *)self countOfPreviousEventsWithTypes:payloadCopy2 matchingPayload:payloadCopy, v13, v14];
  }

  else
  {
    payloadCopy2 = payload;
    v11 = [(_MPCPlaybackEngineEventStreamCursor *)self countOfPreviousEventsWithTypes:MEMORY[0x1E695E0F0] matchingPayload:payloadCopy2];
  }

  return v11;
}

- (id)cursorFromEvent:(id)event untilEvent:(id)untilEvent
{
  eventCopy = event;
  untilEventCopy = untilEvent;
  v9 = untilEventCopy;
  if (eventCopy)
  {
    if (!untilEventCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEventStream.m" lineNumber:1108 description:{@"Invalid parameter not satisfying: %@", @"startEvent"}];

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  v10 = [eventCopy earlierEvent:v9];

  if (v10 != v9)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEventStream.m" lineNumber:1109 description:@"Start event must be chronologically AFTER the limiting event."];
  }

LABEL_5:
  v12 = [[_MPCPlaybackEngineEventStreamCursor alloc] initWithEventStream:self->_eventStream startEvent:eventCopy endEvent:v9];

  return v12;
}

- (id)cursorUntilEvent:(id)event
{
  startEvent = self->_startEvent;
  eventCopy = event;
  v6 = [_MPCPlaybackEngineEventStreamCursor alloc];
  eventStream = self->_eventStream;
  if (startEvent)
  {
    v8 = [(_MPCPlaybackEngineEventStreamCursor *)v6 initWithEventStream:eventStream startEvent:self->_startEvent endEvent:eventCopy];
  }

  else
  {
    v8 = [(_MPCPlaybackEngineEventStreamCursor *)v6 initWithEventStream:eventStream fromNanoSeconds:self->_startNS endEvent:eventCopy];
  }

  v9 = v8;

  return v9;
}

- (NSString)description
{
  startEvent = self->_startEvent;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  if (startEvent)
  {
    endEvent = self->_endEvent;
    if (!endEvent)
    {
      endEvent = @"…";
    }

    [v4 stringWithFormat:@"<%@: %p %@ -> %@>", v5, self, self->_startEvent, endEvent];
  }

  else
  {
    v7 = self->_endEvent;
    if (!v7)
    {
      v7 = @"…";
    }

    [v4 stringWithFormat:@"<%@: %p %lld -> %@", v5, self, self->_startNS, v7];
  }
  v8 = ;

  return v8;
}

- (_MPCPlaybackEngineEventStreamCursor)initWithEventStream:(id)stream startEvent:(id)event endEvent:(id)endEvent
{
  streamCopy = stream;
  eventCopy = event;
  endEventCopy = endEvent;
  v21.receiver = self;
  v21.super_class = _MPCPlaybackEngineEventStreamCursor;
  v12 = [(_MPCPlaybackEngineEventStreamCursor *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_eventStream, stream);
    objc_storeStrong(&v13->_startEvent, event);
    if (eventCopy)
    {
      [eventCopy monotonicTime];
      [eventCopy monotonicTime];
      v14 = v19 + v20;
    }

    else
    {
      v14 = 0;
    }

    v13->_startNS = v14;
    objc_storeStrong(&v13->_endEvent, endEvent);
    if (endEventCopy)
    {
      [endEventCopy monotonicTime];
      [endEventCopy monotonicTime];
      v15 = v17 + v18;
    }

    else
    {
      v15 = 0;
    }

    v13->_endNS = v15;
  }

  return v13;
}

- (_MPCPlaybackEngineEventStreamCursor)initWithEventStream:(id)stream fromNanoSeconds:(unint64_t)seconds endEvent:(id)event
{
  streamCopy = stream;
  eventCopy = event;
  v17.receiver = self;
  v17.super_class = _MPCPlaybackEngineEventStreamCursor;
  v11 = [(_MPCPlaybackEngineEventStreamCursor *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_eventStream, stream);
    v12->_startNS = seconds;
    objc_storeStrong(&v12->_endEvent, event);
    if (eventCopy)
    {
      [eventCopy monotonicTime];
      [eventCopy monotonicTime];
      v13 = v15 + v16;
    }

    else
    {
      v13 = 0;
    }

    v12->_endNS = v13;
  }

  return v12;
}

@end