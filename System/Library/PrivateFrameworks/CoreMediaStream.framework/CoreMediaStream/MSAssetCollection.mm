@interface MSAssetCollection
+ (id)collectionWithMasterAsset:(id)asset fileName:(id)name;
+ (id)collectionWithMasterAsset:(id)asset fileName:(id)name derivedAssets:(id)assets;
- (BOOL)isEqual:(id)equal;
- (MSAssetCollection)initWithCoder:(id)coder;
- (MSAssetCollection)initWithMasterAsset:(id)asset fileName:(id)name derivedAssets:(id)assets;
- (NSData)masterAssetHash;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setDerivedAssets:(id)assets;
@end

@implementation MSAssetCollection

- (MSAssetCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = MSAssetCollection;
  v5 = [(MSAssetCollection *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetCollectionID"];
    assetCollectionID = v5->_assetCollectionID;
    v5->_assetCollectionID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ctag"];
    ctag = v5->_ctag;
    v5->_ctag = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"masterAsset"];
    masterAsset = v5->_masterAsset;
    v5->_masterAsset = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"derivedAssets"];
    derivedAssets = v5->_derivedAssets;
    v5->_derivedAssets = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileName"];
    fileName = v5->_fileName;
    v5->_fileName = v17;

    v5->_wasDeleted = [coderCopy decodeBoolForKey:@"wasDeleted"];
    v5->_initialFailureDate = [coderCopy decodeInt64ForKey:@"initialFailureDate"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverUploadedDate"];
    serverUploadedDate = v5->_serverUploadedDate;
    v5->_serverUploadedDate = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetCollectionID = self->_assetCollectionID;
  v11 = coderCopy;
  if (assetCollectionID)
  {
    [coderCopy encodeObject:assetCollectionID forKey:@"assetCollectionID"];
    coderCopy = v11;
  }

  ctag = self->_ctag;
  if (ctag)
  {
    [v11 encodeObject:ctag forKey:@"ctag"];
    coderCopy = v11;
  }

  masterAsset = self->_masterAsset;
  if (masterAsset)
  {
    [v11 encodeObject:masterAsset forKey:@"masterAsset"];
    coderCopy = v11;
  }

  derivedAssets = self->_derivedAssets;
  if (derivedAssets)
  {
    [v11 encodeObject:derivedAssets forKey:@"derivedAssets"];
    coderCopy = v11;
  }

  fileName = self->_fileName;
  if (fileName)
  {
    [v11 encodeObject:fileName forKey:@"fileName"];
    coderCopy = v11;
  }

  if (self->_wasDeleted)
  {
    [v11 encodeBool:1 forKey:@"wasDeleted"];
    coderCopy = v11;
  }

  if (self->_initialFailureDate >= 1)
  {
    [v11 encodeInt64:? forKey:?];
    coderCopy = v11;
  }

  serverUploadedDate = self->_serverUploadedDate;
  if (serverUploadedDate)
  {
    [v11 encodeObject:serverUploadedDate forKey:@"serverUploadedDate"];
    coderCopy = v11;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    masterAsset = self->_masterAsset;
    masterAsset = [equalCopy masterAsset];
    v7 = [(MSAsset *)masterAsset isEqual:masterAsset];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MSAssetCollection;
    v7 = [(MSAssetCollection *)&v9 isEqual:equalCopy];
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v7.receiver = self;
  v7.super_class = MSAssetCollection;
  v4 = [(MSAssetCollection *)&v7 description];
  v5 = [v3 stringWithString:v4];

  if (self->_assetCollectionID)
  {
    [v5 appendFormat:@"  Asset collection ID: %@\n", self->_assetCollectionID];
  }

  if (self->_ctag)
  {
    [v5 appendFormat:@" ctag: %@\n", self->_ctag];
  }

  if (self->_fileName && (os_trace_get_mode() & 0x1000000) != 0)
  {
    [v5 appendFormat:@" File name: %@\n", self->_fileName];
  }

  if (self->_serverUploadedDate)
  {
    [v5 appendFormat:@" Server uploaded date: %@\n", self->_serverUploadedDate];
  }

  if (self->_masterAsset)
  {
    [v5 appendFormat:@"  Master asset: %@\n", self->_masterAsset];
  }

  if (self->_derivedAssets)
  {
    [v5 appendFormat:@"  Derived assets: %@\n", self->_derivedAssets];
  }

  return v5;
}

- (void)setDerivedAssets:(id)assets
{
  v19 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  objc_storeStrong(&self->_derivedAssets, assets);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_derivedAssets;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        fileHash = [(MSAsset *)self->_masterAsset fileHash];
        [v11 setMasterAssetHash:fileHash];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (NSData)masterAssetHash
{
  masterAsset = [(MSAssetCollection *)self masterAsset];
  fileHash = [masterAsset fileHash];

  return fileHash;
}

- (MSAssetCollection)initWithMasterAsset:(id)asset fileName:(id)name derivedAssets:(id)assets
{
  assetCopy = asset;
  nameCopy = name;
  assetsCopy = assets;
  v15.receiver = self;
  v15.super_class = MSAssetCollection;
  v12 = [(MSAssetCollection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_masterAsset, asset);
    objc_storeStrong(&v13->_fileName, name);
    objc_storeStrong(&v13->_derivedAssets, assets);
  }

  return v13;
}

+ (id)collectionWithMasterAsset:(id)asset fileName:(id)name derivedAssets:(id)assets
{
  assetsCopy = assets;
  nameCopy = name;
  assetCopy = asset;
  v11 = [[self alloc] initWithMasterAsset:assetCopy fileName:nameCopy derivedAssets:assetsCopy];

  return v11;
}

+ (id)collectionWithMasterAsset:(id)asset fileName:(id)name
{
  nameCopy = name;
  assetCopy = asset;
  v8 = [[self alloc] initWithMasterAsset:assetCopy fileName:nameCopy derivedAssets:0];

  return v8;
}

@end