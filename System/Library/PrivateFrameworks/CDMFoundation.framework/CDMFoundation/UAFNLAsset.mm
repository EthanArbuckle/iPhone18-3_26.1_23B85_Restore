@interface UAFNLAsset
- (NSString)description;
- (UAFNLAsset)initWithCoder:(id)coder;
- (id)initForFactor:(id)factor withPath:(id)path withAssetSetName:(id)name withUAFMetadata:(id)metadata withAssetSet:(id)set;
- (id)toDictionary;
- (void)appendPathWithServiceAssetFolder:(id)folder;
- (void)encodeWithCoder:(id)coder;
- (void)processUAFMetadata:(id)metadata;
@end

@implementation UAFNLAsset

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  getFactorName = [(UAFNLAsset *)self getFactorName];
  getAssetPath = [(UAFNLAsset *)self getAssetPath];
  getAssetVersion = [(UAFNLAsset *)self getAssetVersion];
  getAssetLocale = [(UAFNLAsset *)self getAssetLocale];
  getAssetSetName = [(UAFNLAsset *)self getAssetSetName];
  getAssetMetadata = [(UAFNLAsset *)self getAssetMetadata];
  v10 = [v3 stringWithFormat:@"[UAF asset] - Factor name: %@, Asset path: %@, Asset version: %@, Asset locale: %@, Asset Set Name: %@, Asset metadata: %@.", getFactorName, getAssetPath, getAssetVersion, getAssetLocale, getAssetSetName, getAssetMetadata];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  factorName = self->_factorName;
  coderCopy = coder;
  [coderCopy encodeObject:factorName forKey:@"factorName"];
  [coderCopy encodeObject:self->_path forKey:@"path"];
  [coderCopy encodeObject:self->_assetMetadata forKey:@"assetMetadata"];
  [coderCopy encodeObject:self->_assetLocale forKey:@"assetLocale"];
  [coderCopy encodeObject:self->_assetVersion forKey:@"assetVersion"];
  [coderCopy encodeObject:self->_assetSetName forKey:@"assetSetName"];
}

- (UAFNLAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = UAFNLAsset;
  v5 = [(UAFNLAsset *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"factorName"];
    factorName = v5->_factorName;
    v5->_factorName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetLocale"];
    assetLocale = v5->_assetLocale;
    v5->_assetLocale = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetVersion"];
    assetVersion = v5->_assetVersion;
    v5->_assetVersion = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"assetMetadata"];
    assetMetadata = v5->_assetMetadata;
    v5->_assetMetadata = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSetName"];
    assetSetName = v5->_assetSetName;
    v5->_assetSetName = v19;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setObject:v5 forKey:@"type"];

  getAssetPath = [(UAFNLAsset *)self getAssetPath];
  [v3 setObject:getAssetPath forKey:@"path"];

  getAssetVersion = [(UAFNLAsset *)self getAssetVersion];
  [v3 setObject:getAssetVersion forKey:@"version"];

  getFactorName = [(UAFNLAsset *)self getFactorName];
  [v3 setObject:getFactorName forKey:@"factor"];

  getAssetLocale = [(UAFNLAsset *)self getAssetLocale];
  [v3 setObject:getAssetLocale forKey:@"locale"];

  getAssetMetadata = [(UAFNLAsset *)self getAssetMetadata];
  [v3 setObject:getAssetMetadata forKey:@"asset_metadata"];

  getAssetSetName = [(UAFNLAsset *)self getAssetSetName];
  [v3 setObject:getAssetSetName forKey:@"asset_set_name"];

  return v3;
}

- (void)appendPathWithServiceAssetFolder:(id)folder
{
  folderCopy = folder;
  getAssetPath = [(UAFNLAsset *)self getAssetPath];
  v6 = [CDMAssetsUtils appendPathWithServiceAssetFolder:folderCopy assetPath:getAssetPath];

  path = self->_path;
  self->_path = v6;

  v8 = [CDMAssetsUtils loadAssetMetadataFromAsset:self->_path];
  assetMetadata = self->_assetMetadata;
  self->_assetMetadata = v8;

  MEMORY[0x1EEE66BB8]();
}

- (void)processUAFMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = [metadataCopy objectForKey:@"locale"];
  assetLocale = self->_assetLocale;
  self->_assetLocale = v4;

  if (self->_assetLocale)
  {
    v6 = [CDMPlatformUtils normalizeLocaleIdentifier:?];
    v7 = self->_assetLocale;
    self->_assetLocale = v6;
  }

  v8 = [metadataCopy objectForKey:@"version"];
  assetVersion = self->_assetVersion;
  self->_assetVersion = v8;
}

- (id)initForFactor:(id)factor withPath:(id)path withAssetSetName:(id)name withUAFMetadata:(id)metadata withAssetSet:(id)set
{
  factorCopy = factor;
  pathCopy = path;
  nameCopy = name;
  metadataCopy = metadata;
  setCopy = set;
  v23.receiver = self;
  v23.super_class = UAFNLAsset;
  v18 = [(UAFNLAsset *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_factorName, factor);
    objc_storeStrong(&v19->_path, path);
    objc_storeStrong(&v19->_assetSetName, name);
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetMetadata = v19->_assetMetadata;
    v19->_assetMetadata = v20;

    objc_storeStrong(&v19->_assetSet, set);
    [(UAFNLAsset *)v19 processUAFMetadata:metadataCopy];
  }

  return v19;
}

@end