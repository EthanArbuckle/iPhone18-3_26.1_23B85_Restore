@interface MBSnapshot
- (MBSnapshot)initWithCoder:(id)coder;
- (MBSnapshot)initWithSnapshotID:(unint64_t)d backupUUID:(id)iD snapshotUUID:(id)uID commitID:(id)commitID format:(int64_t)format deviceName:(id)name date:(id)date created:(id)self0 modified:(id)self1 state:(int)self2 isCompatible:(BOOL)self3 systemVersion:(id)self4 buildVersion:(id)self5 quotaReserved:(unint64_t)self6 type:(int64_t)self7 backupPolicy:(int64_t)self8 accountType:(int64_t)self9;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MBSnapshot

- (MBSnapshot)initWithSnapshotID:(unint64_t)d backupUUID:(id)iD snapshotUUID:(id)uID commitID:(id)commitID format:(int64_t)format deviceName:(id)name date:(id)date created:(id)self0 modified:(id)self1 state:(int)self2 isCompatible:(BOOL)self3 systemVersion:(id)self4 buildVersion:(id)self5 quotaReserved:(unint64_t)self6 type:(int64_t)self7 backupPolicy:(int64_t)self8 accountType:(int64_t)self9
{
  iDCopy = iD;
  uIDCopy = uID;
  commitIDCopy = commitID;
  nameCopy = name;
  dateCopy = date;
  createdCopy = created;
  modifiedCopy = modified;
  versionCopy = version;
  buildVersionCopy = buildVersion;
  v53.receiver = self;
  v53.super_class = MBSnapshot;
  v31 = [(MBSnapshot *)&v53 init];
  v32 = v31;
  if (v31)
  {
    v31->_snapshotID = d;
    v33 = [uIDCopy copy];
    snapshotUUID = v32->_snapshotUUID;
    v32->_snapshotUUID = v33;

    v35 = [iDCopy copy];
    backupUUID = v32->_backupUUID;
    v32->_backupUUID = v35;

    objc_storeStrong(&v32->_commitID, commitID);
    v32->_format = format;
    v37 = [nameCopy copy];
    deviceName = v32->_deviceName;
    v32->_deviceName = v37;

    v39 = [dateCopy copy];
    date = v32->_date;
    v32->_date = v39;

    v41 = [createdCopy copy];
    created = v32->_created;
    v32->_created = v41;

    v43 = [modifiedCopy copy];
    modified = v32->_modified;
    v32->_modified = v43;

    v32->_state = state;
    v32->_isCompatible = compatible;
    v45 = [versionCopy copy];
    systemVersion = v32->_systemVersion;
    v32->_systemVersion = v45;

    v47 = [buildVersionCopy copy];
    buildVersion = v32->_buildVersion;
    v32->_buildVersion = v47;

    v32->_type = type;
    v32->_backupPolicy = policy;
    v32->_quotaReserved = reserved;
    v32->_estimatedRestoreSize = -1;
    v32->_accountType = accountType;
  }

  return v32;
}

- (MBSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = MBSnapshot;
  v5 = [(MBSnapshot *)&v30 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"snapshotID"];
    v5->_snapshotID = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"snapshotUUID"];
    snapshotUUID = v5->_snapshotUUID;
    v5->_snapshotUUID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backupUUID"];
    backupUUID = v5->_backupUUID;
    v5->_backupUUID = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commitID"];
    commitID = v5->_commitID;
    v5->_commitID = v11;

    v5->_format = [coderCopy decodeInt64ForKey:@"format"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"created"];
    created = v5->_created;
    v5->_created = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modified"];
    modified = v5->_modified;
    v5->_modified = v19;

    v5->_state = [coderCopy decodeIntForKey:@"state"];
    v5->_isCompatible = [coderCopy decodeBoolForKey:@"isCompatible"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemVersion"];
    systemVersion = v5->_systemVersion;
    v5->_systemVersion = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buildVersion"];
    buildVersion = v5->_buildVersion;
    v5->_buildVersion = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"quotaReserved"];
    v5->_quotaReserved = [v25 longLongValue];

    v5->_type = [coderCopy decodeIntegerForKey:@"backupType"];
    v5->_backupPolicy = [coderCopy decodeIntegerForKey:@"backupPolicy"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requiredProductVersion"];
    requiredProductVersion = v5->_requiredProductVersion;
    v5->_requiredProductVersion = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"estimatedRestoreSize"];
    v5->_estimatedRestoreSize = [v28 longLongValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  snapshotID = self->_snapshotID;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInteger:snapshotID];
  [coderCopy encodeObject:v7 forKey:@"snapshotID"];

  [coderCopy encodeObject:self->_snapshotUUID forKey:@"snapshotUUID"];
  [coderCopy encodeObject:self->_backupUUID forKey:@"backupUUID"];
  [coderCopy encodeObject:self->_commitID forKey:@"commitID"];
  [coderCopy encodeInt64:self->_format forKey:@"format"];
  [coderCopy encodeObject:self->_deviceName forKey:@"deviceName"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
  [coderCopy encodeObject:self->_created forKey:@"created"];
  [coderCopy encodeObject:self->_modified forKey:@"modified"];
  [coderCopy encodeInt:self->_state forKey:@"state"];
  [coderCopy encodeBool:self->_isCompatible forKey:@"isCompatible"];
  [coderCopy encodeObject:self->_systemVersion forKey:@"systemVersion"];
  [coderCopy encodeObject:self->_buildVersion forKey:@"buildVersion"];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_quotaReserved];
  [coderCopy encodeObject:v8 forKey:@"quotaReserved"];

  [coderCopy encodeInteger:self->_type forKey:@"backupType"];
  [coderCopy encodeInteger:self->_backupPolicy forKey:@"backupPolicy"];
  [coderCopy encodeObject:self->_requiredProductVersion forKey:@"requiredProductVersion"];
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_estimatedRestoreSize];
  [coderCopy encodeObject:v9 forKey:@"estimatedRestoreSize"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  backupPolicy = self->_backupPolicy;
  BYTE4(v9) = self->_isCompatible;
  LODWORD(v9) = self->_state;
  v6 = [v4 initWithSnapshotID:self->_snapshotID backupUUID:self->_backupUUID snapshotUUID:self->_snapshotUUID commitID:self->_commitID format:self->_format deviceName:self->_deviceName date:self->_date created:self->_created modified:self->_modified state:v9 isCompatible:self->_systemVersion systemVersion:self->_buildVersion buildVersion:self->_quotaReserved quotaReserved:self->_type type:backupPolicy backupPolicy:self->_accountType accountType:?];
  requiredProductVersion = [(MBSnapshot *)self requiredProductVersion];
  [v6 setRequiredProductVersion:requiredProductVersion];

  [v6 setEstimatedRestoreSize:{-[MBSnapshot estimatedRestoreSize](self, "estimatedRestoreSize")}];
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  estimatedRestoreSize = self->_estimatedRestoreSize;
  return [v3 stringWithFormat:@"<%s: %p; snapshotID=%lu, snapshotUUID=%@, commitID=%@, format=%lld, state=%d, type=%ld, backupPolicy=%ld, deviceName=%@, date=%@, systemVersion=%@, buildVersion=%@, isCompatible=%d/%@, quotaReserved=%llu, estimatedRestoreSize=%lld, accountType=%ld>", Name, self, self->_snapshotID, self->_snapshotUUID, self->_commitID, self->_format, self->_state, self->_type, self->_backupPolicy, self->_deviceName, self->_date, self->_systemVersion, self->_buildVersion, self->_isCompatible, self->_requiredProductVersion, self->_quotaReserved, estimatedRestoreSize, self->_accountType];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E696AD98] numberWithLong:self->_snapshotID];
  [dictionary setObject:v5 forKeyedSubscript:@"snapshotID"];

  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_format];
  [dictionary setObject:v6 forKeyedSubscript:@"format"];

  [dictionary setObject:self->_deviceName forKeyedSubscript:@"deviceName"];
  [dictionary setObject:self->_systemVersion forKeyedSubscript:@"systemVersion"];
  [dictionary setObject:self->_buildVersion forKeyedSubscript:@"buildVersion"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  [dictionary setObject:v7 forKeyedSubscript:@"snapshotType"];

  v8 = [v4 stringFromDate:self->_created];
  [dictionary setObject:v8 forKeyedSubscript:@"created"];

  v9 = [v4 stringFromDate:self->_modified];
  [dictionary setObject:v9 forKeyedSubscript:@"modified"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isCompatible];
  [dictionary setObject:v10 forKeyedSubscript:@"isCompatible"];

  [dictionary setObject:self->_backupUUID forKeyedSubscript:@"backupUUID"];
  [dictionary setObject:self->_requiredProductVersion forKeyedSubscript:@"requiredProductVersion"];
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_estimatedRestoreSize];
  [dictionary setObject:v11 forKeyedSubscript:@"estimatedRestoreSize"];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_backupPolicy];
  [dictionary setObject:v12 forKeyedSubscript:@"backupPolicy"];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_accountType];
  [dictionary setObject:v13 forKeyedSubscript:@"accountType"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_quotaReserved];
  [dictionary setObject:v14 forKeyedSubscript:@"quotaReserved"];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_state];
  [dictionary setObject:v15 forKeyedSubscript:@"state"];

  v16 = [v4 stringFromDate:self->_date];
  [dictionary setObject:v16 forKeyedSubscript:@"date"];

  [dictionary setObject:self->_snapshotUUID forKeyedSubscript:@"UUID"];
  [dictionary setObject:self->_commitID forKeyedSubscript:@"commitID"];

  return dictionary;
}

@end