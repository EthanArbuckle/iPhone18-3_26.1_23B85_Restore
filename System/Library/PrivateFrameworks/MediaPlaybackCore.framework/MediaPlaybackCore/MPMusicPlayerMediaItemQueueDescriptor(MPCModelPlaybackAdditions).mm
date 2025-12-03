@interface MPMusicPlayerMediaItemQueueDescriptor(MPCModelPlaybackAdditions)
- (BOOL)matchesStartItem:()MPCModelPlaybackAdditions;
- (id)playbackContexts;
@end

@implementation MPMusicPlayerMediaItemQueueDescriptor(MPCModelPlaybackAdditions)

- (BOOL)matchesStartItem:()MPCModelPlaybackAdditions
{
  v4 = a3;
  startItem = [self startItem];

  if (startItem)
  {
    startItem2 = [self startItem];
    persistentID = [startItem2 persistentID];
    mediaItem = [v4 mediaItem];
    v9 = persistentID == [mediaItem persistentID];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)playbackContexts
{
  v31[1] = *MEMORY[0x1E69E9840];
  query = [self query];
  v3 = objc_alloc_init(MEMORY[0x1E69706C8]);
  [v3 setLegacyMediaQuery:query];
  v4 = MEMORY[0x1E696AEC0];
  playActivityFeatureName = [self playActivityFeatureName];
  v6 = [v4 stringWithFormat:@"MediaItemQueueDescriptor-%@", playActivityFeatureName];
  [v3 setLabel:v6];

  v7 = objc_alloc_init(MPCModelPlaybackContext);
  [(MPCModelPlaybackContext *)v7 setRequest:v3];
  startItem = [self startItem];
  if (startItem)
  {
    mediaLibrary = [query mediaLibrary];
    uniqueIdentifier = [mediaLibrary uniqueIdentifier];

    persistentID = [startItem persistentID];
    if ([query isPlaylistItemsQuery])
    {
      persistentID = [query _playlistItemPersistentIDForItemPersistentID:persistentID];
    }

    v12 = objc_alloc(MEMORY[0x1E6970550]);
    identityKind = [MEMORY[0x1E6970778] identityKind];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __84__MPMusicPlayerMediaItemQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke;
    v28[3] = &unk_1E8237900;
    v29 = uniqueIdentifier;
    v30 = persistentID;
    v14 = uniqueIdentifier;
    v15 = [v12 initWithSource:@"MPMusicPlayerQueueDescriptor" modelKind:identityKind block:v28];
    [(MPCModelPlaybackContext *)v7 setStartItemIdentifiers:v15];
  }

  startTimes = [self startTimes];
  [(MPCModelPlaybackContext *)v7 setStartTimeModifications:startTimes];

  endTimes = [self endTimes];
  [(MPCModelPlaybackContext *)v7 setEndTimeModifications:endTimes];

  -[MPCModelPlaybackContext setShuffleType:](v7, "setShuffleType:", [self shuffleType]);
  -[MPCModelPlaybackContext setRepeatType:](v7, "setRepeatType:", [self repeatType]);
  playActivityFeatureName2 = [self playActivityFeatureName];
  [(MPCModelPlaybackContext *)v7 setPlayActivityFeatureName:playActivityFeatureName2];

  playActivityRecommendationData = [self playActivityRecommendationData];
  [(MPCModelPlaybackContext *)v7 setPlayActivityRecommendationData:playActivityRecommendationData];

  playActivityQueueGroupingID = [self playActivityQueueGroupingID];
  [(MPCModelPlaybackContext *)v7 setPlayActivityQueueGroupingID:playActivityQueueGroupingID];

  playbackRequestEnvironment = [(MPCModelPlaybackContext *)v7 playbackRequestEnvironment];
  v22 = [playbackRequestEnvironment mutableCopy];

  v23 = [objc_alloc(MEMORY[0x1E69E43B0]) initWithSystemApplicationType:0];
  clientIdentifier = [v23 clientIdentifier];
  [v22 setClientIdentifier:clientIdentifier];

  clientVersion = [v23 clientVersion];
  [v22 setClientVersion:clientVersion];

  if ([self isPrivate])
  {
    [(MPCModelPlaybackContext *)v7 setPrivateListeningOverride:MEMORY[0x1E695E118]];
  }

  [self _addRequestingBundleIdentifierToPlaybackRequestEnvironment:v22];
  [(MPCModelPlaybackContext *)v7 setPlaybackRequestEnvironment:v22];
  [(MPCModelPlaybackContext *)v7 setQueueDescriptor:self];
  v31[0] = v7;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];

  return v26;
}

@end