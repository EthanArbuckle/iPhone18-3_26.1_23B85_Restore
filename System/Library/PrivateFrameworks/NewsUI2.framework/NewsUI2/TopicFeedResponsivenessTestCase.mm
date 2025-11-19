@interface TopicFeedResponsivenessTestCase
- (NSString)testName;
- (_TtC7NewsUI231TopicFeedResponsivenessTestCase)init;
- (void)runTestWithContext:(id)a3 completion:(id)a4;
@end

@implementation TopicFeedResponsivenessTestCase

- (_TtC7NewsUI231TopicFeedResponsivenessTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7NewsUI231TopicFeedResponsivenessTestCase_testName);
  *v4 = 0xD000000000000017;
  v4[1] = 0x8000000219CD88E0;
  *(self + OBJC_IVAR____TtC7NewsUI231TopicFeedResponsivenessTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI231TopicFeedResponsivenessTestCase_aggregate) = 1;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(TopicFeedResponsivenessTestCase *)&v6 init];
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
  sub_2196D71EC(v8, sub_218967168, v7);
}

@end