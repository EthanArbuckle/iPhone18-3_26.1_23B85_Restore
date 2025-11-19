@interface MBSnapshot
- (MBSnapshot)initWithCoder:(id)a3;
- (MBSnapshot)initWithSnapshotID:(unint64_t)a3 backupUUID:(id)a4 snapshotUUID:(id)a5 commitID:(id)a6 format:(int64_t)a7 deviceName:(id)a8 date:(id)a9 created:(id)a10 modified:(id)a11 state:(int)a12 isCompatible:(BOOL)a13 systemVersion:(id)a14 buildVersion:(id)a15 quotaReserved:(unint64_t)a16 type:(int64_t)a17 backupPolicy:(int64_t)a18 accountType:(int64_t)a19;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MBSnapshot

- (MBSnapshot)initWithSnapshotID:(unint64_t)a3 backupUUID:(id)a4 snapshotUUID:(id)a5 commitID:(id)a6 format:(int64_t)a7 deviceName:(id)a8 date:(id)a9 created:(id)a10 modified:(id)a11 state:(int)a12 isCompatible:(BOOL)a13 systemVersion:(id)a14 buildVersion:(id)a15 quotaReserved:(unint64_t)a16 type:(int64_t)a17 backupPolicy:(int64_t)a18 accountType:(int64_t)a19
{
  v52 = a4;
  v24 = a5;
  v51 = a6;
  v25 = a8;
  v26 = a9;
  v27 = a10;
  v28 = a11;
  v29 = a14;
  v30 = a15;
  v53.receiver = self;
  v53.super_class = MBSnapshot;
  v31 = [(MBSnapshot *)&v53 init];
  v32 = v31;
  if (v31)
  {
    v31->_snapshotID = a3;
    v33 = [v24 copy];
    snapshotUUID = v32->_snapshotUUID;
    v32->_snapshotUUID = v33;

    v35 = [v52 copy];
    backupUUID = v32->_backupUUID;
    v32->_backupUUID = v35;

    objc_storeStrong(&v32->_commitID, a6);
    v32->_format = a7;
    v37 = [v25 copy];
    deviceName = v32->_deviceName;
    v32->_deviceName = v37;

    v39 = [v26 copy];
    date = v32->_date;
    v32->_date = v39;

    v41 = [v27 copy];
    created = v32->_created;
    v32->_created = v41;

    v43 = [v28 copy];
    modified = v32->_modified;
    v32->_modified = v43;

    v32->_state = a12;
    v32->_isCompatible = a13;
    v45 = [v29 copy];
    systemVersion = v32->_systemVersion;
    v32->_systemVersion = v45;

    v47 = [v30 copy];
    buildVersion = v32->_buildVersion;
    v32->_buildVersion = v47;

    v32->_type = a17;
    v32->_backupPolicy = a18;
    v32->_quotaReserved = a16;
    v32->_estimatedRestoreSize = -1;
    v32->_accountType = a19;
  }

  return v32;
}

- (MBSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = MBSnapshot;
  v5 = [(MBSnapshot *)&v30 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"snapshotID"];
    v5->_snapshotID = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"snapshotUUID"];
    snapshotUUID = v5->_snapshotUUID;
    v5->_snapshotUUID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backupUUID"];
    backupUUID = v5->_backupUUID;
    v5->_backupUUID = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"commitID"];
    commitID = v5->_commitID;
    v5->_commitID = v11;

    v5->_format = [v4 decodeInt64ForKey:@"format"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"created"];
    created = v5->_created;
    v5->_created = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modified"];
    modified = v5->_modified;
    v5->_modified = v19;

    v5->_state = [v4 decodeIntForKey:@"state"];
    v5->_isCompatible = [v4 decodeBoolForKey:@"isCompatible"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemVersion"];
    systemVersion = v5->_systemVersion;
    v5->_systemVersion = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buildVersion"];
    buildVersion = v5->_buildVersion;
    v5->_buildVersion = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"quotaReserved"];
    v5->_quotaReserved = [v25 longLongValue];

    v5->_type = [v4 decodeIntegerForKey:@"backupType"];
    v5->_backupPolicy = [v4 decodeIntegerForKey:@"backupPolicy"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requiredProductVersion"];
    requiredProductVersion = v5->_requiredProductVersion;
    v5->_requiredProductVersion = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"estimatedRestoreSize"];
    v5->_estimatedRestoreSize = [v28 longLongValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  snapshotID = self->_snapshotID;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInteger:snapshotID];
  [v6 encodeObject:v7 forKey:@"snapshotID"];

  [v6 encodeObject:self->_snapshotUUID forKey:@"snapshotUUID"];
  [v6 encodeObject:self->_backupUUID forKey:@"backupUUID"];
  [v6 encodeObject:self->_commitID forKey:@"commitID"];
  [v6 encodeInt64:self->_format forKey:@"format"];
  [v6 encodeObject:self->_deviceName forKey:@"deviceName"];
  [v6 encodeObject:self->_date forKey:@"date"];
  [v6 encodeObject:self->_created forKey:@"created"];
  [v6 encodeObject:self->_modified forKey:@"modified"];
  [v6 encodeInt:self->_state forKey:@"state"];
  [v6 encodeBool:self->_isCompatible forKey:@"isCompatible"];
  [v6 encodeObject:self->_systemVersion forKey:@"systemVersion"];
  [v6 encodeObject:self->_buildVersion forKey:@"buildVersion"];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_quotaReserved];
  [v6 encodeObject:v8 forKey:@"quotaReserved"];

  [v6 encodeInteger:self->_type forKey:@"backupType"];
  [v6 encodeInteger:self->_backupPolicy forKey:@"backupPolicy"];
  [v6 encodeObject:self->_requiredProductVersion forKey:@"requiredProductVersion"];
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_estimatedRestoreSize];
  [v6 encodeObject:v9 forKey:@"estimatedRestoreSize"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  backupPolicy = self->_backupPolicy;
  BYTE4(v9) = self->_isCompatible;
  LODWORD(v9) = self->_state;
  v6 = [v4 initWithSnapshotID:self->_snapshotID backupUUID:self->_backupUUID snapshotUUID:self->_snapshotUUID commitID:self->_commitID format:self->_format deviceName:self->_deviceName date:self->_date created:self->_created modified:self->_modified state:v9 isCompatible:self->_systemVersion systemVersion:self->_buildVersion buildVersion:self->_quotaReserved quotaReserved:self->_type type:backupPolicy backupPolicy:self->_accountType accountType:?];
  v7 = [(MBSnapshot *)self requiredProductVersion];
  [v6 setRequiredProductVersion:v7];

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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E696AD98] numberWithLong:self->_snapshotID];
  [v3 setObject:v5 forKeyedSubscript:@"snapshotID"];

  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_format];
  [v3 setObject:v6 forKeyedSubscript:@"format"];

  [v3 setObject:self->_deviceName forKeyedSubscript:@"deviceName"];
  [v3 setObject:self->_systemVersion forKeyedSubscript:@"systemVersion"];
  [v3 setObject:self->_buildVersion forKeyedSubscript:@"buildVersion"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  [v3 setObject:v7 forKeyedSubscript:@"snapshotType"];

  v8 = [v4 stringFromDate:self->_created];
  [v3 setObject:v8 forKeyedSubscript:@"created"];

  v9 = [v4 stringFromDate:self->_modified];
  [v3 setObject:v9 forKeyedSubscript:@"modified"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isCompatible];
  [v3 setObject:v10 forKeyedSubscript:@"isCompatible"];

  [v3 setObject:self->_backupUUID forKeyedSubscript:@"backupUUID"];
  [v3 setObject:self->_requiredProductVersion forKeyedSubscript:@"requiredProductVersion"];
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_estimatedRestoreSize];
  [v3 setObject:v11 forKeyedSubscript:@"estimatedRestoreSize"];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_backupPolicy];
  [v3 setObject:v12 forKeyedSubscript:@"backupPolicy"];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_accountType];
  [v3 setObject:v13 forKeyedSubscript:@"accountType"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_quotaReserved];
  [v3 setObject:v14 forKeyedSubscript:@"quotaReserved"];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_state];
  [v3 setObject:v15 forKeyedSubscript:@"state"];

  v16 = [v4 stringFromDate:self->_date];
  [v3 setObject:v16 forKeyedSubscript:@"date"];

  [v3 setObject:self->_snapshotUUID forKeyedSubscript:@"UUID"];
  [v3 setObject:self->_commitID forKeyedSubscript:@"commitID"];

  return v3;
}

@end