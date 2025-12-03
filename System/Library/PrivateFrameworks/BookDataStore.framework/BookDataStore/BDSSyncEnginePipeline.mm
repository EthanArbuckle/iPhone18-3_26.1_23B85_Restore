@interface BDSSyncEnginePipeline
- (_TtC13BookDataStore21BDSSyncEnginePipeline)init;
- (_TtC13BookDataStore21BDSSyncEnginePipeline)initWithRecordType:(id)type zoneName:(id)name delegate:(id)delegate dataMapper:(id)mapper;
- (id)privacyDelegate;
- (void)fetchRecordForRecordID:(CKRecordID *)d completion:(id)completion;
- (void)saltUpdatedWithSaltVersionIdentifier:(id)identifier;
- (void)signalSyncToCK;
- (void)startSyncToCKWithCompletion:(id)completion;
@end

@implementation BDSSyncEnginePipeline

- (_TtC13BookDataStore21BDSSyncEnginePipeline)initWithRecordType:(id)type zoneName:(id)name delegate:(id)delegate dataMapper:(id)mapper
{
  v8 = sub_1E470AF1C();
  v10 = v9;
  v11 = sub_1E470AF1C();
  v13 = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1E46F48C4(v8, v10, v11, v13, delegate, mapper);
}

- (void)saltUpdatedWithSaltVersionIdentifier:(id)identifier
{
  selfCopy = self;
  sub_1E46F7598();
}

- (void)signalSyncToCK
{
  selfCopy = self;
  sub_1E46F7598();
}

- (void)startSyncToCKWithCompletion:(id)completion
{
  v5 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_1E470B14C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1E4720550;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1E4720558;
  v14[5] = v13;
  selfCopy = self;
  sub_1E46FF094(0, 0, v9, &unk_1E4720560, v14);
}

- (void)fetchRecordForRecordID:(CKRecordID *)d completion:(id)completion
{
  v7 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_1E470B14C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1E4720508;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1E471B9C0;
  v16[5] = v15;
  dCopy = d;
  selfCopy = self;
  sub_1E46FF094(0, 0, v11, &unk_1E471B9C8, v16);
}

- (id)privacyDelegate
{
  if (qword_1EE2AE3E8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE2AE3F0;

  return v3;
}

- (_TtC13BookDataStore21BDSSyncEnginePipeline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end