@interface MPCModelPlaybackIntentDataSource
+ (BOOL)isValidInsertionIntent:(id)a3 atPosition:(int)a4 forDestination:(int64_t)a5 supportedQueueTypes:(unint64_t)a6 supportedCustomDataQueueIdentifiers:(id)a7;
+ (BOOL)isValidReplaceIntent:(id)a3 forDestination:(int64_t)a4 supportedQueueTypes:(unint64_t)a5 supportedCustomDataQueueIdentifiers:(id)a6;
- (void)_getPlaybackContextForIntent:(id)a3 withCompletion:(id)a4;
@end

@implementation MPCModelPlaybackIntentDataSource

+ (BOOL)isValidInsertionIntent:(id)a3 atPosition:(int)a4 forDestination:(int64_t)a5 supportedQueueTypes:(unint64_t)a6 supportedCustomDataQueueIdentifiers:(id)a7
{
  v7 = a6;
  v9 = a7;
  v10 = v9;
  if (a5 == 1)
  {
    v11 = 1;
  }

  else if (v7 < 0)
  {
    v11 = [v9 containsObject:@"com.apple.music.playbackqueue.tracklist"];
  }

  else
  {
    v11 = 0;
  }

  return v11;
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
    v10 = [v8 containsObject:@"com.apple.music.playbackqueue.tracklist"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_getPlaybackContextForIntent:(id)a3 withCompletion:(id)a4
{
  v22 = a3;
  v5 = a4;
  v6 = objc_alloc_init(MPCModelPlaybackContext);
  v7 = [v22 tracklistToken];
  v8 = [v7 request];
  [(MPCModelPlaybackContext *)v6 setRequest:v8 overrideEnvironment:1];

  v9 = [v7 startItemIdentifiers];
  [(MPCModelPlaybackContext *)v6 setStartItemIdentifiers:v9];

  v10 = [v22 startTimeModifications];
  [(MPCModelPlaybackContext *)v6 setStartTimeModifications:v10];

  v11 = [v22 endTimeModifications];
  [(MPCModelPlaybackContext *)v6 setEndTimeModifications:v11];

  v12 = [v22 shuffleMode];
  if (v12 >= 3)
  {
    v13 = 1000;
  }

  else
  {
    v13 = v12;
  }

  [(MPCModelPlaybackContext *)v6 setShuffleType:v13];
  v14 = [v22 repeatMode];
  if (v14 > 2)
  {
    v15 = 3;
  }

  else
  {
    v15 = qword_1C60454C0[v14];
  }

  [(MPCModelPlaybackContext *)v6 setRepeatType:v15];
  v16 = [v22 playActivityRecommendationData];
  [(MPCModelPlaybackContext *)v6 setPlayActivityRecommendationData:v16];

  v17 = [v22 playActivityFeatureName];
  [(MPCModelPlaybackContext *)v6 setPlayActivityFeatureName:v17];

  v18 = [v22 queueGroupingID];
  [(MPCModelPlaybackContext *)v6 setPlayActivityQueueGroupingID:v18];

  -[MPCModelPlaybackContext setActionAfterQueueLoad:](v6, "setActionAfterQueueLoad:", [v22 actionAfterQueueLoad]);
  v19 = [v22 siriAssetInfo];
  [(MPCModelPlaybackContext *)v6 setSiriAssetInfo:v19];

  v20 = [v22 siriReferenceIdentifier];
  [(MPCModelPlaybackContext *)v6 setSiriReferenceIdentifier:v20];

  v21 = [v22 delegateTokenB];
  [(MPCModelPlaybackContext *)v6 setDelegateTokenB:v21];

  v5[2](v5, v6, 0);
}

@end