@interface MAAutoAssetInfoFound
- (MAAutoAssetInfoFound)initWithCoder:(id)a3;
- (id)description;
- (id)initForSelector:(id)a3 withLocalContentURL:(id)a4 withAssetAttributes:(id)a5 reportingStatus:(id)a6;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetInfoFound

- (id)initForSelector:(id)a3 withLocalContentURL:(id)a4 withAssetAttributes:(id)a5 reportingStatus:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = MAAutoAssetInfoFound;
  v15 = [(MAAutoAssetInfoFound *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_fullAssetSelector, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
  }

  return p_isa;
}

- (MAAutoAssetInfoFound)initWithCoder:(id)a3
{
  v20[13] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MAAutoAssetInfoFound;
  v5 = [(MAAutoAssetInfoFound *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullAssetSelector"];
    fullAssetSelector = v5->_fullAssetSelector;
    v5->_fullAssetSelector = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localContentURL"];
    localContentURL = v5->_localContentURL;
    v5->_localContentURL = v8;

    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v20[4] = objc_opt_class();
    v20[5] = objc_opt_class();
    v20[6] = objc_opt_class();
    v20[7] = objc_opt_class();
    v20[8] = objc_opt_class();
    v20[9] = objc_opt_class();
    v20[10] = objc_opt_class();
    v20[11] = objc_opt_class();
    v20[12] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:13];
    v12 = [v10 initWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"assetAttributes"];
    assetAttributes = v5->_assetAttributes;
    v5->_assetAttributes = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentStatus"];
    currentStatus = v5->_currentStatus;
    v5->_currentStatus = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetInfoFound *)self fullAssetSelector];
  [v4 encodeObject:v5 forKey:@"fullAssetSelector"];

  v6 = [(MAAutoAssetInfoFound *)self localContentURL];
  [v4 encodeObject:v6 forKey:@"localContentURL"];

  v7 = [(MAAutoAssetInfoFound *)self assetAttributes];
  [v4 encodeObject:v7 forKey:@"assetAttributes"];

  v8 = [(MAAutoAssetInfoFound *)self currentStatus];
  [v4 encodeObject:v8 forKey:@"currentStatus"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MAAutoAssetInfoFound *)self summary];
  v5 = [(MAAutoAssetInfoFound *)self assetAttributes];
  v6 = [v3 stringWithFormat:@"%@|attribs:\n%@", v4, v5];

  return v6;
}

- (id)summary
{
  v4 = [(MAAutoAssetInfoFound *)self assetAttributes];
  v5 = @"(w/attribs)";
  if (!v4)
  {
    v5 = &stru_1F0C1B388;
  }

  v6 = v5;

  v7 = MEMORY[0x1E696AEC0];
  v8 = [(MAAutoAssetInfoFound *)self fullAssetSelector];
  v9 = [v8 summary];
  v10 = [(MAAutoAssetInfoFound *)self localContentURL];
  if (v10)
  {
    v2 = [(MAAutoAssetInfoFound *)self localContentURL];
    v11 = [v2 path];
  }

  else
  {
    v11 = @"none";
  }

  v12 = [(MAAutoAssetInfoFound *)self currentStatus];
  v13 = [v12 summary];
  v14 = [v7 stringWithFormat:@"found(%@)|URL:%@|%@%@", v9, v11, v13, v6];

  if (v10)
  {
  }

  return v14;
}

@end