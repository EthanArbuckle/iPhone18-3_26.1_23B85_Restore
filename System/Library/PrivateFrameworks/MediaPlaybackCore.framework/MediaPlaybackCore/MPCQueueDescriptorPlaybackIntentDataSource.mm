@interface MPCQueueDescriptorPlaybackIntentDataSource
+ (BOOL)isValidInsertionIntent:(id)intent atPosition:(int)position forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers;
+ (BOOL)isValidReplaceIntent:(id)intent forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers;
- (void)_getPlaybackContextForIntent:(id)intent withCompletion:(id)completion;
@end

@implementation MPCQueueDescriptorPlaybackIntentDataSource

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
    v11 = [identifiersCopy containsObject:@"com.apple.mediaplayer.playbackcontext"];
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
    v10 = [identifiersCopy containsObject:@"com.apple.mediaplayer.playbackcontext"];
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
  tracklistToken = [intent tracklistToken];
  playbackContexts = [tracklistToken playbackContexts];
  firstObject = [playbackContexts firstObject];
  completionCopy[2](completionCopy, firstObject, 0);
}

@end