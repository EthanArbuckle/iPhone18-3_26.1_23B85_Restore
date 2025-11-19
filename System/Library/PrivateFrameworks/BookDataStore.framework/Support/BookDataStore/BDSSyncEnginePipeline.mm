@interface BDSSyncEnginePipeline
- (_TtC14bookdatastored21BDSSyncEnginePipeline)init;
- (_TtC14bookdatastored21BDSSyncEnginePipeline)initWithRecordType:(id)a3 zoneName:(id)a4 delegate:(id)a5 dataMapper:(id)a6;
- (id)privacyDelegate;
- (void)fetchRecordForRecordID:(CKRecordID *)a3 completion:(id)a4;
- (void)saltUpdatedWithSaltVersionIdentifier:(id)a3;
- (void)signalSyncToCK;
- (void)startSyncToCKWithCompletion:(id)a3;
@end

@implementation BDSSyncEnginePipeline

- (_TtC14bookdatastored21BDSSyncEnginePipeline)initWithRecordType:(id)a3 zoneName:(id)a4 delegate:(id)a5 dataMapper:(id)a6
{
  v8 = sub_1001C6018();
  v10 = v9;
  v11 = sub_1001C6018();
  v13 = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1000F5F04(v8, v10, v11, v13, a5, a6);
}

- (void)saltUpdatedWithSaltVersionIdentifier:(id)a3
{
  v3 = self;
  BDSSyncEnginePipeline.signalSyncToCK()();
}

- (void)signalSyncToCK
{
  v2 = self;
  BDSSyncEnginePipeline.signalSyncToCK()();
}

- (void)startSyncToCKWithCompletion:(id)a3
{
  v5 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1001C6348();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F36D0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F36D8;
  v13[5] = v12;
  v14 = self;
  sub_100118770(0, 0, v8, &unk_1001F36E0, v13);
}

- (void)fetchRecordForRecordID:(CKRecordID *)a3 completion:(id)a4
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1001C6348();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001F36C0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001F0DB0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100118770(0, 0, v10, &unk_1001F33E0, v15);
}

- (id)privacyDelegate
{
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v3 = static BDSSyncEngine.shared;

  return v3;
}

- (_TtC14bookdatastored21BDSSyncEnginePipeline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end