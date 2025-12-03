@interface BCMutableCloudData
- (BCCloudDataPrivacyDelegate)privacyDelegate;
- (BCMutableCloudData)init;
- (BCMutableCloudData)initWithCloudData:(id)data;
- (BCMutableCloudData)initWithCoder:(id)coder;
- (BCMutableCloudData)initWithRecord:(id)record;
- (BOOL)isEqual:(id)equal;
- (CKRecord)systemFields;
- (NSData)ckSystemFields;
- (id)configuredRecordFromAttributes;
- (id)identifier;
- (id)recordType;
- (id)zoneName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)incrementEditGeneration;
@end

@implementation BCMutableCloudData

- (BCMutableCloudData)init
{
  v5.receiver = self;
  v5.super_class = BCMutableCloudData;
  v2 = [(BCMutableCloudData *)&v5 init];
  if (v2 && BUIsRunningTests())
  {
    v3 = +[BCCloudDataNullPrivacyDelegate nullPrivacyDelegate];
    objc_storeWeak(&v2->_privacyDelegate, v3);
  }

  return v2;
}

- (BCMutableCloudData)initWithCloudData:(id)data
{
  dataCopy = data;
  v5 = [(BCMutableCloudData *)self init];
  if (v5)
  {
    privacyDelegate = [dataCopy privacyDelegate];

    if (!privacyDelegate)
    {
      v7 = sub_100002660();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001C095C();
      }
    }

    privacyDelegate2 = [dataCopy privacyDelegate];
    objc_storeWeak(&v5->_privacyDelegate, privacyDelegate2);

    v5->_deletedFlag = [dataCopy deletedFlag];
    modificationDate = [dataCopy modificationDate];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = modificationDate;

    v5->_editGeneration = [dataCopy editGeneration];
    v5->_syncGeneration = [dataCopy syncGeneration];
    systemFields = [dataCopy systemFields];
    systemFields = v5->_systemFields;
    v5->_systemFields = systemFields;
  }

  return v5;
}

- (BCMutableCloudData)initWithRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    v12.receiver = self;
    v12.super_class = BCMutableCloudData;
    v6 = [(BCMutableCloudData *)&v12 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_systemFields, record);
      v7->_deletedFlag = 0;
      modificationDate = [recordCopy modificationDate];
      modificationDate = v7->_modificationDate;
      v7->_modificationDate = modificationDate;

      v7->_editGeneration = 0;
      v7->_syncGeneration = 0;
    }
  }

  else
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0990();
    }

    v7 = 0;
  }

  return v7;
}

- (NSData)ckSystemFields
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C09C4();
  }

  v3 = +[NSData data];

  return v3;
}

- (id)recordType
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C09F8();
  }

  return &stru_10024C800;
}

- (id)identifier
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0A2C();
  }

  return 0;
}

- (id)zoneName
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C08F4();
  }

  return &stru_10024C800;
}

- (CKRecord)systemFields
{
  privacyDelegate = [(BCMutableCloudData *)self privacyDelegate];
  if ([privacyDelegate establishedSalt])
  {
    identifier = [(BCMutableCloudData *)self identifier];

    if (identifier)
    {
      recordType = [(BCMutableCloudData *)self recordType];
      identifier2 = [(BCMutableCloudData *)self identifier];
      v7 = [privacyDelegate recordNameFromRecordType:recordType identifier:identifier2];

      systemFields = self->_systemFields;
      if (!systemFields || (-[CKRecord recordID](systemFields, "recordID"), v9 = objc_claimAutoreleasedReturnValue(), [v9 recordName], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", v7), v10, v9, (v11 & 1) == 0))
      {
        v12 = [CKRecordZoneID alloc];
        zoneName = [(BCMutableCloudData *)self zoneName];
        v14 = [v12 initWithZoneName:zoneName ownerName:CKCurrentUserDefaultName];

        v15 = [[CKRecordID alloc] initWithRecordName:v7 zoneID:v14];
        v16 = [CKRecord alloc];
        recordType2 = [(BCMutableCloudData *)self recordType];
        v18 = [v16 initWithRecordType:recordType2 recordID:v15];
        v19 = self->_systemFields;
        self->_systemFields = v18;

        [(BCMutableCloudData *)self incrementEditGeneration];
      }
    }
  }

  v20 = self->_systemFields;
  v21 = v20;

  return v20;
}

- (void)incrementEditGeneration
{
  v3 = [(BCMutableCloudData *)self editGeneration]+ 1;

  [(BCMutableCloudData *)self setEditGeneration:v3];
}

- (id)configuredRecordFromAttributes
{
  systemFields = [(BCMutableCloudData *)self systemFields];
  identifier = [(BCMutableCloudData *)self identifier];
  encryptedValuesByKey = [systemFields encryptedValuesByKey];
  [encryptedValuesByKey setObject:identifier forKeyedSubscript:@"localRecordIDEncrypted"];

  return systemFields;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = BUDynamicCast();

  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    identifier = [(BCMutableCloudData *)self identifier];
    identifier2 = [v5 identifier];
    v8 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(BCMutableCloudData *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(BCMutableCloudData *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"localRecordID"];

  [coderCopy encodeBool:-[BCMutableCloudData deletedFlag](self forKey:{"deletedFlag"), @"deletedFlag"}];
  modificationDate = [(BCMutableCloudData *)self modificationDate];
  [coderCopy encodeObject:modificationDate forKey:@"modificationDate"];

  [coderCopy encodeInt64:-[BCMutableCloudData editGeneration](self forKey:{"editGeneration"), @"editGeneration"}];
  [coderCopy encodeInt64:-[BCMutableCloudData syncGeneration](self forKey:{"syncGeneration"), @"syncGeneration"}];
}

- (BCMutableCloudData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BCMutableCloudData *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localRecordID"];
    localRecordID = v5->_localRecordID;
    v5->_localRecordID = v6;

    v5->_deletedFlag = [coderCopy decodeBoolForKey:@"deletedFlag"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modificationDate"];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v8;

    v5->_editGeneration = [coderCopy decodeInt64ForKey:@"editGeneration"];
    v5->_syncGeneration = [coderCopy decodeInt64ForKey:@"syncGeneration"];
  }

  return v5;
}

- (BCCloudDataPrivacyDelegate)privacyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_privacyDelegate);

  return WeakRetained;
}

@end