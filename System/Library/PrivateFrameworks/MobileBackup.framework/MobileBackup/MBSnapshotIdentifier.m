@interface MBSnapshotIdentifier
- (MBSnapshotIdentifier)initWithBackupUDID:(id)a3 snapshotID:(unint64_t)a4;
- (MBSnapshotIdentifier)initWithBackupUUID:(id)a3 snapshotUUID:(id)a4;
- (MBSnapshotIdentifier)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MBSnapshotIdentifier

- (void)encodeWithCoder:(id)a3
{
  backupUUID = self->_backupUUID;
  v5 = a3;
  [v5 encodeObject:backupUUID forKey:@"backupUUID"];
  [v5 encodeObject:self->_snapshotUUID forKey:@"snapshotUUID"];
  [v5 encodeObject:self->_backupUDID forKey:@"backupUDID"];
  [v5 encodeInteger:self->_snapshotID forKey:@"snapshotID"];
}

- (MBSnapshotIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MBSnapshotIdentifier;
  v5 = [(MBSnapshotIdentifier *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backupUUID"];
    backupUUID = v5->_backupUUID;
    v5->_backupUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"snapshotUUID"];
    snapshotUUID = v5->_snapshotUUID;
    v5->_snapshotUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backupUDID"];
    backupUDID = v5->_backupUDID;
    v5->_backupUDID = v10;

    v5->_snapshotID = [v4 decodeIntegerForKey:@"snapshotID"];
  }

  return v5;
}

- (MBSnapshotIdentifier)initWithBackupUDID:(id)a3 snapshotID:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = MBSnapshotIdentifier;
  v8 = [(MBSnapshotIdentifier *)&v13 init];
  v9 = v8;
  if (v8)
  {
    backupUUID = v8->_backupUUID;
    v8->_backupUUID = 0;

    snapshotUUID = v9->_snapshotUUID;
    v9->_snapshotUUID = 0;

    objc_storeStrong(&v9->_backupUDID, a3);
    v9->_snapshotID = a4;
  }

  return v9;
}

- (MBSnapshotIdentifier)initWithBackupUUID:(id)a3 snapshotUUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = MBSnapshotIdentifier;
  v9 = [(MBSnapshotIdentifier *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backupUUID, a3);
    objc_storeStrong(&v10->_snapshotUUID, a4);
    backupUDID = v10->_backupUDID;
    v10->_backupUDID = 0;

    v10->_snapshotID = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%s: %p; backupUUID=%@, snapshotUUID=%@, backupUDID=%@, snapshotID=%lu>", class_getName(v4), self, self->_backupUUID, self->_snapshotUUID, self->_backupUDID, self->_snapshotID];
}

@end