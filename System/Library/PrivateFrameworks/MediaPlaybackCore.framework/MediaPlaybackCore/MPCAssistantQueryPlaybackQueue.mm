@interface MPCAssistantQueryPlaybackQueue
+ (id)queryQueueWithContextID:(id)a3 query:(id)a4;
- (MPCAssistantQueryPlaybackQueue)initWithContextID:(id)a3 query:(id)a4;
- (id)description;
- (void)getPlaybackQueueWithDestination:(id)a3 completion:(id)a4;
@end

@implementation MPCAssistantQueryPlaybackQueue

- (void)getPlaybackQueueWithDestination:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E69706C8]);
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MPCAssistantQueryPlaybackQueue: %@", self->_query];
  [v8 setLabel:v9];

  [v8 setLegacyMediaQuery:self->_query forTransport:1];
  v10 = [MEMORY[0x1E6970778] identityKind];
  [v8 setItemKind:v10];

  if (self->_firstItem)
  {
    v11 = objc_alloc(MEMORY[0x1E6970550]);
    v12 = [MEMORY[0x1E6970778] identityKind];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __77__MPCAssistantQueryPlaybackQueue_getPlaybackQueueWithDestination_completion___block_invoke;
    v25[3] = &unk_1E82389D8;
    v25[4] = self;
    v13 = [v11 initWithSource:@"MPCAssistant" modelKind:v12 block:v25];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v8 playbackIntentWithStartItemIdentifiers:v13];
  v15 = v14;
  if (self->_shuffleType == 1)
  {
    [v14 setShuffleMode:1];
  }

  if (!_os_feature_enabled_impl())
  {
    goto LABEL_14;
  }

  v16 = [v6 outputDeviceUIDs];
  if (![v16 count])
  {
    if ([v6 origin])
    {
      [v6 origin];
      IsLocalOrigin = MROriginIsLocalOrigin();

      if (!IsLocalOrigin)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_14:
    v17 = 2;
    goto LABEL_15;
  }

LABEL_9:
  v17 = 3;
LABEL_15:
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77__MPCAssistantQueryPlaybackQueue_getPlaybackQueueWithDestination_completion___block_invoke_3;
  v21[3] = &unk_1E8236DF8;
  v23 = self;
  v24 = v7;
  v22 = v15;
  v19 = v15;
  v20 = v7;
  [v19 getRemotePlaybackQueueWithDestination:v17 completion:v21];
}

void __77__MPCAssistantQueryPlaybackQueue_getPlaybackQueueWithDestination_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 88);
  v4 = a2;
  v5 = [v3 mediaLibrary];
  v6 = [v5 uniqueIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__MPCAssistantQueryPlaybackQueue_getPlaybackQueueWithDestination_completion___block_invoke_2;
  v7[3] = &unk_1E8232408;
  v7[4] = *(a1 + 32);
  [v4 setLibraryIdentifiersWithDatabaseID:v6 block:v7];
}

void __77__MPCAssistantQueryPlaybackQueue_getPlaybackQueueWithDestination_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v13 = v5;
  if (a3)
  {
    v6 = *(*(a1 + 48) + 16);
LABEL_5:
    v6();
    goto LABEL_6;
  }

  if ([v5 _mediaRemotePlaybackQueue])
  {
    [*(a1 + 40) shouldOverrideManuallyCuratedQueue];
    MRSystemAppPlaybackQueueSetShouldOverrideManuallyCuratedQueue();
    [*(a1 + 40) shouldImmediatelyStartPlayback];
    MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
    v7 = [*(a1 + 40) siriRecommendationID];
    MRSystemAppPlaybackQueueSetSiriRecommendationIdentifier();

    v8 = [*(a1 + 40) siriAssetInfo];
    MRSystemAppPlaybackQueueSetSiriAssetInfo();

    v9 = [*(a1 + 40) featureName];
    MRSystemAppPlaybackQueueSetFeatureName();

    v10 = [*(a1 + 40) siriWHAMetricsInfo];
    MRSystemAppPlaybackQueueSetSiriWHAMetricsInfo();

    v6 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  v11 = *(a1 + 48);
  v12 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:66 debugDescription:{@"Failed to getRemotePlaybackQueue for intent: %@", *(a1 + 32)}];
  (*(v11 + 16))(v11, 0, v12);

LABEL_6:
}

void __77__MPCAssistantQueryPlaybackQueue_getPlaybackQueueWithDestination_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 88);
  v3 = a2;
  [v3 setPersistentID:{objc_msgSend(v2, "persistentID")}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MPCAssistantQueryPlaybackQueue;
  v4 = [(MPCAssistantQueryPlaybackQueue *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ query=%@", v4, self->_query];

  return v5;
}

- (MPCAssistantQueryPlaybackQueue)initWithContextID:(id)a3 query:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MPCAssistantQueryPlaybackQueue;
  v8 = [(MPCAssistantPlaybackQueue *)&v11 initWithContextID:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_query, a4);
  }

  return v9;
}

+ (id)queryQueueWithContextID:(id)a3 query:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithContextID:v7 query:v6];

  return v8;
}

@end