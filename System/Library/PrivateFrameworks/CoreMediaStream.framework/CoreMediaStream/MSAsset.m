@interface MSAsset
+ (id)MSASPAssetFromProtocolDictionary:(id)a3;
+ (id)asset;
+ (id)assetWithAsset:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPhoto;
- (BOOL)isVideo;
- (MSAsset)init;
- (MSAsset)initWithCoder:(id)a3;
- (MSAsset)initWithGUID:(id)a3;
- (NSData)fileHash;
- (NSError)MMCSError;
- (NSString)description;
- (NSString)type;
- (id)MMCSItemType;
- (id)MSASPProtocolDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)metadataValueForKey:(id)a3;
- (int)MMCSOpenNewFileDescriptor;
- (unint64_t)MMCSItemID;
- (unint64_t)_fileSize;
- (unint64_t)_fileSizeOnDisk;
- (unint64_t)hash;
- (unint64_t)protocolFileSize;
- (void)encodeWithCoder:(id)a3;
- (void)setFileHash:(id)a3;
- (void)setMMCSAccessHeader:(id)a3;
- (void)setMMCSAccessHeader:(id)a3 andTimeStamp:(id)a4;
- (void)setMMCSError:(id)a3;
- (void)setMMCSItemFlags:(unsigned int)a3;
- (void)setMMCSItemID:(unint64_t)a3;
- (void)setMetadataValue:(id)a3 forKey:(id)a4;
- (void)setProtocolFileSize:(unint64_t)a3;
- (void)setType:(id)a3;
@end

@implementation MSAsset

- (id)copyWithZone:(_NSZone *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v12];
  v4 = v12;
  v5 = v4;
  if (!v3)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v4 userInfo];
    v8 = [v6 stringWithFormat:@"Failed to archive an MSAsset object. Error: %@ Info: %@", v5, v7];

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

- (id)metadataValueForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSDictionary *)v5->_metadata objectForKey:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)setMetadataValue:(id)a3 forKey:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  metadata = v7->_metadata;
  if (metadata)
  {
    v9 = [(NSDictionary *)metadata mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v10 = v9;
  if (v12)
  {
    [(NSDictionary *)v9 setObject:v12 forKey:v6];
  }

  else
  {
    [(NSDictionary *)v9 removeObjectForKey:v6];
  }

  v11 = v7->_metadata;
  v7->_metadata = v10;

  objc_sync_exit(v7);
}

- (MSAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = MSAsset;
  v5 = [(MSAsset *)&v45 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"masterAssetHash"];
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
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileHash"];
    fileHash = v5->_fileHash;
    v5->_fileHash = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileData"];
    fileData = v5->_fileData;
    v5->_fileData = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MMCSAccessHeader"];
    MMCSAccessHeader = v5->_MMCSAccessHeader;
    v5->_MMCSAccessHeader = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MMCSAccessHeaderTimeStamp"];
    MMCSAccessHeaderTimeStamp = v5->_MMCSAccessHeaderTimeStamp;
    v5->_MMCSAccessHeaderTimeStamp = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MMCSReceipt"];
    MMCSReceipt = v5->_MMCSReceipt;
    v5->_MMCSReceipt = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MMCSURL"];
    if (v32)
    {
      v33 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v32];
      MMCSURL = v5->_MMCSURL;
      v5->_MMCSURL = v33;
    }

    v5->_protocolFileSize = [v4 decodeInt64ForKey:@"protocolFileSize"];
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GUID"];
    GUID = v5->_GUID;
    v5->_GUID = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetCollectionGUID"];
    assetCollectionGUID = v5->_assetCollectionGUID;
    v5->_assetCollectionGUID = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batchCreationDate"];
    batchCreationDate = v5->_batchCreationDate;
    v5->_batchCreationDate = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoCreationDate"];
    photoCreationDate = v5->_photoCreationDate;
    v5->_photoCreationDate = v41;

    v43 = [v4 decodePropertyListForKey:@"userInfo"];
    [(MSAsset *)v5 setUserInfo:v43];

    v5->_mediaAssetType = [v4 decodeIntegerForKey:@"mediaAssetType"];
    v5->_assetDataAvailableOnServer = [v4 decodeBoolForKey:@"assetDataAvailableOnServer"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v22 = a3;
  v4 = self;
  objc_sync_enter(v4);
  masterAssetHash = v4->_masterAssetHash;
  if (masterAssetHash)
  {
    [v22 encodeObject:masterAssetHash forKey:@"masterAssetHash"];
  }

  metadata = v4->_metadata;
  if (metadata)
  {
    [v22 encodeObject:metadata forKey:@"metadata"];
  }

  fileHash = v4->_fileHash;
  if (fileHash)
  {
    [v22 encodeObject:fileHash forKey:@"fileHash"];
  }

  type = v4->_type;
  if (type)
  {
    [v22 encodeObject:type forKey:@"type"];
  }

  [v22 encodeInt64:v4->_protocolFileSize forKey:@"protocolFileSize"];
  MMCSAccessHeader = v4->_MMCSAccessHeader;
  if (MMCSAccessHeader)
  {
    [v22 encodeObject:MMCSAccessHeader forKey:@"MMCSAccessHeader"];
  }

  MMCSAccessHeaderTimeStamp = v4->_MMCSAccessHeaderTimeStamp;
  if (MMCSAccessHeaderTimeStamp)
  {
    [v22 encodeObject:MMCSAccessHeaderTimeStamp forKey:@"MMCSAccessHeaderTimeStamp"];
  }

  path = v4->_path;
  if (path)
  {
    [v22 encodeObject:path forKey:@"path"];
  }

  fileData = v4->_fileData;
  if (fileData)
  {
    [v22 encodeObject:fileData forKey:@"fileData"];
  }

  MMCSURL = v4->_MMCSURL;
  if (MMCSURL)
  {
    v14 = [(NSURL *)MMCSURL absoluteString];
    [v22 encodeObject:v14 forKey:@"MMCSURL"];
  }

  MMCSReceipt = v4->_MMCSReceipt;
  if (MMCSReceipt)
  {
    [v22 encodeObject:MMCSReceipt forKey:@"MMCSReceipt"];
  }

  GUID = v4->_GUID;
  if (GUID)
  {
    [v22 encodeObject:GUID forKey:@"GUID"];
  }

  assetCollectionGUID = v4->_assetCollectionGUID;
  if (assetCollectionGUID)
  {
    [v22 encodeObject:assetCollectionGUID forKey:@"assetCollectionGUID"];
  }

  batchCreationDate = v4->_batchCreationDate;
  if (batchCreationDate)
  {
    [v22 encodeObject:batchCreationDate forKey:@"batchCreationDate"];
  }

  photoCreationDate = v4->_photoCreationDate;
  if (photoCreationDate)
  {
    [v22 encodeObject:photoCreationDate forKey:@"photoCreationDate"];
  }

  v20 = [(MSAsset *)v4 userInfo];

  if (v20)
  {
    v21 = [(MSAsset *)v4 userInfo];
    [v22 encodeObject:v21 forKey:@"userInfo"];
  }

  [v22 encodeInteger:-[MSAsset mediaAssetType](v4 forKey:{"mediaAssetType"), @"mediaAssetType"}];
  [v22 encodeBool:-[MSAsset assetDataAvailableOnServer](v4 forKey:{"assetDataAvailableOnServer"), @"assetDataAvailableOnServer"}];
  objc_sync_exit(v4);
}

- (unint64_t)hash
{
  v2 = self;
  objc_sync_enter(v2);
  GUID = v2->_GUID;
  if (GUID)
  {
    v4 = [(NSString *)GUID hash];
  }

  else
  {
    v7.receiver = v2;
    v7.super_class = MSAsset;
    v4 = [(MSAsset *)&v7 hash];
  }

  v5 = v4;
  objc_sync_exit(v2);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5 == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      GUID = v5->_GUID;
      v8 = [(MSAsset *)v6 GUID];
      LOBYTE(GUID) = [(NSString *)GUID isEqualToString:v8];

      if (GUID)
      {
        v9 = 1;
      }

      else
      {
        v10 = [(MSAsset *)v5 assetCollectionGUID];
        if (v10)
        {
          v9 = 0;
        }

        else
        {
          v11 = [(MSAsset *)v6 assetCollectionGUID];

          if (v11)
          {
            v9 = 0;
            goto LABEL_12;
          }

          v10 = [(NSDictionary *)v5->_metadata objectForKey:@"MSAssetMetadataAssetFileTransferUUID"];
          v13 = [(MSAsset *)v6 metadataValueForKey:@"MSAssetMetadataAssetFileTransferUUID"];
          v14 = v13;
          if (v10 && v13)
          {
            v9 = [v10 isEqualToString:v13];
          }

          else
          {
            fileHash = v5->_fileHash;
            v16 = [(MSAsset *)v6 fileHash];
            v9 = [(NSData *)fileHash isEqual:v16];
          }
        }
      }

LABEL_12:

      goto LABEL_13;
    }

    v17.receiver = v5;
    v17.super_class = MSAsset;
    v9 = [(MSAsset *)&v17 isEqual:v4];
  }

LABEL_13:
  objc_sync_exit(v5);

  return v9;
}

- (unint64_t)_fileSizeOnDisk
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = v3;
  if (v2->_path && [v3 fileExistsAtPath:?])
  {
    path = v2->_path;
    v14 = 0;
    v6 = [v4 attributesOfItemAtPath:path error:&v14];
    v7 = v14;
    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v13 = v2->_path;
        *buf = 138412546;
        v16 = v13;
        v17 = 2114;
        v18 = v7;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Can't query for file size at path %@. Error: %{public}@", buf, 0x16u);
      }

      v8 = [(NSDictionary *)v2->_metadata objectForKey:@"MSAssetMetadataFileSize"];
      v9 = [v8 unsignedLongLongValue];
    }

    else
    {
      v9 = [v6 fileSize];
    }
  }

  else
  {
    v10 = [(NSDictionary *)v2->_metadata objectForKey:@"MSAssetMetadataFileSize"];
    v9 = [v10 unsignedLongLongValue];
  }

  objc_sync_exit(v2);
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)setMMCSAccessHeader:(id)a3 andTimeStamp:(id)a4
{
  v6 = a3;
  v7 = a4;
  obj = self;
  objc_sync_enter(obj);
  MMCSAccessHeader = obj->_MMCSAccessHeader;
  obj->_MMCSAccessHeader = v6;
  v9 = v6;

  MMCSAccessHeaderTimeStamp = obj->_MMCSAccessHeaderTimeStamp;
  obj->_MMCSAccessHeaderTimeStamp = v7;

  objc_sync_exit(obj);
}

- (void)setMMCSAccessHeader:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  [(MSAsset *)self setMMCSAccessHeader:v5 andTimeStamp:v6];
}

- (id)MMCSItemType
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MSAsset *)v2 path];
  v4 = [v3 pathExtension];

  if (!v4 || ![v4 length])
  {
    v5 = [(MSAsset *)v2 MMCSUTI];
    if (v5)
    {
      v6 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v5];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 preferredFilenameExtension];

        v4 = v8;
      }
    }
  }

  objc_sync_exit(v2);

  return v4;
}

- (int)MMCSOpenNewFileDescriptor
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MSAsset *)v2 path];

  if (v3)
  {
    v4 = [(MSAsset *)v2 path];
    v5 = open([v4 fileSystemRepresentation], 0);
  }

  else
  {
    v5 = -1;
  }

  objc_sync_exit(v2);

  return v5;
}

- (void)setMMCSItemID:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = 134218242;
    v8 = a3;
    v9 = 2114;
    v10 = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Setting MMCS Item ID to %lld for %{public}@", &v7, 0x16u);
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(MSAsset *)self addMetadataValue:v5 forKey:@"MSAssetMetadataItemID"];

  v6 = *MEMORY[0x277D85DE8];
}

- (unint64_t)MMCSItemID
{
  v2 = [(MSAsset *)self metadataValueForKey:@"MSAssetMetadataItemID"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (void)setMMCSItemFlags:(unsigned int)a3
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Ignoring attempt to set MMCS Item Flags on an MSAsset.", v3, 2u);
  }
}

- (unint64_t)_fileSize
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSDictionary *)v2->_metadata objectForKey:@"MSAssetMetadataFileSize"];
  v4 = [v3 unsignedLongLongValue];

  objc_sync_exit(v2);
  return v4;
}

- (BOOL)isVideo
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = (v2->_mediaAssetType & 0xFFFFFFFFFFFFFFFCLL) == 4;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isPhoto
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_mediaAssetType - 1 < 3;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)description
{
  v2 = self;
  objc_sync_enter(v2);
  v8.receiver = v2;
  v8.super_class = MSAsset;
  v3 = [(MSAsset *)&v8 description];
  v4 = [v3 mutableCopy];

  if (v2->_GUID)
  {
    [v4 appendFormat:@" GUID: %@ ", v2->_GUID];
  }

  if (v2->_assetCollectionGUID)
  {
    [v4 appendFormat:@"Asset collection GUID: %@ ", v2->_assetCollectionGUID];
  }

  v5 = v2->_path;
  if (v5 && (os_trace_get_mode() & 0x1000000) != 0)
  {
    [v4 appendFormat:@"Path: %@ ", v5];
  }

  if (_thePlatform && [_thePlatform shouldLogAtLevel:7])
  {
    if ([(NSDictionary *)v2->_metadata count])
    {
      [v4 appendFormat:@"\nmetadata: %@", v2->_metadata];
    }

    if (v2->_type)
    {
      [v4 appendFormat:@"  type: %@\n", v2->_type];
    }

    if (v2->_masterAssetHash)
    {
      [v4 appendFormat:@"  master asset hash: %@\n", v2->_masterAssetHash];
    }

    if (v2->_fileHash)
    {
      [v4 appendFormat:@"  file hash: %@\n", v2->_fileHash];
    }

    if (v2->_MMCSAccessHeader)
    {
      [v4 appendFormat:@"  MMCS header:%@\n", v2->_MMCSAccessHeader];
    }

    if (v2->_MMCSAccessHeaderTimeStamp)
    {
      [v4 appendFormat:@"  MMCS Header set on: %@", v2->_MMCSAccessHeaderTimeStamp];
    }

    if (v2->_MMCSURL)
    {
      [v4 appendFormat:@"  MMCS URL: %@\n", v2->_MMCSURL];
    }

    if (v2->_MMCSReceipt)
    {
      [v4 appendFormat:@"  MMCS Receipt: %@\n", v2->_MMCSReceipt];
    }

    if (v2->_fileData)
    {
      [v4 appendFormat:@"  File data present.\n"];
    }

    if (v2->_batchCreationDate)
    {
      [v4 appendFormat:@"  Batch creation date: %@\n", v2->_batchCreationDate];
    }

    if (v2->_photoCreationDate)
    {
      [v4 appendFormat:@"  Asset creation date: %@\n", v2->_photoCreationDate];
    }

    if ([(MSAsset *)v2 isPhoto])
    {
      [v4 appendFormat:@"  Asset is photo\n"];
      [v4 appendFormat:@"  Media Asset Type %ld\n", -[MSAsset mediaAssetType](v2, "mediaAssetType")];
    }

    if ([(MSAsset *)v2 isVideo])
    {
      [v4 appendFormat:@"  Asset is video\n"];
      [v4 appendFormat:@"  Media Asset Type %ld\n", -[MSAsset mediaAssetType](v2, "mediaAssetType")];
    }

    if (v2->_assetDataAvailableOnServer)
    {
      v6 = &stru_2858BC598;
    }

    else
    {
      v6 = @"not";
    }

    [v4 appendFormat:@"  Asset data is %@ available on server\n", v6];
    [v4 appendFormat:@"  protocol file size:%lld\n", v2->_protocolFileSize];
  }

  objc_sync_exit(v2);

  return v4;
}

- (MSAsset)init
{
  v3 = [MEMORY[0x277CCACA8] MSMakeUUID];
  v4 = [(MSAsset *)self initWithGUID:v3];

  return v4;
}

- (MSAsset)initWithGUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MSAsset;
  v6 = [(MSAsset *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_GUID, a3);
    v7->_mediaAssetType = 0;
    v7->_assetDataAvailableOnServer = 1;
  }

  return v7;
}

- (void)setMMCSError:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(MSAsset *)v4 setError:v5];
  objc_sync_exit(v4);
}

- (NSError)MMCSError
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MSAsset *)v2 error];
  objc_sync_exit(v2);

  return v3;
}

- (void)setProtocolFileSize:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  [(MSAsset *)obj setMMCSItemSize:a3];
  objc_sync_exit(obj);
}

- (unint64_t)protocolFileSize
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MSAsset *)v2 MMCSItemSize];
  objc_sync_exit(v2);

  return v3;
}

- (void)setType:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(MSAsset *)v4 setMMCSUTI:v5];
  objc_sync_exit(v4);
}

- (NSString)type
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MSAsset *)v2 MMCSUTI];
  objc_sync_exit(v2);

  return v3;
}

- (void)setFileHash:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(MSAsset *)v4 setMMCSHash:v5];
  objc_sync_exit(v4);
}

- (NSData)fileHash
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MSAsset *)v2 MMCSHash];
  objc_sync_exit(v2);

  return v3;
}

+ (id)assetWithAsset:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 GUID];
  v7 = [v5 initWithGUID:v6];

  v8 = [v4 masterAssetHash];
  [v7 setMasterAssetHash:v8];

  v9 = [v4 metadata];
  [v7 setMetadata:v9];

  v10 = [v4 path];
  [v7 setPath:v10];

  v11 = [v4 MMCSURL];
  [v7 setMMCSURL:v11];

  v12 = [v4 fileData];
  [v7 setFileData:v12];

  v13 = [v4 error];
  [v7 setError:v13];

  v14 = [v4 MMCSUTI];
  [v7 setMMCSUTI:v14];

  v15 = [v4 MMCSHash];
  [v7 setMMCSHash:v15];

  v16 = [v4 MMCSURL];
  [v7 setMMCSURL:v16];

  [v7 setMMCSItemSize:{objc_msgSend(v4, "MMCSItemSize")}];
  v17 = [v4 MMCSAccessHeader];
  v18 = [v4 MMCSAccessHeaderTimeStamp];
  [v7 setMMCSAccessHeader:v17 andTimeStamp:v18];

  v19 = [v4 MMCSReceipt];
  [v7 setMMCSReceipt:v19];

  v20 = [v4 assetCollectionGUID];
  [v7 setAssetCollectionGUID:v20];

  v21 = [v4 batchCreationDate];
  [v7 setBatchCreationDate:v21];

  v22 = [v4 photoCreationDate];
  [v7 setPhotoCreationDate:v22];

  v23 = [v4 userInfo];
  v24 = [v23 copy];
  [v7 setUserInfo:v24];

  [v7 setMediaAssetType:{objc_msgSend(v4, "mediaAssetType")}];
  v25 = [v4 assetDataAvailableOnServer];

  [v7 setAssetDataAvailableOnServer:v25];

  return v7;
}

+ (id)asset
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (id)MSASPProtocolDictionary
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(MSAsset *)self metadata];
  v5 = [v4 mutableCopy];

  v6 = [(MSAsset *)self type];

  if (v6)
  {
    v7 = [(MSAsset *)self type];
    [v3 setObject:v7 forKey:@"type"];
  }

  if ([(MSAsset *)self isVideo])
  {
    v8 = [(MSAsset *)self mediaAssetType]- 4;
    if (v8 >= 4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v24 = self;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Found an unknown video asset type", buf, 0xCu);
      }
    }

    else
    {
      [v3 setObject:off_278E92530[v8] forKey:@"videoType"];
    }
  }

  v9 = [(MSAsset *)self MMCSHash];

  if (v9)
  {
    v10 = [(MSAsset *)self MMCSHash];
    v11 = [v10 MSHexString];
    [v3 setObject:v11 forKey:@"checksum"];
  }

  v12 = [v5 objectForKey:@"MSAssetMetadataFileSize"];
  v13 = v12;
  if (v12)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", objc_msgSend(v12, "unsignedLongLongValue")];
    [v3 setObject:v14 forKey:@"size"];

    [v5 removeObjectForKey:@"MSAssetMetadataFileSize"];
  }

  v15 = [v5 objectForKey:@"MSAssetMetadataPixelWidth"];
  v16 = v15;
  if (v15)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v15, "unsignedLongValue")];
    [v3 setObject:v17 forKey:@"width"];

    [v5 removeObjectForKey:@"MSAssetMetadataPixelWidth"];
  }

  v18 = [v5 objectForKey:@"MSAssetMetadataPixelHeight"];
  v19 = v18;
  if (v18)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v18, "unsignedLongValue")];
    [v3 setObject:v20 forKey:@"height"];

    [v5 removeObjectForKey:@"MSAssetMetadataPixelHeight"];
  }

  [v5 removeObjectForKey:@"MSAssetMetadataItemID"];
  if ([v5 count])
  {
    [v3 setObject:v5 forKey:@"metadata"];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)MSASPAssetFromProtocolDictionary:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[MSAsset asset];
  v5 = [v3 mutableCopy];

  v6 = [v5 objectForKey:@"metadata"];
  v7 = [v6 mutableCopy];

  if (v7)
  {
    [v5 removeObjectForKey:@"metadata"];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = [v5 objectForKey:@"height"];
  if (v8)
  {
    [v5 removeObjectForKey:@"height"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{strtoul(objc_msgSend(v8, "UTF8String"), 0, 10)}];
      [v7 setObject:v9 forKey:@"MSAssetMetadataPixelHeight"];
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
      [v7 setObject:v11 forKey:@"MSAssetMetadataPixelWidth"];
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
      [v7 setObject:v13 forKey:@"MSAssetMetadataFileSize"];
    }
  }

  v14 = [v5 objectForKey:@"checksum"];
  if (v14)
  {
    [v5 removeObjectForKey:@"checksum"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 MSHexData];
      [v4 setMMCSHash:v15];
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
    v20 = [v7 objectForKey:@"MSAssetMetadataAssetType"];
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
            v29 = a1;
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
    v29 = a1;
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
      v29 = a1;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Found uploadpending flag for non-video asset", buf, 0xCu);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v24 isEqualToString:@"1"])
    {
      [v4 setAssetDataAvailableOnServer:0];
    }
  }

  [v4 setMetadata:v7];

  v25 = *MEMORY[0x277D85DE8];

  return v4;
}

@end