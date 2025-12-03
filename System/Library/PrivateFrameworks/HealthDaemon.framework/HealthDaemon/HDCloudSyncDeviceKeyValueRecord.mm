@interface HDCloudSyncDeviceKeyValueRecord
+ (BOOL)hasFutureSchema:(id)schema;
+ (BOOL)isDeviceKeyValueRecord:(id)record;
+ (BOOL)isDeviceKeyValueRecordID:(id)d;
+ (id)fieldsForUnprotectedSerialization;
- (BOOL)isEqual:(id)equal;
- (HDCloudSyncDeviceKeyValueRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version;
- (id)deviceContextRecordID;
- (id)deviceKeyValueEntry:(id *)entry;
- (id)initInZone:(id)zone deviceKeyValueEntry:(id)entry deviceContextRecord:(id)record UUID:(id)d;
- (id)syncIdentity;
@end

@implementation HDCloudSyncDeviceKeyValueRecord

+ (BOOL)isDeviceKeyValueRecord:(id)record
{
  recordType = [record recordType];
  v4 = [recordType isEqualToString:@"CloudSyncDeviceKeyValueRecordType"];

  return v4;
}

+ (BOOL)isDeviceKeyValueRecordID:(id)d
{
  recordName = [d recordName];
  v4 = [recordName componentsSeparatedByString:@"/"];

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
  record = [(HDCloudSyncRecord *)self record];
  v3 = [record objectForKeyedSubscript:@"HDCloudSyncDeviceContextRecordReference"];

  recordID = [v3 recordID];

  return recordID;
}

+ (id)fieldsForUnprotectedSerialization
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
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

- (id)initInZone:(id)zone deviceKeyValueEntry:(id)entry deviceContextRecord:(id)record UUID:(id)d
{
  v35 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  recordCopy = record;
  dCopy = d;
  zoneCopy = zone;
  objc_opt_self();
  v14 = MEMORY[0x277CCACA8];
  uUIDString = [dCopy UUIDString];

  v16 = [v14 stringWithFormat:@"%@/%@", @"CloudSyncDeviceKeyValueRecord", uUIDString];

  v17 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v16 zoneID:zoneCopy];
  v18 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncDeviceKeyValueRecordType" recordID:v17];
  v32 = 0;
  v19 = [recordCopy deviceContextWithError:&v32];
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

    selfCopy = 0;
  }

  else
  {
    v23 = [(HDCloudSyncDeviceKeyValueRecord *)self initWithCKRecord:v18 schemaVersion:1];
    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x277CBC620]);
      record = [recordCopy record];
      recordID = [record recordID];
      v27 = [v24 initWithRecordID:recordID action:1];
      [v18 setObject:v27 forKeyedSubscript:@"HDCloudSyncDeviceContextRecordReference"];

      syncIdentity = [v19 syncIdentity];
      codableSyncIdentity = [syncIdentity codableSyncIdentity];
      [(HDCloudSyncCodableDeviceKeyValue *)v23->_underlyingDeviceKeyValue setSyncIdentity:codableSyncIdentity];

      setUnderlyingDeviceKeyValue(v23->_underlyingDeviceKeyValue, entryCopy);
    }

    self = v23;
    selfCopy = self;
  }

  v30 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HDCloudSyncDeviceKeyValueRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncDeviceKeyValueRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:record schemaVersion:version];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  underlyingMessage = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!underlyingMessage)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableDeviceKeyValue);
    underlyingDeviceKeyValue = v5->_underlyingDeviceKeyValue;
    v5->_underlyingDeviceKeyValue = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableDeviceKeyValue alloc] initWithData:underlyingMessage];
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
  syncIdentity = [(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue syncIdentity];
  v9 = 0;
  v3 = [HDSyncIdentity syncIdentityWithCodable:syncIdentity error:&v9];
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

- (id)deviceKeyValueEntry:(id *)entry
{
  if (![(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue hasKey])
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = @"Error extracting device key value storage entry from record due to missing key";
LABEL_14:
    [v14 hk_assignError:entry code:3 format:v15];
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

  syncIdentity = [(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue syncIdentity];
  v6 = [HDSyncIdentity syncIdentityWithCodable:syncIdentity error:entry];

  if (!v6)
  {
LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  if (![(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue hasProtectionCategory])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:entry code:3 format:@"Error extracting device key value storage entry from record due to missing protection category"];
    goto LABEL_19;
  }

  v7 = [HDDeviceKeyValueStorageEntry alloc];
  domain = [(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue domain];
  v9 = [(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue key];
  value = [(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue value];
  v11 = MEMORY[0x277CBEAA8];
  [(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue modificationDate];
  v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
  v13 = [(HDDeviceKeyValueStorageEntry *)v7 initWithDomain:domain key:v9 value:value modificationDate:v12 syncIdentity:v6 category:[(HDCloudSyncCodableDeviceKeyValue *)self->_underlyingDeviceKeyValue protectionCategory]];

LABEL_20:
LABEL_15:

  return v13;
}

+ (BOOL)hasFutureSchema:(id)schema
{
  encryptedValues = [schema encryptedValues];
  v4 = [encryptedValues objectForKeyedSubscript:@"Version"];

  v5 = v4 && [v4 integerValue] > 1;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      underlyingDeviceKeyValue = self->_underlyingDeviceKeyValue;
      underlyingDeviceKeyValue = [(HDCloudSyncDeviceKeyValueRecord *)v5 underlyingDeviceKeyValue];
      if ([(HDCloudSyncCodableDeviceKeyValue *)underlyingDeviceKeyValue isEqual:underlyingDeviceKeyValue])
      {
        record = [(HDCloudSyncRecord *)self record];
        v9 = [record objectForKeyedSubscript:@"HDCloudSyncDeviceContextRecordReference"];
        record2 = [(HDCloudSyncRecord *)v5 record];
        v11 = [record2 objectForKeyedSubscript:@"HDCloudSyncDeviceContextRecordReference"];
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