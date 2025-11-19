@interface MPCQueueDescriptorPlaybackIntentDataSource
+ (BOOL)isValidInsertionIntent:(id)a3 atPosition:(int)a4 forDestination:(int64_t)a5 supportedQueueTypes:(unint64_t)a6 supportedCustomDataQueueIdentifiers:(id)a7;
+ (BOOL)isValidReplaceIntent:(id)a3 forDestination:(int64_t)a4 supportedQueueTypes:(unint64_t)a5 supportedCustomDataQueueIdentifiers:(id)a6;
- (void)_getPlaybackContextForIntent:(id)a3 withCompletion:(id)a4;
@end

@implementation MPCQueueDescriptorPlaybackIntentDataSource

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
    v11 = [v9 containsObject:@"com.apple.mediaplayer.playbackcontext"];
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
    v10 = [v8 containsObject:@"com.apple.mediaplayer.playbackcontext"];
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
  v8 = [a3 tracklistToken];
  v6 = [v8 playbackContexts];
  v7 = [v6 firstObject];
  v5[2](v5, v7, 0);
}

@end