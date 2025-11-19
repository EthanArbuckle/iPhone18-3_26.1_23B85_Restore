@interface MBPersonaState
- (BOOL)manualBackupInProgress;
- (MBCKEncryptionManager)encryptionManager;
- (NSArray)engines;
- (NSDictionary)restoreKeyBagsByID;
- (OS_os_transaction)restoreTransaction;
- (id)openOrUseExistingPlanWithPersona:(id)a3 snapshotUUID:(id)a4 error:(id *)a5;
- (void)clearRestoreSession;
- (void)setBackgroundRestoreProgressMonitor:(id)a3;
- (void)setBackup:(id)a3;
- (void)setDelayedRestoreTimer:(id)a3;
- (void)setDeviceForRestore:(id)a3;
- (void)setEncryptionManager:(id)a3;
- (void)setEngines:(id)a3;
- (void)setEnginesByContext:(id)a3;
- (void)setInitialMegaBackup:(id)a3;
- (void)setLockManager:(id)a3;
- (void)setNextBackupSize:(id)a3;
- (void)setRestore:(id)a3;
- (void)setRestoreKeyBagsByID:(id)a3;
- (void)setRestoreLogger:(id)a3;
- (void)setRestoreQosByContext:(id)a3;
- (void)setRestoreSession:(id)a3;
- (void)setRestoreTTRTimer:(id)a3;
- (void)setRestoreTransaction:(id)a3;
- (void)setServiceGroup:(id)a3;
- (void)setUnboostBackgroundRestoreHandler:(id)a3;
- (void)setUnboostManualBackupHandler:(id)a3;
@end

@implementation MBPersonaState

- (void)setBackup:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_backup);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_backup) = a3;
  v3 = a3;
}

- (void)setInitialMegaBackup:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_initialMegaBackup);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_initialMegaBackup) = a3;
  v3 = a3;
}

- (void)setNextBackupSize:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_nextBackupSize);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_nextBackupSize) = a3;
  v3 = a3;
}

- (void)setRestore:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restore);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restore) = a3;
  v3 = a3;
}

- (void)setRestoreSession:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreSession);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreSession) = a3;
  v3 = a3;
}

- (void)setUnboostBackgroundRestoreHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_100032474;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC7backupd14MBPersonaState_unboostBackgroundRestoreHandler);
  v8 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_unboostBackgroundRestoreHandler);
  v9 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_unboostBackgroundRestoreHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_10003238C(v8);
}

- (void)setUnboostManualBackupHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_10003243C;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC7backupd14MBPersonaState_unboostManualBackupHandler);
  v8 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_unboostManualBackupHandler);
  v9 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_unboostManualBackupHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_10003238C(v8);
}

- (void)setDeviceForRestore:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_deviceForRestore);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_deviceForRestore) = a3;
  v3 = a3;
}

- (void)setLockManager:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_lockManager);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_lockManager) = a3;
  v3 = a3;
}

- (MBCKEncryptionManager)encryptionManager
{
  v2 = self;
  v3 = sub_10002FC14();

  return v3;
}

- (void)setEncryptionManager:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState____lazy_storage___encryptionManager);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState____lazy_storage___encryptionManager) = a3;
  v3 = a3;
}

- (void)setBackgroundRestoreProgressMonitor:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_backgroundRestoreProgressMonitor);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_backgroundRestoreProgressMonitor) = a3;
  v3 = a3;
}

- (void)setRestoreLogger:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreLogger);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreLogger) = a3;
  v3 = a3;
}

- (OS_os_transaction)restoreTransaction
{
  v2 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreTransaction);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setRestoreTransaction:(id)a3
{
  v3 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreTransaction);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreTransaction) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setRestoreQosByContext:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreQosByContext);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreQosByContext) = a3;
  v3 = a3;
}

- (NSDictionary)restoreKeyBagsByID
{
  v2 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreKeyBagsByID);
  sub_100011314(0, &qword_10041EEA8, NSString_ptr);
  sub_100011314(0, &qword_10041F150, off_1003B99E8);
  sub_10003239C();

  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setRestoreKeyBagsByID:(id)a3
{
  sub_100011314(0, &qword_10041EEA8, NSString_ptr);
  sub_100011314(0, &qword_10041F150, off_1003B99E8);
  sub_10003239C();
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreKeyBagsByID);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreKeyBagsByID) = v4;
}

- (void)setServiceGroup:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_serviceGroup);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_serviceGroup) = a3;
  v3 = a3;
}

- (NSArray)engines
{
  v2 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_engines);
  sub_100011314(0, &unk_10041F140, off_1003B99F8);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setEngines:(id)a3
{
  sub_100011314(0, &unk_10041F140, off_1003B99F8);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_engines);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_engines) = v4;
}

- (void)setEnginesByContext:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_enginesByContext);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_enginesByContext) = a3;
  v3 = a3;
}

- (void)setDelayedRestoreTimer:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_delayedRestoreTimer);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_delayedRestoreTimer) = a3;
  v3 = a3;
}

- (void)setRestoreTTRTimer:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreTTRTimer);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreTTRTimer) = a3;
  v3 = a3;
}

- (void)clearRestoreSession
{
  v2 = self;
  sub_1000302B0();
}

- (BOOL)manualBackupInProgress
{
  v2 = self;
  v3 = sub_1000305C8();

  return v3 & 1;
}

- (id)openOrUseExistingPlanWithPersona:(id)a3 snapshotUUID:(id)a4 error:(id *)a5
{
  if (a4)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = a3;
  v12 = self;
  v13 = sub_100031654(v11, v8, v10);
  if (v13)
  {
    v17 = v13;

    v16 = v17;
  }

  else if (v10)
  {
    sub_100031978(v11);
    v20 = v19;

    v16 = v20;
  }

  else
  {
    sub_10003F97C(1, 0xD000000000000025, 0x80000001002BD460, 0xD000000000000010, 0x80000001002BD3B0);
    swift_willThrow();

    if (a5)
    {
      v14 = _convertErrorToNSError(_:)();

      v15 = v14;
      v16 = 0;
      *a5 = v14;
    }

    else
    {

      v16 = 0;
    }
  }

  return v16;
}

@end