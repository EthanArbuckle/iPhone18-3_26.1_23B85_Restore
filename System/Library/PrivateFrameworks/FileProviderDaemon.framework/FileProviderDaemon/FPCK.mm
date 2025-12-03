@interface FPCK
+ (BOOL)dumpDatabaseAt:(id)at fullDump:(BOOL)dump writeTo:(id)to error:(id *)error;
- (BOOL)checker:(id)checker handleItem:(int)item itemStatus:(id *)status under:(id)under brokenInvariants:(unint64_t)invariants;
- (BOOL)checker:(id)checker handleLockedItemAtPath:(id)path handle:(const fpfs_item_handle *)handle;
- (BOOL)launchFromURLs:(id)ls options:(unint64_t)options contentBarrier:(int64_t)barrier error:(id *)error resultHandler:(id)handler;
- (NSDictionary)telemetryReport;
- (_TtC18FileProviderDaemon4FPCK)init;
- (_TtC18FileProviderDaemon4FPCK)initWithDatabasesBackupsPaths:(id)paths volumeRole:(unsigned int)role providerDomainID:(id)d domainUserInfo:(id)info reason:(unint64_t)reason usingFPFS:(BOOL)s iCDPackageDetection:(BOOL)detection useShouldPause:(BOOL)self0 shouldPause:(id)aBlock sendDiagnostics:(id)self2 saveCheckpoint:(id)self3 reingestItems:(id)self4 isInvalidated:(id)self5;
- (int64_t)numberOfBrokenFilesInBackupManifestCheck;
- (int64_t)numberOfBrokenFilesInFSAndFSSnapshotCheck;
- (int64_t)numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck;
- (int64_t)numberOfBrokenFilesInReconciliationTableCheck;
- (int64_t)numberOfFilesChecked;
- (int64_t)numberOfReconciliationTableEntries;
- (void)setNumberOfBrokenFilesInBackupManifestCheck:(int64_t)check;
- (void)setNumberOfBrokenFilesInFSAndFSSnapshotCheck:(int64_t)check;
- (void)setNumberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck:(int64_t)check;
- (void)setNumberOfBrokenFilesInReconciliationTableCheck:(int64_t)check;
- (void)setNumberOfFilesChecked:(int64_t)checked;
- (void)setNumberOfReconciliationTableEntries:(int64_t)entries;
- (void)setTelemetryReport:(id)report;
@end

@implementation FPCK

- (int64_t)numberOfFilesChecked
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfFilesChecked;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfFilesChecked:(int64_t)checked
{
  v5 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfFilesChecked;
  swift_beginAccess();
  *(self + v5) = checked;
}

- (int64_t)numberOfBrokenFilesInFSAndFSSnapshotCheck
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfBrokenFilesInFSAndFSSnapshotCheck:(int64_t)check
{
  v5 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
  swift_beginAccess();
  *(self + v5) = check;
}

- (int64_t)numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck:(int64_t)check
{
  v5 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck;
  swift_beginAccess();
  *(self + v5) = check;
}

- (int64_t)numberOfBrokenFilesInReconciliationTableCheck
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInReconciliationTableCheck;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfBrokenFilesInReconciliationTableCheck:(int64_t)check
{
  v5 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInReconciliationTableCheck;
  swift_beginAccess();
  *(self + v5) = check;
}

- (int64_t)numberOfBrokenFilesInBackupManifestCheck
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInBackupManifestCheck;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfBrokenFilesInBackupManifestCheck:(int64_t)check
{
  v5 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInBackupManifestCheck;
  swift_beginAccess();
  *(self + v5) = check;
}

- (int64_t)numberOfReconciliationTableEntries
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfReconciliationTableEntries;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfReconciliationTableEntries:(int64_t)entries
{
  v5 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfReconciliationTableEntries;
  swift_beginAccess();
  *(self + v5) = entries;
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

- (void)setTelemetryReport:(id)report
{
  if (report)
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

- (_TtC18FileProviderDaemon4FPCK)initWithDatabasesBackupsPaths:(id)paths volumeRole:(unsigned int)role providerDomainID:(id)d domainUserInfo:(id)info reason:(unint64_t)reason usingFPFS:(BOOL)s iCDPackageDetection:(BOOL)detection useShouldPause:(BOOL)self0 shouldPause:(id)aBlock sendDiagnostics:(id)self2 saveCheckpoint:(id)self3 reingestItems:(id)self4 isInvalidated:(id)self5
{
  sCopy = s;
  v17 = _Block_copy(aBlock);
  v18 = _Block_copy(diagnostics);
  v19 = _Block_copy(checkpoint);
  v20 = _Block_copy(items);
  v21 = _Block_copy(invalidated);
  v22 = sub_1CF9E6638();
  if (info)
  {
    info = sub_1CF9E6638();
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
  return FPCK.init(withDatabasesBackupsPaths:volumeRole:providerDomainID:domainUserInfo:reason:usingFPFS:iCDPackageDetection:useShouldPause:shouldPause:sendDiagnostics:saveCheckpoint:reingestItems:isInvalidated:)(v22, role, d, info, reason, sCopy, detection, pause, sub_1CF6FC860, v23, sub_1CF6FC898, v24, sub_1CF6FC8B0, v25, sub_1CF6FCF90, v26, sub_1CF6FC920, v27);
}

- (BOOL)launchFromURLs:(id)ls options:(unint64_t)options contentBarrier:(int64_t)barrier error:(id *)error resultHandler:(id)handler
{
  v10 = _Block_copy(handler);
  sub_1CF9E5A58();
  v11 = sub_1CF9E6D48();
  v12 = swift_allocObject();
  *(v12 + 2) = v10;
  selfCopy = self;
  sub_1CF6D013C(v11, options, barrier, sub_1CF6FC848, v12);

  return 1;
}

- (BOOL)checker:(id)checker handleItem:(int)item itemStatus:(id *)status under:(id)under brokenInvariants:(unint64_t)invariants
{
  sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  v12 = sub_1CF9E6D48();
  checkerCopy = checker;
  selfCopy = self;
  LOBYTE(invariants) = sub_1CF6F67D4(item, status, v12, invariants);

  return invariants & 1;
}

- (BOOL)checker:(id)checker handleLockedItemAtPath:(id)path handle:(const fpfs_item_handle *)handle
{
  if (*(self + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker))
  {
    var0 = handle->var0;
    swift_beginAccess();
    selfCopy = self;

    sub_1CF6E9C5C(&v9, var0, &qword_1EC4C2898, &unk_1CFA12AE0);
    swift_endAccess();
  }

  return 1;
}

+ (BOOL)dumpDatabaseAt:(id)at fullDump:(BOOL)dump writeTo:(id)to error:(id *)error
{
  dumpCopy = dump;
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  toCopy = to;
  sub_1CF6F9E84(v8, v10, dumpCopy, toCopy);

  return 1;
}

- (_TtC18FileProviderDaemon4FPCK)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end