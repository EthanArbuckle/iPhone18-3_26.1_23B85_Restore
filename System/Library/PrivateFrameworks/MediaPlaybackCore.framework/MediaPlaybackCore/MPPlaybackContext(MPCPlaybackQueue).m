@interface MPPlaybackContext(MPCPlaybackQueue)
- (void)getRemotePlaybackQueueRepresentationWithCompletion:()MPCPlaybackQueue;
@end

@implementation MPPlaybackContext(MPCPlaybackQueue)

- (void)getRemotePlaybackQueueRepresentationWithCompletion:()MPCPlaybackQueue
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  v6 = [v4 errorWithDomain:@"MPCError" code:0 userInfo:0];
  (a3)[2](v5, 0, v6);
}

@end