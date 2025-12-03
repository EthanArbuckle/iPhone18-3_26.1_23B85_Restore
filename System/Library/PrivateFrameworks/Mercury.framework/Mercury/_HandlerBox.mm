@interface _HandlerBox
- (_TtC7MercuryP33_2B1830E49151A2D290BADAC81D16B73411_HandlerBox)init;
- (void)invoke:(BOOL)invoke :(void *)a4;
@end

@implementation _HandlerBox

- (void)invoke:(BOOL)invoke :(void *)a4
{
  invokeCopy = invoke;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC7MercuryP33_2B1830E49151A2D290BADAC81D16B73411_HandlerBox_handler);
  selfCopy = self;

  v5(invokeCopy);
}

- (_TtC7MercuryP33_2B1830E49151A2D290BADAC81D16B73411_HandlerBox)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end