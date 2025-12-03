@interface MSAsset
+ (id)MSASPAssetFromProtocolDictionary:(id)dictionary;
+ (id)asset;
+ (id)assetWithAsset:(id)asset;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPhoto;
- (BOOL)isVideo;
- (MSAsset)init;
- (MSAsset)initWithCoder:(id)coder;
- (MSAsset)initWithGUID:(id)d;
- (NSData)fileHash;
- (NSError)MMCSError;
- (NSString)description;
- (NSString)type;
- (id)MMCSItemType;
- (id)MSASPProtocolDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)metadataValueForKey:(id)key;
- (int)MMCSOpenNewFileDescriptor;
- (unint64_t)MMCSItemID;
- (unint64_t)_fileSize;
- (unint64_t)_fileSizeOnDisk;
- (unint64_t)hash;
- (unint64_t)protocolFileSize;
- (void)encodeWithCoder:(id)coder;
- (void)setFileHash:(id)hash;
- (void)setMMCSAccessHeader:(id)header;
- (void)setMMCSAccessHeader:(id)header andTimeStamp:(id)stamp;
- (void)setMMCSError:(id)error;
- (void)setMMCSItemFlags:(unsigned int)flags;
- (void)setMMCSItemID:(unint64_t)d;
- (void)setMetadataValue:(id)value forKey:(id)key;
- (void)setProtocolFileSize:(unint64_t)size;
- (void)setType:(id)type;
@end

@implementation MSAsset

- (id)copyWithZone:(_NSZone *)zone
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v12];
  v4 = v12;
  v5 = v4;
  if (!v3)
  {
    v6 = MEMORY[0x277CCACA8];
    userInfo = [v4 userInfo];
    v8 = [v6 stringWithFormat:@"Failed to archive an MSAsset object. Error: %@ Info: %@", v5, userInfo];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  v9 = [MEMORY[0x277CCAAC8] MSSafeUnarchiveObjectWithData:v3 outError:0];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)metadataValueForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSDictionary *)selfCopy->_metadata objectForKey:keyCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)setMetadataValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  metadata = selfCopy->_metadata;
  if (metadata)
  {
    v9 = [(NSDictionary *)metadata mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v10 = v9;
  if (valueCopy)
  {
    [(NSDictionary *)v9 setObject:valueCopy forKey:keyCopy];
  }

  else
  {
    [(NSDictionary *)v9 removeObjectForKey:keyCopy];
  }

  v11 = selfCopy->_metadata;
  selfCopy->_metadata = v10;

  objc_sync_exit(selfCopy);
}

- (MSAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v45.receiver = self;
  v45.super_class = MSAsset;
  v5 = [(MSAsset *)&v45 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"masterAssetHash"];
    masterAssetHash = v5->_masterAssetHash;
    v5->_masterAssetHash = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v8 setWithObjects:{v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileHash"];
    fileHash = v5->_fileHash;
    v5->_fileHash = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileData"];
    fileData = v5->_fileData;
    v5->_fileData = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MMCSAccessHeader"];
    MMCSAccessHeader = v5->_MMCSAccessHeader;
    v5->_MMCSAccessHeader = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MMCSAccessHeaderTimeStamp"];
    MMCSAccessHeaderTimeStamp = v5->_MMCSAccessHeaderTimeStamp;
    v5->_MMCSAccessHeaderTimeStamp = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MMCSReceipt"];
    MMCSReceipt = v5->_MMCSReceipt;
    v5->_MMCSReceipt = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MMCSURL"];
    if (v32)
    {
      v33 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v32];
      MMCSURL = v5->_MMCSURL;
      v5->_MMCSURL = v33;
    }

    v5->_protocolFileSize = [coderCopy decodeInt64ForKey:@"protocolFileSize"];
    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GUID"];
    GUID = v5->_GUID;
    v5->_GUID = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetCollectionGUID"];
    assetCollectionGUID = v5->_assetCollectionGUID;
    v5->_assetCollectionGUID = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batchCreationDate"];
    batchCreationDate = v5->_batchCreationDate;
    v5->_batchCreationDate = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"photoCreationDate"];
    photoCreationDate = v5->_photoCreationDate;
    v5->_photoCreationDate = v41;

    v43 = [coderCopy decodePropertyListForKey:@"userInfo"];
    [(MSAsset *)v5 setUserInfo:v43];

    v5->_mediaAssetType = [coderCopy decodeIntegerForKey:@"mediaAssetType"];
    v5->_assetDataAvailableOnServer = [coderCopy decodeBoolForKey:@"assetDataAvailableOnServer"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  masterAssetHash = selfCopy->_masterAssetHash;
  if (masterAssetHash)
  {
    [coderCopy encodeObject:masterAssetHash forKey:@"masterAssetHash"];
  }

  metadata = selfCopy->_metadata;
  if (metadata)
  {
    [coderCopy encodeObject:metadata forKey:@"metadata"];
  }

  fileHash = selfCopy->_fileHash;
  if (fileHash)
  {
    [coderCopy encodeObject:fileHash forKey:@"fileHash"];
  }

  type = selfCopy->_type;
  if (type)
  {
    [coderCopy encodeObject:type forKey:@"type"];
  }

  [coderCopy encodeInt64:selfCopy->_protocolFileSize forKey:@"protocolFileSize"];
  MMCSAccessHeader = selfCopy->_MMCSAccessHeader;
  if (MMCSAccessHeader)
  {
    [coderCopy encodeObject:MMCSAccessHeader forKey:@"MMCSAccessHeader"];
  }

  MMCSAccessHeaderTimeStamp = selfCopy->_MMCSAccessHeaderTimeStamp;
  if (MMCSAccessHeaderTimeStamp)
  {
    [coderCopy encodeObject:MMCSAccessHeaderTimeStamp forKey:@"MMCSAccessHeaderTimeStamp"];
  }

  path = selfCopy->_path;
  if (path)
  {
    [coderCopy encodeObject:path forKey:@"path"];
  }

  fileData = selfCopy->_fileData;
  if (fileData)
  {
    [coderCopy encodeObject:fileData forKey:@"fileData"];
  }

  MMCSURL = selfCopy->_MMCSURL;
  if (MMCSURL)
  {
    absoluteString = [(NSURL *)MMCSURL absoluteString];
    [coderCopy encodeObject:absoluteString forKey:@"MMCSURL"];
  }

  MMCSReceipt = selfCopy->_MMCSReceipt;
  if (MMCSReceipt)
  {
    [coderCopy encodeObject:MMCSReceipt forKey:@"MMCSReceipt"];
  }

  GUID = selfCopy->_GUID;
  if (GUID)
  {
    [coderCopy encodeObject:GUID forKey:@"GUID"];
  }

  assetCollectionGUID = selfCopy->_assetCollectionGUID;
  if (assetCollectionGUID)
  {
    [coderCopy encodeObject:assetCollectionGUID forKey:@"assetCollectionGUID"];
  }

  batchCreationDate = selfCopy->_batchCreationDate;
  if (batchCreationDate)
  {
    [coderCopy encodeObject:batchCreationDate forKey:@"batchCreationDate"];
  }

  photoCreationDate = selfCopy->_photoCreationDate;
  if (photoCreationDate)
  {
    [coderCopy encodeObject:photoCreationDate forKey:@"photoCreationDate"];
  }

  userInfo = [(MSAsset *)selfCopy userInfo];

  if (userInfo)
  {
    userInfo2 = [(MSAsset *)selfCopy userInfo];
    [coderCopy encodeObject:userInfo2 forKey:@"userInfo"];
  }

  [coderCopy encodeInteger:-[MSAsset mediaAssetType](selfCopy forKey:{"mediaAssetType"), @"mediaAssetType"}];
  [coderCopy encodeBool:-[MSAsset assetDataAvailableOnServer](selfCopy forKey:{"assetDataAvailableOnServer"), @"assetDataAvailableOnServer"}];
  objc_sync_exit(selfCopy);
}

- (unint64_t)hash
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  GUID = selfCopy->_GUID;
  if (GUID)
  {
    v4 = [(NSString *)GUID hash];
  }

  else
  {
    v7.receiver = selfCopy;
    v7.super_class = MSAsset;
    v4 = [(MSAsset *)&v7 hash];
  }

  v5 = v4;
  objc_sync_exit(selfCopy);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      GUID = selfCopy->_GUID;
      gUID = [(MSAsset *)v6 GUID];
      LOBYTE(GUID) = [(NSString *)GUID isEqualToString:gUID];

      if (GUID)
      {
        v9 = 1;
      }

      else
      {
        assetCollectionGUID = [(MSAsset *)selfCopy assetCollectionGUID];
        if (assetCollectionGUID)
        {
          v9 = 0;
        }

        else
        {
          assetCollectionGUID2 = [(MSAsset *)v6 assetCollectionGUID];

          if (assetCollectionGUID2)
          {
            v9 = 0;
            goto LABEL_12;
          }

          assetCollectionGUID = [(NSDictionary *)selfCopy->_metadata objectForKey:@"MSAssetMetadataAssetFileTransferUUID"];
          v13 = [(MSAsset *)v6 metadataValueForKey:@"MSAssetMetadataAssetFileTransferUUID"];
          v14 = v13;
          if (assetCollectionGUID && v13)
          {
            v9 = [assetCollectionGUID isEqualToString:v13];
          }

          else
          {
            fileHash = selfCopy->_fileHash;
            fileHash = [(MSAsset *)v6 fileHash];
            v9 = [(NSData *)fileHash isEqual:fileHash];
          }
        }
      }

LABEL_12:

      goto LABEL_13;
    }

    v17.receiver = selfCopy;
    v17.super_class = MSAsset;
    v9 = [(MSAsset *)&v17 isEqual:equalCopy];
  }

LABEL_13:
  objc_sync_exit(selfCopy);

  return v9;
}

- (unint64_t)_fileSizeOnDisk
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = defaultManager;
  if (selfCopy->_path && [defaultManager fileExistsAtPath:?])
  {
    path = selfCopy->_path;
    v14 = 0;
    v6 = [v4 attributesOfItemAtPath:path error:&v14];
    v7 = v14;
    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v13 = selfCopy->_path;
        *buf = 138412546;
        v16 = v13;
        v17 = 2114;
        v18 = v7;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Can't query for file size at path %@. Error: %{public}@", buf, 0x16u);
      }

      v8 = [(NSDictionary *)selfCopy->_metadata objectForKey:@"MSAssetMetadataFileSize"];
      unsignedLongLongValue = [v8 unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = [v6 fileSize];
    }
  }

  else
  {
    v10 = [(NSDictionary *)selfCopy->_metadata objectForKey:@"MSAssetMetadataFileSize"];
    unsignedLongLongValue = [v10 unsignedLongLongValue];
  }

  objc_sync_exit(selfCopy);
  v11 = *MEMORY[0x277D85DE8];
  return unsignedLongLongValue;
}

- (void)setMMCSAccessHeader:(id)header andTimeStamp:(id)stamp
{
  headerCopy = header;
  stampCopy = stamp;
  obj = self;
  objc_sync_enter(obj);
  MMCSAccessHeader = obj->_MMCSAccessHeader;
  obj->_MMCSAccessHeader = headerCopy;
  v9 = headerCopy;

  MMCSAccessHeaderTimeStamp = obj->_MMCSAccessHeaderTimeStamp;
  obj->_MMCSAccessHeaderTimeStamp = stampCopy;

  objc_sync_exit(obj);
}

- (void)setMMCSAccessHeader:(id)header
{
  v4 = MEMORY[0x277CBEAA8];
  headerCopy = header;
  date = [v4 date];
  [(MSAsset *)self setMMCSAccessHeader:headerCopy andTimeStamp:date];
}

- (id)MMCSItemType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  path = [(MSAsset *)selfCopy path];
  pathExtension = [path pathExtension];

  if (!pathExtension || ![pathExtension length])
  {
    mMCSUTI = [(MSAsset *)selfCopy MMCSUTI];
    if (mMCSUTI)
    {
      v6 = [MEMORY[0x277CE1CB8] typeWithIdentifier:mMCSUTI];
      v7 = v6;
      if (v6)
      {
        preferredFilenameExtension = [v6 preferredFilenameExtension];

        pathExtension = preferredFilenameExtension;
      }
    }
  }

  objc_sync_exit(selfCopy);

  return pathExtension;
}

- (int)MMCSOpenNewFileDescriptor
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  path = [(MSAsset *)selfCopy path];

  if (path)
  {
    path2 = [(MSAsset *)selfCopy path];
    v5 = open([path2 fileSystemRepresentation], 0);
  }

  else
  {
    v5 = -1;
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)setMMCSItemID:(unint64_t)d
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = 134218242;
    dCopy = d;
    v9 = 2114;
    selfCopy = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Setting MMCS Item ID to %lld for %{public}@", &v7, 0x16u);
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  [(MSAsset *)self addMetadataValue:v5 forKey:@"MSAssetMetadataItemID"];

  v6 = *MEMORY[0x277D85DE8];
}

- (unint64_t)MMCSItemID
{
  v2 = [(MSAsset *)self metadataValueForKey:@"MSAssetMetadataItemID"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)setMMCSItemFlags:(unsigned int)flags
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Ignoring attempt to set MMCS Item Flags on an MSAsset.", v3, 2u);
  }
}

- (unint64_t)_fileSize
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSDictionary *)selfCopy->_metadata objectForKey:@"MSAssetMetadataFileSize"];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  objc_sync_exit(selfCopy);
  return unsignedLongLongValue;
}

- (BOOL)isVideo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = (selfCopy->_mediaAssetType & 0xFFFFFFFFFFFFFFFCLL) == 4;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isPhoto
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_mediaAssetType - 1 < 3;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8.receiver = selfCopy;
  v8.super_class = MSAsset;
  v3 = [(MSAsset *)&v8 description];
  v4 = [v3 mutableCopy];

  if (selfCopy->_GUID)
  {
    [v4 appendFormat:@" GUID: %@ ", selfCopy->_GUID];
  }

  if (selfCopy->_assetCollectionGUID)
  {
    [v4 appendFormat:@"Asset collection GUID: %@ ", selfCopy->_assetCollectionGUID];
  }

  v5 = selfCopy->_path;
  if (v5 && (os_trace_get_mode() & 0x1000000) != 0)
  {
    [v4 appendFormat:@"Path: %@ ", v5];
  }

  if (_thePlatform && [_thePlatform shouldLogAtLevel:7])
  {
    if ([(NSDictionary *)selfCopy->_metadata count])
    {
      [v4 appendFormat:@"\nmetadata: %@", selfCopy->_metadata];
    }

    if (selfCopy->_type)
    {
      [v4 appendFormat:@"  type: %@\n", selfCopy->_type];
    }

    if (selfCopy->_masterAssetHash)
    {
      [v4 appendFormat:@"  master asset hash: %@\n", selfCopy->_masterAssetHash];
    }

    if (selfCopy->_fileHash)
    {
      [v4 appendFormat:@"  file hash: %@\n", selfCopy->_fileHash];
    }

    if (selfCopy->_MMCSAccessHeader)
    {
      [v4 appendFormat:@"  MMCS header:%@\n", selfCopy->_MMCSAccessHeader];
    }

    if (selfCopy->_MMCSAccessHeaderTimeStamp)
    {
      [v4 appendFormat:@"  MMCS Header set on: %@", selfCopy->_MMCSAccessHeaderTimeStamp];
    }

    if (selfCopy->_MMCSURL)
    {
      [v4 appendFormat:@"  MMCS URL: %@\n", selfCopy->_MMCSURL];
    }

    if (selfCopy->_MMCSReceipt)
    {
      [v4 appendFormat:@"  MMCS Receipt: %@\n", selfCopy->_MMCSReceipt];
    }

    if (selfCopy->_fileData)
    {
      [v4 appendFormat:@"  File data present.\n"];
    }

    if (selfCopy->_batchCreationDate)
    {
      [v4 appendFormat:@"  Batch creation date: %@\n", selfCopy->_batchCreationDate];
    }

    if (selfCopy->_photoCreationDate)
    {
      [v4 appendFormat:@"  Asset creation date: %@\n", selfCopy->_photoCreationDate];
    }

    if ([(MSAsset *)selfCopy isPhoto])
    {
      [v4 appendFormat:@"  Asset is photo\n"];
      [v4 appendFormat:@"  Media Asset Type %ld\n", -[MSAsset mediaAssetType](selfCopy, "mediaAssetType")];
    }

    if ([(MSAsset *)selfCopy isVideo])
    {
      [v4 appendFormat:@"  Asset is video\n"];
      [v4 appendFormat:@"  Media Asset Type %ld\n", -[MSAsset mediaAssetType](selfCopy, "mediaAssetType")];
    }

    if (selfCopy->_assetDataAvailableOnServer)
    {
      v6 = &stru_2858BC598;
    }

    else
    {
      v6 = @"not";
    }

    [v4 appendFormat:@"  Asset data is %@ available on server\n", v6];
    [v4 appendFormat:@"  protocol file size:%lld\n", selfCopy->_protocolFileSize];
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (MSAsset)init
{
  mSMakeUUID = [MEMORY[0x277CCACA8] MSMakeUUID];
  v4 = [(MSAsset *)self initWithGUID:mSMakeUUID];

  return v4;
}

- (MSAsset)initWithGUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = MSAsset;
  v6 = [(MSAsset *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_GUID, d);
    v7->_mediaAssetType = 0;
    v7->_assetDataAvailableOnServer = 1;
  }

  return v7;
}

- (void)setMMCSError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MSAsset *)selfCopy setError:errorCopy];
  objc_sync_exit(selfCopy);
}

- (NSError)MMCSError
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  error = [(MSAsset *)selfCopy error];
  objc_sync_exit(selfCopy);

  return error;
}

- (void)setProtocolFileSize:(unint64_t)size
{
  obj = self;
  objc_sync_enter(obj);
  [(MSAsset *)obj setMMCSItemSize:size];
  objc_sync_exit(obj);
}

- (unint64_t)protocolFileSize
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mMCSItemSize = [(MSAsset *)selfCopy MMCSItemSize];
  objc_sync_exit(selfCopy);

  return mMCSItemSize;
}

- (void)setType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MSAsset *)selfCopy setMMCSUTI:typeCopy];
  objc_sync_exit(selfCopy);
}

- (NSString)type
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mMCSUTI = [(MSAsset *)selfCopy MMCSUTI];
  objc_sync_exit(selfCopy);

  return mMCSUTI;
}

- (void)setFileHash:(id)hash
{
  hashCopy = hash;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MSAsset *)selfCopy setMMCSHash:hashCopy];
  objc_sync_exit(selfCopy);
}

- (NSData)fileHash
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mMCSHash = [(MSAsset *)selfCopy MMCSHash];
  objc_sync_exit(selfCopy);

  return mMCSHash;
}

+ (id)assetWithAsset:(id)asset
{
  assetCopy = asset;
  v5 = [self alloc];
  gUID = [assetCopy GUID];
  v7 = [v5 initWithGUID:gUID];

  masterAssetHash = [assetCopy masterAssetHash];
  [v7 setMasterAssetHash:masterAssetHash];

  metadata = [assetCopy metadata];
  [v7 setMetadata:metadata];

  path = [assetCopy path];
  [v7 setPath:path];

  mMCSURL = [assetCopy MMCSURL];
  [v7 setMMCSURL:mMCSURL];

  fileData = [assetCopy fileData];
  [v7 setFileData:fileData];

  error = [assetCopy error];
  [v7 setError:error];

  mMCSUTI = [assetCopy MMCSUTI];
  [v7 setMMCSUTI:mMCSUTI];

  mMCSHash = [assetCopy MMCSHash];
  [v7 setMMCSHash:mMCSHash];

  mMCSURL2 = [assetCopy MMCSURL];
  [v7 setMMCSURL:mMCSURL2];

  [v7 setMMCSItemSize:{objc_msgSend(assetCopy, "MMCSItemSize")}];
  mMCSAccessHeader = [assetCopy MMCSAccessHeader];
  mMCSAccessHeaderTimeStamp = [assetCopy MMCSAccessHeaderTimeStamp];
  [v7 setMMCSAccessHeader:mMCSAccessHeader andTimeStamp:mMCSAccessHeaderTimeStamp];

  mMCSReceipt = [assetCopy MMCSReceipt];
  [v7 setMMCSReceipt:mMCSReceipt];

  assetCollectionGUID = [assetCopy assetCollectionGUID];
  [v7 setAssetCollectionGUID:assetCollectionGUID];

  batchCreationDate = [assetCopy batchCreationDate];
  [v7 setBatchCreationDate:batchCreationDate];

  photoCreationDate = [assetCopy photoCreationDate];
  [v7 setPhotoCreationDate:photoCreationDate];

  userInfo = [assetCopy userInfo];
  v24 = [userInfo copy];
  [v7 setUserInfo:v24];

  [v7 setMediaAssetType:{objc_msgSend(assetCopy, "mediaAssetType")}];
  assetDataAvailableOnServer = [assetCopy assetDataAvailableOnServer];

  [v7 setAssetDataAvailableOnServer:assetDataAvailableOnServer];

  return v7;
}

+ (id)asset
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (id)MSASPProtocolDictionary
{
  v25 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  metadata = [(MSAsset *)self metadata];
  v5 = [metadata mutableCopy];

  type = [(MSAsset *)self type];

  if (type)
  {
    type2 = [(MSAsset *)self type];
    [dictionary setObject:type2 forKey:@"type"];
  }

  if ([(MSAsset *)self isVideo])
  {
    v8 = [(MSAsset *)self mediaAssetType]- 4;
    if (v8 >= 4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Found an unknown video asset type", buf, 0xCu);
      }
    }

    else
    {
      [dictionary setObject:off_278E92530[v8] forKey:@"videoType"];
    }
  }

  mMCSHash = [(MSAsset *)self MMCSHash];

  if (mMCSHash)
  {
    mMCSHash2 = [(MSAsset *)self MMCSHash];
    mSHexString = [mMCSHash2 MSHexString];
    [dictionary setObject:mSHexString forKey:@"checksum"];
  }

  v12 = [v5 objectForKey:@"MSAssetMetadataFileSize"];
  v13 = v12;
  if (v12)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", objc_msgSend(v12, "unsignedLongLongValue")];
    [dictionary setObject:v14 forKey:@"size"];

    [v5 removeObjectForKey:@"MSAssetMetadataFileSize"];
  }

  v15 = [v5 objectForKey:@"MSAssetMetadataPixelWidth"];
  v16 = v15;
  if (v15)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v15, "unsignedLongValue")];
    [dictionary setObject:v17 forKey:@"width"];

    [v5 removeObjectForKey:@"MSAssetMetadataPixelWidth"];
  }

  v18 = [v5 objectForKey:@"MSAssetMetadataPixelHeight"];
  v19 = v18;
  if (v18)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v18, "unsignedLongValue")];
    [dictionary setObject:v20 forKey:@"height"];

    [v5 removeObjectForKey:@"MSAssetMetadataPixelHeight"];
  }

  [v5 removeObjectForKey:@"MSAssetMetadataItemID"];
  if ([v5 count])
  {
    [dictionary setObject:v5 forKey:@"metadata"];
  }

  v21 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (id)MSASPAssetFromProtocolDictionary:(id)dictionary
{
  v32 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = +[MSAsset asset];
  v5 = [dictionaryCopy mutableCopy];

  v6 = [v5 objectForKey:@"metadata"];
  dictionary = [v6 mutableCopy];

  if (dictionary)
  {
    [v5 removeObjectForKey:@"metadata"];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = [v5 objectForKey:@"height"];
  if (v8)
  {
    [v5 removeObjectForKey:@"height"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{strtoul(objc_msgSend(v8, "UTF8String"), 0, 10)}];
      [dictionary setObject:v9 forKey:@"MSAssetMetadataPixelHeight"];
    }
  }

  v10 = [v5 objectForKey:@"width"];
  if (v10)
  {
    [v5 removeObjectForKey:@"width"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{strtoul(objc_msgSend(v10, "UTF8String"), 0, 10)}];
      [dictionary setObject:v11 forKey:@"MSAssetMetadataPixelWidth"];
    }
  }

  v12 = [v5 objectForKey:@"size"];
  if (v12)
  {
    [v5 removeObjectForKey:@"size"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{strtoull(objc_msgSend(v12, "UTF8String"), 0, 10)}];
      [dictionary setObject:v13 forKey:@"MSAssetMetadataFileSize"];
    }
  }

  v14 = [v5 objectForKey:@"checksum"];
  if (v14)
  {
    [v5 removeObjectForKey:@"checksum"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mSHexData = [v14 MSHexData];
      [v4 setMMCSHash:mSHexData];
    }
  }

  v16 = [v5 objectForKey:@"type"];
  if (v16)
  {
    [v5 removeObjectForKey:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setType:v16];
    }
  }

  v17 = [v5 objectForKey:@"videoType"];
  if (!v17)
  {
    v20 = [dictionary objectForKey:@"MSAssetMetadataAssetType"];
    v21 = v20;
    if (v20)
    {
      if ([v20 isEqualToString:@"thumbnail"])
      {
        v22 = v4;
        v23 = 2;
      }

      else
      {
        if (![v21 isEqualToString:@"derivative"])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            selfCopy3 = self;
            v30 = 2114;
            v31 = v21;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Found an unsupported photoType %{public}@", buf, 0x16u);
          }

          goto LABEL_36;
        }

        v22 = v4;
        v23 = 3;
      }

      [v22 setMediaAssetType:v23];
    }

LABEL_36:

    goto LABEL_37;
  }

  [v5 removeObjectForKey:@"videoType"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_37;
  }

  if ([v17 isEqualToString:@"PosterFrame"])
  {
    v18 = v4;
    v19 = 5;
LABEL_33:
    [v18 setMediaAssetType:v19];
    goto LABEL_37;
  }

  if ([v17 isEqualToString:@"360p"])
  {
    v18 = v4;
    v19 = 6;
    goto LABEL_33;
  }

  if ([v17 isEqualToString:@"720p"])
  {
    v18 = v4;
    v19 = 7;
    goto LABEL_33;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    selfCopy3 = self;
    v30 = 2114;
    v31 = v17;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Found an unsupported videoType %{public}@", buf, 0x16u);
  }

LABEL_37:
  v24 = [v5 objectForKey:@"uploadpending"];
  if (v24)
  {
    [v5 removeObjectForKey:@"uploadpending"];
    if (!v17 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Found uploadpending flag for non-video asset", buf, 0xCu);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v24 isEqualToString:@"1"])
    {
      [v4 setAssetDataAvailableOnServer:0];
    }
  }

  [v4 setMetadata:dictionary];

  v25 = *MEMORY[0x277D85DE8];

  return v4;
}

@end