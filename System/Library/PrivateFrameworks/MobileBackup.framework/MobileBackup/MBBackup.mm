@interface MBBackup
- (BOOL)isEqual:(id)a3;
- (MBBackup)initWithBackupUDID:(id)a3 backupUUID:(id)a4 deviceClass:(id)a5 productType:(id)a6 hardwareModel:(id)a7 marketingName:(id)a8 snapshots:(id)a9 restoreSystemFiles:(BOOL)a10 isMBSBackup:(BOOL)a11 isBackupEnabled:(BOOL)a12 hasBackupEnabledState:(BOOL)a13;
- (MBBackup)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MBBackup

- (MBBackup)initWithBackupUDID:(id)a3 backupUUID:(id)a4 deviceClass:(id)a5 productType:(id)a6 hardwareModel:(id)a7 marketingName:(id)a8 snapshots:(id)a9 restoreSystemFiles:(BOOL)a10 isMBSBackup:(BOOL)a11 isBackupEnabled:(BOOL)a12 hasBackupEnabledState:(BOOL)a13
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v42.receiver = self;
  v42.super_class = MBBackup;
  v26 = [(MBBackup *)&v42 init];
  if (v26)
  {
    v27 = [v19 copy];
    backupUDID = v26->_backupUDID;
    v26->_backupUDID = v27;

    v29 = [v20 copy];
    backupUUID = v26->_backupUUID;
    v26->_backupUUID = v29;

    v31 = [v21 copy];
    deviceClass = v26->_deviceClass;
    v26->_deviceClass = v31;

    v33 = [v22 copy];
    productType = v26->_productType;
    v26->_productType = v33;

    v35 = [v23 copy];
    hardwareModel = v26->_hardwareModel;
    v26->_hardwareModel = v35;

    v37 = [v24 copy];
    marketingName = v26->_marketingName;
    v26->_marketingName = v37;

    v39 = [v25 copy];
    snapshots = v26->_snapshots;
    v26->_snapshots = v39;

    v26->_restoreSystemFiles = a10;
    v26->_isMBSBackup = a11;
    v26->_isBackupEnabled = a12;
    v26->_hasBackupEnabledState = a13;
  }

  return v26;
}

- (MBBackup)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = MBBackup;
  v5 = [(MBBackup *)&v28 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backupUDID"];
    backupUDID = v5->_backupUDID;
    v5->_backupUDID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backupUUID"];
    backupUUID = v5->_backupUUID;
    v5->_backupUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceClass"];
    deviceClass = v5->_deviceClass;
    v5->_deviceClass = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    productType = v5->_productType;
    v5->_productType = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hardwareModel"];
    hardwareModel = v5->_hardwareModel;
    v5->_hardwareModel = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"marketingName"];
    marketingName = v5->_marketingName;
    v5->_marketingName = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"snapshots"];
    snapshots = v5->_snapshots;
    v5->_snapshots = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"restoreSystemFiles"];
    v5->_restoreSystemFiles = [v23 BOOLValue];

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isMBSBackup"];
    v5->_isMBSBackup = [v24 BOOLValue];

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isBackupEnabled"];
    v5->_isBackupEnabled = [v25 BOOLValue];

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasBackupEnabledState"];
    v5->_hasBackupEnabledState = [v26 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  backupUDID = self->_backupUDID;
  v5 = a3;
  [v5 encodeObject:backupUDID forKey:@"backupUDID"];
  [v5 encodeObject:self->_backupUUID forKey:@"backupUUID"];
  [v5 encodeObject:self->_deviceClass forKey:@"deviceClass"];
  [v5 encodeObject:self->_productType forKey:@"productType"];
  [v5 encodeObject:self->_hardwareModel forKey:@"hardwareModel"];
  [v5 encodeObject:self->_marketingName forKey:@"marketingName"];
  [v5 encodeObject:self->_snapshots forKey:@"snapshots"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_restoreSystemFiles];
  [v5 encodeObject:v6 forKey:@"restoreSystemFiles"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMBSBackup];
  [v5 encodeObject:v7 forKey:@"isMBSBackup"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isBackupEnabled];
  [v5 encodeObject:v8 forKey:@"isBackupEnabled"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasBackupEnabledState];
  [v5 encodeObject:v9 forKey:@"hasBackupEnabledState"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  LODWORD(v6) = *&self->_restoreSystemFiles;
  return [v4 initWithBackupUDID:self->_backupUDID backupUUID:self->_backupUUID deviceClass:self->_deviceClass productType:self->_productType hardwareModel:self->_hardwareModel marketingName:self->_marketingName snapshots:self->_snapshots restoreSystemFiles:v6 isMBSBackup:? isBackupEnabled:? hasBackupEnabledState:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  backupUDID = self->_backupUDID;
  v6 = [v4 backupUDID];
  if ([(NSString *)backupUDID isEqualToString:v6])
  {
    v7 = 1;
  }

  else
  {
    v8 = self->_backupUDID;
    v9 = [v4 backupUUID];
    if ([(NSString *)v8 isEqualToString:v9])
    {
      v7 = 1;
    }

    else
    {
      backupUUID = self->_backupUUID;
      v11 = [v4 backupUUID];
      v7 = [(NSString *)backupUUID isEqualToString:v11];
    }
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  v6 = *&self->_backupUDID;
  return [v3 stringWithFormat:@"<%s: %p; deviceUDID=%@, deviceUUID=%@, device=%@/%@/%@, restoreSysFiles=%d, snapshots=%@>", Name, self, self->_backupUDID, self->_backupUUID, self->_productType, self->_hardwareModel, self->_marketingName, self->_restoreSystemFiles, self->_snapshots];
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_backupUDID forKeyedSubscript:@"UDID"];
  [v3 setObject:self->_backupUUID forKeyedSubscript:@"UUID"];
  [v3 setObject:self->_deviceClass forKeyedSubscript:@"deviceClass"];
  [v3 setObject:self->_productType forKeyedSubscript:@"productType"];
  [v3 setObject:self->_hardwareModel forKeyedSubscript:@"hardwareModel"];
  [v3 setObject:self->_marketingName forKeyedSubscript:@"marketingName"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_restoreSystemFiles];
  [v3 setObject:v4 forKeyedSubscript:@"restoreSystemFiles"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMBSBackup];
  [v3 setObject:v5 forKeyedSubscript:@"isMBSBackup"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isBackupEnabled];
  [v3 setObject:v6 forKeyedSubscript:@"isBackupEnabled"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasBackupEnabledState];
  [v3 setObject:v7 forKeyedSubscript:@"hasBackupEnabledState"];

  v8 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_snapshots;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
        [v8 addObject:v14];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [v3 setObject:v8 forKeyedSubscript:@"snapshots"];
  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

@end