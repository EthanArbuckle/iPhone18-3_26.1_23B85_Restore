@interface GSKVideoPlayerView.Coordinator
- (_TtCV12GameStoreKit18GSKVideoPlayerView11Coordinator)init;
- (void)playerViewController:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4;
@end

@implementation GSKVideoPlayerView.Coordinator

- (void)playerViewController:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = self;
  v13[4] = sub_24E87CF8C;
  v13[5] = v7;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24E87CA8C;
  v13[3] = &block_descriptor_17_0;
  v8 = _Block_copy(v13);
  v9 = a3;
  v10 = self;
  v11 = v9;
  v12 = v10;
  swift_unknownObjectRetain();

  [a4 animateAlongsideTransition:0 completion:v8];

  swift_unknownObjectRelease();
  _Block_release(v8);
}

- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_24E87CC0C(v6, a4);

  swift_unknownObjectRelease();
}

- (_TtCV12GameStoreKit18GSKVideoPlayerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end