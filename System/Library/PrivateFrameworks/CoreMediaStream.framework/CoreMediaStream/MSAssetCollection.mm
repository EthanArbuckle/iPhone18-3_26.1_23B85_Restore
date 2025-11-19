@interface MSAssetCollection
+ (id)collectionWithMasterAsset:(id)a3 fileName:(id)a4;
+ (id)collectionWithMasterAsset:(id)a3 fileName:(id)a4 derivedAssets:(id)a5;
- (BOOL)isEqual:(id)a3;
- (MSAssetCollection)initWithCoder:(id)a3;
- (MSAssetCollection)initWithMasterAsset:(id)a3 fileName:(id)a4 derivedAssets:(id)a5;
- (NSData)masterAssetHash;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setDerivedAssets:(id)a3;
@end

@implementation MSAssetCollection

- (MSAssetCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MSAssetCollection;
  v5 = [(MSAssetCollection *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetCollectionID"];
    assetCollectionID = v5->_assetCollectionID;
    v5->_assetCollectionID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ctag"];
    ctag = v5->_ctag;
    v5->_ctag = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"masterAsset"];
    masterAsset = v5->_masterAsset;
    v5->_masterAsset = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"derivedAssets"];
    derivedAssets = v5->_derivedAssets;
    v5->_derivedAssets = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileName"];
    fileName = v5->_fileName;
    v5->_fileName = v17;

    v5->_wasDeleted = [v4 decodeBoolForKey:@"wasDeleted"];
    v5->_initialFailureDate = [v4 decodeInt64ForKey:@"initialFailureDate"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverUploadedDate"];
    serverUploadedDate = v5->_serverUploadedDate;
    v5->_serverUploadedDate = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  assetCollectionID = self->_assetCollectionID;
  v11 = v4;
  if (assetCollectionID)
  {
    [v4 encodeObject:assetCollectionID forKey:@"assetCollectionID"];
    v4 = v11;
  }

  ctag = self->_ctag;
  if (ctag)
  {
    [v11 encodeObject:ctag forKey:@"ctag"];
    v4 = v11;
  }

  masterAsset = self->_masterAsset;
  if (masterAsset)
  {
    [v11 encodeObject:masterAsset forKey:@"masterAsset"];
    v4 = v11;
  }

  derivedAssets = self->_derivedAssets;
  if (derivedAssets)
  {
    [v11 encodeObject:derivedAssets forKey:@"derivedAssets"];
    v4 = v11;
  }

  fileName = self->_fileName;
  if (fileName)
  {
    [v11 encodeObject:fileName forKey:@"fileName"];
    v4 = v11;
  }

  if (self->_wasDeleted)
  {
    [v11 encodeBool:1 forKey:@"wasDeleted"];
    v4 = v11;
  }

  if (self->_initialFailureDate >= 1)
  {
    [v11 encodeInt64:? forKey:?];
    v4 = v11;
  }

  serverUploadedDate = self->_serverUploadedDate;
  if (serverUploadedDate)
  {
    [v11 encodeObject:serverUploadedDate forKey:@"serverUploadedDate"];
    v4 = v11;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    masterAsset = self->_masterAsset;
    v6 = [v4 masterAsset];
    v7 = [(MSAsset *)masterAsset isEqual:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MSAssetCollection;
    v7 = [(MSAssetCollection *)&v9 isEqual:v4];
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

- (void)setDerivedAssets:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_derivedAssets, a3);
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
        v12 = [(MSAsset *)self->_masterAsset fileHash];
        [v11 setMasterAssetHash:v12];

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
  v2 = [(MSAssetCollection *)self masterAsset];
  v3 = [v2 fileHash];

  return v3;
}

- (MSAssetCollection)initWithMasterAsset:(id)a3 fileName:(id)a4 derivedAssets:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MSAssetCollection;
  v12 = [(MSAssetCollection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_masterAsset, a3);
    objc_storeStrong(&v13->_fileName, a4);
    objc_storeStrong(&v13->_derivedAssets, a5);
  }

  return v13;
}

+ (id)collectionWithMasterAsset:(id)a3 fileName:(id)a4 derivedAssets:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithMasterAsset:v10 fileName:v9 derivedAssets:v8];

  return v11;
}

+ (id)collectionWithMasterAsset:(id)a3 fileName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithMasterAsset:v7 fileName:v6 derivedAssets:0];

  return v8;
}

@end