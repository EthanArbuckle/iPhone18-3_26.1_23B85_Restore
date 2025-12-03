@interface PKPushTokenFetcher
- (PKPushTokenFetcher)init;
- (void)_handleTimeout;
- (void)_invokeCompletionWithPushToken:(id)token;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)dealloc;
- (void)fetchPushTokenWithTimeout:(double)timeout completion:(id)completion;
@end

@implementation PKPushTokenFetcher

- (PKPushTokenFetcher)init
{
  v16.receiver = self;
  v16.super_class = PKPushTokenFetcher;
  v2 = [(PKPushTokenFetcher *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_create("PKPushTokenFetcher", 0);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = objc_alloc(MEMORY[0x1E698CF30]);
    v6 = [v5 initWithEnvironmentName:*MEMORY[0x1E698CF20] namedDelegatePort:*MEMORY[0x1E698CF08] queue:*(v2 + 1)];
    v7 = *(v2 + 4);
    *(v2 + 4) = v6;

    v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 1));
    v9 = *(v2 + 2);
    *(v2 + 2) = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = *(v2 + 3);
    *(v2 + 3) = v10;

    v12 = *(v2 + 2);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __26__PKPushTokenFetcher_init__block_invoke;
    handler[3] = &unk_1E79C4E28;
    v15 = v2;
    dispatch_source_set_event_handler(v12, handler);
    dispatch_resume(*(v2 + 2));
  }

  return v2;
}

void __26__PKPushTokenFetcher_init__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _handleTimeout];

  objc_autoreleasePoolPop(v2);
}

- (void)dealloc
{
  dispatch_source_cancel(self->_timeoutTimer);
  pushConnection = self->_pushConnection;
  array = [MEMORY[0x1E695DEC8] array];
  [(APSConnection *)pushConnection _setEnabledTopics:array];

  [(APSConnection *)self->_pushConnection setDelegate:0];
  v5.receiver = self;
  v5.super_class = PKPushTokenFetcher;
  [(PKPushTokenFetcher *)&v5 dealloc];
}

- (void)fetchPushTokenWithTimeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKPushTokenFetcher_fetchPushTokenWithTimeout_completion___block_invoke;
  block[3] = &unk_1E79C4658;
  block[4] = self;
  v10 = completionCopy;
  timeoutCopy = timeout;
  v8 = completionCopy;
  dispatch_sync(internalQueue, block);
}

void __59__PKPushTokenFetcher_fetchPushTokenWithTimeout_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(*(a1 + 32) + 24);
  v4 = _Block_copy(v2);
  [v3 addObject:v4];

  v5 = [*(*(a1 + 32) + 32) publicToken];
  if (v5)
  {
    [*(a1 + 32) _invokeCompletionWithPushToken:v5];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "No push token; registering fake push topic", v9, 2u);
    }

    [*(*(a1 + 32) + 32) setDelegate:?];
    [*(*(a1 + 32) + 32) _setEnabledTopics:&unk_1F23B3F80];
    v7 = *(*(a1 + 32) + 16);
    v8 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  }
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  v9 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_internalQueue);
  v6 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = tokenCopy;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Push token fetcher received public token %@", &v7, 0xCu);
  }

  [(PKPushTokenFetcher *)self _invokeCompletionWithPushToken:tokenCopy];
}

- (void)_handleTimeout
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Push token fetcher timed out", v5, 2u);
  }

  publicToken = [(APSConnection *)self->_pushConnection publicToken];
  [(PKPushTokenFetcher *)self _invokeCompletionWithPushToken:publicToken];
}

- (void)_invokeCompletionWithPushToken:(id)token
{
  v13 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_internalQueue);
  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = tokenCopy;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Push token fetcher completed with push token %@", buf, 0xCu);
  }

  dispatch_source_set_timer(self->_timeoutTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  [(APSConnection *)self->_pushConnection setDelegate:0];
  pushConnection = self->_pushConnection;
  array = [MEMORY[0x1E695DEC8] array];
  [(APSConnection *)pushConnection _setEnabledTopics:array];

  if ([(NSMutableArray *)self->_completionHandlers count])
  {
    completionHandlers = self->_completionHandlers;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__PKPushTokenFetcher__invokeCompletionWithPushToken___block_invoke;
    v9[3] = &unk_1E79D4598;
    v10 = tokenCopy;
    [(NSMutableArray *)completionHandlers enumerateObjectsUsingBlock:v9];
    [(NSMutableArray *)self->_completionHandlers removeAllObjects];
  }
}

void __53__PKPushTokenFetcher__invokeCompletionWithPushToken___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PKPushTokenFetcher__invokeCompletionWithPushToken___block_invoke_2;
  v7[3] = &unk_1E79C44A0;
  v9 = v3;
  v8 = *(a1 + 32);
  v5 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_10;
  block[3] = &unk_1E79C4428;
  v11 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

@end