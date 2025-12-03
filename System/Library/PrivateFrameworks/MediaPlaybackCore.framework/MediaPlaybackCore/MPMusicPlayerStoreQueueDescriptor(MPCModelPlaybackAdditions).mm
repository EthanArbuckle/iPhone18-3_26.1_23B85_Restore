@interface MPMusicPlayerStoreQueueDescriptor(MPCModelPlaybackAdditions)
- (id)playbackContexts;
- (uint64_t)matchesStartItem:()MPCModelPlaybackAdditions;
@end

@implementation MPMusicPlayerStoreQueueDescriptor(MPCModelPlaybackAdditions)

- (uint64_t)matchesStartItem:()MPCModelPlaybackAdditions
{
  v4 = a3;
  startItemID = [self startItemID];

  if (startItemID)
  {
    storeItemID = [v4 storeItemID];
    startItemID2 = [self startItemID];
    v8 = [storeItemID isEqual:startItemID2];
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
  storeIDs = [self storeIDs];
  [(MPCModelStorePlaybackItemsRequest *)v2 setStoreIDs:storeIDs];
  [(MPCModelStorePlaybackItemsRequest *)v2 setClientIdentifier:@"com.apple.Music"];
  v4 = objc_alloc_init(MPCModelPlaybackContext);
  startItemID = [self startItemID];
  if (startItemID)
  {
    v6 = objc_alloc(MEMORY[0x1E6970550]);
    identityKind = [MEMORY[0x1E6970778] identityKind];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __80__MPMusicPlayerStoreQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke;
    v21[3] = &unk_1E82389D8;
    v22 = startItemID;
    v8 = [v6 initWithSource:@"MPMusicPlayerQueueDescriptor" modelKind:identityKind block:v21];

    [(MPCModelPlaybackContext *)v4 setStartItemIdentifiers:v8];
  }

  [(MPCModelPlaybackContext *)v4 setRequest:v2];
  startTimes = [self startTimes];
  [(MPCModelPlaybackContext *)v4 setStartTimeModifications:startTimes];

  endTimes = [self endTimes];
  [(MPCModelPlaybackContext *)v4 setEndTimeModifications:endTimes];

  -[MPCModelPlaybackContext setShuffleType:](v4, "setShuffleType:", [self shuffleType]);
  -[MPCModelPlaybackContext setRepeatType:](v4, "setRepeatType:", [self repeatType]);
  playActivityFeatureName = [self playActivityFeatureName];
  [(MPCModelPlaybackContext *)v4 setPlayActivityFeatureName:playActivityFeatureName];

  playActivityRecommendationData = [self playActivityRecommendationData];
  [(MPCModelPlaybackContext *)v4 setPlayActivityRecommendationData:playActivityRecommendationData];

  playActivityQueueGroupingID = [self playActivityQueueGroupingID];
  [(MPCModelPlaybackContext *)v4 setPlayActivityQueueGroupingID:playActivityQueueGroupingID];

  playbackRequestEnvironment = [(MPCModelPlaybackContext *)v4 playbackRequestEnvironment];
  v15 = [playbackRequestEnvironment mutableCopy];

  v16 = [objc_alloc(MEMORY[0x1E69E43B0]) initWithSystemApplicationType:0];
  clientIdentifier = [v16 clientIdentifier];
  [v15 setClientIdentifier:clientIdentifier];

  clientVersion = [v16 clientVersion];
  [v15 setClientVersion:clientVersion];

  if ([self isPrivate])
  {
    [(MPCModelPlaybackContext *)v4 setPrivateListeningOverride:MEMORY[0x1E695E118]];
  }

  [self _addRequestingBundleIdentifierToPlaybackRequestEnvironment:v15];
  [(MPCModelPlaybackContext *)v4 setPlaybackRequestEnvironment:v15];
  [(MPCModelPlaybackContext *)v4 setQueueDescriptor:self];
  v23[0] = v4;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];

  return v19;
}

@end