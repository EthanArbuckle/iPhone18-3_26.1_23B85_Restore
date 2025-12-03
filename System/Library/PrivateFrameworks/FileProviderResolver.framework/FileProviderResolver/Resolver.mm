@interface Resolver
- (_TtC20FileProviderResolver8Resolver)init;
- (void)URLForItemID:(id)d reply:(id)reply;
- (void)connectionInfoWithReply:(id)reply;
- (void)itemIDForURL:(id)l allowReadOnlyLocations:(BOOL)locations reply:(id)reply;
@end

@implementation Resolver

- (void)connectionInfoWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  _Block_copy(v4);
  selfCopy = self;
  sub_24ABC6F80(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)URLForItemID:(id)d reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  dCopy = d;
  selfCopy = self;
  sub_24ABC7358(dCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)itemIDForURL:(id)l allowReadOnlyLocations:(BOOL)locations reply:(id)reply
{
  locationsCopy = locations;
  v8 = sub_24ABC92F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(reply);
  sub_24ABC92D8();
  _Block_copy(v13);
  selfCopy = self;
  sub_24ABC843C(v12, locationsCopy, v13);
  _Block_release(v13);
  _Block_release(v13);

  (*(v9 + 8))(v12, v8);
}

- (_TtC20FileProviderResolver8Resolver)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Resolver();
  return [(Resolver *)&v3 init];
}

@end