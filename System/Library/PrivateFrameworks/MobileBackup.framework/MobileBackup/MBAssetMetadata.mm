@interface MBAssetMetadata
+ (id)assetMetadataForEmptyFileWithEncryptionKey:(id)key;
+ (id)assetMetadataForFilePendingUploadWithEncryptionKey:(id)key size:(int64_t)size;
- (BOOL)isPendingUpload;
- (MBAssetMetadata)initWithRecordIDSuffix:(id)suffix signature:(id)signature size:(int64_t)size type:(unint64_t)type compressionMethod:(char)method encryptionKey:(id)key;
- (id)_keybagUUIDData;
- (id)description;
- (id)dictionaryRepresentation;
- (id)stringRepresentation;
@end

@implementation MBAssetMetadata

- (id)_keybagUUIDData
{
  encryptionKey = [(MBAssetMetadata *)self encryptionKey];
  v4 = MKBBackupCopyBackupKeyUUID();

  if (v4)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Failed to get UUID from encryption key for file %@", buf, 0xCu);
      _MBLog();
    }
  }

  return 0;
}

+ (id)assetMetadataForFilePendingUploadWithEncryptionKey:(id)key size:(int64_t)size
{
  keyCopy = key;
  v6 = [[MBAssetMetadata alloc] initWithRecordIDSuffix:0 signature:0 size:size type:1 compressionMethod:0 encryptionKey:keyCopy];

  return v6;
}

+ (id)assetMetadataForEmptyFileWithEncryptionKey:(id)key
{
  keyCopy = key;
  v4 = [[MBAssetMetadata alloc] initWithRecordIDSuffix:@"EMPTY_FILE" signature:0 size:0 type:4 compressionMethod:0 encryptionKey:keyCopy];

  return v4;
}

- (MBAssetMetadata)initWithRecordIDSuffix:(id)suffix signature:(id)signature size:(int64_t)size type:(unint64_t)type compressionMethod:(char)method encryptionKey:(id)key
{
  suffixCopy = suffix;
  signatureCopy = signature;
  keyCopy = key;
  v21.receiver = self;
  v21.super_class = MBAssetMetadata;
  v18 = [(MBAssetMetadata *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_recordIDSuffix, suffix);
    objc_storeStrong(&v19->_assetSignature, signature);
    v19->_assetSize = size;
    v19->_assetType = type;
    v19->_compressionMethod = method;
    objc_storeStrong(&v19->_encryptionKey, key);
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

  recordIDSuffix = [(MBAssetMetadata *)self recordIDSuffix];
  if (recordIDSuffix)
  {
    assetSignature = [(MBAssetMetadata *)self assetSignature];
    v3 = assetSignature == 0;
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
  stringRepresentation = [(MBAssetMetadata *)self stringRepresentation];
  v6 = [NSString stringWithFormat:@"<%s: %p, %@>", Name, self, stringRepresentation];

  return v6;
}

@end