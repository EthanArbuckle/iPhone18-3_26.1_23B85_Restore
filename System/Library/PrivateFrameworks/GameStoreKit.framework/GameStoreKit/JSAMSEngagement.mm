@interface JSAMSEngagement
- (_TtC12GameStoreKit15JSAMSEngagement)init;
- (id)enqueueData:(id)data;
- (id)performRequest:(id)request;
@end

@implementation JSAMSEngagement

- (id)enqueueData:(id)data
{
  swift_getObjectType();
  sub_24E69A5C4(0, &qword_27F21C8C8);
  dataCopy = data;
  selfCopy = self;
  v7 = sub_24F92C448();
  v8 = sub_24F92C458();

  return v8;
}

- (id)performRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  v6 = sub_24F208278(requestCopy);

  return v6;
}

- (_TtC12GameStoreKit15JSAMSEngagement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end