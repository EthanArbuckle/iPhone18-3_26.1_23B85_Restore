@interface MPCPodcastsPlaybackIntentDataSource
+ (BOOL)isValidInsertionIntent:(id)a3 atPosition:(int)a4 forDestination:(int64_t)a5 supportedQueueTypes:(unint64_t)a6 supportedCustomDataQueueIdentifiers:(id)a7;
+ (BOOL)isValidReplaceIntent:(id)a3 forDestination:(int64_t)a4 supportedQueueTypes:(unint64_t)a5 supportedCustomDataQueueIdentifiers:(id)a6;
- (void)getRemotePlaybackQueueFromIntent:(id)a3 destination:(int64_t)a4 completion:(id)a5;
- (void)getSharedListeningTracklistFromIntent:(id)a3 withCompletion:(id)a4;
@end

@implementation MPCPodcastsPlaybackIntentDataSource

+ (BOOL)isValidReplaceIntent:(id)a3 forDestination:(int64_t)a4 supportedQueueTypes:(unint64_t)a5 supportedCustomDataQueueIdentifiers:(id)a6
{
  sub_1C6016D50();

  return 1;
}

+ (BOOL)isValidInsertionIntent:(id)a3 atPosition:(int)a4 forDestination:(int64_t)a5 supportedQueueTypes:(unint64_t)a6 supportedCustomDataQueueIdentifiers:(id)a7
{
  sub_1C6016D50();

  return 1;
}

- (void)getRemotePlaybackQueueFromIntent:(id)a3 destination:(int64_t)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = self;
  sub_1C5E42A80(v9, a4, v10, v8);
  _Block_release(v8);
}

- (void)getSharedListeningTracklistFromIntent:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1C5E43198(v7, v8, v6);
  _Block_release(v6);
}

@end