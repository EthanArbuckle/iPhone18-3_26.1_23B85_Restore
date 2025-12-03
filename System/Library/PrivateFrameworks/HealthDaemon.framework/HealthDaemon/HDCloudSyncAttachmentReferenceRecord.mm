@interface HDCloudSyncAttachmentReferenceRecord
+ (BOOL)hasFutureSchema:(id)schema;
+ (BOOL)isAttachmentReferenceRecord:(id)record;
+ (BOOL)isAttachmentReferenceRecordID:(id)d;
+ (id)recordIDForReferenceIdentifier:(id)identifier zoneID:(id)d;
- (HDAttachmentReference)attachmentReference;
- (HDCloudSyncAttachmentReferenceRecord)initWithAttachmentReference:(id)reference zoneID:(id)d;
- (HDCloudSyncAttachmentReferenceRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version;
- (NSString)referenceIdentifier;
@end

@implementation HDCloudSyncAttachmentReferenceRecord

- (HDCloudSyncAttachmentReferenceRecord)initWithAttachmentReference:(id)reference zoneID:(id)d
{
  referenceCopy = reference;
  dCopy = d;
  v8 = objc_opt_class();
  identifier = [referenceCopy identifier];
  uUIDString = [identifier UUIDString];
  v11 = [v8 recordIDForReferenceIdentifier:uUIDString zoneID:dCopy];

  v12 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncAttachmentReferenceRecord" recordID:v11];
  v13 = [(HDCloudSyncAttachmentReferenceRecord *)self initWithCKRecord:v12 schemaVersion:1];
  if (v13)
  {
    objectIdentifier = [referenceCopy objectIdentifier];
    [(HDCloudSyncCodableAttachmentReference *)v13->_underlyingReference setObjectIdentifier:objectIdentifier];

    schemaIdentifier = [referenceCopy schemaIdentifier];
    [(HDCloudSyncCodableAttachmentReference *)v13->_underlyingReference setSchemaIdentifier:schemaIdentifier];

    -[HDCloudSyncCodableAttachmentReference setSchemaVersion:](v13->_underlyingReference, "setSchemaVersion:", [referenceCopy schemaVersion]);
    attachmentIdentifier = [referenceCopy attachmentIdentifier];
    uUIDString2 = [attachmentIdentifier UUIDString];
    [(HDCloudSyncCodableAttachmentReference *)v13->_underlyingReference setAttachmentIdentifier:uUIDString2];

    -[HDCloudSyncCodableAttachmentReference setType:](v13->_underlyingReference, "setType:", [referenceCopy type]);
    creationDate = [referenceCopy creationDate];
    [creationDate timeIntervalSinceReferenceDate];
    [(HDCloudSyncCodableAttachmentReference *)v13->_underlyingReference setCreationDate:?];

    -[HDCloudSyncCodableAttachmentReference setOptions:](v13->_underlyingReference, "setOptions:", [referenceCopy options]);
    metadata = [referenceCopy metadata];
    hk_codableMetadata = [metadata hk_codableMetadata];
    data = [hk_codableMetadata data];
    [(HDCloudSyncCodableAttachmentReference *)v13->_underlyingReference setMetadata:data];
  }

  return v13;
}

- (HDCloudSyncAttachmentReferenceRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncAttachmentReferenceRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:record schemaVersion:version];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  underlyingMessage = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!underlyingMessage)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableAttachmentReference);
    underlyingReference = v5->_underlyingReference;
    v5->_underlyingReference = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableAttachmentReference alloc] initWithData:underlyingMessage];
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

+ (id)recordIDForReferenceIdentifier:(id)identifier zoneID:(id)d
{
  v5 = MEMORY[0x277CCACA8];
  dCopy = d;
  identifier = [v5 stringWithFormat:@"%@%@%@", @"CloudSyncAttachmentReference", @"/", identifier];
  v8 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:identifier zoneID:dCopy];

  return v8;
}

+ (BOOL)isAttachmentReferenceRecordID:(id)d
{
  recordName = [d recordName];
  v4 = [recordName componentsSeparatedByString:@"/"];

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

+ (BOOL)isAttachmentReferenceRecord:(id)record
{
  recordType = [record recordType];
  v4 = [recordType isEqualToString:@"CloudSyncAttachmentReferenceRecord"];

  return v4;
}

- (HDAttachmentReference)attachmentReference
{
  schemaVersion = [(HDCloudSyncCodableAttachmentReference *)self->_underlyingReference schemaVersion];
  type = [(HDCloudSyncCodableAttachmentReference *)self->_underlyingReference type];
  if (schemaVersion <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = schemaVersion;
  }

  if (!type)
  {
    schemaVersion = v5;
  }

  v6 = [HDAttachmentReferenceSchemaIdentifier alloc];
  schemaIdentifier = [(HDCloudSyncCodableAttachmentReference *)self->_underlyingReference schemaIdentifier];
  objectIdentifier = [(HDCloudSyncCodableAttachmentReference *)self->_underlyingReference objectIdentifier];
  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  attachmentIdentifier = [(HDCloudSyncCodableAttachmentReference *)self->_underlyingReference attachmentIdentifier];
  v11 = [v9 initWithUUIDString:attachmentIdentifier];
  v12 = [(HDAttachmentReferenceSchemaIdentifier *)v6 initWithSchemaIdentifier:schemaIdentifier schemaVersion:schemaVersion objectIdentifier:objectIdentifier attachmentIdentifier:v11];

  v13 = [HDAttachmentReference alloc];
  v14 = objc_alloc(MEMORY[0x277CCAD78]);
  referenceIdentifier = [(HDCloudSyncAttachmentReferenceRecord *)self referenceIdentifier];
  v16 = [v14 initWithUUIDString:referenceIdentifier];
  [(HDCloudSyncCodableAttachmentReference *)self->_underlyingReference creationDate];
  v17 = HDDecodeDateForValue();
  options = [(HDCloudSyncCodableAttachmentReference *)self->_underlyingReference options];
  metadata = [(HDCloudSyncCodableAttachmentReference *)self->_underlyingReference metadata];
  v20 = [HDCodableMetadataDictionary decodeMetadataFromData:metadata];
  v21 = [(HDAttachmentReference *)v13 initWithIdentifier:v16 schemaIdentifier:v12 creationDate:v17 options:options metadata:v20 type:[(HDCloudSyncCodableAttachmentReference *)self->_underlyingReference type] cloudStatus:1];

  return v21;
}

- (NSString)referenceIdentifier
{
  record = [(HDCloudSyncRecord *)self record];
  recordID = [record recordID];
  recordName = [recordID recordName];
  v5 = [recordName componentsSeparatedByString:@"/"];

  v6 = [v5 objectAtIndexedSubscript:1];

  return v6;
}

+ (BOOL)hasFutureSchema:(id)schema
{
  v3 = [schema objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

@end