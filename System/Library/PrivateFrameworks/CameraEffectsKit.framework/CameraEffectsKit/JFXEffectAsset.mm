@interface JFXEffectAsset
+ (id)firstAssetInAssets:(id)assets matchingFilterAttributes:(id)attributes;
- (BOOL)isEqual:(id)equal;
- (JFXEffectAsset)initWithAssetID:(id)d URL:(id)l copyOfAttributes:(id)attributes contentUpdateAvailable:(BOOL)available;
- (id)description;
- (unint64_t)hash;
@end

@implementation JFXEffectAsset

- (JFXEffectAsset)initWithAssetID:(id)d URL:(id)l copyOfAttributes:(id)attributes contentUpdateAvailable:(BOOL)available
{
  dCopy = d;
  lCopy = l;
  attributesCopy = attributes;
  v19.receiver = self;
  v19.super_class = JFXEffectAsset;
  v14 = [(JFXEffectAsset *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_assetID, d);
    objc_storeStrong(&v15->_localURL, l);
    v16 = [attributesCopy copy];
    attributes = v15->_attributes;
    v15->_attributes = v16;

    v15->_contentUpdateAvailable = available;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  assetID = [(JFXEffectAsset *)self assetID];
  localURL = [(JFXEffectAsset *)self localURL];
  v6 = localURL;
  if (localURL)
  {
    v7 = localURL;
  }

  else
  {
    v7 = @"Remote";
  }

  attributes = [(JFXEffectAsset *)self attributes];
  v9 = [v3 stringWithFormat:@"assetID %@ URL %@ attributes %@", assetID, v7, attributes];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    assetID = [(JFXEffectAsset *)v5 assetID];
    assetID2 = [(JFXEffectAsset *)self assetID];
    v8 = [assetID isEqual:assetID2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  assetID = [(JFXEffectAsset *)self assetID];
  v3 = [assetID hash];

  return v3;
}

+ (id)firstAssetInAssets:(id)assets matchingFilterAttributes:(id)attributes
{
  v20 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  attributesCopy = attributes;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = assetsCopy;
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
        attributes = [v11 attributes];
        v13 = [attributes isMatchingFilterAttributes:attributesCopy];

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