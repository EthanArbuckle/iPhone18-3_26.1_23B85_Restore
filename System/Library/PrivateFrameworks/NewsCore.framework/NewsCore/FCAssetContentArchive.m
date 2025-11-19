@interface FCAssetContentArchive
- (BOOL)isEqual:(id)a3;
- (FCAssetContentArchive)initWithCoder:(id)a3;
- (id)description;
- (id)manifest;
- (id)unarchiveIntoContentContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCAssetContentArchive

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [(NSURL *)self->_remoteURL isEqual:v6[2]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  [(FCDescription *)v3 addField:@"metadata" object:self->_asset];
  [(FCDescription *)v3 addField:@"remoteURL" object:self->_remoteURL];
  [(FCDescription *)v3 addField:@"filePath" value:self->_filePath];
  v4 = [(FCDescription *)v3 descriptionString];

  return v4;
}

- (FCAssetContentArchive)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FCAssetContentArchive;
  v5 = [(FCAssetContentArchive *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asset"];
    asset = v5->_asset;
    v5->_asset = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteURL"];
    remoteURL = v5->_remoteURL;
    v5->_remoteURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filePath"];
    filePath = v5->_filePath;
    v5->_filePath = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  asset = self->_asset;
  v5 = a3;
  [v5 encodeObject:asset forKey:@"asset"];
  [v5 encodeObject:self->_remoteURL forKey:@"remoteURL"];
  [v5 encodeObject:self->_filePath forKey:@"filePath"];
}

- (id)unarchiveIntoContentContext:(id)a3
{
  v4 = [a3 assetManager];
  asset = self->_asset;
  remoteURL = self->_remoteURL;
  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_filePath];
  v8 = [v4 importAsset:asset remoteURL:remoteURL fileURL:v7];

  v9 = [[FCContentUnarchiveResult alloc] initWithInterestToken:v8 storageSize:[(FCAssetContentArchive *)self storageSize]];

  return v9;
}

- (id)manifest
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [FCContentManifest alloc];
  v8[0] = self->_remoteURL;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [(FCContentManifest *)v3 initWithAssetURLs:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end