@interface VideoPlayer
- (_TtC12GameStoreKit11VideoPlayer)init;
- (_TtC12GameStoreKit11VideoPlayer)initWithPlayerItem:(id)item;
- (_TtC12GameStoreKit11VideoPlayer)initWithURL:(id)l;
- (void)pause;
- (void)play;
- (void)replaceCurrentItemWithPlayerItem:(id)item;
@end

@implementation VideoPlayer

- (void)play
{
  selfCopy = self;
  sub_24EA9C900();
}

- (void)pause
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
  swift_beginAccess();
  *(&self->super.super.isa + v3) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for VideoPlayer();
  [(VideoPlayer *)&v4 pause];
}

- (void)replaceCurrentItemWithPlayerItem:(id)item
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for VideoPlayer();
  itemCopy = item;
  v5 = v6.receiver;
  [(VideoPlayer *)&v6 replaceCurrentItemWithPlayerItem:itemCopy];
  sub_24ED744D0(v5);
}

- (_TtC12GameStoreKit11VideoPlayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKit11VideoPlayer)initWithURL:(id)l
{
  v3 = sub_24F91F4A8();
  MEMORY[0x28223BE20](v3 - 8);
  sub_24F91F428();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKit11VideoPlayer)initWithPlayerItem:(id)item
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end