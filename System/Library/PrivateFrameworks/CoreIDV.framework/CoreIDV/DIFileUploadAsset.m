@interface DIFileUploadAsset
- (DIFileUploadAsset)initWithCoder:(id)a3;
- (DIFileUploadAsset)initWithURL:(id)a3 assetType:(int64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DIFileUploadAsset

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = DIFileUploadAsset;
  v4 = a3;
  [(DIUploadAsset *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_url forKey:{@"assetURL", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_fileHandle forKey:@"assetFileHandle"];
}

- (DIFileUploadAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DIFileUploadAsset;
  v5 = [(DIUploadAsset *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetURL"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetFileHandle"];
    fileHandle = v5->_fileHandle;
    v5->_fileHandle = v8;
  }

  return v5;
}

- (DIFileUploadAsset)initWithURL:(id)a3 assetType:(int64_t)a4
{
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x277CBEA90]);
  v15.receiver = self;
  v15.super_class = DIFileUploadAsset;
  v9 = [(DIUploadAsset *)&v15 initWithData:v8 assetType:a4];

  if (v9)
  {
    objc_storeStrong(&v9->_url, a3);
    v10 = MEMORY[0x277CCA9F8];
    v11 = [(NSURL *)v9->_url path];
    v12 = [v10 fileHandleForUpdatingAtPath:v11];
    fileHandle = v9->_fileHandle;
    v9->_fileHandle = v12;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DIUploadAsset *)self type];
  v5 = [(DIUploadAsset *)self assetID];
  v6 = [v5 UUIDString];
  v7 = [(DIUploadAsset *)self data];
  v8 = [v7 description];
  v9 = [(DIFileUploadAsset *)self url];
  v10 = [v9 path];
  v11 = [v3 stringWithFormat:@"DIFileUploadAsset: type=%ld assetID=%@, data=%@ url=%@", v4, v6, v8, v10];

  return v11;
}

@end