@interface DDSAssetQuery
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAssetQuery:(id)a3;
- (DDSAssetQuery)initWithAssetType:(id)a3 filter:(id)a4 localOnly:(BOOL)a5 installedOnly:(BOOL)a6 latestOnly:(BOOL)a7 cachedOnly:(BOOL)a8;
- (DDSAssetQuery)initWithCoder:(id)a3;
- (NSString)cacheKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dumpDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DDSAssetQuery

- (NSString)cacheKey
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(DDSAssetQuery *)self assetType];
  v5 = [(DDSAssetQuery *)self installedOnly];
  v6 = [(DDSAssetQuery *)self latestOnly];
  v7 = [(DDSAssetQuery *)self localOnly];
  v8 = MEMORY[0x1E696AD98];
  v9 = [(DDSAssetQuery *)self filter];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "hash")}];
  v11 = [v10 stringValue];
  v12 = [v3 stringWithFormat:@"%@-%d-%d-%d-%@", v4, v5, v6, v7, v11];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(DDSAssetQuery *)self assetType];
  v5 = [(DDSAssetQuery *)self localOnly];
  v6 = [(DDSAssetQuery *)self installedOnly];
  v7 = [(DDSAssetQuery *)self latestOnly];
  v8 = [(DDSAssetQuery *)self cachedOnly];
  v9 = [(DDSAssetQuery *)self filter];
  v10 = [v3 stringWithFormat:@"<query: %@, locO: %d, iO: %d, latO: %d, cO: %d, %@>", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (DDSAssetQuery)initWithAssetType:(id)a3 filter:(id)a4 localOnly:(BOOL)a5 installedOnly:(BOOL)a6 latestOnly:(BOOL)a7 cachedOnly:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v20.receiver = self;
  v20.super_class = DDSAssetQuery;
  v17 = [(DDSAssetQuery *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_assetType, a3);
    objc_storeStrong(&v18->_filter, a4);
    v18->_localOnly = a5;
    v18->_latestOnly = a7;
    v18->_installedOnly = a6;
    v18->_cachedOnly = a8;
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DDSAssetQuery *)self assetType];
  v6 = NSStringFromSelector(sel_assetType);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(DDSAssetQuery *)self filter];
  v8 = NSStringFromSelector(sel_filter);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[DDSAssetQuery localOnly](self, "localOnly")}];
  v10 = NSStringFromSelector(sel_localOnly);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[DDSAssetQuery installedOnly](self, "installedOnly")}];
  v12 = NSStringFromSelector(sel_installedOnly);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[DDSAssetQuery latestOnly](self, "latestOnly")}];
  v14 = NSStringFromSelector(sel_latestOnly);
  [v4 encodeObject:v13 forKey:v14];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[DDSAssetQuery cachedOnly](self, "cachedOnly")}];
  v15 = NSStringFromSelector(sel_cachedOnly);
  [v4 encodeObject:v16 forKey:v15];
}

- (DDSAssetQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_assetType);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_filter);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_localOnly);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
  v14 = [v13 BOOLValue];

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(sel_installedOnly);
  v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
  v18 = [v17 BOOLValue];

  v19 = objc_opt_class();
  v20 = NSStringFromSelector(sel_latestOnly);
  v21 = [v4 decodeObjectOfClass:v19 forKey:v20];
  v22 = [v21 BOOLValue];

  v23 = objc_opt_class();
  v24 = NSStringFromSelector(sel_cachedOnly);
  v25 = [v4 decodeObjectOfClass:v23 forKey:v24];

  v26 = [v25 BOOLValue];
  v27 = [(DDSAssetQuery *)self initWithAssetType:v7 filter:v10 localOnly:v14 installedOnly:v18 latestOnly:v22 cachedOnly:v26];

  return v27;
}

- (id)dumpDescription
{
  if (DDS_IS_INTERNAL_INSTALL())
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(DDSAssetQuery *)self filter];
    v5 = [v4 dumpDescription];
    v6 = [(DDSAssetQuery *)self assetType];
    v7 = [v3 stringWithFormat:@"%@\n(%@, localOnly: %d, installedOnly: %d, latestOnly: %d, cacheOnly: %d)>", v5, v6, -[DDSAssetQuery localOnly](self, "localOnly"), -[DDSAssetQuery installedOnly](self, "installedOnly"), -[DDSAssetQuery latestOnly](self, "latestOnly"), -[DDSAssetQuery cachedOnly](self, "cachedOnly")];
  }

  else
  {
    v7 = &stru_1F5ABCB80;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DDSAssetQuery *)self isEqualToAssetQuery:v4];

  return v5;
}

- (BOOL)isEqualToAssetQuery:(id)a3
{
  v4 = a3;
  v5 = [(DDSAssetQuery *)self assetType];
  v6 = [v4 assetType];
  if (DDSObjectsAreEqualOrNil(v5, v6))
  {
    v7 = [(DDSAssetQuery *)self filter];
    v8 = [v4 filter];
    if (DDSObjectsAreEqualOrNil(v7, v8) && (v9 = -[DDSAssetQuery localOnly](self, "localOnly"), v9 == [v4 localOnly]) && (v10 = -[DDSAssetQuery installedOnly](self, "installedOnly"), v10 == objc_msgSend(v4, "installedOnly")) && (v11 = -[DDSAssetQuery latestOnly](self, "latestOnly"), v11 == objc_msgSend(v4, "latestOnly")))
    {
      v14 = [(DDSAssetQuery *)self cachedOnly];
      v12 = v14 ^ [v4 cachedOnly] ^ 1;
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
  v3 = [(DDSAssetQuery *)self assetType];
  v4 = [v3 hash];
  v5 = [(DDSAssetQuery *)self filter];
  v6 = [v5 hash] ^ v4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DDSAssetQuery alloc];
  v5 = [(DDSAssetQuery *)self assetType];
  v6 = [(DDSAssetQuery *)self filter];
  v7 = [(DDSAssetQuery *)v4 initWithAssetType:v5 filter:v6];

  [(DDSAssetQuery *)v7 setInstalledOnly:[(DDSAssetQuery *)self installedOnly]];
  [(DDSAssetQuery *)v7 setLocalOnly:[(DDSAssetQuery *)self localOnly]];
  [(DDSAssetQuery *)v7 setLatestOnly:[(DDSAssetQuery *)self latestOnly]];
  [(DDSAssetQuery *)v7 setCachedOnly:[(DDSAssetQuery *)self cachedOnly]];
  return v7;
}

@end