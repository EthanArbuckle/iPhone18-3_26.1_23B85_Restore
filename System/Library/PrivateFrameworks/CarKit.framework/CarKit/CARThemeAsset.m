@interface CARThemeAsset
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToThemeAsset:(id)a3;
- (CARThemeAsset)initWithBaseURL:(id)a3 version:(id)a4;
- (CARThemeAsset)initWithCoder:(id)a3;
- (NSString)identifier;
- (NSURL)assetsArchiveURL;
- (NSURL)layoutURL;
- (id)accessoryAdditionsData;
- (id)certificateData;
- (id)description;
- (id)signatureData;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CARThemeAsset

- (CARThemeAsset)initWithBaseURL:(id)a3 version:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CARThemeAsset;
  v9 = [(CARThemeAsset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseURL, a3);
    objc_storeStrong(&v10->_version, a4);
  }

  return v10;
}

- (CARThemeAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];

  v7 = [(CARThemeAsset *)self initWithBaseURL:v6 version:v5];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CARThemeAsset *)self baseURL];
  [v4 encodeObject:v5 forKey:@"baseURL"];

  v6 = [(CARThemeAsset *)self version];
  [v4 encodeObject:v6 forKey:@"version"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CARThemeAsset *)self isEqualToThemeAsset:v4];
  }

  return v5;
}

- (BOOL)isEqualToThemeAsset:(id)a3
{
  v4 = a3;
  v5 = [(CARThemeAsset *)self baseURL];
  v6 = [v5 URLByStandardizingPath];

  v7 = [v4 baseURL];
  v8 = [v7 URLByStandardizingPath];

  if ([v6 isEqual:v8])
  {
    v9 = [(CARThemeAsset *)self version];
    v10 = [v4 version];
    v11 = [v9 isEqualToThemeAssetVersion:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = CARThemeAsset;
  v4 = [(CARThemeAsset *)&v9 description];
  v5 = [(CARThemeAsset *)self version];
  v6 = [(CARThemeAsset *)self baseURL];
  v7 = [v3 stringWithFormat:@"%@ [%@, baseURL: %@]", v4, v5, v6];

  return v7;
}

- (NSString)identifier
{
  v2 = [(CARThemeAsset *)self version];
  v3 = [v2 identifier];

  return v3;
}

- (NSURL)layoutURL
{
  v2 = [(CARThemeAsset *)self baseURL];
  v3 = [v2 URLByAppendingPathComponent:@"CarPlayPhone.assets" isDirectory:1];

  return v3;
}

- (NSURL)assetsArchiveURL
{
  v2 = [(CARThemeAsset *)self baseURL];
  v3 = [v2 URLByAppendingPathComponent:@"CarPlayAccessory.assets.zip" isDirectory:0];

  return v3;
}

- (id)certificateData
{
  v2 = [(CARThemeAsset *)self baseURL];
  v3 = [v2 URLByAppendingPathComponent:@"Certificate.chain.pem" isDirectory:0];

  v14 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3 options:0 error:&v14];
  v5 = v14;
  if (!v4)
  {
    v6 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CARThemeAsset *)v5 certificateData:v6];
    }
  }

  return v4;
}

- (id)signatureData
{
  v2 = [(CARThemeAsset *)self baseURL];
  v3 = [v2 URLByAppendingPathComponent:@"CarPlayAccessory.assets.sha256" isDirectory:0];

  v14 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3 options:0 error:&v14];
  v5 = v14;
  if (!v4)
  {
    v6 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CARThemeAsset *)v5 signatureData:v6];
    }
  }

  return v4;
}

- (id)accessoryAdditionsData
{
  v2 = [(CARThemeAsset *)self baseURL];
  v3 = [v2 URLByAppendingPathComponent:@"AccessoryAdditions" isDirectory:0];

  v16 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3 options:0 error:&v16];
  v5 = v16;
  v6 = CarThemeAssetsLogging();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_INFO, "Accessory Additions data available", v15, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(CARThemeAsset *)v5 accessoryAdditionsData:v7];
  }

  return v4;
}

@end