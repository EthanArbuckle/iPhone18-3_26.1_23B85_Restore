@interface CloseANFTestCase
- (NSString)testName;
- (_TtC7NewsUI216CloseANFTestCase)init;
- (void)runTestWithContext:(id)a3 completion:(id)a4;
@end

@implementation CloseANFTestCase

- (_TtC7NewsUI216CloseANFTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7NewsUI216CloseANFTestCase_testName);
  *v4 = 0x464E4165736F6C43;
  v4[1] = 0xEF656C6369747241;
  *(self + OBJC_IVAR____TtC7NewsUI216CloseANFTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI216CloseANFTestCase_aggregate) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(CloseANFTestCase *)&v6 init];
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
  sub_21923329C(v8, sub_218967168, v7);
}

@end