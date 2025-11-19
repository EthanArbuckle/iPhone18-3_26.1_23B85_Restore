@interface _MPCPlaybackEngineEventStreamCursor
- (NSString)description;
- (_MPCPlaybackEngineEventStreamCursor)initWithEventStream:(id)a3 fromNanoSeconds:(unint64_t)a4 endEvent:(id)a5;
- (_MPCPlaybackEngineEventStreamCursor)initWithEventStream:(id)a3 startEvent:(id)a4 endEvent:(id)a5;
- (id)_statementForColumnsExpression:(void *)a3 eventTypes:(void *)a4 payload:(uint64_t)a5 limit:;
- (id)_statementForEventTypes:(void *)a3 payload:(uint64_t)a4 limit:;
- (id)cursorFromEvent:(id)a3 untilEvent:(id)a4;
- (id)cursorUntilEvent:(id)a3;
- (id)findPreviousEventWithType:(id)a3 matchingPayload:(id)a4;
- (id)findPreviousEventWithTypes:(id)a3 matchingPayload:(id)a4;
- (int64_t)countOfPreviousEventsWithType:(id)a3 matchingPayload:(id)a4;
- (int64_t)countOfPreviousEventsWithTypes:(id)a3 matchingPayload:(id)a4;
- (void)enumeratePreviousEventsWithType:(id)a3 matchingPayload:(id)a4 usingBlock:(id)a5;
- (void)enumeratePreviousEventsWithType:(id)a3 usingBlock:(id)a4;
- (void)enumeratePreviousEventsWithTypes:(id)a3 matchingPayload:(id)a4 usingBlock:(id)a5;
@end

@implementation _MPCPlaybackEngineEventStreamCursor

- (id)findPreviousEventWithTypes:(id)a3 matchingPayload:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
      v12 = [(MPCPlaybackEngineEventStream *)self->_eventStream engineID];
      *buf = 138543362;
      v26 = v12;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "[EVS:%{public}@] findPreviousEventsWithTypes:… | return nil [invalidated]", buf, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    v14 = [(MPCPlaybackEngineEventStream *)v10 cachedEventWithTypes:v6 matchingPayload:v7 cursor:self];
    if (v14)
    {
      v11 = v14;
      v13 = v11;
    }

    else
    {
      v15 = [(_MPCPlaybackEngineEventStreamCursor *)self _statementForEventTypes:v6 payload:v7 limit:1];
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
          v21 = [(MPCPlaybackEngineEventStream *)self->_eventStream engineID];
          *buf = 134218498;
          v26 = v21;
          v27 = 2114;
          v28 = v6;
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

- (id)_statementForEventTypes:(void *)a3 payload:(uint64_t)a4 limit:
{
  if (a1)
  {
    a1 = [(_MPCPlaybackEngineEventStreamCursor *)a1 _statementForColumnsExpression:events.type eventTypes:events.monoAbsolute payload:events.monoContinuous limit:events.monoTimebaseNS, events.userNS, events.threadPriority, events.payload""), a2, a3, a4];
    v4 = vars8;
  }

  return a1;
}

- (id)_statementForColumnsExpression:(void *)a3 eventTypes:(void *)a4 payload:(uint64_t)a5 limit:
{
  v45 = *MEMORY[0x1E69E9840];
  v32 = a2;
  v9 = a3;
  v10 = a4;
  v36 = a1;
  v34 = v10;
  if (a1)
  {
    v33 = MPCPlaybackEngineEventPayloadJSONFromPayload(v10);
    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v34, "count")}];
    _MPCPlaybackEngineEventFlattenPayload(v33, v11, &unk_1F4599880);
    v12 = [v9 count];
    if ((v12 + 2 * [v11 count] + 3) >= 0x3E7)
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      [v30 handleFailureInMethod:sel__statementForColumnsExpression_eventTypes_payload_limit_ object:a1 file:@"MPCPlaybackEngineEventStream.m" lineNumber:1220 description:@"Query too large"];
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

    if ([v9 count] == 1)
    {
      [v14 addObject:@"events.type = @type"];
    }

    else if ([v9 count] >= 2)
    {
      v17 = objc_msgSend(@"events.type IN ("), "mutableCopy";
      if ([v9 count] >= 1)
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

        while (v18 < [v9 count]);
      }

      [v17 appendString:@""]);
      [v14 addObject:v17];
    }

    [v14 addObject:@"_ns < @startNS"];
    if (*(a1 + 40))
    {
      [v14 addObject:@"_ns > @endNS"];
    }

    [v13 appendString:@" WHERE "];
    v19 = [v14 componentsJoinedByString:@" AND "];
    [v13 appendString:v19];

    [v13 appendString:@" ORDER BY _ns DESC"];
    if (a5 >= 1)
    {
      [v13 appendFormat:@" LIMIT %lld", 1];
    }

    v20 = [(MPCPlaybackEngineEventStream *)*(a1 + 24) sql];
    v42 = 0;
    v31 = [v20 statementWithString:v13 error:&v42];
    v35 = v42;

    if (v35)
    {
      v21 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v22 = [*(a1 + 24) engineID];
        *buf = 138543874;
        *&buf[4] = v22;
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
      [v31 bindUInt64Value:*(a1 + 8) toParameterNamed:@"@startNS"];
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
      v39 = a1;
      [v11 enumerateKeysAndObjectsUsingBlock:v37];
      if ([v9 count] == 1)
      {
        v25 = [v9 firstObject];
        [v24 bindStringValue:v25 toParameterNamed:@"@type"];
      }

      else if ([v9 count] >= 2)
      {
        for (i = 0; i < [v9 count]; ++i)
        {
          v27 = [v9 objectAtIndexedSubscript:i];
          v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@type_%d", i];
          [v24 bindStringValue:v27 toParameterNamed:v28];
        }
      }

      if (*(v36 + 40))
      {
        [v24 bindUInt64Value:*(v36 + 16) toParameterNamed:@"@endNS"];
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

- (id)findPreviousEventWithType:(id)a3 matchingPayload:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v14 = v6;
    v8 = MEMORY[0x1E695DEC8];
    v9 = a4;
    v10 = [v8 arrayWithObjects:&v14 count:1];
    v11 = [(_MPCPlaybackEngineEventStreamCursor *)self findPreviousEventWithTypes:v10 matchingPayload:v9, v14, v15];
  }

  else
  {
    v12 = a4;
    v11 = [(_MPCPlaybackEngineEventStreamCursor *)self findPreviousEventWithTypes:MEMORY[0x1E695E0F0] matchingPayload:v12];
  }

  return v11;
}

- (void)enumeratePreviousEventsWithTypes:(id)a3 matchingPayload:(id)a4 usingBlock:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
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
  if (![v9 count])
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEventStream.m" lineNumber:1148 description:@"Must provide event types to enumerate."];

    if (v10)
    {
      goto LABEL_5;
    }

LABEL_23:
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEventStream.m" lineNumber:1149 description:{@"Invalid parameter not satisfying: %@", @"payload"}];

    goto LABEL_5;
  }

  if (!v10)
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
      v16 = [(MPCPlaybackEngineEventStream *)self->_eventStream engineID];
      *buf = 138543362;
      v33 = v16;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_ERROR, "[EVS:%{public}@] enumeratePreviousEventsWithType:… | skipping enumeration [invalidated]", buf, 0xCu);
    }
  }

  else
  {
    v15 = [(_MPCPlaybackEngineEventStreamCursor *)self _statementForEventTypes:v9 payload:v10 limit:0];
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
          v11[2](v11, v23, &v31);
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
        v27 = [(MPCPlaybackEngineEventStream *)self->_eventStream engineID];
        *buf = 138543874;
        v33 = v27;
        v34 = 2114;
        v35 = v9;
        v36 = 2114;
        v37 = v25;
        _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_FAULT, "[EVS:%{public}@] enumeratePreviousEventsWithTypes:%{public}@ … | failed enumeration [sql failure] error=%{public}@", buf, 0x20u);
      }
    }
  }
}

- (void)enumeratePreviousEventsWithType:(id)a3 matchingPayload:(id)a4 usingBlock:(id)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEventStream.m" lineNumber:1138 description:{@"Invalid parameter not satisfying: %@", @"payload"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    [(_MPCPlaybackEngineEventStreamCursor *)self enumeratePreviousEventsWithTypes:MEMORY[0x1E695E0F0] matchingPayload:v10 usingBlock:v11];
    goto LABEL_6;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[0] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [(_MPCPlaybackEngineEventStreamCursor *)self enumeratePreviousEventsWithTypes:v12 matchingPayload:v10 usingBlock:v11];

LABEL_6:
}

- (void)enumeratePreviousEventsWithType:(id)a3 usingBlock:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEventStream.m" lineNumber:1133 description:{@"Invalid parameter not satisfying: %@", @"eventType"}];
  }

  v11[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(_MPCPlaybackEngineEventStreamCursor *)self enumeratePreviousEventsWithTypes:v9 matchingPayload:MEMORY[0x1E695E0F8] usingBlock:v8];
}

- (int64_t)countOfPreviousEventsWithTypes:(id)a3 matchingPayload:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  eventStream = self->_eventStream;
  if (eventStream && eventStream->_invalidated)
  {
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(MPCPlaybackEngineEventStream *)self->_eventStream engineID];
      v17 = 138543362;
      v18 = v10;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_ERROR, "[EVS:%{public}@] countOfPreviousEventsWithTypes:… | returning 0 [invalidated]", &v17, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v12 = [(_MPCPlaybackEngineEventStreamCursor *)self _statementForColumnsExpression:v6 eventTypes:v7 payload:0 limit:?];
    v13 = [(MPCPlaybackEngineEventStream *)&self->_eventStream->super.isa sql];
    v14 = [v13 resultsForStatement:v12];

    v15 = [v14 nextObject];
    v11 = [v15 int64ValueAtColumnIndex:0];
    [v12 invalidate];
  }

  return v11;
}

- (int64_t)countOfPreviousEventsWithType:(id)a3 matchingPayload:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v13 = v6;
    v8 = MEMORY[0x1E695DEC8];
    v9 = a4;
    v10 = [v8 arrayWithObjects:&v13 count:1];
    v11 = [(_MPCPlaybackEngineEventStreamCursor *)self countOfPreviousEventsWithTypes:v10 matchingPayload:v9, v13, v14];
  }

  else
  {
    v10 = a4;
    v11 = [(_MPCPlaybackEngineEventStreamCursor *)self countOfPreviousEventsWithTypes:MEMORY[0x1E695E0F0] matchingPayload:v10];
  }

  return v11;
}

- (id)cursorFromEvent:(id)a3 untilEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEventStream.m" lineNumber:1108 description:{@"Invalid parameter not satisfying: %@", @"startEvent"}];

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  v10 = [v7 earlierEvent:v9];

  if (v10 != v9)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEventStream.m" lineNumber:1109 description:@"Start event must be chronologically AFTER the limiting event."];
  }

LABEL_5:
  v12 = [[_MPCPlaybackEngineEventStreamCursor alloc] initWithEventStream:self->_eventStream startEvent:v7 endEvent:v9];

  return v12;
}

- (id)cursorUntilEvent:(id)a3
{
  startEvent = self->_startEvent;
  v5 = a3;
  v6 = [_MPCPlaybackEngineEventStreamCursor alloc];
  eventStream = self->_eventStream;
  if (startEvent)
  {
    v8 = [(_MPCPlaybackEngineEventStreamCursor *)v6 initWithEventStream:eventStream startEvent:self->_startEvent endEvent:v5];
  }

  else
  {
    v8 = [(_MPCPlaybackEngineEventStreamCursor *)v6 initWithEventStream:eventStream fromNanoSeconds:self->_startNS endEvent:v5];
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

- (_MPCPlaybackEngineEventStreamCursor)initWithEventStream:(id)a3 startEvent:(id)a4 endEvent:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = _MPCPlaybackEngineEventStreamCursor;
  v12 = [(_MPCPlaybackEngineEventStreamCursor *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_eventStream, a3);
    objc_storeStrong(&v13->_startEvent, a4);
    if (v10)
    {
      [v10 monotonicTime];
      [v10 monotonicTime];
      v14 = v19 + v20;
    }

    else
    {
      v14 = 0;
    }

    v13->_startNS = v14;
    objc_storeStrong(&v13->_endEvent, a5);
    if (v11)
    {
      [v11 monotonicTime];
      [v11 monotonicTime];
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

- (_MPCPlaybackEngineEventStreamCursor)initWithEventStream:(id)a3 fromNanoSeconds:(unint64_t)a4 endEvent:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = _MPCPlaybackEngineEventStreamCursor;
  v11 = [(_MPCPlaybackEngineEventStreamCursor *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_eventStream, a3);
    v12->_startNS = a4;
    objc_storeStrong(&v12->_endEvent, a5);
    if (v10)
    {
      [v10 monotonicTime];
      [v10 monotonicTime];
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