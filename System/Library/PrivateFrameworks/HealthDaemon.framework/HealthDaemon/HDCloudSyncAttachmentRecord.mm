@interface HDCloudSyncAttachmentRecord
+ (BOOL)hasFutureSchema:(id)schema;
+ (BOOL)isAttachmentRecord:(id)record;
+ (BOOL)isAttachmentRecordID:(id)d;
+ (id)attachmentIdentifierForRecordID:(id)d;
+ (id)recordIDForAttachmentIdentifier:(id)identifier zoneID:(id)d;
+ (id)recordWithAttachment:(id)attachment fileHandle:(id)handle zoneID:(id)d error:(id *)error;
- (HDAttachment)attachment;
- (HDCloudSyncAttachmentRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version;
- (NSString)attachmentIdentifier;
- (NSURL)assetURL;
- (void)unitTest_setFileURL:(id)l;
@end

@implementation HDCloudSyncAttachmentRecord

+ (id)recordWithAttachment:(id)attachment fileHandle:(id)handle zoneID:(id)d error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handleCopy = handle;
  attachmentCopy = attachment;
  v12 = [HDCloudSyncAttachmentRecord alloc];
  v13 = attachmentCopy;
  v14 = handleCopy;
  if (v12)
  {
    v15 = dCopy;
    v16 = objc_opt_class();
    identifier = [v13 identifier];
    uUIDString = [identifier UUIDString];
    v19 = [v16 recordIDForAttachmentIdentifier:uUIDString zoneID:v15];

    v20 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncAttachmentRecord" recordID:v19];
    encryptionKey = [v13 encryptionKey];

    if (encryptionKey)
    {
      v22 = MEMORY[0x277CCAAB0];
      encryptionKey2 = [v13 encryptionKey];
      encryptionKey = [v22 archivedDataWithRootObject:encryptionKey2 requiringSecureCoding:1 error:error];
    }

    v24 = [(HDCloudSyncAttachmentRecord *)v12 initWithCKRecord:v20 schemaVersion:1];
    if (v24)
    {
      errorCopy = error;
      name = [v13 name];
      [v24[3] setFileName:name];

      [v24[3] setFileSize:{objc_msgSend(v13, "size")}];
      type = [v13 type];
      [v24[3] setMimeType:type];

      fileHash = [v13 fileHash];
      [v24[3] setFileHash:fileHash];

      creationDate = [v13 creationDate];
      [creationDate timeIntervalSinceReferenceDate];
      [v24[3] setCreationDate:?];

      metadata = [v13 metadata];
      hk_codableMetadata = [metadata hk_codableMetadata];
      data = [hk_codableMetadata data];
      [v24[3] setMetadata:data];

      [v24[3] setEncryptionKey:encryptionKey];
      if ([v13 size] > 0x61A8)
      {
        v37 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileDescriptor:{objc_msgSend(v14, "fileDescriptor")}];
        [v20 setObject:v37 forKeyedSubscript:@"CloudSyncAttachmentAsset"];
      }

      else
      {
        v42 = 0;
        v32 = [v14 readDataToEndOfFileAndReturnError:&v42];
        v33 = v42;
        v34 = v33;
        if (!v32 && v33)
        {
          _HKInitializeLogging();
          v35 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v44 = v24;
            v45 = 2114;
            v46 = v34;
            _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "%{public}@ Failed to read data from file handle to set asset data, %{public}@", buf, 0x16u);
          }

          if (errorCopy)
          {
            v36 = v34;
            *errorCopy = v34;
          }

          else
          {
            _HKLogDroppedError();
          }

          v38 = 0;
          goto LABEL_15;
        }

        [v24[3] setAssetData:v32];
      }
    }

    v38 = v24;
LABEL_15:

    goto LABEL_16;
  }

  v38 = 0;
LABEL_16:

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

- (HDCloudSyncAttachmentRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncAttachmentRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:record schemaVersion:version];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  underlyingMessage = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!underlyingMessage)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableAttachment);
    underlyingAttachment = v5->_underlyingAttachment;
    v5->_underlyingAttachment = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableAttachment alloc] initWithData:underlyingMessage];
  v8 = v5->_underlyingAttachment;
  v5->_underlyingAttachment = v7;

  if (v5->_underlyingAttachment)
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

+ (id)recordIDForAttachmentIdentifier:(id)identifier zoneID:(id)d
{
  v5 = MEMORY[0x277CCACA8];
  dCopy = d;
  identifier = [v5 stringWithFormat:@"%@%@%@", @"CloudSyncAttachment", @"/", identifier];
  v8 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:identifier zoneID:dCopy];

  return v8;
}

+ (BOOL)isAttachmentRecordID:(id)d
{
  recordName = [d recordName];
  v4 = [recordName componentsSeparatedByString:@"/"];

  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 isEqualToString:@"CloudSyncAttachment"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isAttachmentRecord:(id)record
{
  recordType = [record recordType];
  v4 = [recordType isEqualToString:@"CloudSyncAttachmentRecord"];

  return v4;
}

+ (id)attachmentIdentifierForRecordID:(id)d
{
  dCopy = d;
  if ([self isAttachmentRecordID:dCopy])
  {
    recordName = [dCopy recordName];
    v6 = [recordName componentsSeparatedByString:@"/"];

    v7 = [v6 objectAtIndexedSubscript:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)attachmentIdentifier
{
  record = [(HDCloudSyncRecord *)self record];
  recordID = [record recordID];
  recordName = [recordID recordName];
  v5 = [recordName componentsSeparatedByString:@"/"];

  v6 = [v5 objectAtIndexedSubscript:1];

  return v6;
}

- (HDAttachment)attachment
{
  v30 = *MEMORY[0x277D85DE8];
  encryptionKey = [(HDCloudSyncCodableAttachment *)self->_underlyingAttachment encryptionKey];

  if (encryptionKey)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = objc_opt_class();
    encryptionKey2 = [(HDCloudSyncCodableAttachment *)self->_underlyingAttachment encryptionKey];
    v25 = 0;
    v7 = [v4 unarchivedObjectOfClass:v5 fromData:encryptionKey2 error:&v25];
    v8 = v25;

    if (!v7)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v28 = 2114;
        v29 = v8;
        _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Unable to decode encryption key: %{public}@", buf, 0x16u);
      }
    }

    v24 = v7;
  }

  else
  {
    v24 = 0;
  }

  v22 = [HDAttachment alloc];
  v10 = objc_alloc(MEMORY[0x277CCAD78]);
  attachmentIdentifier = [(HDCloudSyncAttachmentRecord *)self attachmentIdentifier];
  v11 = [v10 initWithUUIDString:attachmentIdentifier];
  fileName = [(HDCloudSyncCodableAttachment *)self->_underlyingAttachment fileName];
  mimeType = [(HDCloudSyncCodableAttachment *)self->_underlyingAttachment mimeType];
  fileHash = [(HDCloudSyncCodableAttachment *)self->_underlyingAttachment fileHash];
  fileSize = [(HDCloudSyncCodableAttachment *)self->_underlyingAttachment fileSize];
  [(HDCloudSyncCodableAttachment *)self->_underlyingAttachment creationDate];
  v16 = HDDecodeDateForValue();
  metadata = [(HDCloudSyncCodableAttachment *)self->_underlyingAttachment metadata];
  v18 = [HDCodableMetadataDictionary decodeMetadataFromData:metadata];
  v19 = [(HDAttachment *)v22 initWithIdentifier:v11 name:fileName type:mimeType hash:fileHash size:fileSize creationDate:v16 metadata:v18 encryptionKey:v24];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (NSURL)assetURL
{
  record = [(HDCloudSyncRecord *)self record];
  v3 = [record objectForKeyedSubscript:@"CloudSyncAttachmentAsset"];

  fileURL = [v3 fileURL];

  return fileURL;
}

+ (BOOL)hasFutureSchema:(id)schema
{
  v3 = [schema objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

- (void)unitTest_setFileURL:(id)l
{
  v4 = MEMORY[0x277CBC190];
  lCopy = l;
  v7 = [[v4 alloc] initWithFileURL:lCopy];

  record = [(HDCloudSyncRecord *)self record];
  [record setObject:v7 forKeyedSubscript:@"CloudSyncAttachmentAsset"];
}

@end