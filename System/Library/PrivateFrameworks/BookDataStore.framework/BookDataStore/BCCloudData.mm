@interface BCCloudData
+ (id)localIdentifierFromRecord:(id)record;
+ (id)propertyIDKey;
- (BCCloudDataPrivacyDelegate)privacyDelegate;
- (BOOL)hasValidSalt;
- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt;
- (CKRecord)systemFields;
- (id)configuredRecordFromAttributes;
- (id)identifier;
- (id)mutableCopy;
- (id)recordType;
- (id)zoneName;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)incrementEditGeneration;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
- (void)setPrivacyDelegate:(id)delegate;
- (void)setSystemFields:(id)fields;
@end

@implementation BCCloudData

- (id)mutableCopy
{
  v2 = [BCMutableCloudData alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  dataCopy = data;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(dataCopy, "deletedFlag")}];
  [(NSManagedObject *)self setDifferentNumber:v5 forKey:@"deletedFlag"];

  modificationDate = [dataCopy modificationDate];
  [(NSManagedObject *)self setDifferentDate:modificationDate forKey:@"modificationDate"];

  systemFields = [(BCCloudData *)self systemFields];
  if (!systemFields)
  {
    goto LABEL_12;
  }

  systemFields2 = [dataCopy systemFields];
  recordChangeTag = [systemFields2 recordChangeTag];
  if (recordChangeTag)
  {
    systemFields3 = [(BCCloudData *)self systemFields];
    recordChangeTag2 = [systemFields3 recordChangeTag];
    systemFields4 = [dataCopy systemFields];
    recordChangeTag3 = [systemFields4 recordChangeTag];
    if (![recordChangeTag2 isEqualToString:recordChangeTag3])
    {

      goto LABEL_12;
    }

    v30 = systemFields4;
    v31 = recordChangeTag2;
    v32 = systemFields3;
    v35 = systemFields2;
    [dataCopy systemFields];
  }

  else
  {
    v35 = systemFields2;
    [dataCopy systemFields];
  }
  v14 = ;
  recordID = [v14 recordID];
  if (!recordID)
  {

    if (!recordChangeTag)
    {
      recordType = v35;
      goto LABEL_17;
    }

    recordType = v35;
    v27 = v32;
LABEL_16:

LABEL_17:
    v22 = dataCopy;
    goto LABEL_18;
  }

  v16 = recordID;
  systemFields5 = [dataCopy systemFields];
  recordID2 = [systemFields5 recordID];
  recordName = [recordID2 recordName];
  systemFields6 = [(BCCloudData *)self systemFields];
  recordID3 = [systemFields6 recordID];
  recordName2 = [recordID3 recordName];
  v34 = [recordName isEqualToString:recordName2];

  if (recordChangeTag)
  {
  }

  v22 = dataCopy;
  if ((v34 & 1) == 0)
  {
LABEL_12:
    systemFields7 = [dataCopy systemFields];
    [(BCCloudData *)self setSystemFields:systemFields7];

    privacyDelegate = [(BCCloudData *)self privacyDelegate];
    establishedSalt = [privacyDelegate establishedSalt];

    v22 = dataCopy;
    if (!establishedSalt)
    {
      goto LABEL_18;
    }

    systemFields = [(BCCloudData *)self privacyDelegate];
    recordType = [dataCopy recordType];
    recordChangeTag = [dataCopy identifier];
    v27 = [systemFields recordNameFromRecordType:recordType identifier:recordChangeTag];
    [(BCCloudData *)self setSaltedHashedID:v27];
    goto LABEL_16;
  }

LABEL_18:
}

- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt
{
  saltCopy = salt;
  dateCopy = date;
  systemFields = [(BCCloudData *)self systemFields];
  if (!systemFields)
  {
    systemFields2 = [dateCopy systemFields];
    if (!systemFields2)
    {
      LODWORD(systemFields3) = 1;
LABEL_11:

      goto LABEL_12;
    }
  }

  systemFields3 = [(BCCloudData *)self systemFields];
  if (systemFields3)
  {
    systemFields4 = [dateCopy systemFields];
    recordChangeTag = [systemFields4 recordChangeTag];
    if (!recordChangeTag)
    {

      LODWORD(systemFields3) = 1;
      if (!systemFields)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    v12 = recordChangeTag;
    [(BCCloudData *)self systemFields];
    v13 = v30 = saltCopy;
    [v13 recordChangeTag];
    v14 = v29 = systemFields2;
    systemFields5 = [dateCopy systemFields];
    recordChangeTag2 = [systemFields5 recordChangeTag];
    v28 = [v14 isEqualToString:recordChangeTag2];

    systemFields2 = v29;
    saltCopy = v30;

    LODWORD(systemFields3) = v28;
  }

  if (!systemFields)
  {
    goto LABEL_11;
  }

LABEL_12:

  saltedHashedID = [(BCCloudData *)self saltedHashedID];
  systemFields6 = [dateCopy systemFields];
  recordID = [systemFields6 recordID];
  recordName = [recordID recordName];

  if (saltedHashedID | recordName && (saltedHashedID ? (v21 = recordName == 0) : (v21 = 1), v21 ? (v22 = 0) : (v22 = 1), !saltCopy || v22))
  {
    v23 = [saltedHashedID isEqualToString:recordName];
  }

  else
  {
    v23 = 1;
  }

  deletedFlag = [(BCCloudData *)self deletedFlag];
  v25 = v23 & (deletedFlag ^ [dateCopy deletedFlag] ^ 1);
  if (systemFields3)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  recordCopy = record;
  systemFields = [(BCCloudData *)self systemFields];
  if (!systemFields)
  {
    goto LABEL_3;
  }

  v6 = systemFields;
  systemFields2 = [(BCCloudData *)self systemFields];
  recordChangeTag = [systemFields2 recordChangeTag];
  recordChangeTag2 = [recordCopy recordChangeTag];
  v10 = [recordChangeTag isEqualToString:recordChangeTag2];

  if ((v10 & 1) == 0)
  {
LABEL_3:
    [(BCCloudData *)self setSystemFields:recordCopy];
    recordID = [recordCopy recordID];
    recordName = [recordID recordName];
    [(BCCloudData *)self setSaltedHashedID:recordName];
  }
}

- (BOOL)hasValidSalt
{
  v27 = *MEMORY[0x1E69E9840];
  privacyDelegate = [(BCCloudData *)self privacyDelegate];
  ckSystemFields = [(BCCloudData *)self ckSystemFields];
  if (ckSystemFields && (v5 = ckSystemFields, v6 = [privacyDelegate establishedSalt], v5, v6))
  {
    ckSystemFields2 = [(BCCloudData *)self ckSystemFields];
    v8 = [BCCloudKitDatabaseController decodeRecordFromSystemFields:ckSystemFields2];

    recordType = [(BCCloudData *)self recordType];
    identifier = [(BCCloudData *)self identifier];
    v11 = [privacyDelegate recordNameFromRecordType:recordType identifier:identifier];

    recordID = [v8 recordID];
    recordName = [recordID recordName];
    v14 = [recordName isEqualToString:v11];

    mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
    LODWORD(recordName) = [mEMORY[0x1E698F550] verboseLoggingEnabled];

    if (recordName)
    {
      v16 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        recordID2 = [v8 recordID];
        recordName2 = [recordID2 recordName];
        v21 = 138543874;
        v22 = recordName2;
        v23 = 2114;
        v24 = v11;
        v25 = 1024;
        v26 = v14;
        _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_DEFAULT, "\\Comparing %{public}@ record name %{public}@  hasValidSalt:%{BOOL}d\\"", &v21, 0x1Cu);
      }
    }
  }

  else
  {
    v8 = BDSCloudKitLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E4705594(privacyDelegate, self);
    }

    LOBYTE(v14) = 1;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

- (CKRecord)systemFields
{
  privacyDelegate = [(BCCloudData *)self privacyDelegate];
  ckSystemFields = [(BCCloudData *)self ckSystemFields];

  if (ckSystemFields)
  {
    ckSystemFields2 = [(BCCloudData *)self ckSystemFields];
    ckSystemFields = [BCCloudKitDatabaseController decodeRecordFromSystemFields:ckSystemFields2];

    if ([privacyDelegate establishedSalt])
    {
      recordType = [(BCCloudData *)self recordType];
      identifier = [(BCCloudData *)self identifier];
      v8 = [privacyDelegate recordNameFromRecordType:recordType identifier:identifier];

      recordID = [ckSystemFields recordID];
      recordName = [recordID recordName];
      v11 = [recordName isEqualToString:v8];

      if ((v11 & 1) == 0)
      {
        v12 = BDSCloudKitLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1E470565C(self);
        }

        [(BCCloudData *)self setSystemFields:0];
        ckSystemFields = 0;
      }
    }
  }

  ckSystemFields3 = [(BCCloudData *)self ckSystemFields];

  if (!ckSystemFields3)
  {
    if ([privacyDelegate establishedSalt])
    {
      identifier2 = [(BCCloudData *)self identifier];

      if (identifier2)
      {
        recordType2 = [(BCCloudData *)self recordType];
        identifier3 = [(BCCloudData *)self identifier];
        v17 = [privacyDelegate recordNameFromRecordType:recordType2 identifier:identifier3];

        if (v17)
        {
          saltedHashedID = [(BCCloudData *)self saltedHashedID];

          if (!saltedHashedID)
          {
            [(BCCloudData *)self setSaltedHashedID:v17];
          }

          v19 = objc_alloc(MEMORY[0x1E695BA90]);
          zoneName = [(BCCloudData *)self zoneName];
          v21 = [v19 initWithZoneName:zoneName ownerName:*MEMORY[0x1E695B728]];

          v22 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v17 zoneID:v21];
          v23 = objc_alloc(MEMORY[0x1E695BA60]);
          recordType3 = [(BCCloudData *)self recordType];
          v25 = [v23 initWithRecordType:recordType3 recordID:v22];

          [(BCCloudData *)self setSystemFields:v25];
          [(BCCloudData *)self incrementEditGeneration];

          ckSystemFields = v25;
        }

        else
        {
          v21 = BDSCloudKitLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_1E4705728(self);
          }
        }
      }
    }
  }

  return ckSystemFields;
}

- (void)setPrivacyDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_privacyDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_privacyDelegate, obj);
  }

  saltedHashedID = [(BCCloudData *)self saltedHashedID];
  if (!saltedHashedID)
  {
    saltedHashedID = [(BCCloudData *)self privacyDelegate];
    if ([saltedHashedID establishedSalt])
    {
      identifier = [(BCCloudData *)self identifier];

      if (!identifier)
      {
        goto LABEL_8;
      }

      saltedHashedID = [(BCCloudData *)self privacyDelegate];
      recordType = [(BCCloudData *)self recordType];
      identifier2 = [(BCCloudData *)self identifier];
      v9 = [saltedHashedID recordNameFromRecordType:recordType identifier:identifier2];
      [(BCCloudData *)self setSaltedHashedID:v9];
    }
  }

LABEL_8:
}

- (void)setSystemFields:(id)fields
{
  fieldsCopy = fields;
  v8 = fieldsCopy;
  if (fieldsCopy)
  {
    v5 = [BCCloudKitDatabaseController encodeRecordSystemFields:fieldsCopy];
    [(BCCloudData *)self setCkSystemFields:v5];

    recordID = [v8 recordID];
    recordName = [recordID recordName];
    [(BCCloudData *)self setSaltedHashedID:recordName];
  }

  else
  {
    [(BCCloudData *)self setCkSystemFields:0];
    [(BCCloudData *)self setSaltedHashedID:0];
  }
}

- (void)incrementEditGeneration
{
  v11 = *MEMORY[0x1E69E9840];
  [(BCCloudData *)self setEditGeneration:[(BCCloudData *)self editGeneration]+ 1];
  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v5 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134218242;
      editGeneration = [(BCCloudData *)self editGeneration];
      v9 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "\\Incrementing edit generation to: %lld for %@\\"", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)configuredRecordFromAttributes
{
  systemFields = [(BCCloudData *)self systemFields];
  identifier = [(BCCloudData *)self identifier];
  encryptedValuesByKey = [systemFields encryptedValuesByKey];
  [encryptedValuesByKey setObject:identifier forKeyedSubscript:@"localRecordIDEncrypted"];

  return systemFields;
}

- (id)recordType
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47057B8();
  }

  return &stru_1F5E67610;
}

- (id)identifier
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47057EC();
  }

  return 0;
}

- (id)zoneName
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E4705820();
  }

  return &stru_1F5E67610;
}

+ (id)propertyIDKey
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E4705854();
  }

  return &stru_1F5E67610;
}

+ (id)localIdentifierFromRecord:(id)record
{
  recordCopy = record;
  encryptedValuesByKey = [recordCopy encryptedValuesByKey];
  v5 = [encryptedValuesByKey objectForKeyedSubscript:@"localRecordIDEncrypted"];

  if (!v5)
  {
    objc_opt_class();
    v6 = [recordCopy objectForKey:@"localRecordID"];
    v5 = BUDynamicCast();
  }

  return v5;
}

- (BCCloudDataPrivacyDelegate)privacyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_privacyDelegate);

  return WeakRetained;
}

@end