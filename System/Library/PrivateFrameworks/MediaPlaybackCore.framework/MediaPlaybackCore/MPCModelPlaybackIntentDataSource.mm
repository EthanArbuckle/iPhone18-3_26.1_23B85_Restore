@interface MPCModelPlaybackIntentDataSource
+ (BOOL)isValidInsertionIntent:(id)intent atPosition:(int)position forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers;
+ (BOOL)isValidReplaceIntent:(id)intent forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers;
- (void)_getPlaybackContextForIntent:(id)intent withCompletion:(id)completion;
@end

@implementation MPCModelPlaybackIntentDataSource

+ (BOOL)isValidInsertionIntent:(id)intent atPosition:(int)position forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers
{
  typesCopy = types;
  identifiersCopy = identifiers;
  v10 = identifiersCopy;
  if (destination == 1)
  {
    v11 = 1;
  }

  else if (typesCopy < 0)
  {
    v11 = [identifiersCopy containsObject:@"com.apple.music.playbackqueue.tracklist"];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)isValidReplaceIntent:(id)intent forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers
{
  typesCopy = types;
  identifiersCopy = identifiers;
  v9 = identifiersCopy;
  if (destination == 1)
  {
    v10 = 1;
  }

  else if (typesCopy < 0)
  {
    v10 = [identifiersCopy containsObject:@"com.apple.music.playbackqueue.tracklist"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_getPlaybackContextForIntent:(id)intent withCompletion:(id)completion
{
  intentCopy = intent;
  completionCopy = completion;
  v6 = objc_alloc_init(MPCModelPlaybackContext);
  tracklistToken = [intentCopy tracklistToken];
  request = [tracklistToken request];
  [(MPCModelPlaybackContext *)v6 setRequest:request overrideEnvironment:1];

  startItemIdentifiers = [tracklistToken startItemIdentifiers];
  [(MPCModelPlaybackContext *)v6 setStartItemIdentifiers:startItemIdentifiers];

  startTimeModifications = [intentCopy startTimeModifications];
  [(MPCModelPlaybackContext *)v6 setStartTimeModifications:startTimeModifications];

  endTimeModifications = [intentCopy endTimeModifications];
  [(MPCModelPlaybackContext *)v6 setEndTimeModifications:endTimeModifications];

  shuffleMode = [intentCopy shuffleMode];
  if (shuffleMode >= 3)
  {
    v13 = 1000;
  }

  else
  {
    v13 = shuffleMode;
  }

  [(MPCModelPlaybackContext *)v6 setShuffleType:v13];
  repeatMode = [intentCopy repeatMode];
  if (repeatMode > 2)
  {
    v15 = 3;
  }

  else
  {
    v15 = qword_1C60454C0[repeatMode];
  }

  [(MPCModelPlaybackContext *)v6 setRepeatType:v15];
  playActivityRecommendationData = [intentCopy playActivityRecommendationData];
  [(MPCModelPlaybackContext *)v6 setPlayActivityRecommendationData:playActivityRecommendationData];

  playActivityFeatureName = [intentCopy playActivityFeatureName];
  [(MPCModelPlaybackContext *)v6 setPlayActivityFeatureName:playActivityFeatureName];

  queueGroupingID = [intentCopy queueGroupingID];
  [(MPCModelPlaybackContext *)v6 setPlayActivityQueueGroupingID:queueGroupingID];

  -[MPCModelPlaybackContext setActionAfterQueueLoad:](v6, "setActionAfterQueueLoad:", [intentCopy actionAfterQueueLoad]);
  siriAssetInfo = [intentCopy siriAssetInfo];
  [(MPCModelPlaybackContext *)v6 setSiriAssetInfo:siriAssetInfo];

  siriReferenceIdentifier = [intentCopy siriReferenceIdentifier];
  [(MPCModelPlaybackContext *)v6 setSiriReferenceIdentifier:siriReferenceIdentifier];

  delegateTokenB = [intentCopy delegateTokenB];
  [(MPCModelPlaybackContext *)v6 setDelegateTokenB:delegateTokenB];

  completionCopy[2](completionCopy, v6, 0);
}

@end