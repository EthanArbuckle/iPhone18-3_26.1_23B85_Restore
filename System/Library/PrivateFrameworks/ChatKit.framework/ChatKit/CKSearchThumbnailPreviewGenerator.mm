@interface CKSearchThumbnailPreviewGenerator
+ (id)sharedInstance;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_calculateDurationForVideoResult:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)durationForVideoResult:(SEL)a3;
- (BOOL)_checkResultForLivePhotoComplement:(id)a3;
- (BOOL)_checkResultForSpatialMedia:(id)a3;
- (BOOL)hasCachedLinkMetadataForQueryResult:(id)a3;
- (BOOL)hasCachedMapPreviewForQueryResult:(id)a3 traitCollection:(id)a4;
- (BOOL)hasCachedPreviewForKey:(id)a3;
- (BOOL)hasCachedPreviewForQueryResult:(id)a3;
- (BOOL)hasCachedWalletItemLinkPropertiesForQueryResult:(id)a3;
- (BOOL)queryResultHasLivePhoto:(id)a3;
- (BOOL)queryResultIsSpatial:(id)a3;
- (BOOL)queryResultIsVideo:(id)a3;
- (CKSearchThumbnailPreviewGenerator)init;
- (id)_lpPreviewLoadQueue;
- (id)_lpWalletItemLinkPreviewLoadQueue;
- (id)_mapMetadataForQueryResult:(id)a3 image:(id)a4;
- (id)_previewLoadQueue;
- (id)cachedLinkMetadataForQueryResult:(id)a3;
- (id)cachedMapPreviewForQueryResult:(id)a3 traitCollection:(id)a4;
- (id)cachedPreviewForKey:(id)a3;
- (id)cachedPreviewForQueryResult:(id)a3;
- (id)cachedPreviewOrNullForKey:(id)a3;
- (id)cachedWalletItemLinkPropertiesForQueryResult:(id)a3;
- (id)mapKeyForQueryResult:(id)a3 traitCollection:(id)a4;
- (id)mapPlaceholderImageForTraitCollection:(id)a3;
- (void)_asyncLoadCachedDiskPreviewForKeyIfAvailable:(id)a3 completion:(id)a4;
- (void)_fetchLinkMetadataForQueryResult:(id)a3 postNotification:(BOOL)a4 completion:(id)a5;
- (void)_generateMapThumbnailForKey:(id)a3 attributes:(id)a4 traitCollection:(id)a5 completion:(id)a6;
- (void)_generatePreviewForQueryResult:(id)a3 postNotification:(BOOL)a4 completion:(id)a5;
- (void)_generateWebLinkPresentationPropertiesForQueryResult:(id)a3 postNofication:(BOOL)a4 completion:(id)a5;
- (void)_persistPreview:(id)a3 atURL:(id)a4;
- (void)_prewarmLinkMetadata:(id)a3;
- (void)generateAndCacheIconWithURL:(id)a3 key:(id)a4 completion:(id)a5;
- (void)generateAndCachePassWithURL:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)generateAndCacheThumbnailWithURL:(id)a3 request:(id)a4 key:(id)a5 completion:(id)a6;
- (void)generateMapLinkMetadataForQueryResult:(id)a3 traitCollection:(id)a4 completion:(id)a5;
- (void)generateMapPreviewForQueryResult:(id)a3 traitCollection:(id)a4;
@end

@implementation CKSearchThumbnailPreviewGenerator

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CKSearchThumbnailPreviewGenerator_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_once_1 != -1)
  {
    dispatch_once(&sharedInstance_once_1, block);
  }

  v2 = sCKSearchThumbnailPreviewGenerator_sharedInstance;

  return v2;
}

void __51__CKSearchThumbnailPreviewGenerator_sharedInstance__block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (!sCKSearchThumbnailPreviewGenerator_sharedInstance)
  {
    v2 = *(a1 + 32);
    v3 = [v2 _createSingleton__im];
    [v2 __setSingleton__im:v3];
  }

  objc_sync_exit(obj);
}

- (CKSearchThumbnailPreviewGenerator)init
{
  v17.receiver = self;
  v17.super_class = CKSearchThumbnailPreviewGenerator;
  v2 = [(CKSearchThumbnailPreviewGenerator *)&v17 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(CKSearchThumbnailPreviewGenerator *)v2 setThumbnailCache:v3];

    v4 = objc_opt_new();
    [(CKSearchThumbnailPreviewGenerator *)v2 setLivePhotoStatusCache:v4];

    v5 = objc_opt_new();
    [(CKSearchThumbnailPreviewGenerator *)v2 setSpatialStatusCache:v5];

    v6 = objc_opt_new();
    [(CKSearchThumbnailPreviewGenerator *)v2 setVideoDurationCache:v6];

    v7 = objc_opt_new();
    [(CKSearchThumbnailPreviewGenerator *)v2 setLpLinkMetadataCache:v7];

    v8 = objc_opt_new();
    [(CKSearchThumbnailPreviewGenerator *)v2 setMapHashesCache:v8];

    v9 = objc_opt_new();
    [(CKSearchThumbnailPreviewGenerator *)v2 setLpWalletItemPropertiesMetadataCache:v9];

    v10 = objc_opt_new();
    [(CKSearchThumbnailPreviewGenerator *)v2 setKeysWithInFlightGeneration:v10];

    v11 = objc_opt_new();
    [(CKSearchThumbnailPreviewGenerator *)v2 setKeysWithInFlightLivePhotoStatus:v11];

    v12 = objc_opt_new();
    [(CKSearchThumbnailPreviewGenerator *)v2 setKeysWithInFlightVideoDurationCalculation:v12];

    v13 = objc_opt_new();
    [(CKSearchThumbnailPreviewGenerator *)v2 setKeysWithInFlightSpatialStatus:v13];

    v14 = objc_opt_new();
    [(CKSearchThumbnailPreviewGenerator *)v2 setKeysWithInFlightLPLinkMetadataGeneration:v14];

    v15 = objc_opt_new();
    [(CKSearchThumbnailPreviewGenerator *)v2 setKeysWithInFlightLPWalletItemPropertiesMetadataGeneration:v15];
  }

  return v2;
}

- (id)_previewLoadQueue
{
  if (_previewLoadQueue_once != -1)
  {
    [CKSearchThumbnailPreviewGenerator _previewLoadQueue];
  }

  v2 = arc4random();
  v3 = &_previewLoadQueue_sPreviewLoadQueue1;
  if ((v2 & 1) == 0)
  {
    v3 = &_previewLoadQueue_sPreviewLoadQueue2;
  }

  v4 = *v3;

  return v4;
}

void __54__CKSearchThumbnailPreviewGenerator__previewLoadQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.Messages.CKThumbanilPreviewGeneratorLoadQueueOne", v0);
  v2 = _previewLoadQueue_sPreviewLoadQueue1;
  _previewLoadQueue_sPreviewLoadQueue1 = v1;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.Messages.CKThumbanilPreviewGeneratorLoadQueueTwo", v5);
  v4 = _previewLoadQueue_sPreviewLoadQueue2;
  _previewLoadQueue_sPreviewLoadQueue2 = v3;
}

- (id)_lpPreviewLoadQueue
{
  if (_lpPreviewLoadQueue_once != -1)
  {
    [CKSearchThumbnailPreviewGenerator _lpPreviewLoadQueue];
  }

  v3 = _lpPreviewLoadQueue_sLPPreviewLoadQueue;

  return v3;
}

void __56__CKSearchThumbnailPreviewGenerator__lpPreviewLoadQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.Messages.CKThumbanilPreviewGeneratorLPLoadQueue", v2);
  v1 = _lpPreviewLoadQueue_sLPPreviewLoadQueue;
  _lpPreviewLoadQueue_sLPPreviewLoadQueue = v0;
}

- (id)_lpWalletItemLinkPreviewLoadQueue
{
  if (_lpWalletItemLinkPreviewLoadQueue_once != -1)
  {
    [CKSearchThumbnailPreviewGenerator _lpWalletItemLinkPreviewLoadQueue];
  }

  v3 = _lpWalletItemLinkPreviewLoadQueue_sLPPassPreviewLoadQueue;

  return v3;
}

void __70__CKSearchThumbnailPreviewGenerator__lpWalletItemLinkPreviewLoadQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.Messages.CKThumbanilPreviewGeneratorWalleteLoadQueue", v2);
  v1 = _lpWalletItemLinkPreviewLoadQueue_sLPPassPreviewLoadQueue;
  _lpWalletItemLinkPreviewLoadQueue_sLPPassPreviewLoadQueue = v0;
}

- (void)_generatePreviewForQueryResult:(id)a3 postNotification:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    v11 = [v8 identifier];
    if ([(CKSearchThumbnailPreviewGenerator *)self hasCachedPreviewForQueryResult:v8])
    {
      v12 = [(CKSearchThumbnailPreviewGenerator *)self cachedPreviewForKey:v11];
      (v10)[2](v10, v12);
    }

    else
    {
      v13 = [(CKSearchThumbnailPreviewGenerator *)self keysWithInFlightGeneration];
      v14 = [v13 containsObject:v11];

      if ((v14 & 1) == 0)
      {
        v15 = [(CKSearchThumbnailPreviewGenerator *)self keysWithInFlightGeneration];
        [v15 addObject:v11];

        v16 = [v8 item];
        v17 = [v16 attributeSet];
        v18 = [v17 contentURL];

        if (v18)
        {
          v19 = +[CKUIBehavior sharedBehaviors];
          [v19 searchPhotosThumbnailWidth];
          v21 = v20;

          v22 = [MEMORY[0x1E69DCEB0] mainScreen];
          [v22 scale];
          v24 = v23;

          v25 = [objc_alloc(MEMORY[0x1E697A0E0]) initWithFileAtURL:v18 size:4 scale:v21 representationTypes:{v21, v24}];
          [v25 setShouldUseRestrictedExtension:1];
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __96__CKSearchThumbnailPreviewGenerator__generatePreviewForQueryResult_postNotification_completion___block_invoke;
          v26[3] = &unk_1E72F4060;
          v26[4] = self;
          v27 = v11;
          v28 = v18;
          v31 = a4;
          v29 = v8;
          v30 = v10;
          [(CKSearchThumbnailPreviewGenerator *)self generateAndCacheThumbnailWithURL:v28 request:v25 key:v27 completion:v26];
        }

        else
        {
          v25 = IMLogHandleForCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [CKSearchThumbnailPreviewGenerator _generatePreviewForQueryResult:postNotification:completion:];
          }
        }
      }
    }
  }

  else
  {
    (*(v9 + 2))(v9, 0);
  }
}

void __96__CKSearchThumbnailPreviewGenerator__generatePreviewForQueryResult_postNotification_completion___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (v7)
  {
    if ((a3 & 1) == 0)
    {
      v9 = [*(a1 + 32) _previewURLForKey:*(a1 + 40)];
      if (v9)
      {
        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v11 = *(a1 + 48);
            *buf = 138412290;
            v28 = v11;
            _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Generated preview thumbnail OK for URL: %@", buf, 0xCu);
          }
        }

        [*(a1 + 32) _persistPreview:v7 atURL:v9];
      }

      else
      {
        v17 = IMLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __96__CKSearchThumbnailPreviewGenerator__generatePreviewForQueryResult_postNotification_completion___block_invoke_cold_1();
        }
      }
    }

    v18 = [*(a1 + 32) keysWithInFlightGeneration];
    [v18 removeObject:*(a1 + 40)];

    if (*(a1 + 72) == 1)
    {
      v19 = [MEMORY[0x1E696AD88] defaultCenter];
      [v19 postNotificationName:@"CKSearchThumbnailDidChange" object:*(a1 + 56)];
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v12 = *(a1 + 48);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __96__CKSearchThumbnailPreviewGenerator__generatePreviewForQueryResult_postNotification_completion___block_invoke_201;
    v21[3] = &unk_1E72F4038;
    v20 = *(a1 + 32);
    v13 = *(&v20 + 1);
    v14 = *(a1 + 48);
    v26 = *(a1 + 72);
    v15 = *(a1 + 56);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    v22 = v20;
    v23 = v16;
    v25 = *(a1 + 64);
    v24 = v8;
    [v20 generateAndCacheIconWithURL:v12 key:v13 completion:v21];
  }
}

void __96__CKSearchThumbnailPreviewGenerator__generatePreviewForQueryResult_postNotification_completion___block_invoke_201(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) keysWithInFlightGeneration];
  [v4 removeObject:*(a1 + 40)];

  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 48);
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Generated preview icon OK for URL: %@", &v10, 0xCu);
      }
    }

    if (*(a1 + 80) == 1)
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 postNotificationName:@"CKSearchThumbnailDidChange" object:*(a1 + 56)];
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __96__CKSearchThumbnailPreviewGenerator__generatePreviewForQueryResult_postNotification_completion___block_invoke_201_cold_1(a1);
    }

    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __96__CKSearchThumbnailPreviewGenerator__generatePreviewForQueryResult_postNotification_completion___block_invoke_201_cold_2();
    }

    (*(*(a1 + 72) + 16))();
  }
}

- (id)cachedPreviewForKey:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(CKSearchThumbnailPreviewGenerator *)self cachedPreviewOrNullForKey:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v9 = 138412290;
          v10 = v4;
          _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Returning nil cached thumbnail. Previous attempt at generating thumbnail failed for key %@", &v9, 0xCu);
        }
      }

      v7 = 0;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)cachedPreviewOrNullForKey:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CKSearchThumbnailPreviewGenerator *)self thumbnailCache];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasCachedPreviewForKey:(id)a3
{
  v3 = [(CKSearchThumbnailPreviewGenerator *)self cachedPreviewOrNullForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasCachedPreviewForQueryResult:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 identifier];
  v5 = [(CKSearchThumbnailPreviewGenerator *)self cachedPreviewOrNullForKey:v4];
  v6 = v5 != 0;

  return v6;
}

- (id)cachedPreviewForQueryResult:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v6 = [v4 identifier];
  v7 = [(CKSearchThumbnailPreviewGenerator *)self cachedPreviewOrNullForKey:v6];

  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = v7;
      goto LABEL_11;
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Returning nil cached thumbnail. Previous attempt at generating thumbnail failed for search result: %@", &v11, 0xCu);
      }
    }
  }

  v9 = 0;
LABEL_11:

LABEL_12:

  return v9;
}

- (BOOL)queryResultHasLivePhoto:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if (!v5)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CKSearchThumbnailPreviewGenerator queryResultHasLivePhoto:];
    }

    goto LABEL_8;
  }

  v6 = [(CKSearchThumbnailPreviewGenerator *)self livePhotoStatusCache];
  v7 = [v6 objectForKey:v5];

  if (!v7)
  {
    v9 = [(CKSearchThumbnailPreviewGenerator *)self keysWithInFlightLivePhotoStatus];
    v10 = [v9 containsObject:v5];

    if ((v10 & 1) == 0)
    {
      v11 = [(CKSearchThumbnailPreviewGenerator *)self keysWithInFlightLivePhotoStatus];
      [v11 addObject:v5];

      v12 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__CKSearchThumbnailPreviewGenerator_queryResultHasLivePhoto___block_invoke;
      block[3] = &unk_1E72EB880;
      block[4] = self;
      v15 = v4;
      v16 = v5;
      dispatch_async(v12, block);
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v8 = [v7 BOOLValue];
LABEL_9:

  return v8;
}

void __61__CKSearchThumbnailPreviewGenerator_queryResultHasLivePhoto___block_invoke(id *a1)
{
  v2 = [a1[4] _checkResultForLivePhotoComplement:a1[5]];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__CKSearchThumbnailPreviewGenerator_queryResultHasLivePhoto___block_invoke_2;
  v3[3] = &unk_1E72F2680;
  v3[4] = a1[4];
  v4 = a1[6];
  v6 = v2;
  v5 = a1[5];
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __61__CKSearchThumbnailPreviewGenerator_queryResultHasLivePhoto___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) keysWithInFlightLivePhotoStatus];
  [v2 removeObject:*(a1 + 40)];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  v3 = [*(a1 + 32) livePhotoStatusCache];
  [v3 setObject:v5 forKey:*(a1 + 40)];

  if ([v5 BOOLValue])
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"CKSearchLivePhotoStatusDidChange" object:*(a1 + 48)];
  }
}

- (BOOL)_checkResultForLivePhotoComplement:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 item];
  v4 = [v3 attributeSet];
  v5 = [v4 contentURL];

  if (v5)
  {
    v6 = [v5 lastPathComponent];
    v7 = +[CKMediaObjectManager sharedInstance];
    v8 = [v7 classForFilename:v6];

    if ([v8 isEqual:objc_opt_class()])
    {
      v9 = [CKLivePhotoBundleUtilities calculateLivePhotoVideoPath:v5];
      v10 = v9 != 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CKSearchThumbnailPreviewGenerator _checkResultForLivePhotoComplement:];
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)queryResultIsSpatial:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if (!v5)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CKSearchThumbnailPreviewGenerator queryResultIsSpatial:];
    }

    goto LABEL_8;
  }

  v6 = [(CKSearchThumbnailPreviewGenerator *)self spatialStatusCache];
  v7 = [v6 objectForKey:v5];

  if (!v7)
  {
    v9 = [(CKSearchThumbnailPreviewGenerator *)self keysWithInFlightSpatialStatus];
    v10 = [v9 containsObject:v5];

    if ((v10 & 1) == 0)
    {
      v11 = [(CKSearchThumbnailPreviewGenerator *)self keysWithInFlightSpatialStatus];
      [v11 addObject:v5];

      v12 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__CKSearchThumbnailPreviewGenerator_queryResultIsSpatial___block_invoke;
      block[3] = &unk_1E72EB880;
      block[4] = self;
      v15 = v4;
      v16 = v5;
      dispatch_async(v12, block);
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v8 = [v7 BOOLValue];
LABEL_9:

  return v8;
}

void __58__CKSearchThumbnailPreviewGenerator_queryResultIsSpatial___block_invoke(id *a1)
{
  v2 = [a1[4] _checkResultForSpatialMedia:a1[5]];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__CKSearchThumbnailPreviewGenerator_queryResultIsSpatial___block_invoke_2;
  v3[3] = &unk_1E72F2680;
  v3[4] = a1[4];
  v4 = a1[6];
  v6 = v2;
  v5 = a1[5];
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __58__CKSearchThumbnailPreviewGenerator_queryResultIsSpatial___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) keysWithInFlightSpatialStatus];
  [v2 removeObject:*(a1 + 40)];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  v3 = [*(a1 + 32) spatialStatusCache];
  [v3 setObject:v5 forKey:*(a1 + 40)];

  if ([v5 BOOLValue])
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"CKSearchSpatialStatusDidChange" object:*(a1 + 48)];
  }
}

- (BOOL)_checkResultForSpatialMedia:(id)a3
{
  if (a3)
  {
    v3 = [a3 item];
    v4 = [v3 attributeSet];
    v5 = [v4 contentURL];

    v6 = IMPreviewExtension();
    v7 = IMAttachmentPreviewFileURL();

    v8 = [v7 URLByDeletingPathExtension];
    v9 = [v8 URLByAppendingPathExtension:@"plist"];

    v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v9];
    if (v10)
    {
      v11 = [MEMORY[0x1E696AE40] propertyListWithData:v10 options:0 format:0 error:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69A7090]];
        v13 = [v12 BOOLValue];
      }

      else
      {
        v13 = 0;
      }

      if (!v5)
      {
LABEL_10:
        v14 = IMLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [CKSearchThumbnailPreviewGenerator _checkResultForSpatialMedia:];
        }

        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    return v13;
  }

  return 0;
}

- (BOOL)queryResultIsVideo:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 item];
  v4 = [v3 attributeSet];
  v5 = [v4 contentURL];

  if (v5)
  {
    v6 = [v5 lastPathComponent];
    v7 = +[CKMediaObjectManager sharedInstance];
    v8 = [v7 classForFilename:v6];

    v9 = [v8 isEqual:objc_opt_class()];
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CKSearchThumbnailPreviewGenerator queryResultIsVideo:];
    }

    v9 = 0;
  }

  return v9;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)durationForVideoResult:(SEL)a3
{
  v6 = a4;
  v7 = MEMORY[0x193AF5ED0]("kCMTimeInvalid", @"CoreMedia");
  v20 = *v7;
  v21 = *(v7 + 16);
  v8 = [v6 identifier];
  if (v8)
  {
    v9 = [(CKSearchThumbnailPreviewGenerator *)self videoDurationCache];
    v10 = [v9 objectForKey:v8];

    if (v10)
    {
      [v10 duration];
    }

    else
    {
      v12 = [(CKSearchThumbnailPreviewGenerator *)self keysWithInFlightVideoDurationCalculation];
      v13 = [v12 containsObject:v8];

      if ((v13 & 1) == 0)
      {
        v14 = [(CKSearchThumbnailPreviewGenerator *)self keysWithInFlightVideoDurationCalculation];
        [v14 addObject:v8];

        v15 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __60__CKSearchThumbnailPreviewGenerator_durationForVideoResult___block_invoke;
        block[3] = &unk_1E72EB880;
        block[4] = self;
        v18 = v6;
        v19 = v8;
        dispatch_async(v15, block);
      }

      *&retstr->var0 = v20;
      retstr->var3 = v21;
    }
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CKSearchThumbnailPreviewGenerator durationForVideoResult:];
    }

    *&retstr->var0 = v20;
    retstr->var3 = v21;
  }

  return result;
}

void __60__CKSearchThumbnailPreviewGenerator_durationForVideoResult___block_invoke(uint64_t a1)
{
  v8 = 0uLL;
  v9 = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 _calculateDurationForVideoResult:*(a1 + 40)];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CKSearchThumbnailPreviewGenerator_durationForVideoResult___block_invoke_2;
  block[3] = &unk_1E72F4088;
  block[4] = *(a1 + 32);
  v4 = *(a1 + 48);
  v6 = v8;
  v7 = v9;
  v5 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60__CKSearchThumbnailPreviewGenerator_durationForVideoResult___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) keysWithInFlightVideoDurationCalculation];
  [v2 removeObject:*(a1 + 40)];

  v3 = objc_alloc_init(CKSearchVideoDuration);
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  [(CKSearchVideoDuration *)v3 setDuration:&v6];
  v4 = [*(a1 + 32) videoDurationCache];
  [v4 setObject:v3 forKey:*(a1 + 40)];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"CKSearchVideoDurationDidChange" object:*(a1 + 48)];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_calculateDurationForVideoResult:(SEL)a3
{
  if (!a4)
  {
    result = MEMORY[0x193AF5ED0]("kCMTimeInvalid", @"CoreMedia");
    var3 = result->var3;
    *&retstr->var0 = *&result->var0;
    retstr->var3 = var3;
    return result;
  }

  v5 = [a4 item];
  v6 = [v5 attributeSet];
  v7 = [v6 contentURL];

  if (!v7)
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CKSearchThumbnailPreviewGenerator queryResultIsVideo:];
    }

    v16 = MEMORY[0x193AF5ED0]("kCMTimeInvalid", @"CoreMedia");
    v17 = *(v16 + 16);
    *&retstr->var0 = *v16;
    retstr->var3 = v17;
    goto LABEL_15;
  }

  v8 = [v7 lastPathComponent];
  v9 = +[CKMediaObjectManager sharedInstance];
  v10 = [v9 classForFilename:v8];

  if (![v10 isEqual:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v11 = CKAVURLAssetForURL(v7);
  if (!v11)
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CKSearchThumbnailPreviewGenerator _calculateDurationForVideoResult:];
    }

LABEL_13:
    v19 = MEMORY[0x193AF5ED0]("kCMTimeInvalid", @"CoreMedia");
    v20 = *(v19 + 16);
    *&retstr->var0 = *v19;
    retstr->var3 = v20;
    goto LABEL_14;
  }

  v12 = v11;
  [v11 duration];

LABEL_14:
LABEL_15:

  return result;
}

- (void)generateAndCacheThumbnailWithURL:(id)a3 request:(id)a4 key:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__40;
  v29[4] = __Block_byref_object_dispose__40;
  v30 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __93__CKSearchThumbnailPreviewGenerator_generateAndCacheThumbnailWithURL_request_key_completion___block_invoke;
  v26[3] = &unk_1E72F40B0;
  v28 = v29;
  v15 = v14;
  v27 = v15;
  [(CKSearchThumbnailPreviewGenerator *)self _asyncLoadCachedDiskPreviewForKeyIfAvailable:v12 completion:v26];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __93__CKSearchThumbnailPreviewGenerator_generateAndCacheThumbnailWithURL_request_key_completion___block_invoke_2;
  v20[3] = &unk_1E72F4128;
  v20[4] = self;
  v21 = v12;
  v24 = v13;
  v25 = v29;
  v22 = v10;
  v23 = v11;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  v19 = v12;
  dispatch_group_notify(v15, MEMORY[0x1E69E96A0], v20);

  _Block_object_dispose(v29, 8);
}

void __93__CKSearchThumbnailPreviewGenerator_generateAndCacheThumbnailWithURL_request_key_completion___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __93__CKSearchThumbnailPreviewGenerator_generateAndCacheThumbnailWithURL_request_key_completion___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v2 = [*(a1 + 32) thumbnailCache];
    [v2 setObject:*(*(*(a1 + 72) + 8) + 40) forKey:*(a1 + 40)];

    v3 = *(a1 + 64);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = [*(a1 + 48) lastPathComponent];
    v6 = IMUTITypeForFilename();
    v7 = +[CKMediaObjectManager sharedInstance];
    v8 = [v7 classForUTIType:v6];

    if ([v8 isEqual:objc_opt_class()])
    {
      v10 = *(a1 + 40);
      v9 = *(a1 + 48);
      v11 = *(a1 + 32);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __93__CKSearchThumbnailPreviewGenerator_generateAndCacheThumbnailWithURL_request_key_completion___block_invoke_3;
      v20[3] = &unk_1E72F0850;
      v21 = *(a1 + 64);
      [v11 generateAndCachePassWithURL:v9 forKey:v10 completion:v20];
      v12 = v21;
    }

    else
    {
      v13 = [MEMORY[0x1E697A0E8] sharedGenerator];
      v14 = *(a1 + 56);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __93__CKSearchThumbnailPreviewGenerator_generateAndCacheThumbnailWithURL_request_key_completion___block_invoke_5;
      v16[3] = &unk_1E72F4100;
      v15 = *(a1 + 40);
      v16[4] = *(a1 + 32);
      v17 = v15;
      v19 = *(a1 + 64);
      v18 = *(a1 + 48);
      [v13 generateBestRepresentationForRequest:v14 completionHandler:v16];

      v12 = v17;
    }
  }
}

void __93__CKSearchThumbnailPreviewGenerator_generateAndCacheThumbnailWithURL_request_key_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __93__CKSearchThumbnailPreviewGenerator_generateAndCacheThumbnailWithURL_request_key_completion___block_invoke_4;
  v6[3] = &unk_1E72EE5D8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __93__CKSearchThumbnailPreviewGenerator_generateAndCacheThumbnailWithURL_request_key_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 0, 0);
  }

  return result;
}

void __93__CKSearchThumbnailPreviewGenerator_generateAndCacheThumbnailWithURL_request_key_completion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__CKSearchThumbnailPreviewGenerator_generateAndCacheThumbnailWithURL_request_key_completion___block_invoke_6;
  v11[3] = &unk_1E72F40D8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v17 = *(a1 + 56);
  v15 = v5;
  v16 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __93__CKSearchThumbnailPreviewGenerator_generateAndCacheThumbnailWithURL_request_key_completion___block_invoke_6(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) thumbnailCache];
    v3 = [MEMORY[0x1E695DFB0] null];
    [v2 setObject:v3 forKey:*(a1 + 48)];

    v4 = *(a1 + 72);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }

  else
  {
    v6 = [*(a1 + 56) UIImage];
    if (v6)
    {
      v7 = [*(a1 + 40) thumbnailCache];
      [v7 setObject:v6 forKey:*(a1 + 48)];
    }

    else
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __93__CKSearchThumbnailPreviewGenerator_generateAndCacheThumbnailWithURL_request_key_completion___block_invoke_6_cold_1();
      }

      v7 = [*(a1 + 40) thumbnailCache];
      v9 = [MEMORY[0x1E695DFB0] null];
      [v7 setObject:v9 forKey:*(a1 + 48)];
    }

    v10 = *(a1 + 72);
    if (v10)
    {
      (*(v10 + 16))(v10, v6, 0, *(a1 + 32));
    }
  }
}

- (void)generateAndCacheIconWithURL:(id)a3 key:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 searchPhotosThumbnailWidth];
  v14 = v13;

  v15 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v15 scale];
  v17 = v16;

  [v11 setSize:{v14, v14}];
  [v11 setScale:v17];
  [v11 setVariantOptions:1];
  v18 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithURL:v8];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__CKSearchThumbnailPreviewGenerator_generateAndCacheIconWithURL_key_completion___block_invoke;
  v22[3] = &unk_1E72F4150;
  v23 = v8;
  v24 = self;
  v25 = v9;
  v26 = v10;
  v19 = v10;
  v20 = v9;
  v21 = v8;
  [v18 getImageForImageDescriptor:v11 completion:v22];
}

void __80__CKSearchThumbnailPreviewGenerator_generateAndCacheIconWithURL_key_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __80__CKSearchThumbnailPreviewGenerator_generateAndCacheIconWithURL_key_completion___block_invoke_cold_2();
    }

    goto LABEL_7;
  }

  v5 = MEMORY[0x1E69DCAB8];
  v6 = [v3 CGImage];
  [v4 scale];
  v7 = [v5 imageWithCGImage:v6 scale:0 orientation:?];
  if (!v7)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __80__CKSearchThumbnailPreviewGenerator_generateAndCacheIconWithURL_key_completion___block_invoke_cold_1();
    }

LABEL_7:

    v7 = 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__CKSearchThumbnailPreviewGenerator_generateAndCacheIconWithURL_key_completion___block_invoke_222;
  v12[3] = &unk_1E72EDE00;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v13 = v7;
  v14 = v9;
  v15 = v10;
  v16 = *(a1 + 56);
  v11 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

uint64_t __80__CKSearchThumbnailPreviewGenerator_generateAndCacheIconWithURL_key_completion___block_invoke_222(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) thumbnailCache];
  v4 = v3;
  if (v2)
  {
    [v3 setObject:*(a1 + 32) forKey:*(a1 + 48)];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    [v4 setObject:v5 forKey:*(a1 + 48)];
  }

  result = *(a1 + 56);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)generateAndCachePassWithURL:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(2, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__CKSearchThumbnailPreviewGenerator_generateAndCachePassWithURL_forKey_completion___block_invoke;
  v15[3] = &unk_1E72EDE00;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __83__CKSearchThumbnailPreviewGenerator_generateAndCachePassWithURL_forKey_completion___block_invoke(id *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v26 = 0;
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v2 options:8 error:&v26];
  v4 = v26;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v11 = [objc_alloc(MEMORY[0x193AF5EC0](@"PKPass" @"PassKit"))];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__CKSearchThumbnailPreviewGenerator_generateAndCachePassWithURL_forKey_completion___block_invoke_230;
    block[3] = &unk_1E72EDAE0;
    v23 = v11;
    v21 = a1[5];
    v12 = a1[6];
    v13 = a1[4];
    v14 = a1[7];
    *&v15 = v13;
    *(&v15 + 1) = v14;
    *&v16 = v21;
    *(&v16 + 1) = v12;
    v24 = v16;
    v25 = v15;
    v17 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v7 = [a1[5] thumbnailCache];
    v8 = [MEMORY[0x1E695DFB0] null];
    [v7 setObject:v8 forKey:a1[6]];

    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = a1[6];
      v19 = a1[4];
      v20 = [v5 localizedDescription];
      *buf = 138412802;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      v31 = 2112;
      v32 = v20;
      _os_log_error_impl(&dword_19020E000, v9, OS_LOG_TYPE_ERROR, "Failed to load pass data with for key: %@, URL: %@, error: %@", buf, 0x20u);
    }

    v10 = a1[7];
    if (v10)
    {
      v10[2](v10, 0);
    }
  }
}

void __83__CKSearchThumbnailPreviewGenerator_generateAndCachePassWithURL_forKey_completion___block_invoke_230(uint64_t a1)
{
  v2 = [CKPassKitHelper passViewForPass:*(a1 + 32) content:4];
  v3 = [v2 snapshotOfFrontFace];
  if (v3)
  {
    v4 = [*(a1 + 40) thumbnailCache];
    [v4 setObject:v3 forKey:*(a1 + 48)];
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __83__CKSearchThumbnailPreviewGenerator_generateAndCachePassWithURL_forKey_completion___block_invoke_230_cold_1();
    }

    v4 = [*(a1 + 40) thumbnailCache];
    v6 = [MEMORY[0x1E695DFB0] null];
    [v4 setObject:v6 forKey:*(a1 + 48)];
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (void)_asyncLoadCachedDiskPreviewForKeyIfAvailable:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKSearchThumbnailPreviewGenerator *)self _previewURLForKey:v6];
  if (v8)
  {
    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 searchPhotosThumbnailWidth];
    v11 = v10;

    v12 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v12 scale];
    v14 = v13;

    v15 = [(CKSearchThumbnailPreviewGenerator *)self _previewLoadQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __93__CKSearchThumbnailPreviewGenerator__asyncLoadCachedDiskPreviewForKeyIfAvailable_completion___block_invoke;
    v17[3] = &unk_1E72F2D40;
    v18 = v8;
    v21 = v11 * v14;
    v20 = v7;
    v19 = v6;
    dispatch_async(v15, v17);
  }

  else
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CKSearchThumbnailPreviewGenerator _asyncLoadCachedDiskPreviewForKeyIfAvailable:completion:];
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

void __93__CKSearchThumbnailPreviewGenerator__asyncLoadCachedDiskPreviewForKeyIfAvailable_completion___block_invoke(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DEF0]);
  v3 = a1[4];
  v23 = 0;
  v4 = [v2 initWithContentsOfURL:v3 options:1 error:&v23];
  v5 = v23;
  v6 = v5;
  if (v4)
  {
    v7 = CGImageSourceCreateWithData(v4, 0);
    v8 = IMCreateThumbnailWithImageSourceAtIndexForMaxDimension();
    if (v8)
    {
      v9 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v8];
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = 0;
      if (!v7)
      {
LABEL_5:
        if (v8)
        {
          CFRelease(v8);
        }

        v10 = IMLogHandleForCategory();
        v11 = v10;
        if (v9)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v12 = a1[4];
            *buf = 138412290;
            v25 = v12;
            _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Created preview OK for previewURL: %@", buf, 0xCu);
          }

          v13 = a1[6];
          if (!v13)
          {
            goto LABEL_22;
          }

          v14 = *(v13 + 16);
        }

        else
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            __93__CKSearchThumbnailPreviewGenerator__asyncLoadCachedDiskPreviewForKeyIfAvailable_completion___block_invoke_cold_1();
          }

          v17 = a1[6];
          if (!v17)
          {
            goto LABEL_22;
          }

          v14 = *(v17 + 16);
        }

        v14();
LABEL_22:

        goto LABEL_29;
      }
    }

    CFRelease(v7);
    goto LABEL_5;
  }

  v15 = [v5 domain];
  if (![v15 isEqualToString:*MEMORY[0x1E696A250]])
  {

    goto LABEL_24;
  }

  v16 = [v6 code];

  if (v16 != 260)
  {
LABEL_24:
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = a1[4];
      v20 = a1[5];
      v22 = [v6 localizedDescription];
      *buf = 138412802;
      v25 = v20;
      v26 = 2112;
      v27 = v21;
      v28 = 2112;
      v29 = v22;
      _os_log_error_impl(&dword_19020E000, v18, OS_LOG_TYPE_ERROR, "Failed to load preview from disk for key: %@, url: %@ error: %@", buf, 0x20u);
    }
  }

  v19 = a1[6];
  if (v19)
  {
    (*(v19 + 16))(v19, 0);
  }

LABEL_29:
}

- (void)generateMapPreviewForQueryResult:(id)a3 traitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && ![(CKSearchThumbnailPreviewGenerator *)self hasCachedMapPreviewForQueryResult:v6 traitCollection:v7])
  {
    v8 = [(CKSearchThumbnailPreviewGenerator *)self mapKeyForQueryResult:v6 traitCollection:v7];
    if (v8)
    {
      v9 = [(CKSearchThumbnailPreviewGenerator *)self keysWithInFlightGeneration];
      v10 = [v9 containsObject:v8];

      if ((v10 & 1) == 0)
      {
        v11 = [(CKSearchThumbnailPreviewGenerator *)self keysWithInFlightGeneration];
        [v11 addObject:v8];

        v12 = [v6 item];
        v13 = [v12 attributeSet];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __86__CKSearchThumbnailPreviewGenerator_generateMapPreviewForQueryResult_traitCollection___block_invoke;
        v15[3] = &unk_1E72F4178;
        v15[4] = self;
        v16 = v8;
        v17 = v6;
        [(CKSearchThumbnailPreviewGenerator *)self _generateMapThumbnailForKey:v16 attributes:v13 traitCollection:v7 completion:v15];
      }
    }

    else
    {
      v14 = IMLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CKSearchThumbnailPreviewGenerator generateMapPreviewForQueryResult:traitCollection:];
      }
    }
  }
}

void __86__CKSearchThumbnailPreviewGenerator_generateMapPreviewForQueryResult_traitCollection___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) keysWithInFlightGeneration];
  [v9 removeObject:*(a1 + 40)];

  if (!v7 || v8)
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __86__CKSearchThumbnailPreviewGenerator_generateMapPreviewForQueryResult_traitCollection___block_invoke_cold_1();
    }

    v12 = [*(a1 + 32) thumbnailCache];
    v14 = [MEMORY[0x1E695DFB0] null];
    [v12 setObject:v14 forKey:*(a1 + 40)];
  }

  else
  {
    v10 = [*(a1 + 32) thumbnailCache];
    [v10 setObject:v7 forKey:*(a1 + 40)];

    if ((a3 & 1) == 0)
    {
      v11 = [*(a1 + 32) _previewURLForKey:*(a1 + 40)];
      [*(a1 + 32) _persistPreview:v7 atURL:v11];
    }

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 postNotificationName:@"CKSearchThumbnailDidChange" object:*(a1 + 48)];
  }
}

- (void)generateMapLinkMetadataForQueryResult:(id)a3 traitCollection:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 item];
  v12 = [v11 domainIdentifier];
  v13 = [v12 isEqualToString:@"attachmentDomain"];

  if (v13)
  {
    if (v8)
    {
      if ([(CKSearchThumbnailPreviewGenerator *)self hasCachedMapPreviewForQueryResult:v8 traitCollection:v9])
      {
        v14 = [(CKSearchThumbnailPreviewGenerator *)self cachedMapPreviewForQueryResult:v8 traitCollection:v9];
        v15 = [(CKSearchThumbnailPreviewGenerator *)self _mapMetadataForQueryResult:v8 image:v14];
        v10[2](v10, v15);
      }

      else
      {
        v14 = [(CKSearchThumbnailPreviewGenerator *)self mapKeyForQueryResult:v8 traitCollection:v9];
        if (v14)
        {
          v16 = [(CKSearchThumbnailPreviewGenerator *)self keysWithInFlightGeneration];
          v17 = [v16 containsObject:v14];

          if ((v17 & 1) == 0)
          {
            v18 = [(CKSearchThumbnailPreviewGenerator *)self keysWithInFlightGeneration];
            [v18 addObject:v14];

            v19 = [v8 item];
            v20 = [v19 attributeSet];
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 3221225472;
            v21[2] = __102__CKSearchThumbnailPreviewGenerator_generateMapLinkMetadataForQueryResult_traitCollection_completion___block_invoke;
            v21[3] = &unk_1E72F41A0;
            v21[4] = self;
            v22 = v14;
            v24 = v10;
            v23 = v8;
            [(CKSearchThumbnailPreviewGenerator *)self _generateMapThumbnailForKey:v22 attributes:v20 traitCollection:v9 completion:v21];
          }

          goto LABEL_13;
        }

        v10[2](v10, 0);
        v15 = IMLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [CKSearchThumbnailPreviewGenerator generateMapPreviewForQueryResult:traitCollection:];
        }
      }

LABEL_13:
      goto LABEL_14;
    }

    v10[2](v10, 0);
  }

  else
  {
    [(CKSearchThumbnailPreviewGenerator *)self _fetchLinkMetadataForQueryResult:v8 postNotification:0 completion:v10];
  }

LABEL_14:
}

void __102__CKSearchThumbnailPreviewGenerator_generateMapLinkMetadataForQueryResult_traitCollection_completion___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) keysWithInFlightGeneration];
  [v9 removeObject:*(a1 + 40)];

  if (!v7 || v8)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __86__CKSearchThumbnailPreviewGenerator_generateMapPreviewForQueryResult_traitCollection___block_invoke_cold_1();
    }

    v15 = [*(a1 + 32) thumbnailCache];
    v16 = [MEMORY[0x1E695DFB0] null];
    [v15 setObject:v16 forKey:*(a1 + 40)];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v10 = [*(a1 + 32) thumbnailCache];
    [v10 setObject:v7 forKey:*(a1 + 40)];

    if ((a3 & 1) == 0)
    {
      v11 = [*(a1 + 32) _previewURLForKey:*(a1 + 40)];
      [*(a1 + 32) _persistPreview:v7 atURL:v11];
    }

    v12 = [*(a1 + 32) _mapMetadataForQueryResult:*(a1 + 48) image:v7];
    (*(*(a1 + 56) + 16))();
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 postNotificationName:@"CKSearchThumbnailDidChange" object:*(a1 + 48)];
  }
}

- (id)_mapMetadataForQueryResult:(id)a3 image:(id)a4
{
  v5 = a4;
  v6 = [a3 item];
  v7 = [v6 attributeSet];

  v8 = [v7 __ck_spotlightItemSnippet];
  v9 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  v10 = objc_alloc_init(MEMORY[0x1E696ECD0]);
  v11 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v5];

  v12 = [v7 latitude];
  [v12 floatValue];
  v14 = v13;

  v15 = [v7 longitude];
  [v15 floatValue];
  v17 = v16;

  v18 = CLLocationCoordinate2DMake(v14, v17);
  [v10 setLocation:{v18.latitude, v18.longitude}];
  [v10 setImage:v11];
  [v10 setName:v8];
  v19 = [v7 thoroughfare];
  [v10 setAddress:v19];

  [v9 setSpecialization:v10];
  [v9 _populateMetadataForBackwardCompatibility];
  v20 = [v7 URL];
  [v9 setOriginalURL:v20];

  return v9;
}

- (id)mapKeyForQueryResult:(id)a3 traitCollection:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = a4;
    v8 = [a3 identifier];
    v9 = [v7 userInterfaceStyle];

    v4 = [v6 stringWithFormat:@"%@-%ld", v8, v9];
  }

  return v4;
}

- (BOOL)hasCachedMapPreviewForQueryResult:(id)a3 traitCollection:(id)a4
{
  v4 = self;
  v5 = [(CKSearchThumbnailPreviewGenerator *)self mapKeyForQueryResult:a3 traitCollection:a4];
  LOBYTE(v4) = [(CKSearchThumbnailPreviewGenerator *)v4 hasCachedPreviewForKey:v5];

  return v4;
}

- (id)cachedMapPreviewForQueryResult:(id)a3 traitCollection:(id)a4
{
  if (a3)
  {
    v5 = [(CKSearchThumbnailPreviewGenerator *)self mapKeyForQueryResult:a3 traitCollection:a4];
    v6 = [(CKSearchThumbnailPreviewGenerator *)self cachedPreviewForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_generateMapThumbnailForKey:(id)a3 attributes:(id)a4 traitCollection:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__40;
  v27[4] = __Block_byref_object_dispose__40;
  v28 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke;
  v24[3] = &unk_1E72F40B0;
  v26 = v27;
  v15 = v14;
  v25 = v15;
  [(CKSearchThumbnailPreviewGenerator *)self _asyncLoadCachedDiskPreviewForKeyIfAvailable:v10 completion:v24];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2;
  block[3] = &unk_1E72F41F0;
  v22 = v13;
  v23 = v27;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v16 = v11;
  v17 = v13;
  v18 = v10;
  dispatch_group_notify(v15, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v27, 8);
}

void __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2(uint64_t a1)
{
  v38[1] = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v2 = [*(a1 + 32) thumbnailCache];
    [v2 setObject:*(*(*(a1 + 64) + 8) + 40) forKey:*(a1 + 40)];

    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }

    return;
  }

  if (sCKSearchThumbnailPreviewGenerator_sharedInstance_block_invoke__pred_CLLocationCoordinate2DIsValidCoreLocation != -1)
  {
    __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2_cold_1();
  }

  if (sCKSearchThumbnailPreviewGenerator_sharedInstance_block_invoke__pred_CLLocationCoordinate2DMakeCoreLocation != -1)
  {
    __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2_cold_2();
  }

  v5 = [*(a1 + 48) latitude];
  [v5 floatValue];
  v7 = v6;

  v8 = [*(a1 + 48) longitude];
  [v8 floatValue];
  v10 = v9;

  v11 = sCKSearchThumbnailPreviewGenerator_sharedInstance_block_invoke__CLLocationCoordinate2DMake(v7, v10);
  v13 = v12;
  if (sCKSearchThumbnailPreviewGenerator_sharedInstance_block_invoke__CLLocationCoordinate2DIsValid())
  {
    v14 = MEMORY[0x193AF5EC0](@"MKMapSnapshotOptions", @"MapKit");
    if (v14)
    {
      v15 = objc_alloc_init(v14);
      [v15 setMapType:0];
      [v15 _setUseSnapshotService:1];
      v16 = MEMORY[0x193AF5EC0](@"MKMapSnapshotFeatureAnnotation", @"MapKit");
      if (v16)
      {
        v17 = [[v16 alloc] initWithCoordinate:0 title:2 representation:{v11, v13}];
        v38[0] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
        [v15 _setCustomFeatureAnnotations:v18];

        v19 = +[CKUIBehavior sharedBehaviors];
        v20 = +[CKUIBehavior sharedBehaviors];
        [v20 searchPhotosThumbnailWidth];
        [v19 mapThumbnailFillSizeForWidth:?];
        v22 = v21;
        v24 = v23;

        if (sCKSearchThumbnailPreviewGenerator_sharedInstance_block_invoke__pred_MKCoordinateRegionMakeWithDistanceMapKit != -1)
        {
          __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2_cold_4();
        }

        sCKSearchThumbnailPreviewGenerator_sharedInstance_block_invoke__MKCoordinateRegionMakeWithDistance(v11, v13, 500.0, 500.0);
        if (fabs(v28) > 180.0 || fabs(v25) > 90.0 || v26 < 0.0 || v26 > 180.0 || v27 < 0.0 || v27 > 360.0)
        {
          v34 = IMLogHandleForCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2_cold_5();
          }
        }

        else
        {
          [v15 setRegion:?];
          [v15 setSize:{v22, v24}];
          v29 = MEMORY[0x193AF5EC0](@"MKMapSnapshotter", @"MapKit");
          if (v29)
          {
            v30 = [[v29 alloc] initWithOptions:v15];
            v31 = +[CKPreviewDispatchCache mapThumbnailQueue];
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v36[2] = __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_270;
            v36[3] = &unk_1E72F41C8;
            v37 = *(a1 + 56);
            [v30 startWithQueue:v31 completionHandler:v36];

LABEL_35:
            return;
          }

          v34 = IMLogHandleForCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2_cold_6();
          }
        }
      }

      else
      {
        v34 = IMLogHandleForCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2_cold_7();
        }
      }

      v35 = *(a1 + 56);
      if (v35)
      {
        (*(v35 + 16))(v35, 0, 0, 0);
      }

      goto LABEL_35;
    }

    v32 = IMLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2_cold_8();
    }
  }

  else
  {
    v32 = IMLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2_cold_3();
    }
  }

  v33 = *(a1 + 56);
  if (v33)
  {
    (*(v33 + 16))(v33, 0, 0, 0);
  }
}

void *__103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_3()
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DIsValid", @"CoreLocation");
  sCKSearchThumbnailPreviewGenerator_sharedInstance_block_invoke__CLLocationCoordinate2DIsValid = result;
  return result;
}

void *__103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_4()
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DMake", @"CoreLocation");
  sCKSearchThumbnailPreviewGenerator_sharedInstance_block_invoke__CLLocationCoordinate2DMake = result;
  return result;
}

void *__103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_262()
{
  result = MEMORY[0x193AF5ED0]("MKCoordinateRegionMakeWithDistance", @"MapKit");
  sCKSearchThumbnailPreviewGenerator_sharedInstance_block_invoke__MKCoordinateRegionMakeWithDistance = result;
  return result;
}

void __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_270(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2_271;
  block[3] = &unk_1E72F21A8;
  v11 = v5;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2_271(uint64_t a1)
{
  v2 = [*(a1 + 32) image];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = v2;
    (*(v3 + 16))();
    v2 = v4;
  }
}

- (id)mapPlaceholderImageForTraitCollection:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hash-%ld", objc_msgSend(v4, "userInterfaceStyle")];
  v6 = [(CKSearchThumbnailPreviewGenerator *)self mapHashesCache];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v8 = [(CKSearchThumbnailPreviewGenerator *)self mapHashesCache];
    v9 = [v8 objectForKey:v5];
  }

  else
  {
    v10 = [(CKSearchThumbnailPreviewGenerator *)self _previewURLForKey:v5];
    if (v10 && (v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v10 options:1 error:0]) != 0 && (v12 = v11, objc_msgSend(MEMORY[0x1E69DCAB8], "ckImageWithData:", v11), v9 = objc_claimAutoreleasedReturnValue(), v12, v9))
    {
      v13 = [(CKSearchThumbnailPreviewGenerator *)self mapHashesCache];
      [v13 setObject:v9 forKey:v5];
    }

    else
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__40;
      v39 = __Block_byref_object_dispose__40;
      v40 = 0;
      v14 = MEMORY[0x193AF5EC0](@"MKMapSnapshotOptions", @"MapKit");
      if (v14)
      {
        v15 = objc_alloc_init(v14);
        [v15 setMapType:105];
        [v15 setTraitCollection:v4];
        v16 = +[CKUIBehavior sharedBehaviors];
        v17 = +[CKUIBehavior sharedBehaviors];
        [v17 searchPhotosThumbnailWidth];
        [v16 mapThumbnailFillSizeForWidth:?];
        v19 = v18;
        v21 = v20;

        [v15 setSize:v19, v21];
        v22 = MEMORY[0x193AF5EC0](@"MKMapSnapshotter", @"MapKit");
        if (v22)
        {
          v23 = [[v22 alloc] initWithOptions:v15];
          v24 = dispatch_group_create();
          dispatch_group_enter(v24);
          v25 = +[CKPreviewDispatchCache mapThumbnailQueue];
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __75__CKSearchThumbnailPreviewGenerator_mapPlaceholderImageForTraitCollection___block_invoke;
          v32[3] = &unk_1E72EBCB0;
          v34 = &v35;
          v26 = v24;
          v33 = v26;
          [v23 startWithQueue:v25 completionHandler:v32];

          v27 = dispatch_time(0, 5000000000);
          if (dispatch_group_wait(v26, v27))
          {
            if (IMOSLoggingEnabled())
            {
              CKLogCStringForType(2);
              v28 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v42 = self;
                _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "%@ thumbnail generation timed out.", buf, 0xCu);
              }
            }

            if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
            {
              _CKLogExternal();
            }
          }

          v29 = v36[5];
          if (v29)
          {
            v30 = [(CKSearchThumbnailPreviewGenerator *)self mapHashesCache];
            [v30 setObject:v36[5] forKey:v5];

            [(CKSearchThumbnailPreviewGenerator *)self _persistPreview:v36[5] atURL:v10];
            v29 = v36[5];
          }

          v9 = v29;
        }

        else
        {
          v23 = IMLogHandleForCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2_cold_6();
          }

          v9 = 0;
        }
      }

      else
      {
        v15 = IMLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2_cold_8();
        }

        v9 = 0;
      }

      _Block_object_dispose(&v35, 8);
    }
  }

  return v9;
}

void __75__CKSearchThumbnailPreviewGenerator_mapPlaceholderImageForTraitCollection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __75__CKSearchThumbnailPreviewGenerator_mapPlaceholderImageForTraitCollection___block_invoke_cold_1();
    }
  }

  v8 = [v5 image];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  dispatch_group_leave(*(a1 + 32));
}

- (void)_persistPreview:(id)a3 atURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__CKSearchThumbnailPreviewGenerator__persistPreview_atURL___block_invoke;
    v10[3] = &unk_1E72EB8D0;
    v11 = v5;
    v12 = v7;
    dispatch_async(v8, v10);

    v9 = v11;
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CKSearchThumbnailPreviewGenerator _persistPreview:atURL:];
    }
  }
}

void __59__CKSearchThumbnailPreviewGenerator__persistPreview_atURL___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = UIImagePNGRepresentation(*(a1 + 32));
  v3 = v2;
  if (v2)
  {
    v5 = *(a1 + 40);
    v4 = (a1 + 40);
    v12 = 0;
    v6 = [v2 writeToURL:v5 options:1 error:&v12];
    v7 = v12;
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = *v4;
          *buf = 138412290;
          v14 = v10;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Persisted preview to URL OK: %@", buf, 0xCu);
        }
      }

      v11 = [*v4 path];
      [v11 im_markFileAsPurgeable:1];
    }

    else
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __59__CKSearchThumbnailPreviewGenerator__persistPreview_atURL___block_invoke_cold_1(v4, v7);
      }
    }
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__CKSearchThumbnailPreviewGenerator__persistPreview_atURL___block_invoke_cold_2();
    }
  }
}

- (void)_fetchLinkMetadataForQueryResult:(id)a3 postNotification:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    if ([(CKSearchThumbnailPreviewGenerator *)self hasCachedLinkMetadataForQueryResult:v8])
    {
      v10 = [(CKSearchThumbnailPreviewGenerator *)self cachedLinkMetadataForQueryResult:v8];
      v9[2](v9, v10);
LABEL_16:

      goto LABEL_17;
    }

    v12 = [v8 item];
    v10 = [v12 uniqueIdentifier];

    v13 = [v8 identifier];
    if (v13 && v10)
    {
      v14 = [(CKSearchThumbnailPreviewGenerator *)self keysWithInFlightLPLinkMetadataGeneration];
      v15 = [v14 containsObject:v13];

      if (!v15)
      {
        v16 = [(CKSearchThumbnailPreviewGenerator *)self keysWithInFlightLPLinkMetadataGeneration];
        [v16 addObject:v13];

        v17 = [MEMORY[0x1E69A5AE8] sharedInstance];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __98__CKSearchThumbnailPreviewGenerator__fetchLinkMetadataForQueryResult_postNotification_completion___block_invoke;
        v19[3] = &unk_1E72F4260;
        v19[4] = self;
        v20 = v8;
        v21 = v10;
        v22 = v13;
        v24 = a4;
        v23 = v9;
        [v17 loadMessageItemWithGUID:v21 completionBlock:v19];

LABEL_15:
        goto LABEL_16;
      }
    }

    else
    {
      v18 = IMLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CKSearchThumbnailPreviewGenerator _fetchLinkMetadataForQueryResult:postNotification:completion:];
      }
    }

    v9[2](v9, 0);
    goto LABEL_15;
  }

  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [CKSearchThumbnailPreviewGenerator _fetchLinkMetadataForQueryResult:postNotification:completion:];
  }

  v9[2](v9, 0);
LABEL_17:
}

void __98__CKSearchThumbnailPreviewGenerator__fetchLinkMetadataForQueryResult_postNotification_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _lpPreviewLoadQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__CKSearchThumbnailPreviewGenerator__fetchLinkMetadataForQueryResult_postNotification_completion___block_invoke_2;
  block[3] = &unk_1E72F4238;
  v9 = *(a1 + 40);
  v10 = v3;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 56);
  v15 = *(a1 + 72);
  v14 = *(a1 + 64);
  v7 = v3;
  dispatch_async(v4, block);
}

void __98__CKSearchThumbnailPreviewGenerator__fetchLinkMetadataForQueryResult_postNotification_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) item];
  v3 = [v2 attributeSet];
  v4 = [v3 attributeDictionary];

  v5 = [v4 objectForKey:@"com_apple_mobilesms_lpPluginPaths"];
  if (*(a1 + 40))
  {
    v6 = [MEMORY[0x1E69A5AD0] sharedInstance];
    v7 = [v6 dataSourceClassForBundleID:*MEMORY[0x1E69A6A18]];

    v8 = [objc_alloc(MEMORY[0x1E69A5C48]) initWithMessageItem:*(a1 + 40)];
    v9 = v8;
    if (v5)
    {
      [v8 addAttachmentsFromFilePaths:v5];
    }

    v10 = [[v7 alloc] initWithPluginPayload:v9];
    if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v11 = [v10 richLinkMetadata];
    }

    else
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __98__CKSearchThumbnailPreviewGenerator__fetchLinkMetadataForQueryResult_postNotification_completion___block_invoke_2_cold_1(v7, a1, v12);
      }

      v11 = 0;
    }

    [*(a1 + 56) _prewarmLinkMetadata:v11];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__CKSearchThumbnailPreviewGenerator__fetchLinkMetadataForQueryResult_postNotification_completion___block_invoke_296;
    block[3] = &unk_1E72F3DA0;
    v13 = *(a1 + 64);
    block[4] = *(a1 + 56);
    v22 = v13;
    v23 = v11;
    v26 = *(a1 + 80);
    v24 = *(a1 + 32);
    v25 = *(a1 + 72);
    v14 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __98__CKSearchThumbnailPreviewGenerator__fetchLinkMetadataForQueryResult_postNotification_completion___block_invoke_2_297;
    v16[3] = &unk_1E72F27E0;
    v15 = *(a1 + 64);
    v16[4] = *(a1 + 56);
    v17 = v15;
    v20 = *(a1 + 80);
    v18 = *(a1 + 32);
    v19 = *(a1 + 72);
    dispatch_async(MEMORY[0x1E69E96A0], v16);
  }
}

uint64_t __98__CKSearchThumbnailPreviewGenerator__fetchLinkMetadataForQueryResult_postNotification_completion___block_invoke_296(uint64_t a1)
{
  v2 = [*(a1 + 32) keysWithInFlightLPLinkMetadataGeneration];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) lpLinkMetadataCache];
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5)
  {
    [v3 setObject:v5 forKey:*(a1 + 40)];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFB0] null];
    [v4 setObject:v6 forKey:*(a1 + 40)];
  }

  if (*(a1 + 72) == 1)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"CKSearchLPLinkMetadataDidChange" object:*(a1 + 56)];
  }

  v8 = *(*(a1 + 64) + 16);

  return v8();
}

uint64_t __98__CKSearchThumbnailPreviewGenerator__fetchLinkMetadataForQueryResult_postNotification_completion___block_invoke_2_297(uint64_t a1)
{
  v2 = [*(a1 + 32) keysWithInFlightLPLinkMetadataGeneration];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) lpLinkMetadataCache];
  v4 = [MEMORY[0x1E695DFB0] null];
  [v3 setObject:v4 forKey:*(a1 + 40)];

  if (*(a1 + 64) == 1)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"CKSearchLPLinkMetadataDidChange" object:*(a1 + 48)];
  }

  v6 = *(*(a1 + 56) + 16);

  return v6();
}

- (BOOL)hasCachedLinkMetadataForQueryResult:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 identifier];
  v5 = [(CKSearchThumbnailPreviewGenerator *)self lpLinkMetadataCache];
  v6 = [v5 objectForKey:v4];
  v7 = v6 != 0;

  return v7;
}

- (id)cachedLinkMetadataForQueryResult:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v6 = [v4 identifier];
  v7 = [(CKSearchThumbnailPreviewGenerator *)self lpLinkMetadataCache];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = v8;
      goto LABEL_11;
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Returning nil cached link metadata. Previous attempt at generating metadata failed for search result: %@", &v12, 0xCu);
      }
    }
  }

  v10 = 0;
LABEL_11:

LABEL_12:

  return v10;
}

- (void)_prewarmLinkMetadata:(id)a3
{
  v9 = a3;
  if (objc_opt_respondsToSelector())
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    v4 = [v3 isAccessibilityPreferredContentSizeCategory];

    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 searchLinksThumbnailWidth];
    v7 = v6;

    v8 = 0.85;
    if (v4)
    {
      v8 = 1.2;
    }

    [v9 _decodeAllImagesWithMaximumSize:{v7, v8 * v7}];
  }
}

- (void)_generateWebLinkPresentationPropertiesForQueryResult:(id)a3 postNofication:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = [v8 item];
    v11 = [v10 attributeSet];
    v12 = [v11 contentURL];

    v13 = [v8 identifier];
    if (v13 && v12)
    {
      if ([(CKSearchThumbnailPreviewGenerator *)self hasCachedWalletItemLinkPropertiesForQueryResult:v8])
      {
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Request to generate webLinkPresentation properties but we already have a cached value. Doing nothing.", buf, 2u);
          }
        }

        v15 = [(CKSearchThumbnailPreviewGenerator *)self lpWalletItemPropertiesMetadataCache];
        v16 = [v15 objectForKey:v13];

        v9[2](v9, v16);
      }

      else
      {
        v19 = [(CKSearchThumbnailPreviewGenerator *)self keysWithInFlightLPWalletItemPropertiesMetadataGeneration];
        v20 = [v19 containsObject:v13];

        if ((v20 & 1) == 0)
        {
          v21 = [(CKSearchThumbnailPreviewGenerator *)self keysWithInFlightLPWalletItemPropertiesMetadataGeneration];
          [v21 addObject:v13];

          v22 = [(CKSearchThumbnailPreviewGenerator *)self _lpWalletItemLinkPreviewLoadQueue];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __116__CKSearchThumbnailPreviewGenerator__generateWebLinkPresentationPropertiesForQueryResult_postNofication_completion___block_invoke;
          v23[3] = &unk_1E72F3DA0;
          v24 = v12;
          v25 = self;
          v26 = v13;
          v29 = a4;
          v27 = v8;
          v28 = v9;
          dispatch_async(v22, v23);
        }
      }
    }

    else
    {
      v18 = IMLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CKSearchThumbnailPreviewGenerator _generateWebLinkPresentationPropertiesForQueryResult:postNofication:completion:];
      }

      v9[2](v9, 0);
    }
  }

  else
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CKSearchThumbnailPreviewGenerator _fetchLinkMetadataForQueryResult:postNotification:completion:];
    }

    v9[2](v9, 0);
  }
}

void __116__CKSearchThumbnailPreviewGenerator__generateWebLinkPresentationPropertiesForQueryResult_postNofication_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pathExtension];
  v3 = [v2 isEqualToString:@"order"];

  if (v3)
  {
    v4 = [[CKOrderMediaObject alloc] _initWithOverrideFileURL:*(a1 + 32)];
    v5 = [v4 previewMetadataFilenameExtension];
    v6 = IMAttachmentPreviewMetadataFileURL();

    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [v6 path];
    v9 = [v7 fileExistsAtPath:v8];

    if (!v9 || ([v4 previewMetadataWithContentsOfURL:v6 error:0], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v10 = [v4 generatePreviewMetadata];
      [v4 writePreviewMetadata:v10 toURL:v6 error:0];
    }

    [v4 setOverrideMetadataProperties:v10];
    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 previewMaxWidth];
    v12 = [v4 presentationPropertiesForWidth:0 orientation:?];

    if (v12)
    {
      v13 = [v12 image];

      if (!v13)
      {
        v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"shippingbox.fill"];
        v15 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v14];
        [v12 setImage:v15];

        v16 = objc_alloc_init(MEMORY[0x1E696EC70]);
        v17 = [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
        [v16 setBackgroundColor:v17];

        [v12 setImageProperties:v16];
      }
    }

    v18 = v28;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v19 = __116__CKSearchThumbnailPreviewGenerator__generateWebLinkPresentationPropertiesForQueryResult_postNofication_completion___block_invoke_2;
  }

  else
  {
    v4 = [[CKPassPreviewMediaObject alloc] _initWithOverrideFileURL:*(a1 + 32)];
    v20 = [v4 previewMetadataFilenameExtension];
    v6 = IMAttachmentPreviewMetadataFileURL();

    v21 = [MEMORY[0x1E696AC08] defaultManager];
    v22 = [v6 path];
    v23 = [v21 fileExistsAtPath:v22];

    if (!v23 || ([v4 previewMetadataWithContentsOfURL:v6 error:0], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v10 = [v4 generatePreviewMetadata];
      [v4 writePreviewMetadata:v10 toURL:v6 error:0];
    }

    [v4 setOverrideMetadataProperties:v10];
    v24 = +[CKUIBehavior sharedBehaviors];
    [v24 previewMaxWidth];
    v12 = [v4 presentationPropertiesForWidth:0 orientation:?];

    v18 = v27;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v19 = __116__CKSearchThumbnailPreviewGenerator__generateWebLinkPresentationPropertiesForQueryResult_postNofication_completion___block_invoke_3;
  }

  v18[2] = v19;
  v18[3] = &unk_1E72F3DA0;
  v25 = *(a1 + 48);
  v18[4] = *(a1 + 40);
  v18[5] = v12;
  v18[6] = v25;
  *(v18 + 72) = *(a1 + 72);
  v18[7] = *(a1 + 56);
  v18[8] = *(a1 + 64);
  v26 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], v18);
}

uint64_t __116__CKSearchThumbnailPreviewGenerator__generateWebLinkPresentationPropertiesForQueryResult_postNofication_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) lpWalletItemPropertiesMetadataCache];
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4)
  {
    [v2 setObject:v4 forKey:*(a1 + 48)];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    [v3 setObject:v5 forKey:*(a1 + 48)];
  }

  v6 = [*(a1 + 32) keysWithInFlightLPWalletItemPropertiesMetadataGeneration];
  [v6 removeObject:*(a1 + 48)];

  if (*(a1 + 72) == 1)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"CKSearchLPWalletItemMetadataDidChange" object:*(a1 + 56)];
  }

  v8 = *(*(a1 + 64) + 16);

  return v8();
}

uint64_t __116__CKSearchThumbnailPreviewGenerator__generateWebLinkPresentationPropertiesForQueryResult_postNofication_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) lpWalletItemPropertiesMetadataCache];
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4)
  {
    [v2 setObject:v4 forKey:*(a1 + 48)];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    [v3 setObject:v5 forKey:*(a1 + 48)];
  }

  v6 = [*(a1 + 32) keysWithInFlightLPWalletItemPropertiesMetadataGeneration];
  [v6 removeObject:*(a1 + 48)];

  if (*(a1 + 72) == 1)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"CKSearchLPWalletItemMetadataDidChange" object:*(a1 + 56)];
  }

  v8 = *(*(a1 + 64) + 16);

  return v8();
}

- (BOOL)hasCachedWalletItemLinkPropertiesForQueryResult:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 identifier];
  v5 = [(CKSearchThumbnailPreviewGenerator *)self lpWalletItemPropertiesMetadataCache];
  v6 = [v5 objectForKey:v4];
  v7 = v6 != 0;

  return v7;
}

- (id)cachedWalletItemLinkPropertiesForQueryResult:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v6 = [v4 identifier];
  v7 = [(CKSearchThumbnailPreviewGenerator *)self lpWalletItemPropertiesMetadataCache];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = v8;
      goto LABEL_11;
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Returning nil web link presentation properties. Previous attempt at generating this failed for search result: %@", &v12, 0xCu);
      }
    }
  }

  v10 = 0;
LABEL_11:

LABEL_12:

  return v10;
}

- (void)_generatePreviewForQueryResult:postNotification:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __96__CKSearchThumbnailPreviewGenerator__generatePreviewForQueryResult_postNotification_completion___block_invoke_cold_1()
{
  v2 = 138412546;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19020E000, v0, v1, "Failed to create preview thumbnail URL (preview NOT persisted) for key: %@, URL: %@", v2);
}

void __96__CKSearchThumbnailPreviewGenerator__generatePreviewForQueryResult_postNotification_completion___block_invoke_201_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 64) localizedDescription];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8_1(&dword_19020E000, v2, v3, "Failed to generate preview for attachment at URL, generating icon. URL: %@, error: %@", v4, v5, v6, v7, 2u);
}

void __96__CKSearchThumbnailPreviewGenerator__generatePreviewForQueryResult_postNotification_completion___block_invoke_201_cold_2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)queryResultHasLivePhoto:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_checkResultForLivePhotoComplement:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)queryResultIsSpatial:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_checkResultForSpatialMedia:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)queryResultIsVideo:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)durationForVideoResult:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_calculateDurationForVideoResult:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __93__CKSearchThumbnailPreviewGenerator_generateAndCacheThumbnailWithURL_request_key_completion___block_invoke_6_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __80__CKSearchThumbnailPreviewGenerator_generateAndCacheIconWithURL_key_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __80__CKSearchThumbnailPreviewGenerator_generateAndCacheIconWithURL_key_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __83__CKSearchThumbnailPreviewGenerator_generateAndCachePassWithURL_forKey_completion___block_invoke_230_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_asyncLoadCachedDiskPreviewForKeyIfAvailable:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __93__CKSearchThumbnailPreviewGenerator__asyncLoadCachedDiskPreviewForKeyIfAvailable_completion___block_invoke_cold_1()
{
  v2 = 138412546;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19020E000, v0, v1, "Failed to create preview image from image source data for key: %@, url: %@", v2);
}

- (void)generateMapPreviewForQueryResult:traitCollection:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __86__CKSearchThumbnailPreviewGenerator_generateMapPreviewForQueryResult_traitCollection___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2_cold_5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2_cold_6()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2_cold_7()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __103__CKSearchThumbnailPreviewGenerator__generateMapThumbnailForKey_attributes_traitCollection_completion___block_invoke_2_cold_8()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __75__CKSearchThumbnailPreviewGenerator_mapPlaceholderImageForTraitCollection___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __59__CKSearchThumbnailPreviewGenerator__persistPreview_atURL___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8_1(&dword_19020E000, v3, v4, "Failed to persist preview data to disk for URL: %@, with error: %@", v5, v6, v7, v8, 2u);
}

void __59__CKSearchThumbnailPreviewGenerator__persistPreview_atURL___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_fetchLinkMetadataForQueryResult:postNotification:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2(&dword_19020E000, v0, v1, "Failed load key or guid for link meta data - key: %@, guid: %@");
}

- (void)_fetchLinkMetadataForQueryResult:postNotification:completion:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __98__CKSearchThumbnailPreviewGenerator__fetchLinkMetadataForQueryResult_postNotification_completion___block_invoke_2_cold_1(Class aClass, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  if (aClass)
  {
    v6 = NSStringFromClass(aClass);
  }

  else
  {
    v6 = @"NULL";
  }

  v7 = *(a2 + 48);
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "Rich links data source of type %@ did not provide linkMetaData for guid: %@", &v8, 0x16u);
  if (aClass)
  {
  }
}

- (void)_generateWebLinkPresentationPropertiesForQueryResult:postNofication:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2(&dword_19020E000, v0, v1, "Failed load key or contentURL for link meta data - key: %@, guid: %@");
}

@end