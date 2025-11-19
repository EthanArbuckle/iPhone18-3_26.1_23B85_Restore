@interface DIUploadAsset
- (DIUploadAsset)initWithCoder:(id)a3;
- (DIUploadAsset)initWithData:(id)a3 assetType:(int64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DIUploadAsset

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DIUploadAsset *)self data];
  [v4 encodeObject:v5 forKey:@"assetData"];

  [v4 encodeInteger:-[DIUploadAsset type](self forKey:{"type"), @"assetType"}];
  v6 = [(DIUploadAsset *)self assetID];
  [v4 encodeObject:v6 forKey:@"assetID"];
}

- (DIUploadAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetData"];
  v6 = [v4 decodeIntegerForKey:@"assetType"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetID"];

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
    v10 = 0;
  }

  else
  {
    v9 = [(DIUploadAsset *)self initWithData:v5 assetType:v6];
    [(DIUploadAsset *)v9 setAssetID:v7];
    self = v9;
    v10 = self;
  }

  return v10;
}

- (DIUploadAsset)initWithData:(id)a3 assetType:(int64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = DIUploadAsset;
  v8 = [(DIUploadAsset *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_data, a3);
    v9->_type = a4;
    v10 = objc_alloc_init(MEMORY[0x277CCAD78]);
    assetID = v9->_assetID;
    v9->_assetID = v10;
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
  v9 = [v3 stringWithFormat:@"DIUploadAsset: type=%ld assetID=%@, data=%@", v4, v6, v8];

  return v9;
}

@end