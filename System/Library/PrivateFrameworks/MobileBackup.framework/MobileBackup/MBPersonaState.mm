@interface MBPersonaState
- (BOOL)manualBackupInProgress;
- (MBCKEncryptionManager)encryptionManager;
- (NSArray)engines;
- (NSDictionary)restoreKeyBagsByID;
- (OS_os_transaction)restoreTransaction;
- (id)openOrUseExistingPlanWithPersona:(id)persona snapshotUUID:(id)d error:(id *)error;
- (void)clearRestoreSession;
- (void)setBackgroundRestoreProgressMonitor:(id)monitor;
- (void)setBackup:(id)backup;
- (void)setDelayedRestoreTimer:(id)timer;
- (void)setDeviceForRestore:(id)restore;
- (void)setEncryptionManager:(id)manager;
- (void)setEngines:(id)engines;
- (void)setEnginesByContext:(id)context;
- (void)setInitialMegaBackup:(id)backup;
- (void)setLockManager:(id)manager;
- (void)setNextBackupSize:(id)size;
- (void)setRestore:(id)restore;
- (void)setRestoreKeyBagsByID:(id)d;
- (void)setRestoreLogger:(id)logger;
- (void)setRestoreQosByContext:(id)context;
- (void)setRestoreSession:(id)session;
- (void)setRestoreTTRTimer:(id)timer;
- (void)setRestoreTransaction:(id)transaction;
- (void)setServiceGroup:(id)group;
- (void)setUnboostBackgroundRestoreHandler:(id)handler;
- (void)setUnboostManualBackupHandler:(id)handler;
@end

@implementation MBPersonaState

- (void)setBackup:(id)backup
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_backup);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_backup) = backup;
  backupCopy = backup;
}

- (void)setInitialMegaBackup:(id)backup
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_initialMegaBackup);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_initialMegaBackup) = backup;
  backupCopy = backup;
}

- (void)setNextBackupSize:(id)size
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_nextBackupSize);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_nextBackupSize) = size;
  sizeCopy = size;
}

- (void)setRestore:(id)restore
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restore);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restore) = restore;
  restoreCopy = restore;
}

- (void)setRestoreSession:(id)session
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreSession);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreSession) = session;
  sessionCopy = session;
}

- (void)setUnboostBackgroundRestoreHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_10003238C(v8);
}

- (void)setUnboostManualBackupHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_10003238C(v8);
}

- (void)setDeviceForRestore:(id)restore
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_deviceForRestore);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_deviceForRestore) = restore;
  restoreCopy = restore;
}

- (void)setLockManager:(id)manager
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_lockManager);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_lockManager) = manager;
  managerCopy = manager;
}

- (MBCKEncryptionManager)encryptionManager
{
  selfCopy = self;
  v3 = sub_10002FC14();

  return v3;
}

- (void)setEncryptionManager:(id)manager
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState____lazy_storage___encryptionManager);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState____lazy_storage___encryptionManager) = manager;
  managerCopy = manager;
}

- (void)setBackgroundRestoreProgressMonitor:(id)monitor
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_backgroundRestoreProgressMonitor);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_backgroundRestoreProgressMonitor) = monitor;
  monitorCopy = monitor;
}

- (void)setRestoreLogger:(id)logger
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreLogger);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreLogger) = logger;
  loggerCopy = logger;
}

- (OS_os_transaction)restoreTransaction
{
  v2 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreTransaction);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setRestoreTransaction:(id)transaction
{
  v3 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreTransaction);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreTransaction) = transaction;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setRestoreQosByContext:(id)context
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreQosByContext);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreQosByContext) = context;
  contextCopy = context;
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

- (void)setRestoreKeyBagsByID:(id)d
{
  sub_100011314(0, &qword_10041EEA8, NSString_ptr);
  sub_100011314(0, &qword_10041F150, off_1003B99E8);
  sub_10003239C();
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreKeyBagsByID);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreKeyBagsByID) = v4;
}

- (void)setServiceGroup:(id)group
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_serviceGroup);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_serviceGroup) = group;
  groupCopy = group;
}

- (NSArray)engines
{
  v2 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_engines);
  sub_100011314(0, &unk_10041F140, off_1003B99F8);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setEngines:(id)engines
{
  sub_100011314(0, &unk_10041F140, off_1003B99F8);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_engines);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_engines) = v4;
}

- (void)setEnginesByContext:(id)context
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_enginesByContext);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_enginesByContext) = context;
  contextCopy = context;
}

- (void)setDelayedRestoreTimer:(id)timer
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_delayedRestoreTimer);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_delayedRestoreTimer) = timer;
  timerCopy = timer;
}

- (void)setRestoreTTRTimer:(id)timer
{
  v4 = *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreTTRTimer);
  *(self + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreTTRTimer) = timer;
  timerCopy = timer;
}

- (void)clearRestoreSession
{
  selfCopy = self;
  sub_1000302B0();
}

- (BOOL)manualBackupInProgress
{
  selfCopy = self;
  v3 = sub_1000305C8();

  return v3 & 1;
}

- (id)openOrUseExistingPlanWithPersona:(id)persona snapshotUUID:(id)d error:(id *)error
{
  if (d)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  personaCopy = persona;
  selfCopy = self;
  v13 = sub_100031654(personaCopy, v8, v10);
  if (v13)
  {
    v17 = v13;

    v16 = v17;
  }

  else if (v10)
  {
    sub_100031978(personaCopy);
    v20 = v19;

    v16 = v20;
  }

  else
  {
    sub_10003F97C(1, 0xD000000000000025, 0x80000001002BD460, 0xD000000000000010, 0x80000001002BD3B0);
    swift_willThrow();

    if (error)
    {
      v14 = _convertErrorToNSError(_:)();

      v15 = v14;
      v16 = 0;
      *error = v14;
    }

    else
    {

      v16 = 0;
    }
  }

  return v16;
}

@end