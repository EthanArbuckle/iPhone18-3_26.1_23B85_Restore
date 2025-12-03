@interface MBBackup
- (BOOL)isEqual:(id)equal;
- (MBBackup)initWithBackupUDID:(id)d backupUUID:(id)iD deviceClass:(id)class productType:(id)type hardwareModel:(id)model marketingName:(id)name snapshots:(id)snapshots restoreSystemFiles:(BOOL)self0 isMBSBackup:(BOOL)self1 isBackupEnabled:(BOOL)self2 hasBackupEnabledState:(BOOL)self3;
- (MBBackup)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MBBackup

- (MBBackup)initWithBackupUDID:(id)d backupUUID:(id)iD deviceClass:(id)class productType:(id)type hardwareModel:(id)model marketingName:(id)name snapshots:(id)snapshots restoreSystemFiles:(BOOL)self0 isMBSBackup:(BOOL)self1 isBackupEnabled:(BOOL)self2 hasBackupEnabledState:(BOOL)self3
{
  dCopy = d;
  iDCopy = iD;
  classCopy = class;
  typeCopy = type;
  modelCopy = model;
  nameCopy = name;
  snapshotsCopy = snapshots;
  v42.receiver = self;
  v42.super_class = MBBackup;
  v26 = [(MBBackup *)&v42 init];
  if (v26)
  {
    v27 = [dCopy copy];
    backupUDID = v26->_backupUDID;
    v26->_backupUDID = v27;

    v29 = [iDCopy copy];
    backupUUID = v26->_backupUUID;
    v26->_backupUUID = v29;

    v31 = [classCopy copy];
    deviceClass = v26->_deviceClass;
    v26->_deviceClass = v31;

    v33 = [typeCopy copy];
    productType = v26->_productType;
    v26->_productType = v33;

    v35 = [modelCopy copy];
    hardwareModel = v26->_hardwareModel;
    v26->_hardwareModel = v35;

    v37 = [nameCopy copy];
    marketingName = v26->_marketingName;
    v26->_marketingName = v37;

    v39 = [snapshotsCopy copy];
    snapshots = v26->_snapshots;
    v26->_snapshots = v39;

    v26->_restoreSystemFiles = files;
    v26->_isMBSBackup = backup;
    v26->_isBackupEnabled = enabled;
    v26->_hasBackupEnabledState = state;
  }

  return v26;
}

- (MBBackup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = MBBackup;
  v5 = [(MBBackup *)&v28 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backupUDID"];
    backupUDID = v5->_backupUDID;
    v5->_backupUDID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backupUUID"];
    backupUUID = v5->_backupUUID;
    v5->_backupUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceClass"];
    deviceClass = v5->_deviceClass;
    v5->_deviceClass = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    productType = v5->_productType;
    v5->_productType = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hardwareModel"];
    hardwareModel = v5->_hardwareModel;
    v5->_hardwareModel = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"marketingName"];
    marketingName = v5->_marketingName;
    v5->_marketingName = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"snapshots"];
    snapshots = v5->_snapshots;
    v5->_snapshots = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"restoreSystemFiles"];
    v5->_restoreSystemFiles = [v23 BOOLValue];

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isMBSBackup"];
    v5->_isMBSBackup = [v24 BOOLValue];

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isBackupEnabled"];
    v5->_isBackupEnabled = [v25 BOOLValue];

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasBackupEnabledState"];
    v5->_hasBackupEnabledState = [v26 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  backupUDID = self->_backupUDID;
  coderCopy = coder;
  [coderCopy encodeObject:backupUDID forKey:@"backupUDID"];
  [coderCopy encodeObject:self->_backupUUID forKey:@"backupUUID"];
  [coderCopy encodeObject:self->_deviceClass forKey:@"deviceClass"];
  [coderCopy encodeObject:self->_productType forKey:@"productType"];
  [coderCopy encodeObject:self->_hardwareModel forKey:@"hardwareModel"];
  [coderCopy encodeObject:self->_marketingName forKey:@"marketingName"];
  [coderCopy encodeObject:self->_snapshots forKey:@"snapshots"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_restoreSystemFiles];
  [coderCopy encodeObject:v6 forKey:@"restoreSystemFiles"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMBSBackup];
  [coderCopy encodeObject:v7 forKey:@"isMBSBackup"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isBackupEnabled];
  [coderCopy encodeObject:v8 forKey:@"isBackupEnabled"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasBackupEnabledState];
  [coderCopy encodeObject:v9 forKey:@"hasBackupEnabledState"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  LODWORD(v6) = *&self->_restoreSystemFiles;
  return [v4 initWithBackupUDID:self->_backupUDID backupUUID:self->_backupUUID deviceClass:self->_deviceClass productType:self->_productType hardwareModel:self->_hardwareModel marketingName:self->_marketingName snapshots:self->_snapshots restoreSystemFiles:v6 isMBSBackup:? isBackupEnabled:? hasBackupEnabledState:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  backupUDID = self->_backupUDID;
  backupUDID = [equalCopy backupUDID];
  if ([(NSString *)backupUDID isEqualToString:backupUDID])
  {
    v7 = 1;
  }

  else
  {
    v8 = self->_backupUDID;
    backupUUID = [equalCopy backupUUID];
    if ([(NSString *)v8 isEqualToString:backupUUID])
    {
      v7 = 1;
    }

    else
    {
      backupUUID = self->_backupUUID;
      backupUUID2 = [equalCopy backupUUID];
      v7 = [(NSString *)backupUUID isEqualToString:backupUUID2];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_backupUDID forKeyedSubscript:@"UDID"];
  [dictionary setObject:self->_backupUUID forKeyedSubscript:@"UUID"];
  [dictionary setObject:self->_deviceClass forKeyedSubscript:@"deviceClass"];
  [dictionary setObject:self->_productType forKeyedSubscript:@"productType"];
  [dictionary setObject:self->_hardwareModel forKeyedSubscript:@"hardwareModel"];
  [dictionary setObject:self->_marketingName forKeyedSubscript:@"marketingName"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_restoreSystemFiles];
  [dictionary setObject:v4 forKeyedSubscript:@"restoreSystemFiles"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMBSBackup];
  [dictionary setObject:v5 forKeyedSubscript:@"isMBSBackup"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isBackupEnabled];
  [dictionary setObject:v6 forKeyedSubscript:@"isBackupEnabled"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasBackupEnabledState];
  [dictionary setObject:v7 forKeyedSubscript:@"hasBackupEnabledState"];

  array = [MEMORY[0x1E695DF70] array];
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

        dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
        [array addObject:dictionaryRepresentation];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [dictionary setObject:array forKeyedSubscript:@"snapshots"];
  v15 = *MEMORY[0x1E69E9840];

  return dictionary;
}

@end