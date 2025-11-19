@interface MPCPlaybackEngineEvent
+ (MPCPlaybackEngineEvent)eventFromRowResult:(uint64_t)a1;
- ($C192BC3A89177E9F9906E5732115C753)monotonicTime;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesPayload:(id)a3;
- (MPCPlaybackEngineEvent)initWithType:(id)a3 payload:(id)a4 monotonicTime:(id *)a5 threadPriority:(int)a6 identifier:(id)a7;
- (double)durationSinceEvent:(id)a3;
- (double)timeIntervalSinceEvent:(id)a3;
- (id)description;
- (id)earlierEvent:(id)a3;
- (id)previousItemEventWithCursor:(id)a3 type:(id)a4;
- (int64_t)compare:(id)a3;
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

- (BOOL)matchesPayload:(id)a3
{
  v4 = a3;
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
  v5 = v4;
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

- (id)previousItemEventWithCursor:(id)a3 type:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MPCPlaybackEngineEvent *)self payload];
  v9 = [v8 objectForKeyedSubscript:@"queue-item-id"];

  if (v9)
  {
    v15 = @"queue-item-id";
    v10 = [(MPCPlaybackEngineEvent *)self payload];
    v11 = [v10 objectForKeyedSubscript:@"queue-item-id"];
    v16[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v13 = [v6 findPreviousEventWithType:v7 matchingPayload:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (double)timeIntervalSinceEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = self->_monotonicTime.rawNanoSeconds + self->_monotonicTime.timebase;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_5;
  }

  [v4 monotonicTime];
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

- (int64_t)compare:(id)a3
{
  rawNanoSeconds = self->_monotonicTime.rawNanoSeconds;
  timebase = self->_monotonicTime.timebase;
  if (a3)
  {
    v5 = a3;
    [v5 monotonicTime];
    v6 = v12;
    [v5 monotonicTime];

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

- (id)earlierEvent:(id)a3
{
  v4 = a3;
  if ([(MPCPlaybackEngineEvent *)self compare:v4]== 1)
  {
    self = v4;
  }

  v5 = self;

  return self;
}

- (double)durationSinceEvent:(id)a3
{
  rawNanoSeconds = self->_monotonicTime.rawNanoSeconds;
  if (a3)
  {
    [a3 monotonicTime];
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
  v4 = [(MPCPlaybackEngineEvent *)self date];
  v5 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  v6 = [v3 stringFromDate:v4 timeZone:v5 formatOptions:3955];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [(NSUUID *)self->_identifier MSVBase64UUIDString];
  v9 = [v7 stringWithFormat:@"<MPCPlaybackEngineEvent: %@ %@ [%llu] %@>", v8, v6, self->_monotonicTime.rawNanoSeconds + self->_monotonicTime.timebase, self->_type];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    identifier = self->_identifier;
    v8 = v4[2];
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

- (MPCPlaybackEngineEvent)initWithType:(id)a3 payload:(id)a4 monotonicTime:(id *)a5 threadPriority:(int)a6 identifier:(id)a7
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_8:
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEvent.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"payload"}];

    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEvent.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"type"}];

  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v16)
  {
    goto LABEL_4;
  }

LABEL_9:
  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngineEvent.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

LABEL_4:
  v25.receiver = self;
  v25.super_class = MPCPlaybackEngineEvent;
  v17 = [(MPCPlaybackEngineEvent *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_type, a3);
    objc_storeStrong(&v18->_payload, a4);
    objc_storeStrong(&v18->_identifier, a7);
    v19 = *&a5->var0;
    v20 = *&a5->var2;
    v18->_monotonicTime.userSecondsSinceReferenceDate = a5->var4;
    *&v18->_monotonicTime.flags = v19;
    *&v18->_monotonicTime.rawNanoSeconds = v20;
    v18->_threadPriority = a6;
  }

  return v18;
}

+ (MPCPlaybackEngineEvent)eventFromRowResult:(uint64_t)a1
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