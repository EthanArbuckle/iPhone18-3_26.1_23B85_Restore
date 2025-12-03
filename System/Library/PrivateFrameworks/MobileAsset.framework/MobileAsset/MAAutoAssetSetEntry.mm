@interface MAAutoAssetSetEntry
- (BOOL)isEqual:(id)equal;
- (MAAutoAssetSetEntry)initWithCoder:(id)coder;
- (id)copy;
- (id)initForAssetType:(id)type withAssetSpecifier:(id)specifier matchingAssetVersion:(id)version usingDecryptionKey:(id)key assetLockedInhibitsRemoval:(BOOL)removal;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSetEntry

- (id)initForAssetType:(id)type withAssetSpecifier:(id)specifier matchingAssetVersion:(id)version usingDecryptionKey:(id)key assetLockedInhibitsRemoval:(BOOL)removal
{
  typeCopy = type;
  specifierCopy = specifier;
  versionCopy = version;
  keyCopy = key;
  v20.receiver = self;
  v20.super_class = MAAutoAssetSetEntry;
  v16 = [(MAAutoAssetSetEntry *)&v20 init];
  if (v16)
  {
    v17 = [[MAAutoAssetSelector alloc] initForAssetType:typeCopy withAssetSpecifier:specifierCopy matchingAssetVersion:versionCopy usingDecryptionKey:keyCopy];
    assetSelector = v16->_assetSelector;
    v16->_assetSelector = v17;

    v16->_assetLockedInhibitsRemoval = removal;
  }

  return v16;
}

- (MAAutoAssetSetEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MAAutoAssetSetEntry;
  v5 = [(MAAutoAssetSetEntry *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v6;

    v5->_assetLockedInhibitsRemoval = [coderCopy decodeBoolForKey:@"assetLockedInhibitsRemoval"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetSelector = [(MAAutoAssetSetEntry *)self assetSelector];
  [coderCopy encodeObject:assetSelector forKey:@"assetSelector"];

  [coderCopy encodeBool:-[MAAutoAssetSetEntry assetLockedInhibitsRemoval](self forKey:{"assetLockedInhibitsRemoval"), @"assetLockedInhibitsRemoval"}];
}

- (id)copy
{
  v3 = [MAAutoAssetSetEntry alloc];
  assetSelector = [(MAAutoAssetSetEntry *)self assetSelector];
  assetType = [assetSelector assetType];
  assetSelector2 = [(MAAutoAssetSetEntry *)self assetSelector];
  assetSpecifier = [assetSelector2 assetSpecifier];
  assetSelector3 = [(MAAutoAssetSetEntry *)self assetSelector];
  downloadDecryptionKey = [assetSelector3 downloadDecryptionKey];
  v10 = [(MAAutoAssetSetEntry *)v3 initForAssetType:assetType withAssetSpecifier:assetSpecifier usingDecryptionKey:downloadDecryptionKey assetLockedInhibitsRemoval:[(MAAutoAssetSetEntry *)self assetLockedInhibitsRemoval]];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      assetSelector = [(MAAutoAssetSetEntry *)v5 assetSelector];

      if (assetSelector)
      {
        assetSelector2 = [(MAAutoAssetSetEntry *)v5 assetSelector];
        assetSelector3 = [(MAAutoAssetSetEntry *)self assetSelector];
        if ([assetSelector2 isEqual:assetSelector3])
        {
          assetLockedInhibitsRemoval = [(MAAutoAssetSetEntry *)v5 assetLockedInhibitsRemoval];
          v10 = assetLockedInhibitsRemoval ^ [(MAAutoAssetSetEntry *)self assetLockedInhibitsRemoval]^ 1;
        }

        else
        {
          LOBYTE(v10) = 0;
        }
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  assetSelector = [(MAAutoAssetSetEntry *)self assetSelector];
  summary = [assetSelector summary];
  assetLockedInhibitsRemoval = [(MAAutoAssetSetEntry *)self assetLockedInhibitsRemoval];
  v7 = @"N";
  if (assetLockedInhibitsRemoval)
  {
    v7 = @"Y";
  }

  v8 = [v3 stringWithFormat:@"assetSelector:%@|assetLockedInhibitsRemoval:%@", summary, v7];

  return v8;
}

@end