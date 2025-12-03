@interface CustomAsset
- (CustomAsset)initWithCoder:(id)coder;
- (CustomAsset)initWithPath:(id)path;
- (NSString)description;
- (id)getAssetLocale;
- (id)toDictionary;
- (void)appendPathWithServiceAssetFolder:(id)folder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CustomAsset

- (void)encodeWithCoder:(id)coder
{
  path = self->_path;
  coderCopy = coder;
  [coderCopy encodeObject:path forKey:@"path"];
  [coderCopy encodeObject:self->_version forKey:@"version"];
  [coderCopy encodeObject:self->_assetMetadata forKey:@"assetMetadata"];
}

- (CustomAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CustomAsset;
  v5 = [(CustomAsset *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"assetMetadata"];
    assetMetadata = v5->_assetMetadata;
    v5->_assetMetadata = v13;
  }

  return v5;
}

- (id)getAssetLocale
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[CustomAsset getAssetLocale]";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s CustomAssets don't support getAssetLocale method.", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)appendPathWithServiceAssetFolder:(id)folder
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[CustomAsset appendPathWithServiceAssetFolder:]";
    _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s CustomAssets don't support appendPathWithServiceAssetFolder method.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)toDictionary
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setObject:v5 forKey:@"type"];

  getAssetPath = [(CustomAsset *)self getAssetPath];
  [v3 setObject:getAssetPath forKey:@"path"];

  getAssetVersion = [(CustomAsset *)self getAssetVersion];
  [v3 setObject:getAssetVersion forKey:@"version"];

  getAssetMetadata = [(CustomAsset *)self getAssetMetadata];
  [v3 setObject:getAssetMetadata forKey:@"asset_metadata"];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  getAssetPath = [(CustomAsset *)self getAssetPath];
  getAssetVersion = [(CustomAsset *)self getAssetVersion];
  getAssetMetadata = [(CustomAsset *)self getAssetMetadata];
  v7 = [v3 stringWithFormat:@"[Custom asset] - Asset path: %@, Asset version: %@, Asset metadata: %@.", getAssetPath, getAssetVersion, getAssetMetadata];

  return v7;
}

- (CustomAsset)initWithPath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = CustomAsset;
  v6 = [(CustomAsset *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, path);
    v8 = [CDMAssetsUtils loadAssetMetadataFromAsset:v7->_path];
    assetMetadata = v7->_assetMetadata;
    v7->_assetMetadata = v8;

    v10 = [CDMAssetsUtils getAssetVersionFromAssetMetadata:v7->_assetMetadata];
    version = v7->_version;
    v7->_version = v10;
  }

  return v7;
}

@end