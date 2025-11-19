@interface MPMusicPlayerStoreQueueDescriptor(MPCModelPlaybackAdditions)
- (id)playbackContexts;
- (uint64_t)matchesStartItem:()MPCModelPlaybackAdditions;
@end

@implementation MPMusicPlayerStoreQueueDescriptor(MPCModelPlaybackAdditions)

- (uint64_t)matchesStartItem:()MPCModelPlaybackAdditions
{
  v4 = a3;
  v5 = [a1 startItemID];

  if (v5)
  {
    v6 = [v4 storeItemID];
    v7 = [a1 startItemID];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)playbackContexts
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MPCModelStorePlaybackItemsRequest);
  v3 = [a1 storeIDs];
  [(MPCModelStorePlaybackItemsRequest *)v2 setStoreIDs:v3];
  [(MPCModelStorePlaybackItemsRequest *)v2 setClientIdentifier:@"com.apple.Music"];
  v4 = objc_alloc_init(MPCModelPlaybackContext);
  v5 = [a1 startItemID];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E6970550]);
    v7 = [MEMORY[0x1E6970778] identityKind];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __80__MPMusicPlayerStoreQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke;
    v21[3] = &unk_1E82389D8;
    v22 = v5;
    v8 = [v6 initWithSource:@"MPMusicPlayerQueueDescriptor" modelKind:v7 block:v21];

    [(MPCModelPlaybackContext *)v4 setStartItemIdentifiers:v8];
  }

  [(MPCModelPlaybackContext *)v4 setRequest:v2];
  v9 = [a1 startTimes];
  [(MPCModelPlaybackContext *)v4 setStartTimeModifications:v9];

  v10 = [a1 endTimes];
  [(MPCModelPlaybackContext *)v4 setEndTimeModifications:v10];

  -[MPCModelPlaybackContext setShuffleType:](v4, "setShuffleType:", [a1 shuffleType]);
  -[MPCModelPlaybackContext setRepeatType:](v4, "setRepeatType:", [a1 repeatType]);
  v11 = [a1 playActivityFeatureName];
  [(MPCModelPlaybackContext *)v4 setPlayActivityFeatureName:v11];

  v12 = [a1 playActivityRecommendationData];
  [(MPCModelPlaybackContext *)v4 setPlayActivityRecommendationData:v12];

  v13 = [a1 playActivityQueueGroupingID];
  [(MPCModelPlaybackContext *)v4 setPlayActivityQueueGroupingID:v13];

  v14 = [(MPCModelPlaybackContext *)v4 playbackRequestEnvironment];
  v15 = [v14 mutableCopy];

  v16 = [objc_alloc(MEMORY[0x1E69E43B0]) initWithSystemApplicationType:0];
  v17 = [v16 clientIdentifier];
  [v15 setClientIdentifier:v17];

  v18 = [v16 clientVersion];
  [v15 setClientVersion:v18];

  if ([a1 isPrivate])
  {
    [(MPCModelPlaybackContext *)v4 setPrivateListeningOverride:MEMORY[0x1E695E118]];
  }

  [a1 _addRequestingBundleIdentifierToPlaybackRequestEnvironment:v15];
  [(MPCModelPlaybackContext *)v4 setPlaybackRequestEnvironment:v15];
  [(MPCModelPlaybackContext *)v4 setQueueDescriptor:a1];
  v23[0] = v4;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];

  return v19;
}

@end