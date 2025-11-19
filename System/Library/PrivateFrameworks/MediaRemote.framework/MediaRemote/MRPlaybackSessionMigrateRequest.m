@interface MRPlaybackSessionMigrateRequest
- (BOOL)allowFadeTransition;
- (MRContentItem)contentItem;
- (MRPlaybackSessionMigrateRequest)init;
- (MRPlaybackSessionMigrateRequest)initWithData:(id)a3;
- (MRPlaybackSessionMigrateRequest)initWithProtobuf:(id)a3;
- (MRPlaybackSessionRequest)playbackSessionRequest;
- (MRPlayerPath)playerPath;
- (MRPlayerPath)resolvedPlayerPath;
- (MRSendCommandResultStatus)setPlaybackSessionCommandStatus;
- (NSData)protobufData;
- (NSString)initiator;
- (NSString)report;
- (NSString)requestID;
- (_MRPlaybackSessionMigrateRequestProtobuf)protobuf;
- (__CFString)symbolForEventName:(int)a3 isStart:;
- (double)duration;
- (double)playbackPosition;
- (double)playbackRate;
- (id)_findEventWithID:(void *)a3 inEvents:;
- (id)_findEventWithName:(uint64_t)a3 role:;
- (id)_findEventWithName:(uint64_t)a3 role:(void *)a4 inEvents:;
- (id)_getLastEventIfActiveInEvents:(uint64_t)a1;
- (id)_onlock_findEventWithID:(uint64_t)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)eventsDictionary:(id)a1;
- (id)fullReport;
- (id)gatherAnalytics;
- (id)innerErrorForEvent:(void *)a1;
- (id)merge:(id)a3;
- (id)printEvents:(void *)a3 dateFormatter:(uint64_t *)a4 timeElapsed:(int)a5 depth:;
- (id)reportDictionary;
- (int64_t)endpointOptions;
- (int64_t)playerOptions;
- (unsigned)playbackState;
- (void)_finalizeRequestWithAnalytics:(uint64_t)a1;
- (void)_gatherMPPMetricsWithCompletion:(void *)a1;
- (void)addDestinationType:(unsigned int)a3;
- (void)addDestinationTypesFromDevices:(id)a3;
- (void)addEventInput:(id)a3 withKey:(id)a4 toEventID:(unsigned int)a5;
- (void)addEventOutput:(id)a3 withKey:(id)a4 toEventID:(unsigned int)a5;
- (void)backfillSignpostsForEvent:(uint64_t)a1;
- (void)finalizeWithCompletion:(id)a3;
- (void)setAnalyticsDurationForEvent:(void *)a3 duration:;
- (void)setContentItem:(id)a3;
- (void)setEndpointOptions:(int64_t)a3;
- (void)setInitiator:(id)a3;
- (void)setOriginatorTypeFromDevice:(id)a3;
- (void)setPlaybackPosition:(double)a3;
- (void)setPlaybackRate:(double)a3;
- (void)setPlaybackSessionRequest:(id)a3;
- (void)setPlayerOptions:(int64_t)a3;
- (void)setPlayerPath:(id)a3;
- (void)setRequestID:(id)a3;
- (void)setResolvedPlayerPath:(id)a3;
- (void)setSetPlaybackSessionCommandStatus:(id)a3;
- (void)updateError:(uint64_t)a1;
@end

@implementation MRPlaybackSessionMigrateRequest

- (MRPlaybackSessionMigrateRequest)init
{
  v3 = objc_alloc_init(_MRPlaybackSessionMigrateRequestProtobuf);
  v4 = [(MRPlaybackSessionMigrateRequest *)self initWithProtobuf:v3];

  if (v4)
  {
    [(MRPlaybackSessionMigrateRequest *)v4 setPlayerOptions:58];
    [(MRPlaybackSessionMigrateRequest *)v4 setEndpointOptions:58];
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];
    [(MRPlaybackSessionMigrateRequest *)v4 setRequestID:v6];
  }

  return v4;
}

- (MRPlaybackSessionMigrateRequest)initWithProtobuf:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = MRPlaybackSessionMigrateRequest;
    v6 = [(MRPlaybackSessionMigrateRequest *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_protobuf, a3);
      v7->_lock._os_unfair_lock_opaque = 0;
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MRPlaybackSessionMigrateRequest)initWithData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_MRPlaybackSessionMigrateRequestProtobuf alloc] initWithData:v4];
    v6 = [(MRPlaybackSessionMigrateRequest *)self initWithProtobuf:v5];
  }

  else
  {
    v6 = [(MRPlaybackSessionMigrateRequest *)self initWithProtobuf:0];
  }

  return v6;
}

- (void)setRequestID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setRequestID:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)requestID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf requestID];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setInitiator:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setInitiator:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPlayerPath:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 protobuf];

  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setPlayerPath:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (MRPlayerPath)playerPath
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MRPlayerPath alloc];
  v4 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf playerPath];
  v5 = [(MRPlayerPath *)v3 initWithProtobuf:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setResolvedPlayerPath:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 protobuf];

  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setResolvedPlayerPath:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (MRPlayerPath)resolvedPlayerPath
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MRPlayerPath alloc];
  v4 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf resolvedPlayerPath];
  v5 = [(MRPlayerPath *)v3 initWithProtobuf:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (NSString)initiator
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf initiator];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setPlayerOptions:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setPlayerOptions:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)playerOptions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf playerOptions];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setEndpointOptions:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setEndpointOptions:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)endpointOptions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf endpointOptions];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (unsigned)playbackState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf playbackState];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setPlaybackPosition:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setPlaybackPosition:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (double)playbackPosition
{
  os_unfair_lock_lock(&self->_lock);
  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf playbackPosition];
  v4 = v3;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)setPlaybackRate:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setPlaybackRate:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (double)playbackRate
{
  os_unfair_lock_lock(&self->_lock);
  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf playbackRate];
  v4 = v3;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)setContentItem:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [MRContentItem alloc];
  v6 = [v4 identifier];
  v11 = [(MRContentItem *)v5 initWithIdentifier:v6];

  Title = MRContentItemGetTitle(v4);
  MRContentItemSetTitle(v11, Title);
  IsAlwaysLive = MRContentItemGetIsAlwaysLive(v4);
  MRContentItemSetIsAlwaysLive(v11, IsAlwaysLive);
  v9 = MRContentItemGetIsInTransition(v4);

  MRContentItemSetIsInTransition(v11, v9);
  v10 = [(MRContentItem *)v11 protobufWithEncoding:0];
  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setContentItem:v10];

  os_unfair_lock_unlock(&self->_lock);
}

- (MRContentItem)contentItem
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MRContentItem alloc];
  v4 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf contentItem];
  v5 = [(MRContentItem *)v3 initWithProtobuf:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setPlaybackSessionRequest:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 protobuf];

  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setPlaybackSessionRequest:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (MRPlaybackSessionRequest)playbackSessionRequest
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MRPlaybackSessionRequest alloc];
  v4 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf playbackSessionRequest];
  v5 = [(MRPlaybackSessionRequest *)v3 initWithProtobuf:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (_MRPlaybackSessionMigrateRequestProtobuf)protobuf
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSData)protobufData
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf data];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = MRMediaRemotePlaybackSessionMigratePlayerOptionsCopyDescription([(MRPlaybackSessionMigrateRequest *)self playerOptions]);
  v5 = MRMediaRemotePlaybackSessionMigrateEndpointOptionsCopyDescription([(MRPlaybackSessionMigrateRequest *)self endpointOptions]);
  v6 = [v3 initWithFormat:@"playerOptions = <%@>, endpointOptions = <%@>", v4, v5];

  if ([(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf hasPlaybackRate])
  {
    [(MRPlaybackSessionMigrateRequest *)self playbackRate];
    [v6 appendFormat:@", playbackRate = <%lf>", v7];
  }

  if ([(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf hasPlaybackPosition])
  {
    [(MRPlaybackSessionMigrateRequest *)self playbackPosition];
    [v6 appendFormat:@", playbackPosition = <%lf>", v8];
  }

  if ([(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf hasPlaybackState])
  {
    v9 = MRMediaRemoteCopyPlaybackStateDescription([(MRPlaybackSessionMigrateRequest *)self playbackState]);
    [v6 appendFormat:@", playbackState = <%@>", v9];
  }

  if ([(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf hasContentItem])
  {
    v10 = [(MRPlaybackSessionMigrateRequest *)self contentItem];
    v11 = MRContentItemCopyMinimalReadableDescription(v10);
    [v6 appendFormat:@", item = <%@>", v11];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v4 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf copy];
  [v4 setEvents:0];
  v5 = [[MRPlaybackSessionMigrateRequest alloc] initWithProtobuf:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_getLastEventIfActiveInEvents:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    if ([v3 count])
    {
      v6 = [v4 lastObject];
      v7 = [v6 events];
      if (!v7)
      {
        goto LABEL_7;
      }

      v8 = v7;
      v9 = [v6 events];
      v10 = [v9 count];

      if (!v10 || ([v6 events], v11 = objc_claimAutoreleasedReturnValue(), -[MRPlaybackSessionMigrateRequest _getLastEventIfActiveInEvents:](a1, v11), v5 = objc_claimAutoreleasedReturnValue(), v11, !v5))
      {
LABEL_7:
        if ([v6 hasEndTimestamp])
        {
          v5 = 0;
        }

        else
        {
          v5 = v6;
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)updateError:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v8 = v3;
      IsInformational = MRMediaRemoteErrorIsInformational(v3);
      v4 = v8;
      if (!IsInformational)
      {
        v6 = 32;
        if (!*(a1 + 64))
        {
          v6 = 24;
        }

        if (*(a1 + v6))
        {
          v7 = *(a1 + v6);
        }

        else
        {
          v7 = v8;
        }

        objc_storeStrong((a1 + v6), v7);
        v4 = v8;
      }
    }
  }
}

- (id)_findEventWithName:(uint64_t)a3 role:(void *)a4 inEvents:
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (a1 && v8)
  {
    if ([v8 count])
    {
      v11 = [v9 count];
      if (v11 - 1 >= 0)
      {
        v12 = v11;
        do
        {
          v13 = [v9 objectAtIndexedSubscript:--v12];
          v14 = [v13 events];
          if (v14)
          {
            v15 = v14;
            v16 = [v9 objectAtIndexedSubscript:v12];
            v17 = [v16 events];
            v18 = [v17 count];

            if (v18)
            {
              v19 = [v9 objectAtIndexedSubscript:v12];
              v20 = [v19 events];
              v10 = [(MRPlaybackSessionMigrateRequest *)a1 _findEventWithName:v7 role:a3 inEvents:v20];

              if (v10)
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
          }

          v21 = [v9 objectAtIndexedSubscript:v12];
          v22 = [v21 name];
          if ([v22 isEqualToString:v7])
          {
            v23 = [v9 objectAtIndexedSubscript:v12];
            v24 = [v23 role];

            if (v24 == a3)
            {
              v10 = [v9 objectAtIndexedSubscript:v12];
              goto LABEL_17;
            }
          }

          else
          {
          }
        }

        while (v12 >= 1);
      }
    }

    v10 = 0;
  }

LABEL_17:

  return v10;
}

- (id)_findEventWithID:(void *)a3 inEvents:
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (a1 && v5)
  {
    if ([v5 count])
    {
      v8 = [v6 count];
      while (--v8 >= 0)
      {
        v9 = [v6 objectAtIndexedSubscript:v8];
        v10 = [v9 events];
        if (v10)
        {
          v11 = v10;
          v12 = [v6 objectAtIndexedSubscript:v8];
          v13 = [v12 events];
          v14 = [v13 count];

          if (v14)
          {
            v15 = [v6 objectAtIndexedSubscript:v8];
            v16 = [v15 events];
            v7 = [(MRPlaybackSessionMigrateRequest *)a1 _findEventWithID:a2 inEvents:v16];

            if (v7)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
        }

        v17 = [v6 objectAtIndexedSubscript:v8];
        v18 = [v17 identifier];

        if (v18 == a2)
        {
          v7 = [v6 objectAtIndexedSubscript:v8];
          goto LABEL_14;
        }
      }
    }

    v7 = 0;
  }

LABEL_14:

  return v7;
}

- (void)finalizeWithCompletion:(id)a3
{
  v4 = a3;
  if (!self->_analytics)
  {
    v5 = objc_alloc_init(MRPlaybackSessionMigrateAnalytics);
    analytics = self->_analytics;
    self->_analytics = v5;
  }

  v7 = [(MRPlaybackSessionMigrateRequest *)self gatherAnalytics];
  v8 = [v7 mutableCopy];

  if (self->_fallbackError || self->_migrateError && !self->_fallbackReason || [(MRPlaybackSessionMigrateRequest *)self recipeType]!= 2)
  {
    [(MRPlaybackSessionMigrateRequest *)self _finalizeRequestWithAnalytics:v8];
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__MRPlaybackSessionMigrateRequest_finalizeWithCompletion___block_invoke;
    v9[3] = &unk_1E769DD60;
    v10 = v8;
    v11 = self;
    v12 = v4;
    [(MRPlaybackSessionMigrateRequest *)self _gatherMPPMetricsWithCompletion:v9];
  }
}

void __67__MRPlaybackSessionMigrateRequest__gatherMPPMetricsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *(a1 + 32);
  if (isKindOfClass)
  {
    v8 = [v15 request];
    v9 = [v7 merge:v8];

    v10 = [v15 metrics];
    v11 = [v10 mutableCopy];

    v12 = [v11 objectForKeyedSubscript:@"MPP_firstAudioFrameTimestamp"];
    if (v12)
    {
      __67__MRPlaybackSessionMigrateRequest__gatherMPPMetricsWithCompletion___block_invoke_cold_1((a1 + 32), v11, v12, a1);
    }

    [*(a1 + 32) endEventWithID:*(a1 + 48) error:v5];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v13 = *(a1 + 48);
    v14 = [v15 error];
    [v7 endEventWithID:v13 error:v14];

    (*(*(a1 + 40) + 16))();
  }
}

id __50__MRPlaybackSessionMigrateRequest_gatherAnalytics__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696ABC0];
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v3 code];

  v6 = [v2 errorWithDomain:v4 code:v5 userInfo:0];

  return v6;
}

- (void)setOriginatorTypeFromDevice:(id)a3
{
  v4 = MRAnalyticsCompositionForOutputDevice(a3);
  protobuf = self->_protobuf;

  [(_MRPlaybackSessionMigrateRequestProtobuf *)protobuf setOriginatorType:v4];
}

- (void)addDestinationType:(unsigned int)a3
{
  protobuf = self->_protobuf;
  v4 = [(_MRPlaybackSessionMigrateRequestProtobuf *)protobuf destinationTypes]| a3;

  [(_MRPlaybackSessionMigrateRequestProtobuf *)protobuf setDestinationTypes:v4];
}

- (void)addDestinationTypesFromDevices:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MRPlaybackSessionMigrateRequest *)self addDestinationType:MRAnalyticsCompositionForOutputDevice(*(*(&v10 + 1) + 8 * v8++))];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (double)duration
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf events];
  v4 = [v3 lastObject];
  [v4 endTimestamp];
  v6 = v5;
  v7 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf events];
  v8 = [v7 firstObject];
  [v8 startTimestamp];
  v10 = v6 - v9;

  os_unfair_lock_unlock(&self->_lock);
  return v10;
}

- (BOOL)allowFadeTransition
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf allowFadeTransition];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (MRSendCommandResultStatus)setPlaybackSessionCommandStatus
{
  v3 = [MRSendCommandResultStatus alloc];
  v4 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setPlaybackSessionCommandStatus];
  v5 = [(MRSendCommandResultStatus *)v3 initWithProtobuf:v4];

  return v5;
}

- (void)setSetPlaybackSessionCommandStatus:(id)a3
{
  v4 = [a3 protobuf];
  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setSetPlaybackSessionCommandStatus:v4];
}

- (id)merge:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf events];
  v6 = [(MRPlaybackSessionMigrateRequest *)self _getLastEventIfActiveInEvents:v5];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = v4;
  v7 = [v4 protobuf];
  v8 = [v7 events];

  v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        if (v6)
        {
          protobuf = v6;
        }

        else
        {
          protobuf = self->_protobuf;
        }

        [(_MRPlaybackSessionMigrateRequestProtobuf *)protobuf addEvents:*(*(&v31 + 1) + 8 * i)];
        v16 = [(MRPlaybackSessionMigrateRequest *)self innerErrorForEvent:v14];
        if (v16)
        {
          v17 = [v14 name];
          v18 = [v17 isEqualToString:@"Post"];

          if ((v18 & 1) == 0)
          {
            [(MRPlaybackSessionMigrateRequest *)self updateError:v16];
            if (v11)
            {
              v19 = v11;
            }

            else
            {
              v19 = v16;
            }

            v20 = v19;

            v11 = v20;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v21 = [v30 setPlaybackSessionCommandStatus];
  [(MRPlaybackSessionMigrateRequest *)self setSetPlaybackSessionCommandStatus:v21];

  v22 = [v30 playbackSessionRequest];

  if (v22)
  {
    v23 = [v30 protobuf];
    v24 = [v23 playbackSessionRequest];
    [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setPlaybackSessionRequest:v24];
  }

  v25 = [v30 resolvedPlayerPath];

  if (v25)
  {
    v26 = [v30 protobuf];
    v27 = [v26 resolvedPlayerPath];
    [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setResolvedPlayerPath:v27];
  }

  -[_MRPlaybackSessionMigrateRequestProtobuf setAllowFadeTransition:](self->_protobuf, "setAllowFadeTransition:", [v30 allowFadeTransition]);
  if ([v30 originatorType])
  {
    -[_MRPlaybackSessionMigrateRequestProtobuf setOriginatorType:](self->_protobuf, "setOriginatorType:", [v30 originatorType]);
  }

  if ([v30 destinationTypes])
  {
    -[_MRPlaybackSessionMigrateRequestProtobuf setDestinationTypes:](self->_protobuf, "setDestinationTypes:", [v30 destinationTypes]);
  }

  os_unfair_lock_unlock(&self->_lock);

  v28 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)backfillSignpostsForEvent:(uint64_t)a1
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = mach_continuous_time();
    mach_absolute_time();
    [v3 startTimestamp];
    MRConvertTimestampToMachAbsoluteTime(v5);
    [v3 endTimestamp];
    MRConvertTimestampToMachAbsoluteTime(v6);
    v7 = MRLogCategoryMigrationOversize();
    v8 = os_signpost_id_generate(v7);

    switch([v3 role])
    {
      case 0u:
        MRLogCategoryMigrationOversize();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_3_7();
        if (!(!v10 & v9) && os_signpost_enabled(v4))
        {
          v11 = [v3 name];
          OUTLINED_FUNCTION_0_13();
          OUTLINED_FUNCTION_2_5(&dword_1A2860000, v12, v13, v14, "Unknown", "%{public, signpost.description:begin_time}llu,name=%{public}@", v15, v16, v59[0]);
        }

        MRLogCategoryMigrationOversize();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_7_0();
        if (!v10 & v9 || !os_signpost_enabled(v4))
        {
          goto LABEL_46;
        }

        v17 = [v3 name];
        OUTLINED_FUNCTION_1_10();
        v18 = "Unknown";
        break;
      case 1u:
        MRLogCategoryMigrationOversize();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_3_7();
        if (!(!v10 & v9) && os_signpost_enabled(v4))
        {
          v37 = [v3 name];
          OUTLINED_FUNCTION_0_13();
          OUTLINED_FUNCTION_2_5(&dword_1A2860000, v38, v39, v40, "Receptionist", "%{public, signpost.description:begin_time}llu,name=%{public}@", v41, v42, v59[0]);
        }

        MRLogCategoryMigrationOversize();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_7_0();
        if (!v10 & v9 || !os_signpost_enabled(v4))
        {
          goto LABEL_46;
        }

        v17 = [v3 name];
        OUTLINED_FUNCTION_1_10();
        v18 = "Receptionist";
        break;
      case 2u:
        MRLogCategoryMigrationOversize();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_3_7();
        if (!(!v10 & v9) && os_signpost_enabled(v4))
        {
          v25 = [v3 name];
          OUTLINED_FUNCTION_0_13();
          OUTLINED_FUNCTION_2_5(&dword_1A2860000, v26, v27, v28, "Source", "%{public, signpost.description:begin_time}llu,name=%{public}@", v29, v30, v59[0]);
        }

        MRLogCategoryMigrationOversize();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_7_0();
        if (!v10 & v9 || !os_signpost_enabled(v4))
        {
          goto LABEL_46;
        }

        v17 = [v3 name];
        OUTLINED_FUNCTION_1_10();
        v18 = "Source";
        break;
      case 3u:
        MRLogCategoryMigrationOversize();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_3_7();
        if (!(!v10 & v9) && os_signpost_enabled(v4))
        {
          v31 = [v3 name];
          OUTLINED_FUNCTION_0_13();
          OUTLINED_FUNCTION_2_5(&dword_1A2860000, v32, v33, v34, "Destination", "%{public, signpost.description:begin_time}llu,name=%{public}@", v35, v36, v59[0]);
        }

        MRLogCategoryMigrationOversize();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_7_0();
        if (!v10 & v9 || !os_signpost_enabled(v4))
        {
          goto LABEL_46;
        }

        v17 = [v3 name];
        OUTLINED_FUNCTION_1_10();
        v18 = "Destination";
        break;
      case 4u:
        MRLogCategoryMigrationOversize();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_3_7();
        if (!(!v10 & v9) && os_signpost_enabled(v4))
        {
          v19 = [v3 name];
          OUTLINED_FUNCTION_0_13();
          OUTLINED_FUNCTION_2_5(&dword_1A2860000, v20, v21, v22, "InApp", "%{public, signpost.description:begin_time}llu,name=%{public}@", v23, v24, v59[0]);
        }

        MRLogCategoryMigrationOversize();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_7_0();
        if (!v10 & v9 || !os_signpost_enabled(v4))
        {
          goto LABEL_46;
        }

        v17 = [v3 name];
        OUTLINED_FUNCTION_1_10();
        v18 = "InApp";
        break;
      case 5u:
        MRLogCategoryMigrationOversize();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_3_7();
        if (!(!v10 & v9) && os_signpost_enabled(v4))
        {
          v43 = [v3 name];
          OUTLINED_FUNCTION_0_13();
          OUTLINED_FUNCTION_2_5(&dword_1A2860000, v44, v45, v46, "Hijacked", "%{public, signpost.description:begin_time}llu,name=%{public}@", v47, v48, v59[0]);
        }

        MRLogCategoryMigrationOversize();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_7_0();
        if (!v10 & v9 || !os_signpost_enabled(v4))
        {
          goto LABEL_46;
        }

        v17 = [v3 name];
        OUTLINED_FUNCTION_1_10();
        v18 = "Hijacked";
        break;
      case 6u:
        v49 = MRLogCategoryMigrationOversize();
        v50 = v49;
        if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
        {
          v51 = [v3 name];
          OUTLINED_FUNCTION_0_13();
          OUTLINED_FUNCTION_2_5(&dword_1A2860000, v52, v53, v54, "Group", "%{public, signpost.description:begin_time}llu,name=%{public}@", v55, v56, v59[0]);
        }

        v57 = MRLogCategoryMigrationOversize();
        v4 = v57;
        if (v8 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v57))
        {
          goto LABEL_46;
        }

        v17 = [v3 name];
        OUTLINED_FUNCTION_1_10();
        v18 = "Group";
        break;
      default:
        goto LABEL_47;
    }

    _os_signpost_emit_with_name_impl(&dword_1A2860000, v4, OS_SIGNPOST_INTERVAL_END, v8, v18, "%{public, signpost.description:end_time}llu,name=%{public}@", v59, 0x16u);

LABEL_46:
  }

LABEL_47:

  v58 = *MEMORY[0x1E69E9840];
}

- (id)reportDictionary
{
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = [a1 requestID];
    OUTLINED_FUNCTION_8_3();

    v4 = [a1 resolvedPlayerPath];
    v5 = [v4 client];
    v6 = [v5 bundleIdentifier];
    [v2 setObject:v6 forKeyedSubscript:@"appBundle"];

    v7 = [a1 initiator];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = @"unknown";
    }

    [v2 setObject:v9 forKeyedSubscript:@"initiator"];

    v10 = [a1 resolvedPlayerPath];
    v11 = [v10 description];
    [v2 setObject:v11 forKeyedSubscript:@"source"];

    v12 = [a1 playbackSessionRequest];
    v13 = [v12 destinationPlayerPath];
    v14 = [v13 description];
    [v2 setObject:v14 forKeyedSubscript:@"destination"];

    [*(a1 + 8) events];
    objc_claimAutoreleasedReturnValue();
    v15 = OUTLINED_FUNCTION_10_3();
    v16 = [(MRPlaybackSessionMigrateRequest *)v15 eventsDictionary:v12];
    [v2 setObject:v16 forKeyedSubscript:@"events"];

    v17 = MEMORY[0x1E696AD98];
    [a1 duration];
    v18 = [v17 numberWithDouble:?];
    OUTLINED_FUNCTION_8_3();

    v19 = *(a1 + 64);
    if (v19)
    {
      v20 = MRPlaybackSessionMigrateFallbackReasonCopyDescription(v19);
      OUTLINED_FUNCTION_8_3();

      v21 = MRPlaybackSessionMigrateFallbackReasonStatus(*(a1 + 64));
      OUTLINED_FUNCTION_8_3();
    }

    v22 = *(a1 + 32);
    if (v22 && (v23 = MRErrorCopyDescription(v22), OUTLINED_FUNCTION_8_3(), v23, *(a1 + 32)) || *(a1 + 24) && !*(a1 + 64))
    {
      v24 = @"Failed";
    }

    else
    {
      v24 = @"Success";
    }

    [v2 setObject:v24 forKeyedSubscript:@"status"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)eventsDictionary:(id)a1
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v18 = v4;
  v19 = a1;
  if (a1)
  {
    v5 = v4;
    a1 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v21 + 1) + 8 * v9);
          v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v10 name];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_5_5() setObject:? forKeyedSubscript:?];

          v12 = [v10 role];
          if (v12 >= 7)
          {
            v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12, v18];
          }

          else
          {
            v2 = off_1E769DE30[v12];
          }

          [(__CFString *)v2 lowercaseString];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_4_5() setObject:? forKeyedSubscript:?];

          if ([v10 hasInput])
          {
            v13 = [v10 input];
            _MRProtoUtilsNSDictionaryFromProtoDictionary(v13);
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_5_5() setObject:? forKeyedSubscript:?];
          }

          if ([v10 eventsCount])
          {
            v15 = [v10 events];
            [(MRPlaybackSessionMigrateRequest *)v19 eventsDictionary:v15];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_5_5() setObject:? forKeyedSubscript:?];
          }

          if ([v10 hasOutput])
          {
            v14 = [v10 output];
            _MRProtoUtilsNSDictionaryFromProtoDictionary(v14);
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_5_5() setObject:? forKeyedSubscript:?];
          }

          v5 = MEMORY[0x1E696AD98];
          [v10 calculatedDuration];
          [v5 numberWithDouble:?];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_4_5() setObject:? forKeyedSubscript:?];

          [a1 addObject:v11];
          ++v9;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return a1;
}

- (NSString)report
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MRPlaybackSessionMigrateRequest *)self requestID];
  v5 = v4;
  if (self)
  {
    if (self->_fallbackError)
    {
      migrateError = 1;
    }

    else
    {
      migrateError = self->_migrateError;
      if (migrateError)
      {
        migrateError = self->_fallbackReason == 0;
      }
    }
  }

  else
  {
    migrateError = 0;
  }

  v7 = [v3 stringWithFormat:@"requestID=%@ failedPlayingAudio=%d", v4, migrateError];

  return v7;
}

- (id)fullReport
{
  if (a1)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"\nPlayback Session Migration Report\n"];
    [v2 appendString:@"──────────────────────────────────\n\n"];
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v3 setDateFormat:@"HH:mm:ss.SSSXX"];
    v4 = MEMORY[0x1E695DF00];
    v5 = [*(a1 + 8) events];
    v6 = [v5 firstObject];
    [v6 startTimestamp];
    v7 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
    v8 = [v3 stringFromDate:v7];

    v9 = MEMORY[0x1E695DF00];
    v10 = [*(a1 + 8) events];
    v11 = [v10 lastObject];
    [v11 endTimestamp];
    v12 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
    v13 = [v3 stringFromDate:v12];

    v38 = 0;
    v14 = *(a1 + 56);
    if (v14 > 3)
    {
      v15 = @"addProxDevice";
    }

    else
    {
      v15 = off_1E769DF60[v14];
    }

    [v2 appendFormat:@"%@          ╭─􂋞 %@\n", v8, v15];
    v16 = [a1 requestID];
    [v2 appendFormat:@"%@          │ ├─requestID: %@\n", v8, v16];

    v17 = [a1 resolvedPlayerPath];
    v18 = [v17 client];
    v19 = [v18 bundleIdentifier];
    [v2 appendFormat:@"%@          │ ├─%@: %@\n", v8, @"appBundle", v19];

    v20 = [a1 initiator];
    v21 = v20;
    v22 = @"unknown";
    if (v20)
    {
      v22 = v20;
    }

    [v2 appendFormat:@"%@          │ ├─%@: %@\n", v8, @"initiator", v22];

    v23 = [a1 resolvedPlayerPath];
    [v2 appendFormat:@"%@          │ ├─source: %@\n", v8, v23];

    v24 = [a1 playbackSessionRequest];
    v25 = [v24 destinationPlayerPath];
    [v2 appendFormat:@"%@          │ ╰─destination: %@\n", v8, v25];

    v26 = [*(a1 + 8) events];
    v27 = [(MRPlaybackSessionMigrateRequest *)a1 printEvents:v26 dateFormatter:v3 timeElapsed:&v38 depth:0];

    [v2 appendString:v27];
    v28 = v38;
    v29 = *(a1 + 56);
    if (v29 > 3)
    {
      v30 = @"addProxDevice";
    }

    else
    {
      v30 = off_1E769DF60[v29];
    }

    [v2 appendFormat:@"%@ %7.3fs ╰─􂋟 %@\n", v13, v38, v30];
    [v2 appendFormat:@"%@            ├─duration: %.3fs\n", v13, v28];
    v31 = *(a1 + 64);
    if (v31)
    {
      v32 = MRPlaybackSessionMigrateFallbackReasonCopyDescription(v31);
      [v2 appendFormat:@"%@            ├─fallbackReason: %@\n", v13, v32];

      v33 = MRPlaybackSessionMigrateFallbackReasonStatus(*(a1 + 64));
      [v2 appendFormat:@"%@            ├─fallbackStatus: %@\n", v13, v33];
    }

    v34 = *(a1 + 32);
    if (v34 && (v35 = MRErrorCopyDescription(v34), [v2 appendFormat:@"%@            ├─fallbackError: %@\n", v13, v35], v35, *(a1 + 32)) || *(a1 + 24) && !*(a1 + 64))
    {
      v36 = @"Failed";
    }

    else
    {
      v36 = @"Success";
    }

    [v2 appendFormat:@"%@            ╰─status: %@\n", v13, v36];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)printEvents:(void *)a3 dateFormatter:(uint64_t *)a4 timeElapsed:(int)a5 depth:
{
  v110 = a4;
  v143 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v123 = a1;
  v103 = v8;
  if (a1)
  {
    v126 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v117 = v9;
    if (a5 < 1)
    {
      v12 = &stru_1F1513E38;
    }

    else
    {
      v10 = &stru_1F1513E38;
      v11 = a5;
      do
      {
        v12 = [(__CFString *)v10 stringByAppendingString:@"│ ╵ "];

        v10 = v12;
        --v11;
      }

      while (v11);
    }

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    obj = v8;
    v9 = v117;
    v109 = [obj countByEnumeratingWithState:&v136 objects:v142 count:16];
    if (v109)
    {
      v13 = @"│";
      if (a5 > 0)
      {
        v13 = @" ";
      }

      v105 = v13;
      v106 = *v137;
      HIDWORD(v116) = a5;
      do
      {
        v14 = 0;
        do
        {
          if (*v137 != v106)
          {
            objc_enumerationMutation(obj);
          }

          v114 = v14;
          v15 = *(*(&v136 + 1) + 8 * v14);
          [(MRPlaybackSessionMigrateRequest *)v123 backfillSignpostsForEvent:v15];
          v16 = [v15 name];
          v17 = [(MRPlaybackSessionMigrateRequest *)v123 symbolForEventName:v16 isStart:1];

          v18 = MEMORY[0x1E695DF00];
          [v15 startTimestamp];
          [v18 dateWithTimeIntervalSinceReferenceDate:?];
          objc_claimAutoreleasedReturnValue();
          v19 = [OUTLINED_FUNCTION_4_5() stringFromDate:?];

          v20 = [v15 reportName];
          v21 = v20;
          v112 = v17;
          if (a5)
          {
            [v126 appendFormat:@"%@          %@╭─%@%@\n", v19, v12, v17, v20];
          }

          else
          {
            [v126 appendFormat:@"%@          ├─%@%@\n", v19, v17, v20, v100];
          }

          v118 = v15;
          v22 = [v15 input];
          v23 = _MRProtoUtilsNSDictionaryFromProtoDictionary(v22);

          v134 = 0u;
          v135 = 0u;
          v132 = 0u;
          v133 = 0u;
          v24 = v23;
          v25 = [v24 countByEnumeratingWithState:&v132 objects:v141 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = 0;
            v28 = *v133;
            do
            {
              v29 = 0;
              v30 = v27 + 1;
              do
              {
                if (*v133 != v28)
                {
                  objc_enumerationMutation(v24);
                }

                v31 = *(*(&v132 + 1) + 8 * v29);
                v32 = [v24 objectForKey:v31];
                if (v30 == [v24 count])
                {
                  v33 = @"%@          %@│ ╰─%@: %@\n";
                }

                else
                {
                  v33 = @"%@          %@│ ├─%@: %@\n";
                }

                [v126 appendFormat:v33, v19, v12, v31, v32];

                ++v29;
                ++v30;
              }

              while (v26 != v29);
              v27 += v26;
              v26 = [v24 countByEnumeratingWithState:&v132 objects:v141 count:16];
            }

            while (v26);
          }

          v34 = v118;
          if ([v118 eventsCount])
          {
            v131 = *v110;
            v35 = [v118 events];
            v36 = [(MRPlaybackSessionMigrateRequest *)v123 printEvents:v35 dateFormatter:v117 timeElapsed:&v131 depth:(HIDWORD(v116) + 1)];
            [v126 appendString:v36];
          }

          [v118 calculatedDuration];
          v38 = v37;
          v39 = [v118 name];
          v40 = [MEMORY[0x1E696AD98] numberWithDouble:*&v38];
          [(MRPlaybackSessionMigrateRequest *)v123 setAnalyticsDurationForEvent:v39 duration:v40];

          *v110 = *&v38 + *v110;
          v41 = [v118 name];
          v42 = [(MRPlaybackSessionMigrateRequest *)v123 symbolForEventName:v41 isStart:0];

          v43 = MEMORY[0x1E695DF00];
          [v118 endTimestamp];
          [v43 dateWithTimeIntervalSinceReferenceDate:?];
          objc_claimAutoreleasedReturnValue();
          v44 = [OUTLINED_FUNCTION_4_5() stringFromDate:?];

          v45 = *v110;
          v46 = [v118 reportName];
          v54 = v46;
          if (HIDWORD(v116))
          {
            v55 = OUTLINED_FUNCTION_9_2(v46, v47, v48, v49, v50, v51, v52, v53, v98, v45, v12, v42, v46, v102, v103, obj, v105, v106, v107, v109, v110, v42, v112, v114, v116, v117, v118, v121, v122, v123, v124, v126);
            v56 = @"%@ %7.3fs %@╰─%@%@\n";
          }

          else
          {
            v55 = OUTLINED_FUNCTION_9_2(v46, v47, v48, v49, v50, v51, v52, v53, v98, v45, v42, v46, v101, v102, v103, obj, v105, v106, v107, v109, v110, v42, v112, v114, v116, v117, v118, v121, v122, v123, v124, v126);
            v56 = @"%@ %7.3fs ├─%@%@\n";
          }

          [v55 appendFormat:v56];

          v57 = [v34 output];
          v58 = _MRProtoUtilsNSDictionaryFromProtoDictionary(v57);

          v59 = v105;
          v127 = 0u;
          v128 = 0u;
          v129 = 0u;
          v130 = 0u;
          v60 = v58;
          v125 = [v60 countByEnumeratingWithState:&v127 objects:v140 count:16];
          if (v125)
          {
            v61 = *v128;
            v121 = v44;
            v122 = v59;
            do
            {
              for (i = 0; i != v125; ++i)
              {
                if (*v128 != v61)
                {
                  objc_enumerationMutation(v60);
                }

                v63 = *(*(&v127 + 1) + 8 * i);
                v64 = [v60 objectForKey:v63];
                v65 = [v63 isEqualToString:@"size"];
                if (v65)
                {
                  v73 = [v64 unsignedLongValue];
                  [v123 setPlaybackSessionSize:v73];
                  v74 = v61;
                  v75 = v19;
                  v76 = v12;
                  v77 = v60;
                  v78 = objc_alloc(MEMORY[0x1E696AAF0]);
                  v79 = [v78 stringFromByteCount:v73];

                  v60 = v77;
                  v12 = v76;
                  v19 = v75;
                  v61 = v74;
                  v64 = v79;
                  v44 = v121;
                  v59 = v122;
                }

                [OUTLINED_FUNCTION_9_2(v65 v66];
              }

              v125 = [v60 countByEnumeratingWithState:&v127 objects:v140 count:16];
            }

            while (v125);
          }

          v80 = [v119 mr_error];
          v88 = v80;
          if (v80)
          {
            v124 = v60;
            v120 = v80;
            v107 = [v80 msv_treeDescription];
            v89 = [v107 componentsSeparatedByString:@"\n"];
            v90 = [v89 mutableCopy];

            a5 = HIDWORD(v116);
            if ([v90 count])
            {
              v91 = 0;
              do
              {
                if (v91)
                {
                  v92 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v93 = [v90 objectAtIndexedSubscript:v91];
                  v94 = [v92 initWithFormat:@"%@          %@%@          %@", v44, v12, v59, v93];

                  [v90 setObject:v94 atIndexedSubscript:v91];
                }

                ++v91;
              }

              while ([v90 count] > v91);
            }

            v95 = [v90 componentsJoinedByString:@"\n"];
            [v126 appendFormat:@"%@          %@%@ │─duration: %.3fs\n", v44, v12, v59, v38];
            v100 = v95;
            [v126 appendFormat:@"%@          %@%@ ╰─error: %@\n", v44, v12, v59];

            v60 = v124;
            v88 = v120;
          }

          else
          {
            [OUTLINED_FUNCTION_9_2(0 v81];
            a5 = HIDWORD(v116);
          }

          v14 = v115 + 1;
          v9 = v117;
        }

        while (v115 + 1 != v109);
        v109 = [obj countByEnumeratingWithState:&v136 objects:v142 count:16];
      }

      while (v109);
    }
  }

  else
  {
    v126 = 0;
  }

  v96 = *MEMORY[0x1E69E9840];

  return v126;
}

- (__CFString)symbolForEventName:(int)a3 isStart:
{
  v48[43] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = @"􂄀";
    if (a3)
    {
      v3 = @"􂇄";
    }

    v47[0] = @"DetermineRecipe";
    v47[1] = @"ResolveSource";
    v4 = @"􀜈";
    if (a3)
    {
      v4 = @"􀜇";
    }

    v48[0] = v3;
    v48[1] = v4;
    v5 = @"􁼢";
    if (a3)
    {
      v5 = @"􁼡";
    }

    v47[2] = @"ResolveDestination";
    v47[3] = @"GetPlaybackSession";
    v6 = @"􁇉";
    if (a3)
    {
      v6 = @"􁇈";
    }

    v48[2] = v5;
    v48[3] = v6;
    v7 = @"􁛂";
    if (a3)
    {
      v7 = @"􁛁";
    }

    v47[4] = @"Prepare";
    v47[5] = @"Finalize";
    v8 = @"􁛄";
    if (a3)
    {
      v8 = @"􁛃";
    }

    v48[4] = v7;
    v48[5] = v8;
    v9 = @"􀈢";
    if (a3)
    {
      v9 = @"􀈡";
    }

    v47[6] = @"SendPlaybackSession";
    v47[7] = @"SetPlaybackSession";
    v10 = @"􀞉";
    if (a3)
    {
      v10 = @"􀞈";
    }

    v48[6] = v9;
    v48[7] = v10;
    v11 = @"􁛳";
    if (!a3)
    {
      v11 = @"􁛴";
    }

    v47[8] = @"InterruptBestStreamIfNecessary";
    v47[9] = @"SendPause";
    v12 = @"􀊗";
    if (!a3)
    {
      v12 = @"􀊘";
    }

    v48[8] = v11;
    v48[9] = v12;
    v13 = @"􁞏";
    if (a3)
    {
      v13 = @"􁞎";
    }

    v47[10] = @"VerifyPlayer";
    v47[11] = @"BlessApp";
    v14 = @"􂛒";
    if (a3)
    {
      v14 = @"􂛑";
    }

    v48[10] = v13;
    v48[11] = v14;
    v15 = @"􀸺";
    if (a3)
    {
      v15 = @"􀸹";
    }

    v47[12] = @"Apply";
    v47[13] = @"LaunchApp";
    v16 = @"􁇮";
    if (a3)
    {
      v16 = @"􁇭";
    }

    v48[12] = v15;
    v48[13] = v16;
    v17 = @"􂚴";
    if (a3)
    {
      v17 = @"􂚳";
    }

    v47[14] = @"ModifyTopology";
    v47[15] = @"Preamble";
    v18 = @"􀶢";
    if (a3)
    {
      v18 = @"􀶡";
    }

    v48[14] = v17;
    v48[15] = v18;
    v19 = @"􀷗";
    if (a3)
    {
      v19 = @"􀷖";
    }

    v47[16] = @"SetActiveItem";
    v47[17] = @"Epilogue";
    v20 = @"􀶠";
    if (a3)
    {
      v20 = @"􀶟";
    }

    v48[16] = v19;
    v48[17] = v20;
    v47[18] = @"setPlaybackSession";
    v47[19] = @"interruptBestStreamIfNecessary";
    v48[18] = v10;
    v48[19] = v11;
    v47[20] = @"Pause";
    v47[21] = @"pause";
    v48[20] = v12;
    v48[21] = v12;
    v21 = @"􀺅";
    if (!a3)
    {
      v21 = @"􀺆";
    }

    v47[22] = @"Seek";
    v47[23] = @"seek";
    v48[22] = v21;
    v48[23] = v21;
    v22 = @"􀊖";
    if (a3)
    {
      v22 = @"􀊕";
    }

    v47[24] = @"Play";
    v47[25] = @"play";
    v48[24] = v22;
    v48[25] = v22;
    v23 = @"􀖋";
    if (a3)
    {
      v23 = @"􀖊";
    }

    v47[26] = @"ResetOutputContext";
    v47[27] = @"resetOutputContext";
    v48[26] = v23;
    v48[27] = v23;
    v24 = @"􀻬";
    if (a3)
    {
      v24 = @"􀻫";
    }

    v47[28] = @"CoordinatePlayback";
    v47[29] = @"FadeIn";
    v25 = @"􁛵";
    if (!a3)
    {
      v25 = @"􁛶";
    }

    v48[28] = v24;
    v48[29] = v25;
    v26 = @"􁛸";
    if (a3)
    {
      v26 = @"􁛷";
    }

    v47[30] = @"FadeOut";
    v47[31] = @"GetPlaybackQueue";
    v27 = @"􂃋";
    if (!a3)
    {
      v27 = @"􂃌";
    }

    v48[30] = v26;
    v48[31] = v27;
    v28 = @"􀒍";
    if (a3)
    {
      v28 = @"􀒌";
    }

    v47[32] = @"GetPlaybackState";
    v47[33] = @"SetOutputDevices";
    v48[32] = v28;
    v48[33] = v17;
    if (a3)
    {
      v29 = @"􀥑";
    }

    else
    {
      v29 = @"􀥒";
    }

    v47[34] = @"AddOutputDevices";
    v47[35] = @"RemoveOutputDevices";
    v30 = @"􀫡";
    if (a3)
    {
      v30 = @"􀫠";
    }

    v48[34] = v29;
    v48[35] = v30;
    if (a3)
    {
      v31 = @"􀋕";
    }

    else
    {
      v31 = @"􀋖";
    }

    v47[36] = @"RouteToDevice";
    v47[37] = @"DiscoverDestinationEndpoint";
    v32 = @"􁣏";
    if (a3)
    {
      v32 = @"􁣎";
    }

    v48[36] = v31;
    v48[37] = v32;
    if (a3)
    {
      v33 = @"􁷔";
    }

    else
    {
      v33 = @"􁷕";
    }

    v47[38] = @"UpdateActiveSystemEndpoint";
    v47[39] = @"ExpanseMigration";
    v34 = @"􂝍";
    if (a3)
    {
      v34 = @"􂝌";
    }

    v48[38] = v33;
    v48[39] = v34;
    if (a3)
    {
      v35 = @"􀷈";
    }

    else
    {
      v35 = @"􀷉";
    }

    v47[40] = @"CreateSecondaryEndpoint";
    v47[41] = @"Connect";
    v36 = @"􀢦";
    if (a3)
    {
      v36 = @"􀢥";
    }

    v48[40] = v35;
    v48[41] = v36;
    v47[42] = @"Search";
    v37 = @"􀒓";
    if (a3)
    {
      v37 = @"􀒒";
    }

    v48[42] = v37;
    v38 = MEMORY[0x1E695DF20];
    if (a3)
    {
      v39 = @"􀒎";
    }

    else
    {
      v39 = @"􀒏";
    }

    v40 = a2;
    v41 = [v38 dictionaryWithObjects:v48 forKeys:v47 count:43];
    v42 = [v41 objectForKey:v40];

    if (v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = v39;
    }

    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  v45 = *MEMORY[0x1E69E9840];

  return v44;
}

- (void)setAnalyticsDurationForEvent:(void *)a3 duration:
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    if ([v6 isEqualToString:@"Preamble"])
    {
      [OUTLINED_FUNCTION_6_3() set_preDuration:?];
    }

    else if ([v6 isEqualToString:@"Prepare"])
    {
      [OUTLINED_FUNCTION_6_3() set_durationPrepare:?];
    }

    else if ([v6 isEqualToString:@"DetermineRecipe"])
    {
      [OUTLINED_FUNCTION_6_3() set_durationDetermineRecipe:?];
    }

    else if ([v6 isEqualToString:@"Apply"])
    {
      [OUTLINED_FUNCTION_6_3() set_durationApply:?];
    }

    else if ([v6 isEqualToString:@"SetPlaybackSession"])
    {
      [OUTLINED_FUNCTION_6_3() set_durationApply_SetPlaybackSession:?];
    }

    else if ([v6 isEqualToString:@"Finalize"])
    {
      [OUTLINED_FUNCTION_6_3() set_durationFinalize:?];
    }

    else if ([v6 isEqualToString:@"Epilogue"])
    {
      [OUTLINED_FUNCTION_6_3() set_postDuration:?];
    }
  }
}

- (id)_onlock_findEventWithID:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 16));
    [*(a1 + 8) events];
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_10_3();
    v6 = [(MRPlaybackSessionMigrateRequest *)v5 _findEventWithID:a2 inEvents:v2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addEventInput:(id)a3 withKey:(id)a4 toEventID:(unsigned int)a5
{
  v9 = OUTLINED_FUNCTION_11_3(self, a2, a3, a4);
  v10 = v6;
  os_unfair_lock_lock((v5 + 16));
  if (*(v5 + 40) == 1)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:v8 object:v5 file:@"MRPlaybackSessionMigrateRequest.m" lineNumber:833 description:@"Attempt to add event inputs after finalized report"];
  }

  v17 = [(MRPlaybackSessionMigrateRequest *)v5 _onlock_findEventWithID:v7];
  v11 = [v17 input];

  if (!v11)
  {
    v12 = objc_alloc_init(_MRDictionaryProtobuf);
    [v17 setInput:v12];
  }

  v13 = objc_alloc_init(_MRKeyValuePairProtobuf);
  [(_MRKeyValuePairProtobuf *)v13 setKey:v9];

  v14 = _MRProtoUtilsProtoValueFromPlistType(v10);

  [(_MRKeyValuePairProtobuf *)v13 setValue:v14];
  v15 = [v17 input];
  [v15 addPair:v13];

  os_unfair_lock_unlock((v5 + 16));
}

- (void)addEventOutput:(id)a3 withKey:(id)a4 toEventID:(unsigned int)a5
{
  v9 = OUTLINED_FUNCTION_11_3(self, a2, a3, a4);
  v10 = v6;
  os_unfair_lock_lock((v5 + 16));
  if (*(v5 + 40) == 1)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:v8 object:v5 file:@"MRPlaybackSessionMigrateRequest.m" lineNumber:847 description:@"Attempt to add event outputs after finalized report"];
  }

  v17 = [(MRPlaybackSessionMigrateRequest *)v5 _onlock_findEventWithID:v7];
  v11 = [v17 output];

  if (!v11)
  {
    v12 = objc_alloc_init(_MRDictionaryProtobuf);
    [v17 setOutput:v12];
  }

  v13 = objc_alloc_init(_MRKeyValuePairProtobuf);
  [(_MRKeyValuePairProtobuf *)v13 setKey:v9];

  v14 = _MRProtoUtilsProtoValueFromPlistType(v10);

  [(_MRKeyValuePairProtobuf *)v13 setValue:v14];
  v15 = [v17 output];
  [v15 addPair:v13];

  os_unfair_lock_unlock((v5 + 16));
}

- (id)_findEventWithName:(uint64_t)a3 role:
{
  if (a1)
  {
    v4 = *(a1 + 8);
    v5 = a2;
    [v4 events];
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_10_3();
    v7 = [(MRPlaybackSessionMigrateRequest *)v6 _findEventWithName:v5 role:a3 inEvents:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)gatherAnalytics
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[6];
    if (!v2)
    {
      v3 = objc_alloc_init(MRPlaybackSessionMigrateAnalytics);
      v4 = *(v1 + 48);
      *(v1 + 48) = v3;

      v2 = *(v1 + 48);
    }

    v5 = [v1 resolvedPlayerPath];
    v6 = [v5 client];
    v7 = [v6 bundleIdentifier];
    [v2 setHandoffAppBundleFromString:v7];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v1, "playbackSessionSize")}];
    [*(v1 + 48) set_handoffQueueSize:v8];

    v9 = *(v1 + 48);
    [v1 initiator];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_10_3() setHandoffInitiatorFromString:v5];

    if (*(v1 + 32))
    {
      v10 = 0;
    }

    else if (*(v1 + 24))
    {
      v10 = *(v1 + 64) != 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = [MEMORY[0x1E696AD98] numberWithInt:v10];
    [*(v1 + 48) set_isSuccess:v11];

    v12 = [v1 resolvedPlayerPath];
    v13 = [v12 origin];
    v14 = [MRDeviceInfoRequest deviceInfoForOrigin:v13];

    [*(v1 + 48) setHandoffSourceFromMRDeviceClass:{objc_msgSend(v14, "deviceClass")}];
    v15 = [v1 playbackSessionRequest];
    v16 = [v15 destinationPlayerPath];
    v17 = [v16 origin];
    v18 = [MRDeviceInfoRequest deviceInfoForOrigin:v17];

    [*(v1 + 48) setHandoffDestinationFromMRDeviceClass:{objc_msgSend(v18, "deviceClass")}];
    v19 = [v18 modelID];
    if ([v19 hasPrefix:{@"AudioAccessory5, "}])
    {

      v20 = 1;
    }

    else
    {
      v21 = [v18 deviceClass];

      if (v21 == 6)
      {
        v20 = 1;
      }

      else
      {
        v20 = 3;
      }
    }

    [*(v1 + 48) set_handoffDestinationPerformanceClass:v20];
    v22 = [v14 modelID];
    if ([v22 hasPrefix:{@"AudioAccessory5, "}])
    {

      v23 = 1;
    }

    else
    {
      v24 = [v14 deviceClass];

      if (v24 == 6)
      {
        v23 = 1;
      }

      else
      {
        v23 = 3;
      }
    }

    [*(v1 + 48) set_handoffSourcePerformanceClass:v23];
    v25 = *(v1 + 24);
    v26 = v25;
    if (v25)
    {
      v27 = [v25 msv_analyticSignature];
      [*(v1 + 48) set_errorOnion:v27];

      v29 = __50__MRPlaybackSessionMigrateRequest_gatherAnalytics__block_invoke(v28, v26);
      v30 = [v29 msv_analyticSignature];
      [*(v1 + 48) set_errorLevel_0:v30];

      v31 = [v26 msv_underlyingError];
      v32 = v31;
      if (v31)
      {
        v33 = __50__MRPlaybackSessionMigrateRequest_gatherAnalytics__block_invoke(v31, v31);
        v34 = [v33 msv_analyticSignature];
        [*(v1 + 48) set_errorLevel_1:v34];
      }

      v35 = v26;
      v36 = [v35 msv_underlyingError];

      if (v36)
      {
        v37 = 0;
        do
        {
          v36 = v35;

          v35 = [v36 msv_underlyingError];

          v38 = [v35 msv_underlyingError];

          v37 = v36;
        }

        while (v38);
      }

      v39 = [v35 msv_analyticSignature];
      [*(v1 + 48) set_errorLevelCore_0:v39];

      if (v36)
      {
        v41 = __50__MRPlaybackSessionMigrateRequest_gatherAnalytics__block_invoke(v40, v36);
        v42 = [v41 msv_analyticSignature];
        [*(v1 + 48) set_errorLevelCore_1:v42];
      }
    }

    v1 = [*(v1 + 48) dictionaryRepresentation];
  }

  return v1;
}

- (void)_finalizeRequestWithAnalytics:(uint64_t)a1
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 16));
    if (*(a1 + 40) == 1)
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:sel__finalizeRequestWithAnalytics_ object:a1 file:@"MRPlaybackSessionMigrateRequest.m" lineNumber:1004 description:@"Attempt to finalize more than once"];
    }

    *(a1 + 40) = 1;
    os_unfair_lock_unlock((a1 + 16));
    v4 = MRLogCategoryMigrationOversize();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(MRPlaybackSessionMigrateRequest *)a1 fullReport];
      *buf = 138543362;
      v34 = v7;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (MSVDeviceOSIsInternalInstall())
    {
      v8 = [(MRPlaybackSessionMigrateRequest *)a1 reportDictionary];
      v9 = MEMORY[0x1E696ACB0];
      v31 = @"migrationReport";
      v32 = v8;
      v26 = v8;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v29 = 0;
      v11 = [v9 dataWithJSONObject:v10 options:0 error:&v29];
      v12 = v29;

      if (v11)
      {
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v11 encoding:4];
        v14 = MRLogCategoryMigrationOversize();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v34 = v13;
          _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      else
      {
        v13 = MRLogCategoryMigrationOversize();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v34 = v12;
          _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_ERROR, "Error while attempting to decode JSON migrationReport: %@", buf, 0xCu);
        }
      }

      if (*(a1 + 32) || *(a1 + 24) && !*(a1 + 64))
      {
        v15 = [*(a1 + 8) events];
        v16 = _FirstErrorEvent(v15);
        v17 = [v16 name];

        v18 = MEMORY[0x1E696AEC0];
        v19 = [a1 recipeType];
        if (v19 >= 3)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v19];
        }

        else
        {
          v20 = off_1E769DF80[v19];
        }

        v21 = [v18 stringWithFormat:@"%@MigrationFailure", v20];

        v22 = MEMORY[0x1E69B13D8];
        v23 = *MEMORY[0x1E69B1348];
        v30 = v26;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        [v22 snapshotWithDomain:v23 type:@"QHO" subType:v21 context:v17 triggerThresholdValues:0 events:v24 completion:0];
      }
    }

    if ([a1 recipeType] == 2)
    {
      v5 = MRLogCategoryMigrationOversize();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v34 = v3;
        _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "Migration Analytics: %{public}@", buf, 0xCu);
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __65__MRPlaybackSessionMigrateRequest__finalizeRequestWithAnalytics___block_invoke;
      v27[3] = &unk_1E769DDB0;
      v28 = v3;
      MRAnalyticsSendEvent(@"com.apple.mediaremote.qhop", 0, v27);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __58__MRPlaybackSessionMigrateRequest_finalizeWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addEntriesFromDictionary:a2];
  [(MRPlaybackSessionMigrateRequest *)*(a1 + 40) _finalizeRequestWithAnalytics:?];
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_gatherMPPMetricsWithCompletion:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 startEvent:@"Post" role:1];
    v5 = [(MRPlaybackSessionMigrateRequest *)a1 _findEventWithName:4 role:?];
    v6 = [v5 input];
    v7 = _MRProtoUtilsNSDictionaryFromProtoDictionary(v6);
    v8 = [v7 objectForKeyedSubscript:@"commandID"];

    v9 = [a1 copy];
    v10 = [a1 playbackSessionRequest];
    v11 = [v10 destinationPlayerPath];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__MRPlaybackSessionMigrateRequest__gatherMPPMetricsWithCompletion___block_invoke;
    v12[3] = &unk_1E769DD88;
    v12[4] = a1;
    v14 = v4;
    v13 = v3;
    MRMediaRemoteSendPlaybackSessionMigratePost(v9, v8, v11, MEMORY[0x1E69E96A0], v12);
  }
}

- (id)innerErrorForEvent:(void *)a1
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 error];

    if (v5)
    {
      a1 = [v4 mr_error];
    }

    else
    {
      memset(v9, 0, sizeof(v9));
      v6 = [v4 events];
      if ([v6 countByEnumeratingWithState:v9 objects:v10 count:16])
      {
        a1 = [(MRPlaybackSessionMigrateRequest *)a1 innerErrorForEvent:?];
      }

      else
      {
        a1 = 0;
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return a1;
}

- (void)startEvent:(uint64_t)a1 role:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRPlaybackSessionMigrateRequest.m" lineNumber:778 description:@"Attempt to start event after finalized report"];
}

- (void)endEventWithID:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRPlaybackSessionMigrateRequest.m" lineNumber:800 description:@"Attempt to end event after finalized report"];
}

- (void)endEventWithID:(NSObject *)a3 error:.cold.2(uint64_t a1, int a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) requestID];
  v7 = 138412546;
  v8 = v5;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "[QHO:%@] event with id=%{sonic:fourCC}d count not be ended [not found]", &v7, 0x12u);

  v6 = *MEMORY[0x1E69E9840];
}

void __67__MRPlaybackSessionMigrateRequest__gatherMPPMetricsWithCompletion___block_invoke_cold_1(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v29 = [(MRPlaybackSessionMigrateRequest *)*a1 _findEventWithName:1 role:?];
  if (v29)
  {
    v8 = MEMORY[0x1E696AD98];
    [a3 doubleValue];
    v10 = v9;
    [v29 startTimestamp];
    v12 = [v8 numberWithDouble:v10 - v11];
    [a2 setObject:v12 forKeyedSubscript:@"userPerceivedHandoffTime"];
    v13 = MEMORY[0x1E696AEC0];
    [v12 doubleValue];
    v15 = [v13 stringWithFormat:@"%.3fs", v14];
    [*a1 addEventOutput:v15 withKey:@"userPerceivedHandoffTime" toEventID:*(a4 + 48)];
    v16 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v16 setDateFormat:@"HH:mm:ss.SSSXX"];
    v17 = MEMORY[0x1E695DF00];
    [a3 doubleValue];
    v18 = [v17 dateWithTimeIntervalSinceReferenceDate:?];
    v19 = [v16 stringFromDate:v18];

    [*a1 addEventOutput:v19 withKey:@"MPPfirstAudioFrameTimestamp" toEventID:*(a4 + 48)];
  }

  v20 = [(MRPlaybackSessionMigrateRequest *)*a1 _findEventWithName:4 role:?];
  if (v20)
  {
    v21 = MEMORY[0x1E696AD98];
    [a3 doubleValue];
    v23 = v22;
    [v20 endTimestamp];
    v25 = [v21 numberWithDouble:v23 - v24];
    [a2 setObject:v25 forKeyedSubscript:@"userPerceivedAudioContinuity"];
    v26 = MEMORY[0x1E696AEC0];
    [v25 doubleValue];
    v28 = [v26 stringWithFormat:@"%.3fs", v27];
    [*a1 addEventOutput:v28 withKey:@"userPerceivedAudioContinuity" toEventID:*(a4 + 48)];
  }

  [a2 removeObjectForKey:@"MPP_firstAudioFrameTimestamp"];
}

@end