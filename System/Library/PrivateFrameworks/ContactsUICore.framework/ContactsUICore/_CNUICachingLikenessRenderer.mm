@interface _CNUICachingLikenessRenderer
+ (id)createMainThreadSchedulerProviderWithSchedulerProvider:(id)provider;
- (_CNUICachingLikenessRenderer)initWithLikenessRenderer:(id)renderer schedulerProvider:(id)provider capacity:(unint64_t)capacity shouldRequireMainThread:(BOOL)thread;
- (_CNUICachingLikenessRenderer)initWithLikenessRenderer:(id)renderer schedulerProvider:(id)provider capacity:(unint64_t)capacity shouldRequireMainThread:(BOOL)thread contactStore:(id)store;
- (id)initialRenderedLikenessesForContacts:(id)contacts withBadges:(id)badges scope:(id)scope workScheduler:(id)scheduler;
- (id)loadingPlaceholderForContactCount:(unint64_t)count scope:(id)scope;
- (id)renderedBasicMonogramForString:(id)string color:(id)color scope:(id)scope prohibitedSources:(int64_t)sources;
- (id)renderedBasicMonogramFromString:(id)string scope:(id)scope;
- (id)renderedLikenessForBadge:(id)badge scope:(id)scope workScheduler:(id)scheduler;
- (id)renderedLikenessesForContacts:(id)contacts withBadges:(id)badges scope:(id)scope workScheduler:(id)scheduler;
- (id)startCacheEntryWithObservable:(id)observable contacts:(id)contacts scope:(id)scope;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)updateContactsWithIdentifiers:(id)identifiers;
@end

@implementation _CNUICachingLikenessRenderer

- (_CNUICachingLikenessRenderer)initWithLikenessRenderer:(id)renderer schedulerProvider:(id)provider capacity:(unint64_t)capacity shouldRequireMainThread:(BOOL)thread
{
  threadCopy = thread;
  v10 = MEMORY[0x1E695CE18];
  providerCopy = provider;
  rendererCopy = renderer;
  v13 = objc_alloc_init(v10);
  v14 = [(_CNUICachingLikenessRenderer *)self initWithLikenessRenderer:rendererCopy schedulerProvider:providerCopy capacity:capacity shouldRequireMainThread:threadCopy contactStore:v13];

  return v14;
}

- (_CNUICachingLikenessRenderer)initWithLikenessRenderer:(id)renderer schedulerProvider:(id)provider capacity:(unint64_t)capacity shouldRequireMainThread:(BOOL)thread contactStore:(id)store
{
  rendererCopy = renderer;
  providerCopy = provider;
  storeCopy = store;
  v28.receiver = self;
  v28.super_class = _CNUICachingLikenessRenderer;
  v16 = [(_CNUICachingLikenessRenderer *)&v28 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_schedulerProvider, provider);
    v18 = [objc_opt_class() createMainThreadSchedulerProviderWithSchedulerProvider:providerCopy];
    mainThreadSchedulerProvider = v17->_mainThreadSchedulerProvider;
    v17->_mainThreadSchedulerProvider = v18;

    objc_storeStrong(&v17->_renderer, renderer);
    v20 = [[_CNUILikenessImageCache alloc] initWithCapacity:capacity hasContactStore:storeCopy != 0];
    imageCache = v17->_imageCache;
    v17->_imageCache = v20;

    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    delegates = v17->_delegates;
    v17->_delegates = weakObjectsPointerArray;

    v17->_shouldRequireMainThread = thread;
    if (storeCopy)
    {
      v24 = [[CNAvatarCacheChangeListener alloc] initWithContactStore:storeCopy delegate:v17];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E695C3D8] object:0];

  v4.receiver = self;
  v4.super_class = _CNUICachingLikenessRenderer;
  [(_CNUICachingLikenessRenderer *)&v4 dealloc];
}

+ (id)createMainThreadSchedulerProviderWithSchedulerProvider:(id)provider
{
  providerCopy = provider;
  mainThreadScheduler = [providerCopy mainThreadScheduler];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87___CNUICachingLikenessRenderer_createMainThreadSchedulerProviderWithSchedulerProvider___block_invoke;
  aBlock[3] = &unk_1E76E89B0;
  v5 = mainThreadScheduler;
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
  v9 = providerCopy;
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
  inlineScheduler = [v11 inlineScheduler];
  immediateScheduler = [v11 immediateScheduler];
  v16 = [v13 initWithBackgroundScheduler:v7 mainThreadScheduler:v7 inlineScheduler:inlineScheduler immediateScheduler:immediateScheduler serialSchedulerProvider:v6 workloopSchedulerProvider:v8 synchronousSerialSchedulerProvider:v10 readerWriterSchedulerProvider:{v12, v18, v19, v20, v21}];

  return v16;
}

- (id)renderedLikenessesForContacts:(id)contacts withBadges:(id)badges scope:(id)scope workScheduler:(id)scheduler
{
  contactsCopy = contacts;
  badgesCopy = badges;
  scopeCopy = scope;
  schedulerCopy = scheduler;
  v14 = [[CNUILikenessFingerprint alloc] initWithContacts:contactsCopy badges:badgesCopy scope:scopeCopy isResolutionIndependent:0];
  v15 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [_CNUICachingLikenessRenderer renderedLikenessesForContacts:contactsCopy withBadges:scopeCopy scope:v15 workScheduler:?];
  }

  v16 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [_CNUICachingLikenessRenderer renderedLikenessesForContacts:v14 withBadges:v16 scope:? workScheduler:?];
  }

  imageCache = [(_CNUICachingLikenessRenderer *)self imageCache];
  lock = [imageCache lock];
  v26 = v14;
  v27 = contactsCopy;
  v28 = scopeCopy;
  v29 = badgesCopy;
  v30 = schedulerCopy;
  v19 = schedulerCopy;
  v20 = badgesCopy;
  v21 = scopeCopy;
  v22 = contactsCopy;
  v23 = v14;
  v24 = CNResultWithLock();

  return v24;
}

- (id)initialRenderedLikenessesForContacts:(id)contacts withBadges:(id)badges scope:(id)scope workScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  scopeCopy = scope;
  badgesCopy = badges;
  contactsCopy = contacts;
  renderer = [(_CNUICachingLikenessRenderer *)self renderer];
  v15 = [renderer renderedLikenessesForContacts:contactsCopy withBadges:badgesCopy scope:scopeCopy workScheduler:schedulerCopy];

  return v15;
}

- (id)startCacheEntryWithObservable:(id)observable contacts:(id)contacts scope:(id)scope
{
  observableCopy = observable;
  contactsCopy = contacts;
  scopeCopy = scope;
  v11 = [_CNUICachingLikenessRendererReplaySubject alloc];
  mainThreadSchedulerProvider = [(_CNUICachingLikenessRenderer *)self mainThreadSchedulerProvider];
  v13 = [(CNReplaySubject *)v11 initWithCapacity:1 schedulerProvider:mainThreadSchedulerProvider];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__9;
  v22 = __Block_byref_object_dispose__9;
  v23 = [observableCopy subscribe:v13];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77___CNUICachingLikenessRenderer_startCacheEntryWithObservable_contacts_scope___block_invoke;
  v17[3] = &unk_1E76E79E0;
  v17[4] = &v18;
  v14 = [(_CNUICachingLikenessRendererReplaySubject *)v13 doOnTerminate:v17];
  v15 = [CNUIRenderedLikenessCacheEntry entryWithObservable:v14 token:v19[5] contacts:contactsCopy scope:scopeCopy];

  _Block_object_dispose(&v18, 8);

  return v15;
}

- (id)renderedLikenessForBadge:(id)badge scope:(id)scope workScheduler:(id)scheduler
{
  v26[1] = *MEMORY[0x1E69E9840];
  badgeCopy = badge;
  scopeCopy = scope;
  schedulerCopy = scheduler;
  v11 = [CNUILikenessFingerprint alloc];
  v26[0] = badgeCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v13 = [(CNUILikenessFingerprint *)v11 initWithContacts:MEMORY[0x1E695E0F0] badges:v12 scope:scopeCopy isResolutionIndependent:0];

  imageCache = [(_CNUICachingLikenessRenderer *)self imageCache];
  lock = [imageCache lock];
  v22 = v13;
  v23 = badgeCopy;
  v24 = scopeCopy;
  v25 = schedulerCopy;
  v16 = schedulerCopy;
  v17 = scopeCopy;
  v18 = badgeCopy;
  v19 = v13;
  v20 = CNResultWithLock();

  return v20;
}

- (id)loadingPlaceholderForContactCount:(unint64_t)count scope:(id)scope
{
  scopeCopy = scope;
  renderer = [(_CNUICachingLikenessRenderer *)self renderer];
  v8 = [renderer loadingPlaceholderForContactCount:count scope:scopeCopy];

  return v8;
}

- (id)renderedBasicMonogramFromString:(id)string scope:(id)scope
{
  scopeCopy = scope;
  stringCopy = string;
  renderer = [(_CNUICachingLikenessRenderer *)self renderer];
  v9 = [renderer renderedBasicMonogramFromString:stringCopy scope:scopeCopy];

  return v9;
}

- (id)renderedBasicMonogramForString:(id)string color:(id)color scope:(id)scope prohibitedSources:(int64_t)sources
{
  stringCopy = string;
  colorCopy = color;
  scopeCopy = scope;
  selfCopy = self;
  v13 = CNUnimplementedMethodException();
  objc_exception_throw(v13);
}

- (void)updateContactsWithIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    delegates = [(_CNUICachingLikenessRenderer *)self delegates];
    v6 = [delegates copy];

    imageCache = [(_CNUICachingLikenessRenderer *)self imageCache];
    [imageCache invalidateCacheEntriesContainingIdentifiers:identifiersCopy];

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
            [v13 avatarCacheDidUpdateForIdentifiers:{identifiersCopy, v14}];
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

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegates = [(_CNUICachingLikenessRenderer *)self delegates];
  [delegates addPointer:delegateCopy];
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