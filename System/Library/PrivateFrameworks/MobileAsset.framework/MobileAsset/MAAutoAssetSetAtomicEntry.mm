@interface MAAutoAssetSetAtomicEntry
- (MAAutoAssetSetAtomicEntry)initWithCoder:(id)a3;
- (MAAutoAssetSetAtomicEntry)initWithFullAssetSelector:(id)a3 withAssetID:(id)a4 withLocalContentURL:(id)a5 withAssetAttributes:(id)a6 inhibitedFromEmergencyRemoval:(BOOL)a7;
- (id)copy;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetSetAtomicEntry

- (MAAutoAssetSetAtomicEntry)initWithFullAssetSelector:(id)a3 withAssetID:(id)a4 withLocalContentURL:(id)a5 withAssetAttributes:(id)a6 inhibitedFromEmergencyRemoval:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = MAAutoAssetSetAtomicEntry;
  v17 = [(MAAutoAssetSetAtomicEntry *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fullAssetSelector, a3);
    objc_storeStrong(&v18->_assetID, a4);
    objc_storeStrong(&v18->_localContentURL, a5);
    objc_storeStrong(&v18->_assetAttributes, a6);
    v18->_inhibitedFromEmergencyRemoval = a7;
  }

  return v18;
}

- (MAAutoAssetSetAtomicEntry)initWithCoder:(id)a3
{
  v20[8] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MAAutoAssetSetAtomicEntry;
  v5 = [(MAAutoAssetSetAtomicEntry *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v20[4] = objc_opt_class();
    v20[5] = objc_opt_class();
    v20[6] = objc_opt_class();
    v20[7] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:8];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullAssetSelector"];
    fullAssetSelector = v5->_fullAssetSelector;
    v5->_fullAssetSelector = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetID"];
    assetID = v5->_assetID;
    v5->_assetID = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localContentURL"];
    localContentURL = v5->_localContentURL;
    v5->_localContentURL = v13;

    v15 = [v4 decodeObjectOfClasses:v8 forKey:@"assetAttributes"];
    assetAttributes = v5->_assetAttributes;
    v5->_assetAttributes = v15;

    v5->_inhibitedFromEmergencyRemoval = [v4 decodeBoolForKey:@"inhibitedFromEmergencyRemoval"];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(MAAutoAssetSetAtomicEntry *)self fullAssetSelector];
  [v8 encodeObject:v4 forKey:@"fullAssetSelector"];

  v5 = [(MAAutoAssetSetAtomicEntry *)self assetID];
  [v8 encodeObject:v5 forKey:@"assetID"];

  v6 = [(MAAutoAssetSetAtomicEntry *)self localContentURL];
  [v8 encodeObject:v6 forKey:@"localContentURL"];

  v7 = [(MAAutoAssetSetAtomicEntry *)self assetAttributes];
  [v8 encodeObject:v7 forKey:@"assetAttributes"];

  [v8 encodeBool:-[MAAutoAssetSetAtomicEntry inhibitedFromEmergencyRemoval](self forKey:{"inhibitedFromEmergencyRemoval"), @"inhibitedFromEmergencyRemoval"}];
}

- (id)copy
{
  v3 = [MAAutoAssetSetAtomicEntry alloc];
  v4 = [(MAAutoAssetSetAtomicEntry *)self fullAssetSelector];
  v5 = [(MAAutoAssetSetAtomicEntry *)self assetID];
  v6 = [(MAAutoAssetSetAtomicEntry *)self localContentURL];
  v7 = [(MAAutoAssetSetAtomicEntry *)self assetAttributes];
  v8 = [(MAAutoAssetSetAtomicEntry *)v3 initWithFullAssetSelector:v4 withAssetID:v5 withLocalContentURL:v6 withAssetAttributes:v7 inhibitedFromEmergencyRemoval:[(MAAutoAssetSetAtomicEntry *)self inhibitedFromEmergencyRemoval]];

  return v8;
}

- (id)summary
{
  v14 = MEMORY[0x1E696AEC0];
  v15 = [(MAAutoAssetSetAtomicEntry *)self fullAssetSelector];
  if (v15)
  {
    v13 = [(MAAutoAssetSetAtomicEntry *)self fullAssetSelector];
    v3 = [v13 summary];
  }

  else
  {
    v3 = @"N";
  }

  v4 = [(MAAutoAssetSetAtomicEntry *)self assetID];
  if (v4)
  {
    v5 = [(MAAutoAssetSetAtomicEntry *)self assetID];
  }

  else
  {
    v5 = @"N";
  }

  v6 = [(MAAutoAssetSetAtomicEntry *)self localContentURL];
  if (v6)
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v8 = [(MAAutoAssetSetAtomicEntry *)self assetAttributes];
  if (v8)
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  if ([(MAAutoAssetSetAtomicEntry *)self inhibitedFromEmergencyRemoval])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  v11 = [v14 stringWithFormat:@"fullAssetSelector:%@|assetID:%@|localContentURL:%@|assetAttributes:%@|inhibitedFromEmergencyRemoval:%@", v3, v5, v7, v9, v10];

  if (v4)
  {
  }

  if (v15)
  {
  }

  return v11;
}

@end