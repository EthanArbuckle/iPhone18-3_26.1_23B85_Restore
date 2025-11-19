@interface Resolver
- (_TtC20FileProviderResolver8Resolver)init;
- (void)URLForItemID:(id)a3 reply:(id)a4;
- (void)connectionInfoWithReply:(id)a3;
- (void)itemIDForURL:(id)a3 allowReadOnlyLocations:(BOOL)a4 reply:(id)a5;
@end

@implementation Resolver

- (void)connectionInfoWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_24ABC6F80(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)URLForItemID:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_24ABC7358(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)itemIDForURL:(id)a3 allowReadOnlyLocations:(BOOL)a4 reply:(id)a5
{
  v6 = a4;
  v8 = sub_24ABC92F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  sub_24ABC92D8();
  _Block_copy(v13);
  v14 = self;
  sub_24ABC843C(v12, v6, v13);
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