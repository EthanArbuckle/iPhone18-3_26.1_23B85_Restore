@interface MPRadioStationRemotePlaybackQueue(MPCAdditions)
- (void)getMusicPlaybackContextWithOptions:()MPCAdditions completion:;
@end

@implementation MPRadioStationRemotePlaybackQueue(MPCAdditions)

- (void)getMusicPlaybackContextWithOptions:()MPCAdditions completion:
{
  v5 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v6 = objc_alloc(MEMORY[0x1E6970750]);
  v7 = objc_alloc(MEMORY[0x1E6970550]);
  identityKind = [MEMORY[0x1E6970758] identityKind];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __97__MPRadioStationRemotePlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke;
  v22[3] = &unk_1E8236268;
  v22[4] = self;
  v22[5] = &v23;
  v9 = [v7 initWithSource:@"MRQueue-Radio" modelKind:identityKind block:v22];
  v10 = [v6 initWithIdentifiers:v9 block:&__block_literal_global_151];

  if (v24[3])
  {
    v11 = objc_alloc_init(MPCModelRadioPlaybackContext);
    siriReferenceIdentifier = [self siriReferenceIdentifier];
    [(MPCModelRadioPlaybackContext *)v11 setSiriReferenceIdentifier:siriReferenceIdentifier];

    [(MPCModelRadioPlaybackContext *)v11 setRadioStation:v10];
    if ([self isRequestingImmediatePlayback])
    {
      v13 = 20;
    }

    else
    {
      v13 = 0;
    }

    [(MPCModelRadioPlaybackContext *)v11 setActionAfterQueueLoad:v13];
    siriRecommendationIdentifier = [self siriRecommendationIdentifier];
    v15 = [siriRecommendationIdentifier dataUsingEncoding:4];
    [(MPCModelRadioPlaybackContext *)v11 setPlayActivityRecommendationData:v15];

    siriAssetInfo = [self siriAssetInfo];
    [(MPCModelRadioPlaybackContext *)v11 setSiriAssetInfo:siriAssetInfo];

    featureName = [self featureName];
    [(MPCModelRadioPlaybackContext *)v11 setPlayActivityFeatureName:featureName];

    queueGroupingID = [self queueGroupingID];
    [(MPCModelRadioPlaybackContext *)v11 setPlayActivityQueueGroupingID:queueGroupingID];

    siriWHAMetricsInfo = [self siriWHAMetricsInfo];
    [(MPCModelRadioPlaybackContext *)v11 setSiriWHAMetricsInfo:siriWHAMetricsInfo];

    privateListeningOverride = [self privateListeningOverride];
    [(MPCModelRadioPlaybackContext *)v11 setPrivateListeningOverride:privateListeningOverride];

    userIdentity = [self userIdentity];
    [(MPCModelRadioPlaybackContext *)v11 setUserIdentity:userIdentity];

    v5[2](v5, v11, 0);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:3000 debugDescription:{@"Missing both station string ID and station ID queue %@", self}];
    (v5)[2](v5, 0, v11);
  }

  _Block_object_dispose(&v23, 8);
}

@end