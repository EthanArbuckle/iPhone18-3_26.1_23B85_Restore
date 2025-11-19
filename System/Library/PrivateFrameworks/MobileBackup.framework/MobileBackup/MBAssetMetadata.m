@interface MBAssetMetadata
+ (id)assetMetadataForEmptyFileWithEncryptionKey:(id)a3;
+ (id)assetMetadataForFilePendingUploadWithEncryptionKey:(id)a3 size:(int64_t)a4;
- (BOOL)isPendingUpload;
- (MBAssetMetadata)initWithRecordIDSuffix:(id)a3 signature:(id)a4 size:(int64_t)a5 type:(unint64_t)a6 compressionMethod:(char)a7 encryptionKey:(id)a8;
- (id)_keybagUUIDData;
- (id)description;
- (id)dictionaryRepresentation;
- (id)stringRepresentation;
@end

@implementation MBAssetMetadata

- (id)_keybagUUIDData
{
  v3 = [(MBAssetMetadata *)self encryptionKey];
  v4 = MKBBackupCopyBackupKeyUUID();

  if (v4)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Failed to get UUID from encryption key for file %@", buf, 0xCu);
      _MBLog();
    }
  }

  return 0;
}

+ (id)assetMetadataForFilePendingUploadWithEncryptionKey:(id)a3 size:(int64_t)a4
{
  v5 = a3;
  v6 = [[MBAssetMetadata alloc] initWithRecordIDSuffix:0 signature:0 size:a4 type:1 compressionMethod:0 encryptionKey:v5];

  return v6;
}

+ (id)assetMetadataForEmptyFileWithEncryptionKey:(id)a3
{
  v3 = a3;
  v4 = [[MBAssetMetadata alloc] initWithRecordIDSuffix:@"EMPTY_FILE" signature:0 size:0 type:4 compressionMethod:0 encryptionKey:v3];

  return v4;
}

- (MBAssetMetadata)initWithRecordIDSuffix:(id)a3 signature:(id)a4 size:(int64_t)a5 type:(unint64_t)a6 compressionMethod:(char)a7 encryptionKey:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = MBAssetMetadata;
  v18 = [(MBAssetMetadata *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_recordIDSuffix, a3);
    objc_storeStrong(&v19->_assetSignature, a4);
    v19->_assetSize = a5;
    v19->_assetType = a6;
    v19->_compressionMethod = a7;
    objc_storeStrong(&v19->_encryptionKey, a8);
  }

  return v19;
}

- (id)stringRepresentation
{
  v3 = objc_opt_new();
  v4 = v3;
  assetType = self->_assetType;
  v6 = @"unknown";
  if (assetType > 2)
  {
    if (assetType == 4)
    {
      v6 = @"empty-reg";
    }

    if (assetType == 3)
    {
      v8 = @"compacted-sqlite";
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    if (assetType == 1)
    {
      goto LABEL_12;
    }

    v7 = assetType == 2;
    v8 = @"raw-encrypted";
    if (!v7)
    {
      v8 = @"unknown";
    }
  }

  [v3 appendFormat:@"type %@, ", v8];
LABEL_12:
  if (self->_compressionMethod)
  {
    v9 = MBStringForFileCompressionMethod(self->_compressionMethod);
    [v4 appendFormat:@"compressionMethod/size %@(%llu), ", v9, self->_assetSize];
  }

  encryptionKey = self->_encryptionKey;
  if (encryptionKey)
  {
    [v4 appendFormat:@"keySize %lu, ", -[NSData length](encryptionKey, "length")];
  }

  v11 = [(NSData *)self->_assetSignature base64EncodedStringWithOptions:0];
  [v4 appendFormat:@"sig %@, rid %@", v11, self->_recordIDSuffix];

  return v4;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  [v3 setObject:self->_recordIDSuffix forKeyedSubscript:@"recordIDSuffix"];
  v4 = [NSNumber numberWithLongLong:self->_assetSize];
  [v3 setObject:v4 forKeyedSubscript:@"size"];

  v5 = [NSNumber numberWithUnsignedLongLong:self->_assetType];
  [v3 setObject:v5 forKeyedSubscript:@"type"];

  v6 = [NSNumber numberWithChar:self->_compressionMethod];
  [v3 setObject:v6 forKeyedSubscript:@"compressionMethod"];

  assetSignature = self->_assetSignature;
  if (assetSignature)
  {
    v8 = [(NSData *)assetSignature base64EncodedStringWithOptions:0];
    [v3 setObject:v8 forKeyedSubscript:@"signature"];
  }

  encryptionKey = self->_encryptionKey;
  if (encryptionKey)
  {
    v10 = [(NSData *)encryptionKey base64EncodedStringWithOptions:0];
    [v3 setObject:v10 forKeyedSubscript:@"encryptionKey"];
  }

  return v3;
}

- (BOOL)isPendingUpload
{
  if ([(MBAssetMetadata *)self assetType]== 4)
  {
    return 0;
  }

  v4 = [(MBAssetMetadata *)self recordIDSuffix];
  if (v4)
  {
    v5 = [(MBAssetMetadata *)self assetSignature];
    v3 = v5 == 0;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  Name = class_getName(v3);
  v5 = [(MBAssetMetadata *)self stringRepresentation];
  v6 = [NSString stringWithFormat:@"<%s: %p, %@>", Name, self, v5];

  return v6;
}

@end