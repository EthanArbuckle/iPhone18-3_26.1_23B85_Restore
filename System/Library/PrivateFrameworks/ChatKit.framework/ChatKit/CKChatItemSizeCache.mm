@interface CKChatItemSizeCache
+ (id)sharedInstance;
+ (id)test_cachePath;
- (BOOL)cachedSizeForChatItem:(id)item size:(CGSize *)size translationSecondaryTextSize:(CGSize *)textSize textAlignmentInsets:(UIEdgeInsets *)insets fittingSize:(CGSize)fittingSize;
- (CKChatItemSizeCache)init;
- (id)_fontCacheKey;
- (id)_generateChatItemGuidToCacheKeyMapWithCache:(id)cache;
- (id)_systemVersion;
- (id)cacheKeyForChatItem:(id)item fittingSize:(CGSize)size;
- (id)initForTestAndThrowException:(BOOL)exception cacheFileData:(id)data;
- (void)___invalidateSizeCacheMetricsForKeys:(id)keys;
- (void)_commonInit;
- (void)_evictIfNeeded;
- (void)_inflateCache;
- (void)_persistCache;
- (void)_updateKeyMap:(id)map forKey:(id)key sizeCacheKey:(id)cacheKey;
- (void)dealloc;
- (void)invalidateCachedSizeForChatItems:(id)items reason:(id)reason;
- (void)invalidateCachedSizeForGUIDPrefix:(id)prefix reason:(id)reason;
- (void)setCachedSizeForChatItem:(id)item size:(CGSize)size translationSecondaryTextSize:(CGSize)textSize textAlignmentInsets:(UIEdgeInsets)insets fittingSize:(CGSize)fittingSize;
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
    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
    v6 = [preferredLanguages componentsJoinedByString:@"-"];

    [(CKChatItemSizeCache *)self setPreferredLocalization:v6];
    v7 = [objc_alloc(MEMORY[0x1E69A6158]) initWithTarget:self action:sel__evictIfNeeded];
    [(CKChatItemSizeCache *)self setEvictionUpdater:v7];
    v8 = dispatch_queue_create("com.apple.messages.chatitemsizemetricdiskqueue", 0);
    cacheDiskQueue = self->_cacheDiskQueue;
    self->_cacheDiskQueue = v8;

    if (CKIsRunningInMacCatalyst())
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel_applicationWillResignActive name:*MEMORY[0x1E69DDBC8] object:0];
    }

    else
    {
      defaultCenter = [MEMORY[0x1E69A6160] sharedInstance];
      [defaultCenter addListener:self];
    }
  }
}

- (void)_inflateCache
{
  v68[4] = *MEMORY[0x1E69E9840];
  test_cacheData = [(CKChatItemSizeCache *)self test_cacheData];
  if (test_cacheData)
  {
    test_cacheData2 = [(CKChatItemSizeCache *)self test_cacheData];
  }

  else
  {
    v5 = MEMORY[0x1E695DEF0];
    v6 = MEMORY[0x1E696AEC0];
    v7 = [@"/var/mobile/Library/SMS/" stringByAppendingString:@"com.apple.messages.geometrycache_v%d.plist"];
    v8 = [v6 stringWithValidatedFormat:v7 validFormatSpecifiers:@"%d" error:0, 30];
    test_cacheData2 = [v5 dataWithContentsOfFile:v8];
  }

  if (test_cacheData2)
  {
    v49 = test_cacheData2;
    v9 = MEMORY[0x1E695DFD8];
    v68[0] = objc_opt_class();
    v68[1] = objc_opt_class();
    v68[2] = objc_opt_class();
    v68[3] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:4];
    v48 = [v9 setWithArray:v10];

    v61 = 0;
    selfCopy3 = self;
    v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v48 fromData:test_cacheData2 error:&v61];
    v47 = v61;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(CKChatItemSizeCache *)self test_throwExceptionDuringInflate])
      {
        v13 = [MEMORY[0x1E695DF30] exceptionWithName:@"TestException" reason:@"CKChatItemSizeCache test exception" userInfo:0];
        [v13 raise];

        selfCopy3 = self;
      }

      v14 = [v12 objectForKeyedSubscript:@"ChatItemSizeMetricCache"];
      v46 = v14;
      if (v14)
      {
        v15 = v14;

        v12 = v15;
        selfCopy3 = self;
      }

      v16 = [v12 mutableCopy];
      [(CKChatItemSizeCache *)selfCopy3 setCache:v16];

      allKeys = [v12 allKeys];
      v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allKeys, "count")}];
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      obj = allKeys;
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
      orderedKeys = [(CKChatItemSizeCache *)self orderedKeys];
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
            [orderedKeys pushLinkedListNode:v32];
          }

          v26 = [v25 countByEnumeratingWithState:&v53 objects:v66 count:16];
        }

        while (v26);
      }

      cache = [(CKChatItemSizeCache *)self cache];
      v34 = [(CKChatItemSizeCache *)self _generateChatItemGuidToCacheKeyMapWithCache:cache];

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

    test_cacheData2 = v49;
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

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v42 = [defaultManager fileExistsAtPath:v40];

    if (v42)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v52[0] = 0;
      [defaultManager2 removeItemAtPath:v40 error:v52];
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

- (id)initForTestAndThrowException:(BOOL)exception cacheFileData:(id)data
{
  exceptionCopy = exception;
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = CKChatItemSizeCache;
  v7 = [(CKChatItemSizeCache *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CKChatItemSizeCache *)v7 setTest_throwExceptionDuringInflate:exceptionCopy];
    [(CKChatItemSizeCache *)v8 setTest_cacheData:dataCopy];
    [(CKChatItemSizeCache *)v8 _commonInit];
  }

  return v8;
}

- (BOOL)cachedSizeForChatItem:(id)item size:(CGSize *)size translationSecondaryTextSize:(CGSize *)textSize textAlignmentInsets:(UIEdgeInsets *)insets fittingSize:(CGSize)fittingSize
{
  height = fittingSize.height;
  width = fittingSize.width;
  itemCopy = item;
  if (CKDisableChatItemSizeCache() || CKIsRunningInIMTranscoderAgent())
  {
    v14 = 0;
    goto LABEL_4;
  }

  height = [(CKChatItemSizeCache *)self cacheKeyForChatItem:itemCopy fittingSize:width, height];
  cache = [(CKChatItemSizeCache *)self cache];
  v18 = [cache objectForKey:height];

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
    if (!size)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  node = [v18 node];
  v19 = objc_alloc(MEMORY[0x1E69A60D0]);
  object = [node object];
  v21 = [v19 initWithObject:object];

  [v18 setKey:height];
  [v18 setNode:v21];
  date = [MEMORY[0x1E695DF00] date];
  [v18 setLastAccess:date];

  orderedKeys = [(CKChatItemSizeCache *)self orderedKeys];
  [orderedKeys removeLinkedListNode:node];

  orderedKeys2 = [(CKChatItemSizeCache *)self orderedKeys];
  [orderedKeys2 pushLinkedListNode:v21];

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

  if (size)
  {
LABEL_7:
    size->width = v26;
    size->height = v28;
  }

LABEL_8:
  if (insets)
  {
    insets->top = v30;
    insets->left = v32;
    insets->bottom = v34;
    insets->right = v36;
  }

  if (textSize)
  {
    textSize->width = v38;
    textSize->height = v40;
  }

LABEL_4:
  return v14;
}

- (void)setCachedSizeForChatItem:(id)item size:(CGSize)size translationSecondaryTextSize:(CGSize)textSize textAlignmentInsets:(UIEdgeInsets)insets fittingSize:(CGSize)fittingSize
{
  bottom = insets.bottom;
  right = insets.right;
  left = insets.left;
  top = insets.top;
  height = textSize.height;
  width = textSize.width;
  v11 = size.height;
  v12 = size.width;
  itemCopy = item;
  if (!CKDisableChatItemSizeCache() && !CKIsRunningInIMTranscoderAgent() && !+[CKApplicationState isResizing])
  {
    iMChatItem = [itemCopy IMChatItem];
    guid = [iMChatItem guid];

    v16 = [(CKChatItemSizeCache *)self cacheKeyForChatItem:itemCopy fittingSize:v28, v29];
    v17 = [objc_alloc(MEMORY[0x1E69A60D0]) initWithObject:v16];
    v18 = objc_alloc_init(CKChatItemCachedSizeMetrics);
    [(CKChatItemCachedSizeMetrics *)v18 setChatItemGUID:guid];
    [(CKChatItemCachedSizeMetrics *)v18 setSize:v12, v11];
    [(CKChatItemCachedSizeMetrics *)v18 setTranslationSecondaryTextSize:width, height];
    [(CKChatItemCachedSizeMetrics *)v18 setTextAlignmentInsets:top, left, bottom, right];
    [(CKChatItemCachedSizeMetrics *)v18 setKey:v16];
    date = [MEMORY[0x1E695DF00] date];
    [(CKChatItemCachedSizeMetrics *)v18 setLastAccess:date];

    [(CKChatItemCachedSizeMetrics *)v18 setNode:v17];
    cache = [(CKChatItemSizeCache *)self cache];
    [cache setObject:v18 forKey:v16];

    orderedKeys = [(CKChatItemSizeCache *)self orderedKeys];
    [orderedKeys pushLinkedListNode:v17];

    chatItemGUIDToCacheKeyMap = [(CKChatItemSizeCache *)self chatItemGUIDToCacheKeyMap];
    [(CKChatItemSizeCache *)self _updateKeyMap:chatItemGUIDToCacheKeyMap forKey:guid sizeCacheKey:v16];

    evictionUpdater = [(CKChatItemSizeCache *)self evictionUpdater];
    [evictionUpdater setNeedsUpdate];
  }
}

- (void)invalidateCachedSizeForChatItems:(id)items reason:(id)reason
{
  v44 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  reasonCopy = reason;
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
  v12 = itemsCopy;
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

        iMChatItem = [*(*(&v31 + 1) + 8 * i) IMChatItem];
        guid = [iMChatItem guid];

        chatItemGUIDToCacheKeyMap = [(CKChatItemSizeCache *)self chatItemGUIDToCacheKeyMap];
        v20 = [chatItemGUIDToCacheKeyMap objectForKey:guid];

        [v11 unionSet:v20];
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v14);
  }

  chatItemGUIDToCacheKeyMap2 = [(CKChatItemSizeCache *)self chatItemGUIDToCacheKeyMap];
  v22 = [chatItemGUIDToCacheKeyMap2 count];

  v23 = [v11 count];
  [(CKChatItemSizeCache *)self ___invalidateSizeCacheMetricsForKeys:v11];
  chatItemGUIDToCacheKeyMap3 = [(CKChatItemSizeCache *)self chatItemGUIDToCacheKeyMap];
  v25 = [chatItemGUIDToCacheKeyMap3 count];

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
    v42 = reasonCopy;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v27, OS_SIGNPOST_INTERVAL_END, spid, "InvalidateChatItems", "InvalidateChatItems: old number of cached size = %lu, number of invalidated sizes = %lu, number of new chaches size = %lu, reason: %@", buf, 0x2Au);
  }
}

- (void)invalidateCachedSizeForGUIDPrefix:(id)prefix reason:(id)reason
{
  v43 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  reasonCopy = reason;
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

  chatItemGUIDToCacheKeyMap = [(CKChatItemSizeCache *)self chatItemGUIDToCacheKeyMap];
  allKeys = [chatItemGUIDToCacheKeyMap allKeys];

  v14 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = allKeys;
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
        if ([v20 containsString:{prefixCopy, spid}])
        {
          [v14 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v17);
  }

  chatItemGUIDToCacheKeyMap2 = [(CKChatItemSizeCache *)self chatItemGUIDToCacheKeyMap];
  v22 = [chatItemGUIDToCacheKeyMap2 count];

  v23 = [v14 count];
  [(CKChatItemSizeCache *)self ___invalidateSizeCacheMetricsForKeys:v14];
  chatItemGUIDToCacheKeyMap3 = [(CKChatItemSizeCache *)self chatItemGUIDToCacheKeyMap];
  v25 = [chatItemGUIDToCacheKeyMap3 count];

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
    v41 = reasonCopy;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v27, OS_SIGNPOST_INTERVAL_END, spid, "InvalidateChatItems", "InvalidateChatItems: old number of cached size = %lu, number of invalidated sizes = %lu, number of new chaches size = %lu, reason: %@", buf, 0x2Au);
  }
}

- (void)___invalidateSizeCacheMetricsForKeys:(id)keys
{
  v51 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v5 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = keysCopy;
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
        cache = [(CKChatItemSizeCache *)self cache];
        v12 = [cache objectForKeyedSubscript:v10];

        if (v12)
        {
          chatItemGUID = [v12 chatItemGUID];
          v14 = !chatItemGUID || v10 == 0;
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
      cache2 = [(CKChatItemSizeCache *)self cache];
      v18 = [cache2 count];
      v19 = [v5 count];
      cache3 = [(CKChatItemSizeCache *)self cache];
      v21 = [cache3 count];
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
        cache4 = [(CKChatItemSizeCache *)self cache];
        v29 = [cache4 objectForKeyedSubscript:v27];

        chatItemGUIDToCacheKeyMap = [(CKChatItemSizeCache *)self chatItemGUIDToCacheKeyMap];
        chatItemGUID2 = [v29 chatItemGUID];
        [chatItemGUIDToCacheKeyMap removeObjectForKey:chatItemGUID2];

        orderedKeys = [(CKChatItemSizeCache *)self orderedKeys];
        node = [v29 node];
        [orderedKeys removeLinkedListNode:node];

        cache5 = [(CKChatItemSizeCache *)self cache];
        [cache5 removeObjectForKey:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v24);
  }
}

- (id)cacheKeyForChatItem:(id)item fittingSize:(CGSize)size
{
  width = size.width;
  itemCopy = item;
  _fontCacheKey = [(CKChatItemSizeCache *)self _fontCacheKey];
  _systemVersion = [(CKChatItemSizeCache *)self _systemVersion];
  sizeCacheUniquenessValue = [itemCopy sizeCacheUniquenessValue];
  _boldTextEnabled = [(CKChatItemSizeCache *)self _boldTextEnabled];
  hasTail = [itemCopy hasTail];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isCAShapeLayerBalloonsEnabled = [mEMORY[0x1E69A8070] isCAShapeLayerBalloonsEnabled];

  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRoundTailedBalloonShapeEnabled = [mEMORY[0x1E69A8070]2 isRoundTailedBalloonShapeEnabled];

  v14 = MEMORY[0x1E696AEC0];
  iMChatItem = [itemCopy IMChatItem];

  guid = [iMChatItem guid];
  preferredLocalization = [(CKChatItemSizeCache *)self preferredLocalization];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:_boldTextEnabled];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:hasTail];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:isCAShapeLayerBalloonsEnabled];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:isRoundTailedBalloonShapeEnabled];
  v21 = [v14 stringWithFormat:@"<%@-%@-%f-%@-%@-%@-%@-%@-%@-%@>", guid, sizeCacheUniquenessValue, *&width, _fontCacheKey, _systemVersion, preferredLocalization, v17, v18, v19, v20];

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
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  return preferredContentSizeCategory;
}

- (void)_evictIfNeeded
{
  v19 = *MEMORY[0x1E69E9840];
  orderedKeys = [(CKChatItemSizeCache *)self orderedKeys];
  v4 = [orderedKeys count];
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
  last = [orderedKeys last];
  v8 = last;
  if (last)
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
      object = [v8 object];
      [v6 addObject:object];
      prev = [v8 prev];

      if (v10 < 0xBB9)
      {
        break;
      }

      --v10;
      v8 = prev;
    }

    while (prev);
  }

  else
  {
    prev = last;
  }

  [(CKChatItemSizeCache *)self ___invalidateSizeCacheMetricsForKeys:v6];
}

- (void)_persistCache
{
  evictionUpdater = [(CKChatItemSizeCache *)self evictionUpdater];
  [evictionUpdater updateIfNeeded];

  cache = [(CKChatItemSizeCache *)self cache];
  v5 = [cache copy];

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

- (id)_generateChatItemGuidToCacheKeyMapWithCache:(id)cache
{
  v22 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allValues = [cacheCopy allValues];
  v7 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        chatItemGUID = [v11 chatItemGUID];
        v13 = [v11 key];
        v14 = v13;
        if (chatItemGUID)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          [(CKChatItemSizeCache *)self _updateKeyMap:v5 forKey:chatItemGUID sizeCacheKey:v13];
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_updateKeyMap:(id)map forKey:(id)key sizeCacheKey:(id)cacheKey
{
  cacheKeyCopy = cacheKey;
  if (map && key && cacheKeyCopy)
  {
    v12 = cacheKeyCopy;
    keyCopy = key;
    mapCopy = map;
    v10 = [mapCopy objectForKey:keyCopy];
    if (v10)
    {
      v11 = v10;
      [v10 addObject:v12];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFA8] setWithObject:v12];
    }

    [mapCopy setObject:v11 forKey:keyCopy];

    cacheKeyCopy = v12;
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