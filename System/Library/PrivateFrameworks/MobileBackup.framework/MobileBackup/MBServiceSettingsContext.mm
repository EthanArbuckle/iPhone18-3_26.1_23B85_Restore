@interface MBServiceSettingsContext
- (id)copyWithZone:(_NSZone *)zone;
- (id)volumeMountPoint;
@end

@implementation MBServiceSettingsContext

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = MBServiceSettingsContext;
  v5 = [(MBSettingsContext *)&v11 copyWithZone:?];
  [v5 setAccount:self->_account];
  [v5 setLockManager:self->_lockManager];
  v6 = [(NSString *)self->_backupUDID copyWithZone:zone];
  [v5 setBackupUDID:v6];

  [v5 setSnapshotID:self->_snapshotID];
  v7 = [(NSString *)self->_snapshotUUID copyWithZone:zone];
  [v5 setSnapshotUUID:v7];

  v8 = [(NSString *)self->_cacheDir copyWithZone:zone];
  [v5 setCacheDir:v8];

  [v5 setRestoreMode:self->_restoreMode];
  v9 = [(NSNumber *)self->_qos copyWithZone:zone];
  [v5 setQos:v9];

  [v5 setWatchdog:self->_watchdog];
  [v5 setPowerAssertion:self->_powerAssertion];
  return v5;
}

- (id)volumeMountPoint
{
  account = [(MBServiceSettingsContext *)self account];
  persona = [account persona];
  volumeMountPoint = [persona volumeMountPoint];

  return volumeMountPoint;
}

@end