@interface ICDocCamScanCacheItem
- (ICDocCamScanCacheItem)initWithImageCache:(id)a3 docInfos:(id)a4;
- (id)docInfoForScanDataDelegate:(id)a3;
- (id)imageForScanDataDelegateIdentifier:(id)a3;
- (void)deleteCacheImages;
- (void)doneBuildingCache;
@end

@implementation ICDocCamScanCacheItem

- (ICDocCamScanCacheItem)initWithImageCache:(id)a3 docInfos:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICDocCamScanCacheItem;
  v9 = [(ICDocCamScanCacheItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageCache, a3);
    objc_storeStrong(&v10->_docInfos, a4);
  }

  return v10;
}

- (id)docInfoForScanDataDelegate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(ICDocCamScanCacheItem *)self docInfos];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 scanDataDelegateIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)imageForScanDataDelegateIdentifier:(id)a3
{
  v4 = [(ICDocCamScanCacheItem *)self docInfoForScanDataDelegate:a3];
  v5 = [v4 croppedAndFilteredImageUUID];
  if (v5)
  {
    v6 = [(ICDocCamScanCacheItem *)self imageCache];
    v7 = [v6 getImage:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)deleteCacheImages
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ICDocCamScanCacheItem *)v3 deleteCacheImages];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(ICDocCamScanCacheItem *)self docInfos];
  v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v16 = *v22;
    do
    {
      v6 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v6);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v8 = [v7 allUUIDs];
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v18;
          do
          {
            v12 = 0;
            do
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v17 + 1) + 8 * v12);
              v14 = [(ICDocCamScanCacheItem *)self imageCache];
              [v14 deleteImage:v13];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v10);
        }

        [v7 setScanDataDelegateIdentifier:0];
        ++v6;
      }

      while (v6 != v5);
      v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }
}

- (void)doneBuildingCache
{
  v3 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ICDocCamScanCacheItem_doneBuildingCache__block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void __42__ICDocCamScanCacheItem_doneBuildingCache__block_invoke(uint64_t a1)
{
  v2 = +[ICDocCamScanCache cachedItem];
  v3 = *(a1 + 32);

  if (v2 == v3)
  {
    v4 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __42__ICDocCamScanCacheItem_doneBuildingCache__block_invoke_cold_1(v4);
    }

    [ICDocCamScanCache setCachedItem:0];
  }
}

@end