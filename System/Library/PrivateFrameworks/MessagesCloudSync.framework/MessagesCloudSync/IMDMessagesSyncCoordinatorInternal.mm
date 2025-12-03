@interface IMDMessagesSyncCoordinatorInternal
+ (id)initiateSyncFor:(id)for delegate:(id)delegate forceRunNow:(BOOL)now error:(id *)error;
+ (id)readServerCountsFromDefaults;
+ (void)clearSyncStoreWhenSafeWithCompletionHandler:(id)handler;
+ (void)fetchSyncStoreCountsWithCompletion:(id)completion;
+ (void)registerWithNotifier:(id)notifier;
+ (void)registerWithStore:(id)store asType:(int64_t)type;
- (IMDMessagesSyncCoordinatorInternal)init;
@end

@implementation IMDMessagesSyncCoordinatorInternal

+ (void)clearSyncStoreWhenSafeWithCompletionHandler:(id)handler
{
  v5 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_22BA1030C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22BA18588;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22BA18590;
  v14[5] = v13;
  sub_22BA04B0C(0, 0, v9, &unk_22BA18598, v14);
}

+ (void)registerWithStore:(id)store asType:(int64_t)type
{
  v6 = qword_281416508;
  swift_unknownObjectRetain();
  if (v6 != -1)
  {
    swift_once();
  }

  [swift_unknownObjectRetain() registerRecordStoreWithType:type store:store];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

+ (void)registerWithNotifier:(id)notifier
{
  v3 = qword_281416500;
  swift_unknownObjectRetain();
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectRetain();
  MEMORY[0x231899830](v4);
  if (*((qword_28141AE00 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_28141AE00 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v5 = *((qword_28141AE00 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22BA1022C();
  }

  sub_22BA1026C();
  swift_endAccess();
  swift_unknownObjectRelease();
}

+ (id)initiateSyncFor:(id)for delegate:(id)delegate forceRunNow:(BOOL)now error:(id *)error
{
  v8 = sub_22BA0FFFC();
  v10 = v9;
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  static SyncCoordinator.initiateSync(for:delegate:forceRunNow:)(v8, v10, delegate, now);

  swift_unknownObjectRelease();
  v11 = sub_22BA0FF5C();

  return v11;
}

+ (id)readServerCountsFromDefaults
{
  _s17MessagesCloudSync0C11CoordinatorC28readServerCountsFromDefaultsSDySSSDySSs5Int64VGGyFZ_0();
  sub_22B9349C8(&unk_27D8D57C0, &qword_22BA18578);
  v2 = sub_22BA0FF5C();

  return v2;
}

+ (void)fetchSyncStoreCountsWithCompletion:(id)completion
{
  v4 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v12 = sub_22BA1030C();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = ObjCClassMetadata;
  v13[5] = sub_22B9BF424;
  v13[6] = v10;
  sub_22B9B5500(0, 0, v8, &unk_22BA18570, v13);
}

- (IMDMessagesSyncCoordinatorInternal)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SyncCoordinator();
  return [(IMDMessagesSyncCoordinatorInternal *)&v3 init];
}

@end