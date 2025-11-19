@interface _CNUICachingLikenessRenderer
+ (id)createMainThreadSchedulerProviderWithSchedulerProvider:(id)a3;
- (_CNUICachingLikenessRenderer)initWithLikenessRenderer:(id)a3 schedulerProvider:(id)a4 capacity:(unint64_t)a5 shouldRequireMainThread:(BOOL)a6;
- (_CNUICachingLikenessRenderer)initWithLikenessRenderer:(id)a3 schedulerProvider:(id)a4 capacity:(unint64_t)a5 shouldRequireMainThread:(BOOL)a6 contactStore:(id)a7;
- (id)initialRenderedLikenessesForContacts:(id)a3 withBadges:(id)a4 scope:(id)a5 workScheduler:(id)a6;
- (id)loadingPlaceholderForContactCount:(unint64_t)a3 scope:(id)a4;
- (id)renderedBasicMonogramForString:(id)a3 color:(id)a4 scope:(id)a5 prohibitedSources:(int64_t)a6;
- (id)renderedBasicMonogramFromString:(id)a3 scope:(id)a4;
- (id)renderedLikenessForBadge:(id)a3 scope:(id)a4 workScheduler:(id)a5;
- (id)renderedLikenessesForContacts:(id)a3 withBadges:(id)a4 scope:(id)a5 workScheduler:(id)a6;
- (id)startCacheEntryWithObservable:(id)a3 contacts:(id)a4 scope:(id)a5;
- (void)addDelegate:(id)a3;
- (void)dealloc;
- (void)updateContactsWithIdentifiers:(id)a3;
@end

@implementation _CNUICachingLikenessRenderer

- (_CNUICachingLikenessRenderer)initWithLikenessRenderer:(id)a3 schedulerProvider:(id)a4 capacity:(unint64_t)a5 shouldRequireMainThread:(BOOL)a6
{
  v6 = a6;
  v10 = MEMORY[0x1E695CE18];
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(v10);
  v14 = [(_CNUICachingLikenessRenderer *)self initWithLikenessRenderer:v12 schedulerProvider:v11 capacity:a5 shouldRequireMainThread:v6 contactStore:v13];

  return v14;
}

- (_CNUICachingLikenessRenderer)initWithLikenessRenderer:(id)a3 schedulerProvider:(id)a4 capacity:(unint64_t)a5 shouldRequireMainThread:(BOOL)a6 contactStore:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v28.receiver = self;
  v28.super_class = _CNUICachingLikenessRenderer;
  v16 = [(_CNUICachingLikenessRenderer *)&v28 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_schedulerProvider, a4);
    v18 = [objc_opt_class() createMainThreadSchedulerProviderWithSchedulerProvider:v14];
    mainThreadSchedulerProvider = v17->_mainThreadSchedulerProvider;
    v17->_mainThreadSchedulerProvider = v18;

    objc_storeStrong(&v17->_renderer, a3);
    v20 = [[_CNUILikenessImageCache alloc] initWithCapacity:a5 hasContactStore:v15 != 0];
    imageCache = v17->_imageCache;
    v17->_imageCache = v20;

    v22 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    delegates = v17->_delegates;
    v17->_delegates = v22;

    v17->_shouldRequireMainThread = a6;
    if (v15)
    {
      v24 = [[CNAvatarCacheChangeListener alloc] initWithContactStore:v15 delegate:v17];
      changeHistoryListener = v17->_changeHistoryListener;
      v17->_changeHistoryListener = v24;

      [(CNAvatarCacheChangeListener *)v17->_changeHistoryListener start];
    }

    v26 = v17;
  }

  return v17;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E695C3D8] object:0];

  v4.receiver = self;
  v4.super_class = _CNUICachingLikenessRenderer;
  [(_CNUICachingLikenessRenderer *)&v4 dealloc];
}

+ (id)createMainThreadSchedulerProviderWithSchedulerProvider:(id)a3
{
  v3 = a3;
  v4 = [v3 mainThreadScheduler];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87___CNUICachingLikenessRenderer_createMainThreadSchedulerProviderWithSchedulerProvider___block_invoke;
  aBlock[3] = &unk_1E76E89B0;
  v5 = v4;
  v28 = v5;
  v6 = _Block_copy(aBlock);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __87___CNUICachingLikenessRenderer_createMainThreadSchedulerProviderWithSchedulerProvider___block_invoke_2;
  v25[3] = &unk_1E76E89B0;
  v26 = v5;
  v7 = v5;
  v8 = _Block_copy(v25);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __87___CNUICachingLikenessRenderer_createMainThreadSchedulerProviderWithSchedulerProvider___block_invoke_3;
  v23[3] = &unk_1E76E89B0;
  v9 = v3;
  v24 = v9;
  v10 = _Block_copy(v23);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __87___CNUICachingLikenessRenderer_createMainThreadSchedulerProviderWithSchedulerProvider___block_invoke_4;
  v21 = &unk_1E76E92A0;
  v22 = v9;
  v11 = v9;
  v12 = _Block_copy(&v18);
  v13 = objc_alloc(MEMORY[0x1E6996820]);
  v14 = [v11 inlineScheduler];
  v15 = [v11 immediateScheduler];
  v16 = [v13 initWithBackgroundScheduler:v7 mainThreadScheduler:v7 inlineScheduler:v14 immediateScheduler:v15 serialSchedulerProvider:v6 workloopSchedulerProvider:v8 synchronousSerialSchedulerProvider:v10 readerWriterSchedulerProvider:{v12, v18, v19, v20, v21}];

  return v16;
}

- (id)renderedLikenessesForContacts:(id)a3 withBadges:(id)a4 scope:(id)a5 workScheduler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [[CNUILikenessFingerprint alloc] initWithContacts:v10 badges:v11 scope:v12 isResolutionIndependent:0];
  v15 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [_CNUICachingLikenessRenderer renderedLikenessesForContacts:v10 withBadges:v12 scope:v15 workScheduler:?];
  }

  v16 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [_CNUICachingLikenessRenderer renderedLikenessesForContacts:v14 withBadges:v16 scope:? workScheduler:?];
  }

  v17 = [(_CNUICachingLikenessRenderer *)self imageCache];
  v18 = [v17 lock];
  v26 = v14;
  v27 = v10;
  v28 = v12;
  v29 = v11;
  v30 = v13;
  v19 = v13;
  v20 = v11;
  v21 = v12;
  v22 = v10;
  v23 = v14;
  v24 = CNResultWithLock();

  return v24;
}

- (id)initialRenderedLikenessesForContacts:(id)a3 withBadges:(id)a4 scope:(id)a5 workScheduler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(_CNUICachingLikenessRenderer *)self renderer];
  v15 = [v14 renderedLikenessesForContacts:v13 withBadges:v12 scope:v11 workScheduler:v10];

  return v15;
}

- (id)startCacheEntryWithObservable:(id)a3 contacts:(id)a4 scope:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [_CNUICachingLikenessRendererReplaySubject alloc];
  v12 = [(_CNUICachingLikenessRenderer *)self mainThreadSchedulerProvider];
  v13 = [(CNReplaySubject *)v11 initWithCapacity:1 schedulerProvider:v12];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__9;
  v22 = __Block_byref_object_dispose__9;
  v23 = [v8 subscribe:v13];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77___CNUICachingLikenessRenderer_startCacheEntryWithObservable_contacts_scope___block_invoke;
  v17[3] = &unk_1E76E79E0;
  v17[4] = &v18;
  v14 = [(_CNUICachingLikenessRendererReplaySubject *)v13 doOnTerminate:v17];
  v15 = [CNUIRenderedLikenessCacheEntry entryWithObservable:v14 token:v19[5] contacts:v9 scope:v10];

  _Block_object_dispose(&v18, 8);

  return v15;
}

- (id)renderedLikenessForBadge:(id)a3 scope:(id)a4 workScheduler:(id)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [CNUILikenessFingerprint alloc];
  v26[0] = v8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v13 = [(CNUILikenessFingerprint *)v11 initWithContacts:MEMORY[0x1E695E0F0] badges:v12 scope:v9 isResolutionIndependent:0];

  v14 = [(_CNUICachingLikenessRenderer *)self imageCache];
  v15 = [v14 lock];
  v22 = v13;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v16 = v10;
  v17 = v9;
  v18 = v8;
  v19 = v13;
  v20 = CNResultWithLock();

  return v20;
}

- (id)loadingPlaceholderForContactCount:(unint64_t)a3 scope:(id)a4
{
  v6 = a4;
  v7 = [(_CNUICachingLikenessRenderer *)self renderer];
  v8 = [v7 loadingPlaceholderForContactCount:a3 scope:v6];

  return v8;
}

- (id)renderedBasicMonogramFromString:(id)a3 scope:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_CNUICachingLikenessRenderer *)self renderer];
  v9 = [v8 renderedBasicMonogramFromString:v7 scope:v6];

  return v9;
}

- (id)renderedBasicMonogramForString:(id)a3 color:(id)a4 scope:(id)a5 prohibitedSources:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = self;
  v13 = CNUnimplementedMethodException();
  objc_exception_throw(v13);
}

- (void)updateContactsWithIdentifiers:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(_CNUICachingLikenessRenderer *)self delegates];
    v6 = [v5 copy];

    v7 = [(_CNUICachingLikenessRenderer *)self imageCache];
    [v7 invalidateCacheEntriesContainingIdentifiers:v4];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 avatarCacheDidUpdateForIdentifiers:{v4, v14}];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v8 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A31E6000, v8, OS_LOG_TYPE_INFO, "No changes to process", buf, 2u);
    }
  }
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  v5 = [(_CNUICachingLikenessRenderer *)self delegates];
  [v5 addPointer:v4];
}

- (void)renderedLikenessesForContacts:(os_log_t)log withBadges:scope:workScheduler:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1A31E6000, log, OS_LOG_TYPE_DEBUG, "[LikenessCachingRenderer] New Request for %@, %@", &v3, 0x16u);
}

- (void)renderedLikenessesForContacts:(uint64_t)a1 withBadges:(NSObject *)a2 scope:workScheduler:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_DEBUG, "[LikenessCachingRenderer] Cache key: %@", &v2, 0xCu);
}

@end