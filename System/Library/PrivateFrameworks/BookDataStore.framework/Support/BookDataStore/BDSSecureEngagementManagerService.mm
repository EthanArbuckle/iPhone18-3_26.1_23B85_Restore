@interface BDSSecureEngagementManagerService
+ (void)deleteCloudDataWithCompletion:(id)a3;
- (BDSSecureEngagementManagerService)init;
- (id)entityName;
- (void)currentCloudSyncVersions:(id)a3;
- (void)dealloc;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3;
- (void)engagementDataIncludingDeleted:(BOOL)a3 forKey:(id)a4 completion:(id)a5;
- (void)getEngagementDataChangesSince:(id)a3 completion:(id)a4;
- (void)hasSaltChangedWithCompletion:(id)a3;
- (void)setEngagementData:(id)a3 completion:(id)a4;
- (void)setEngagementDatas:(id)a3 completion:(id)a4;
- (void)signalSyncToCKForSyncManager:(id)a3;
- (void)syncManager:(id)a3 startSyncToCKWithCompletion:(id)a4;
- (void)syncManager:(id)a3 updateSyncGenerationFromCloudData:(id)a4 completion:(id)a5;
@end

@implementation BDSSecureEngagementManagerService

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR___BDSSecureEngagementManagerService_cloudKitController);
  v3 = self;
  v4 = [v2 privateCloudDatabaseController];
  v5 = OBJC_IVAR___BDSSecureEngagementManagerService_syncManager;
  [v4 removeObserver:*(&v3->super.isa + OBJC_IVAR___BDSSecureEngagementManagerService_syncManager)];

  [*(&v3->super.isa + v5) setDelegate:0];
  v6.receiver = v3;
  v6.super_class = type metadata accessor for CloudSecureEngagementManagerService();
  [(BDSSecureEngagementManagerService *)&v6 dealloc];
}

- (void)currentCloudSyncVersions:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
  v9[4] = sub_1000CAC8C;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000C775C;
  v9[3] = &unk_100245500;
  v7 = _Block_copy(v9);
  v8 = self;

  [v6 currentCloudSyncVersions:v7];

  _Block_release(v7);
}

- (void)hasSaltChangedWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000CACE8;
  *(v7 + 24) = v5;
  v10[4] = sub_1000CACDC;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10018C974;
  v10[3] = &unk_1002454B0;
  v8 = _Block_copy(v10);
  v9 = self;

  [v6 hasSaltChangedWithCompletion:v8];

  _Block_release(v8);
}

- (void)setEngagementData:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1000C7A14(a3, sub_1000CACE4, v7);
  swift_unknownObjectRelease();
}

- (void)setEngagementDatas:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_100084528(&qword_10026FF08, &qword_1001F1D78);
  v6 = sub_1001C5F08();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  sub_1000C7DD0(v6, sub_1000CAC84, v7);
}

- (void)engagementDataIncludingDeleted:(BOOL)a3 forKey:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_1001C6018();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = self;
  sub_1000C8388(a3, v8, v10, sub_1000CAC7C, v11);
}

- (void)getEngagementDataChangesSince:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *(&self->super.isa + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
  sub_100088714(0, &qword_10026FE98, &off_10023DD60);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000CABD4;
  *(v10 + 24) = v7;
  v14[4] = sub_1000CABDC;
  v14[5] = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1000C8B78;
  v14[3] = &unk_100245320;
  v11 = _Block_copy(v14);
  v12 = a3;
  v13 = self;

  [v8 getChangesSince:v12 forEntityClass:ObjCClassFromMetadata completion:v11];

  _Block_release(v11);
}

- (BDSSecureEngagementManagerService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = *(&self->super.isa + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
    v8 = sub_1000CACE8;
    v12[4] = sub_1000CACE8;
    v12[5] = v6;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10018CA5C;
    v12[3] = &unk_100245168;
    v9 = _Block_copy(v12);
    v10 = self;
  }

  else
  {
    v7 = *(&self->super.isa + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
    v11 = self;
    v9 = 0;
    v8 = 0;
  }

  [v7 dissociateCloudDataFromSyncWithCompletion:v9];
  sub_1000044D8(v8);
  _Block_release(v9);
}

+ (void)deleteCloudDataWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v3 = sub_1000CACE8;
  }

  else
  {
    v4 = 0;
  }

  sub_1000C9A10(v3, v4);

  sub_1000044D8(v3);
}

- (id)entityName
{
  sub_100088714(0, &qword_10026FE98, &off_10023DD60);
  sub_100084528(&qword_10026FEA0, &qword_1001F1D48);
  sub_1001C6078();
  v2 = sub_1001C5FE8();

  return v2;
}

- (void)syncManager:(id)a3 startSyncToCKWithCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1000C9B98(v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)signalSyncToCKForSyncManager:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000C9D08();
}

- (void)syncManager:(id)a3 updateSyncGenerationFromCloudData:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  sub_100084528(&qword_100271010, &unk_1001F1D60);
  v8 = sub_1001C6298();
  _Block_copy(v7);
  v9 = a3;
  v10 = self;
  sub_1000CA2D8(v8, v10, v7);
  _Block_release(v7);
  _Block_release(v7);
}

@end