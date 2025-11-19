@interface HDCloudSyncDeviceContextRecord
+ (BOOL)hasFutureSchema:(id)a3;
+ (BOOL)isDeviceContextRecord:(id)a3;
+ (BOOL)isDeviceContextRecordID:(id)a3;
+ (id)hkctl_deviceContextRecordWithRecordID:(id)a3 zoneID:(id)a4 ownerID:(id)a5;
+ (id)recordIDWithZoneID:(id)a3 syncIdentity:(id)a4;
+ (id)unitTest_recordWithRandomIDInZone:(id)a3 deviceContext:(id)a4;
- (HDCloudSyncDeviceContextRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4;
- (id)deviceContextWithError:(id *)a3;
- (id)initInZone:(id)a3 deviceContext:(id)a4;
@end

@implementation HDCloudSyncDeviceContextRecord

+ (BOOL)isDeviceContextRecord:(id)a3
{
  v3 = [a3 recordType];
  v4 = [v3 isEqualToString:@"CloudSyncDeviceContextRecordType"];

  return v4;
}

+ (BOOL)isDeviceContextRecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [v3 componentsSeparatedByString:@"/"];

  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 isEqualToString:@"CloudSyncDeviceContextRecord"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)recordIDWithZoneID:(id)a3 syncIdentity:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [a4 identityString];
  v8 = [v5 stringWithFormat:@"%@%@%@", @"CloudSyncDeviceContextRecord", @"/", v7];

  v9 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v8 zoneID:v6];

  return v9;
}

- (id)initInZone:(id)a3 deviceContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 syncIdentity];
  v9 = [HDCloudSyncDeviceContextRecord recordIDWithZoneID:v7 syncIdentity:v8];

  v10 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncDeviceContextRecordType" recordID:v9];
  v11 = [(HDCloudSyncDeviceContextRecord *)self initWithCKRecord:v10 schemaVersion:1];
  v12 = v11;
  if (v11)
  {
    setUnderlyingDeviceContext(v11->_underlyingDeviceContext, v6);
  }

  return v12;
}

- (HDCloudSyncDeviceContextRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncDeviceContextRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:a3 schemaVersion:a4];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!v6)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableDeviceContext);
    underlyingDeviceContext = v5->_underlyingDeviceContext;
    v5->_underlyingDeviceContext = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableDeviceContext alloc] initWithData:v6];
  v8 = v5->_underlyingDeviceContext;
  v5->_underlyingDeviceContext = v7;

  if (v5->_underlyingDeviceContext)
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
    _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "Failed to decode underlying device context message.", v14, 2u);
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (id)deviceContextWithError:(id *)a3
{
  if ([(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext hasCurrentOSName])
  {
    if ([(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext hasCurrentOSVersion])
    {
      if ([(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext hasProductTypeName])
      {
        if ([(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext hasModificationDate])
        {
          v5 = [(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext syncIdentity];
          v6 = [HDSyncIdentity syncIdentityWithCodable:v5 error:a3];

          if (v6)
          {
            v7 = [HDDeviceContext alloc];
            v8 = [(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext type];
            v9 = [(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext productTypeName];
            v10 = [(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext currentOSName];
            v11 = [(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext currentOSVersion];
            HKNSOperatingSystemVersionFromString();
            [(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext modificationDate];
            v12 = HDDecodeDateForValue();
            v13 = [(HDDeviceContext *)v7 initWithType:v8 productTypeName:v9 currentOSName:v10 currentOSVersion:v17 modificationDate:v12 syncIdentity:v6];
          }

          else
          {
            v13 = 0;
          }

          goto LABEL_12;
        }

        v14 = MEMORY[0x277CCA9B8];
        v15 = @"Missing modification date";
      }

      else
      {
        v14 = MEMORY[0x277CCA9B8];
        v15 = @"Missing Product type name";
      }
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = @"Missing OS Version";
    }
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = @"Missing OS Name";
  }

  [v14 hk_assignError:a3 code:3 format:v15];
  v13 = 0;
LABEL_12:

  return v13;
}

+ (BOOL)hasFutureSchema:(id)a3
{
  v3 = [a3 encryptedValues];
  v4 = [v3 objectForKeyedSubscript:@"Version"];

  v5 = v4 && [v4 integerValue] > 1;
  return v5;
}

+ (id)unitTest_recordWithRandomIDInZone:(id)a3 deviceContext:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = MEMORY[0x277CCAD78];
  v8 = a4;
  v9 = a3;
  v10 = [v7 UUID];
  v11 = [v10 UUIDString];
  v12 = [v6 stringWithFormat:@"%@%@%@", @"CloudSyncDeviceContextRecord", @"/", v11];

  v13 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v12 zoneID:v9];
  v14 = [a1 alloc];
  v15 = v8;
  if (v14)
  {
    v16 = MEMORY[0x277CBC5A0];
    v17 = v13;
    v18 = [[v16 alloc] initWithRecordType:@"CloudSyncDeviceContextRecordType" recordID:v17];

    v19 = [v14 initWithCKRecord:v18 schemaVersion:1];
    v20 = v19;
    if (v19)
    {
      setUnderlyingDeviceContext(*(v19 + 24), v15);
    }

    v14 = v20;
  }

  return v14;
}

+ (id)hkctl_deviceContextRecordWithRecordID:(id)a3 zoneID:(id)a4 ownerID:(id)a5
{
  v8 = MEMORY[0x277CBC5F8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithZoneName:v10 ownerName:v9];

  v13 = [a1 alloc];
  v14 = [HDDeviceContext alloc];
  v15 = [HDSyncIdentity alloc];
  v16 = [MEMORY[0x277CCAD78] UUID];
  v17 = [MEMORY[0x277CCAD78] UUID];
  v18 = [(HDSyncIdentity *)v15 initWithHardwareIdentifier:v16 databaseIdentifier:v17 instanceDiscriminator:&stru_283BF39C8];
  v19 = [(HDDeviceContext *)v14 initForLocalDeviceWithType:0 syncIdentity:v18];
  v20 = [v13 initInZone:v12 deviceContext:v19];
  v21 = [v20 record];

  v22 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v11 zoneID:v12];
  [v21 setRecordID:v22];

  return v21;
}

@end