@interface HDCloudSyncAttachmentReferenceRecord
+ (BOOL)hasFutureSchema:(id)a3;
+ (BOOL)isAttachmentReferenceRecord:(id)a3;
+ (BOOL)isAttachmentReferenceRecordID:(id)a3;
+ (id)recordIDForReferenceIdentifier:(id)a3 zoneID:(id)a4;
- (HDAttachmentReference)attachmentReference;
- (HDCloudSyncAttachmentReferenceRecord)initWithAttachmentReference:(id)a3 zoneID:(id)a4;
- (HDCloudSyncAttachmentReferenceRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4;
- (NSString)referenceIdentifier;
@end

@implementation HDCloudSyncAttachmentReferenceRecord

- (HDCloudSyncAttachmentReferenceRecord)initWithAttachmentReference:(id)a3 zoneID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v6 identifier];
  v10 = [v9 UUIDString];
  v11 = [v8 recordIDForReferenceIdentifier:v10 zoneID:v7];

  v12 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncAttachmentReferenceRecord" recordID:v11];
  v13 = [(HDCloudSyncAttachmentReferenceRecord *)self initWithCKRecord:v12 schemaVersion:1];
  if (v13)
  {
    v14 = [v6 objectIdentifier];
    [(HDCloudSyncCodableAttachmentReference *)v13->_underlyingReference setObjectIdentifier:v14];

    v15 = [v6 schemaIdentifier];
    [(HDCloudSyncCodableAttachmentReference *)v13->_underlyingReference setSchemaIdentifier:v15];

    -[HDCloudSyncCodableAttachmentReference setSchemaVersion:](v13->_underlyingReference, "setSchemaVersion:", [v6 schemaVersion]);
    v16 = [v6 attachmentIdentifier];
    v17 = [v16 UUIDString];
    [(HDCloudSyncCodableAttachmentReference *)v13->_underlyingReference setAttachmentIdentifier:v17];

    -[HDCloudSyncCodableAttachmentReference setType:](v13->_underlyingReference, "setType:", [v6 type]);
    v18 = [v6 creationDate];
    [v18 timeIntervalSinceReferenceDate];
    [(HDCloudSyncCodableAttachmentReference *)v13->_underlyingReference setCreationDate:?];

    -[HDCloudSyncCodableAttachmentReference setOptions:](v13->_underlyingReference, "setOptions:", [v6 options]);
    v19 = [v6 metadata];
    v20 = [v19 hk_codableMetadata];
    v21 = [v20 data];
    [(HDCloudSyncCodableAttachmentReference *)v13->_underlyingReference setMetadata:v21];
  }

  return v13;
}

- (HDCloudSyncAttachmentReferenceRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncAttachmentReferenceRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:a3 schemaVersion:a4];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!v6)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableAttachmentReference);
    underlyingReference = v5->_underlyingReference;
    v5->_underlyingReference = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableAttachmentReference alloc] initWithData:v6];
  v8 = v5->_underlyingReference;
  v5->_underlyingReference = v7;

  if (v5->_underlyingReference)
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
    _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "Failed to decode underlying reference message.", v14, 2u);
  }

  v10 = 0;
LABEL_10:

  return v10;
}

+ (id)recordIDForReferenceIdentifier:(id)a3 zoneID:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  v7 = [v5 stringWithFormat:@"%@%@%@", @"CloudSyncAttachmentReference", @"/", a3];
  v8 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v7 zoneID:v6];

  return v8;
}

+ (BOOL)isAttachmentReferenceRecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [v3 componentsSeparatedByString:@"/"];

  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 isEqualToString:@"CloudSyncAttachmentReference"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isAttachmentReferenceRecord:(id)a3
{
  v3 = [a3 recordType];
  v4 = [v3 isEqualToString:@"CloudSyncAttachmentReferenceRecord"];

  return v4;
}

- (HDAttachmentReference)attachmentReference
{
  v3 = [(HDCloudSyncCodableAttachmentReference *)self->_underlyingReference schemaVersion];
  v4 = [(HDCloudSyncCodableAttachmentReference *)self->_underlyingReference type];
  if (v3 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  if (!v4)
  {
    v3 = v5;
  }

  v6 = [HDAttachmentReferenceSchemaIdentifier alloc];
  v7 = [(HDCloudSyncCodableAttachmentReference *)self->_underlyingReference schemaIdentifier];
  v8 = [(HDCloudSyncCodableAttachmentReference *)self->_underlyingReference objectIdentifier];
  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  v10 = [(HDCloudSyncCodableAttachmentReference *)self->_underlyingReference attachmentIdentifier];
  v11 = [v9 initWithUUIDString:v10];
  v12 = [(HDAttachmentReferenceSchemaIdentifier *)v6 initWithSchemaIdentifier:v7 schemaVersion:v3 objectIdentifier:v8 attachmentIdentifier:v11];

  v13 = [HDAttachmentReference alloc];
  v14 = objc_alloc(MEMORY[0x277CCAD78]);
  v15 = [(HDCloudSyncAttachmentReferenceRecord *)self referenceIdentifier];
  v16 = [v14 initWithUUIDString:v15];
  [(HDCloudSyncCodableAttachmentReference *)self->_underlyingReference creationDate];
  v17 = HDDecodeDateForValue();
  v18 = [(HDCloudSyncCodableAttachmentReference *)self->_underlyingReference options];
  v19 = [(HDCloudSyncCodableAttachmentReference *)self->_underlyingReference metadata];
  v20 = [HDCodableMetadataDictionary decodeMetadataFromData:v19];
  v21 = [(HDAttachmentReference *)v13 initWithIdentifier:v16 schemaIdentifier:v12 creationDate:v17 options:v18 metadata:v20 type:[(HDCloudSyncCodableAttachmentReference *)self->_underlyingReference type] cloudStatus:1];

  return v21;
}

- (NSString)referenceIdentifier
{
  v2 = [(HDCloudSyncRecord *)self record];
  v3 = [v2 recordID];
  v4 = [v3 recordName];
  v5 = [v4 componentsSeparatedByString:@"/"];

  v6 = [v5 objectAtIndexedSubscript:1];

  return v6;
}

+ (BOOL)hasFutureSchema:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

@end