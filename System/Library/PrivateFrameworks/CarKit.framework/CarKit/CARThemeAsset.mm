@interface CARThemeAsset
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToThemeAsset:(id)asset;
- (CARThemeAsset)initWithBaseURL:(id)l version:(id)version;
- (CARThemeAsset)initWithCoder:(id)coder;
- (NSString)identifier;
- (NSURL)assetsArchiveURL;
- (NSURL)layoutURL;
- (id)accessoryAdditionsData;
- (id)certificateData;
- (id)description;
- (id)signatureData;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CARThemeAsset

- (CARThemeAsset)initWithBaseURL:(id)l version:(id)version
{
  lCopy = l;
  versionCopy = version;
  v12.receiver = self;
  v12.super_class = CARThemeAsset;
  v9 = [(CARThemeAsset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseURL, l);
    objc_storeStrong(&v10->_version, version);
  }

  return v10;
}

- (CARThemeAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];

  v7 = [(CARThemeAsset *)self initWithBaseURL:v6 version:v5];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  baseURL = [(CARThemeAsset *)self baseURL];
  [coderCopy encodeObject:baseURL forKey:@"baseURL"];

  version = [(CARThemeAsset *)self version];
  [coderCopy encodeObject:version forKey:@"version"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CARThemeAsset *)self isEqualToThemeAsset:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToThemeAsset:(id)asset
{
  assetCopy = asset;
  baseURL = [(CARThemeAsset *)self baseURL];
  uRLByStandardizingPath = [baseURL URLByStandardizingPath];

  baseURL2 = [assetCopy baseURL];
  uRLByStandardizingPath2 = [baseURL2 URLByStandardizingPath];

  if ([uRLByStandardizingPath isEqual:uRLByStandardizingPath2])
  {
    version = [(CARThemeAsset *)self version];
    version2 = [assetCopy version];
    v11 = [version isEqualToThemeAssetVersion:version2];
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
  version = [(CARThemeAsset *)self version];
  baseURL = [(CARThemeAsset *)self baseURL];
  v7 = [v3 stringWithFormat:@"%@ [%@, baseURL: %@]", v4, version, baseURL];

  return v7;
}

- (NSString)identifier
{
  version = [(CARThemeAsset *)self version];
  identifier = [version identifier];

  return identifier;
}

- (NSURL)layoutURL
{
  baseURL = [(CARThemeAsset *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"CarPlayPhone.assets" isDirectory:1];

  return v3;
}

- (NSURL)assetsArchiveURL
{
  baseURL = [(CARThemeAsset *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"CarPlayAccessory.assets.zip" isDirectory:0];

  return v3;
}

- (id)certificateData
{
  baseURL = [(CARThemeAsset *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"Certificate.chain.pem" isDirectory:0];

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
  baseURL = [(CARThemeAsset *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"CarPlayAccessory.assets.sha256" isDirectory:0];

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
  baseURL = [(CARThemeAsset *)self baseURL];
  v3 = [baseURL URLByAppendingPathComponent:@"AccessoryAdditions" isDirectory:0];

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