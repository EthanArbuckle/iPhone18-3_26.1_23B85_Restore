@interface UAFNLAsset
- (NSString)description;
- (UAFNLAsset)initWithCoder:(id)a3;
- (id)initForFactor:(id)a3 withPath:(id)a4 withAssetSetName:(id)a5 withUAFMetadata:(id)a6 withAssetSet:(id)a7;
- (id)toDictionary;
- (void)appendPathWithServiceAssetFolder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)processUAFMetadata:(id)a3;
@end

@implementation UAFNLAsset

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(UAFNLAsset *)self getFactorName];
  v5 = [(UAFNLAsset *)self getAssetPath];
  v6 = [(UAFNLAsset *)self getAssetVersion];
  v7 = [(UAFNLAsset *)self getAssetLocale];
  v8 = [(UAFNLAsset *)self getAssetSetName];
  v9 = [(UAFNLAsset *)self getAssetMetadata];
  v10 = [v3 stringWithFormat:@"[UAF asset] - Factor name: %@, Asset path: %@, Asset version: %@, Asset locale: %@, Asset Set Name: %@, Asset metadata: %@.", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  factorName = self->_factorName;
  v5 = a3;
  [v5 encodeObject:factorName forKey:@"factorName"];
  [v5 encodeObject:self->_path forKey:@"path"];
  [v5 encodeObject:self->_assetMetadata forKey:@"assetMetadata"];
  [v5 encodeObject:self->_assetLocale forKey:@"assetLocale"];
  [v5 encodeObject:self->_assetVersion forKey:@"assetVersion"];
  [v5 encodeObject:self->_assetSetName forKey:@"assetSetName"];
}

- (UAFNLAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = UAFNLAsset;
  v5 = [(UAFNLAsset *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"factorName"];
    factorName = v5->_factorName;
    v5->_factorName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetLocale"];
    assetLocale = v5->_assetLocale;
    v5->_assetLocale = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetVersion"];
    assetVersion = v5->_assetVersion;
    v5->_assetVersion = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"assetMetadata"];
    assetMetadata = v5->_assetMetadata;
    v5->_assetMetadata = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSetName"];
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

  v6 = [(UAFNLAsset *)self getAssetPath];
  [v3 setObject:v6 forKey:@"path"];

  v7 = [(UAFNLAsset *)self getAssetVersion];
  [v3 setObject:v7 forKey:@"version"];

  v8 = [(UAFNLAsset *)self getFactorName];
  [v3 setObject:v8 forKey:@"factor"];

  v9 = [(UAFNLAsset *)self getAssetLocale];
  [v3 setObject:v9 forKey:@"locale"];

  v10 = [(UAFNLAsset *)self getAssetMetadata];
  [v3 setObject:v10 forKey:@"asset_metadata"];

  v11 = [(UAFNLAsset *)self getAssetSetName];
  [v3 setObject:v11 forKey:@"asset_set_name"];

  return v3;
}

- (void)appendPathWithServiceAssetFolder:(id)a3
{
  v4 = a3;
  v5 = [(UAFNLAsset *)self getAssetPath];
  v6 = [CDMAssetsUtils appendPathWithServiceAssetFolder:v4 assetPath:v5];

  path = self->_path;
  self->_path = v6;

  v8 = [CDMAssetsUtils loadAssetMetadataFromAsset:self->_path];
  assetMetadata = self->_assetMetadata;
  self->_assetMetadata = v8;

  MEMORY[0x1EEE66BB8]();
}

- (void)processUAFMetadata:(id)a3
{
  v10 = a3;
  v4 = [v10 objectForKey:@"locale"];
  assetLocale = self->_assetLocale;
  self->_assetLocale = v4;

  if (self->_assetLocale)
  {
    v6 = [CDMPlatformUtils normalizeLocaleIdentifier:?];
    v7 = self->_assetLocale;
    self->_assetLocale = v6;
  }

  v8 = [v10 objectForKey:@"version"];
  assetVersion = self->_assetVersion;
  self->_assetVersion = v8;
}

- (id)initForFactor:(id)a3 withPath:(id)a4 withAssetSetName:(id)a5 withUAFMetadata:(id)a6 withAssetSet:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = UAFNLAsset;
  v18 = [(UAFNLAsset *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_factorName, a3);
    objc_storeStrong(&v19->_path, a4);
    objc_storeStrong(&v19->_assetSetName, a5);
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetMetadata = v19->_assetMetadata;
    v19->_assetMetadata = v20;

    objc_storeStrong(&v19->_assetSet, a7);
    [(UAFNLAsset *)v19 processUAFMetadata:v16];
  }

  return v19;
}

@end