@interface _MPCPlaybackContextPlaybackIntentDataSource
- (void)_getPlaybackContextForIntent:(id)a3 withCompletion:(id)a4;
@end

@implementation _MPCPlaybackContextPlaybackIntentDataSource

- (void)_getPlaybackContextForIntent:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [a3 tracklistToken];
  (*(a4 + 2))(v6, v7, 0);
}

@end