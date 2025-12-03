@interface GSKVideoPlayerView.Coordinator
- (_TtCV12GameStoreKit18GSKVideoPlayerView11Coordinator)init;
- (void)playerViewController:(id)controller willBeginFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
- (void)playerViewController:(id)controller willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
@end

@implementation GSKVideoPlayerView.Coordinator

- (void)playerViewController:(id)controller willBeginFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  v7 = swift_allocObject();
  *(v7 + 16) = controller;
  *(v7 + 24) = self;
  v13[4] = sub_24E87CF8C;
  v13[5] = v7;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24E87CA8C;
  v13[3] = &block_descriptor_17_0;
  v8 = _Block_copy(v13);
  controllerCopy = controller;
  selfCopy = self;
  v11 = controllerCopy;
  v12 = selfCopy;
  swift_unknownObjectRetain();

  [coordinator animateAlongsideTransition:0 completion:v8];

  swift_unknownObjectRelease();
  _Block_release(v8);
}

- (void)playerViewController:(id)controller willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_24E87CC0C(controllerCopy, coordinator);

  swift_unknownObjectRelease();
}

- (_TtCV12GameStoreKit18GSKVideoPlayerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end