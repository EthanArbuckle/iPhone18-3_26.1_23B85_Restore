@interface HDCloudSyncAttachmentManagementRecord
+ (BOOL)hasFutureSchema:(id)schema;
+ (BOOL)isAttachmentManagementRecord:(id)record;
+ (BOOL)isAttachmentManagementRecordID:(id)d;
+ (id)recordIDForZoneID:(id)d;
- (HDCloudSyncAttachmentManagementRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version;
- (NSUUID)UUID;
- (id)initInZoneID:(id)d;
@end

@implementation HDCloudSyncAttachmentManagementRecord

- (id)initInZoneID:(id)d
{
  dCopy = d;
  v5 = [objc_opt_class() recordIDForZoneID:dCopy];

  v6 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"AttachmentManagementRecord" recordID:v5];
  v7 = [(HDCloudSyncAttachmentManagementRecord *)self initWithCKRecord:v6 schemaVersion:1];
  if (v7)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [(HDCloudSyncCodableAttachmentManagementRecord *)v7->_underlyingAttachmentManagementRecord setUuid:uUIDString];
  }

  return v7;
}

- (HDCloudSyncAttachmentManagementRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncAttachmentManagementRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:record schemaVersion:version];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  underlyingMessage = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!underlyingMessage)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableAttachmentManagementRecord);
    underlyingAttachmentManagementRecord = v5->_underlyingAttachmentManagementRecord;
    v5->_underlyingAttachmentManagementRecord = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableAttachmentManagementRecord alloc] initWithData:underlyingMessage];
  v8 = v5->_underlyingAttachmentManagementRecord;
  v5->_underlyingAttachmentManagementRecord = v7;

  if (v5->_underlyingAttachmentManagementRecord)
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
    _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "Failed to decode underlying attachment management message.", v14, 2u);
  }

  v10 = 0;
LABEL_10:

  return v10;
}

+ (id)recordIDForZoneID:(id)d
{
  v3 = MEMORY[0x277CCACA8];
  dCopy = d;
  v5 = [v3 stringWithFormat:@"%@", @"AttachmentManagement"];
  v6 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v5 zoneID:dCopy];

  return v6;
}

+ (BOOL)isAttachmentManagementRecordID:(id)d
{
  recordName = [d recordName];
  v4 = [recordName isEqualToString:@"AttachmentManagement"];

  return v4;
}

+ (BOOL)isAttachmentManagementRecord:(id)record
{
  recordType = [record recordType];
  v4 = [recordType isEqualToString:@"AttachmentManagementRecord"];

  return v4;
}

- (NSUUID)UUID
{
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  uuid = [(HDCloudSyncCodableAttachmentManagementRecord *)self->_underlyingAttachmentManagementRecord uuid];
  v5 = [v3 initWithUUIDString:uuid];

  return v5;
}

+ (BOOL)hasFutureSchema:(id)schema
{
  v3 = [schema objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

@end