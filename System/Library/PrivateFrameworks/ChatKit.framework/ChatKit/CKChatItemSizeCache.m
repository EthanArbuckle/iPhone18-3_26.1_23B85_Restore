@interface CKChatItemSizeCache
+ (id)sharedInstance;
+ (id)test_cachePath;
- (BOOL)cachedSizeForChatItem:(id)a3 size:(CGSize *)a4 translationSecondaryTextSize:(CGSize *)a5 textAlignmentInsets:(UIEdgeInsets *)a6 fittingSize:(CGSize)a7;
- (CKChatItemSizeCache)init;
- (id)_fontCacheKey;
- (id)_generateChatItemGuidToCacheKeyMapWithCache:(id)a3;
- (id)_systemVersion;
- (id)cacheKeyForChatItem:(id)a3 fittingSize:(CGSize)a4;
- (id)initForTestAndThrowException:(BOOL)a3 cacheFileData:(id)a4;
- (void)___invalidateSizeCacheMetricsForKeys:(id)a3;
- (void)_commonInit;
- (void)_evictIfNeeded;
- (void)_inflateCache;
- (void)_persistCache;
- (void)_updateKeyMap:(id)a3 forKey:(id)a4 sizeCacheKey:(id)a5;
- (void)dealloc;
- (void)invalidateCachedSizeForChatItems:(id)a3 reason:(id)a4;
- (void)invalidateCachedSizeForGUIDPrefix:(id)a3 reason:(id)a4;
- (void)setCachedSizeForChatItem:(id)a3 size:(CGSize)a4 translationSecondaryTextSize:(CGSize)a5 textAlignmentInsets:(UIEdgeInsets)a6 fittingSize:(CGSize)a7;
@end

@implementation CKChatItemSizeCache

+ (id)sharedInstance
{
  if (CKIsRunningInCKTester())
  {
    v2 = 0;
  }

  else
  {
    if (sharedInstance_onceToken_0 != -1)
    {
      +[CKChatItemSizeCache sharedInstance];
    }

    v2 = sharedInstance_sSizeCache;
  }

  return v2;
}

void __37__CKChatItemSizeCache_sharedInstance__block_invoke()
{
  if (CKIsRunningInMessages())
  {
    v0 = objc_alloc_init(CKChatItemSizeCache);
    v1 = sharedInstance_sSizeCache;
    sharedInstance_sSizeCache = v0;
  }
}

- (CKChatItemSizeCache)init
{
  v5.receiver = self;
  v5.super_class = CKChatItemSizeCache;
  v2 = [(CKChatItemSizeCache *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CKChatItemSizeCache *)v2 _commonInit];
  }

  return v3;
}

- (void)_commonInit
{
  if (!CKIsRunningInIMTranscoderAgent())
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CKChatItemSizeCache *)self setCache:?];
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CKChatItemSizeCache *)self setChatItemGUIDToCacheKeyMap:v3];
    v4 = objc_alloc_init(MEMORY[0x1E69A60C8]);
    [(CKChatItemSizeCache *)self setOrderedKeys:v4];
    [(CKChatItemSizeCache *)self _inflateCache];
    v5 = [MEMORY[0x1E695DF58] preferredLanguages];
    v6 = [v5 componentsJoinedByString:@"-"];

    [(CKChatItemSizeCache *)self setPreferredLocalization:v6];
    v7 = [objc_alloc(MEMORY[0x1E69A6158]) initWithTarget:self action:sel__evictIfNeeded];
    [(CKChatItemSizeCache *)self setEvictionUpdater:v7];
    v8 = dispatch_queue_create("com.apple.messages.chatitemsizemetricdiskqueue", 0);
    cacheDiskQueue = self->_cacheDiskQueue;
    self->_cacheDiskQueue = v8;

    if (CKIsRunningInMacCatalyst())
    {
      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      [v10 addObserver:self selector:sel_applicationWillResignActive name:*MEMORY[0x1E69DDBC8] object:0];
    }

    else
    {
      v10 = [MEMORY[0x1E69A6160] sharedInstance];
      [v10 addListener:self];
    }
  }
}

- (void)_inflateCache
{
  v68[4] = *MEMORY[0x1E69E9840];
  v3 = [(CKChatItemSizeCache *)self test_cacheData];
  if (v3)
  {
    v4 = [(CKChatItemSizeCache *)self test_cacheData];
  }

  else
  {
    v5 = MEMORY[0x1E695DEF0];
    v6 = MEMORY[0x1E696AEC0];
    v7 = [@"/var/mobile/Library/SMS/" stringByAppendingString:@"com.apple.messages.geometrycache_v%d.plist"];
    v8 = [v6 stringWithValidatedFormat:v7 validFormatSpecifiers:@"%d" error:0, 30];
    v4 = [v5 dataWithContentsOfFile:v8];
  }

  if (v4)
  {
    v49 = v4;
    v9 = MEMORY[0x1E695DFD8];
    v68[0] = objc_opt_class();
    v68[1] = objc_opt_class();
    v68[2] = objc_opt_class();
    v68[3] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:4];
    v48 = [v9 setWithArray:v10];

    v61 = 0;
    v11 = self;
    v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v48 fromData:v4 error:&v61];
    v47 = v61;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(CKChatItemSizeCache *)self test_throwExceptionDuringInflate])
      {
        v13 = [MEMORY[0x1E695DF30] exceptionWithName:@"TestException" reason:@"CKChatItemSizeCache test exception" userInfo:0];
        [v13 raise];

        v11 = self;
      }

      v14 = [v12 objectForKeyedSubscript:@"ChatItemSizeMetricCache"];
      v46 = v14;
      if (v14)
      {
        v15 = v14;

        v12 = v15;
        v11 = self;
      }

      v16 = [v12 mutableCopy];
      [(CKChatItemSizeCache *)v11 setCache:v16];

      v17 = [v12 allKeys];
      v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v17, "count")}];
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      obj = v17;
      v19 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
      if (v19)
      {
        v20 = *v58;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v58 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v57 + 1) + 8 * i);
            v23 = [v12 objectForKeyedSubscript:v22];
            [v23 setKey:v22];
            [v18 addObject:v23];
          }

          v19 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
        }

        while (v19);
      }

      [v18 sortUsingComparator:&__block_literal_global_173];
      v24 = [(CKChatItemSizeCache *)self orderedKeys];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v25 = v18;
      v26 = [v25 countByEnumeratingWithState:&v53 objects:v66 count:16];
      if (v26)
      {
        v27 = *v54;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v54 != v27)
            {
              objc_enumerationMutation(v25);
            }

            v29 = *(*(&v53 + 1) + 8 * j);
            v30 = objc_alloc(MEMORY[0x1E69A60D0]);
            v31 = [v29 key];
            v32 = [v30 initWithObject:v31];

            [v29 setNode:v32];
            [v24 pushLinkedListNode:v32];
          }

          v26 = [v25 countByEnumeratingWithState:&v53 objects:v66 count:16];
        }

        while (v26);
      }

      v33 = [(CKChatItemSizeCache *)self cache];
      v34 = [(CKChatItemSizeCache *)self _generateChatItemGuidToCacheKeyMapWithCache:v33];

      [(CKChatItemSizeCache *)self setChatItemGUIDToCacheKeyMap:v34];
    }

    else if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v63 = v47;
        _os_log_impl(&dword_19020E000, v36, OS_LOG_TYPE_INFO, "CKChatItemSizeCache: Failed to unarchive with error %@", buf, 0xCu);
      }
    }

    v4 = v49;
  }

  else if (IMOSLoggingEnabled())
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v63 = "[CKChatItemSizeCache _inflateCache]";
      _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "%s No size metrics cache found on disk", buf, 0xCu);
    }
  }

  v37 = 0;
  do
  {
    v38 = MEMORY[0x1E696AEC0];
    v39 = [@"/var/mobile/Library/SMS/" stringByAppendingString:@"com.apple.messages.geometrycache_v%d.plist"];
    v40 = [v38 stringWithValidatedFormat:v39 validFormatSpecifiers:@"%d" error:0, v37];

    v41 = [MEMORY[0x1E696AC08] defaultManager];
    v42 = [v41 fileExistsAtPath:v40];

    if (v42)
    {
      v43 = [MEMORY[0x1E696AC08] defaultManager];
      v52[0] = 0;
      [v43 removeItemAtPath:v40 error:v52];
      v44 = v52[0];

      if (v44 && IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v63 = v40;
          v64 = 2112;
          v65 = v44;
          _os_log_impl(&dword_19020E000, v45, OS_LOG_TYPE_INFO, "CKChatItemSizeCache: Failed to purge legacy cache at path %@ with error %@", buf, 0x16u);
        }
      }
    }

    v37 = (v37 + 1);
  }

  while (v37 != 30);
}

uint64_t __36__CKChatItemSizeCache__inflateCache__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastAccess];
  v6 = [v4 lastAccess];

  if (v5 || !v6)
  {
    v7 = [v5 compare:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)dealloc
{
  [(IMScheduledUpdater *)self->_evictionUpdater invalidate];
  evictionUpdater = self->_evictionUpdater;
  self->_evictionUpdater = 0;

  v4.receiver = self;
  v4.super_class = CKChatItemSizeCache;
  [(CKChatItemSizeCache *)&v4 dealloc];
}

- (id)initForTestAndThrowException:(BOOL)a3 cacheFileData:(id)a4
{
  v4 = a3;
  v6 = a4;
  v10.receiver = self;
  v10.super_class = CKChatItemSizeCache;
  v7 = [(CKChatItemSizeCache *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CKChatItemSizeCache *)v7 setTest_throwExceptionDuringInflate:v4];
    [(CKChatItemSizeCache *)v8 setTest_cacheData:v6];
    [(CKChatItemSizeCache *)v8 _commonInit];
  }

  return v8;
}

- (BOOL)cachedSizeForChatItem:(id)a3 size:(CGSize *)a4 translationSecondaryTextSize:(CGSize *)a5 textAlignmentInsets:(UIEdgeInsets *)a6 fittingSize:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v13 = a3;
  if (CKDisableChatItemSizeCache() || CKIsRunningInIMTranscoderAgent())
  {
    v14 = 0;
    goto LABEL_4;
  }

  v16 = [(CKChatItemSizeCache *)self cacheKeyForChatItem:v13 fittingSize:width, height];
  v17 = [(CKChatItemSizeCache *)self cache];
  v18 = [v17 objectForKey:v16];

  v14 = v18 != 0;
  if (!v18)
  {
    v38 = *MEMORY[0x1E695F060];
    v40 = *(MEMORY[0x1E695F060] + 8);
    v30 = *MEMORY[0x1E69DDCE0];
    v32 = *(MEMORY[0x1E69DDCE0] + 8);
    v34 = *(MEMORY[0x1E69DDCE0] + 16);
    v36 = *(MEMORY[0x1E69DDCE0] + 24);
    v28 = v40;
    v26 = *MEMORY[0x1E695F060];
    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v41 = [v18 node];
  v19 = objc_alloc(MEMORY[0x1E69A60D0]);
  v20 = [v41 object];
  v21 = [v19 initWithObject:v20];

  [v18 setKey:v16];
  [v18 setNode:v21];
  v22 = [MEMORY[0x1E695DF00] date];
  [v18 setLastAccess:v22];

  v23 = [(CKChatItemSizeCache *)self orderedKeys];
  [v23 removeLinkedListNode:v41];

  v24 = [(CKChatItemSizeCache *)self orderedKeys];
  [v24 pushLinkedListNode:v21];

  [v18 size];
  v26 = v25;
  v28 = v27;
  [v18 textAlignmentInsets];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  [v18 translationSecondaryTextSize];
  v38 = v37;
  v40 = v39;

  if (a4)
  {
LABEL_7:
    a4->width = v26;
    a4->height = v28;
  }

LABEL_8:
  if (a6)
  {
    a6->top = v30;
    a6->left = v32;
    a6->bottom = v34;
    a6->right = v36;
  }

  if (a5)
  {
    a5->width = v38;
    a5->height = v40;
  }

LABEL_4:
  return v14;
}

- (void)setCachedSizeForChatItem:(id)a3 size:(CGSize)a4 translationSecondaryTextSize:(CGSize)a5 textAlignmentInsets:(UIEdgeInsets)a6 fittingSize:(CGSize)a7
{
  bottom = a6.bottom;
  right = a6.right;
  left = a6.left;
  top = a6.top;
  height = a5.height;
  width = a5.width;
  v11 = a4.height;
  v12 = a4.width;
  v26 = a3;
  if (!CKDisableChatItemSizeCache() && !CKIsRunningInIMTranscoderAgent() && !+[CKApplicationState isResizing])
  {
    v14 = [v26 IMChatItem];
    v15 = [v14 guid];

    v16 = [(CKChatItemSizeCache *)self cacheKeyForChatItem:v26 fittingSize:v28, v29];
    v17 = [objc_alloc(MEMORY[0x1E69A60D0]) initWithObject:v16];
    v18 = objc_alloc_init(CKChatItemCachedSizeMetrics);
    [(CKChatItemCachedSizeMetrics *)v18 setChatItemGUID:v15];
    [(CKChatItemCachedSizeMetrics *)v18 setSize:v12, v11];
    [(CKChatItemCachedSizeMetrics *)v18 setTranslationSecondaryTextSize:width, height];
    [(CKChatItemCachedSizeMetrics *)v18 setTextAlignmentInsets:top, left, bottom, right];
    [(CKChatItemCachedSizeMetrics *)v18 setKey:v16];
    v19 = [MEMORY[0x1E695DF00] date];
    [(CKChatItemCachedSizeMetrics *)v18 setLastAccess:v19];

    [(CKChatItemCachedSizeMetrics *)v18 setNode:v17];
    v20 = [(CKChatItemSizeCache *)self cache];
    [v20 setObject:v18 forKey:v16];

    v21 = [(CKChatItemSizeCache *)self orderedKeys];
    [v21 pushLinkedListNode:v17];

    v22 = [(CKChatItemSizeCache *)self chatItemGUIDToCacheKeyMap];
    [(CKChatItemSizeCache *)self _updateKeyMap:v22 forKey:v15 sizeCacheKey:v16];

    v23 = [(CKChatItemSizeCache *)self evictionUpdater];
    [v23 setNeedsUpdate];
  }
}

- (void)invalidateCachedSizeForChatItems:(id)a3 reason:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v30 = a4;
  v7 = IMLogHandleForCategory();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  v29 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "InvalidateChatItems", "", buf, 2u);
  }

  spid = v8;

  v11 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v31 + 1) + 8 * i) IMChatItem];
        v18 = [v17 guid];

        v19 = [(CKChatItemSizeCache *)self chatItemGUIDToCacheKeyMap];
        v20 = [v19 objectForKey:v18];

        [v11 unionSet:v20];
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v14);
  }

  v21 = [(CKChatItemSizeCache *)self chatItemGUIDToCacheKeyMap];
  v22 = [v21 count];

  v23 = [v11 count];
  [(CKChatItemSizeCache *)self ___invalidateSizeCacheMetricsForKeys:v11];
  v24 = [(CKChatItemSizeCache *)self chatItemGUIDToCacheKeyMap];
  v25 = [v24 count];

  v26 = v10;
  v27 = v26;
  if (v29 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 134218754;
    v36 = v22;
    v37 = 2048;
    v38 = v23;
    v39 = 2048;
    v40 = v25;
    v41 = 2112;
    v42 = v30;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v27, OS_SIGNPOST_INTERVAL_END, spid, "InvalidateChatItems", "InvalidateChatItems: old number of cached size = %lu, number of invalidated sizes = %lu, number of new chaches size = %lu, reason: %@", buf, 0x2Au);
  }
}

- (void)invalidateCachedSizeForGUIDPrefix:(id)a3 reason:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v29 = a4;
  v7 = IMLogHandleForCategory();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "InvalidateChatItems", "", buf, 2u);
  }

  spid = v8;

  v12 = [(CKChatItemSizeCache *)self chatItemGUIDToCacheKeyMap];
  v13 = [v12 allKeys];

  v14 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v30 + 1) + 8 * i);
        if ([v20 containsString:{v6, spid}])
        {
          [v14 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v17);
  }

  v21 = [(CKChatItemSizeCache *)self chatItemGUIDToCacheKeyMap];
  v22 = [v21 count];

  v23 = [v14 count];
  [(CKChatItemSizeCache *)self ___invalidateSizeCacheMetricsForKeys:v14];
  v24 = [(CKChatItemSizeCache *)self chatItemGUIDToCacheKeyMap];
  v25 = [v24 count];

  v26 = v10;
  v27 = v26;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 134218754;
    v35 = v22;
    v36 = 2048;
    v37 = v23;
    v38 = 2048;
    v39 = v25;
    v40 = 2112;
    v41 = v29;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v27, OS_SIGNPOST_INTERVAL_END, spid, "InvalidateChatItems", "InvalidateChatItems: old number of cached size = %lu, number of invalidated sizes = %lu, number of new chaches size = %lu, reason: %@", buf, 0x2Au);
  }
}

- (void)___invalidateSizeCacheMetricsForKeys:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v7)
  {
    v8 = *v40;
    do
    {
      v9 = 0;
      do
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v39 + 1) + 8 * v9);
        v11 = [(CKChatItemSizeCache *)self cache];
        v12 = [v11 objectForKeyedSubscript:v10];

        if (v12)
        {
          v13 = [v12 chatItemGUID];
          v14 = !v13 || v10 == 0;
          v15 = !v14;

          if (v15)
          {
            [v5 addObject:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v7);
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [(CKChatItemSizeCache *)self cache];
      v18 = [v17 count];
      v19 = [v5 count];
      v20 = [(CKChatItemSizeCache *)self cache];
      v21 = [v20 count];
      v22 = [v5 count];
      *buf = 134218496;
      v45 = v18;
      v46 = 2048;
      v47 = v19;
      v48 = 2048;
      v49 = v21 - v22;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "___invalidateSizeCacheMetrics: Current cache count: %ld – invalidation count: %ld – expected new count: %ld", buf, 0x20u);
    }
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = v5;
  v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v24)
  {
    v25 = *v36;
    do
    {
      v26 = 0;
      do
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v35 + 1) + 8 * v26);
        v28 = [(CKChatItemSizeCache *)self cache];
        v29 = [v28 objectForKeyedSubscript:v27];

        v30 = [(CKChatItemSizeCache *)self chatItemGUIDToCacheKeyMap];
        v31 = [v29 chatItemGUID];
        [v30 removeObjectForKey:v31];

        v32 = [(CKChatItemSizeCache *)self orderedKeys];
        v33 = [v29 node];
        [v32 removeLinkedListNode:v33];

        v34 = [(CKChatItemSizeCache *)self cache];
        [v34 removeObjectForKey:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v24);
  }
}

- (id)cacheKeyForChatItem:(id)a3 fittingSize:(CGSize)a4
{
  width = a4.width;
  v6 = a3;
  v25 = [(CKChatItemSizeCache *)self _fontCacheKey];
  v7 = [(CKChatItemSizeCache *)self _systemVersion];
  v24 = [v6 sizeCacheUniquenessValue];
  v8 = [(CKChatItemSizeCache *)self _boldTextEnabled];
  v9 = [v6 hasTail];
  v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v11 = [v10 isCAShapeLayerBalloonsEnabled];

  v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v13 = [v12 isRoundTailedBalloonShapeEnabled];

  v14 = MEMORY[0x1E696AEC0];
  v23 = [v6 IMChatItem];

  v15 = [v23 guid];
  v16 = [(CKChatItemSizeCache *)self preferredLocalization];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:v11];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:v13];
  v21 = [v14 stringWithFormat:@"<%@-%@-%f-%@-%@-%@-%@-%@-%@-%@>", v15, v24, *&width, v25, v7, v16, v17, v18, v19, v20];

  return v21;
}

- (id)_systemVersion
{
  if (_systemVersion_onceToken != -1)
  {
    [CKChatItemSizeCache _systemVersion];
  }

  v3 = _systemVersion_sSystemVersion;

  return v3;
}

void __37__CKChatItemSizeCache__systemVersion__block_invoke()
{
  v2 = [MEMORY[0x1E699BE70] sharedInstance];
  v0 = [v2 productOSVersion];
  v1 = _systemVersion_sSystemVersion;
  _systemVersion_sSystemVersion = v0;
}

- (id)_fontCacheKey
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  return v3;
}

- (void)_evictIfNeeded
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(CKChatItemSizeCache *)self orderedKeys];
  v4 = [v3 count];
  if (v4 >= 0xBB9 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = 136315650;
      v14 = "[CKChatItemSizeCache _evictIfNeeded]";
      v15 = 2048;
      v16 = v4;
      v17 = 1024;
      v18 = 3000;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%s - Current %tu max %d will evict", &v13, 0x1Cu);
    }
  }

  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = [v3 last];
  v8 = v7;
  if (v7)
  {
    v9 = v4 > 0xBB8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = v4 - 1;
    do
    {
      v11 = [v8 object];
      [v6 addObject:v11];
      v12 = [v8 prev];

      if (v10 < 0xBB9)
      {
        break;
      }

      --v10;
      v8 = v12;
    }

    while (v12);
  }

  else
  {
    v12 = v7;
  }

  [(CKChatItemSizeCache *)self ___invalidateSizeCacheMetricsForKeys:v6];
}

- (void)_persistCache
{
  v3 = [(CKChatItemSizeCache *)self evictionUpdater];
  [v3 updateIfNeeded];

  v4 = [(CKChatItemSizeCache *)self cache];
  v5 = [v4 copy];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__CKChatItemSizeCache__persistCache__block_invoke;
  aBlock[3] = &unk_1E72EBA18;
  v9 = v5;
  v6 = v5;
  v7 = _Block_copy(aBlock);
  dispatch_async(self->_cacheDiskQueue, v7);
}

void __36__CKChatItemSizeCache__persistCache__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v13 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v1 requiringSecureCoding:1 error:&v13];
  v3 = v13;
  if (v3 || (CKIsRunningInMacCatalyst() ? (v4 = 1) : (v4 = 1073741825), v5 = MEMORY[0x1E696AEC0], [@"/var/mobile/Library/SMS/" stringByAppendingString:@"com.apple.messages.geometrycache_v%d.plist"], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "stringWithValidatedFormat:validFormatSpecifiers:error:", v6, @"%d", 0, 30), v7 = objc_claimAutoreleasedReturnValue(), v12 = 0, objc_msgSend(v2, "writeToFile:options:error:", v7, v4, &v12), v3 = v12, v7, v6, v3))
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = MEMORY[0x1E696AEC0];
        v10 = [@"/var/mobile/Library/SMS/" stringByAppendingString:@"com.apple.messages.geometrycache_v%d.plist"];
        v11 = [v9 stringWithValidatedFormat:v10 validFormatSpecifiers:@"%d" error:0, 30];
        *buf = 138412546;
        v15 = v3;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "CKChatItemSizeCache: failed serializing or persisting serialized cache %@ %@", buf, 0x16u);
      }
    }
  }
}

- (id)_generateChatItemGuidToCacheKeyMapWithCache:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v4 allValues];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 chatItemGUID];
        v13 = [v11 key];
        v14 = v13;
        if (v12)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          [(CKChatItemSizeCache *)self _updateKeyMap:v5 forKey:v12 sizeCacheKey:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_updateKeyMap:(id)a3 forKey:(id)a4 sizeCacheKey:(id)a5
{
  v7 = a5;
  if (a3 && a4 && v7)
  {
    v12 = v7;
    v8 = a4;
    v9 = a3;
    v10 = [v9 objectForKey:v8];
    if (v10)
    {
      v11 = v10;
      [v10 addObject:v12];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFA8] setWithObject:v12];
    }

    [v9 setObject:v11 forKey:v8];

    v7 = v12;
  }
}

+ (id)test_cachePath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [@"/var/mobile/Library/SMS/" stringByAppendingString:@"com.apple.messages.geometrycache_v%d.plist"];
  v4 = [v2 stringWithValidatedFormat:v3 validFormatSpecifiers:@"%d" error:0, 30];

  return v4;
}

@end