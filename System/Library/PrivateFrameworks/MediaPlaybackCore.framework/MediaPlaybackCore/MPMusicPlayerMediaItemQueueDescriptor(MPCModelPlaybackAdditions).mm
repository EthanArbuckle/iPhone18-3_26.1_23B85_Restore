@interface MPMusicPlayerMediaItemQueueDescriptor(MPCModelPlaybackAdditions)
- (BOOL)matchesStartItem:()MPCModelPlaybackAdditions;
- (id)playbackContexts;
@end

@implementation MPMusicPlayerMediaItemQueueDescriptor(MPCModelPlaybackAdditions)

- (BOOL)matchesStartItem:()MPCModelPlaybackAdditions
{
  v4 = a3;
  v5 = [a1 startItem];

  if (v5)
  {
    v6 = [a1 startItem];
    v7 = [v6 persistentID];
    v8 = [v4 mediaItem];
    v9 = v7 == [v8 persistentID];
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
  v2 = [a1 query];
  v3 = objc_alloc_init(MEMORY[0x1E69706C8]);
  [v3 setLegacyMediaQuery:v2];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [a1 playActivityFeatureName];
  v6 = [v4 stringWithFormat:@"MediaItemQueueDescriptor-%@", v5];
  [v3 setLabel:v6];

  v7 = objc_alloc_init(MPCModelPlaybackContext);
  [(MPCModelPlaybackContext *)v7 setRequest:v3];
  v8 = [a1 startItem];
  if (v8)
  {
    v9 = [v2 mediaLibrary];
    v10 = [v9 uniqueIdentifier];

    v11 = [v8 persistentID];
    if ([v2 isPlaylistItemsQuery])
    {
      v11 = [v2 _playlistItemPersistentIDForItemPersistentID:v11];
    }

    v12 = objc_alloc(MEMORY[0x1E6970550]);
    v13 = [MEMORY[0x1E6970778] identityKind];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __84__MPMusicPlayerMediaItemQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke;
    v28[3] = &unk_1E8237900;
    v29 = v10;
    v30 = v11;
    v14 = v10;
    v15 = [v12 initWithSource:@"MPMusicPlayerQueueDescriptor" modelKind:v13 block:v28];
    [(MPCModelPlaybackContext *)v7 setStartItemIdentifiers:v15];
  }

  v16 = [a1 startTimes];
  [(MPCModelPlaybackContext *)v7 setStartTimeModifications:v16];

  v17 = [a1 endTimes];
  [(MPCModelPlaybackContext *)v7 setEndTimeModifications:v17];

  -[MPCModelPlaybackContext setShuffleType:](v7, "setShuffleType:", [a1 shuffleType]);
  -[MPCModelPlaybackContext setRepeatType:](v7, "setRepeatType:", [a1 repeatType]);
  v18 = [a1 playActivityFeatureName];
  [(MPCModelPlaybackContext *)v7 setPlayActivityFeatureName:v18];

  v19 = [a1 playActivityRecommendationData];
  [(MPCModelPlaybackContext *)v7 setPlayActivityRecommendationData:v19];

  v20 = [a1 playActivityQueueGroupingID];
  [(MPCModelPlaybackContext *)v7 setPlayActivityQueueGroupingID:v20];

  v21 = [(MPCModelPlaybackContext *)v7 playbackRequestEnvironment];
  v22 = [v21 mutableCopy];

  v23 = [objc_alloc(MEMORY[0x1E69E43B0]) initWithSystemApplicationType:0];
  v24 = [v23 clientIdentifier];
  [v22 setClientIdentifier:v24];

  v25 = [v23 clientVersion];
  [v22 setClientVersion:v25];

  if ([a1 isPrivate])
  {
    [(MPCModelPlaybackContext *)v7 setPrivateListeningOverride:MEMORY[0x1E695E118]];
  }

  [a1 _addRequestingBundleIdentifierToPlaybackRequestEnvironment:v22];
  [(MPCModelPlaybackContext *)v7 setPlaybackRequestEnvironment:v22];
  [(MPCModelPlaybackContext *)v7 setQueueDescriptor:a1];
  v31[0] = v7;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];

  return v26;
}

@end