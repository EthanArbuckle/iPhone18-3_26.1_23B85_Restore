@interface _MPCPlaybackContextPlaybackIntentDataSource
- (void)_getPlaybackContextForIntent:(id)intent withCompletion:(id)completion;
@end

@implementation _MPCPlaybackContextPlaybackIntentDataSource

- (void)_getPlaybackContextForIntent:(id)intent withCompletion:(id)completion
{
  completionCopy = completion;
  tracklistToken = [intent tracklistToken];
  (*(completion + 2))(completionCopy, tracklistToken, 0);
}

@end