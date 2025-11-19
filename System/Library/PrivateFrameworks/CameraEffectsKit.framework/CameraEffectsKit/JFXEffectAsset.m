@interface JFXEffectAsset
+ (id)firstAssetInAssets:(id)a3 matchingFilterAttributes:(id)a4;
- (BOOL)isEqual:(id)a3;
- (JFXEffectAsset)initWithAssetID:(id)a3 URL:(id)a4 copyOfAttributes:(id)a5 contentUpdateAvailable:(BOOL)a6;
- (id)description;
- (unint64_t)hash;
@end

@implementation JFXEffectAsset

- (JFXEffectAsset)initWithAssetID:(id)a3 URL:(id)a4 copyOfAttributes:(id)a5 contentUpdateAvailable:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = JFXEffectAsset;
  v14 = [(JFXEffectAsset *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_assetID, a3);
    objc_storeStrong(&v15->_localURL, a4);
    v16 = [v13 copy];
    attributes = v15->_attributes;
    v15->_attributes = v16;

    v15->_contentUpdateAvailable = a6;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(JFXEffectAsset *)self assetID];
  v5 = [(JFXEffectAsset *)self localURL];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"Remote";
  }

  v8 = [(JFXEffectAsset *)self attributes];
  v9 = [v3 stringWithFormat:@"assetID %@ URL %@ attributes %@", v4, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(JFXEffectAsset *)v5 assetID];
    v7 = [(JFXEffectAsset *)self assetID];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(JFXEffectAsset *)self assetID];
  v3 = [v2 hash];

  return v3;
}

+ (id)firstAssetInAssets:(id)a3 matchingFilterAttributes:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 attributes];
        v13 = [v12 isMatchingFilterAttributes:v6];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

@end