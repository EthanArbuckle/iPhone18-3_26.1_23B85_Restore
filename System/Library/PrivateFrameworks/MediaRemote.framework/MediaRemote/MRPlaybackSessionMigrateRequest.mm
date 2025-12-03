@interface MRPlaybackSessionMigrateRequest
- (BOOL)allowFadeTransition;
- (MRContentItem)contentItem;
- (MRPlaybackSessionMigrateRequest)init;
- (MRPlaybackSessionMigrateRequest)initWithData:(id)data;
- (MRPlaybackSessionMigrateRequest)initWithProtobuf:(id)protobuf;
- (MRPlaybackSessionRequest)playbackSessionRequest;
- (MRPlayerPath)playerPath;
- (MRPlayerPath)resolvedPlayerPath;
- (MRSendCommandResultStatus)setPlaybackSessionCommandStatus;
- (NSData)protobufData;
- (NSString)initiator;
- (NSString)report;
- (NSString)requestID;
- (_MRPlaybackSessionMigrateRequestProtobuf)protobuf;
- (__CFString)symbolForEventName:(int)name isStart:;
- (double)duration;
- (double)playbackPosition;
- (double)playbackRate;
- (id)_findEventWithID:(void *)d inEvents:;
- (id)_findEventWithName:(uint64_t)name role:;
- (id)_findEventWithName:(uint64_t)name role:(void *)role inEvents:;
- (id)_getLastEventIfActiveInEvents:(uint64_t)events;
- (id)_onlock_findEventWithID:(uint64_t)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)eventsDictionary:(id)dictionary;
- (id)fullReport;
- (id)gatherAnalytics;
- (id)innerErrorForEvent:(void *)event;
- (id)merge:(id)merge;
- (id)printEvents:(void *)events dateFormatter:(uint64_t *)formatter timeElapsed:(int)elapsed depth:;
- (id)reportDictionary;
- (int64_t)endpointOptions;
- (int64_t)playerOptions;
- (unsigned)playbackState;
- (void)_finalizeRequestWithAnalytics:(uint64_t)analytics;
- (void)_gatherMPPMetricsWithCompletion:(void *)completion;
- (void)addDestinationType:(unsigned int)type;
- (void)addDestinationTypesFromDevices:(id)devices;
- (void)addEventInput:(id)input withKey:(id)key toEventID:(unsigned int)d;
- (void)addEventOutput:(id)output withKey:(id)key toEventID:(unsigned int)d;
- (void)backfillSignpostsForEvent:(uint64_t)event;
- (void)finalizeWithCompletion:(id)completion;
- (void)setAnalyticsDurationForEvent:(void *)event duration:;
- (void)setContentItem:(id)item;
- (void)setEndpointOptions:(int64_t)options;
- (void)setInitiator:(id)initiator;
- (void)setOriginatorTypeFromDevice:(id)device;
- (void)setPlaybackPosition:(double)position;
- (void)setPlaybackRate:(double)rate;
- (void)setPlaybackSessionRequest:(id)request;
- (void)setPlayerOptions:(int64_t)options;
- (void)setPlayerPath:(id)path;
- (void)setRequestID:(id)d;
- (void)setResolvedPlayerPath:(id)path;
- (void)setSetPlaybackSessionCommandStatus:(id)status;
- (void)updateError:(uint64_t)error;
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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [(MRPlaybackSessionMigrateRequest *)v4 setRequestID:uUIDString];
  }

  return v4;
}

- (MRPlaybackSessionMigrateRequest)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v10.receiver = self;
    v10.super_class = MRPlaybackSessionMigrateRequest;
    v6 = [(MRPlaybackSessionMigrateRequest *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_protobuf, protobuf);
      v7->_lock._os_unfair_lock_opaque = 0;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRPlaybackSessionMigrateRequest)initWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v5 = [[_MRPlaybackSessionMigrateRequestProtobuf alloc] initWithData:dataCopy];
    v6 = [(MRPlaybackSessionMigrateRequest *)self initWithProtobuf:v5];
  }

  else
  {
    v6 = [(MRPlaybackSessionMigrateRequest *)self initWithProtobuf:0];
  }

  return v6;
}

- (void)setRequestID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setRequestID:dCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)requestID
{
  os_unfair_lock_lock(&self->_lock);
  requestID = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf requestID];
  v4 = [requestID copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setInitiator:(id)initiator
{
  initiatorCopy = initiator;
  os_unfair_lock_lock(&self->_lock);
  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setInitiator:initiatorCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPlayerPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_lock(&self->_lock);
  protobuf = [pathCopy protobuf];

  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setPlayerPath:protobuf];

  os_unfair_lock_unlock(&self->_lock);
}

- (MRPlayerPath)playerPath
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MRPlayerPath alloc];
  playerPath = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf playerPath];
  v5 = [(MRPlayerPath *)v3 initWithProtobuf:playerPath];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setResolvedPlayerPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_lock(&self->_lock);
  protobuf = [pathCopy protobuf];

  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setResolvedPlayerPath:protobuf];

  os_unfair_lock_unlock(&self->_lock);
}

- (MRPlayerPath)resolvedPlayerPath
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MRPlayerPath alloc];
  resolvedPlayerPath = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf resolvedPlayerPath];
  v5 = [(MRPlayerPath *)v3 initWithProtobuf:resolvedPlayerPath];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (NSString)initiator
{
  os_unfair_lock_lock(&self->_lock);
  initiator = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf initiator];
  v4 = [initiator copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setPlayerOptions:(int64_t)options
{
  os_unfair_lock_lock(&self->_lock);
  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setPlayerOptions:options];

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)playerOptions
{
  os_unfair_lock_lock(&self->_lock);
  playerOptions = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf playerOptions];
  os_unfair_lock_unlock(&self->_lock);
  return playerOptions;
}

- (void)setEndpointOptions:(int64_t)options
{
  os_unfair_lock_lock(&self->_lock);
  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setEndpointOptions:options];

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)endpointOptions
{
  os_unfair_lock_lock(&self->_lock);
  endpointOptions = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf endpointOptions];
  os_unfair_lock_unlock(&self->_lock);
  return endpointOptions;
}

- (unsigned)playbackState
{
  os_unfair_lock_lock(&self->_lock);
  playbackState = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf playbackState];
  os_unfair_lock_unlock(&self->_lock);
  return playbackState;
}

- (void)setPlaybackPosition:(double)position
{
  os_unfair_lock_lock(&self->_lock);
  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setPlaybackPosition:position];

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

- (void)setPlaybackRate:(double)rate
{
  os_unfair_lock_lock(&self->_lock);
  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setPlaybackRate:rate];

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

- (void)setContentItem:(id)item
{
  itemCopy = item;
  os_unfair_lock_lock(&self->_lock);
  v5 = [MRContentItem alloc];
  identifier = [itemCopy identifier];
  v11 = [(MRContentItem *)v5 initWithIdentifier:identifier];

  Title = MRContentItemGetTitle(itemCopy);
  MRContentItemSetTitle(v11, Title);
  IsAlwaysLive = MRContentItemGetIsAlwaysLive(itemCopy);
  MRContentItemSetIsAlwaysLive(v11, IsAlwaysLive);
  v9 = MRContentItemGetIsInTransition(itemCopy);

  MRContentItemSetIsInTransition(v11, v9);
  v10 = [(MRContentItem *)v11 protobufWithEncoding:0];
  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setContentItem:v10];

  os_unfair_lock_unlock(&self->_lock);
}

- (MRContentItem)contentItem
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MRContentItem alloc];
  contentItem = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf contentItem];
  v5 = [(MRContentItem *)v3 initWithProtobuf:contentItem];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setPlaybackSessionRequest:(id)request
{
  requestCopy = request;
  os_unfair_lock_lock(&self->_lock);
  protobuf = [requestCopy protobuf];

  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setPlaybackSessionRequest:protobuf];

  os_unfair_lock_unlock(&self->_lock);
}

- (MRPlaybackSessionRequest)playbackSessionRequest
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MRPlaybackSessionRequest alloc];
  playbackSessionRequest = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf playbackSessionRequest];
  v5 = [(MRPlaybackSessionRequest *)v3 initWithProtobuf:playbackSessionRequest];

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
  data = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf data];
  v4 = [data copy];

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
    contentItem = [(MRPlaybackSessionMigrateRequest *)self contentItem];
    v11 = MRContentItemCopyMinimalReadableDescription(contentItem);
    [v6 appendFormat:@", item = <%@>", v11];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock(&self->_lock);
  v4 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf copy];
  [v4 setEvents:0];
  v5 = [[MRPlaybackSessionMigrateRequest alloc] initWithProtobuf:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_getLastEventIfActiveInEvents:(uint64_t)events
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (events && v3)
  {
    if ([v3 count])
    {
      lastObject = [v4 lastObject];
      events = [lastObject events];
      if (!events)
      {
        goto LABEL_7;
      }

      v8 = events;
      events2 = [lastObject events];
      v10 = [events2 count];

      if (!v10 || ([lastObject events], v11 = objc_claimAutoreleasedReturnValue(), -[MRPlaybackSessionMigrateRequest _getLastEventIfActiveInEvents:](events, v11), v5 = objc_claimAutoreleasedReturnValue(), v11, !v5))
      {
LABEL_7:
        if ([lastObject hasEndTimestamp])
        {
          v5 = 0;
        }

        else
        {
          v5 = lastObject;
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

- (void)updateError:(uint64_t)error
{
  v3 = a2;
  v4 = v3;
  if (error)
  {
    if (v3)
    {
      v8 = v3;
      IsInformational = MRMediaRemoteErrorIsInformational(v3);
      v4 = v8;
      if (!IsInformational)
      {
        v6 = 32;
        if (!*(error + 64))
        {
          v6 = 24;
        }

        if (*(error + v6))
        {
          v7 = *(error + v6);
        }

        else
        {
          v7 = v8;
        }

        objc_storeStrong((error + v6), v7);
        v4 = v8;
      }
    }
  }
}

- (id)_findEventWithName:(uint64_t)name role:(void *)role inEvents:
{
  v7 = a2;
  roleCopy = role;
  v9 = roleCopy;
  v10 = 0;
  if (self && roleCopy)
  {
    if ([roleCopy count])
    {
      v11 = [v9 count];
      if (v11 - 1 >= 0)
      {
        v12 = v11;
        do
        {
          v13 = [v9 objectAtIndexedSubscript:--v12];
          events = [v13 events];
          if (events)
          {
            v15 = events;
            v16 = [v9 objectAtIndexedSubscript:v12];
            events2 = [v16 events];
            v18 = [events2 count];

            if (v18)
            {
              v19 = [v9 objectAtIndexedSubscript:v12];
              events3 = [v19 events];
              v10 = [(MRPlaybackSessionMigrateRequest *)self _findEventWithName:v7 role:name inEvents:events3];

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
          name = [v21 name];
          if ([name isEqualToString:v7])
          {
            v23 = [v9 objectAtIndexedSubscript:v12];
            role = [v23 role];

            if (role == name)
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

- (id)_findEventWithID:(void *)d inEvents:
{
  dCopy = d;
  v6 = dCopy;
  v7 = 0;
  if (self && dCopy)
  {
    if ([dCopy count])
    {
      v8 = [v6 count];
      while (--v8 >= 0)
      {
        v9 = [v6 objectAtIndexedSubscript:v8];
        events = [v9 events];
        if (events)
        {
          v11 = events;
          v12 = [v6 objectAtIndexedSubscript:v8];
          events2 = [v12 events];
          v14 = [events2 count];

          if (v14)
          {
            v15 = [v6 objectAtIndexedSubscript:v8];
            events3 = [v15 events];
            v7 = [(MRPlaybackSessionMigrateRequest *)self _findEventWithID:a2 inEvents:events3];

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
        identifier = [v17 identifier];

        if (identifier == a2)
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

- (void)finalizeWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!self->_analytics)
  {
    v5 = objc_alloc_init(MRPlaybackSessionMigrateAnalytics);
    analytics = self->_analytics;
    self->_analytics = v5;
  }

  gatherAnalytics = [(MRPlaybackSessionMigrateRequest *)self gatherAnalytics];
  v8 = [gatherAnalytics mutableCopy];

  if (self->_fallbackError || self->_migrateError && !self->_fallbackReason || [(MRPlaybackSessionMigrateRequest *)self recipeType]!= 2)
  {
    [(MRPlaybackSessionMigrateRequest *)self _finalizeRequestWithAnalytics:v8];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__MRPlaybackSessionMigrateRequest_finalizeWithCompletion___block_invoke;
    v9[3] = &unk_1E769DD60;
    v10 = v8;
    selfCopy = self;
    v12 = completionCopy;
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

- (void)setOriginatorTypeFromDevice:(id)device
{
  v4 = MRAnalyticsCompositionForOutputDevice(device);
  protobuf = self->_protobuf;

  [(_MRPlaybackSessionMigrateRequestProtobuf *)protobuf setOriginatorType:v4];
}

- (void)addDestinationType:(unsigned int)type
{
  protobuf = self->_protobuf;
  v4 = [(_MRPlaybackSessionMigrateRequestProtobuf *)protobuf destinationTypes]| type;

  [(_MRPlaybackSessionMigrateRequestProtobuf *)protobuf setDestinationTypes:v4];
}

- (void)addDestinationTypesFromDevices:(id)devices
{
  v15 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [devicesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(devicesCopy);
        }

        [(MRPlaybackSessionMigrateRequest *)self addDestinationType:MRAnalyticsCompositionForOutputDevice(*(*(&v10 + 1) + 8 * v8++))];
      }

      while (v6 != v8);
      v6 = [devicesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (double)duration
{
  os_unfair_lock_lock(&self->_lock);
  events = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf events];
  lastObject = [events lastObject];
  [lastObject endTimestamp];
  v6 = v5;
  events2 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf events];
  firstObject = [events2 firstObject];
  [firstObject startTimestamp];
  v10 = v6 - v9;

  os_unfair_lock_unlock(&self->_lock);
  return v10;
}

- (BOOL)allowFadeTransition
{
  os_unfair_lock_lock(&self->_lock);
  allowFadeTransition = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf allowFadeTransition];
  os_unfair_lock_unlock(&self->_lock);
  return allowFadeTransition;
}

- (MRSendCommandResultStatus)setPlaybackSessionCommandStatus
{
  v3 = [MRSendCommandResultStatus alloc];
  setPlaybackSessionCommandStatus = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setPlaybackSessionCommandStatus];
  v5 = [(MRSendCommandResultStatus *)v3 initWithProtobuf:setPlaybackSessionCommandStatus];

  return v5;
}

- (void)setSetPlaybackSessionCommandStatus:(id)status
{
  protobuf = [status protobuf];
  [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setSetPlaybackSessionCommandStatus:protobuf];
}

- (id)merge:(id)merge
{
  v36 = *MEMORY[0x1E69E9840];
  mergeCopy = merge;
  os_unfair_lock_lock(&self->_lock);
  events = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf events];
  v6 = [(MRPlaybackSessionMigrateRequest *)self _getLastEventIfActiveInEvents:events];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = mergeCopy;
  protobuf = [mergeCopy protobuf];
  events2 = [protobuf events];

  v9 = [events2 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(events2);
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
          name = [v14 name];
          v18 = [name isEqualToString:@"Post"];

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

      v10 = [events2 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  setPlaybackSessionCommandStatus = [v30 setPlaybackSessionCommandStatus];
  [(MRPlaybackSessionMigrateRequest *)self setSetPlaybackSessionCommandStatus:setPlaybackSessionCommandStatus];

  playbackSessionRequest = [v30 playbackSessionRequest];

  if (playbackSessionRequest)
  {
    protobuf2 = [v30 protobuf];
    playbackSessionRequest2 = [protobuf2 playbackSessionRequest];
    [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setPlaybackSessionRequest:playbackSessionRequest2];
  }

  resolvedPlayerPath = [v30 resolvedPlayerPath];

  if (resolvedPlayerPath)
  {
    protobuf3 = [v30 protobuf];
    resolvedPlayerPath2 = [protobuf3 resolvedPlayerPath];
    [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_protobuf setResolvedPlayerPath:resolvedPlayerPath2];
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

- (void)backfillSignpostsForEvent:(uint64_t)event
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (event)
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
          name = [v3 name];
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

        name2 = [v3 name];
        OUTLINED_FUNCTION_1_10();
        v18 = "Unknown";
        break;
      case 1u:
        MRLogCategoryMigrationOversize();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_3_7();
        if (!(!v10 & v9) && os_signpost_enabled(v4))
        {
          name3 = [v3 name];
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

        name2 = [v3 name];
        OUTLINED_FUNCTION_1_10();
        v18 = "Receptionist";
        break;
      case 2u:
        MRLogCategoryMigrationOversize();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_3_7();
        if (!(!v10 & v9) && os_signpost_enabled(v4))
        {
          name4 = [v3 name];
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

        name2 = [v3 name];
        OUTLINED_FUNCTION_1_10();
        v18 = "Source";
        break;
      case 3u:
        MRLogCategoryMigrationOversize();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_3_7();
        if (!(!v10 & v9) && os_signpost_enabled(v4))
        {
          name5 = [v3 name];
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

        name2 = [v3 name];
        OUTLINED_FUNCTION_1_10();
        v18 = "Destination";
        break;
      case 4u:
        MRLogCategoryMigrationOversize();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_3_7();
        if (!(!v10 & v9) && os_signpost_enabled(v4))
        {
          name6 = [v3 name];
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

        name2 = [v3 name];
        OUTLINED_FUNCTION_1_10();
        v18 = "InApp";
        break;
      case 5u:
        MRLogCategoryMigrationOversize();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_3_7();
        if (!(!v10 & v9) && os_signpost_enabled(v4))
        {
          name7 = [v3 name];
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

        name2 = [v3 name];
        OUTLINED_FUNCTION_1_10();
        v18 = "Hijacked";
        break;
      case 6u:
        v49 = MRLogCategoryMigrationOversize();
        v50 = v49;
        if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
        {
          name8 = [v3 name];
          OUTLINED_FUNCTION_0_13();
          OUTLINED_FUNCTION_2_5(&dword_1A2860000, v52, v53, v54, "Group", "%{public, signpost.description:begin_time}llu,name=%{public}@", v55, v56, v59[0]);
        }

        v57 = MRLogCategoryMigrationOversize();
        v4 = v57;
        if (v8 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v57))
        {
          goto LABEL_46;
        }

        name2 = [v3 name];
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
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requestID = [self requestID];
    OUTLINED_FUNCTION_8_3();

    resolvedPlayerPath = [self resolvedPlayerPath];
    client = [resolvedPlayerPath client];
    bundleIdentifier = [client bundleIdentifier];
    [v2 setObject:bundleIdentifier forKeyedSubscript:@"appBundle"];

    initiator = [self initiator];
    v8 = initiator;
    if (initiator)
    {
      v9 = initiator;
    }

    else
    {
      v9 = @"unknown";
    }

    [v2 setObject:v9 forKeyedSubscript:@"initiator"];

    resolvedPlayerPath2 = [self resolvedPlayerPath];
    v11 = [resolvedPlayerPath2 description];
    [v2 setObject:v11 forKeyedSubscript:@"source"];

    playbackSessionRequest = [self playbackSessionRequest];
    destinationPlayerPath = [playbackSessionRequest destinationPlayerPath];
    v14 = [destinationPlayerPath description];
    [v2 setObject:v14 forKeyedSubscript:@"destination"];

    [*(self + 8) events];
    objc_claimAutoreleasedReturnValue();
    v15 = OUTLINED_FUNCTION_10_3();
    v16 = [(MRPlaybackSessionMigrateRequest *)v15 eventsDictionary:playbackSessionRequest];
    [v2 setObject:v16 forKeyedSubscript:@"events"];

    v17 = MEMORY[0x1E696AD98];
    [self duration];
    v18 = [v17 numberWithDouble:?];
    OUTLINED_FUNCTION_8_3();

    v19 = *(self + 64);
    if (v19)
    {
      v20 = MRPlaybackSessionMigrateFallbackReasonCopyDescription(v19);
      OUTLINED_FUNCTION_8_3();

      v21 = MRPlaybackSessionMigrateFallbackReasonStatus(*(self + 64));
      OUTLINED_FUNCTION_8_3();
    }

    v22 = *(self + 32);
    if (v22 && (v23 = MRErrorCopyDescription(v22), OUTLINED_FUNCTION_8_3(), v23, *(self + 32)) || *(self + 24) && !*(self + 64))
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

- (id)eventsDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v18 = v4;
  dictionaryCopy = dictionary;
  if (dictionary)
  {
    v5 = v4;
    dictionary = objc_alloc_init(MEMORY[0x1E695DF70]);
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

          role = [v10 role];
          if (role >= 7)
          {
            v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", role, v18];
          }

          else
          {
            v2 = off_1E769DE30[role];
          }

          [(__CFString *)v2 lowercaseString];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_4_5() setObject:? forKeyedSubscript:?];

          if ([v10 hasInput])
          {
            input = [v10 input];
            _MRProtoUtilsNSDictionaryFromProtoDictionary(input);
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_5_5() setObject:? forKeyedSubscript:?];
          }

          if ([v10 eventsCount])
          {
            events = [v10 events];
            [(MRPlaybackSessionMigrateRequest *)dictionaryCopy eventsDictionary:events];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_5_5() setObject:? forKeyedSubscript:?];
          }

          if ([v10 hasOutput])
          {
            output = [v10 output];
            _MRProtoUtilsNSDictionaryFromProtoDictionary(output);
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_5_5() setObject:? forKeyedSubscript:?];
          }

          v5 = MEMORY[0x1E696AD98];
          [v10 calculatedDuration];
          [v5 numberWithDouble:?];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_4_5() setObject:? forKeyedSubscript:?];

          [dictionary addObject:v11];
          ++v9;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (NSString)report
{
  v3 = MEMORY[0x1E696AEC0];
  requestID = [(MRPlaybackSessionMigrateRequest *)self requestID];
  v5 = requestID;
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

  migrateError = [v3 stringWithFormat:@"requestID=%@ failedPlayingAudio=%d", requestID, migrateError];

  return migrateError;
}

- (id)fullReport
{
  if (self)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"\nPlayback Session Migration Report\n"];
    [v2 appendString:@"──────────────────────────────────\n\n"];
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v3 setDateFormat:@"HH:mm:ss.SSSXX"];
    v4 = MEMORY[0x1E695DF00];
    events = [*(self + 8) events];
    firstObject = [events firstObject];
    [firstObject startTimestamp];
    v7 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
    v8 = [v3 stringFromDate:v7];

    v9 = MEMORY[0x1E695DF00];
    events2 = [*(self + 8) events];
    lastObject = [events2 lastObject];
    [lastObject endTimestamp];
    v12 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
    v13 = [v3 stringFromDate:v12];

    v38 = 0;
    v14 = *(self + 56);
    if (v14 > 3)
    {
      v15 = @"addProxDevice";
    }

    else
    {
      v15 = off_1E769DF60[v14];
    }

    [v2 appendFormat:@"%@          ╭─􂋞 %@\n", v8, v15];
    requestID = [self requestID];
    [v2 appendFormat:@"%@          │ ├─requestID: %@\n", v8, requestID];

    resolvedPlayerPath = [self resolvedPlayerPath];
    client = [resolvedPlayerPath client];
    bundleIdentifier = [client bundleIdentifier];
    [v2 appendFormat:@"%@          │ ├─%@: %@\n", v8, @"appBundle", bundleIdentifier];

    initiator = [self initiator];
    v21 = initiator;
    v22 = @"unknown";
    if (initiator)
    {
      v22 = initiator;
    }

    [v2 appendFormat:@"%@          │ ├─%@: %@\n", v8, @"initiator", v22];

    resolvedPlayerPath2 = [self resolvedPlayerPath];
    [v2 appendFormat:@"%@          │ ├─source: %@\n", v8, resolvedPlayerPath2];

    playbackSessionRequest = [self playbackSessionRequest];
    destinationPlayerPath = [playbackSessionRequest destinationPlayerPath];
    [v2 appendFormat:@"%@          │ ╰─destination: %@\n", v8, destinationPlayerPath];

    events3 = [*(self + 8) events];
    v27 = [(MRPlaybackSessionMigrateRequest *)self printEvents:events3 dateFormatter:v3 timeElapsed:&v38 depth:0];

    [v2 appendString:v27];
    v28 = v38;
    v29 = *(self + 56);
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
    v31 = *(self + 64);
    if (v31)
    {
      v32 = MRPlaybackSessionMigrateFallbackReasonCopyDescription(v31);
      [v2 appendFormat:@"%@            ├─fallbackReason: %@\n", v13, v32];

      v33 = MRPlaybackSessionMigrateFallbackReasonStatus(*(self + 64));
      [v2 appendFormat:@"%@            ├─fallbackStatus: %@\n", v13, v33];
    }

    v34 = *(self + 32);
    if (v34 && (v35 = MRErrorCopyDescription(v34), [v2 appendFormat:@"%@            ├─fallbackError: %@\n", v13, v35], v35, *(self + 32)) || *(self + 24) && !*(self + 64))
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

- (id)printEvents:(void *)events dateFormatter:(uint64_t *)formatter timeElapsed:(int)elapsed depth:
{
  formatterCopy = formatter;
  v143 = *MEMORY[0x1E69E9840];
  v8 = a2;
  eventsCopy = events;
  selfCopy = self;
  v103 = v8;
  if (self)
  {
    v126 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v117 = eventsCopy;
    if (elapsed < 1)
    {
      v12 = &stru_1F1513E38;
    }

    else
    {
      v10 = &stru_1F1513E38;
      elapsedCopy = elapsed;
      do
      {
        v12 = [(__CFString *)v10 stringByAppendingString:@"│ ╵ "];

        v10 = v12;
        --elapsedCopy;
      }

      while (elapsedCopy);
    }

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    obj = v8;
    eventsCopy = v117;
    v109 = [obj countByEnumeratingWithState:&v136 objects:v142 count:16];
    if (v109)
    {
      v13 = @"│";
      if (elapsed > 0)
      {
        v13 = @" ";
      }

      v105 = v13;
      v106 = *v137;
      HIDWORD(v116) = elapsed;
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
          [(MRPlaybackSessionMigrateRequest *)selfCopy backfillSignpostsForEvent:v15];
          name = [v15 name];
          v17 = [(MRPlaybackSessionMigrateRequest *)selfCopy symbolForEventName:name isStart:1];

          v18 = MEMORY[0x1E695DF00];
          [v15 startTimestamp];
          [v18 dateWithTimeIntervalSinceReferenceDate:?];
          objc_claimAutoreleasedReturnValue();
          v19 = [OUTLINED_FUNCTION_4_5() stringFromDate:?];

          reportName = [v15 reportName];
          v21 = reportName;
          v112 = v17;
          if (elapsed)
          {
            [v126 appendFormat:@"%@          %@╭─%@%@\n", v19, v12, v17, reportName];
          }

          else
          {
            [v126 appendFormat:@"%@          ├─%@%@\n", v19, v17, reportName, v100];
          }

          v118 = v15;
          input = [v15 input];
          v23 = _MRProtoUtilsNSDictionaryFromProtoDictionary(input);

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
            v131 = *formatterCopy;
            events = [v118 events];
            v36 = [(MRPlaybackSessionMigrateRequest *)selfCopy printEvents:events dateFormatter:v117 timeElapsed:&v131 depth:(HIDWORD(v116) + 1)];
            [v126 appendString:v36];
          }

          [v118 calculatedDuration];
          v38 = v37;
          name2 = [v118 name];
          v40 = [MEMORY[0x1E696AD98] numberWithDouble:*&v38];
          [(MRPlaybackSessionMigrateRequest *)selfCopy setAnalyticsDurationForEvent:name2 duration:v40];

          *formatterCopy = *&v38 + *formatterCopy;
          name3 = [v118 name];
          v42 = [(MRPlaybackSessionMigrateRequest *)selfCopy symbolForEventName:name3 isStart:0];

          v43 = MEMORY[0x1E695DF00];
          [v118 endTimestamp];
          [v43 dateWithTimeIntervalSinceReferenceDate:?];
          objc_claimAutoreleasedReturnValue();
          v44 = [OUTLINED_FUNCTION_4_5() stringFromDate:?];

          v45 = *formatterCopy;
          reportName2 = [v118 reportName];
          v54 = reportName2;
          if (HIDWORD(v116))
          {
            v55 = OUTLINED_FUNCTION_9_2(reportName2, v47, v48, v49, v50, v51, v52, v53, v98, v45, v12, v42, reportName2, v102, v103, obj, v105, v106, msv_treeDescription, v109, formatterCopy, v42, v112, v114, v116, v117, v118, v121, v122, selfCopy, v124, v126);
            v56 = @"%@ %7.3fs %@╰─%@%@\n";
          }

          else
          {
            v55 = OUTLINED_FUNCTION_9_2(reportName2, v47, v48, v49, v50, v51, v52, v53, v98, v45, v42, reportName2, v101, v102, v103, obj, v105, v106, msv_treeDescription, v109, formatterCopy, v42, v112, v114, v116, v117, v118, v121, v122, selfCopy, v124, v126);
            v56 = @"%@ %7.3fs ├─%@%@\n";
          }

          [v55 appendFormat:v56];

          output = [v34 output];
          v58 = _MRProtoUtilsNSDictionaryFromProtoDictionary(output);

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
                  unsignedLongValue = [v64 unsignedLongValue];
                  [selfCopy setPlaybackSessionSize:unsignedLongValue];
                  v74 = v61;
                  v75 = v19;
                  v76 = v12;
                  v77 = v60;
                  v78 = objc_alloc(MEMORY[0x1E696AAF0]);
                  v79 = [v78 stringFromByteCount:unsignedLongValue];

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

          mr_error = [v119 mr_error];
          v88 = mr_error;
          if (mr_error)
          {
            v124 = v60;
            v120 = mr_error;
            msv_treeDescription = [mr_error msv_treeDescription];
            v89 = [msv_treeDescription componentsSeparatedByString:@"\n"];
            v90 = [v89 mutableCopy];

            elapsed = HIDWORD(v116);
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
            elapsed = HIDWORD(v116);
          }

          v14 = v115 + 1;
          eventsCopy = v117;
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

- (__CFString)symbolForEventName:(int)name isStart:
{
  v48[43] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = @"􂄀";
    if (name)
    {
      v3 = @"􂇄";
    }

    v47[0] = @"DetermineRecipe";
    v47[1] = @"ResolveSource";
    v4 = @"􀜈";
    if (name)
    {
      v4 = @"􀜇";
    }

    v48[0] = v3;
    v48[1] = v4;
    v5 = @"􁼢";
    if (name)
    {
      v5 = @"􁼡";
    }

    v47[2] = @"ResolveDestination";
    v47[3] = @"GetPlaybackSession";
    v6 = @"􁇉";
    if (name)
    {
      v6 = @"􁇈";
    }

    v48[2] = v5;
    v48[3] = v6;
    v7 = @"􁛂";
    if (name)
    {
      v7 = @"􁛁";
    }

    v47[4] = @"Prepare";
    v47[5] = @"Finalize";
    v8 = @"􁛄";
    if (name)
    {
      v8 = @"􁛃";
    }

    v48[4] = v7;
    v48[5] = v8;
    v9 = @"􀈢";
    if (name)
    {
      v9 = @"􀈡";
    }

    v47[6] = @"SendPlaybackSession";
    v47[7] = @"SetPlaybackSession";
    v10 = @"􀞉";
    if (name)
    {
      v10 = @"􀞈";
    }

    v48[6] = v9;
    v48[7] = v10;
    v11 = @"􁛳";
    if (!name)
    {
      v11 = @"􁛴";
    }

    v47[8] = @"InterruptBestStreamIfNecessary";
    v47[9] = @"SendPause";
    v12 = @"􀊗";
    if (!name)
    {
      v12 = @"􀊘";
    }

    v48[8] = v11;
    v48[9] = v12;
    v13 = @"􁞏";
    if (name)
    {
      v13 = @"􁞎";
    }

    v47[10] = @"VerifyPlayer";
    v47[11] = @"BlessApp";
    v14 = @"􂛒";
    if (name)
    {
      v14 = @"􂛑";
    }

    v48[10] = v13;
    v48[11] = v14;
    v15 = @"􀸺";
    if (name)
    {
      v15 = @"􀸹";
    }

    v47[12] = @"Apply";
    v47[13] = @"LaunchApp";
    v16 = @"􁇮";
    if (name)
    {
      v16 = @"􁇭";
    }

    v48[12] = v15;
    v48[13] = v16;
    v17 = @"􂚴";
    if (name)
    {
      v17 = @"􂚳";
    }

    v47[14] = @"ModifyTopology";
    v47[15] = @"Preamble";
    v18 = @"􀶢";
    if (name)
    {
      v18 = @"􀶡";
    }

    v48[14] = v17;
    v48[15] = v18;
    v19 = @"􀷗";
    if (name)
    {
      v19 = @"􀷖";
    }

    v47[16] = @"SetActiveItem";
    v47[17] = @"Epilogue";
    v20 = @"􀶠";
    if (name)
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
    if (!name)
    {
      v21 = @"􀺆";
    }

    v47[22] = @"Seek";
    v47[23] = @"seek";
    v48[22] = v21;
    v48[23] = v21;
    v22 = @"􀊖";
    if (name)
    {
      v22 = @"􀊕";
    }

    v47[24] = @"Play";
    v47[25] = @"play";
    v48[24] = v22;
    v48[25] = v22;
    v23 = @"􀖋";
    if (name)
    {
      v23 = @"􀖊";
    }

    v47[26] = @"ResetOutputContext";
    v47[27] = @"resetOutputContext";
    v48[26] = v23;
    v48[27] = v23;
    v24 = @"􀻬";
    if (name)
    {
      v24 = @"􀻫";
    }

    v47[28] = @"CoordinatePlayback";
    v47[29] = @"FadeIn";
    v25 = @"􁛵";
    if (!name)
    {
      v25 = @"􁛶";
    }

    v48[28] = v24;
    v48[29] = v25;
    v26 = @"􁛸";
    if (name)
    {
      v26 = @"􁛷";
    }

    v47[30] = @"FadeOut";
    v47[31] = @"GetPlaybackQueue";
    v27 = @"􂃋";
    if (!name)
    {
      v27 = @"􂃌";
    }

    v48[30] = v26;
    v48[31] = v27;
    v28 = @"􀒍";
    if (name)
    {
      v28 = @"􀒌";
    }

    v47[32] = @"GetPlaybackState";
    v47[33] = @"SetOutputDevices";
    v48[32] = v28;
    v48[33] = v17;
    if (name)
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
    if (name)
    {
      v30 = @"􀫠";
    }

    v48[34] = v29;
    v48[35] = v30;
    if (name)
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
    if (name)
    {
      v32 = @"􁣎";
    }

    v48[36] = v31;
    v48[37] = v32;
    if (name)
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
    if (name)
    {
      v34 = @"􂝌";
    }

    v48[38] = v33;
    v48[39] = v34;
    if (name)
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
    if (name)
    {
      v36 = @"􀢥";
    }

    v48[40] = v35;
    v48[41] = v36;
    v47[42] = @"Search";
    v37 = @"􀒓";
    if (name)
    {
      v37 = @"􀒒";
    }

    v48[42] = v37;
    v38 = MEMORY[0x1E695DF20];
    if (name)
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

- (void)setAnalyticsDurationForEvent:(void *)event duration:
{
  v6 = a2;
  eventCopy = event;
  if (self)
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

- (id)_onlock_findEventWithID:(uint64_t)d
{
  if (d)
  {
    os_unfair_lock_assert_owner((d + 16));
    [*(d + 8) events];
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

- (void)addEventInput:(id)input withKey:(id)key toEventID:(unsigned int)d
{
  v9 = OUTLINED_FUNCTION_11_3(self, a2, input, key);
  v10 = v6;
  os_unfair_lock_lock((v5 + 16));
  if (*(v5 + 40) == 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:v8 object:v5 file:@"MRPlaybackSessionMigrateRequest.m" lineNumber:833 description:@"Attempt to add event inputs after finalized report"];
  }

  v17 = [(MRPlaybackSessionMigrateRequest *)v5 _onlock_findEventWithID:v7];
  input = [v17 input];

  if (!input)
  {
    v12 = objc_alloc_init(_MRDictionaryProtobuf);
    [v17 setInput:v12];
  }

  v13 = objc_alloc_init(_MRKeyValuePairProtobuf);
  [(_MRKeyValuePairProtobuf *)v13 setKey:v9];

  v14 = _MRProtoUtilsProtoValueFromPlistType(v10);

  [(_MRKeyValuePairProtobuf *)v13 setValue:v14];
  input2 = [v17 input];
  [input2 addPair:v13];

  os_unfair_lock_unlock((v5 + 16));
}

- (void)addEventOutput:(id)output withKey:(id)key toEventID:(unsigned int)d
{
  v9 = OUTLINED_FUNCTION_11_3(self, a2, output, key);
  v10 = v6;
  os_unfair_lock_lock((v5 + 16));
  if (*(v5 + 40) == 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:v8 object:v5 file:@"MRPlaybackSessionMigrateRequest.m" lineNumber:847 description:@"Attempt to add event outputs after finalized report"];
  }

  v17 = [(MRPlaybackSessionMigrateRequest *)v5 _onlock_findEventWithID:v7];
  output = [v17 output];

  if (!output)
  {
    v12 = objc_alloc_init(_MRDictionaryProtobuf);
    [v17 setOutput:v12];
  }

  v13 = objc_alloc_init(_MRKeyValuePairProtobuf);
  [(_MRKeyValuePairProtobuf *)v13 setKey:v9];

  v14 = _MRProtoUtilsProtoValueFromPlistType(v10);

  [(_MRKeyValuePairProtobuf *)v13 setValue:v14];
  output2 = [v17 output];
  [output2 addPair:v13];

  os_unfair_lock_unlock((v5 + 16));
}

- (id)_findEventWithName:(uint64_t)name role:
{
  if (self)
  {
    v4 = *(self + 8);
    v5 = a2;
    [v4 events];
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_10_3();
    v7 = [(MRPlaybackSessionMigrateRequest *)v6 _findEventWithName:v5 role:name inEvents:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)gatherAnalytics
{
  selfCopy = self;
  if (self)
  {
    v2 = self[6];
    if (!v2)
    {
      v3 = objc_alloc_init(MRPlaybackSessionMigrateAnalytics);
      v4 = *(selfCopy + 48);
      *(selfCopy + 48) = v3;

      v2 = *(selfCopy + 48);
    }

    resolvedPlayerPath = [selfCopy resolvedPlayerPath];
    client = [resolvedPlayerPath client];
    bundleIdentifier = [client bundleIdentifier];
    [v2 setHandoffAppBundleFromString:bundleIdentifier];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(selfCopy, "playbackSessionSize")}];
    [*(selfCopy + 48) set_handoffQueueSize:v8];

    v9 = *(selfCopy + 48);
    [selfCopy initiator];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_10_3() setHandoffInitiatorFromString:resolvedPlayerPath];

    if (*(selfCopy + 32))
    {
      v10 = 0;
    }

    else if (*(selfCopy + 24))
    {
      v10 = *(selfCopy + 64) != 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = [MEMORY[0x1E696AD98] numberWithInt:v10];
    [*(selfCopy + 48) set_isSuccess:v11];

    resolvedPlayerPath2 = [selfCopy resolvedPlayerPath];
    origin = [resolvedPlayerPath2 origin];
    v14 = [MRDeviceInfoRequest deviceInfoForOrigin:origin];

    [*(selfCopy + 48) setHandoffSourceFromMRDeviceClass:{objc_msgSend(v14, "deviceClass")}];
    playbackSessionRequest = [selfCopy playbackSessionRequest];
    destinationPlayerPath = [playbackSessionRequest destinationPlayerPath];
    origin2 = [destinationPlayerPath origin];
    v18 = [MRDeviceInfoRequest deviceInfoForOrigin:origin2];

    [*(selfCopy + 48) setHandoffDestinationFromMRDeviceClass:{objc_msgSend(v18, "deviceClass")}];
    modelID = [v18 modelID];
    if ([modelID hasPrefix:{@"AudioAccessory5, "}])
    {

      v20 = 1;
    }

    else
    {
      deviceClass = [v18 deviceClass];

      if (deviceClass == 6)
      {
        v20 = 1;
      }

      else
      {
        v20 = 3;
      }
    }

    [*(selfCopy + 48) set_handoffDestinationPerformanceClass:v20];
    modelID2 = [v14 modelID];
    if ([modelID2 hasPrefix:{@"AudioAccessory5, "}])
    {

      v23 = 1;
    }

    else
    {
      deviceClass2 = [v14 deviceClass];

      if (deviceClass2 == 6)
      {
        v23 = 1;
      }

      else
      {
        v23 = 3;
      }
    }

    [*(selfCopy + 48) set_handoffSourcePerformanceClass:v23];
    v25 = *(selfCopy + 24);
    v26 = v25;
    if (v25)
    {
      msv_analyticSignature = [v25 msv_analyticSignature];
      [*(selfCopy + 48) set_errorOnion:msv_analyticSignature];

      v29 = __50__MRPlaybackSessionMigrateRequest_gatherAnalytics__block_invoke(v28, v26);
      msv_analyticSignature2 = [v29 msv_analyticSignature];
      [*(selfCopy + 48) set_errorLevel_0:msv_analyticSignature2];

      msv_underlyingError = [v26 msv_underlyingError];
      v32 = msv_underlyingError;
      if (msv_underlyingError)
      {
        v33 = __50__MRPlaybackSessionMigrateRequest_gatherAnalytics__block_invoke(msv_underlyingError, msv_underlyingError);
        msv_analyticSignature3 = [v33 msv_analyticSignature];
        [*(selfCopy + 48) set_errorLevel_1:msv_analyticSignature3];
      }

      v36Msv_underlyingError = v26;
      msv_underlyingError2 = [v36Msv_underlyingError msv_underlyingError];

      if (msv_underlyingError2)
      {
        v37 = 0;
        do
        {
          msv_underlyingError2 = v36Msv_underlyingError;

          v36Msv_underlyingError = [msv_underlyingError2 msv_underlyingError];

          v35Msv_underlyingError = [v36Msv_underlyingError msv_underlyingError];

          v37 = msv_underlyingError2;
        }

        while (v35Msv_underlyingError);
      }

      msv_analyticSignature4 = [v36Msv_underlyingError msv_analyticSignature];
      [*(selfCopy + 48) set_errorLevelCore_0:msv_analyticSignature4];

      if (msv_underlyingError2)
      {
        v41 = __50__MRPlaybackSessionMigrateRequest_gatherAnalytics__block_invoke(v40, msv_underlyingError2);
        msv_analyticSignature5 = [v41 msv_analyticSignature];
        [*(selfCopy + 48) set_errorLevelCore_1:msv_analyticSignature5];
      }
    }

    selfCopy = [*(selfCopy + 48) dictionaryRepresentation];
  }

  return selfCopy;
}

- (void)_finalizeRequestWithAnalytics:(uint64_t)analytics
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (analytics)
  {
    os_unfair_lock_lock((analytics + 16));
    if (*(analytics + 40) == 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__finalizeRequestWithAnalytics_ object:analytics file:@"MRPlaybackSessionMigrateRequest.m" lineNumber:1004 description:@"Attempt to finalize more than once"];
    }

    *(analytics + 40) = 1;
    os_unfair_lock_unlock((analytics + 16));
    v4 = MRLogCategoryMigrationOversize();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      fullReport = [(MRPlaybackSessionMigrateRequest *)analytics fullReport];
      *buf = 138543362;
      v34 = fullReport;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (MSVDeviceOSIsInternalInstall())
    {
      reportDictionary = [(MRPlaybackSessionMigrateRequest *)analytics reportDictionary];
      v9 = MEMORY[0x1E696ACB0];
      v31 = @"migrationReport";
      v32 = reportDictionary;
      v26 = reportDictionary;
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

      if (*(analytics + 32) || *(analytics + 24) && !*(analytics + 64))
      {
        events = [*(analytics + 8) events];
        v16 = _FirstErrorEvent(events);
        name = [v16 name];

        v18 = MEMORY[0x1E696AEC0];
        recipeType = [analytics recipeType];
        if (recipeType >= 3)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", recipeType];
        }

        else
        {
          v20 = off_1E769DF80[recipeType];
        }

        v21 = [v18 stringWithFormat:@"%@MigrationFailure", v20];

        v22 = MEMORY[0x1E69B13D8];
        v23 = *MEMORY[0x1E69B1348];
        v30 = v26;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        [v22 snapshotWithDomain:v23 type:@"QHO" subType:v21 context:name triggerThresholdValues:0 events:v24 completion:0];
      }
    }

    if ([analytics recipeType] == 2)
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

- (void)_gatherMPPMetricsWithCompletion:(void *)completion
{
  v3 = a2;
  if (completion)
  {
    v4 = [completion startEvent:@"Post" role:1];
    v5 = [(MRPlaybackSessionMigrateRequest *)completion _findEventWithName:4 role:?];
    input = [v5 input];
    v7 = _MRProtoUtilsNSDictionaryFromProtoDictionary(input);
    v8 = [v7 objectForKeyedSubscript:@"commandID"];

    v9 = [completion copy];
    playbackSessionRequest = [completion playbackSessionRequest];
    destinationPlayerPath = [playbackSessionRequest destinationPlayerPath];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__MRPlaybackSessionMigrateRequest__gatherMPPMetricsWithCompletion___block_invoke;
    v12[3] = &unk_1E769DD88;
    v12[4] = completion;
    v14 = v4;
    v13 = v3;
    MRMediaRemoteSendPlaybackSessionMigratePost(v9, v8, destinationPlayerPath, MEMORY[0x1E69E96A0], v12);
  }
}

- (id)innerErrorForEvent:(void *)event
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (event)
  {
    error = [v3 error];

    if (error)
    {
      event = [v4 mr_error];
    }

    else
    {
      memset(v9, 0, sizeof(v9));
      events = [v4 events];
      if ([events countByEnumeratingWithState:v9 objects:v10 count:16])
      {
        event = [(MRPlaybackSessionMigrateRequest *)event innerErrorForEvent:?];
      }

      else
      {
        event = 0;
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return event;
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