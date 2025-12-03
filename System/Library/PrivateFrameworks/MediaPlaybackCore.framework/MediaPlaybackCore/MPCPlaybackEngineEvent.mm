@interface MPCPlaybackEngineEvent
+ (MPCPlaybackEngineEvent)eventFromRowResult:(uint64_t)result;
- ($C192BC3A89177E9F9906E5732115C753)monotonicTime;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesPayload:(id)payload;
- (MPCPlaybackEngineEvent)initWithType:(id)type payload:(id)payload monotonicTime:(id *)time threadPriority:(int)priority identifier:(id)identifier;
- (double)durationSinceEvent:(id)event;
- (double)timeIntervalSinceEvent:(id)event;
- (id)description;
- (id)earlierEvent:(id)event;
- (id)previousItemEventWithCursor:(id)cursor type:(id)type;
- (int64_t)compare:(id)compare;
@end

@implementation MPCPlaybackEngineEvent

- ($C192BC3A89177E9F9906E5732115C753)monotonicTime
{
  v3 = *&self[1].var3;
  *&retstr->var0 = *&self[1].var1;
  *&retstr->var2 = v3;
  *&retstr->var4 = self[2].var0;
  return self;
}

- (BOOL)matchesPayload:(id)payload
{
  payloadCopy = payload;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__MPCPlaybackEngineEvent_MPCRTCEventConsumer__matchesPayload___block_invoke;
  v8[3] = &unk_1E82322C8;
  v10 = &v11;
  v8[4] = self;
  v5 = payloadCopy;
  v9 = v5;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

void __62__MPCPlaybackEngineEvent_MPCRTCEventConsumer__matchesPayload___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 48) + 8);
  if (*(v3 + 24) == 1)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v10 = [v5 payload];
    v7 = [v10 objectForKeyedSubscript:v6];
    v8 = [*(a1 + 40) objectForKeyedSubscript:v6];

    if (v7 == v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v7 isEqual:v8];
    }

    *(*(*(a1 + 48) + 8) + 24) = v9;
  }

  else
  {
    *(v3 + 24) = 0;
  }
}

- (id)previousItemEventWithCursor:(id)cursor type:(id)type
{
  v16[1] = *MEMORY[0x1E69E9840];
  cursorCopy = cursor;
  typeCopy = type;
  payload = [(MPCPlaybackEngineEvent *)self payload];
  v9 = [payload objectForKeyedSubscript:@"queue-item-id"];

  if (v9)
  {
    v15 = @"queue-item-id";
    payload2 = [(MPCPlaybackEngineEvent *)self payload];
    v11 = [payload2 objectForKeyedSubscript:@"queue-item-id"];
    v16[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v13 = [cursorCopy findPreviousEventWithType:typeCopy matchingPayload:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (double)timeIntervalSinceEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  v6 = self->_monotonicTime.rawNanoSeconds + self->_monotonicTime.timebase;
  if (!eventCopy)
  {
    v7 = 0;
    goto LABEL_5;
  }

  [eventCopy monotonicTime];
  [v5 monotonicTime];
  v7 = v12 + v13;
  v8 = v12 + v13 - v6;
  if (v12 + v13 <= v6)
  {
LABEL_5:
    v8 = v6 - v7;
    v9 = 1000000000.0;
    goto LABEL_6;
  }

  v9 = -1000000000.0;
LABEL_6:
  v10 = v8 / v9;

  return v10;
}

- (int64_t)compare:(id)compare
{
  rawNanoSeconds = self->_monotonicTime.rawNanoSeconds;
  timebase = self->_monotonicTime.timebase;
  if (compare)
  {
    compareCopy = compare;
    [compareCopy monotonicTime];
    v6 = v12;
    [compareCopy monotonicTime];

    v7 = v11 + v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = rawNanoSeconds + timebase >= v7;
  v9 = rawNanoSeconds + timebase > v7;
  if (v8)
  {
    return v9;
  }

  else
  {
    return -1;
  }
}

- (id)earlierEvent:(id)event
{
  eventCopy = event;
  if ([(MPCPlaybackEngineEvent *)self compare:eventCopy]== 1)
  {
    self = eventCopy;
  }

  selfCopy = self;

  return self;
}

- (double)durationSinceEvent:(id)event
{
  rawNanoSeconds = self->_monotonicTime.rawNanoSeconds;
  if (event)
  {
    [event monotonicTime];
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return (rawNanoSeconds - v4) / 1000000000.0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AC80];
  date = [(MPCPlaybackEngineEvent *)self date];
  defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
  v6 = [v3 stringFromDate:date timeZone:defaultTimeZone formatOptions:3955];

  v7 = MEMORY[0x1E696AEC0];
  mSVBase64UUIDString = [(NSUUID *)self->_identifier MSVBase64UUIDString];
  v9 = [v7 stringWithFormat:@"<MPCPlaybackEngineEvent: %@ %@ [%llu] %@>", mSVBase64UUIDString, v6, self->_monotonicTime.rawNanoSeconds + self->_monotonicTime.timebase, self->_type];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    identifier = self->_identifier;
    v8 = equalCopy[2];
    v9 = identifier;
    v10 = v9;
    if (v9 == v8)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NSUUID *)v9 isEqual:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MPCPlaybackEngineEvent)initWithType:(id)type payload:(id)payload monotonicTime:(id *)time threadPriority:(int)priority identifier:(id)identifier
{
  typeCopy = type;
  payloadCopy = payload;
  identifierCopy = identifier;
  if (typeCopy)
  {
    if (payloadCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEvent.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"payload"}];

    if (identifierCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEvent.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"type"}];

  if (!payloadCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (identifierCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEvent.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

LABEL_4:
  v25.receiver = self;
  v25.super_class = MPCPlaybackEngineEvent;
  v17 = [(MPCPlaybackEngineEvent *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_type, type);
    objc_storeStrong(&v18->_payload, payload);
    objc_storeStrong(&v18->_identifier, identifier);
    v19 = *&time->var0;
    v20 = *&time->var2;
    v18->_monotonicTime.userSecondsSinceReferenceDate = time->var4;
    *&v18->_monotonicTime.flags = v19;
    *&v18->_monotonicTime.rawNanoSeconds = v20;
    v18->_threadPriority = priority;
  }

  return v18;
}

+ (MPCPlaybackEngineEvent)eventFromRowResult:(uint64_t)result
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = MEMORY[0x1E696AFB0];
  v4 = [v2 dataValueAtColumnIndex:0];
  v5 = [v3 msv_UUIDWithData:v4];

  v6 = [v2 stringValueAtColumnIndex:1];
  v7 = [v2 uint64ValueAtColumnIndex:2];
  v8 = [v2 uint64ValueAtColumnIndex:3];
  v9 = [v2 uint64ValueAtColumnIndex:4];
  v10 = [v2 uint64ValueAtColumnIndex:5];
  MSVGetKernelBootTime();
  v12 = v11;
  v13 = [v2 uint64ValueAtColumnIndex:6];
  v28 = 0;
  v14 = [v2 jsonValueAtColumnIndex:7 error:&v28];
  v15 = v28;
  if (v15)
  {
    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v17 = [v2 stringValueAtColumnIndex:6];
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2114;
      *&buf[14] = v17;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_FAULT, "[EVS:…] eventFromRowResult:… | failed to build event [json decode failure] error=%{public}@ payload=%{public}@", buf, 0x16u);
    }

    v18 = 0;
  }

  else
  {
    v27 = v13;
    v19 = v8;
    v20 = v7;
    v21 = v6;
    v22 = v5;
    if (v12 * 1000000000.0 == v9)
    {
      v23 = 3;
    }

    else
    {
      v23 = 1;
    }

    v24 = v10 / 1000000000.0;
    v16 = MPCPlaybackEngineEventPayloadFromPayloadJSON(v14);
    v25 = [MPCPlaybackEngineEvent alloc];
    *buf = v23;
    *&buf[8] = v20;
    v5 = v22;
    v6 = v21;
    *&buf[16] = v19;
    v30 = v9;
    v31 = v24;
    v18 = [(MPCPlaybackEngineEvent *)v25 initWithType:v21 payload:v16 monotonicTime:buf threadPriority:v27 identifier:v5];
  }

  return v18;
}

@end