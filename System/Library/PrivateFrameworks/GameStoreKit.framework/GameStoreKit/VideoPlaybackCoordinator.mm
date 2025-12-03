@interface VideoPlaybackCoordinator
- (_TtC12GameStoreKit24VideoPlaybackCoordinator)init;
- (void)didChangeAutoPlayVideoSetting:(id)setting;
- (void)videoAutoplayStatusDidChange:(id)change;
@end

@implementation VideoPlaybackCoordinator

- (void)videoAutoplayStatusDidChange:(id)change
{
  v4 = sub_24F91EB58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();
  selfCopy = self;
  sub_24EEC8F14();

  (*(v5 + 8))(v7, v4);
}

- (void)didChangeAutoPlayVideoSetting:(id)setting
{
  settingCopy = setting;
  selfCopy = self;
  sub_24EEC9224(settingCopy);
}

- (_TtC12GameStoreKit24VideoPlaybackCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end