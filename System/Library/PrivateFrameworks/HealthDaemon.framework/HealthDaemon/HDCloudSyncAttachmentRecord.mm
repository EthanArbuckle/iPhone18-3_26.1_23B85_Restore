@interface HDCloudSyncAttachmentRecord
+ (BOOL)hasFutureSchema:(id)a3;
+ (BOOL)isAttachmentRecord:(id)a3;
+ (BOOL)isAttachmentRecordID:(id)a3;
+ (id)attachmentIdentifierForRecordID:(id)a3;
+ (id)recordIDForAttachmentIdentifier:(id)a3 zoneID:(id)a4;
+ (id)recordWithAttachment:(id)a3 fileHandle:(id)a4 zoneID:(id)a5 error:(id *)a6;
- (HDAttachment)attachment;
- (HDCloudSyncAttachmentRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4;
- (NSString)attachmentIdentifier;
- (NSURL)assetURL;
- (void)unitTest_setFileURL:(id)a3;
@end

@implementation HDCloudSyncAttachmentRecord

+ (id)recordWithAttachment:(id)a3 fileHandle:(id)a4 zoneID:(id)a5 error:(id *)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [HDCloudSyncAttachmentRecord alloc];
  v13 = v11;
  v14 = v10;
  if (v12)
  {
    v15 = v9;
    v16 = objc_opt_class();
    v17 = [v13 identifier];
    v18 = [v17 UUIDString];
    v19 = [v16 recordIDForAttachmentIdentifier:v18 zoneID:v15];

    v20 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncAttachmentRecord" recordID:v19];
    v21 = [v13 encryptionKey];

    if (v21)
    {
      v22 = MEMORY[0x277CCAAB0];
      v23 = [v13 encryptionKey];
      v21 = [v22 archivedDataWithRootObject:v23 requiringSecureCoding:1 error:a6];
    }

    v24 = [(HDCloudSyncAttachmentRecord *)v12 initWithCKRecord:v20 schemaVersion:1];
    if (v24)
    {
      v41 = a6;
      v25 = [v13 name];
      [v24[3] setFileName:v25];

      [v24[3] setFileSize:{objc_msgSend(v13, "size")}];
      v26 = [v13 type];
      [v24[3] setMimeType:v26];

      v27 = [v13 fileHash];
      [v24[3] setFileHash:v27];

      v28 = [v13 creationDate];
      [v28 timeIntervalSinceReferenceDate];
      [v24[3] setCreationDate:?];

      v29 = [v13 metadata];
      v30 = [v29 hk_codableMetadata];
      v31 = [v30 data];
      [v24[3] setMetadata:v31];

      [v24[3] setEncryptionKey:v21];
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

          if (v41)
          {
            v36 = v34;
            *v41 = v34;
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

- (HDCloudSyncAttachmentRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncAttachmentRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:a3 schemaVersion:a4];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!v6)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableAttachment);
    underlyingAttachment = v5->_underlyingAttachment;
    v5->_underlyingAttachment = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableAttachment alloc] initWithData:v6];
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

+ (id)recordIDForAttachmentIdentifier:(id)a3 zoneID:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  v7 = [v5 stringWithFormat:@"%@%@%@", @"CloudSyncAttachment", @"/", a3];
  v8 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v7 zoneID:v6];

  return v8;
}

+ (BOOL)isAttachmentRecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [v3 componentsSeparatedByString:@"/"];

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

+ (BOOL)isAttachmentRecord:(id)a3
{
  v3 = [a3 recordType];
  v4 = [v3 isEqualToString:@"CloudSyncAttachmentRecord"];

  return v4;
}

+ (id)attachmentIdentifierForRecordID:(id)a3
{
  v4 = a3;
  if ([a1 isAttachmentRecordID:v4])
  {
    v5 = [v4 recordName];
    v6 = [v5 componentsSeparatedByString:@"/"];

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
  v2 = [(HDCloudSyncRecord *)self record];
  v3 = [v2 recordID];
  v4 = [v3 recordName];
  v5 = [v4 componentsSeparatedByString:@"/"];

  v6 = [v5 objectAtIndexedSubscript:1];

  return v6;
}

- (HDAttachment)attachment
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncCodableAttachment *)self->_underlyingAttachment encryptionKey];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = objc_opt_class();
    v6 = [(HDCloudSyncCodableAttachment *)self->_underlyingAttachment encryptionKey];
    v25 = 0;
    v7 = [v4 unarchivedObjectOfClass:v5 fromData:v6 error:&v25];
    v8 = v25;

    if (!v7)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v27 = self;
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
  v23 = [(HDCloudSyncAttachmentRecord *)self attachmentIdentifier];
  v11 = [v10 initWithUUIDString:v23];
  v12 = [(HDCloudSyncCodableAttachment *)self->_underlyingAttachment fileName];
  v13 = [(HDCloudSyncCodableAttachment *)self->_underlyingAttachment mimeType];
  v14 = [(HDCloudSyncCodableAttachment *)self->_underlyingAttachment fileHash];
  v15 = [(HDCloudSyncCodableAttachment *)self->_underlyingAttachment fileSize];
  [(HDCloudSyncCodableAttachment *)self->_underlyingAttachment creationDate];
  v16 = HDDecodeDateForValue();
  v17 = [(HDCloudSyncCodableAttachment *)self->_underlyingAttachment metadata];
  v18 = [HDCodableMetadataDictionary decodeMetadataFromData:v17];
  v19 = [(HDAttachment *)v22 initWithIdentifier:v11 name:v12 type:v13 hash:v14 size:v15 creationDate:v16 metadata:v18 encryptionKey:v24];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (NSURL)assetURL
{
  v2 = [(HDCloudSyncRecord *)self record];
  v3 = [v2 objectForKeyedSubscript:@"CloudSyncAttachmentAsset"];

  v4 = [v3 fileURL];

  return v4;
}

+ (BOOL)hasFutureSchema:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

- (void)unitTest_setFileURL:(id)a3
{
  v4 = MEMORY[0x277CBC190];
  v5 = a3;
  v7 = [[v4 alloc] initWithFileURL:v5];

  v6 = [(HDCloudSyncRecord *)self record];
  [v6 setObject:v7 forKeyedSubscript:@"CloudSyncAttachmentAsset"];
}

@end