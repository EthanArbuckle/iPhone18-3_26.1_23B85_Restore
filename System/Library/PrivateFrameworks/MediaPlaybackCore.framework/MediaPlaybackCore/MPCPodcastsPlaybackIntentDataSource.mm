@interface MPCPodcastsPlaybackIntentDataSource
+ (BOOL)isValidInsertionIntent:(id)intent atPosition:(int)position forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers;
+ (BOOL)isValidReplaceIntent:(id)intent forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers;
- (void)getRemotePlaybackQueueFromIntent:(id)intent destination:(int64_t)destination completion:(id)completion;
- (void)getSharedListeningTracklistFromIntent:(id)intent withCompletion:(id)completion;
@end

@implementation MPCPodcastsPlaybackIntentDataSource

+ (BOOL)isValidReplaceIntent:(id)intent forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers
{
  sub_1C6016D50();

  return 1;
}

+ (BOOL)isValidInsertionIntent:(id)intent atPosition:(int)position forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers
{
  sub_1C6016D50();

  return 1;
}

- (void)getRemotePlaybackQueueFromIntent:(id)intent destination:(int64_t)destination completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  intentCopy = intent;
  selfCopy = self;
  sub_1C5E42A80(intentCopy, destination, selfCopy, v8);
  _Block_release(v8);
}

- (void)getSharedListeningTracklistFromIntent:(id)intent withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  intentCopy = intent;
  selfCopy = self;
  sub_1C5E43198(intentCopy, selfCopy, v6);
  _Block_release(v6);
}

@end