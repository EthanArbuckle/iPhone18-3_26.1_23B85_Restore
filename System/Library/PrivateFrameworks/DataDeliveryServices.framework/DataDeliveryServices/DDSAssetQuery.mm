@interface DDSAssetQuery
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAssetQuery:(id)query;
- (DDSAssetQuery)initWithAssetType:(id)type filter:(id)filter localOnly:(BOOL)only installedOnly:(BOOL)installedOnly latestOnly:(BOOL)latestOnly cachedOnly:(BOOL)cachedOnly;
- (DDSAssetQuery)initWithCoder:(id)coder;
- (NSString)cacheKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dumpDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DDSAssetQuery

- (NSString)cacheKey
{
  v3 = MEMORY[0x1E696AEC0];
  assetType = [(DDSAssetQuery *)self assetType];
  installedOnly = [(DDSAssetQuery *)self installedOnly];
  latestOnly = [(DDSAssetQuery *)self latestOnly];
  localOnly = [(DDSAssetQuery *)self localOnly];
  v8 = MEMORY[0x1E696AD98];
  filter = [(DDSAssetQuery *)self filter];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(filter, "hash")}];
  stringValue = [v10 stringValue];
  v12 = [v3 stringWithFormat:@"%@-%d-%d-%d-%@", assetType, installedOnly, latestOnly, localOnly, stringValue];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  assetType = [(DDSAssetQuery *)self assetType];
  localOnly = [(DDSAssetQuery *)self localOnly];
  installedOnly = [(DDSAssetQuery *)self installedOnly];
  latestOnly = [(DDSAssetQuery *)self latestOnly];
  cachedOnly = [(DDSAssetQuery *)self cachedOnly];
  filter = [(DDSAssetQuery *)self filter];
  v10 = [v3 stringWithFormat:@"<query: %@, locO: %d, iO: %d, latO: %d, cO: %d, %@>", assetType, localOnly, installedOnly, latestOnly, cachedOnly, filter];

  return v10;
}

- (DDSAssetQuery)initWithAssetType:(id)type filter:(id)filter localOnly:(BOOL)only installedOnly:(BOOL)installedOnly latestOnly:(BOOL)latestOnly cachedOnly:(BOOL)cachedOnly
{
  typeCopy = type;
  filterCopy = filter;
  v20.receiver = self;
  v20.super_class = DDSAssetQuery;
  v17 = [(DDSAssetQuery *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_assetType, type);
    objc_storeStrong(&v18->_filter, filter);
    v18->_localOnly = only;
    v18->_latestOnly = latestOnly;
    v18->_installedOnly = installedOnly;
    v18->_cachedOnly = cachedOnly;
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetType = [(DDSAssetQuery *)self assetType];
  v6 = NSStringFromSelector(sel_assetType);
  [coderCopy encodeObject:assetType forKey:v6];

  filter = [(DDSAssetQuery *)self filter];
  v8 = NSStringFromSelector(sel_filter);
  [coderCopy encodeObject:filter forKey:v8];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[DDSAssetQuery localOnly](self, "localOnly")}];
  v10 = NSStringFromSelector(sel_localOnly);
  [coderCopy encodeObject:v9 forKey:v10];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[DDSAssetQuery installedOnly](self, "installedOnly")}];
  v12 = NSStringFromSelector(sel_installedOnly);
  [coderCopy encodeObject:v11 forKey:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[DDSAssetQuery latestOnly](self, "latestOnly")}];
  v14 = NSStringFromSelector(sel_latestOnly);
  [coderCopy encodeObject:v13 forKey:v14];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[DDSAssetQuery cachedOnly](self, "cachedOnly")}];
  v15 = NSStringFromSelector(sel_cachedOnly);
  [coderCopy encodeObject:v16 forKey:v15];
}

- (DDSAssetQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_assetType);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_filter);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_localOnly);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
  bOOLValue = [v13 BOOLValue];

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(sel_installedOnly);
  v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
  bOOLValue2 = [v17 BOOLValue];

  v19 = objc_opt_class();
  v20 = NSStringFromSelector(sel_latestOnly);
  v21 = [coderCopy decodeObjectOfClass:v19 forKey:v20];
  bOOLValue3 = [v21 BOOLValue];

  v23 = objc_opt_class();
  v24 = NSStringFromSelector(sel_cachedOnly);
  v25 = [coderCopy decodeObjectOfClass:v23 forKey:v24];

  bOOLValue4 = [v25 BOOLValue];
  v27 = [(DDSAssetQuery *)self initWithAssetType:v7 filter:v10 localOnly:bOOLValue installedOnly:bOOLValue2 latestOnly:bOOLValue3 cachedOnly:bOOLValue4];

  return v27;
}

- (id)dumpDescription
{
  if (DDS_IS_INTERNAL_INSTALL())
  {
    v3 = MEMORY[0x1E696AEC0];
    filter = [(DDSAssetQuery *)self filter];
    dumpDescription = [filter dumpDescription];
    assetType = [(DDSAssetQuery *)self assetType];
    v7 = [v3 stringWithFormat:@"%@\n(%@, localOnly: %d, installedOnly: %d, latestOnly: %d, cacheOnly: %d)>", dumpDescription, assetType, -[DDSAssetQuery localOnly](self, "localOnly"), -[DDSAssetQuery installedOnly](self, "installedOnly"), -[DDSAssetQuery latestOnly](self, "latestOnly"), -[DDSAssetQuery cachedOnly](self, "cachedOnly")];
  }

  else
  {
    v7 = &stru_1F5ABCB80;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DDSAssetQuery *)self isEqualToAssetQuery:equalCopy];

  return v5;
}

- (BOOL)isEqualToAssetQuery:(id)query
{
  queryCopy = query;
  assetType = [(DDSAssetQuery *)self assetType];
  assetType2 = [queryCopy assetType];
  if (DDSObjectsAreEqualOrNil(assetType, assetType2))
  {
    filter = [(DDSAssetQuery *)self filter];
    filter2 = [queryCopy filter];
    if (DDSObjectsAreEqualOrNil(filter, filter2) && (v9 = -[DDSAssetQuery localOnly](self, "localOnly"), v9 == [queryCopy localOnly]) && (v10 = -[DDSAssetQuery installedOnly](self, "installedOnly"), v10 == objc_msgSend(queryCopy, "installedOnly")) && (v11 = -[DDSAssetQuery latestOnly](self, "latestOnly"), v11 == objc_msgSend(queryCopy, "latestOnly")))
    {
      cachedOnly = [(DDSAssetQuery *)self cachedOnly];
      v12 = cachedOnly ^ [queryCopy cachedOnly] ^ 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  assetType = [(DDSAssetQuery *)self assetType];
  v4 = [assetType hash];
  filter = [(DDSAssetQuery *)self filter];
  v6 = [filter hash] ^ v4;
  if ([(DDSAssetQuery *)self localOnly])
  {
    v7 = 1231;
  }

  else
  {
    v7 = 1237;
  }

  v8 = v6 ^ v7;
  if ([(DDSAssetQuery *)self installedOnly])
  {
    v9 = 1231;
  }

  else
  {
    v9 = 1237;
  }

  if ([(DDSAssetQuery *)self latestOnly])
  {
    v10 = 1231;
  }

  else
  {
    v10 = 1237;
  }

  v11 = v8 ^ v9 ^ v10;
  if ([(DDSAssetQuery *)self cachedOnly])
  {
    v12 = 1231;
  }

  else
  {
    v12 = 1237;
  }

  return v11 ^ v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DDSAssetQuery alloc];
  assetType = [(DDSAssetQuery *)self assetType];
  filter = [(DDSAssetQuery *)self filter];
  v7 = [(DDSAssetQuery *)v4 initWithAssetType:assetType filter:filter];

  [(DDSAssetQuery *)v7 setInstalledOnly:[(DDSAssetQuery *)self installedOnly]];
  [(DDSAssetQuery *)v7 setLocalOnly:[(DDSAssetQuery *)self localOnly]];
  [(DDSAssetQuery *)v7 setLatestOnly:[(DDSAssetQuery *)self latestOnly]];
  [(DDSAssetQuery *)v7 setCachedOnly:[(DDSAssetQuery *)self cachedOnly]];
  return v7;
}

@end