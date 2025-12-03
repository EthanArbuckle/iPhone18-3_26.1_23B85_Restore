@interface MBSnapshotIdentifier
- (MBSnapshotIdentifier)initWithBackupUDID:(id)d snapshotID:(unint64_t)iD;
- (MBSnapshotIdentifier)initWithBackupUUID:(id)d snapshotUUID:(id)iD;
- (MBSnapshotIdentifier)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MBSnapshotIdentifier

- (void)encodeWithCoder:(id)coder
{
  backupUUID = self->_backupUUID;
  coderCopy = coder;
  [coderCopy encodeObject:backupUUID forKey:@"backupUUID"];
  [coderCopy encodeObject:self->_snapshotUUID forKey:@"snapshotUUID"];
  [coderCopy encodeObject:self->_backupUDID forKey:@"backupUDID"];
  [coderCopy encodeInteger:self->_snapshotID forKey:@"snapshotID"];
}

- (MBSnapshotIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MBSnapshotIdentifier;
  v5 = [(MBSnapshotIdentifier *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backupUUID"];
    backupUUID = v5->_backupUUID;
    v5->_backupUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"snapshotUUID"];
    snapshotUUID = v5->_snapshotUUID;
    v5->_snapshotUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backupUDID"];
    backupUDID = v5->_backupUDID;
    v5->_backupUDID = v10;

    v5->_snapshotID = [coderCopy decodeIntegerForKey:@"snapshotID"];
  }

  return v5;
}

- (MBSnapshotIdentifier)initWithBackupUDID:(id)d snapshotID:(unint64_t)iD
{
  dCopy = d;
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

    objc_storeStrong(&v9->_backupUDID, d);
    v9->_snapshotID = iD;
  }

  return v9;
}

- (MBSnapshotIdentifier)initWithBackupUUID:(id)d snapshotUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v13.receiver = self;
  v13.super_class = MBSnapshotIdentifier;
  v9 = [(MBSnapshotIdentifier *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backupUUID, d);
    objc_storeStrong(&v10->_snapshotUUID, iD);
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