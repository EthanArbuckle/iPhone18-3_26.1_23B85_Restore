@interface HDCloudSyncAttachmentManagementRecord
+ (BOOL)hasFutureSchema:(id)a3;
+ (BOOL)isAttachmentManagementRecord:(id)a3;
+ (BOOL)isAttachmentManagementRecordID:(id)a3;
+ (id)recordIDForZoneID:(id)a3;
- (HDCloudSyncAttachmentManagementRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4;
- (NSUUID)UUID;
- (id)initInZoneID:(id)a3;
@end

@implementation HDCloudSyncAttachmentManagementRecord

- (id)initInZoneID:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() recordIDForZoneID:v4];

  v6 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"AttachmentManagementRecord" recordID:v5];
  v7 = [(HDCloudSyncAttachmentManagementRecord *)self initWithCKRecord:v6 schemaVersion:1];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];
    [(HDCloudSyncCodableAttachmentManagementRecord *)v7->_underlyingAttachmentManagementRecord setUuid:v9];
  }

  return v7;
}

- (HDCloudSyncAttachmentManagementRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncAttachmentManagementRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:a3 schemaVersion:a4];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!v6)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableAttachmentManagementRecord);
    underlyingAttachmentManagementRecord = v5->_underlyingAttachmentManagementRecord;
    v5->_underlyingAttachmentManagementRecord = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableAttachmentManagementRecord alloc] initWithData:v6];
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

+ (id)recordIDForZoneID:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 stringWithFormat:@"%@", @"AttachmentManagement"];
  v6 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v5 zoneID:v4];

  return v6;
}

+ (BOOL)isAttachmentManagementRecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [v3 isEqualToString:@"AttachmentManagement"];

  return v4;
}

+ (BOOL)isAttachmentManagementRecord:(id)a3
{
  v3 = [a3 recordType];
  v4 = [v3 isEqualToString:@"AttachmentManagementRecord"];

  return v4;
}

- (NSUUID)UUID
{
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v4 = [(HDCloudSyncCodableAttachmentManagementRecord *)self->_underlyingAttachmentManagementRecord uuid];
  v5 = [v3 initWithUUIDString:v4];

  return v5;
}

+ (BOOL)hasFutureSchema:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

@end