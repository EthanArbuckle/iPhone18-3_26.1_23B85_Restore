@interface PKAutomaticPassPresentationSuppressor
+ (id)sharedInstance;
- (BOOL)isSuppressing;
- (PKAutomaticPassPresentationSuppressor)init;
- (unint64_t)requestSuppressionWithResponseHandler:(id)a3;
- (void)_acquireSuppressionAssertionIfNeededWithCompletion:(id)a3;
- (void)_acquireSuppressionAssertionWithCompletion:(id)a3;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)dealloc;
- (void)endSuppressionWithRequestToken:(unint64_t)a3;
@end

@implementation PKAutomaticPassPresentationSuppressor

+ (id)sharedInstance
{
  if (qword_1ED6D1E68 != -1)
  {
    dispatch_once(&qword_1ED6D1E68, &__block_literal_global_147);
  }

  v3 = _MergedGlobals_241;

  return v3;
}

void __55__PKAutomaticPassPresentationSuppressor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PKAutomaticPassPresentationSuppressor);
  v1 = _MergedGlobals_241;
  _MergedGlobals_241 = v0;
}

- (PKAutomaticPassPresentationSuppressor)init
{
  v9.receiver = self;
  v9.super_class = PKAutomaticPassPresentationSuppressor;
  v2 = [(PKAutomaticPassPresentationSuppressor *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.passkit.automatic-pass-presentation-suppression", 0);
    suppressorQueue = v2->_suppressorQueue;
    v2->_suppressorQueue = v3;

    v5 = v2->_suppressorQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__PKAutomaticPassPresentationSuppressor_init__block_invoke;
    block[3] = &unk_1E79C4E28;
    v8 = v2;
    dispatch_sync(v5, block);
  }

  return v2;
}

void __45__PKAutomaticPassPresentationSuppressor_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  *(*(a1 + 32) + 40) = 1;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:sel__applicationDidEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  [v5 addObserver:*(a1 + 32) selector:sel__applicationWillEnterForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
  +[PKAssertion preheatConnection];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(PKAssertion *)self->_suppressionAssertion setInvalidationHandler:0];
  [(PKAssertion *)self->_suppressionAssertion invalidate];
  v4.receiver = self;
  v4.super_class = PKAutomaticPassPresentationSuppressor;
  [(PKAutomaticPassPresentationSuppressor *)&v4 dealloc];
}

- (unint64_t)requestSuppressionWithResponseHandler:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (PKNearFieldRadioIsAvailable())
  {
    suppressorQueue = self->_suppressorQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__PKAutomaticPassPresentationSuppressor_requestSuppressionWithResponseHandler___block_invoke;
    block[3] = &unk_1E79C8A88;
    block[4] = self;
    block[5] = &v13;
    dispatch_sync(suppressorQueue, block);
    [(PKAutomaticPassPresentationSuppressor *)self _acquireSuppressionAssertionIfNeededWithCompletion:v4];
  }

  else if (v4)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__PKAutomaticPassPresentationSuppressor_requestSuppressionWithResponseHandler___block_invoke_2;
    v10[3] = &unk_1E79C4428;
    v11 = v4;
    v7 = v10;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __dispatch_async_ar_block_invoke_13;
    v17[3] = &unk_1E79C4428;
    v18 = v7;
    dispatch_async(v6, v17);
  }

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __79__PKAutomaticPassPresentationSuppressor_requestSuppressionWithResponseHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = v2 + 1;
  *(*(*(a1 + 40) + 8) + 24) = v2;
  return [*(*(a1 + 32) + 16) addIndex:*(*(*(a1 + 40) + 8) + 24)];
}

- (void)endSuppressionWithRequestToken:(unint64_t)a3
{
  suppressorQueue = self->_suppressorQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__PKAutomaticPassPresentationSuppressor_endSuppressionWithRequestToken___block_invoke;
  v5[3] = &unk_1E79CAED8;
  v5[4] = self;
  v5[5] = a3;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_13;
  block[3] = &unk_1E79C4428;
  v7 = v4;
  dispatch_async(suppressorQueue, block);
}

uint64_t __72__PKAutomaticPassPresentationSuppressor_endSuppressionWithRequestToken___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeIndex:*(a1 + 40)];
  result = [*(*(a1 + 32) + 16) count];
  if (!result)
  {
    v3 = *(*(a1 + 32) + 8);

    return [v3 invalidate];
  }

  return result;
}

- (BOOL)isSuppressing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  suppressorQueue = self->_suppressorQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PKAutomaticPassPresentationSuppressor_isSuppressing__block_invoke;
  v5[3] = &unk_1E79C8A88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(suppressorQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_applicationDidEnterBackground:(id)a3
{
  suppressorQueue = self->_suppressorQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__PKAutomaticPassPresentationSuppressor__applicationDidEnterBackground___block_invoke;
  v5[3] = &unk_1E79C4E28;
  v5[4] = self;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_13;
  block[3] = &unk_1E79C4428;
  v7 = v4;
  dispatch_async(suppressorQueue, block);
}

void __72__PKAutomaticPassPresentationSuppressor__applicationDidEnterBackground___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = [MEMORY[0x1E695DF00] date];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;
}

- (void)_applicationWillEnterForeground:(id)a3
{
  suppressorQueue = self->_suppressorQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__PKAutomaticPassPresentationSuppressor__applicationWillEnterForeground___block_invoke;
  v5[3] = &unk_1E79C4E28;
  v5[4] = self;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_13;
  block[3] = &unk_1E79C4428;
  v7 = v4;
  dispatch_async(suppressorQueue, block);
}

void __73__PKAutomaticPassPresentationSuppressor__applicationWillEnterForeground___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 24))
  {
    goto LABEL_10;
  }

  v3 = *(v2 + 32);
  if (!v3)
  {
    goto LABEL_10;
  }

  [v3 timeIntervalSinceNow];
  if (fabs(v4) >= 86400.0)
  {
    v2 = *(a1 + 32);
LABEL_10:
    [*(v2 + 16) removeAllIndexes];
    goto LABEL_11;
  }

  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Re-Acquiring Assertion as Suppression Still Relevant", v10, 2u);
  }

  if ([*(*(a1 + 32) + 24) count])
  {
    [*(*(a1 + 32) + 16) removeAllIndexes];
    [*(*(a1 + 32) + 16) addIndexes:*(*(a1 + 32) + 24)];
  }

  [*(a1 + 32) _acquireSuppressionAssertionIfNeededWithCompletion:0];
LABEL_11:
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = 0;
}

- (void)_acquireSuppressionAssertionIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  suppressionAssertion = self->_suppressionAssertion;
  if (suppressionAssertion)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __92__PKAutomaticPassPresentationSuppressor__acquireSuppressionAssertionIfNeededWithCompletion___block_invoke;
    v7[3] = &unk_1E79C4888;
    v7[4] = self;
    v8 = v4;
    [PKAssertion isAssertionValid:suppressionAssertion completion:v7];
  }

  else
  {
    [(PKAutomaticPassPresentationSuppressor *)self _acquireSuppressionAssertionWithCompletion:v4];
  }
}

uint64_t __92__PKAutomaticPassPresentationSuppressor__acquireSuppressionAssertionIfNeededWithCompletion___block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    return [*(a1 + 32) _acquireSuppressionAssertionWithCompletion:*(a1 + 40)];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 4);
  }

  return result;
}

- (void)_acquireSuppressionAssertionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Automatic Pass Presentation Suppression API from %@", v6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__PKAutomaticPassPresentationSuppressor__acquireSuppressionAssertionWithCompletion___block_invoke;
  v9[3] = &unk_1E79DA620;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [PKAssertion acquireAssertionOfType:5 withReason:v7 completion:v9];
}

void __84__PKAutomaticPassPresentationSuppressor__acquireSuppressionAssertionWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__PKAutomaticPassPresentationSuppressor__acquireSuppressionAssertionWithCompletion___block_invoke_2;
  v13[3] = &unk_1E79C4EF0;
  v14 = v5;
  v15 = v8;
  v16 = v6;
  v17 = v7;
  v10 = v13;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_13;
  block[3] = &unk_1E79C4428;
  v19 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

uint64_t __84__PKAutomaticPassPresentationSuppressor__acquireSuppressionAssertionWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);
  if (v2)
  {
    if ([v3 count])
    {
      objc_initWeak(&location, *(a1 + 40));
      [*(*(a1 + 40) + 8) setInvalidationHandler:0];
      [*(*(a1 + 40) + 8) invalidate];
      objc_storeStrong((*(a1 + 40) + 8), *(a1 + 32));
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __84__PKAutomaticPassPresentationSuppressor__acquireSuppressionAssertionWithCompletion___block_invoke_3;
      v7[3] = &unk_1E79DA5F8;
      v4 = *(a1 + 32);
      v7[4] = *(a1 + 40);
      objc_copyWeak(&v8, &location);
      [v4 setInvalidationHandler:v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
      v5 = 4;
    }

    else
    {
      [*(a1 + 32) invalidate];
      v5 = 3;
    }
  }

  else
  {
    [v3 removeAllIndexes];
    if ([*(a1 + 48) code] == -1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, v5);
  }

  return result;
}

void __84__PKAutomaticPassPresentationSuppressor__acquireSuppressionAssertionWithCompletion___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __84__PKAutomaticPassPresentationSuppressor__acquireSuppressionAssertionWithCompletion___block_invoke_4;
  v3[3] = &unk_1E79C9D80;
  objc_copyWeak(&v4, (a1 + 40));
  v2 = v3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_13;
  block[3] = &unk_1E79C4428;
  v6 = v2;
  dispatch_async(v1, block);

  objc_destroyWeak(&v4);
}

void __84__PKAutomaticPassPresentationSuppressor__acquireSuppressionAssertionWithCompletion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[2] removeAllIndexes];
    v2 = v3[1];
    v3[1] = 0;

    WeakRetained = v3;
  }
}

@end