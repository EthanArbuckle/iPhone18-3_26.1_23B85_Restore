@interface ChannelFeedResponsivenessTestCase
- (NSString)testName;
- (_TtC7NewsUI233ChannelFeedResponsivenessTestCase)init;
- (void)runTestWithContext:(id)a3 completion:(id)a4;
@end

@implementation ChannelFeedResponsivenessTestCase

- (_TtC7NewsUI233ChannelFeedResponsivenessTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7NewsUI233ChannelFeedResponsivenessTestCase_testName);
  *v4 = 0xD000000000000019;
  v4[1] = 0x8000000219CD8570;
  *(self + OBJC_IVAR____TtC7NewsUI233ChannelFeedResponsivenessTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI233ChannelFeedResponsivenessTestCase_aggregate) = 1;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ChannelFeedResponsivenessTestCase *)&v6 init];
}

- (NSString)testName
{

  v2 = sub_219BF53D4();

  return v2;
}

- (void)runTestWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_219789CF0(v8, sub_218967168, v7);
}

@end