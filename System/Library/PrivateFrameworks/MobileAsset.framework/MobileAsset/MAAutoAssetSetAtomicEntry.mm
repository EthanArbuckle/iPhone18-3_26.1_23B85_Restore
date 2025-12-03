@interface MAAutoAssetSetAtomicEntry
- (MAAutoAssetSetAtomicEntry)initWithCoder:(id)coder;
- (MAAutoAssetSetAtomicEntry)initWithFullAssetSelector:(id)selector withAssetID:(id)d withLocalContentURL:(id)l withAssetAttributes:(id)attributes inhibitedFromEmergencyRemoval:(BOOL)removal;
- (id)copy;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSetAtomicEntry

- (MAAutoAssetSetAtomicEntry)initWithFullAssetSelector:(id)selector withAssetID:(id)d withLocalContentURL:(id)l withAssetAttributes:(id)attributes inhibitedFromEmergencyRemoval:(BOOL)removal
{
  selectorCopy = selector;
  dCopy = d;
  lCopy = l;
  attributesCopy = attributes;
  v20.receiver = self;
  v20.super_class = MAAutoAssetSetAtomicEntry;
  v17 = [(MAAutoAssetSetAtomicEntry *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fullAssetSelector, selector);
    objc_storeStrong(&v18->_assetID, d);
    objc_storeStrong(&v18->_localContentURL, l);
    objc_storeStrong(&v18->_assetAttributes, attributes);
    v18->_inhibitedFromEmergencyRemoval = removal;
  }

  return v18;
}

- (MAAutoAssetSetAtomicEntry)initWithCoder:(id)coder
{
  v20[8] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullAssetSelector"];
    fullAssetSelector = v5->_fullAssetSelector;
    v5->_fullAssetSelector = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetID"];
    assetID = v5->_assetID;
    v5->_assetID = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localContentURL"];
    localContentURL = v5->_localContentURL;
    v5->_localContentURL = v13;

    v15 = [coderCopy decodeObjectOfClasses:v8 forKey:@"assetAttributes"];
    assetAttributes = v5->_assetAttributes;
    v5->_assetAttributes = v15;

    v5->_inhibitedFromEmergencyRemoval = [coderCopy decodeBoolForKey:@"inhibitedFromEmergencyRemoval"];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fullAssetSelector = [(MAAutoAssetSetAtomicEntry *)self fullAssetSelector];
  [coderCopy encodeObject:fullAssetSelector forKey:@"fullAssetSelector"];

  assetID = [(MAAutoAssetSetAtomicEntry *)self assetID];
  [coderCopy encodeObject:assetID forKey:@"assetID"];

  localContentURL = [(MAAutoAssetSetAtomicEntry *)self localContentURL];
  [coderCopy encodeObject:localContentURL forKey:@"localContentURL"];

  assetAttributes = [(MAAutoAssetSetAtomicEntry *)self assetAttributes];
  [coderCopy encodeObject:assetAttributes forKey:@"assetAttributes"];

  [coderCopy encodeBool:-[MAAutoAssetSetAtomicEntry inhibitedFromEmergencyRemoval](self forKey:{"inhibitedFromEmergencyRemoval"), @"inhibitedFromEmergencyRemoval"}];
}

- (id)copy
{
  v3 = [MAAutoAssetSetAtomicEntry alloc];
  fullAssetSelector = [(MAAutoAssetSetAtomicEntry *)self fullAssetSelector];
  assetID = [(MAAutoAssetSetAtomicEntry *)self assetID];
  localContentURL = [(MAAutoAssetSetAtomicEntry *)self localContentURL];
  assetAttributes = [(MAAutoAssetSetAtomicEntry *)self assetAttributes];
  v8 = [(MAAutoAssetSetAtomicEntry *)v3 initWithFullAssetSelector:fullAssetSelector withAssetID:assetID withLocalContentURL:localContentURL withAssetAttributes:assetAttributes inhibitedFromEmergencyRemoval:[(MAAutoAssetSetAtomicEntry *)self inhibitedFromEmergencyRemoval]];

  return v8;
}

- (id)summary
{
  v14 = MEMORY[0x1E696AEC0];
  fullAssetSelector = [(MAAutoAssetSetAtomicEntry *)self fullAssetSelector];
  if (fullAssetSelector)
  {
    fullAssetSelector2 = [(MAAutoAssetSetAtomicEntry *)self fullAssetSelector];
    summary = [fullAssetSelector2 summary];
  }

  else
  {
    summary = @"N";
  }

  assetID = [(MAAutoAssetSetAtomicEntry *)self assetID];
  if (assetID)
  {
    assetID2 = [(MAAutoAssetSetAtomicEntry *)self assetID];
  }

  else
  {
    assetID2 = @"N";
  }

  localContentURL = [(MAAutoAssetSetAtomicEntry *)self localContentURL];
  if (localContentURL)
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  assetAttributes = [(MAAutoAssetSetAtomicEntry *)self assetAttributes];
  if (assetAttributes)
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

  v11 = [v14 stringWithFormat:@"fullAssetSelector:%@|assetID:%@|localContentURL:%@|assetAttributes:%@|inhibitedFromEmergencyRemoval:%@", summary, assetID2, v7, v9, v10];

  if (assetID)
  {
  }

  if (fullAssetSelector)
  {
  }

  return v11;
}

@end