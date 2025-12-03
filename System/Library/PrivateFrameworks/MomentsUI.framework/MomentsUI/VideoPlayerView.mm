@interface VideoPlayerView
- (void)handleMuteUnmuteTap:(id)tap;
- (void)playerItemDidReachEndWithNotification:(id)notification;
@end

@implementation VideoPlayerView

- (void)playerItemDidReachEndWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  specialized VideoPlayerView.playerItemDidReachEnd(notification:)();
}

- (void)handleMuteUnmuteTap:(id)tap
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView);
  tapCopy = tap;
  selfCopy = self;
  layer = [v4 layer];
  objc_opt_self();
  player = [swift_dynamicCastObjCClassUnconditional() player];

  if (player && (v8 = [player isMuted], player, (v8 & 1) != 0))
  {
    VideoPlayerView.unmute()();
  }

  else
  {
    VideoPlayerView.mute()();
  }
}

@end