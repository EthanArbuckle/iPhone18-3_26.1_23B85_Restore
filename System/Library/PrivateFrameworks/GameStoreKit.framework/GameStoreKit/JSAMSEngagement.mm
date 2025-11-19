@interface JSAMSEngagement
- (_TtC12GameStoreKit15JSAMSEngagement)init;
- (id)enqueueData:(id)a3;
- (id)performRequest:(id)a3;
@end

@implementation JSAMSEngagement

- (id)enqueueData:(id)a3
{
  swift_getObjectType();
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v5 = a3;
  v6 = self;
  v7 = sub_24F92C448();
  v8 = sub_24F92C458();

  return v8;
}

- (id)performRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_24F208278(v4);

  return v6;
}

- (_TtC12GameStoreKit15JSAMSEngagement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end