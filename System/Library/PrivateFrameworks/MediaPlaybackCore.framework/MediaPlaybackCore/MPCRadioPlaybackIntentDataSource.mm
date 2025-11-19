@interface MPCRadioPlaybackIntentDataSource
+ (BOOL)isValidInsertionIntent:(id)a3 atPosition:(int)a4 forDestination:(int64_t)a5 supportedQueueTypes:(unint64_t)a6 supportedCustomDataQueueIdentifiers:(id)a7;
+ (BOOL)isValidReplaceIntent:(id)a3 forDestination:(int64_t)a4 supportedQueueTypes:(unint64_t)a5 supportedCustomDataQueueIdentifiers:(id)a6;
- (void)_getPlaybackContextForIntent:(id)a3 withCompletion:(id)a4;
@end

@implementation MPCRadioPlaybackIntentDataSource

+ (BOOL)isValidInsertionIntent:(id)a3 atPosition:(int)a4 forDestination:(int64_t)a5 supportedQueueTypes:(unint64_t)a6 supportedCustomDataQueueIdentifiers:(id)a7
{
  v7 = a6;
  v10 = a7;
  v11 = v10;
  if (a4 != 2)
  {
    if (a5 == 1)
    {
      v12 = 1;
      goto LABEL_7;
    }

    if (v7 < 0)
    {
      v12 = [v10 containsObject:@"com.apple.music.playbackqueue.radio"];
      goto LABEL_7;
    }
  }

  v12 = 0;
LABEL_7:

  return v12;
}

+ (BOOL)isValidReplaceIntent:(id)a3 forDestination:(int64_t)a4 supportedQueueTypes:(unint64_t)a5 supportedCustomDataQueueIdentifiers:(id)a6
{
  v6 = a5;
  v8 = a6;
  v9 = v8;
  if (a4 == 1)
  {
    v10 = 1;
  }

  else if (v6 < 0)
  {
    v10 = [v8 containsObject:@"com.apple.music.playbackqueue.radio"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_getPlaybackContextForIntent:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v18 = [v6 tracklistToken];
  v7 = objc_alloc_init(MPCModelRadioPlaybackContext);
  -[MPCModelRadioPlaybackContext setContinueListeningStation:](v7, "setContinueListeningStation:", [v18 continueListeningStation]);
  v8 = [v18 nowPlayingContentReference];
  [(MPCModelRadioPlaybackContext *)v7 setNowPlayingContentReference:v8];

  v9 = [v18 seedContentReference];
  [(MPCModelRadioPlaybackContext *)v7 setSeedContentReference:v9];

  v10 = [v18 radioStationURL];
  [(MPCModelRadioPlaybackContext *)v7 setStationURL:v10];

  v11 = [v18 radioStation];
  [(MPCModelRadioPlaybackContext *)v7 setRadioStation:v11];

  v12 = [v6 playActivityRecommendationData];
  [(MPCModelRadioPlaybackContext *)v7 setPlayActivityRecommendationData:v12];

  v13 = [v6 playActivityFeatureName];
  [(MPCModelRadioPlaybackContext *)v7 setPlayActivityFeatureName:v13];

  v14 = [v6 queueGroupingID];
  [(MPCModelRadioPlaybackContext *)v7 setPlayActivityQueueGroupingID:v14];

  -[MPCModelRadioPlaybackContext setActionAfterQueueLoad:](v7, "setActionAfterQueueLoad:", [v6 actionAfterQueueLoad]);
  v15 = [v6 siriAssetInfo];
  [(MPCModelRadioPlaybackContext *)v7 setSiriAssetInfo:v15];

  v16 = [v6 siriReferenceIdentifier];
  [(MPCModelRadioPlaybackContext *)v7 setSiriReferenceIdentifier:v16];

  v17 = [v6 delegateTokenB];

  [(MPCModelRadioPlaybackContext *)v7 setDelegateTokenB:v17];
  v5[2](v5, v7, 0);
}

@end