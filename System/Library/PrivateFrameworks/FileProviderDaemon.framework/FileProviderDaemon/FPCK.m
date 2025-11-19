@interface FPCK
+ (BOOL)dumpDatabaseAt:(id)a3 fullDump:(BOOL)a4 writeTo:(id)a5 error:(id *)a6;
- (BOOL)checker:(id)a3 handleItem:(int)a4 itemStatus:(id *)a5 under:(id)a6 brokenInvariants:(unint64_t)a7;
- (BOOL)checker:(id)a3 handleLockedItemAtPath:(id)a4 handle:(const fpfs_item_handle *)a5;
- (BOOL)launchFromURLs:(id)a3 options:(unint64_t)a4 contentBarrier:(int64_t)a5 error:(id *)a6 resultHandler:(id)a7;
- (NSDictionary)telemetryReport;
- (_TtC18FileProviderDaemon4FPCK)init;
- (_TtC18FileProviderDaemon4FPCK)initWithDatabasesBackupsPaths:(id)a3 volumeRole:(unsigned int)a4 providerDomainID:(id)a5 domainUserInfo:(id)a6 reason:(unint64_t)a7 usingFPFS:(BOOL)a8 iCDPackageDetection:(BOOL)a9 useShouldPause:(BOOL)a10 shouldPause:(id)aBlock sendDiagnostics:(id)a12 saveCheckpoint:(id)a13 reingestItems:(id)a14 isInvalidated:(id)a15;
- (int64_t)numberOfBrokenFilesInBackupManifestCheck;
- (int64_t)numberOfBrokenFilesInFSAndFSSnapshotCheck;
- (int64_t)numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck;
- (int64_t)numberOfBrokenFilesInReconciliationTableCheck;
- (int64_t)numberOfFilesChecked;
- (int64_t)numberOfReconciliationTableEntries;
- (void)setNumberOfBrokenFilesInBackupManifestCheck:(int64_t)a3;
- (void)setNumberOfBrokenFilesInFSAndFSSnapshotCheck:(int64_t)a3;
- (void)setNumberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck:(int64_t)a3;
- (void)setNumberOfBrokenFilesInReconciliationTableCheck:(int64_t)a3;
- (void)setNumberOfFilesChecked:(int64_t)a3;
- (void)setNumberOfReconciliationTableEntries:(int64_t)a3;
- (void)setTelemetryReport:(id)a3;
@end

@implementation FPCK

- (int64_t)numberOfFilesChecked
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfFilesChecked;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfFilesChecked:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfFilesChecked;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)numberOfBrokenFilesInFSAndFSSnapshotCheck
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfBrokenFilesInFSAndFSSnapshotCheck:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)numberOfBrokenFilesInReconciliationTableCheck
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInReconciliationTableCheck;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfBrokenFilesInReconciliationTableCheck:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInReconciliationTableCheck;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)numberOfBrokenFilesInBackupManifestCheck
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInBackupManifestCheck;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfBrokenFilesInBackupManifestCheck:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInBackupManifestCheck;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)numberOfReconciliationTableEntries
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfReconciliationTableEntries;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfReconciliationTableEntries:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfReconciliationTableEntries;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSDictionary)telemetryReport
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_telemetryReport;
  swift_beginAccess();
  if (*(self + v3))
  {

    v4 = sub_1CF9E6618();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setTelemetryReport:(id)a3
{
  if (a3)
  {
    v4 = sub_1CF9E6638();
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_telemetryReport;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (_TtC18FileProviderDaemon4FPCK)initWithDatabasesBackupsPaths:(id)a3 volumeRole:(unsigned int)a4 providerDomainID:(id)a5 domainUserInfo:(id)a6 reason:(unint64_t)a7 usingFPFS:(BOOL)a8 iCDPackageDetection:(BOOL)a9 useShouldPause:(BOOL)a10 shouldPause:(id)aBlock sendDiagnostics:(id)a12 saveCheckpoint:(id)a13 reingestItems:(id)a14 isInvalidated:(id)a15
{
  v31 = a8;
  v17 = _Block_copy(aBlock);
  v18 = _Block_copy(a12);
  v19 = _Block_copy(a13);
  v20 = _Block_copy(a14);
  v21 = _Block_copy(a15);
  v22 = sub_1CF9E6638();
  if (a6)
  {
    a6 = sub_1CF9E6638();
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v17;
  v24 = swift_allocObject();
  *(v24 + 16) = v18;
  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  v26 = swift_allocObject();
  *(v26 + 16) = v20;
  v27 = swift_allocObject();
  *(v27 + 16) = v21;
  return FPCK.init(withDatabasesBackupsPaths:volumeRole:providerDomainID:domainUserInfo:reason:usingFPFS:iCDPackageDetection:useShouldPause:shouldPause:sendDiagnostics:saveCheckpoint:reingestItems:isInvalidated:)(v22, a4, a5, a6, a7, v31, a9, a10, sub_1CF6FC860, v23, sub_1CF6FC898, v24, sub_1CF6FC8B0, v25, sub_1CF6FCF90, v26, sub_1CF6FC920, v27);
}

- (BOOL)launchFromURLs:(id)a3 options:(unint64_t)a4 contentBarrier:(int64_t)a5 error:(id *)a6 resultHandler:(id)a7
{
  v10 = _Block_copy(a7);
  sub_1CF9E5A58();
  v11 = sub_1CF9E6D48();
  v12 = swift_allocObject();
  *(v12 + 2) = v10;
  v13 = self;
  sub_1CF6D013C(v11, a4, a5, sub_1CF6FC848, v12);

  return 1;
}

- (BOOL)checker:(id)a3 handleItem:(int)a4 itemStatus:(id *)a5 under:(id)a6 brokenInvariants:(unint64_t)a7
{
  sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  v12 = sub_1CF9E6D48();
  v13 = a3;
  v14 = self;
  LOBYTE(a7) = sub_1CF6F67D4(a4, a5, v12, a7);

  return a7 & 1;
}

- (BOOL)checker:(id)a3 handleLockedItemAtPath:(id)a4 handle:(const fpfs_item_handle *)a5
{
  if (*(self + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker))
  {
    var0 = a5->var0;
    swift_beginAccess();
    v7 = self;

    sub_1CF6E9C5C(&v9, var0, &qword_1EC4C2898, &unk_1CFA12AE0);
    swift_endAccess();
  }

  return 1;
}

+ (BOOL)dumpDatabaseAt:(id)a3 fullDump:(BOOL)a4 writeTo:(id)a5 error:(id *)a6
{
  v7 = a4;
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  v11 = a5;
  sub_1CF6F9E84(v8, v10, v7, v11);

  return 1;
}

- (_TtC18FileProviderDaemon4FPCK)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end