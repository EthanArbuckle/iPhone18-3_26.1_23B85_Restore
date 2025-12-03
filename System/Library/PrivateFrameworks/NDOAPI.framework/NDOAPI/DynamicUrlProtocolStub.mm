@interface DynamicUrlProtocolStub
+ (BOOL)canInitWithRequest:(id)request;
+ (id)canonicalRequestForRequest:(id)request;
- (_TtC6NDOAPI22DynamicUrlProtocolStub)initWithRequest:(id)request cachedResponse:(id)response client:(id)client;
- (void)startLoading;
@end

@implementation DynamicUrlProtocolStub

- (_TtC6NDOAPI22DynamicUrlProtocolStub)initWithRequest:(id)request cachedResponse:(id)response client:(id)client
{
  v7 = sub_22DEC4694();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEC4674();
  responseCopy = response;
  swift_unknownObjectRetain();
  v12 = sub_22DDFC870(v10, response, client);

  swift_unknownObjectRelease();
  return v12;
}

+ (BOOL)canInitWithRequest:(id)request
{
  v3 = sub_22DEC4694();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEC4674();
  v8 = sub_22DDFCB48();
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

+ (id)canonicalRequestForRequest:(id)request
{
  v3 = sub_22DEC4694();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEC4674();
  v8 = sub_22DEC4664();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (void)startLoading
{
  selfCopy = self;
  sub_22DDFBE10();
}

@end