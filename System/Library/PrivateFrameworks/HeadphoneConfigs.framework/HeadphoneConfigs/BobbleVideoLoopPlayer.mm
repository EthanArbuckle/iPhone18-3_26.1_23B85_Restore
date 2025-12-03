@interface BobbleVideoLoopPlayer
- (_TtC16HeadphoneConfigs21BobbleVideoLoopPlayer)initWithCoder:(id)coder;
- (_TtC16HeadphoneConfigs21BobbleVideoLoopPlayer)initWithFrame:(CGRect)frame;
- (_TtC16HeadphoneConfigs21BobbleVideoLoopPlayer)initWithFrame:(CGRect)frame urlForResource:(id)resource;
- (void)load;
@end

@implementation BobbleVideoLoopPlayer

- (void)load
{
  selfCopy = self;
  sub_2511F3CD0();
}

- (_TtC16HeadphoneConfigs21BobbleVideoLoopPlayer)initWithCoder:(id)coder
{
  result = sub_251211C4C();
  __break(1u);
  return result;
}

- (_TtC16HeadphoneConfigs21BobbleVideoLoopPlayer)initWithFrame:(CGRect)frame urlForResource:(id)resource
{
  v4 = sub_251210D7C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_251210D5C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16HeadphoneConfigs21BobbleVideoLoopPlayer)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end