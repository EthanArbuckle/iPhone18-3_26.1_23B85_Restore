@interface MBRestoreInfo
- (MBRestoreInfo)initWithCoder:(id)a3;
- (MBRestoreInfo)initWithDictionaryRepresentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setBackupBuildVersion:(id)a3;
- (void)setDate:(id)a3;
- (void)setDeviceBuildVersion:(id)a3;
@end

@implementation MBRestoreInfo

- (MBRestoreInfo)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MBRestoreInfo;
  v5 = [(MBRestoreInfo *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"RestoreDate"];
    v7 = [v6 copy];
    date = v5->_date;
    v5->_date = v7;

    v9 = [v4 objectForKeyedSubscript:@"WasCloudRestore"];
    v5->_wasCloudRestore = [v9 BOOLValue];

    v10 = [v4 objectForKeyedSubscript:@"BackupBuildVersion"];
    v11 = [v10 copy];
    backupBuildVersion = v5->_backupBuildVersion;
    v5->_backupBuildVersion = v11;

    v13 = [v4 objectForKeyedSubscript:@"DeviceBuildVersion"];
    v14 = [v13 copy];
    deviceBuildVersion = v5->_deviceBuildVersion;
    v5->_deviceBuildVersion = v14;
  }

  return v5;
}

- (MBRestoreInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MBRestoreInfo;
  v5 = [(MBRestoreInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v5->_wasCloudRestore = [v4 decodeBoolForKey:@"wasCloudRestore"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backupBuildVersion"];
    backupBuildVersion = v5->_backupBuildVersion;
    v5->_backupBuildVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceBuildVersion"];
    deviceBuildVersion = v5->_deviceBuildVersion;
    v5->_deviceBuildVersion = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"date"];
  [v5 encodeBool:self->_wasCloudRestore forKey:@"wasCloudRestore"];
  [v5 encodeObject:self->_backupBuildVersion forKey:@"backupBuildVersion"];
  [v5 encodeObject:self->_deviceBuildVersion forKey:@"deviceBuildVersion"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MBRestoreInfo);
  [(MBRestoreInfo *)v4 setDate:self->_date];
  [(MBRestoreInfo *)v4 setWasCloudRestore:self->_wasCloudRestore];
  [(MBRestoreInfo *)v4 setDeviceBuildVersion:self->_deviceBuildVersion];
  [(MBRestoreInfo *)v4 setBackupBuildVersion:self->_backupBuildVersion];
  return v4;
}

- (void)setDate:(id)a3
{
  v4 = [a3 copy];
  date = self->_date;
  self->_date = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDeviceBuildVersion:(id)a3
{
  v4 = [a3 copy];
  deviceBuildVersion = self->_deviceBuildVersion;
  self->_deviceBuildVersion = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setBackupBuildVersion:(id)a3
{
  v4 = [a3 copy];
  backupBuildVersion = self->_backupBuildVersion;
  self->_backupBuildVersion = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)dictionaryRepresentation
{
  v3 = MEMORY[0x1E695DF20];
  date = self->_date;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_wasCloudRestore];
  v6 = [v3 dictionaryWithObjectsAndKeys:{date, @"RestoreDate", v5, @"WasCloudRestore", self->_backupBuildVersion, @"BackupBuildVersion", self->_deviceBuildVersion, @"DeviceBuildVersion", 0}];

  return v6;
}

- (id)description
{
  v2 = [(MBRestoreInfo *)self dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

@end