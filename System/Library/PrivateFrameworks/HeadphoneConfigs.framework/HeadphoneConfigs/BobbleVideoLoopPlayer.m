@interface BobbleVideoLoopPlayer
- (_TtC16HeadphoneConfigs21BobbleVideoLoopPlayer)initWithCoder:(id)a3;
- (_TtC16HeadphoneConfigs21BobbleVideoLoopPlayer)initWithFrame:(CGRect)a3;
- (_TtC16HeadphoneConfigs21BobbleVideoLoopPlayer)initWithFrame:(CGRect)a3 urlForResource:(id)a4;
- (void)load;
@end

@implementation BobbleVideoLoopPlayer

- (void)load
{
  v2 = self;
  sub_2511F3CD0();
}

- (_TtC16HeadphoneConfigs21BobbleVideoLoopPlayer)initWithCoder:(id)a3
{
  result = sub_251211C4C();
  __break(1u);
  return result;
}

- (_TtC16HeadphoneConfigs21BobbleVideoLoopPlayer)initWithFrame:(CGRect)a3 urlForResource:(id)a4
{
  v4 = sub_251210D7C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_251210D5C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16HeadphoneConfigs21BobbleVideoLoopPlayer)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end