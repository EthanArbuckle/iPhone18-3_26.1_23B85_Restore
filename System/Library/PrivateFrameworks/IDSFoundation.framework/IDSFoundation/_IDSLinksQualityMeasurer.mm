@interface _IDSLinksQualityMeasurer
- (_TtC13IDSFoundation24_IDSLinksQualityMeasurer)init;
- (void)didReceiveStatsResponseWithID:(NSString *)a3 linkID:(char)a4 completionHandler:(id)a5;
- (void)didReceiveStatsTestPacketWithPayload:(NSData *)a3 linkID:(char)a4 completionHandler:(id)a5;
- (void)didSendStatsRequestWithID:(NSString *)a3 linkID:(char)a4 completionHandler:(id)a5;
@end

@implementation _IDSLinksQualityMeasurer

- (void)didReceiveStatsTestPacketWithPayload:(NSData *)a3 linkID:(char)a4 completionHandler:(id)a5
{
  v9 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_1A7E226D0();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A7E49CF0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1A7E49CF8;
  v17[5] = v16;
  v18 = a3;

  sub_1A7DE5274(0, 0, v12, &unk_1A7E49D00, v17);
}

- (void)didSendStatsRequestWithID:(NSString *)a3 linkID:(char)a4 completionHandler:(id)a5
{
  v9 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_1A7E226D0();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A7E49CD0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1A7E49CD8;
  v17[5] = v16;
  v18 = a3;

  sub_1A7DE5274(0, 0, v12, &unk_1A7E49CE0, v17);
}

- (void)didReceiveStatsResponseWithID:(NSString *)a3 linkID:(char)a4 completionHandler:(id)a5
{
  v9 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_1A7E226D0();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A7E49CB0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1A7E49CB8;
  v17[5] = v16;
  v18 = a3;

  sub_1A7DE5274(0, 0, v12, &unk_1A7E49CC0, v17);
}

- (_TtC13IDSFoundation24_IDSLinksQualityMeasurer)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end