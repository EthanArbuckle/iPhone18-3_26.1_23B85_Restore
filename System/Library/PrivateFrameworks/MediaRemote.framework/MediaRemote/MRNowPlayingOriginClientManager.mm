@interface MRNowPlayingOriginClientManager
+ (id)sharedManager;
- (MRNowPlayingOriginClient)_createOriginClientForPlayerPath:(void *)path routingContextID:;
- (MRNowPlayingOriginClientManager)init;
- (NSArray)originClientRequests;
- (NSArray)originClients;
- (NSOperationQueue)playbackQueueDataSourceOperationQueue;
- (id)activeSystemEndpointOutputDeviceUIDForType:(int64_t)type;
- (id)clientForPlayerPath:(id)path;
- (id)clientRequestsForPlayerPath:(id)path;
- (id)createCustomOriginClientForOrigin:(id)origin routingContextID:(id)d;
- (id)createNewPlayerCallback;
- (id)debugDescription;
- (id)destroyPlayerCallback;
- (id)existingClientRequestsForPlayerPath:(id)path;
- (id)existingOriginClientForPlayerPath:(id *)path;
- (id)existingOriginClientRequestsForPlayerPath:(id)path;
- (id)existingPlayerClientRequestsForPlayerPath:(id)path;
- (id)generatePlayerIDCallback;
- (id)localOriginClient;
- (id)originClientForOrigin:(id)origin;
- (id)originClientForPlayerPath:(id)path;
- (id)originClientRequestsForPlayerPath:(id)path;
- (id)playerClientForPlayerPath:(id)path;
- (id)playerClientRequestsForPlayerPath:(id)path;
- (uint64_t)_allowLocalOriginUsage;
- (void)_clearSystemEndpointForType:(void *)type reason:(void *)reason queue:;
- (void)_resolveActiveSystemEndpointWithType:(void *)type requestName:(void *)name requestType:(void *)requestType requestID:(void *)d timeout:(void *)timeout queue:(double)queue completion:;
- (void)clearActiveSystemEndpointsWithReason:(id)reason;
- (void)handleActiveSystemEndpointOutputDeviceUIDForType:(int64_t)type queue:(id)queue completion:(id)completion;
- (void)handleActiveSystemEndpointOutputDeviceUIDForType:(void *)type requestID:(void *)d queue:(void *)queue completion:;
- (void)removeOrigin:(id)origin;
- (void)removeOriginRequests:(id)requests;
- (void)resolveActiveSystemEndpointWithType:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)restoreNowPlayingClientState;
- (void)setCreateNewPlayerCallback:(id)callback;
- (void)setDestroyPlayerCallback:(id)callback;
- (void)setGeneratePlayerIDCallback:(id)callback;
- (void)updateActiveSystemEndpointOutputDeviceUID:(id)d forType:(int64_t)type reason:(id)reason;
@end

@implementation MRNowPlayingOriginClientManager

+ (id)sharedManager
{
  if (sharedManager___once_3 != -1)
  {
    +[MRNowPlayingOriginClientManager sharedManager];
  }

  v3 = sharedManager___sharedManager_1;

  return v3;
}

void __48__MRNowPlayingOriginClientManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(MRNowPlayingOriginClientManager);
  v1 = sharedManager___sharedManager_1;
  sharedManager___sharedManager_1 = v0;
}

- (MRNowPlayingOriginClientManager)init
{
  v8.receiver = self;
  v8.super_class = MRNowPlayingOriginClientManager;
  v2 = [(MRNowPlayingOriginClientManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    originClients = v2->_originClients;
    v2->_originClients = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    originClientRequests = v2->_originClientRequests;
    v2->_originClientRequests = v5;
  }

  return v2;
}

- (uint64_t)_allowLocalOriginUsage
{
  if (!self)
  {
    return 0;
  }

  v1 = +[MRUserSettings currentSettings];
  if ([v1 supportMultiplayerHost])
  {
    v2 = __57__MRNowPlayingOriginClientManager__allowLocalOriginUsage__block_invoke();
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

- (id)localOriginClient
{
  v3 = +[MROrigin localOrigin];
  v4 = [(MRNowPlayingOriginClientManager *)self originClientForOrigin:v3];

  return v4;
}

- (id)debugDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](selfCopy->_activeSystemEndpointUIDs, "count")}];
  activeSystemEndpointUIDs = selfCopy->_activeSystemEndpointUIDs;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __51__MRNowPlayingOriginClientManager_debugDescription__block_invoke;
  v23[3] = &unk_1E76A4110;
  v20 = v3;
  v24 = v20;
  [(NSMutableDictionary *)activeSystemEndpointUIDs enumerateKeysAndObjectsUsingBlock:v23];
  v5 = MEMORY[0x1E696AEC0];
  originClients = [(MRNowPlayingOriginClientManager *)selfCopy originClients];
  v19 = MRCreateIndentedDebugDescriptionFromArray(originClients);
  originClientRequests = [(MRNowPlayingOriginClientManager *)selfCopy originClientRequests];
  v18 = MRCreateIndentedDebugDescriptionFromArray(originClientRequests);
  v16 = MEMORY[0x1A58E3570](selfCopy->_createPlayerCallback);
  v17 = MRCreateIndentedDebugDescriptionFromObject(v16);
  v6 = MEMORY[0x1A58E3570](selfCopy->_destroyPlayerCallback);
  v7 = MRCreateIndentedDebugDescriptionFromObject(v6);
  v8 = MEMORY[0x1A58E3570](selfCopy->_generatePlayerIDCallback);
  v9 = MRCreateIndentedDebugDescriptionFromObject(v8);
  v10 = MRCreateIndentedDebugDescriptionFromObject(v20);
  v11 = MRCreateIndentedDebugDescriptionFromObject(selfCopy->_activeSystemEndpointUIDCompletions);
  v12 = MRCreateIndentedDebugDescriptionFromObject(selfCopy->_resolveActiveSystemEndpointCompletions);
  v13 = [v5 stringWithFormat:@"    originClients = %@\n    originClientRequests = %@\n    createPlayerCallback = %@\n    destroyPlayerCallback = %@\n    generatePlayerIDCallback = %@\n    activeSystemEndpoint = %@\n    activeSystemEndpointUIDCompletions = %@\n    resolveActiveSystemEndpointCompletions = %@\n", v19, v18, v17, v7, v9, v10, v11, v12];
  v14 = MRCreateFormattedDebugDescriptionFromClass(selfCopy, v13);

  objc_sync_exit(selfCopy);

  return v14;
}

void __51__MRNowPlayingOriginClientManager_debugDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  active = MRMediaRemoteActiveEndpointTypeCopyDescription([a2 intValue]);
  [v4 setObject:v5 forKeyedSubscript:active];
}

- (NSArray)originClients
{
  v3 = self->_originClients;
  objc_sync_enter(v3);
  allValues = [(NSMutableDictionary *)self->_originClients allValues];
  v5 = [allValues copy];

  objc_sync_exit(v3);

  return v5;
}

- (NSArray)originClientRequests
{
  v3 = self->_originClientRequests;
  objc_sync_enter(v3);
  allValues = [(NSMutableDictionary *)self->_originClientRequests allValues];
  v5 = [allValues copy];

  objc_sync_exit(v3);

  return v5;
}

- (void)setCreateNewPlayerCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [callbackCopy copy];
  createPlayerCallback = selfCopy->_createPlayerCallback;
  selfCopy->_createPlayerCallback = v5;

  objc_sync_exit(selfCopy);
}

- (id)createNewPlayerCallback
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [selfCopy->_createPlayerCallback copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setDestroyPlayerCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [callbackCopy copy];
  destroyPlayerCallback = selfCopy->_destroyPlayerCallback;
  selfCopy->_destroyPlayerCallback = v5;

  objc_sync_exit(selfCopy);
}

- (id)destroyPlayerCallback
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [selfCopy->_destroyPlayerCallback copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setGeneratePlayerIDCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [callbackCopy copy];
  generatePlayerIDCallback = selfCopy->_generatePlayerIDCallback;
  selfCopy->_generatePlayerIDCallback = v5;

  objc_sync_exit(selfCopy);
}

- (id)generatePlayerIDCallback
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [selfCopy->_generatePlayerIDCallback copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSOperationQueue)playbackQueueDataSourceOperationQueue
{
  if (playbackQueueDataSourceOperationQueue_onceToken != -1)
  {
    [MRNowPlayingOriginClientManager playbackQueueDataSourceOperationQueue];
  }

  v3 = playbackQueueDataSourceOperationQueue_operationQueue;

  return v3;
}

uint64_t __72__MRNowPlayingOriginClientManager_playbackQueueDataSourceOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = playbackQueueDataSourceOperationQueue_operationQueue;
  playbackQueueDataSourceOperationQueue_operationQueue = v0;

  [playbackQueueDataSourceOperationQueue_operationQueue setName:@"com.apple.mediaremote.serviceclient.playbackqueue.operationqueue"];
  v2 = playbackQueueDataSourceOperationQueue_operationQueue;

  return [v2 setMaxConcurrentOperationCount:6];
}

- (id)originClientForOrigin:(id)origin
{
  originCopy = origin;
  v5 = [[MRPlayerPath alloc] initWithOrigin:originCopy client:0 player:0];

  v6 = [(MRNowPlayingOriginClientManager *)self originClientForPlayerPath:v5];

  return v6;
}

- (id)existingOriginClientForPlayerPath:(id *)path
{
  v3 = a2;
  if (path)
  {
    v4 = [MRPlayerPath localResolvedPlayerPathFromPlayerPath:v3];
    origin = [v4 origin];

    if (!origin)
    {
      [MRNowPlayingOriginClientManager existingOriginClientForPlayerPath:];
    }

    v6 = path[1];
    objc_sync_enter(v6);
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(origin, "identifier")}];
    path = [path[1] objectForKey:v7];

    objc_sync_exit(v6);
  }

  return path;
}

- (id)createCustomOriginClientForOrigin:(id)origin routingContextID:(id)d
{
  originCopy = origin;
  dCopy = d;
  if (!originCopy)
  {
    [MRNowPlayingOriginClientManager createCustomOriginClientForOrigin:a2 routingContextID:self];
  }

  v9 = [[MRPlayerPath alloc] initWithOrigin:originCopy client:0 player:0];
  v10 = [MRPlayerPath localResolvedPlayerPathFromPlayerPath:v9];

  v11 = [(MRNowPlayingOriginClientManager *)self _createOriginClientForPlayerPath:v10 routingContextID:dCopy];

  return v11;
}

- (MRNowPlayingOriginClient)_createOriginClientForPlayerPath:(void *)path routingContextID:
{
  v5 = a2;
  pathCopy = path;
  if (self)
  {
    v7 = [MRPlayerPath localResolvedPlayerPathFromPlayerPath:v5];
    origin = [v7 origin];

    if (!origin)
    {
      [MRNowPlayingOriginClientManager _createOriginClientForPlayerPath:routingContextID:];
    }

    v9 = *(self + 8);
    objc_sync_enter(v9);
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(origin, "identifier")}];
    v11 = [*(self + 8) objectForKey:v10];
    if (!v11)
    {
      v11 = [[MRNowPlayingOriginClient alloc] initWithOrigin:origin routingContextID:pathCopy];
      if (v11)
      {
        [*(self + 8) setObject:v11 forKey:v10];
      }
    }

    objc_sync_exit(v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __57__MRNowPlayingOriginClientManager__allowLocalOriginUsage__block_invoke()
{
  if (MRProcessIsMediaRemoteDaemon() & 1) != 0 || (MRProcessIsAirPlayDaemon())
  {
    return 1;
  }

  return MRProcessIsHomePodCannedDemo();
}

- (id)originClientForPlayerPath:(id)path
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [MRPlayerPath localResolvedPlayerPathFromPlayerPath:path];
  origin = [v4 origin];
  if (![origin isLocal])
  {

    goto LABEL_3;
  }

  _allowLocalOriginUsage = [(MRNowPlayingOriginClientManager *)self _allowLocalOriginUsage];

  if (_allowLocalOriginUsage)
  {
LABEL_3:
    v6 = [(MRNowPlayingOriginClientManager *)&self->super.isa existingOriginClientForPlayerPath:v4];
    if (v6 || ([v4 origin], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isLocal"), v7, (v8 & 1) != 0))
    {
      v9 = [(MRNowPlayingOriginClientManager *)self _createOriginClientForPlayerPath:v4 routingContextID:0];
      goto LABEL_10;
    }

    callStackSymbols2 = _MRLogForCategory(0);
    if (os_log_type_enabled(callStackSymbols2, OS_LOG_TYPE_DEFAULT))
    {
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = callStackSymbols;
      _os_log_impl(&dword_1A2860000, callStackSymbols2, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingOriginClientManager] Cannot implicitly create a custom originClient for %@: %@. Instead MediaRemote should be explicitly creating this originClient in NowPlayingSessionManager", &v15, 0x16u);
    }

    goto LABEL_8;
  }

  v6 = _MRLogForCategory(0);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_9;
  }

  callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
  v15 = 138412546;
  v16 = v4;
  v17 = 2112;
  v18 = callStackSymbols2;
  _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingOriginClientManager] Cannot create a local originClient in framework for %@: %@", &v15, 0x16u);
LABEL_8:

LABEL_9:
  v9 = 0;
LABEL_10:

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)clientForPlayerPath:(id)path
{
  v4 = [MRPlayerPath localResolvedPlayerPathFromPlayerPath:path];
  v5 = [(MRNowPlayingOriginClientManager *)self originClientForPlayerPath:v4];
  v6 = [v5 nowPlayingClientForPlayerPath:v4];

  return v6;
}

- (id)playerClientForPlayerPath:(id)path
{
  v4 = [MRPlayerPath localResolvedPlayerPathFromPlayerPath:path];
  v5 = [(MRNowPlayingOriginClientManager *)self clientForPlayerPath:v4];
  v6 = [v5 nowPlayingPlayerClientForPlayerPath:v4];

  return v6;
}

- (id)originClientRequestsForPlayerPath:(id)path
{
  pathCopy = path;
  origin = [pathCopy origin];
  if (origin)
  {
    v6 = self->_originClientRequests;
    objc_sync_enter(v6);
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(origin, "identifier")}];
    v8 = [(NSMutableDictionary *)self->_originClientRequests objectForKey:v7];
    if (!v8)
    {
      v8 = [[MRNowPlayingOriginClientRequests alloc] initWithOrigin:origin];
      [(NSMutableDictionary *)self->_originClientRequests setObject:v8 forKey:v7];
    }

    objc_sync_exit(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)clientRequestsForPlayerPath:(id)path
{
  pathCopy = path;
  v5 = [(MRNowPlayingOriginClientManager *)self originClientRequestsForPlayerPath:pathCopy];
  v6 = [v5 nowPlayingClientRequestsForPlayerPath:pathCopy];

  return v6;
}

- (id)playerClientRequestsForPlayerPath:(id)path
{
  pathCopy = path;
  v5 = [(MRNowPlayingOriginClientManager *)self clientRequestsForPlayerPath:pathCopy];
  v6 = [v5 nowPlayingPlayerClientRequestsForPlayerPath:pathCopy];

  return v6;
}

- (id)existingOriginClientRequestsForPlayerPath:(id)path
{
  pathCopy = path;
  origin = [pathCopy origin];
  if (origin)
  {
    v6 = self->_originClientRequests;
    objc_sync_enter(v6);
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(origin, "identifier")}];
    v8 = [(NSMutableDictionary *)self->_originClientRequests objectForKey:v7];

    objc_sync_exit(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)existingClientRequestsForPlayerPath:(id)path
{
  pathCopy = path;
  v5 = [(MRNowPlayingOriginClientManager *)self existingOriginClientRequestsForPlayerPath:pathCopy];
  v6 = [v5 existingNowPlayingClientRequestsForPlayerPath:pathCopy];

  return v6;
}

- (id)existingPlayerClientRequestsForPlayerPath:(id)path
{
  pathCopy = path;
  v5 = [(MRNowPlayingOriginClientManager *)self existingClientRequestsForPlayerPath:pathCopy];
  v6 = [v5 existingNowPlayingPlayerClientRequestsForPlayerPath:pathCopy];

  return v6;
}

- (void)restoreNowPlayingClientState
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  originClientRequests = [(MRNowPlayingOriginClientManager *)self originClientRequests];
  v4 = [originClientRequests countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(originClientRequests);
        }

        [*(*(&v18 + 1) + 8 * v7++) restoreNowPlayingClientState];
      }

      while (v5 != v7);
      v5 = [originClientRequests countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  originClients = [(MRNowPlayingOriginClientManager *)self originClients];
  v9 = [originClients countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(originClients);
        }

        [*(*(&v14 + 1) + 8 * v12++) restoreNowPlayingClientState];
      }

      while (v10 != v12);
      v10 = [originClients countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)removeOrigin:(id)origin
{
  v15 = *MEMORY[0x1E69E9840];
  originCopy = origin;
  if (!originCopy)
  {
    [MRNowPlayingOriginClientManager removeOrigin:];
  }

  v5 = self->_originClients;
  objc_sync_enter(v5);
  originClients = self->_originClients;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(originCopy, "identifier")}];
  v8 = [(NSMutableDictionary *)originClients objectForKey:v7];

  if (!v8)
  {
    v9 = _MRLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = originCopy;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingOriginClientManager] RemoveOrigin: Could not find originClient for origin %{public}@", &v13, 0xCu);
    }
  }

  v10 = self->_originClients;
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(originCopy, "identifier")}];
  [(NSMutableDictionary *)v10 removeObjectForKey:v11];

  objc_sync_exit(v5);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeOriginRequests:(id)requests
{
  requestsCopy = requests;
  if (!requestsCopy)
  {
    [MRNowPlayingOriginClientManager removeOriginRequests:];
  }

  v4 = self->_originClientRequests;
  objc_sync_enter(v4);
  originClientRequests = self->_originClientRequests;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(requestsCopy, "identifier")}];
  [(NSMutableDictionary *)originClientRequests removeObjectForKey:v6];

  objc_sync_exit(v4);
}

- (void)updateActiveSystemEndpointOutputDeviceUID:(id)d forType:(int64_t)type reason:(id)reason
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeSystemEndpointUIDs = selfCopy->_activeSystemEndpointUIDs;
  if (!activeSystemEndpointUIDs)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = selfCopy->_activeSystemEndpointUIDs;
    selfCopy->_activeSystemEndpointUIDs = v12;

    activeSystemEndpointUIDs = selfCopy->_activeSystemEndpointUIDs;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v15 = [(NSMutableDictionary *)activeSystemEndpointUIDs objectForKeyedSubscript:v14];

  if (dCopy)
  {
    v16 = dCopy;
  }

  else
  {
    v16 = +[MRAVOutputDevice localDeviceUID];
  }

  v17 = v16;
  v18 = [v16 copy];
  v19 = selfCopy->_activeSystemEndpointUIDs;
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:v20];

  active = MRMediaRemoteActiveEndpointTypeCopyDescription(type);
  v22 = _MRLogForCategory(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138544130;
    v25 = active;
    v26 = 2114;
    v27 = v15;
    v28 = 2114;
    v29 = v17;
    v30 = 2114;
    v31 = reasonCopy;
    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingOriginClientManager] %{public}@SystemEndpoint changed from %{public}@ to %{public}@ because %{public}@", &v24, 0x2Au);
  }

  objc_sync_exit(selfCopy);
  v23 = *MEMORY[0x1E69E9840];
}

- (void)clearActiveSystemEndpointsWithReason:(id)reason
{
  v11 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeSystemEndpointUIDs = selfCopy->_activeSystemEndpointUIDs;
  selfCopy->_activeSystemEndpointUIDs = 0;

  v7 = _MRLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = reasonCopy;
    _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingOriginClientManager] Clearing system endpoint UIDs because %{public}@", &v9, 0xCu);
  }

  objc_sync_exit(selfCopy);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleActiveSystemEndpointOutputDeviceUIDForType:(int64_t)type queue:(id)queue completion:(id)completion
{
  v8 = MEMORY[0x1E696AFB0];
  completionCopy = completion;
  queueCopy = queue;
  uUID = [v8 UUID];
  uUIDString = [uUID UUIDString];

  [(MRNowPlayingOriginClientManager *)self handleActiveSystemEndpointOutputDeviceUIDForType:type requestID:uUIDString queue:queueCopy completion:completionCopy];
}

- (void)handleActiveSystemEndpointOutputDeviceUIDForType:(void *)type requestID:(void *)d queue:(void *)queue completion:
{
  v68 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  dCopy = d;
  queueCopy = queue;
  if (self)
  {
    v44 = queueCopy;
    if (!queueCopy)
    {
      [MRNowPlayingOriginClientManager handleActiveSystemEndpointOutputDeviceUIDForType:self requestID:? queue:? completion:?];
    }

    date = [MEMORY[0x1E695DF00] date];
    active = MRMediaRemoteActiveEndpointTypeCopyDescription(a2);
    v13 = [MRBlockGuard alloc];
    typeCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<%@>", @"handleActiveSystemEndpointOutputDeviceUIDForType", typeCopy];
    v15 = [(MRBlockGuard *)v13 initWithTimeout:typeCopy reason:0 handler:0.0];

    typeCopy2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"handleActiveSystemEndpointOutputDeviceUIDForType", typeCopy];
    v17 = typeCopy2;
    if (active)
    {
      [(__CFString *)typeCopy2 appendFormat:@" for %@", active];
    }

    v18 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v61 = v17;
      _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __111__MRNowPlayingOriginClientManager_handleActiveSystemEndpointOutputDeviceUIDForType_requestID_queue_completion___block_invoke;
    v52[3] = &unk_1E76A4138;
    v43 = v15;
    v53 = v43;
    v19 = active;
    v54 = v19;
    v55 = @"handleActiveSystemEndpointOutputDeviceUIDForType";
    v20 = typeCopy;
    v56 = v20;
    v42 = date;
    v57 = v42;
    v41 = dCopy;
    v58 = v41;
    v59 = v44;
    v21 = MEMORY[0x1A58E3570](v52);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23 = selfCopy[6];
    if (!v23)
    {
      v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v25 = selfCopy[6];
      selfCopy[6] = v24;

      v23 = selfCopy[6];
    }

    v26 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v27 = [v23 objectForKeyedSubscript:v26];

    if (v27)
    {
      v28 = [selfCopy activeSystemEndpointOutputDeviceUIDForType:a2];
      (v21)[2](v21, v28, 0);
    }

    else
    {
      v29 = selfCopy[7];
      if (!v29)
      {
        v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v31 = selfCopy[7];
        selfCopy[7] = v30;

        v29 = selfCopy[7];
      }

      v32 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
      v28 = [v29 objectForKeyedSubscript:v32];

      if (!v28)
      {
        v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v33 = selfCopy[7];
        v34 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
        [v33 setObject:v28 forKeyedSubscript:v34];
      }

      v35 = [v21 copy];
      v36 = MEMORY[0x1A58E3570]();
      [v28 addObject:v36];

      if ([v28 count] == 1)
      {
        v37 = _MRLogForCategory(0xAuLL);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          v61 = @"handleActiveSystemEndpointOutputDeviceUIDForType";
          v62 = 2114;
          v63 = v20;
          v64 = 2112;
          v65 = 0;
          v66 = 2112;
          v67 = v19;
          _os_log_impl(&dword_1A2860000, v37, OS_LOG_TYPE_DEFAULT, "Cache Miss: Request: %{public}@<%{public}@> for %@ %@", buf, 0x2Au);
        }

        v38 = MRGetSharedService();
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __111__MRNowPlayingOriginClientManager_handleActiveSystemEndpointOutputDeviceUIDForType_requestID_queue_completion___block_invoke_62;
        v46[3] = &unk_1E76A4160;
        v51 = a2;
        v46[4] = selfCopy;
        v47 = @"handleActiveSystemEndpointOutputDeviceUIDForType";
        v48 = v20;
        v49 = v19;
        v28 = v28;
        v50 = v28;
        MRMediaRemoteServiceGetActiveSystemEndpointUID(v38, a2, v41, v46);
      }

      else
      {
        v39 = _MRLogForCategory(0xAuLL);
        [MRNowPlayingOriginClientManager handleActiveSystemEndpointOutputDeviceUIDForType:v39 requestID:v20 queue:v19 completion:?];
      }
    }

    objc_sync_exit(selfCopy);
    queueCopy = v44;
  }

  v40 = *MEMORY[0x1E69E9840];
}

void __111__MRNowPlayingOriginClientManager_handleActiveSystemEndpointOutputDeviceUIDForType_requestID_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) disarm];
  v7 = *(a1 + 40);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v12 = *(a1 + 48);
        v11 = *(a1 + 56);
        v13 = *(a1 + 40);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 64)];
        *buf = 138544386;
        v45 = v12;
        v46 = 2114;
        v47 = v11;
        v48 = 2112;
        v49 = v5;
        v50 = 2114;
        v51 = v13;
        v52 = 2048;
        v53 = v15;
        v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v17 = v9;
        v18 = 52;
LABEL_16:
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v29 = *(a1 + 48);
    v30 = *(a1 + 56);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 64)];
    *buf = 138544130;
    v45 = v29;
    v46 = 2114;
    v47 = v30;
    v48 = 2112;
    v49 = v5;
    v50 = 2048;
    v51 = v31;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v17 = v9;
    v18 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v19)
      {
        v21 = *(a1 + 48);
        v20 = *(a1 + 56);
        v22 = *(a1 + 40);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 64)];
        *buf = 138544386;
        v45 = v21;
        v46 = 2114;
        v47 = v20;
        v48 = 2114;
        v49 = v6;
        v50 = 2114;
        v51 = v22;
        v52 = 2048;
        v53 = v23;
        _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v19)
    {
      __111__MRNowPlayingOriginClientManager_handleActiveSystemEndpointOutputDeviceUIDForType_requestID_queue_completion___block_invoke_cold_1(a1);
    }

    goto LABEL_22;
  }

  v24 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v24)
    {
      goto LABEL_22;
    }

    v32 = *(a1 + 48);
    v33 = *(a1 + 56);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 64)];
    *buf = 138543874;
    v45 = v32;
    v46 = 2114;
    v47 = v33;
    v48 = 2048;
    v49 = v34;
    v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v17 = v9;
    v18 = 32;
    goto LABEL_16;
  }

  if (v24)
  {
    v26 = *(a1 + 48);
    v25 = *(a1 + 56);
    v27 = *(a1 + 40);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 64)];
    *buf = 138544130;
    v45 = v26;
    v46 = 2114;
    v47 = v25;
    v48 = 2114;
    v49 = v27;
    v50 = 2048;
    v51 = v28;
    v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__MRNowPlayingOriginClientManager_handleActiveSystemEndpointOutputDeviceUIDForType_requestID_queue_completion___block_invoke_59;
  block[3] = &unk_1E769AC18;
  v35 = *(a1 + 72);
  v36 = *(a1 + 80);
  v42 = v6;
  v43 = v36;
  v41 = v5;
  v37 = v6;
  v38 = v5;
  dispatch_async(v35, block);

  v39 = *MEMORY[0x1E69E9840];
}

void __111__MRNowPlayingOriginClientManager_handleActiveSystemEndpointOutputDeviceUIDForType_requestID_queue_completion___block_invoke_62(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = *(*(a1 + 32) + 48);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 72)];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      *buf = 138544130;
      v24 = v9;
      v25 = 2114;
      v26 = v10;
      v27 = 2112;
      v28 = @"request completed however response is already stale";
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Cache Miss: Request: %{public}@<%{public}@> for %@ %@", buf, 0x2Au);
    }
  }

  else
  {
    [*(a1 + 32) updateActiveSystemEndpointOutputDeviceUID:v3 forType:*(a1 + 72) reason:@"initializing"];
  }

  v12 = [*(a1 + 32) activeSystemEndpointOutputDeviceUIDForType:*(a1 + 72)];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = *(a1 + 64);
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v13);
        }

        (*(*(*(&v18 + 1) + 8 * v16) + 16))(*(*(&v18 + 1) + 8 * v16));
        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  [*(a1 + 64) removeAllObjects];
  objc_sync_exit(v4);

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activeSystemEndpointOutputDeviceUIDForType:(int64_t)type
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeSystemEndpointUIDs = selfCopy->_activeSystemEndpointUIDs;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v7 = [(NSMutableDictionary *)activeSystemEndpointUIDs objectForKeyedSubscript:v6];

  objc_sync_exit(selfCopy);
  if (!v7)
  {
    v8 = MRGetSharedService();
    v9 = [v8 getActiveSystemEndpointUIDForType:type];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = +[MRAVOutputDevice localDeviceUID];
    }

    v7 = v11;

    [(MRNowPlayingOriginClientManager *)selfCopy updateActiveSystemEndpointOutputDeviceUID:v7 forType:type reason:@"fetching data from server"];
  }

  v12 = +[MRAVOutputDevice localDeviceUID];
  v13 = [v7 isEqualToString:v12];

  if (v13)
  {

    v7 = 0;
  }

  v14 = [v7 copy];

  return v14;
}

- (void)resolveActiveSystemEndpointWithType:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  completionCopy = completion;
  active = MRMediaRemoteActiveEndpointTypeCopyDescription(type);
  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v16 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"ResolveActiveEndpoint", uUIDString];
  v17 = v16;
  if (active)
  {
    [v16 appendFormat:@" for %@", active];
  }

  v18 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v45 = v17;
    _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __96__MRNowPlayingOriginClientManager_resolveActiveSystemEndpointWithType_timeout_queue_completion___block_invoke;
  v37[3] = &unk_1E76A4188;
  v19 = active;
  v38 = v19;
  v39 = @"ResolveActiveEndpoint";
  v20 = uUIDString;
  v40 = v20;
  v41 = date;
  v42 = queueCopy;
  v43 = completionCopy;
  v21 = queueCopy;
  v22 = completionCopy;
  v23 = date;
  v24 = MEMORY[0x1A58E3570](v37);
  if (resolveActiveSystemEndpointWithType_timeout_queue_completion__onceToken != -1)
  {
    [MRNowPlayingOriginClientManager resolveActiveSystemEndpointWithType:timeout:queue:completion:];
  }

  v25 = resolveActiveSystemEndpointWithType_timeout_queue_completion__workerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__MRNowPlayingOriginClientManager_resolveActiveSystemEndpointWithType_timeout_queue_completion___block_invoke_3;
  block[3] = &unk_1E76A41B0;
  block[4] = self;
  v31 = @"ResolveActiveEndpoint";
  v32 = v19;
  v33 = v20;
  timeoutCopy = timeout;
  v34 = v24;
  typeCopy = type;
  v26 = v24;
  v27 = v20;
  v28 = v19;
  dispatch_async(v25, block);

  v29 = *MEMORY[0x1E69E9840];
}

void __96__MRNowPlayingOriginClientManager_resolveActiveSystemEndpointWithType_timeout_queue_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = a1[4];
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v18 = a1[5];
        v19 = a1[6];
        v13 = [v5 debugName];
        v20 = a1[4];
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:a1[7]];
        *buf = 138544386;
        v48 = v18;
        v49 = 2114;
        v50 = v19;
        v51 = 2112;
        v52 = v13;
        v53 = 2114;
        v54 = v20;
        v55 = 2048;
        v56 = v22;
        v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v24 = v8;
        v25 = 52;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v33 = a1[5];
        v34 = a1[6];
        v13 = [v5 debugName];
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:a1[7]];
        *buf = 138544130;
        v48 = v33;
        v49 = 2114;
        v50 = v34;
        v51 = 2112;
        v52 = v13;
        v53 = 2048;
        v54 = v35;
        v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v24 = v8;
        v25 = 42;
      }

      _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    }

    else
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v27 = a1[5];
        v26 = a1[6];
        v28 = a1[4];
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:a1[7]];
        *buf = 138544130;
        v48 = v27;
        v49 = 2114;
        v50 = v26;
        v51 = 2114;
        v52 = v28;
        v53 = 2048;
        v54 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = a1[5];
        v37 = a1[6];
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:a1[7]];
        *buf = 138543874;
        v48 = v36;
        v49 = 2114;
        v50 = v37;
        v51 = 2048;
        v52 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    }

    goto LABEL_20;
  }

  v7 = a1[4];
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    v11 = a1[5];
    v10 = a1[6];
    v12 = a1[4];
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:a1[7]];
    *buf = 138544386;
    v48 = v11;
    v49 = 2114;
    v50 = v10;
    v51 = 2114;
    v52 = v6;
    v53 = 2114;
    v54 = v12;
    v55 = 2048;
    v56 = v14;
    _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v9)
  {
    __103__MRNowPlayingRequest_AudioFade__triggerAudioFadeOutForNowPlayingApplicationWithReplyQueue_completion___block_invoke_14_cold_1(a1);
  }

LABEL_21:

  v39 = a1[9];
  if (v39)
  {
    v40 = a1[8];
    v41 = v40;
    if (!v40)
    {
      v41 = MEMORY[0x1E69E96A0];
      v42 = MEMORY[0x1E69E96A0];
      v39 = a1[9];
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __96__MRNowPlayingOriginClientManager_resolveActiveSystemEndpointWithType_timeout_queue_completion___block_invoke_79;
    v44[3] = &unk_1E769AB28;
    v46 = v39;
    v45 = v5;
    dispatch_async(v41, v44);
    if (!v40)
    {
    }
  }

  v43 = *MEMORY[0x1E69E9840];
}

void __96__MRNowPlayingOriginClientManager_resolveActiveSystemEndpointWithType_timeout_queue_completion___block_invoke_2()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.mediaremote.resolveActiveSystemEndpoint.workerQueue", v2);
  v1 = resolveActiveSystemEndpointWithType_timeout_queue_completion__workerQueue;
  resolveActiveSystemEndpointWithType_timeout_queue_completion__workerQueue = v0;
}

- (void)_resolveActiveSystemEndpointWithType:(void *)type requestName:(void *)name requestType:(void *)requestType requestID:(void *)d timeout:(void *)timeout queue:(double)queue completion:
{
  typeCopy = type;
  nameCopy = name;
  requestTypeCopy = requestType;
  dCopy = d;
  timeoutCopy = timeout;
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v19 = selfCopy[8];
    if (!v19)
    {
      v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v21 = selfCopy[8];
      selfCopy[8] = v20;

      v19 = selfCopy[8];
    }

    if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v22 = 0;
    }

    else
    {
      v22 = a2;
    }

    v23 = [MEMORY[0x1E696AD98] numberWithInteger:{a2, nameCopy}];
    v24 = [v19 objectForKeyedSubscript:v23];

    if (!v24)
    {
      v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v25 = selfCopy[8];
      v26 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
      [v25 setObject:v24 forKeyedSubscript:v26];
    }

    v27 = [timeoutCopy copy];
    v28 = MEMORY[0x1A58E3570]();
    [v24 setObject:v28 forKeyedSubscript:requestTypeCopy];

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __131__MRNowPlayingOriginClientManager__resolveActiveSystemEndpointWithType_requestName_requestType_requestID_timeout_queue_completion___block_invoke;
    v32[3] = &unk_1E76A4228;
    v40 = a2;
    v33 = typeCopy;
    v34 = requestTypeCopy;
    queueCopy = queue;
    v35 = dCopy;
    v36 = selfCopy;
    v29 = v24;
    v37 = v29;
    v42 = v22;
    v38 = nameCopy;
    v39 = timeoutCopy;
    [(MRNowPlayingOriginClientManager *)selfCopy handleActiveSystemEndpointOutputDeviceUIDForType:v22 requestID:v34 queue:v35 completion:v32];

    objc_sync_exit(selfCopy);
  }
}

void __131__MRNowPlayingOriginClientManager__resolveActiveSystemEndpointWithType_requestName_requestType_requestID_timeout_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[MRAVOutputDevice localDeviceUID];
  v5 = v4;
  if (v4 == v3)
  {

    goto LABEL_5;
  }

  v6 = [v4 isEqual:v3];

  if (v6)
  {
LABEL_5:

    v3 = 0;
  }

  if (*(a1 + 88) == 4)
  {
    v7 = +[MRGroupSessionRequestManager sharedManager];
    v8 = [v7 groupSessionInfo];

    if (v8)
    {
      v9 = [v8 isHosted];
      if (v3 && v9)
      {
        v10 = _MRLogForCategory(0xAuLL);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          v12 = *(a1 + 40);
          *buf = 138543874;
          v46 = v11;
          v47 = 2114;
          v48 = v12;
          v49 = 2112;
          v50 = @"Will override with local for supported client hosting GroupSession.";
          _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
        }

        v3 = 0;
      }

      else if (([v8 isHosted] & 1) == 0)
      {
        v13 = [v8 effectiveIdentifier];
        v14 = v13;
        if (v3 == v13)
        {
        }

        else
        {
          v15 = [v3 isEqual:v13];

          if ((v15 & 1) == 0)
          {
            v16 = _MRLogForCategory(0xAuLL);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = *(a1 + 32);
              v18 = *(a1 + 40);
              *buf = 138543874;
              v46 = v17;
              v47 = 2114;
              v48 = v18;
              v49 = 2112;
              v50 = @"Will override with remote GroupSession endpoint for supported client.";
              _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
            }

            v19 = [v8 effectiveIdentifier];

            v3 = v19;
          }
        }
      }
    }
  }

  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<%@>", *(a1 + 32), *(a1 + 40)];
  v21 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  v22 = *(a1 + 96);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __131__MRNowPlayingOriginClientManager__resolveActiveSystemEndpointWithType_requestName_requestType_requestID_timeout_queue_completion___block_invoke_92;
  v32[3] = &unk_1E76A4200;
  v24 = *(a1 + 48);
  v23 = *(a1 + 56);
  v25 = *(a1 + 64);
  v33 = v21;
  v34 = v23;
  v35 = v25;
  v26 = *(a1 + 40);
  v27 = *(a1 + 88);
  v36 = v26;
  v42 = v27;
  v28 = *(a1 + 32);
  v43 = *(a1 + 104);
  v37 = v28;
  v38 = v3;
  v39 = *(a1 + 72);
  v44 = *(a1 + 96);
  v40 = *(a1 + 48);
  v41 = *(a1 + 80);
  v29 = v3;
  v30 = v21;
  [(MRAVLightweightReconnaissanceSession *)v30 searchEndpointsForOutputDeviceUID:v29 timeout:v20 reason:v24 queue:v32 completion:v22];

  v31 = *MEMORY[0x1E69E9840];
}

void __131__MRNowPlayingOriginClientManager__resolveActiveSystemEndpointWithType_requestName_requestType_requestID_timeout_queue_completion___block_invoke_92(uint64_t a1, void *a2, void *a3)
{
  v73[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__46;
  v62 = __Block_byref_object_dispose__46;
  v8 = v5;
  v63 = v8;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = __Block_byref_object_copy__46;
  v56[4] = __Block_byref_object_dispose__46;
  v9 = v6;
  v57 = v9;
  v10 = *(a1 + 40);
  objc_sync_enter(v10);
  v11 = [*(a1 + 48) objectForKey:*(a1 + 56)];
  v12 = v11;
  if (v8)
  {
    if (*(a1 + 104) != 5 || ([v8 groupSessionInfo], (v13 = objc_claimAutoreleasedReturnValue()) == 0) || (v14 = objc_msgSend(v8, "isLocalEndpoint"), v13, (v14 & 1) != 0))
    {
      v15 = [*(a1 + 40) activeSystemEndpointOutputDeviceUIDForType:*(a1 + 112)];
      v16 = v15;
      if (*(a1 + 104) == 4)
      {
        v17 = +[MRGroupSessionRequestManager sharedManager];
        v18 = [v17 groupSessionInfo];

        if (v18)
        {
          if ([v18 isHosted])
          {
            v19 = 0;
          }

          else
          {
            v19 = [v18 effectiveIdentifier];
          }
        }

        else
        {
          v19 = v16;
        }
      }

      else
      {
        v19 = v15;
      }

      v33 = *(a1 + 72);
      v34 = v19;
      v35 = v33;
      v36 = v35;
      if (v34 == v35)
      {
      }

      else
      {
        v37 = [v34 isEqual:v35];

        if (!v37)
        {
          if (v12)
          {
            if (*(a1 + 104) == 4)
            {
              v38 = _MRLogForCategory(0);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
              {
                __131__MRNowPlayingOriginClientManager__resolveActiveSystemEndpointWithType_requestName_requestType_requestID_timeout_queue_completion___block_invoke_92_cold_1(v34, v38);
              }

              v39 = _MRLogForCategory(0xAuLL);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                v41 = *(a1 + 56);
                v40 = *(a1 + 64);
                *buf = 138543874;
                v66 = v40;
                v67 = 2114;
                v68 = v41;
                v69 = 2112;
                v70 = @"Failed to find endpoint for group session. Return local.";
                _os_log_impl(&dword_1A2860000, v39, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
              }

              v42 = MEMORY[0x1A58E3570](v12);
              v73[0] = v42;
              v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];

              v43 = +[MRAVLocalEndpoint sharedLocalEndpoint];
              v44 = v59[5];
              v59[5] = v43;

              [*(a1 + 48) removeObjectForKey:*(a1 + 56)];
              MRAVEndpointUpdateActiveSystemEndpointWithReason(0, 1, @"Failed to resolve group session endpoint", 0, 0);
              goto LABEL_40;
            }

            v50 = _MRLogForCategory(0xAuLL);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v52 = *(a1 + 56);
              v51 = *(a1 + 64);
              v53 = *(a1 + 80);
              *buf = 138544130;
              v66 = v51;
              v67 = 2114;
              v68 = v52;
              v69 = 2112;
              v70 = @"response is already stale";
              v71 = 2112;
              v72 = v53;
              _os_log_impl(&dword_1A2860000, v50, OS_LOG_TYPE_DEFAULT, "Cache Miss: Request: %{public}@<%{public}@> for %@ %@", buf, 0x2Au);
            }

            [(MRNowPlayingOriginClientManager *)*(a1 + 40) _resolveActiveSystemEndpointWithType:*(a1 + 64) requestName:*(a1 + 80) requestType:*(a1 + 56) requestID:*(a1 + 88) timeout:*(a1 + 96) queue:*(a1 + 120) completion:?];
          }

          else
          {
            v46 = _MRLogForCategory(0xAuLL);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              v48 = *(a1 + 56);
              v47 = *(a1 + 64);
              v49 = *(a1 + 80);
              *buf = 138544130;
              v66 = v47;
              v67 = 2114;
              v68 = v48;
              v69 = 2112;
              v70 = @"resolve completed however previous response already fulfilled request (informational only, not further action required)";
              v71 = 2112;
              v72 = v49;
              _os_log_impl(&dword_1A2860000, v46, OS_LOG_TYPE_DEFAULT, "Cache Miss: Request: %{public}@<%{public}@> for %@ %@", buf, 0x2Au);
            }
          }

          v26 = 0;
LABEL_40:

          goto LABEL_41;
        }
      }

      v45 = [*(a1 + 48) allValues];
      v26 = [v45 copy];

      [*(a1 + 48) removeAllObjects];
      goto LABEL_40;
    }

    v27 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 56);
      v28 = *(a1 + 64);
      *buf = 138543874;
      v66 = v28;
      v67 = 2114;
      v68 = v29;
      v69 = 2112;
      v70 = @"ASE is remote GroupSession, will override with local for unsupported client.";
      _os_log_impl(&dword_1A2860000, v27, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v30 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    v31 = v59[5];
    v59[5] = v30;

    v32 = [*(a1 + 48) allValues];
    v26 = [v32 copy];

    [*(a1 + 48) removeAllObjects];
  }

  else if (v11)
  {
    if ([*(a1 + 48) count] == 1)
    {
      v20 = objc_alloc(MEMORY[0x1E696AEC0]);
      v21 = *(a1 + 72);
      v22 = [v20 initWithFormat:@"Could not discover %@ for ResolveActiveEndpoint<%@> in <%lf> seconds", v21, *(a1 + 56), *(a1 + 120)];
      [(MRNowPlayingOriginClientManager *)*(a1 + 40) _clearSystemEndpointForType:v22 reason:*(a1 + 88) queue:?];
    }

    v23 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    v24 = v59[5];
    v59[5] = v23;

    v25 = MEMORY[0x1A58E3570](v12);
    v64 = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];

    [*(a1 + 48) removeObjectForKey:*(a1 + 56)];
  }

  else
  {
    v26 = 0;
  }

LABEL_41:

  objc_sync_exit(v10);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __131__MRNowPlayingOriginClientManager__resolveActiveSystemEndpointWithType_requestName_requestType_requestID_timeout_queue_completion___block_invoke_113;
  v55[3] = &unk_1E76A41D8;
  v55[4] = &v58;
  v55[5] = v56;
  [v26 enumerateObjectsUsingBlock:v55];
  _Block_object_dispose(v56, 8);

  _Block_object_dispose(&v58, 8);
  v54 = *MEMORY[0x1E69E9840];
}

- (void)_clearSystemEndpointForType:(void *)type reason:(void *)reason queue:
{
  if (self)
  {
    v5 = a2;
    if (a2 <= 3)
    {
      v5 = qword_1A2B81200[a2];
    }

    reasonCopy = reason;
    typeCopy = type;
    v8 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:0 type:v5 reason:typeCopy];

    [(MRUpdateActiveSystemEndpointRequest *)v8 setChangeType:1];
    [(MRUpdateActiveSystemEndpointRequest *)v8 perform:reasonCopy completion:0];
  }
}

- (void)existingOriginClientForPlayerPath:.cold.1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingOriginClientManager existingOriginClientForPlayerPath:]"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

- (void)createCustomOriginClientForOrigin:(uint64_t)a1 routingContextID:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRNowPlayingOriginClientManager.m" lineNumber:184 description:{@"Invalid parameter not satisfying: %@", @"origin"}];
}

- (void)_createOriginClientForPlayerPath:routingContextID:.cold.1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingOriginClientManager _createOriginClientForPlayerPath:routingContextID:]"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

- (void)removeOrigin:.cold.1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingOriginClientManager removeOrigin:]"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

- (void)removeOriginRequests:.cold.1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingOriginClientManager removeOriginRequests:]"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

- (void)handleActiveSystemEndpointOutputDeviceUIDForType:(uint64_t)a1 requestID:queue:completion:.cold.1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:sel_handleActiveSystemEndpointOutputDeviceUIDForType_requestID_queue_completion_ object:a1 file:@"MRNowPlayingOriginClientManager.m" lineNumber:394 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

- (void)handleActiveSystemEndpointOutputDeviceUIDForType:(uint64_t)a3 requestID:queue:completion:.cold.2(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138544130;
    v8 = @"handleActiveSystemEndpointOutputDeviceUIDForType";
    v9 = 2114;
    v10 = a2;
    v11 = 2112;
    v12 = @"waiting for previously batched request to respond";
    v13 = 2112;
    v14 = a3;
    _os_log_impl(&dword_1A2860000, a1, OS_LOG_TYPE_DEFAULT, "Cache Miss: Request: %{public}@<%{public}@> for %@ %@", &v7, 0x2Au);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __111__MRNowPlayingOriginClientManager_handleActiveSystemEndpointOutputDeviceUIDForType_requestID_queue_completion___block_invoke_cold_1(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  v3 = a1[7];
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:a1[8]];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __131__MRNowPlayingOriginClientManager__resolveActiveSystemEndpointWithType_requestName_requestType_requestID_timeout_queue_completion___block_invoke_92_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1A2860000, a2, OS_LOG_TYPE_FAULT, "[MRNowPlayingOriginClientManager] Could not find endpoint for %@.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end