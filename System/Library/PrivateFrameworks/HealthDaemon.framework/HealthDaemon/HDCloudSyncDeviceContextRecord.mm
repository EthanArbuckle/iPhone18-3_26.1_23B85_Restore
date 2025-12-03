@interface HDCloudSyncDeviceContextRecord
+ (BOOL)hasFutureSchema:(id)schema;
+ (BOOL)isDeviceContextRecord:(id)record;
+ (BOOL)isDeviceContextRecordID:(id)d;
+ (id)hkctl_deviceContextRecordWithRecordID:(id)d zoneID:(id)iD ownerID:(id)ownerID;
+ (id)recordIDWithZoneID:(id)d syncIdentity:(id)identity;
+ (id)unitTest_recordWithRandomIDInZone:(id)zone deviceContext:(id)context;
- (HDCloudSyncDeviceContextRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version;
- (id)deviceContextWithError:(id *)error;
- (id)initInZone:(id)zone deviceContext:(id)context;
@end

@implementation HDCloudSyncDeviceContextRecord

+ (BOOL)isDeviceContextRecord:(id)record
{
  recordType = [record recordType];
  v4 = [recordType isEqualToString:@"CloudSyncDeviceContextRecordType"];

  return v4;
}

+ (BOOL)isDeviceContextRecordID:(id)d
{
  recordName = [d recordName];
  v4 = [recordName componentsSeparatedByString:@"/"];

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

+ (id)recordIDWithZoneID:(id)d syncIdentity:(id)identity
{
  v5 = MEMORY[0x277CCACA8];
  dCopy = d;
  identityString = [identity identityString];
  v8 = [v5 stringWithFormat:@"%@%@%@", @"CloudSyncDeviceContextRecord", @"/", identityString];

  v9 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v8 zoneID:dCopy];

  return v9;
}

- (id)initInZone:(id)zone deviceContext:(id)context
{
  contextCopy = context;
  zoneCopy = zone;
  syncIdentity = [contextCopy syncIdentity];
  v9 = [HDCloudSyncDeviceContextRecord recordIDWithZoneID:zoneCopy syncIdentity:syncIdentity];

  v10 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncDeviceContextRecordType" recordID:v9];
  v11 = [(HDCloudSyncDeviceContextRecord *)self initWithCKRecord:v10 schemaVersion:1];
  v12 = v11;
  if (v11)
  {
    setUnderlyingDeviceContext(v11->_underlyingDeviceContext, contextCopy);
  }

  return v12;
}

- (HDCloudSyncDeviceContextRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncDeviceContextRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:record schemaVersion:version];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  underlyingMessage = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!underlyingMessage)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableDeviceContext);
    underlyingDeviceContext = v5->_underlyingDeviceContext;
    v5->_underlyingDeviceContext = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableDeviceContext alloc] initWithData:underlyingMessage];
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

- (id)deviceContextWithError:(id *)error
{
  if ([(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext hasCurrentOSName])
  {
    if ([(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext hasCurrentOSVersion])
    {
      if ([(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext hasProductTypeName])
      {
        if ([(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext hasModificationDate])
        {
          syncIdentity = [(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext syncIdentity];
          v6 = [HDSyncIdentity syncIdentityWithCodable:syncIdentity error:error];

          if (v6)
          {
            v7 = [HDDeviceContext alloc];
            type = [(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext type];
            productTypeName = [(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext productTypeName];
            currentOSName = [(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext currentOSName];
            currentOSVersion = [(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext currentOSVersion];
            HKNSOperatingSystemVersionFromString();
            [(HDCloudSyncCodableDeviceContext *)self->_underlyingDeviceContext modificationDate];
            v12 = HDDecodeDateForValue();
            v13 = [(HDDeviceContext *)v7 initWithType:type productTypeName:productTypeName currentOSName:currentOSName currentOSVersion:v17 modificationDate:v12 syncIdentity:v6];
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

  [v14 hk_assignError:error code:3 format:v15];
  v13 = 0;
LABEL_12:

  return v13;
}

+ (BOOL)hasFutureSchema:(id)schema
{
  encryptedValues = [schema encryptedValues];
  v4 = [encryptedValues objectForKeyedSubscript:@"Version"];

  v5 = v4 && [v4 integerValue] > 1;
  return v5;
}

+ (id)unitTest_recordWithRandomIDInZone:(id)zone deviceContext:(id)context
{
  v6 = MEMORY[0x277CCACA8];
  v7 = MEMORY[0x277CCAD78];
  contextCopy = context;
  zoneCopy = zone;
  uUID = [v7 UUID];
  uUIDString = [uUID UUIDString];
  v12 = [v6 stringWithFormat:@"%@%@%@", @"CloudSyncDeviceContextRecord", @"/", uUIDString];

  v13 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v12 zoneID:zoneCopy];
  v14 = [self alloc];
  v15 = contextCopy;
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

+ (id)hkctl_deviceContextRecordWithRecordID:(id)d zoneID:(id)iD ownerID:(id)ownerID
{
  v8 = MEMORY[0x277CBC5F8];
  ownerIDCopy = ownerID;
  iDCopy = iD;
  dCopy = d;
  v12 = [[v8 alloc] initWithZoneName:iDCopy ownerName:ownerIDCopy];

  v13 = [self alloc];
  v14 = [HDDeviceContext alloc];
  v15 = [HDSyncIdentity alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  v18 = [(HDSyncIdentity *)v15 initWithHardwareIdentifier:uUID databaseIdentifier:uUID2 instanceDiscriminator:&stru_283BF39C8];
  v19 = [(HDDeviceContext *)v14 initForLocalDeviceWithType:0 syncIdentity:v18];
  v20 = [v13 initInZone:v12 deviceContext:v19];
  record = [v20 record];

  v22 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:dCopy zoneID:v12];
  [record setRecordID:v22];

  return record;
}

@end