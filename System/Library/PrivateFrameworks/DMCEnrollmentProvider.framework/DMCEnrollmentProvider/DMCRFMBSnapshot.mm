@interface DMCRFMBSnapshot
+ (id)snapshotIdentifierFromSnapshot:(id)snapshot;
- (DMCRFMBSnapshot)initWithSnapshot:(id)snapshot;
- (DMCRFSnapshotIdentifier)identifier;
- (NSDate)date;
- (NSDate)dateCreated;
- (NSDate)dateModified;
- (NSString)deviceName;
@end

@implementation DMCRFMBSnapshot

- (DMCRFMBSnapshot)initWithSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v8.receiver = self;
  v8.super_class = DMCRFMBSnapshot;
  v6 = [(DMCRFMBSnapshot *)&v8 init];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v6->_snapshot, snapshot);
    }
  }

  return v6;
}

+ (id)snapshotIdentifierFromSnapshot:(id)snapshot
{
  v3 = MEMORY[0x277D28A68];
  snapshotCopy = snapshot;
  v5 = [v3 alloc];
  backupUUID = [snapshotCopy backupUUID];
  snapshotUUID = [snapshotCopy snapshotUUID];

  v8 = [v5 initWithBackupUUID:backupUUID snapshotUUID:snapshotUUID];

  return v8;
}

- (NSDate)date
{
  snapshot = [(DMCRFMBSnapshot *)self snapshot];
  date = [snapshot date];

  return date;
}

- (NSDate)dateCreated
{
  snapshot = [(DMCRFMBSnapshot *)self snapshot];
  created = [snapshot created];

  return created;
}

- (NSDate)dateModified
{
  snapshot = [(DMCRFMBSnapshot *)self snapshot];
  modified = [snapshot modified];

  return modified;
}

- (NSString)deviceName
{
  snapshot = [(DMCRFMBSnapshot *)self snapshot];
  deviceName = [snapshot deviceName];

  return deviceName;
}

- (DMCRFSnapshotIdentifier)identifier
{
  v3 = objc_opt_class();
  snapshot = [(DMCRFMBSnapshot *)self snapshot];
  v5 = [v3 snapshotIdentifierFromSnapshot:snapshot];

  v6 = [[DMCRFMBSnapshotIdentifier alloc] initWithMBSnapshotIdentifier:v5];

  return v6;
}

@end