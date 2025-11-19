@interface MPMusicPlayerRadioStationQueueDescriptor(MPCModelPlaybackAdditions)
- (id)playbackContexts;
@end

@implementation MPMusicPlayerRadioStationQueueDescriptor(MPCModelPlaybackAdditions)

- (id)playbackContexts
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MPCModelRadioPlaybackContext);
  v3 = objc_alloc(MEMORY[0x1E6970750]);
  v4 = objc_alloc(MEMORY[0x1E6970550]);
  v5 = [MEMORY[0x1E6970758] identityKind];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __87__MPMusicPlayerRadioStationQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke;
  v19[3] = &unk_1E82389D8;
  v19[4] = a1;
  v6 = [v4 initWithSource:@"MPMusicPlayerQueueDescriptor" modelKind:v5 block:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __87__MPMusicPlayerRadioStationQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke_3;
  v18[3] = &unk_1E8237A68;
  v18[4] = a1;
  v7 = [v3 initWithIdentifiers:v6 block:v18];
  [(MPCModelRadioPlaybackContext *)v2 setRadioStation:v7];

  v8 = [(MPCModelRadioPlaybackContext *)v2 playbackRequestEnvironment];
  v9 = [v8 mutableCopy];

  v10 = [objc_alloc(MEMORY[0x1E69E43B0]) initWithSystemApplicationType:0];
  v11 = [v10 clientIdentifier];
  [v9 setClientIdentifier:v11];

  v12 = [v10 clientVersion];
  [v9 setClientVersion:v12];

  if ([a1 isPrivate])
  {
    [(MPCModelRadioPlaybackContext *)v2 setPrivateListeningOverride:MEMORY[0x1E695E118]];
  }

  [a1 _addRequestingBundleIdentifierToPlaybackRequestEnvironment:v9];
  v13 = [a1 playActivityFeatureName];
  [(MPCModelRadioPlaybackContext *)v2 setPlayActivityFeatureName:v13];

  v14 = [a1 playActivityRecommendationData];
  [(MPCModelRadioPlaybackContext *)v2 setPlayActivityRecommendationData:v14];

  v15 = [a1 playActivityQueueGroupingID];
  [(MPCModelRadioPlaybackContext *)v2 setPlayActivityQueueGroupingID:v15];

  [(MPCModelRadioPlaybackContext *)v2 setPlaybackRequestEnvironment:v9];
  [(MPCModelRadioPlaybackContext *)v2 setQueueDescriptor:a1];
  v20[0] = v2;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];

  return v16;
}

@end