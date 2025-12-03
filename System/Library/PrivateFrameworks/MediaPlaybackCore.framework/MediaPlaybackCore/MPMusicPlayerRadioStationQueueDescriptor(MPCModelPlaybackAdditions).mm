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
  identityKind = [MEMORY[0x1E6970758] identityKind];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __87__MPMusicPlayerRadioStationQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke;
  v19[3] = &unk_1E82389D8;
  v19[4] = self;
  v6 = [v4 initWithSource:@"MPMusicPlayerQueueDescriptor" modelKind:identityKind block:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __87__MPMusicPlayerRadioStationQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke_3;
  v18[3] = &unk_1E8237A68;
  v18[4] = self;
  v7 = [v3 initWithIdentifiers:v6 block:v18];
  [(MPCModelRadioPlaybackContext *)v2 setRadioStation:v7];

  playbackRequestEnvironment = [(MPCModelRadioPlaybackContext *)v2 playbackRequestEnvironment];
  v9 = [playbackRequestEnvironment mutableCopy];

  v10 = [objc_alloc(MEMORY[0x1E69E43B0]) initWithSystemApplicationType:0];
  clientIdentifier = [v10 clientIdentifier];
  [v9 setClientIdentifier:clientIdentifier];

  clientVersion = [v10 clientVersion];
  [v9 setClientVersion:clientVersion];

  if ([self isPrivate])
  {
    [(MPCModelRadioPlaybackContext *)v2 setPrivateListeningOverride:MEMORY[0x1E695E118]];
  }

  [self _addRequestingBundleIdentifierToPlaybackRequestEnvironment:v9];
  playActivityFeatureName = [self playActivityFeatureName];
  [(MPCModelRadioPlaybackContext *)v2 setPlayActivityFeatureName:playActivityFeatureName];

  playActivityRecommendationData = [self playActivityRecommendationData];
  [(MPCModelRadioPlaybackContext *)v2 setPlayActivityRecommendationData:playActivityRecommendationData];

  playActivityQueueGroupingID = [self playActivityQueueGroupingID];
  [(MPCModelRadioPlaybackContext *)v2 setPlayActivityQueueGroupingID:playActivityQueueGroupingID];

  [(MPCModelRadioPlaybackContext *)v2 setPlaybackRequestEnvironment:v9];
  [(MPCModelRadioPlaybackContext *)v2 setQueueDescriptor:self];
  v20[0] = v2;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];

  return v16;
}

@end