@interface MPCRadioPlaybackIntentDataSource
+ (BOOL)isValidInsertionIntent:(id)intent atPosition:(int)position forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers;
+ (BOOL)isValidReplaceIntent:(id)intent forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers;
- (void)_getPlaybackContextForIntent:(id)intent withCompletion:(id)completion;
@end

@implementation MPCRadioPlaybackIntentDataSource

+ (BOOL)isValidInsertionIntent:(id)intent atPosition:(int)position forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers
{
  typesCopy = types;
  identifiersCopy = identifiers;
  v11 = identifiersCopy;
  if (position != 2)
  {
    if (destination == 1)
    {
      v12 = 1;
      goto LABEL_7;
    }

    if (typesCopy < 0)
    {
      v12 = [identifiersCopy containsObject:@"com.apple.music.playbackqueue.radio"];
      goto LABEL_7;
    }
  }

  v12 = 0;
LABEL_7:

  return v12;
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
    v10 = [identifiersCopy containsObject:@"com.apple.music.playbackqueue.radio"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_getPlaybackContextForIntent:(id)intent withCompletion:(id)completion
{
  completionCopy = completion;
  intentCopy = intent;
  tracklistToken = [intentCopy tracklistToken];
  v7 = objc_alloc_init(MPCModelRadioPlaybackContext);
  -[MPCModelRadioPlaybackContext setContinueListeningStation:](v7, "setContinueListeningStation:", [tracklistToken continueListeningStation]);
  nowPlayingContentReference = [tracklistToken nowPlayingContentReference];
  [(MPCModelRadioPlaybackContext *)v7 setNowPlayingContentReference:nowPlayingContentReference];

  seedContentReference = [tracklistToken seedContentReference];
  [(MPCModelRadioPlaybackContext *)v7 setSeedContentReference:seedContentReference];

  radioStationURL = [tracklistToken radioStationURL];
  [(MPCModelRadioPlaybackContext *)v7 setStationURL:radioStationURL];

  radioStation = [tracklistToken radioStation];
  [(MPCModelRadioPlaybackContext *)v7 setRadioStation:radioStation];

  playActivityRecommendationData = [intentCopy playActivityRecommendationData];
  [(MPCModelRadioPlaybackContext *)v7 setPlayActivityRecommendationData:playActivityRecommendationData];

  playActivityFeatureName = [intentCopy playActivityFeatureName];
  [(MPCModelRadioPlaybackContext *)v7 setPlayActivityFeatureName:playActivityFeatureName];

  queueGroupingID = [intentCopy queueGroupingID];
  [(MPCModelRadioPlaybackContext *)v7 setPlayActivityQueueGroupingID:queueGroupingID];

  -[MPCModelRadioPlaybackContext setActionAfterQueueLoad:](v7, "setActionAfterQueueLoad:", [intentCopy actionAfterQueueLoad]);
  siriAssetInfo = [intentCopy siriAssetInfo];
  [(MPCModelRadioPlaybackContext *)v7 setSiriAssetInfo:siriAssetInfo];

  siriReferenceIdentifier = [intentCopy siriReferenceIdentifier];
  [(MPCModelRadioPlaybackContext *)v7 setSiriReferenceIdentifier:siriReferenceIdentifier];

  delegateTokenB = [intentCopy delegateTokenB];

  [(MPCModelRadioPlaybackContext *)v7 setDelegateTokenB:delegateTokenB];
  completionCopy[2](completionCopy, v7, 0);
}

@end