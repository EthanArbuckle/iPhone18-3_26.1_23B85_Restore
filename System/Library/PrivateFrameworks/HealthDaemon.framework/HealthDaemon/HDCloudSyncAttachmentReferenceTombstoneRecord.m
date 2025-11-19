@interface HDCloudSyncAttachmentReferenceTombstoneRecord
+ (BOOL)hasFutureSchema:(id)a3;
+ (BOOL)isAttachmentReferenceTombstoneRecord:(id)a3;
+ (BOOL)isAttachmentReferenceTombstoneRecordID:(id)a3;
+ (id)recordIDForOwnerIdentifier:(id)a3 recordIndex:(int64_t)a4 zoneID:(id)a5;
- (HDCloudSyncAttachmentReferenceTombstoneRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4;
- (HDCloudSyncAttachmentReferenceTombstoneRecord)initWithOwnerIdentifier:(id)a3 recordIndex:(int64_t)a4 zoneID:(id)a5;
- (NSArray)attachmentReferenceTombstones;
- (NSString)ownerIdentifier;
- (int64_t)attachmentReferenceTombstoneCount;
- (int64_t)recordIndex;
- (void)addAttachmentReferenceTombstone:(id)a3;
@end

@implementation HDCloudSyncAttachmentReferenceTombstoneRecord

- (HDCloudSyncAttachmentReferenceTombstoneRecord)initWithOwnerIdentifier:(id)a3 recordIndex:(int64_t)a4 zoneID:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [objc_opt_class() recordIDForOwnerIdentifier:v9 recordIndex:a4 zoneID:v8];

  v11 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncReferenceTombstoneRecord" recordID:v10];
  v12 = [(HDCloudSyncAttachmentReferenceTombstoneRecord *)self initWithCKRecord:v11 schemaVersion:1];

  return v12;
}

- (HDCloudSyncAttachmentReferenceTombstoneRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncAttachmentReferenceTombstoneRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:a3 schemaVersion:a4];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!v6)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableAttachmentReferenceTombstones);
    underlyingReferenceTombstones = v5->_underlyingReferenceTombstones;
    v5->_underlyingReferenceTombstones = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableAttachmentReferenceTombstones alloc] initWithData:v6];
  v8 = v5->_underlyingReferenceTombstones;
  v5->_underlyingReferenceTombstones = v7;

  if (v5->_underlyingReferenceTombstones)
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
    _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "Failed to decode underlying attachment message.", v14, 2u);
  }

  v10 = 0;
LABEL_10:

  return v10;
}

+ (id)recordIDForOwnerIdentifier:(id)a3 recordIndex:(int64_t)a4 zoneID:(id)a5
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  v9 = [v7 stringWithFormat:@"%@%@%@%@%lld", @"CloudSyncReferenceTombstone", @"/", a3, @"/", a4];
  v10 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v9 zoneID:v8];

  return v10;
}

+ (BOOL)isAttachmentReferenceTombstoneRecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [v3 componentsSeparatedByString:@"/"];

  if ([v4 count] == 3)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 isEqualToString:@"CloudSyncReferenceTombstone"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isAttachmentReferenceTombstoneRecord:(id)a3
{
  v3 = [a3 recordType];
  v4 = [v3 isEqualToString:@"CloudSyncReferenceTombstoneRecord"];

  return v4;
}

- (NSString)ownerIdentifier
{
  v2 = [(HDCloudSyncRecord *)self record];
  v3 = [v2 recordID];
  v4 = [v3 recordName];
  v5 = [v4 componentsSeparatedByString:@"/"];

  v6 = [v5 objectAtIndexedSubscript:1];

  return v6;
}

- (int64_t)recordIndex
{
  v2 = [(HDCloudSyncRecord *)self record];
  v3 = [v2 recordID];
  v4 = [v3 recordName];
  v5 = [v4 componentsSeparatedByString:@"/"];

  v6 = [v5 objectAtIndexedSubscript:2];
  v7 = [v6 integerValue];

  return v7;
}

- (int64_t)attachmentReferenceTombstoneCount
{
  v2 = [(HDCloudSyncCodableAttachmentReferenceTombstones *)self->_underlyingReferenceTombstones attachmentReferenceTombstones];
  v3 = [v2 count];

  return v3;
}

- (NSArray)attachmentReferenceTombstones
{
  v2 = [(HDCloudSyncCodableAttachmentReferenceTombstones *)self->_underlyingReferenceTombstones attachmentReferenceTombstones];
  v3 = [v2 hk_map:&__block_literal_global_158];

  return v3;
}

HDAttachmentReference *__78__HDCloudSyncAttachmentReferenceTombstoneRecord_attachmentReferenceTombstones__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HDAttachmentReference alloc];
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v5 = [v2 referenceIdentifier];
  v6 = [v4 initWithUUIDString:v5];
  v7 = +[HDAttachmentReferenceSchemaIdentifier tombstoneSchemaIdentifier];
  [v2 creationDate];

  v8 = HDDecodeDateForValue();
  v9 = [(HDAttachmentReference *)v3 initWithIdentifier:v6 schemaIdentifier:v7 creationDate:v8 options:0 metadata:0 type:1 cloudStatus:1];

  return v9;
}

- (void)addAttachmentReferenceTombstone:(id)a3
{
  v4 = a3;
  v9 = objc_alloc_init(HDCloudSyncCodableAttachmentReferenceTombstone);
  v5 = [v4 identifier];
  v6 = [v5 UUIDString];
  [(HDCloudSyncCodableAttachmentReferenceTombstone *)v9 setReferenceIdentifier:v6];

  v7 = [v4 schemaIdentifier];
  [(HDCloudSyncCodableAttachmentReferenceTombstone *)v9 setSchemaIdentifier:v7];

  v8 = [v4 creationDate];

  [v8 timeIntervalSinceReferenceDate];
  [(HDCloudSyncCodableAttachmentReferenceTombstone *)v9 setCreationDate:?];

  [(HDCloudSyncCodableAttachmentReferenceTombstones *)self->_underlyingReferenceTombstones addAttachmentReferenceTombstone:v9];
}

+ (BOOL)hasFutureSchema:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

@end