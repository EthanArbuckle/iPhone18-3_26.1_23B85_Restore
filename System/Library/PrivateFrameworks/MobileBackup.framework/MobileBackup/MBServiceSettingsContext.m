@interface MBServiceSettingsContext
- (id)copyWithZone:(_NSZone *)a3;
- (id)volumeMountPoint;
@end

@implementation MBServiceSettingsContext

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = MBServiceSettingsContext;
  v5 = [(MBSettingsContext *)&v11 copyWithZone:?];
  [v5 setAccount:self->_account];
  [v5 setLockManager:self->_lockManager];
  v6 = [(NSString *)self->_backupUDID copyWithZone:a3];
  [v5 setBackupUDID:v6];

  [v5 setSnapshotID:self->_snapshotID];
  v7 = [(NSString *)self->_snapshotUUID copyWithZone:a3];
  [v5 setSnapshotUUID:v7];

  v8 = [(NSString *)self->_cacheDir copyWithZone:a3];
  [v5 setCacheDir:v8];

  [v5 setRestoreMode:self->_restoreMode];
  v9 = [(NSNumber *)self->_qos copyWithZone:a3];
  [v5 setQos:v9];

  [v5 setWatchdog:self->_watchdog];
  [v5 setPowerAssertion:self->_powerAssertion];
  return v5;
}

- (id)volumeMountPoint
{
  v2 = [(MBServiceSettingsContext *)self account];
  v3 = [v2 persona];
  v4 = [v3 volumeMountPoint];

  return v4;
}

@end