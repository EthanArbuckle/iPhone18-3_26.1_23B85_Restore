@interface VideoPlayerView
- (void)handleMuteUnmuteTap:(id)a3;
- (void)playerItemDidReachEndWithNotification:(id)a3;
@end

@implementation VideoPlayerView

- (void)playerItemDidReachEndWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized VideoPlayerView.playerItemDidReachEnd(notification:)();
}

- (void)handleMuteUnmuteTap:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView);
  v5 = a3;
  v9 = self;
  v6 = [v4 layer];
  objc_opt_self();
  v7 = [swift_dynamicCastObjCClassUnconditional() player];

  if (v7 && (v8 = [v7 isMuted], v7, (v8 & 1) != 0))
  {
    VideoPlayerView.unmute()();
  }

  else
  {
    VideoPlayerView.mute()();
  }
}

@end