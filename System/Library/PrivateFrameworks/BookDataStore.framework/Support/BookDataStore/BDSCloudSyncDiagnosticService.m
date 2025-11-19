@interface BDSCloudSyncDiagnosticService
- (BDSCloudSyncDiagnosticService)init;
- (BDSCloudSyncDiagnosticService)initWithCloudKitController:(id)a3 entityServiceProviders:(id)a4;
- (id)clearSyncMetadata;
- (id)stateForLog;
- (void)detachWithCompletionHandler:(id)a3;
- (void)diagnosticInfoWithCompletionHandler:(id)a3;
- (void)fetchRemoteChangesWithCompletionHandler:(id)a3;
- (void)findLocalIdDupesWithCompletionHandler:(id)a3;
@end

@implementation BDSCloudSyncDiagnosticService

- (BDSCloudSyncDiagnosticService)initWithCloudKitController:(id)a3 entityServiceProviders:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_100084528(&qword_100271858, &qword_1001F44E8);
  v7 = sub_1001C6298();
  v8 = a3;
  sub_1001C5138();
  *(&self->super.isa + OBJC_IVAR___BDSCloudSyncDiagnosticService_cloudKitController) = v8;
  *(&self->super.isa + OBJC_IVAR___BDSCloudSyncDiagnosticService_entityServiceProviders) = v7;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(BDSCloudSyncDiagnosticService *)&v10 init];
}

- (void)detachWithCompletionHandler:(id)a3
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
  v12[4] = &unk_1001F44D0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F44D8;
  v13[5] = v12;
  v14 = self;
  sub_100118770(0, 0, v8, &unk_1001F44E0, v13);
}

- (void)diagnosticInfoWithCompletionHandler:(id)a3
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
  v12[4] = &unk_1001F44B0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F44B8;
  v13[5] = v12;
  v14 = self;
  sub_100118770(0, 0, v8, &unk_1001F44C0, v13);
}

- (void)findLocalIdDupesWithCompletionHandler:(id)a3
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
  v12[4] = &unk_1001F4490;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F4498;
  v13[5] = v12;
  v14 = self;
  sub_100118770(0, 0, v8, &unk_1001F44A0, v13);
}

- (id)stateForLog
{
  v2 = self;
  v3 = sub_100115DF0(1);
  sub_100084528(&qword_1002717A0, &qword_1001F43E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0670;
  strcpy((inited + 32), "diagnosticInfo");
  *(inited + 47) = -18;
  v5 = [v3 stateForLog];
  v6 = sub_1001C5F08();

  *(inited + 72) = sub_100084528(&qword_1002717A8, &qword_1001F43E8);
  *(inited + 48) = v6;
  sub_100119458(inited);
  swift_setDeallocating();
  sub_10008875C(inited + 32, &qword_1002717B0, &qword_1001F43F0);

  v7.super.isa = sub_1001C5EF8().super.isa;

  return v7.super.isa;
}

- (id)clearSyncMetadata
{
  v2 = _s14bookdatastored26CloudSyncDiagnosticServiceC05clearC8MetadataSo7NSErrorCSgyF_0();

  return v2;
}

- (void)fetchRemoteChangesWithCompletionHandler:(id)a3
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
  v12[4] = &unk_1001F4448;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F0DB0;
  v13[5] = v12;
  v14 = self;
  sub_100118770(0, 0, v8, &unk_1001F33E0, v13);
}

- (BDSCloudSyncDiagnosticService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end