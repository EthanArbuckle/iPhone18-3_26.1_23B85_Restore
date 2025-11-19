@interface CKPreviewDispatchCache
+ (CKPreviewDispatchCache)detailsPreviewCache;
+ (CKPreviewDispatchCache)genmojiPreviewCache;
+ (CKPreviewDispatchCache)iconPreviewCache;
+ (CKPreviewDispatchCache)snapshotCache;
+ (CKPreviewDispatchCache)stickerPreviewCache;
+ (CKPreviewDispatchCache)transcriptPreviewCache;
+ (id)mapThumbnailQueue;
+ (id)previewPrewarmQueue;
+ (int64_t)defaultPreviewPriority;
+ (void)_invalidateStickerPreviewCache;
- (BOOL)isGeneratingPreviewForKey:(id)a3;
- (BOOL)shouldReplaceCachedPreview:(id)a3 withPreview:(id)a4;
- (CKPreviewDispatchCache)init;
- (CKPreviewDispatchCache)initWithCacheLimit:(unint64_t)a3 dispatchPriority:(int64_t)a4;
- (id)cachedPreviewForKey:(id)a3;
- (void)beginGeneratingForKey:(id)a3;
- (void)clearQueueAndCachedPreviews;
- (void)dealloc;
- (void)endGeneratingForKey:(id)a3;
- (void)enqueueGenerationBlock:(id)a3 completion:(id)a4 withPriority:(int64_t)a5 forKey:(id)a6;
- (void)enqueueSaveBlock:(id)a3 forMediaObject:(id)a4 withPriority:(int64_t)a5;
- (void)enqueueSaveBlock:(id)a3 withPriority:(int64_t)a4;
- (void)flush;
- (void)resume;
- (void)setCachedPreview:(id)a3 key:(id)a4;
- (void)suspend;
- (void)transferFinished:(id)a3;
- (void)transferRemoved:(id)a3;
@end

@implementation CKPreviewDispatchCache

+ (CKPreviewDispatchCache)genmojiPreviewCache
{
  if (genmojiPreviewCache_once != -1)
  {
    +[CKPreviewDispatchCache genmojiPreviewCache];
  }

  v3 = genmojiPreviewCache_sSnapshotDispatchCache;

  return v3;
}

void __45__CKPreviewDispatchCache_genmojiPreviewCache__block_invoke()
{
  v0 = [[CKPreviewDispatchCache alloc] initWithCacheLimit:0 dispatchPriority:2];
  v1 = genmojiPreviewCache_sSnapshotDispatchCache;
  genmojiPreviewCache_sSnapshotDispatchCache = v0;
}

- (void)resume
{
  v2 = [(CKPreviewDispatchCache *)self dispatchCache];
  [v2 resume];
}

+ (CKPreviewDispatchCache)transcriptPreviewCache
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CKPreviewDispatchCache_transcriptPreviewCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (transcriptPreviewCache_once != -1)
  {
    dispatch_once(&transcriptPreviewCache_once, block);
  }

  v2 = transcriptPreviewCache_sPreviewDispatchCache;

  return v2;
}

void __48__CKPreviewDispatchCache_transcriptPreviewCache__block_invoke(uint64_t a1)
{
  v1 = -[CKPreviewDispatchCache initWithCacheLimit:dispatchPriority:]([CKPreviewDispatchCache alloc], "initWithCacheLimit:dispatchPriority:", 0, [*(a1 + 32) defaultPreviewPriority]);
  v2 = transcriptPreviewCache_sPreviewDispatchCache;
  transcriptPreviewCache_sPreviewDispatchCache = v1;
}

+ (CKPreviewDispatchCache)iconPreviewCache
{
  if (iconPreviewCache_onceToken != -1)
  {
    +[CKPreviewDispatchCache(CKMediaObject_Icon) iconPreviewCache];
  }

  v3 = iconPreviewCache_cache;

  return v3;
}

uint64_t __62__CKPreviewDispatchCache_CKMediaObject_Icon__iconPreviewCache__block_invoke()
{
  v0 = [[CKPreviewDispatchCache alloc] initWithCacheLimit:0 dispatchPriority:+[CKPreviewDispatchCache defaultPreviewPriority]];
  v1 = iconPreviewCache_cache;
  iconPreviewCache_cache = v0;

  v2 = iconPreviewCache_cache;

  return [v2 resume];
}

+ (CKPreviewDispatchCache)detailsPreviewCache
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CKPreviewDispatchCache_detailsPreviewCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (detailsPreviewCache_once != -1)
  {
    dispatch_once(&detailsPreviewCache_once, block);
  }

  v2 = detailsPreviewCache_sDetailsDispatchCache;

  return v2;
}

void __45__CKPreviewDispatchCache_detailsPreviewCache__block_invoke(uint64_t a1)
{
  v1 = -[CKPreviewDispatchCache initWithCacheLimit:dispatchPriority:]([CKPreviewDispatchCache alloc], "initWithCacheLimit:dispatchPriority:", 250, [*(a1 + 32) defaultPreviewPriority]);
  v2 = detailsPreviewCache_sDetailsDispatchCache;
  detailsPreviewCache_sDetailsDispatchCache = v1;
}

+ (CKPreviewDispatchCache)snapshotCache
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CKPreviewDispatchCache_snapshotCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (snapshotCache_once != -1)
  {
    dispatch_once(&snapshotCache_once, block);
  }

  v2 = snapshotCache_sSnapshotDispatchCache;

  return v2;
}

void __39__CKPreviewDispatchCache_snapshotCache__block_invoke(uint64_t a1)
{
  v1 = -[CKPreviewDispatchCache initWithCacheLimit:dispatchPriority:]([CKPreviewDispatchCache alloc], "initWithCacheLimit:dispatchPriority:", 0, [*(a1 + 32) defaultPreviewPriority]);
  v2 = snapshotCache_sSnapshotDispatchCache;
  snapshotCache_sSnapshotDispatchCache = v1;
}

+ (CKPreviewDispatchCache)stickerPreviewCache
{
  v3 = sStickerPreviewCache;
  if (!sStickerPreviewCache)
  {
    v4 = -[CKPreviewDispatchCache initWithCacheLimit:dispatchPriority:]([CKPreviewDispatchCache alloc], "initWithCacheLimit:dispatchPriority:", 0, [a1 defaultPreviewPriority]);
    v5 = sStickerPreviewCache;
    sStickerPreviewCache = v4;

    [sStickerPreviewCache resume];
    v3 = sStickerPreviewCache;
  }

  return v3;
}

+ (void)_invalidateStickerPreviewCache
{
  v2 = sStickerPreviewCache;
  sStickerPreviewCache = 0;
}

+ (int64_t)defaultPreviewPriority
{
  if (IMIsRunningInMessagesUIProcess())
  {
    return 0;
  }

  else
  {
    return -32768;
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E69A6160] sharedInstance];
  [v3 removeListener:self];

  v4 = [(CKPreviewDispatchCache *)self notificationCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = CKPreviewDispatchCache;
  [(CKPreviewDispatchCache *)&v5 dealloc];
}

- (CKPreviewDispatchCache)initWithCacheLimit:(unint64_t)a3 dispatchPriority:(int64_t)a4
{
  v12.receiver = self;
  v12.super_class = CKPreviewDispatchCache;
  v6 = [(CKPreviewDispatchCache *)&v12 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E69A6160] sharedInstance];
    [v7 addListener:v6];

    v8 = [(CKPreviewDispatchCache *)v6 notificationCenter];
    [v8 addObserver:v6 selector:sel_didReceiveMemoryWarning name:*MEMORY[0x1E69DDAD8] object:0];

    v9 = [[CKDispatchCache alloc] initWithCacheLimit:a3 dispatchPriority:a4];
    [(CKPreviewDispatchCache *)v6 setDispatchCache:v9];
    v10 = objc_alloc_init(CKMultiDict);
    [(CKPreviewDispatchCache *)v6 setPendingBlocks:v10];
  }

  return v6;
}

- (CKPreviewDispatchCache)init
{
  v3 = CKDefaultCacheLimit();
  v4 = [objc_opt_class() defaultPreviewPriority];

  return [(CKPreviewDispatchCache *)self initWithCacheLimit:v3 dispatchPriority:v4];
}

- (void)enqueueSaveBlock:(id)a3 withPriority:(int64_t)a4
{
  v6 = a3;
  v7 = [(CKPreviewDispatchCache *)self dispatchCache];
  [v7 enqueueBlock:v6 withPriority:a4];
}

- (void)enqueueGenerationBlock:(id)a3 completion:(id)a4 withPriority:(int64_t)a5 forKey:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(CKPreviewDispatchCache *)self dispatchCache];
  [v13 enqueueGenerationBlock:v12 completion:v11 withPriority:a5 forKey:v10];
}

- (id)cachedPreviewForKey:(id)a3
{
  v4 = a3;
  v5 = [(CKPreviewDispatchCache *)self dispatchCache];
  v6 = [v5 cachedObjectForKey:v4];

  return v6;
}

- (void)setCachedPreview:(id)a3 key:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(CKPreviewDispatchCache *)self cachedPreviewForKey:v6];
  if ([(CKPreviewDispatchCache *)self shouldReplaceCachedPreview:v7 withPreview:v9])
  {
    v8 = [(CKPreviewDispatchCache *)self dispatchCache];
    [v8 setCachedObject:v9 forKey:v6];
  }
}

- (BOOL)isGeneratingPreviewForKey:(id)a3
{
  v4 = a3;
  v5 = [(CKPreviewDispatchCache *)self dispatchCache];
  v6 = [v5 isGeneratingForKey:v4];

  return v6;
}

- (void)beginGeneratingForKey:(id)a3
{
  v4 = a3;
  v5 = [(CKPreviewDispatchCache *)self dispatchCache];
  [v5 beginGeneratingForKey:v4];
}

- (void)endGeneratingForKey:(id)a3
{
  v4 = a3;
  v5 = [(CKPreviewDispatchCache *)self dispatchCache];
  [v5 endGeneratingForKey:v4];
}

- (void)suspend
{
  v2 = [(CKPreviewDispatchCache *)self dispatchCache];
  [v2 suspend];
}

- (void)flush
{
  v3 = [(CKPreviewDispatchCache *)self dispatchCache];
  [v3 clearQueue];

  v4 = [(CKPreviewDispatchCache *)self pendingBlocks];
  [v4 removeAllObjects];

  v5 = [(CKPreviewDispatchCache *)self notificationCenter];
  [v5 removeObserver:self name:@"CKFileTransferFinishedNotification" object:0];
  [v5 removeObserver:self name:@"CKFileTransferRemovedNotification" object:0];
}

- (void)transferFinished:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v5;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_DEBUG, "Transfer %@ finished. Execute its pending operations.", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      v13 = v5;
      _CKLog();
    }

    v7 = [v5 guid];
    v8 = [(CKPreviewDispatchCache *)self pendingBlocks];
    v9 = [v8 popObjectForKey:v7];

    if (v9)
    {
      do
      {
        v9[2](v9);
        v10 = [(CKPreviewDispatchCache *)self pendingBlocks];
        v11 = [v10 popObjectForKey:v7];

        v9 = v11;
      }

      while (v11);
    }

    v12 = [(CKPreviewDispatchCache *)self notificationCenter];
    [v12 removeObserver:self name:@"CKFileTransferFinishedNotification" object:0];
    [v12 removeObserver:self name:@"CKFileTransferRemovedNotification" object:0];
  }
}

- (void)transferRemoved:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_DEBUG, "Transfer %@ removed. Dump its pending operations.", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      v10 = v5;
      _CKLog();
    }

    v7 = [v5 guid];
    v8 = [(CKPreviewDispatchCache *)self pendingBlocks];
    [v8 removeObjectsForKey:v7];

    v9 = [(CKPreviewDispatchCache *)self notificationCenter];
    [v9 removeObserver:self name:@"CKFileTransferFinishedNotification" object:0];
    [v9 removeObserver:self name:@"CKFileTransferRemovedNotification" object:0];
  }
}

- (BOOL)shouldReplaceCachedPreview:(id)a3 withPreview:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

- (void)clearQueueAndCachedPreviews
{
  [(CKPreviewDispatchCache *)self flush];
  v3 = [(CKPreviewDispatchCache *)self dispatchCache];
  [v3 emptyCache];
}

- (void)enqueueSaveBlock:(id)a3 forMediaObject:(id)a4 withPriority:(int64_t)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (CKIsRunningInFullCKClient() || CKIsRunningUnitTests())
  {
    v10 = [(CKPreviewDispatchCache *)self dispatchCache];
    v11 = [v9 transfer];
    v12 = [v11 isFileURLFinalized];

    v13 = IMOSLoggingEnabled();
    if (v12)
    {
      if (v13)
      {
        CKLogCStringForType(2);
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v26 = v9;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_DEBUG, "%@ save preview.", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        _CKLog();
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __94__CKPreviewDispatchCache_CKMediaObject_Display__enqueueSaveBlock_forMediaObject_withPriority___block_invoke;
      v22[3] = &unk_1E72EE5D8;
      v24 = v8;
      v23 = v9;
      [v10 enqueueBlock:v22 withPriority:a5];

      v15 = &v24;
    }

    else
    {
      if (v13)
      {
        CKLogCStringForType(2);
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v26 = v9;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_DEBUG, "%@ transfer fileURL isn't finalized so defer saving preview.", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        _CKLog();
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __94__CKPreviewDispatchCache_CKMediaObject_Display__enqueueSaveBlock_forMediaObject_withPriority___block_invoke_201;
      block[3] = &unk_1E72EE8A0;
      v18[0] = v9;
      v18[1] = self;
      v19 = v10;
      v20 = v8;
      v21 = a5;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v15 = v18;
    }
  }
}

void __94__CKPreviewDispatchCache_CKMediaObject_Display__enqueueSaveBlock_forMediaObject_withPriority___block_invoke_201(uint64_t a1)
{
  v2 = [*(a1 + 32) transferGUID];
  v3 = [*(a1 + 32) transfer];
  v4 = [v3 IMMessage];

  v5 = [*(a1 + 32) messageContext];
  v6 = [v5 chatContext];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __94__CKPreviewDispatchCache_CKMediaObject_Display__enqueueSaveBlock_forMediaObject_withPriority___block_invoke_2;
  v18[3] = &unk_1E72F8100;
  v7 = *(a1 + 48);
  v18[4] = *(a1 + 40);
  v19 = v2;
  v20 = v4;
  v21 = v6;
  v22 = v7;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v23 = v8;
  v24 = v9;
  v10 = v6;
  v11 = v4;
  v12 = v2;
  v13 = [v18 copy];
  v14 = [*(a1 + 40) pendingBlocks];
  v15 = _Block_copy(v13);
  [v14 pushObject:v15 forKey:v12];

  v16 = [*(a1 + 32) transfer];
  v17 = [*(a1 + 40) notificationCenter];
  [v17 addObserver:*(a1 + 40) selector:sel_transferFinished_ name:@"CKFileTransferFinishedNotification" object:v16];
  [v17 addObserver:*(a1 + 40) selector:sel_transferRemoved_ name:@"CKFileTransferRemovedNotification" object:v16];
}

void __94__CKPreviewDispatchCache_CKMediaObject_Display__enqueueSaveBlock_forMediaObject_withPriority___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) mediaObjectManager];
  v3 = [v2 mediaObjectWithTransferGUID:*(a1 + 40) imMessage:*(a1 + 48) chatContext:*(a1 + 56)];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__CKPreviewDispatchCache_CKMediaObject_Display__enqueueSaveBlock_forMediaObject_withPriority___block_invoke_3;
  v8[3] = &unk_1E72EE5D8;
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v9 = v3;
  v10 = v5;
  v6 = *(a1 + 80);
  v7 = v3;
  [v4 enqueueBlock:v8 withPriority:v6];
}

+ (id)previewPrewarmQueue
{
  if (previewPrewarmQueue_once != -1)
  {
    +[CKPreviewDispatchCache(CKMediaObject_Display) previewPrewarmQueue];
  }

  v3 = previewPrewarmQueue_sPreviewPrewarmQueue;

  return v3;
}

void __68__CKPreviewDispatchCache_CKMediaObject_Display__previewPrewarmQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.Messages.CKPreviewDispatchCachePreviewPrewarmQueue", v2);
  v1 = previewPrewarmQueue_sPreviewPrewarmQueue;
  previewPrewarmQueue_sPreviewPrewarmQueue = v0;
}

+ (id)mapThumbnailQueue
{
  if (mapThumbnailQueue_once != -1)
  {
    +[CKPreviewDispatchCache(MKMapSnapshotter) mapThumbnailQueue];
  }

  v3 = mapThumbnailQueue_sMapThumbnailQueue;

  return v3;
}

void __61__CKPreviewDispatchCache_MKMapSnapshotter__mapThumbnailQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.Messages.CKPreviewDispatchCacheMapThumbnailQueue", v2);
  v1 = mapThumbnailQueue_sMapThumbnailQueue;
  mapThumbnailQueue_sMapThumbnailQueue = v0;
}

@end