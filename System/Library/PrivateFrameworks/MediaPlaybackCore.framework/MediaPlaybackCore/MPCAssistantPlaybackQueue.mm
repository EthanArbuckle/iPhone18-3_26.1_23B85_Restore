@interface MPCAssistantPlaybackQueue
- (MPCAssistantPlaybackQueue)initWithContextID:(id)d;
- (_MRSystemAppPlaybackQueue)createRemotePlaybackQueue;
- (id)copyWithZone:(_NSZone *)zone;
- (void)getPlaybackQueueWithDestination:(id)destination completion:(id)completion;
@end

@implementation MPCAssistantPlaybackQueue

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  contextID = [(MPCAssistantPlaybackQueue *)self contextID];
  v6 = *(v4 + 16);
  *(v4 + 16) = contextID;

  *(v4 + 8) = [(MPCAssistantPlaybackQueue *)self shouldOverrideManuallyCuratedQueue];
  *(v4 + 9) = [(MPCAssistantPlaybackQueue *)self shouldImmediatelyStartPlayback];
  siriRecommendationID = [(MPCAssistantPlaybackQueue *)self siriRecommendationID];
  v8 = *(v4 + 24);
  *(v4 + 24) = siriRecommendationID;

  siriAssetInfo = [(MPCAssistantPlaybackQueue *)self siriAssetInfo];
  v10 = *(v4 + 32);
  *(v4 + 32) = siriAssetInfo;

  featureName = [(MPCAssistantPlaybackQueue *)self featureName];
  v12 = *(v4 + 40);
  *(v4 + 40) = featureName;

  queueGroupingID = [(MPCAssistantPlaybackQueue *)self queueGroupingID];
  v14 = *(v4 + 48);
  *(v4 + 48) = queueGroupingID;

  siriWHAMetricsInfo = [(MPCAssistantPlaybackQueue *)self siriWHAMetricsInfo];
  v16 = *(v4 + 56);
  *(v4 + 56) = siriWHAMetricsInfo;

  userIdentity = [(MPCAssistantPlaybackQueue *)self userIdentity];
  v18 = *(v4 + 64);
  *(v4 + 64) = userIdentity;

  homeKitUserIdentifier = [(MPCAssistantPlaybackQueue *)self homeKitUserIdentifier];
  v20 = *(v4 + 72);
  *(v4 + 72) = homeKitUserIdentifier;

  return v4;
}

- (_MRSystemAppPlaybackQueue)createRemotePlaybackQueue
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v5 = [threadDictionary objectForKeyedSubscript:@"getPlaybackQueue-async"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    return 0;
  }

  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v9 = +[MPCAssistantRemoteControlDestination nowPlayingApplicationDestination];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __54__MPCAssistantPlaybackQueue_createRemotePlaybackQueue__block_invoke;
  v17 = &unk_1E8231170;
  v19 = &v20;
  v10 = v8;
  v18 = v10;
  [(MPCAssistantPlaybackQueue *)self getPlaybackQueueWithDestination:v9 completion:&v14];

  dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v21[5];
  [v11 _mediaRemotePlaybackQueue];
  ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
  v7 = MRSystemAppPlaybackQueueCreateFromExternalRepresentation();

  _Block_object_dispose(&v20, 8);
  return v7;
}

void __54__MPCAssistantPlaybackQueue_createRemotePlaybackQueue__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)getPlaybackQueueWithDestination:(id)destination completion:(id)completion
{
  completionCopy = completion;
  createRemotePlaybackQueue = [(MPCAssistantPlaybackQueue *)self createRemotePlaybackQueue];
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  [threadDictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"getPlaybackQueue-async"];

  v11 = [MEMORY[0x1E6970900] queueWithMediaRemotePlaybackQueue:createRemotePlaybackQueue];
  currentThread2 = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary2 = [currentThread2 threadDictionary];
  [threadDictionary2 setObject:0 forKeyedSubscript:@"getPlaybackQueue-async"];

  completionCopy[2](completionCopy, v11, 0);
}

- (MPCAssistantPlaybackQueue)initWithContextID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = MPCAssistantPlaybackQueue;
  v5 = [(MPCAssistantPlaybackQueue *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    contextID = v5->_contextID;
    v5->_contextID = v6;
  }

  return v5;
}

@end