@interface AudioAutoClosePlayerHandler
- (_TtC7NewsUI227AudioAutoClosePlayerHandler)init;
- (void)sessionDidDisconnect:(id)a3;
@end

@implementation AudioAutoClosePlayerHandler

- (_TtC7NewsUI227AudioAutoClosePlayerHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sessionDidDisconnect:(id)a3
{
  sub_2186C66AC();
  v4 = self;
  v5 = sub_219BF6F74();
  sub_219BF6214();
  sub_219BE5314();

  *(swift_allocObject() + 16) = v4;
  v6 = v4;
  sub_219BE3494();
}

@end