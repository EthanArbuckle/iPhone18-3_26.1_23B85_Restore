@interface HDCloudSyncAttachmentReferenceTombstoneRecord
+ (BOOL)hasFutureSchema:(id)schema;
+ (BOOL)isAttachmentReferenceTombstoneRecord:(id)record;
+ (BOOL)isAttachmentReferenceTombstoneRecordID:(id)d;
+ (id)recordIDForOwnerIdentifier:(id)identifier recordIndex:(int64_t)index zoneID:(id)d;
- (HDCloudSyncAttachmentReferenceTombstoneRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version;
- (HDCloudSyncAttachmentReferenceTombstoneRecord)initWithOwnerIdentifier:(id)identifier recordIndex:(int64_t)index zoneID:(id)d;
- (NSArray)attachmentReferenceTombstones;
- (NSString)ownerIdentifier;
- (int64_t)attachmentReferenceTombstoneCount;
- (int64_t)recordIndex;
- (void)addAttachmentReferenceTombstone:(id)tombstone;
@end

@implementation HDCloudSyncAttachmentReferenceTombstoneRecord

- (HDCloudSyncAttachmentReferenceTombstoneRecord)initWithOwnerIdentifier:(id)identifier recordIndex:(int64_t)index zoneID:(id)d
{
  dCopy = d;
  identifierCopy = identifier;
  v10 = [objc_opt_class() recordIDForOwnerIdentifier:identifierCopy recordIndex:index zoneID:dCopy];

  v11 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncReferenceTombstoneRecord" recordID:v10];
  v12 = [(HDCloudSyncAttachmentReferenceTombstoneRecord *)self initWithCKRecord:v11 schemaVersion:1];

  return v12;
}

- (HDCloudSyncAttachmentReferenceTombstoneRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncAttachmentReferenceTombstoneRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:record schemaVersion:version];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  underlyingMessage = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!underlyingMessage)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableAttachmentReferenceTombstones);
    underlyingReferenceTombstones = v5->_underlyingReferenceTombstones;
    v5->_underlyingReferenceTombstones = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableAttachmentReferenceTombstones alloc] initWithData:underlyingMessage];
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

+ (id)recordIDForOwnerIdentifier:(id)identifier recordIndex:(int64_t)index zoneID:(id)d
{
  v7 = MEMORY[0x277CCACA8];
  dCopy = d;
  index = [v7 stringWithFormat:@"%@%@%@%@%lld", @"CloudSyncReferenceTombstone", @"/", identifier, @"/", index];
  v10 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:index zoneID:dCopy];

  return v10;
}

+ (BOOL)isAttachmentReferenceTombstoneRecordID:(id)d
{
  recordName = [d recordName];
  v4 = [recordName componentsSeparatedByString:@"/"];

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

+ (BOOL)isAttachmentReferenceTombstoneRecord:(id)record
{
  recordType = [record recordType];
  v4 = [recordType isEqualToString:@"CloudSyncReferenceTombstoneRecord"];

  return v4;
}

- (NSString)ownerIdentifier
{
  record = [(HDCloudSyncRecord *)self record];
  recordID = [record recordID];
  recordName = [recordID recordName];
  v5 = [recordName componentsSeparatedByString:@"/"];

  v6 = [v5 objectAtIndexedSubscript:1];

  return v6;
}

- (int64_t)recordIndex
{
  record = [(HDCloudSyncRecord *)self record];
  recordID = [record recordID];
  recordName = [recordID recordName];
  v5 = [recordName componentsSeparatedByString:@"/"];

  v6 = [v5 objectAtIndexedSubscript:2];
  integerValue = [v6 integerValue];

  return integerValue;
}

- (int64_t)attachmentReferenceTombstoneCount
{
  attachmentReferenceTombstones = [(HDCloudSyncCodableAttachmentReferenceTombstones *)self->_underlyingReferenceTombstones attachmentReferenceTombstones];
  v3 = [attachmentReferenceTombstones count];

  return v3;
}

- (NSArray)attachmentReferenceTombstones
{
  attachmentReferenceTombstones = [(HDCloudSyncCodableAttachmentReferenceTombstones *)self->_underlyingReferenceTombstones attachmentReferenceTombstones];
  v3 = [attachmentReferenceTombstones hk_map:&__block_literal_global_158];

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

- (void)addAttachmentReferenceTombstone:(id)tombstone
{
  tombstoneCopy = tombstone;
  v9 = objc_alloc_init(HDCloudSyncCodableAttachmentReferenceTombstone);
  identifier = [tombstoneCopy identifier];
  uUIDString = [identifier UUIDString];
  [(HDCloudSyncCodableAttachmentReferenceTombstone *)v9 setReferenceIdentifier:uUIDString];

  schemaIdentifier = [tombstoneCopy schemaIdentifier];
  [(HDCloudSyncCodableAttachmentReferenceTombstone *)v9 setSchemaIdentifier:schemaIdentifier];

  creationDate = [tombstoneCopy creationDate];

  [creationDate timeIntervalSinceReferenceDate];
  [(HDCloudSyncCodableAttachmentReferenceTombstone *)v9 setCreationDate:?];

  [(HDCloudSyncCodableAttachmentReferenceTombstones *)self->_underlyingReferenceTombstones addAttachmentReferenceTombstone:v9];
}

+ (BOOL)hasFutureSchema:(id)schema
{
  v3 = [schema objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

@end