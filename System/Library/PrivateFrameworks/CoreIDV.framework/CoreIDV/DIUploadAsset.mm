@interface DIUploadAsset
- (DIUploadAsset)initWithCoder:(id)coder;
- (DIUploadAsset)initWithData:(id)data assetType:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DIUploadAsset

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(DIUploadAsset *)self data];
  [coderCopy encodeObject:data forKey:@"assetData"];

  [coderCopy encodeInteger:-[DIUploadAsset type](self forKey:{"type"), @"assetType"}];
  assetID = [(DIUploadAsset *)self assetID];
  [coderCopy encodeObject:assetID forKey:@"assetID"];
}

- (DIUploadAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetData"];
  v6 = [coderCopy decodeIntegerForKey:@"assetType"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetID"];

  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    v9 = [(DIUploadAsset *)self initWithData:v5 assetType:v6];
    [(DIUploadAsset *)v9 setAssetID:v7];
    self = v9;
    selfCopy = self;
  }

  return selfCopy;
}

- (DIUploadAsset)initWithData:(id)data assetType:(int64_t)type
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = DIUploadAsset;
  v8 = [(DIUploadAsset *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_data, data);
    v9->_type = type;
    v10 = objc_alloc_init(MEMORY[0x277CCAD78]);
    assetID = v9->_assetID;
    v9->_assetID = v10;
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
  v9 = [v3 stringWithFormat:@"DIUploadAsset: type=%ld assetID=%@, data=%@", type, uUIDString, v8];

  return v9;
}

@end