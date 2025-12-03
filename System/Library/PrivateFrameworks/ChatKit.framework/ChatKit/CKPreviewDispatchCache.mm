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
- (BOOL)isGeneratingPreviewForKey:(id)key;
- (BOOL)shouldReplaceCachedPreview:(id)preview withPreview:(id)withPreview;
- (CKPreviewDispatchCache)init;
- (CKPreviewDispatchCache)initWithCacheLimit:(unint64_t)limit dispatchPriority:(int64_t)priority;
- (id)cachedPreviewForKey:(id)key;
- (void)beginGeneratingForKey:(id)key;
- (void)clearQueueAndCachedPreviews;
- (void)dealloc;
- (void)endGeneratingForKey:(id)key;
- (void)enqueueGenerationBlock:(id)block completion:(id)completion withPriority:(int64_t)priority forKey:(id)key;
- (void)enqueueSaveBlock:(id)block forMediaObject:(id)object withPriority:(int64_t)priority;
- (void)enqueueSaveBlock:(id)block withPriority:(int64_t)priority;
- (void)flush;
- (void)resume;
- (void)setCachedPreview:(id)preview key:(id)key;
- (void)suspend;
- (void)transferFinished:(id)finished;
- (void)transferRemoved:(id)removed;
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
  dispatchCache = [(CKPreviewDispatchCache *)self dispatchCache];
  [dispatchCache resume];
}

+ (CKPreviewDispatchCache)transcriptPreviewCache
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CKPreviewDispatchCache_transcriptPreviewCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  block[4] = self;
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
  block[4] = self;
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
    v4 = -[CKPreviewDispatchCache initWithCacheLimit:dispatchPriority:]([CKPreviewDispatchCache alloc], "initWithCacheLimit:dispatchPriority:", 0, [self defaultPreviewPriority]);
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
  mEMORY[0x1E69A6160] = [MEMORY[0x1E69A6160] sharedInstance];
  [mEMORY[0x1E69A6160] removeListener:self];

  notificationCenter = [(CKPreviewDispatchCache *)self notificationCenter];
  [notificationCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = CKPreviewDispatchCache;
  [(CKPreviewDispatchCache *)&v5 dealloc];
}

- (CKPreviewDispatchCache)initWithCacheLimit:(unint64_t)limit dispatchPriority:(int64_t)priority
{
  v12.receiver = self;
  v12.super_class = CKPreviewDispatchCache;
  v6 = [(CKPreviewDispatchCache *)&v12 init];
  if (v6)
  {
    mEMORY[0x1E69A6160] = [MEMORY[0x1E69A6160] sharedInstance];
    [mEMORY[0x1E69A6160] addListener:v6];

    notificationCenter = [(CKPreviewDispatchCache *)v6 notificationCenter];
    [notificationCenter addObserver:v6 selector:sel_didReceiveMemoryWarning name:*MEMORY[0x1E69DDAD8] object:0];

    v9 = [[CKDispatchCache alloc] initWithCacheLimit:limit dispatchPriority:priority];
    [(CKPreviewDispatchCache *)v6 setDispatchCache:v9];
    v10 = objc_alloc_init(CKMultiDict);
    [(CKPreviewDispatchCache *)v6 setPendingBlocks:v10];
  }

  return v6;
}

- (CKPreviewDispatchCache)init
{
  v3 = CKDefaultCacheLimit();
  defaultPreviewPriority = [objc_opt_class() defaultPreviewPriority];

  return [(CKPreviewDispatchCache *)self initWithCacheLimit:v3 dispatchPriority:defaultPreviewPriority];
}

- (void)enqueueSaveBlock:(id)block withPriority:(int64_t)priority
{
  blockCopy = block;
  dispatchCache = [(CKPreviewDispatchCache *)self dispatchCache];
  [dispatchCache enqueueBlock:blockCopy withPriority:priority];
}

- (void)enqueueGenerationBlock:(id)block completion:(id)completion withPriority:(int64_t)priority forKey:(id)key
{
  keyCopy = key;
  completionCopy = completion;
  blockCopy = block;
  dispatchCache = [(CKPreviewDispatchCache *)self dispatchCache];
  [dispatchCache enqueueGenerationBlock:blockCopy completion:completionCopy withPriority:priority forKey:keyCopy];
}

- (id)cachedPreviewForKey:(id)key
{
  keyCopy = key;
  dispatchCache = [(CKPreviewDispatchCache *)self dispatchCache];
  v6 = [dispatchCache cachedObjectForKey:keyCopy];

  return v6;
}

- (void)setCachedPreview:(id)preview key:(id)key
{
  previewCopy = preview;
  keyCopy = key;
  v7 = [(CKPreviewDispatchCache *)self cachedPreviewForKey:keyCopy];
  if ([(CKPreviewDispatchCache *)self shouldReplaceCachedPreview:v7 withPreview:previewCopy])
  {
    dispatchCache = [(CKPreviewDispatchCache *)self dispatchCache];
    [dispatchCache setCachedObject:previewCopy forKey:keyCopy];
  }
}

- (BOOL)isGeneratingPreviewForKey:(id)key
{
  keyCopy = key;
  dispatchCache = [(CKPreviewDispatchCache *)self dispatchCache];
  v6 = [dispatchCache isGeneratingForKey:keyCopy];

  return v6;
}

- (void)beginGeneratingForKey:(id)key
{
  keyCopy = key;
  dispatchCache = [(CKPreviewDispatchCache *)self dispatchCache];
  [dispatchCache beginGeneratingForKey:keyCopy];
}

- (void)endGeneratingForKey:(id)key
{
  keyCopy = key;
  dispatchCache = [(CKPreviewDispatchCache *)self dispatchCache];
  [dispatchCache endGeneratingForKey:keyCopy];
}

- (void)suspend
{
  dispatchCache = [(CKPreviewDispatchCache *)self dispatchCache];
  [dispatchCache suspend];
}

- (void)flush
{
  dispatchCache = [(CKPreviewDispatchCache *)self dispatchCache];
  [dispatchCache clearQueue];

  pendingBlocks = [(CKPreviewDispatchCache *)self pendingBlocks];
  [pendingBlocks removeAllObjects];

  notificationCenter = [(CKPreviewDispatchCache *)self notificationCenter];
  [notificationCenter removeObserver:self name:@"CKFileTransferFinishedNotification" object:0];
  [notificationCenter removeObserver:self name:@"CKFileTransferRemovedNotification" object:0];
}

- (void)transferFinished:(id)finished
{
  v16 = *MEMORY[0x1E69E9840];
  finishedCopy = finished;
  object = [finishedCopy object];
  if (object)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = object;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_DEBUG, "Transfer %@ finished. Execute its pending operations.", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      v13 = object;
      _CKLog();
    }

    guid = [object guid];
    pendingBlocks = [(CKPreviewDispatchCache *)self pendingBlocks];
    v9 = [pendingBlocks popObjectForKey:guid];

    if (v9)
    {
      do
      {
        v9[2](v9);
        pendingBlocks2 = [(CKPreviewDispatchCache *)self pendingBlocks];
        v11 = [pendingBlocks2 popObjectForKey:guid];

        v9 = v11;
      }

      while (v11);
    }

    notificationCenter = [(CKPreviewDispatchCache *)self notificationCenter];
    [notificationCenter removeObserver:self name:@"CKFileTransferFinishedNotification" object:0];
    [notificationCenter removeObserver:self name:@"CKFileTransferRemovedNotification" object:0];
  }
}

- (void)transferRemoved:(id)removed
{
  v13 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  object = [removedCopy object];
  if (object)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v12 = object;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_DEBUG, "Transfer %@ removed. Dump its pending operations.", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      v10 = object;
      _CKLog();
    }

    guid = [object guid];
    pendingBlocks = [(CKPreviewDispatchCache *)self pendingBlocks];
    [pendingBlocks removeObjectsForKey:guid];

    notificationCenter = [(CKPreviewDispatchCache *)self notificationCenter];
    [notificationCenter removeObserver:self name:@"CKFileTransferFinishedNotification" object:0];
    [notificationCenter removeObserver:self name:@"CKFileTransferRemovedNotification" object:0];
  }
}

- (BOOL)shouldReplaceCachedPreview:(id)preview withPreview:(id)withPreview
{
  withPreviewCopy = withPreview;
  previewCopy = preview;
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
  dispatchCache = [(CKPreviewDispatchCache *)self dispatchCache];
  [dispatchCache emptyCache];
}

- (void)enqueueSaveBlock:(id)block forMediaObject:(id)object withPriority:(int64_t)priority
{
  v27 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  objectCopy = object;
  if (CKIsRunningInFullCKClient() || CKIsRunningUnitTests())
  {
    dispatchCache = [(CKPreviewDispatchCache *)self dispatchCache];
    transfer = [objectCopy transfer];
    isFileURLFinalized = [transfer isFileURLFinalized];

    v13 = IMOSLoggingEnabled();
    if (isFileURLFinalized)
    {
      if (v13)
      {
        CKLogCStringForType(2);
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v26 = objectCopy;
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
      v24 = blockCopy;
      v23 = objectCopy;
      [dispatchCache enqueueBlock:v22 withPriority:priority];

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
          v26 = objectCopy;
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
      v18[0] = objectCopy;
      v18[1] = self;
      v19 = dispatchCache;
      v20 = blockCopy;
      priorityCopy = priority;
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