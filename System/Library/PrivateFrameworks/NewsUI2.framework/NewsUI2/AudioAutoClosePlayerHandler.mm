@interface AudioAutoClosePlayerHandler
- (_TtC7NewsUI227AudioAutoClosePlayerHandler)init;
- (void)sessionDidDisconnect:(id)disconnect;
@end

@implementation AudioAutoClosePlayerHandler

- (_TtC7NewsUI227AudioAutoClosePlayerHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sessionDidDisconnect:(id)disconnect
{
  sub_2186C66AC();
  selfCopy = self;
  v5 = sub_219BF6F74();
  sub_219BF6214();
  sub_219BE5314();

  *(swift_allocObject() + 16) = selfCopy;
  v6 = selfCopy;
  sub_219BE3494();
}

@end