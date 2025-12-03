@interface FPRemoteResolver
+ (BOOL)canResolveURL:(id)l;
- (void)URLForItemID:(id)d reply:(id)reply;
- (void)connectionInfoWithReply:(id)reply;
@end

@implementation FPRemoteResolver

+ (BOOL)canResolveURL:(id)l
{
  v3 = sub_24ABC92F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ABC92D8();
  v8 = _sSo16FPRemoteResolverC012FileProviderB0E10canResolve3urlSb10Foundation3URLV_tFZ_0();
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

- (void)connectionInfoWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  v7 = sub_24ABC0A20();
  v9[4] = sub_24ABC14A8;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24ABC0BA8;
  v9[3] = &block_descriptor_23;
  v8 = _Block_copy(v9);

  [v7 connectionInfoWithReply_];

  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)URLForItemID:(id)d reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  dCopy = d;
  selfCopy = self;
  v10 = sub_24ABC0A20();
  v12[4] = sub_24ABC14A0;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_24ABC0E38;
  v12[3] = &block_descriptor_17;
  v11 = _Block_copy(v12);

  [v10 URLForItemID:dCopy reply:v11];

  _Block_release(v11);
  swift_unknownObjectRelease();
}

@end