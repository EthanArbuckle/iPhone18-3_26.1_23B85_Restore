@interface NowPlayingVideoPlayerDelegate
- (_TtC11MediaCoreUI29NowPlayingVideoPlayerDelegate)init;
- (void)playerViewController:(id)controller willBeginFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
- (void)playerViewController:(id)controller willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
- (void)videoOutput:(id)output willBeginFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
- (void)videoOutput:(id)output willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
@end

@implementation NowPlayingVideoPlayerDelegate

- (void)playerViewController:(id)controller willBeginFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  [controllerCopy setShowsPlaybackControls_];
  sub_1C5B9862C(1);

  swift_unknownObjectRelease();
}

- (void)playerViewController:(id)controller willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5B97754(controllerCopy, coordinator);

  swift_unknownObjectRelease();
}

- (void)videoOutput:(id)output willBeginFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  [output setShowsPlaybackControls_];
  sub_1C5B9862C(1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)videoOutput:(id)output willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5B979C4(output, coordinator);
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