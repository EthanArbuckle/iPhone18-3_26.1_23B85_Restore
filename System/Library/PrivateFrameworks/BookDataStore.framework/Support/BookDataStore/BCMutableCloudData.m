@interface BCMutableCloudData
- (BCCloudDataPrivacyDelegate)privacyDelegate;
- (BCMutableCloudData)init;
- (BCMutableCloudData)initWithCloudData:(id)a3;
- (BCMutableCloudData)initWithCoder:(id)a3;
- (BCMutableCloudData)initWithRecord:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CKRecord)systemFields;
- (NSData)ckSystemFields;
- (id)configuredRecordFromAttributes;
- (id)identifier;
- (id)recordType;
- (id)zoneName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (BCMutableCloudData)initWithCloudData:(id)a3
{
  v4 = a3;
  v5 = [(BCMutableCloudData *)self init];
  if (v5)
  {
    v6 = [v4 privacyDelegate];

    if (!v6)
    {
      v7 = sub_100002660();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001C095C();
      }
    }

    v8 = [v4 privacyDelegate];
    objc_storeWeak(&v5->_privacyDelegate, v8);

    v5->_deletedFlag = [v4 deletedFlag];
    v9 = [v4 modificationDate];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v9;

    v5->_editGeneration = [v4 editGeneration];
    v5->_syncGeneration = [v4 syncGeneration];
    v11 = [v4 systemFields];
    systemFields = v5->_systemFields;
    v5->_systemFields = v11;
  }

  return v5;
}

- (BCMutableCloudData)initWithRecord:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v12.receiver = self;
    v12.super_class = BCMutableCloudData;
    v6 = [(BCMutableCloudData *)&v12 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_systemFields, a3);
      v7->_deletedFlag = 0;
      v8 = [v5 modificationDate];
      modificationDate = v7->_modificationDate;
      v7->_modificationDate = v8;

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
  v3 = [(BCMutableCloudData *)self privacyDelegate];
  if ([v3 establishedSalt])
  {
    v4 = [(BCMutableCloudData *)self identifier];

    if (v4)
    {
      v5 = [(BCMutableCloudData *)self recordType];
      v6 = [(BCMutableCloudData *)self identifier];
      v7 = [v3 recordNameFromRecordType:v5 identifier:v6];

      systemFields = self->_systemFields;
      if (!systemFields || (-[CKRecord recordID](systemFields, "recordID"), v9 = objc_claimAutoreleasedReturnValue(), [v9 recordName], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", v7), v10, v9, (v11 & 1) == 0))
      {
        v12 = [CKRecordZoneID alloc];
        v13 = [(BCMutableCloudData *)self zoneName];
        v14 = [v12 initWithZoneName:v13 ownerName:CKCurrentUserDefaultName];

        v15 = [[CKRecordID alloc] initWithRecordName:v7 zoneID:v14];
        v16 = [CKRecord alloc];
        v17 = [(BCMutableCloudData *)self recordType];
        v18 = [v16 initWithRecordType:v17 recordID:v15];
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
  v3 = [(BCMutableCloudData *)self systemFields];
  v4 = [(BCMutableCloudData *)self identifier];
  v5 = [v3 encryptedValuesByKey];
  [v5 setObject:v4 forKeyedSubscript:@"localRecordIDEncrypted"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    v6 = [(BCMutableCloudData *)self identifier];
    v7 = [v5 identifier];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(BCMutableCloudData *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(BCMutableCloudData *)self identifier];
  [v6 encodeObject:v4 forKey:@"localRecordID"];

  [v6 encodeBool:-[BCMutableCloudData deletedFlag](self forKey:{"deletedFlag"), @"deletedFlag"}];
  v5 = [(BCMutableCloudData *)self modificationDate];
  [v6 encodeObject:v5 forKey:@"modificationDate"];

  [v6 encodeInt64:-[BCMutableCloudData editGeneration](self forKey:{"editGeneration"), @"editGeneration"}];
  [v6 encodeInt64:-[BCMutableCloudData syncGeneration](self forKey:{"syncGeneration"), @"syncGeneration"}];
}

- (BCMutableCloudData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BCMutableCloudData *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localRecordID"];
    localRecordID = v5->_localRecordID;
    v5->_localRecordID = v6;

    v5->_deletedFlag = [v4 decodeBoolForKey:@"deletedFlag"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modificationDate"];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v8;

    v5->_editGeneration = [v4 decodeInt64ForKey:@"editGeneration"];
    v5->_syncGeneration = [v4 decodeInt64ForKey:@"syncGeneration"];
  }

  return v5;
}

- (BCCloudDataPrivacyDelegate)privacyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_privacyDelegate);

  return WeakRetained;
}

@end