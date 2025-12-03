@interface TDAssetPackDistiller
- (BOOL)assetStoreWriteToDisk;
- (BOOL)setAsset:(id)asset withKey:(const _renditionkeytoken *)key fromRenditionSpec:(id)spec;
- (id)assetPackForTags:(id)tags;
- (void)dealloc;
- (void)removeRenditionsFromAssetStoreWithKey:(id)key;
- (void)setAssetStorageVersionString:(const char *)string;
- (void)setAssetStoreKeyFormatData:(id)data;
- (void)setAssetStoreUuid:(id)uuid;
- (void)setAuthoringTool:(id)tool;
- (void)setDeploymentPlatform:(id)platform;
- (void)setDeploymentPlatformVersion:(id)version;
@end

@implementation TDAssetPackDistiller

- (void)dealloc
{
  [(TDAssetPackDistiller *)self setAssetPackMap:0];
  v3.receiver = self;
  v3.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v3 dealloc];
}

- (id)assetPackForTags:(id)tags
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v5 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(assetPackMap);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([objc_msgSend(v9 "tags")])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)setAsset:(id)asset withKey:(const _renditionkeytoken *)key fromRenditionSpec:(id)spec
{
  v8 = objc_autoreleasePoolPush();
  v9 = -[TDDistiller _keyDataFromKey:](self, "_keyDataFromKey:", [objc_msgSend(spec "keySpec")]);
  v10 = [objc_msgSend(spec "production")];
  if ([v10 count])
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __59__TDAssetPackDistiller_setAsset_withKey_fromRenditionSpec___block_invoke;
    v20[3] = &unk_278EBAF50;
    v20[4] = v11;
    [v10 enumerateObjectsUsingBlock:v20];
    v12 = [(TDAssetPackDistiller *)self assetPackForTags:v11];
    assetStore = [v12 assetStore];
    if (assetStore)
    {
      v14 = [assetStore setAsset:asset forKey:v9];
      [v12 setWasModified:1];
      if (!v14)
      {
        v16 = 0;
        goto LABEL_11;
      }

      if (asset)
      {
        v15 = [objc_alloc(MEMORY[0x277D02668]) initWithExternalReference:objc_msgSend(v12 tags:{"assetPackIdentifier"), v11}];
        [v15 setScaleFactor:CUIRenditionKeyValueForAttribute()];
        [v15 setName:@"External"];
        v16 = -[CUIMutableCommonAssetStorage setAsset:forKey:](self->super._assetStore, "setAsset:forKey:", [v15 CSIRepresentationWithCompression:1], v9);

LABEL_11:
        goto LABEL_12;
      }

      assetStore = self->super._assetStore;
      assetCopy = 0;
    }

    else
    {
      assetStore = self->super._assetStore;
      assetCopy = asset;
    }

    v16 = [(CUIMutableCommonAssetStorage *)assetStore setAsset:assetCopy forKey:v9];
    goto LABEL_11;
  }

  v16 = [(CUIMutableCommonAssetStorage *)self->super._assetStore setAsset:asset forKey:v9];
LABEL_12:
  objc_autoreleasePoolPop(v8);
  return v16;
}

uint64_t __59__TDAssetPackDistiller_setAsset_withKey_fromRenditionSpec___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];

  return [v2 addObject:v3];
}

- (void)removeRenditionsFromAssetStoreWithKey:(id)key
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v15 removeRenditionsFromAssetStoreWithKey:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v11 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setAssetStoreUuid:(id)uuid
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v15 setAssetStoreUuid:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v11 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setAssetStoreKeyFormatData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v15 setAssetStoreKeyFormatData:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v11 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setAssetStorageVersionString:(const char *)string
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v15 setAssetStorageVersionString:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v11 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setDeploymentPlatform:(id)platform
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v15 setDeploymentPlatform:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v11 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setDeploymentPlatformVersion:(id)version
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v15 setDeploymentPlatformVersion:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v11 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setAuthoringTool:(id)tool
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v15 setAuthoringTool:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v11 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)assetStoreWriteToDisk
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = TDAssetPackDistiller;
  assetStoreWriteToDisk = [(TDDistiller *)&v15 assetStoreWriteToDisk];
  if (assetStoreWriteToDisk)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
    v5 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(assetPackMap);
        }

        assetStoreWriteToDisk = [objc_msgSend(*(*(&v11 + 1) + 8 * v8) "assetStore")];
        if (!assetStoreWriteToDisk)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v11 objects:v16 count:16];
          LOBYTE(assetStoreWriteToDisk) = 1;
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      LOBYTE(assetStoreWriteToDisk) = 1;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return assetStoreWriteToDisk;
}

@end