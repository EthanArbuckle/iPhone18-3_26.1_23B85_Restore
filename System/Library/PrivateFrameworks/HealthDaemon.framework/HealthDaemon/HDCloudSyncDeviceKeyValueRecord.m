@interface HDCloudSyncDeviceKeyValueRecord
+ (BOOL)hasFutureSchema:(id)a3;
+ (BOOL)isDeviceKeyValueRecord:(id)a3;
+ (BOOL)isDeviceKeyValueRecordID:(id)a3;
+ (id)fieldsForUnprotectedSerialization;
- (BOOL)isEqual:(id)a3;
- (HDCloudSyncDeviceKeyValueRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4;
- (id)deviceContextRecordID;
- (id)deviceKeyValueEntry:(id *)a3;
- (id)initInZone:(id)a3 deviceKeyValueEntry:(id)a4 deviceContextRecord:(id)a5 UUID:(id)a6;
- (id)syncIdentity;
@end

@implementation HDCloudSyncDeviceKeyValueRecord

+ (BOOL)isDeviceKeyValueRecord:(id)a3
{
  v3 = [a3 recordType];
  v4 = [v3 isEqualToString:@"CloudSyncDeviceKeyValueRecordType"];

  return v4;
}

+ (BOOL)isDeviceKeyValueRecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [v3 componentsSeparatedByString:@"/"];

  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 isEqualToString:@"CloudSyncDeviceKeyValueRecord"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)deviceContextRecordID
{
  v2 = [(HDCloudSyncRecord *)self record];
  v3 = [v2 objectForKeyedSubscript:@"HDCloudSyncDeviceContextRecordReference"];

  v4 = [v3 recordID];

  return v4;
}

+ (id)fieldsForUnprotectedSerialization
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___HDCloudSyncDeviceKeyValueRecord;
  v2 = objc_msgSendSuper2(&v9, sel_fieldsForUnprotectedSerialization);
  v10 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v4 = [HDCloudSyncSerializedField fieldForKey:@"HDCloudSyncDeviceContextRecordReference" classes:v3 encrypted:0];
  v11[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6 = [v2 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)initInZone:(id)a3 deviceKeyValueEntry:(id)a4 deviceContextRecord:(id)a5 UUID:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  objc_opt_self();
  v14 = MEMORY[0x277CCACA8];
  v15 = [v12 UUIDString];

  v16 = [v14 stringWithFormat:@"%@/%@", @"CloudSyncDeviceKeyValueRecord", v15];

  v17 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v16 zoneID:v13];
  v18 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncDeviceKeyValueRecordType" recordID:v17];
  v32 = 0;
  v19 = [v11 deviceContextWithError:&v32];
  v20 = v32;
  if (v20)
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v34 = v20;
      _os_log_fault_impl(&dword_228986000, v21, OS_LOG_TYPE_FAULT, "Error %@ fetching device context from record", buf, 0xCu);
    }

    v22 = 0;
  }

  else
  {
    v23 = [(HDCloudSyncDeviceKeyValueRecord *)self initWithCKRecord:v18 schemaVersion:1];
    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x277CBC620]);
      v25 = [v11 record];
      v26 = [v25 recordID];
      v27 = [v24 initWithRecordID:v26 action:1];
      [v18 setObject:v27 forKeyedSubscript:@"HDCloudSyncDeviceContextRecordReference"];

      v28 = [v19 syncIdentity];
      v29 = [v28 codableSyncIdentity];
      [(HDCloudSyncCodableDeviceKeyValue *)v23->_underlyingDeviceKeyValue setSyncIdentity:v29];

      setUnderlyingDeviceKeyValue(v23->_underlyingDeviceKeyValue, v10);
    }

    self = v23;
    v22 = self;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v22;
}

- (HDCloudSyncDeviceKeyValueRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncDeviceKeyValueRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:a3 schemaVersion:a4];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!v6)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableDeviceKeyValue);
    underlyingDeviceKeyValue = v5->_underlyingDeviceKeyValue;
    v5->_underlyingDeviceKeyValue = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableDeviceKeyValue alloc] initWithData:v6];
  v8 = v5->_underlyingDeviceKeyValue;
  v5->_underlyingDeviceKeyValue = v7;

  if (v5->_underlyingDeviceKeyValue)
  {
LABEL_8:

LABEL_9:
    v10 = v5;
    goto LABEL_10;
  }

  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
  {
    v14[0] = 0;
    _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "Failed to decode underlying key value entry message.", v14, 2u);
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (id)syncIdentity
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue syncIdentity];
  v9 = 0;
  v3 = [HDSyncIdentity syncIdentityWithCodable:v2 error:&v9];
  v4 = v9;

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_fault_impl(&dword_228986000, v6, OS_LOG_TYPE_FAULT, "Failed to extract sync identity from codable %@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)deviceKeyValueEntry:(id *)a3
{
  if (![(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue hasKey])
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = @"Error extracting device key value storage entry from record due to missing key";
LABEL_14:
    [v14 hk_assignError:a3 code:3 format:v15];
    v13 = 0;
    goto LABEL_15;
  }

  if (![(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue hasValue])
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = @"Error extracting device key value storage entry from record due to missing value";
    goto LABEL_14;
  }

  if (![(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue hasDomain])
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = @"Error extracting device key value storage entry from record due to missing domain";
    goto LABEL_14;
  }

  if (![(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue hasModificationDate])
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = @"Error extracting device key value storage entry from record due to missing modification date";
    goto LABEL_14;
  }

  if (![(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue hasSyncIdentity])
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = @"Error extracting device key value storage entry from record due to missing sync identity";
    goto LABEL_14;
  }

  v5 = [(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue syncIdentity];
  v6 = [HDSyncIdentity syncIdentityWithCodable:v5 error:a3];

  if (!v6)
  {
LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  if (![(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue hasProtectionCategory])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Error extracting device key value storage entry from record due to missing protection category"];
    goto LABEL_19;
  }

  v7 = [HDDeviceKeyValueStorageEntry alloc];
  v8 = [(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue domain];
  v9 = [(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue key];
  v10 = [(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue value];
  v11 = MEMORY[0x277CBEAA8];
  [(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue modificationDate];
  v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
  v13 = [(HDDeviceKeyValueStorageEntry *)v7 initWithDomain:v8 key:v9 value:v10 modificationDate:v12 syncIdentity:v6 category:[(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue protectionCategory]];

LABEL_20:
LABEL_15:

  return v13;
}

+ (BOOL)hasFutureSchema:(id)a3
{
  v3 = [a3 encryptedValues];
  v4 = [v3 objectForKeyedSubscript:@"Version"];

  v5 = v4 && [v4 integerValue] > 1;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      underlyingDeviceKeyValue = self->_underlyingDeviceKeyValue;
      v7 = [(HDCloudSyncDeviceKeyValueRecord *)v5 underlyingDeviceKeyValue];
      if ([(HDCloudSyncCodableDeviceKeyValue *)underlyingDeviceKeyValue isEqual:v7])
      {
        v8 = [(HDCloudSyncRecord *)self record];
        v9 = [v8 objectForKeyedSubscript:@"HDCloudSyncDeviceContextRecordReference"];
        v10 = [(HDCloudSyncRecord *)v5 record];
        v11 = [v10 objectForKeyedSubscript:@"HDCloudSyncDeviceContextRecordReference"];
        v12 = [v9 isEqual:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end