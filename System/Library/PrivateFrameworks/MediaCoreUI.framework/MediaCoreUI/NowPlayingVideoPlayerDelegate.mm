@interface NowPlayingVideoPlayerDelegate
- (_TtC11MediaCoreUI29NowPlayingVideoPlayerDelegate)init;
- (void)playerViewController:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)videoOutput:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)videoOutput:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4;
@end

@implementation NowPlayingVideoPlayerDelegate

- (void)playerViewController:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  [v5 setShowsPlaybackControls_];
  sub_1C5B9862C(1);

  swift_unknownObjectRelease();
}

- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1C5B97754(v6, a4);

  swift_unknownObjectRelease();
}

- (void)videoOutput:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = self;
  [a3 setShowsPlaybackControls_];
  sub_1C5B9862C(1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)videoOutput:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = self;
  sub_1C5B979C4(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (_TtC11MediaCoreUI29NowPlayingVideoPlayerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end