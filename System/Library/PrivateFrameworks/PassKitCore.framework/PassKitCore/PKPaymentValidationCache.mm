@interface PKPaymentValidationCache
+ (id)sharedInstance;
- (BOOL)_hasCacheResult:(BOOL *)result forKey:(id)key;
- (BOOL)getResultForKey:(id)key orCompute:(id)compute;
- (PKPaymentValidationCache)init;
- (void)_setCacheResult:(BOOL)result forKey:(id)key;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PKPaymentValidationCache

+ (id)sharedInstance
{
  if (qword_1ED6D1830 != -1)
  {
    dispatch_once(&qword_1ED6D1830, &__block_literal_global_28);
  }

  v3 = _MergedGlobals_196;

  return v3;
}

void __42__PKPaymentValidationCache_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PKPaymentValidationCache);
  v1 = _MergedGlobals_196;
  _MergedGlobals_196 = v0;
}

- (PKPaymentValidationCache)init
{
  v17.receiver = self;
  v17.super_class = PKPaymentValidationCache;
  v2 = [(PKPaymentValidationCache *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cache = v2->_cache;
    v2->_cache = v3;

    [(NSCache *)v2->_cache setCountLimit:100];
    v5 = dispatch_queue_create("com.apple.passkit.paymentvalidationcache", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v5;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __32__PKPaymentValidationCache_init__block_invoke;
    v15[3] = &unk_1E79CA148;
    v8 = v2;
    v16 = v8;
    v9 = [defaultCenter addObserverForName:@"PKPassLibraryDidChangeNotification" object:0 queue:0 usingBlock:v15];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __32__PKPaymentValidationCache_init__block_invoke_2;
    v13[3] = &unk_1E79CA148;
    v14 = v8;
    v11 = [defaultCenter2 addObserverForName:@"PKPassLibraryRemotePaymentPassesDidChange" object:0 queue:0 usingBlock:v13];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKPaymentValidationCache;
  [(PKPaymentValidationCache *)&v4 dealloc];
}

- (BOOL)getResultForKey:(id)key orCompute:(id)compute
{
  keyCopy = key;
  computeCopy = compute;
  v8 = computeCopy;
  v9 = 0;
  if (keyCopy && computeCopy)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    accessQueue = self->_accessQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__PKPaymentValidationCache_getResultForKey_orCompute___block_invoke;
    v12[3] = &unk_1E79CA170;
    v12[4] = self;
    v15 = &v16;
    v13 = keyCopy;
    v14 = v8;
    dispatch_sync(accessQueue, v12);
    v9 = *(v17 + 24);

    _Block_object_dispose(&v16, 8);
  }

  return v9 & 1;
}

void __54__PKPaymentValidationCache_getResultForKey_orCompute___block_invoke(uint64_t a1)
{
  *&v9[5] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _hasCacheResult:*(*(a1 + 56) + 8) + 24 forKey:*(a1 + 40)];
  v3 = PKLogFacilityTypeGetObject(8uLL);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(*(*(a1 + 56) + 8) + 24);
      v6 = *(a1 + 40);
      v8 = 67109378;
      v9[0] = v5;
      LOWORD(v9[1]) = 2112;
      *(&v9[1] + 2) = v6;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPaymentValidationCache: Cache hit with result: %d for key %@", &v8, 0x12u);
    }
  }

  else
  {
    if (v4)
    {
      v7 = *(a1 + 40);
      v8 = 138412290;
      *v9 = v7;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPaymentValidationCache: Computing new result for key %@", &v8, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = (*(*(a1 + 48) + 16))();
    [*(a1 + 32) _setCacheResult:*(*(*(a1 + 56) + 8) + 24) forKey:*(a1 + 40)];
  }
}

- (void)_setCacheResult:(BOOL)result forKey:(id)key
{
  resultCopy = result;
  keyCopy = key;
  v7 = [[PKPaymentValidationCacheEntry alloc] initWithResult:resultCopy];
  [(NSCache *)self->_cache setObject:v7 forKey:keyCopy];
}

- (BOOL)_hasCacheResult:(BOOL *)result forKey:(id)key
{
  v17 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = [(NSCache *)self->_cache objectForKey:keyCopy];
  v8 = v7;
  if (!v7)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_10;
  }

  if ([v7 isExpiredWith:10.0])
  {
    v9 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      [v8 elapsedTime];
      v13 = 134218242;
      v14 = v10;
      v15 = 2112;
      v16 = keyCopy;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKPaymentValidationCache: Found expired cache entry (%.2f seconds old) for key %@", &v13, 0x16u);
    }

    [(NSCache *)self->_cache removeObjectForKey:keyCopy];
    goto LABEL_6;
  }

  if (result)
  {
    *result = [v8 result];
  }

  v11 = 1;
LABEL_10:

  return v11;
}

- (void)invalidate
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PKPaymentValidationCache_invalidate__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

uint64_t __38__PKPaymentValidationCache_invalidate__block_invoke(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKPaymentValidationCache: Invalidating entire cache", v4, 2u);
  }

  return [*(*(a1 + 32) + 8) removeAllObjects];
}

@end