@interface DMCRFMBSnapshot
+ (id)snapshotIdentifierFromSnapshot:(id)a3;
- (DMCRFMBSnapshot)initWithSnapshot:(id)a3;
- (DMCRFSnapshotIdentifier)identifier;
- (NSDate)date;
- (NSDate)dateCreated;
- (NSDate)dateModified;
- (NSString)deviceName;
@end

@implementation DMCRFMBSnapshot

- (DMCRFMBSnapshot)initWithSnapshot:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = DMCRFMBSnapshot;
  v6 = [(DMCRFMBSnapshot *)&v8 init];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v6->_snapshot, a3);
    }
  }

  return v6;
}

+ (id)snapshotIdentifierFromSnapshot:(id)a3
{
  v3 = MEMORY[0x277D28A68];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 backupUUID];
  v7 = [v4 snapshotUUID];

  v8 = [v5 initWithBackupUUID:v6 snapshotUUID:v7];

  return v8;
}

- (NSDate)date
{
  v2 = [(DMCRFMBSnapshot *)self snapshot];
  v3 = [v2 date];

  return v3;
}

- (NSDate)dateCreated
{
  v2 = [(DMCRFMBSnapshot *)self snapshot];
  v3 = [v2 created];

  return v3;
}

- (NSDate)dateModified
{
  v2 = [(DMCRFMBSnapshot *)self snapshot];
  v3 = [v2 modified];

  return v3;
}

- (NSString)deviceName
{
  v2 = [(DMCRFMBSnapshot *)self snapshot];
  v3 = [v2 deviceName];

  return v3;
}

- (DMCRFSnapshotIdentifier)identifier
{
  v3 = objc_opt_class();
  v4 = [(DMCRFMBSnapshot *)self snapshot];
  v5 = [v3 snapshotIdentifierFromSnapshot:v4];

  v6 = [[DMCRFMBSnapshotIdentifier alloc] initWithMBSnapshotIdentifier:v5];

  return v6;
}

@end