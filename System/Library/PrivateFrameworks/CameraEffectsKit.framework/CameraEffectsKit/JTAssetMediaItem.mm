@interface JTAssetMediaItem
- (BOOL)isEqual:(id)a3;
- (JTAssetMediaItem)init;
- (JTAssetMediaItem)initWithAssetIdentifier:(id)a3;
- (JTAssetMediaItem)initWithInfo:(id)a3 delegate:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)info;
- (unint64_t)hash;
- (void)checkIfAssetIsMissing;
- (void)dealloc;
- (void)fetchAssetForce:(BOOL)a3;
- (void)reloadAsset;
@end

@implementation JTAssetMediaItem

- (JTAssetMediaItem)init
{
  v7.receiver = self;
  v7.super_class = JTAssetMediaItem;
  v2 = [(JFXMediaItem *)&v7 init];
  v3 = v2;
  if (v2)
  {
    assetLocalURL = v2->_assetLocalURL;
    v2->_assetLocalURL = 0;

    assetIdentifier = v3->_assetIdentifier;
    v3->_assetIdentifier = 0;
  }

  return v3;
}

- (JTAssetMediaItem)initWithAssetIdentifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = JTAssetMediaItem;
  v5 = [(JFXMediaItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(JTAssetMediaItem *)v5 setAssetIdentifier:v4];
    [(JTAssetMediaItem *)v6 setAssetLocalURL:0];
    [(JTAssetMediaItem *)v6 fetchAssetForce:0];
  }

  return v6;
}

- (void)fetchAssetForce:(BOOL)a3
{
  v3 = a3;
  v35[1] = *MEMORY[0x277D85DE8];
  v5 = [(JTAssetMediaItem *)self asset];

  if (!v5 || v3)
  {
    v6 = MEMORY[0x277CD97A8];
    v7 = [(JTAssetMediaItem *)self assetIdentifier];
    v35[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    v9 = [v6 fetchAssetsWithLocalIdentifiers:v8 options:0];

    if (v9 && [v9 count])
    {
      v10 = [v9 objectAtIndex:0];
      [(JTAssetMediaItem *)self setAsset:v10];

      v11 = MEMORY[0x277CD97A8];
      v12 = [(JTAssetMediaItem *)self asset];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __36__JTAssetMediaItem_fetchAssetForce___block_invoke;
      v34[3] = &unk_278D7CB30;
      v34[4] = self;
      [v11 _computeFingerPrintsOfAsset:v12 completionHandler:v34];

LABEL_22:
      return;
    }

    v13 = [MEMORY[0x277CD9948] sharedPhotoLibrary];
    v14 = MEMORY[0x277CD97A8];
    v15 = [(JTAssetMediaItem *)self adjustedFingerprint];
    v16 = [v14 fetchAssetsMatchingAdjustedFingerPrint:v15 photoLibrary:v13];

    v17 = [(JTAssetMediaItem *)self adjustedFingerprint];
    v18 = v17;
    if (v17 && v16)
    {
      v19 = [v16 count];

      if (v19)
      {
        v20 = [v16 objectAtIndex:0];
        [(JTAssetMediaItem *)self setAsset:v20];
LABEL_21:

        v9 = v16;
        goto LABEL_22;
      }
    }

    else
    {
    }

    v21 = MEMORY[0x277CD97A8];
    v22 = [(JTAssetMediaItem *)self masterFingerprint];
    v23 = [v21 fetchAssetsMatchingMasterFingerPrint:v22 photoLibrary:v13];

    v24 = [(JTAssetMediaItem *)self masterFingerprint];
    v25 = v24;
    if (v24 && v23)
    {
      v26 = [v23 count];

      if (v26)
      {
        v20 = [v23 objectAtIndex:0];
        [(JTAssetMediaItem *)self setAsset:v20];
LABEL_20:
        v16 = v23;
        goto LABEL_21;
      }
    }

    else
    {
    }

    v20 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:2 subtype:1000000201 options:0];
    if ([v20 count])
    {
      v27 = [v20 firstObject];
      v28 = objc_alloc_init(MEMORY[0x277CD9880]);
      [v28 setWantsIncrementalChangeDetails:0];
      [v28 setIncludeHiddenAssets:1];
      v29 = MEMORY[0x277CCAC30];
      v30 = [(JTAssetMediaItem *)self assetIdentifier];
      v31 = [v29 predicateWithFormat:@"localIdentifier = %@", v30];
      [v28 setPredicate:v31];

      v16 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v27 options:v28];

      v32 = [v16 firstObject];
      [(JTAssetMediaItem *)self setAsset:v32];

      v33 = [(JTAssetMediaItem *)self asset];

      if (v33)
      {
        [(JFXMediaItem *)self setMediaState:3];
      }

      goto LABEL_21;
    }

    goto LABEL_20;
  }
}

void __36__JTAssetMediaItem_fetchAssetForce___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setMasterFingerprint:a2];
  [*(a1 + 32) setAdjustedFingerprint:v6];
}

- (void)checkIfAssetIsMissing
{
  v3 = [(JTAssetMediaItem *)self assetIdentifier];
  if (v3 && (v4 = v3, v5 = [(JFXMediaItem *)self mediaState], v4, v5 != 3))
  {
    v10 = [(JTAssetMediaItem *)self asset];

    if (!v10)
    {

      [(JFXMediaItem *)self setMediaState:2];
    }
  }

  else
  {
    v6 = [(JTLocalAssetMediaItem *)self localFileURL];

    if (v6)
    {
      v11 = objc_alloc_init(MEMORY[0x277CCAA00]);
      v7 = [(JTLocalAssetMediaItem *)self localFileURL];
      v8 = [v7 path];
      v9 = [v11 fileExistsAtPath:v8];

      if ((v9 & 1) == 0)
      {
        [(JFXMediaItem *)self setMediaState:2];
      }
    }
  }
}

- (void)reloadAsset
{
  v3 = [(JTAssetMediaItem *)self assetIdentifier];

  if (v3)
  {
    [(JFXMediaItem *)self setMediaState:1];
    [(JTAssetMediaItem *)self fetchAssetForce:1];
    [(JTAssetMediaItem *)self checkIfAssetIsMissing];
    v4 = [(JTAssetMediaItem *)self asset];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __31__JTAssetMediaItem_reloadAsset__block_invoke;
    v5[3] = &unk_278D7CB58;
    v5[4] = self;
    [v4 isAssetLocalWithCompletion:v5 requiresDerivative:0];
  }
}

void __31__JTAssetMediaItem_reloadAsset__block_invoke(uint64_t a1, int a2)
{
  if (a2 && [*(a1 + 32) mediaState] != 3)
  {
    v5 = *(a1 + 32);

    [v5 setMediaState:0];
  }

  else
  {
    v3 = [*(a1 + 32) delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 setMediaItemRequiresDownload:*(a1 + 32)];
    }
  }
}

- (void)dealloc
{
  assetLocalURL = self->_assetLocalURL;
  self->_assetLocalURL = 0;

  asset = self->_asset;
  self->_asset = 0;

  v5.receiver = self;
  v5.super_class = JTAssetMediaItem;
  [(JTLocalAssetMediaItem *)&v5 dealloc];
}

- (id)description
{
  if (self->_assetLocalURL)
  {
    v8.receiver = self;
    v8.super_class = JTAssetMediaItem;
    v3 = [(JTLocalAssetMediaItem *)&v8 description];
    [MEMORY[0x277CCACA8] stringWithFormat:@"\r\turl: %@", self->_assetLocalURL];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = JTAssetMediaItem;
    v3 = [(JTLocalAssetMediaItem *)&v7 description];
    [MEMORY[0x277CCACA8] stringWithFormat:@"\r\tasset: %@", self->_asset];
  }
  v4 = ;
  v5 = [v3 stringByAppendingString:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17.receiver = self;
  v17.super_class = JTAssetMediaItem;
  v5 = [(JTLocalAssetMediaItem *)&v17 copyWithZone:?];
  assetIdentifier = self->_assetIdentifier;
  if (assetIdentifier)
  {
    assetIdentifier = [(NSString *)assetIdentifier copyWithZone:a3];
  }

  v7 = v5[10];
  v5[10] = assetIdentifier;

  adjustedFingerprint = self->_adjustedFingerprint;
  if (adjustedFingerprint)
  {
    adjustedFingerprint = [(NSString *)adjustedFingerprint copyWithZone:a3];
  }

  v9 = v5[12];
  v5[12] = adjustedFingerprint;

  masterFingerprint = self->_masterFingerprint;
  if (masterFingerprint)
  {
    masterFingerprint = [(NSString *)masterFingerprint copyWithZone:a3];
  }

  v11 = v5[11];
  v5[11] = masterFingerprint;

  asset = self->_asset;
  if (asset)
  {
    asset = [(PHAsset *)asset copyWithZone:a3];
  }

  v13 = v5[9];
  v5[9] = asset;

  assetLocalURL = self->_assetLocalURL;
  if (assetLocalURL)
  {
    assetLocalURL = [(NSURL *)assetLocalURL copyWithZone:a3];
  }

  v15 = v5[13];
  v5[13] = assetLocalURL;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(JTAssetMediaItem *)self asset];

      if (v6)
      {
        v7 = [(JTAssetMediaItem *)self asset];
        v8 = [(JTAssetMediaItem *)v5 asset];
        v9 = [v7 isEqual:v8];
      }

      else
      {
        v11.receiver = self;
        v11.super_class = JTAssetMediaItem;
        v9 = [(JTLocalAssetMediaItem *)&v11 isEqual:v5];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(JTAssetMediaItem *)self assetIdentifier];
  if (v3)
  {
    [(JTAssetMediaItem *)self assetIdentifier];
  }

  else
  {
    [(JTAssetMediaItem *)self assetLocalURL];
  }
  v4 = ;
  v5 = [v4 hash];

  return v5;
}

- (JTAssetMediaItem)initWithInfo:(id)a3 delegate:(id)a4
{
  v14.receiver = self;
  v14.super_class = JTAssetMediaItem;
  v5 = a3;
  v6 = [(JTLocalAssetMediaItem *)&v14 initWithInfo:v5 delegate:a4];
  v7 = [v5 objectForKey:{kAssetIdentiferKey, v14.receiver, v14.super_class}];
  assetIdentifier = v6->_assetIdentifier;
  v6->_assetIdentifier = v7;

  v9 = [v5 objectForKey:kAssetMasterFingerprintKey];
  masterFingerprint = v6->_masterFingerprint;
  v6->_masterFingerprint = v9;

  v11 = [v5 objectForKey:kAssetAdjustedFingerprintKey];

  adjustedFingerprint = v6->_adjustedFingerprint;
  v6->_adjustedFingerprint = v11;

  return v6;
}

- (id)info
{
  v3 = MEMORY[0x277CBEB38];
  v10.receiver = self;
  v10.super_class = JTAssetMediaItem;
  v4 = [(JTLocalAssetMediaItem *)&v10 info];
  v5 = [v3 dictionaryWithDictionary:v4];

  assetIdentifier = self->_assetIdentifier;
  if (assetIdentifier)
  {
    [v5 setObject:assetIdentifier forKey:kAssetIdentiferKey];
  }

  masterFingerprint = self->_masterFingerprint;
  if (masterFingerprint)
  {
    [v5 setObject:masterFingerprint forKey:kAssetMasterFingerprintKey];
  }

  adjustedFingerprint = self->_adjustedFingerprint;
  if (adjustedFingerprint)
  {
    [v5 setObject:adjustedFingerprint forKey:kAssetAdjustedFingerprintKey];
  }

  return v5;
}

@end