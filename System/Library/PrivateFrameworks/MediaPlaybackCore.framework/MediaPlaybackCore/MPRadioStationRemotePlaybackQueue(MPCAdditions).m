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
  v8 = [MEMORY[0x1E6970758] identityKind];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __97__MPRadioStationRemotePlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke;
  v22[3] = &unk_1E8236268;
  v22[4] = a1;
  v22[5] = &v23;
  v9 = [v7 initWithSource:@"MRQueue-Radio" modelKind:v8 block:v22];
  v10 = [v6 initWithIdentifiers:v9 block:&__block_literal_global_151];

  if (v24[3])
  {
    v11 = objc_alloc_init(MPCModelRadioPlaybackContext);
    v12 = [a1 siriReferenceIdentifier];
    [(MPCModelRadioPlaybackContext *)v11 setSiriReferenceIdentifier:v12];

    [(MPCModelRadioPlaybackContext *)v11 setRadioStation:v10];
    if ([a1 isRequestingImmediatePlayback])
    {
      v13 = 20;
    }

    else
    {
      v13 = 0;
    }

    [(MPCModelRadioPlaybackContext *)v11 setActionAfterQueueLoad:v13];
    v14 = [a1 siriRecommendationIdentifier];
    v15 = [v14 dataUsingEncoding:4];
    [(MPCModelRadioPlaybackContext *)v11 setPlayActivityRecommendationData:v15];

    v16 = [a1 siriAssetInfo];
    [(MPCModelRadioPlaybackContext *)v11 setSiriAssetInfo:v16];

    v17 = [a1 featureName];
    [(MPCModelRadioPlaybackContext *)v11 setPlayActivityFeatureName:v17];

    v18 = [a1 queueGroupingID];
    [(MPCModelRadioPlaybackContext *)v11 setPlayActivityQueueGroupingID:v18];

    v19 = [a1 siriWHAMetricsInfo];
    [(MPCModelRadioPlaybackContext *)v11 setSiriWHAMetricsInfo:v19];

    v20 = [a1 privateListeningOverride];
    [(MPCModelRadioPlaybackContext *)v11 setPrivateListeningOverride:v20];

    v21 = [a1 userIdentity];
    [(MPCModelRadioPlaybackContext *)v11 setUserIdentity:v21];

    v5[2](v5, v11, 0);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:3000 debugDescription:{@"Missing both station string ID and station ID queue %@", a1}];
    (v5)[2](v5, 0, v11);
  }

  _Block_object_dispose(&v23, 8);
}

@end