@interface MPCAssistantPlaybackQueue
- (MPCAssistantPlaybackQueue)initWithContextID:(id)a3;
- (_MRSystemAppPlaybackQueue)createRemotePlaybackQueue;
- (id)copyWithZone:(_NSZone *)a3;
- (void)getPlaybackQueueWithDestination:(id)a3 completion:(id)a4;
@end

@implementation MPCAssistantPlaybackQueue

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MPCAssistantPlaybackQueue *)self contextID];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  *(v4 + 8) = [(MPCAssistantPlaybackQueue *)self shouldOverrideManuallyCuratedQueue];
  *(v4 + 9) = [(MPCAssistantPlaybackQueue *)self shouldImmediatelyStartPlayback];
  v7 = [(MPCAssistantPlaybackQueue *)self siriRecommendationID];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  v9 = [(MPCAssistantPlaybackQueue *)self siriAssetInfo];
  v10 = *(v4 + 32);
  *(v4 + 32) = v9;

  v11 = [(MPCAssistantPlaybackQueue *)self featureName];
  v12 = *(v4 + 40);
  *(v4 + 40) = v11;

  v13 = [(MPCAssistantPlaybackQueue *)self queueGroupingID];
  v14 = *(v4 + 48);
  *(v4 + 48) = v13;

  v15 = [(MPCAssistantPlaybackQueue *)self siriWHAMetricsInfo];
  v16 = *(v4 + 56);
  *(v4 + 56) = v15;

  v17 = [(MPCAssistantPlaybackQueue *)self userIdentity];
  v18 = *(v4 + 64);
  *(v4 + 64) = v17;

  v19 = [(MPCAssistantPlaybackQueue *)self homeKitUserIdentifier];
  v20 = *(v4 + 72);
  *(v4 + 72) = v19;

  return v4;
}

- (_MRSystemAppPlaybackQueue)createRemotePlaybackQueue
{
  v3 = [MEMORY[0x1E696AF00] currentThread];
  v4 = [v3 threadDictionary];
  v5 = [v4 objectForKeyedSubscript:@"getPlaybackQueue-async"];
  v6 = [v5 BOOLValue];

  if (v6)
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

- (void)getPlaybackQueueWithDestination:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(MPCAssistantPlaybackQueue *)self createRemotePlaybackQueue];
  v7 = [MEMORY[0x1E696AF00] currentThread];
  v8 = [v7 threadDictionary];
  [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"getPlaybackQueue-async"];

  v11 = [MEMORY[0x1E6970900] queueWithMediaRemotePlaybackQueue:v6];
  v9 = [MEMORY[0x1E696AF00] currentThread];
  v10 = [v9 threadDictionary];
  [v10 setObject:0 forKeyedSubscript:@"getPlaybackQueue-async"];

  v5[2](v5, v11, 0);
}

- (MPCAssistantPlaybackQueue)initWithContextID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPCAssistantPlaybackQueue;
  v5 = [(MPCAssistantPlaybackQueue *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    contextID = v5->_contextID;
    v5->_contextID = v6;
  }

  return v5;
}

@end