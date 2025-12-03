@interface JTAssetMediaItem
- (BOOL)isEqual:(id)equal;
- (JTAssetMediaItem)init;
- (JTAssetMediaItem)initWithAssetIdentifier:(id)identifier;
- (JTAssetMediaItem)initWithInfo:(id)info delegate:(id)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)info;
- (unint64_t)hash;
- (void)checkIfAssetIsMissing;
- (void)dealloc;
- (void)fetchAssetForce:(BOOL)force;
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

- (JTAssetMediaItem)initWithAssetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = JTAssetMediaItem;
  v5 = [(JFXMediaItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(JTAssetMediaItem *)v5 setAssetIdentifier:identifierCopy];
    [(JTAssetMediaItem *)v6 setAssetLocalURL:0];
    [(JTAssetMediaItem *)v6 fetchAssetForce:0];
  }

  return v6;
}

- (void)fetchAssetForce:(BOOL)force
{
  forceCopy = force;
  v35[1] = *MEMORY[0x277D85DE8];
  asset = [(JTAssetMediaItem *)self asset];

  if (!asset || forceCopy)
  {
    v6 = MEMORY[0x277CD97A8];
    assetIdentifier = [(JTAssetMediaItem *)self assetIdentifier];
    v35[0] = assetIdentifier;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    v9 = [v6 fetchAssetsWithLocalIdentifiers:v8 options:0];

    if (v9 && [v9 count])
    {
      v10 = [v9 objectAtIndex:0];
      [(JTAssetMediaItem *)self setAsset:v10];

      v11 = MEMORY[0x277CD97A8];
      asset2 = [(JTAssetMediaItem *)self asset];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __36__JTAssetMediaItem_fetchAssetForce___block_invoke;
      v34[3] = &unk_278D7CB30;
      v34[4] = self;
      [v11 _computeFingerPrintsOfAsset:asset2 completionHandler:v34];

LABEL_22:
      return;
    }

    mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedPhotoLibrary];
    v14 = MEMORY[0x277CD97A8];
    adjustedFingerprint = [(JTAssetMediaItem *)self adjustedFingerprint];
    v16 = [v14 fetchAssetsMatchingAdjustedFingerPrint:adjustedFingerprint photoLibrary:mEMORY[0x277CD9948]];

    adjustedFingerprint2 = [(JTAssetMediaItem *)self adjustedFingerprint];
    v18 = adjustedFingerprint2;
    if (adjustedFingerprint2 && v16)
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
    masterFingerprint = [(JTAssetMediaItem *)self masterFingerprint];
    v23 = [v21 fetchAssetsMatchingMasterFingerPrint:masterFingerprint photoLibrary:mEMORY[0x277CD9948]];

    masterFingerprint2 = [(JTAssetMediaItem *)self masterFingerprint];
    v25 = masterFingerprint2;
    if (masterFingerprint2 && v23)
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
      firstObject = [v20 firstObject];
      v28 = objc_alloc_init(MEMORY[0x277CD9880]);
      [v28 setWantsIncrementalChangeDetails:0];
      [v28 setIncludeHiddenAssets:1];
      v29 = MEMORY[0x277CCAC30];
      assetIdentifier2 = [(JTAssetMediaItem *)self assetIdentifier];
      v31 = [v29 predicateWithFormat:@"localIdentifier = %@", assetIdentifier2];
      [v28 setPredicate:v31];

      v16 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:firstObject options:v28];

      firstObject2 = [v16 firstObject];
      [(JTAssetMediaItem *)self setAsset:firstObject2];

      asset3 = [(JTAssetMediaItem *)self asset];

      if (asset3)
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
  assetIdentifier = [(JTAssetMediaItem *)self assetIdentifier];
  if (assetIdentifier && (v4 = assetIdentifier, v5 = [(JFXMediaItem *)self mediaState], v4, v5 != 3))
  {
    asset = [(JTAssetMediaItem *)self asset];

    if (!asset)
    {

      [(JFXMediaItem *)self setMediaState:2];
    }
  }

  else
  {
    localFileURL = [(JTLocalAssetMediaItem *)self localFileURL];

    if (localFileURL)
    {
      v11 = objc_alloc_init(MEMORY[0x277CCAA00]);
      localFileURL2 = [(JTLocalAssetMediaItem *)self localFileURL];
      path = [localFileURL2 path];
      v9 = [v11 fileExistsAtPath:path];

      if ((v9 & 1) == 0)
      {
        [(JFXMediaItem *)self setMediaState:2];
      }
    }
  }
}

- (void)reloadAsset
{
  assetIdentifier = [(JTAssetMediaItem *)self assetIdentifier];

  if (assetIdentifier)
  {
    [(JFXMediaItem *)self setMediaState:1];
    [(JTAssetMediaItem *)self fetchAssetForce:1];
    [(JTAssetMediaItem *)self checkIfAssetIsMissing];
    asset = [(JTAssetMediaItem *)self asset];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __31__JTAssetMediaItem_reloadAsset__block_invoke;
    v5[3] = &unk_278D7CB58;
    v5[4] = self;
    [asset isAssetLocalWithCompletion:v5 requiresDerivative:0];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v17.receiver = self;
  v17.super_class = JTAssetMediaItem;
  v5 = [(JTLocalAssetMediaItem *)&v17 copyWithZone:?];
  assetIdentifier = self->_assetIdentifier;
  if (assetIdentifier)
  {
    assetIdentifier = [(NSString *)assetIdentifier copyWithZone:zone];
  }

  v7 = v5[10];
  v5[10] = assetIdentifier;

  adjustedFingerprint = self->_adjustedFingerprint;
  if (adjustedFingerprint)
  {
    adjustedFingerprint = [(NSString *)adjustedFingerprint copyWithZone:zone];
  }

  v9 = v5[12];
  v5[12] = adjustedFingerprint;

  masterFingerprint = self->_masterFingerprint;
  if (masterFingerprint)
  {
    masterFingerprint = [(NSString *)masterFingerprint copyWithZone:zone];
  }

  v11 = v5[11];
  v5[11] = masterFingerprint;

  asset = self->_asset;
  if (asset)
  {
    asset = [(PHAsset *)asset copyWithZone:zone];
  }

  v13 = v5[9];
  v5[9] = asset;

  assetLocalURL = self->_assetLocalURL;
  if (assetLocalURL)
  {
    assetLocalURL = [(NSURL *)assetLocalURL copyWithZone:zone];
  }

  v15 = v5[13];
  v5[13] = assetLocalURL;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      asset = [(JTAssetMediaItem *)self asset];

      if (asset)
      {
        asset2 = [(JTAssetMediaItem *)self asset];
        asset3 = [(JTAssetMediaItem *)v5 asset];
        v9 = [asset2 isEqual:asset3];
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
  assetIdentifier = [(JTAssetMediaItem *)self assetIdentifier];
  if (assetIdentifier)
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

- (JTAssetMediaItem)initWithInfo:(id)info delegate:(id)delegate
{
  v14.receiver = self;
  v14.super_class = JTAssetMediaItem;
  infoCopy = info;
  v6 = [(JTLocalAssetMediaItem *)&v14 initWithInfo:infoCopy delegate:delegate];
  v7 = [infoCopy objectForKey:{kAssetIdentiferKey, v14.receiver, v14.super_class}];
  assetIdentifier = v6->_assetIdentifier;
  v6->_assetIdentifier = v7;

  v9 = [infoCopy objectForKey:kAssetMasterFingerprintKey];
  masterFingerprint = v6->_masterFingerprint;
  v6->_masterFingerprint = v9;

  v11 = [infoCopy objectForKey:kAssetAdjustedFingerprintKey];

  adjustedFingerprint = v6->_adjustedFingerprint;
  v6->_adjustedFingerprint = v11;

  return v6;
}

- (id)info
{
  v3 = MEMORY[0x277CBEB38];
  v10.receiver = self;
  v10.super_class = JTAssetMediaItem;
  info = [(JTLocalAssetMediaItem *)&v10 info];
  v5 = [v3 dictionaryWithDictionary:info];

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