@interface NPKDoubleClickClientSuppressor
+ (BOOL)isSuppressingDoubleClickClients;
+ (id)sharedInstance;
+ (unint64_t)requestDoubleClickClientSuppressionWithResponseHandler:(id)a3;
+ (void)endDoubleClickClientSuppressionWithRequestToken:(unint64_t)a3;
- (BOOL)isSuppressingDoubleClickClients;
- (NPKDoubleClickClientSuppressor)init;
- (unint64_t)requestDoubleClickClientSuppressionWithResponseHandler:(id)a3;
- (void)_acquireSuppressionAssertionIfNeededWithCompletion:(id)a3;
- (void)_acquireSuppressionAssertionWithCompletion:(id)a3;
- (void)_releaseSuppressionAssertion;
- (void)dealloc;
- (void)endDoubleClickClientSuppressionWithRequestToken:(unint64_t)a3;
@end

@implementation NPKDoubleClickClientSuppressor

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__NPKDoubleClickClientSuppressor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_5 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_5, block);
  }

  v2 = sharedInstance_sharedInstance_3;

  return v2;
}

void __48__NPKDoubleClickClientSuppressor_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_3;
  sharedInstance_sharedInstance_3 = v1;
}

- (NPKDoubleClickClientSuppressor)init
{
  v8.receiver = self;
  v8.super_class = NPKDoubleClickClientSuppressor;
  v2 = [(NPKDoubleClickClientSuppressor *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.nanopasskit.NPKDoubleClickClientSuppressor", MEMORY[0x277D85CD8]);
    suppressorQueue = v2->_suppressorQueue;
    v2->_suppressorQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
    suppressionRequestTokens = v2->_suppressionRequestTokens;
    v2->_suppressionRequestTokens = v5;

    v2->_nextSuppressionRequestToken = 1;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(NPKDoubleClickClientSuppressor *)self suppressorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__NPKDoubleClickClientSuppressor_dealloc__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_sync(v3, block);

  v4.receiver = self;
  v4.super_class = NPKDoubleClickClientSuppressor;
  [(NPKDoubleClickClientSuppressor *)&v4 dealloc];
}

void __41__NPKDoubleClickClientSuppressor_dealloc__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) suppressionAssertion];

  if (v2)
  {
    v3 = *(a1 + 32);

    [v3 _releaseSuppressionAssertion];
  }
}

+ (unint64_t)requestDoubleClickClientSuppressionWithResponseHandler:(id)a3
{
  v3 = a3;
  v4 = +[NPKDoubleClickClientSuppressor sharedInstance];
  v5 = [v4 requestDoubleClickClientSuppressionWithResponseHandler:v3];

  return v5;
}

+ (void)endDoubleClickClientSuppressionWithRequestToken:(unint64_t)a3
{
  v4 = +[NPKDoubleClickClientSuppressor sharedInstance];
  [v4 endDoubleClickClientSuppressionWithRequestToken:a3];
}

+ (BOOL)isSuppressingDoubleClickClients
{
  v2 = +[NPKDoubleClickClientSuppressor sharedInstance];
  v3 = [v2 isSuppressingDoubleClickClients];

  return v3;
}

- (unint64_t)requestDoubleClickClientSuppressionWithResponseHandler:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  objc_initWeak(&location, self);
  v5 = [(NPKDoubleClickClientSuppressor *)self suppressorQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__NPKDoubleClickClientSuppressor_requestDoubleClickClientSuppressionWithResponseHandler___block_invoke;
  v9[3] = &unk_279948D80;
  objc_copyWeak(&v12, &location);
  v10 = v4;
  v11 = &v14;
  v6 = v4;
  dispatch_barrier_sync(v5, v9);

  v7 = v15[3];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v14, 8);
  return v7;
}

void __89__NPKDoubleClickClientSuppressor_requestDoubleClickClientSuppressionWithResponseHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained nextSuppressionRequestToken];
    [v5 setNextSuppressionRequestToken:v3 + 1];
    *(*(*(a1 + 40) + 8) + 24) = v3;
    v4 = [v5 suppressionRequestTokens];
    [v4 addIndex:*(*(*(a1 + 40) + 8) + 24)];

    [v5 _acquireSuppressionAssertionIfNeededWithCompletion:*(a1 + 32)];
    WeakRetained = v5;
  }
}

- (void)endDoubleClickClientSuppressionWithRequestToken:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5 = [(NPKDoubleClickClientSuppressor *)self suppressorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NPKDoubleClickClientSuppressor_endDoubleClickClientSuppressionWithRequestToken___block_invoke;
  block[3] = &unk_279948DA8;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  dispatch_sync(v5, block);

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __82__NPKDoubleClickClientSuppressor_endDoubleClickClientSuppressionWithRequestToken___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained suppressionRequestTokens];
    [v3 removeIndex:*(a1 + 40)];

    v4 = [v6 suppressionRequestTokens];
    v5 = [v4 count];

    WeakRetained = v6;
    if (!v5)
    {
      [v6 _releaseSuppressionAssertion];
      WeakRetained = v6;
    }
  }
}

- (BOOL)isSuppressingDoubleClickClients
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  objc_initWeak(&location, self);
  v3 = [(NPKDoubleClickClientSuppressor *)self suppressorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NPKDoubleClickClientSuppressor_isSuppressingDoubleClickClients__block_invoke;
  block[3] = &unk_279948DD0;
  objc_copyWeak(&v6, &location);
  block[4] = &v8;
  dispatch_sync(v3, block);

  LOBYTE(v3) = *(v9 + 24);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);
  return v3;
}

void __65__NPKDoubleClickClientSuppressor_isSuppressingDoubleClickClients__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained suppressionRequestTokens];

    WeakRetained = v5;
    if (v3)
    {
      v4 = [v5 suppressionRequestTokens];
      *(*(*(a1 + 32) + 8) + 24) = [v4 count] != 0;

      WeakRetained = v5;
    }
  }
}

- (void)_acquireSuppressionAssertionIfNeededWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(NPKDoubleClickClientSuppressor *)self suppressorQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(NPKDoubleClickClientSuppressor *)self suppressionAssertion];

  if (v5)
  {
    if (v6)
    {
      v6[2](v6, 0);
    }
  }

  else
  {
    [(NPKDoubleClickClientSuppressor *)self _acquireSuppressionAssertionWithCompletion:v6];
  }
}

- (void)_acquireSuppressionAssertionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NPKDoubleClickClientSuppressor *)self suppressorQueue];
  dispatch_assert_queue_V2(v5);

  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKDoubleClickClientSuppressor: Acquiring assertion", v15, 2u);
    }
  }

  v9 = [NPKDoublePressSuppressionAssertion alloc];
  v10 = [(NPKDoublePressSuppressionAssertion *)v9 initWithQueue:MEMORY[0x277D85CD0]];
  v11 = [(NPKDoubleClickClientSuppressor *)self suppressionAssertion];
  [v11 invalidate];

  v12 = [(NPKDoubleClickClientSuppressor *)self suppressionRequestTokens];
  v13 = [v12 count];

  if (!v13)
  {
    [(NPKDoublePressSuppressionAssertion *)v10 invalidate];
    v14 = 1;
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [(NPKDoubleClickClientSuppressor *)self setSuppressionAssertion:v10];
  v14 = 0;
  if (v4)
  {
LABEL_7:
    v4[2](v4, v14);
  }

LABEL_8:
}

- (void)_releaseSuppressionAssertion
{
  v3 = [(NPKDoubleClickClientSuppressor *)self suppressorQueue];
  dispatch_assert_queue_V2(v3);

  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKDoubleClickClientSuppressor: Releasing assertion", v8, 2u);
    }
  }

  v7 = [(NPKDoubleClickClientSuppressor *)self suppressionAssertion];
  [v7 invalidate];

  [(NPKDoubleClickClientSuppressor *)self setSuppressionAssertion:0];
}

@end