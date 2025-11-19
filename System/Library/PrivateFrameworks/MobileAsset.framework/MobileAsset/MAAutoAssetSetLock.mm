@interface MAAutoAssetSetLock
- (MAAutoAssetSetLock)initWithCoder:(id)a3;
- (id)initForSelector:(id)a3 withLocalContentURL:(id)a4 withAssetAttributes:(id)a5;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetSetLock

- (id)initForSelector:(id)a3 withLocalContentURL:(id)a4 withAssetAttributes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = MAAutoAssetSetLock;
  v12 = [(MAAutoAssetSetLock *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fullAssetSelector, a3);
    objc_storeStrong(&v13->_localContentURL, a4);
    objc_storeStrong(&v13->_assetAttributes, a5);
    v13->_inhibitedFromEmergencyRemoval = 0;
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lockReasons = v13->_lockReasons;
    v13->_lockReasons = v14;
  }

  return v13;
}

- (MAAutoAssetSetLock)initWithCoder:(id)a3
{
  v18[8] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MAAutoAssetSetLock;
  v5 = [(MAAutoAssetSetLock *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v18[3] = objc_opt_class();
    v18[4] = objc_opt_class();
    v18[5] = objc_opt_class();
    v18[6] = objc_opt_class();
    v18[7] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:8];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullAssetSelector"];
    fullAssetSelector = v5->_fullAssetSelector;
    v5->_fullAssetSelector = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localContentURL"];
    localContentURL = v5->_localContentURL;
    v5->_localContentURL = v11;

    v5->_inhibitedFromEmergencyRemoval = [v4 decodeBoolForKey:@"inhibitedFromEmergencyRemoval"];
    v13 = [v4 decodeObjectOfClasses:v8 forKey:@"lockReasons"];
    lockReasons = v5->_lockReasons;
    v5->_lockReasons = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetSetLock *)self fullAssetSelector];
  [v4 encodeObject:v5 forKey:@"fullAssetSelector"];

  v6 = [(MAAutoAssetSetLock *)self localContentURL];
  [v4 encodeObject:v6 forKey:@"localContentURL"];

  [v4 encodeBool:-[MAAutoAssetSetLock inhibitedFromEmergencyRemoval](self forKey:{"inhibitedFromEmergencyRemoval"), @"inhibitedFromEmergencyRemoval"}];
  v7 = [(MAAutoAssetSetLock *)self lockReasons];
  [v4 encodeObject:v7 forKey:@"lockReasons"];
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MAAutoAssetSetLock *)self fullAssetSelector];
  v5 = [v4 summary];
  v6 = [(MAAutoAssetSetLock *)self localContentURL];
  v7 = [v6 path];
  v8 = [(MAAutoAssetSetLock *)self assetAttributes];
  v9 = [v8 safeSummary];
  if ([(MAAutoAssetSetLock *)self inhibitedFromEmergencyRemoval])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  v11 = [(MAAutoAssetSetLock *)self lockReasons];
  v12 = [v11 safeSummary];
  v13 = [v3 stringWithFormat:@"selector:%@|localURL:%@|attributes:%@|inhibitedRemoval:%@|reasons:%@", v5, v7, v9, v10, v12];

  return v13;
}

@end