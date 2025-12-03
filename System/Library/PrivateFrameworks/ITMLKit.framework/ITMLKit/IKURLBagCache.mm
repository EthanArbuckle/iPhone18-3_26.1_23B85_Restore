@interface IKURLBagCache
+ (id)URLBagContext;
+ (id)sharedCache;
- (BOOL)isTrustedURL:(id)l;
- (IKURLBagCache)init;
- (id)_bagValueForKey:(id)key valueType:(unint64_t)type;
- (id)_urlForKey:(id)key;
- (id)valueForKey:(id)key;
- (void)_loadWithNotification:(BOOL)notification completion:(id)completion;
- (void)checkTrustStatusForURL:(id)l completion:(id)completion;
- (void)createSnapshotWithCompletion:(id)completion;
- (void)loadValueForKey:(id)key completion:(id)completion;
- (void)updateWithInvalidation:(BOOL)invalidation;
@end

@implementation IKURLBagCache

+ (id)sharedCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__IKURLBagCache_sharedCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCache_onceToken != -1)
  {
    dispatch_once(&sharedCache_onceToken, block);
  }

  v2 = sharedCache_inMemoryBagCache;

  return v2;
}

uint64_t __28__IKURLBagCache_sharedCache__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedCache_inMemoryBagCache = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (IKURLBagCache)init
{
  v9.receiver = self;
  v9.super_class = IKURLBagCache;
  v2 = [(IKURLBagCache *)&v9 init];
  if (v2)
  {
    v3 = MEMORY[0x277D69C88];
    uRLBagContext = [objc_opt_class() URLBagContext];
    v5 = [v3 URLBagForContext:uRLBagContext];
    urlBag = v2->_urlBag;
    v2->_urlBag = v5;

    v7 = ITMLKitGetLogObject(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [IKURLBagCache init];
    }

    [(IKURLBagCache *)v2 updateWithInvalidation:0];
  }

  return v2;
}

- (void)updateWithInvalidation:(BOOL)invalidation
{
  invalidationCopy = invalidation;
  v5 = ITMLKitGetLogObject(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [IKURLBagCache updateWithInvalidation:];
  }

  if (invalidationCopy)
  {
    urlBag = [(IKURLBagCache *)self urlBag];
    [urlBag invalidate];
  }

  [(IKURLBagCache *)self _loadWithNotification:1 completion:0];
}

- (void)_loadWithNotification:(BOOL)notification completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  urlBag = [(IKURLBagCache *)self urlBag];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__IKURLBagCache__loadWithNotification_completion___block_invoke;
  v9[3] = &unk_279799618;
  objc_copyWeak(&v11, &location);
  v8 = completionCopy;
  v10 = v8;
  notificationCopy = notification;
  [urlBag loadWithCompletionBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__IKURLBagCache__loadWithNotification_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_16;
  }

  v9 = v5 != 0;
  if (!v5)
  {
    v12 = ITMLKitGetLogObject(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __50__IKURLBagCache__loadWithNotification_completion___block_invoke_cold_1();
    }

    goto LABEL_9;
  }

  v10 = [WeakRetained existingDictionary];
  v11 = [v5 isEqualToDictionary:v10];

  if ((v11 & 1) == 0)
  {
    v13 = [v5 copy];
    v14 = v8[2];
    v8[2] = v13;

    v12 = ITMLKitGetLogObject(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_2549A4000, v12, OS_LOG_TYPE_INFO, "URL Bag is different. Replacing current existing dictionary...", v19, 2u);
    }

LABEL_9:

    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:
  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = [v8 existingDictionary];
    (*(v15 + 16))(v15, v16, v6);
  }

  if ((v9 & *(a1 + 48)) == 1)
  {
    v17 = ITMLKitGetLogObject(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __50__IKURLBagCache__loadWithNotification_completion___block_invoke_cold_2(v17);
    }

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 postNotificationName:@"IKURLBagCacheUpdatedNotification" object:v8];
  }

LABEL_16:
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v5 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__IKURLBagCache_valueForKey___block_invoke;
  v9[3] = &unk_279799640;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  [(IKURLBagCache *)self loadValueForKey:keyCopy completion:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __29__IKURLBagCache_valueForKey___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_urlForKey:(id)key
{
  v3 = [(IKURLBagCache *)self valueForKey:key];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)loadValueForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__IKURLBagCache_loadValueForKey_completion___block_invoke;
  v10[3] = &unk_279799668;
  v11 = keyCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = keyCopy;
  [(IKURLBagCache *)self _loadWithNotification:1 completion:v10];
}

void __44__IKURLBagCache_loadValueForKey_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 valueForKey:*(a1 + 32)];
  if (!v6)
  {
    v7 = ITMLKitGetLogObject(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __44__IKURLBagCache_loadValueForKey_completion___block_invoke_cold_1((a1 + 32));
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v5);
  }
}

- (BOOL)isTrustedURL:(id)l
{
  lCopy = l;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __30__IKURLBagCache_isTrustedURL___block_invoke;
  v8[3] = &unk_279799690;
  v10 = &v11;
  v6 = v5;
  v9 = v6;
  [(IKURLBagCache *)self checkTrustStatusForURL:lCopy completion:v8];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

- (void)checkTrustStatusForURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  urlBag = [(IKURLBagCache *)self urlBag];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__IKURLBagCache_checkTrustStatusForURL_completion___block_invoke;
  v11[3] = &unk_2797996B8;
  v12 = lCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = lCopy;
  [urlBag getTrustForURL:v10 completionBlock:v11];
}

void __51__IKURLBagCache_checkTrustStatusForURL_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = ITMLKitGetLogObject(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __51__IKURLBagCache_checkTrustStatusForURL_completion___block_invoke_cold_1(a1);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

+ (id)URLBagContext
{
  v2 = [MEMORY[0x277D69C90] contextWithBagType:0];
  currentDevice = [MEMORY[0x277D69A80] currentDevice];
  userAgent = [currentDevice userAgent];
  [v2 setValue:userAgent forHTTPHeaderField:*MEMORY[0x277D6A130]];

  return v2;
}

- (void)createSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__IKURLBagCache_createSnapshotWithCompletion___block_invoke;
  v6[3] = &unk_2797996E0;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(IKURLBagCache *)self _loadWithNotification:1 completion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __46__IKURLBagCache_createSnapshotWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v14 = ITMLKitGetLogObject(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __46__IKURLBagCache_createSnapshotWithCompletion___block_invoke_cold_3(v14);
    }

    goto LABEL_10;
  }

  if (!v5)
  {
    v14 = ITMLKitGetLogObject(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __46__IKURLBagCache_createSnapshotWithCompletion___block_invoke_cold_2();
    }

LABEL_10:

    v15 = *(a1 + 32);
    v8 = AMSError();
    (*(v15 + 16))(v15, 0, v8);
    goto LABEL_15;
  }

  v8 = objc_alloc_init(MEMORY[0x277CEE6A8]);
  [v8 setData:v5];
  v9 = [WeakRetained expirationDate];
  [v8 setExpirationDate:v9];

  v10 = [WeakRetained profile];
  [v8 setProfile:v10];

  v11 = [WeakRetained profileVersion];
  [v8 setProfileVersion:v11];

  v19 = 0;
  v12 = [v8 buildWithError:&v19];
  v13 = v19;
  if (v12)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v16 = ITMLKitGetLogObject(2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __46__IKURLBagCache_createSnapshotWithCompletion___block_invoke_cold_1();
    }

    v17 = *(a1 + 32);
    v18 = AMSError();
    (*(v17 + 16))(v17, 0, v18);
  }

LABEL_15:
}

- (id)_bagValueForKey:(id)key valueType:(unint64_t)type
{
  keyCopy = key;
  if (type == 5)
  {
    [(IKURLBagCache *)self _urlForKey:keyCopy];
  }

  else
  {
    [(IKURLBagCache *)self valueForKey:keyCopy];
  }
  v7 = ;
  if (v7)
  {
    v8 = [MEMORY[0x277CEE418] frozenBagValueWithKey:keyCopy value:v7 valueType:type];
  }

  else
  {
    v9 = AMSErrorWithFormat();
    v8 = [MEMORY[0x277CEE418] failingBagValueWithKey:keyCopy valueType:type error:{v9, keyCopy}];
  }

  return v8;
}

@end