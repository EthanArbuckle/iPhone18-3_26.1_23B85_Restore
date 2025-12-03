@interface DIFileUploadAsset
- (DIFileUploadAsset)initWithCoder:(id)coder;
- (DIFileUploadAsset)initWithURL:(id)l assetType:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DIFileUploadAsset

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = DIFileUploadAsset;
  coderCopy = coder;
  [(DIUploadAsset *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_url forKey:{@"assetURL", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_fileHandle forKey:@"assetFileHandle"];
}

- (DIFileUploadAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DIFileUploadAsset;
  v5 = [(DIUploadAsset *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetURL"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetFileHandle"];
    fileHandle = v5->_fileHandle;
    v5->_fileHandle = v8;
  }

  return v5;
}

- (DIFileUploadAsset)initWithURL:(id)l assetType:(int64_t)type
{
  lCopy = l;
  v8 = objc_alloc_init(MEMORY[0x277CBEA90]);
  v15.receiver = self;
  v15.super_class = DIFileUploadAsset;
  v9 = [(DIUploadAsset *)&v15 initWithData:v8 assetType:type];

  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    v10 = MEMORY[0x277CCA9F8];
    path = [(NSURL *)v9->_url path];
    v12 = [v10 fileHandleForUpdatingAtPath:path];
    fileHandle = v9->_fileHandle;
    v9->_fileHandle = v12;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  type = [(DIUploadAsset *)self type];
  assetID = [(DIUploadAsset *)self assetID];
  uUIDString = [assetID UUIDString];
  data = [(DIUploadAsset *)self data];
  v8 = [data description];
  v9 = [(DIFileUploadAsset *)self url];
  path = [v9 path];
  v11 = [v3 stringWithFormat:@"DIFileUploadAsset: type=%ld assetID=%@, data=%@ url=%@", type, uUIDString, v8, path];

  return v11;
}

@end