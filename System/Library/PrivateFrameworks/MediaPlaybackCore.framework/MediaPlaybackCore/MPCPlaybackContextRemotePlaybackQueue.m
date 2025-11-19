@interface MPCPlaybackContextRemotePlaybackQueue
- (MPCPlaybackContextRemotePlaybackQueue)initWithPlaybackContext:(id)a3;
@end

@implementation MPCPlaybackContextRemotePlaybackQueue

- (MPCPlaybackContextRemotePlaybackQueue)initWithPlaybackContext:(id)a3
{
  v5 = a3;
  v6 = [(MPCPlaybackContextRemotePlaybackQueue *)self initWithMediaRemotePlaybackQueue:0 options:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playbackContext, a3);
  }

  return v7;
}

@end