@interface SUUILoadProductPageOperation
- (SSMetricsPageEvent)metricsPageEvent;
- (SUUILoadProductPageOperation)initWithItemIdentifier:(int64_t)identifier clientContext:(id)context;
- (SUUILoadProductPageOperation)initWithProductPageURLRequest:(id)request clientContext:(id)context;
- (id)_initSUUILoadProductPageOperation;
- (id)outputBlock;
- (void)main;
- (void)setOutputBlock:(id)block;
@end

@implementation SUUILoadProductPageOperation

- (id)_initSUUILoadProductPageOperation
{
  v6.receiver = self;
  v6.super_class = SUUILoadProductPageOperation;
  v2 = [(SUUILoadProductPageOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUILoadProductPageOperation", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (SUUILoadProductPageOperation)initWithItemIdentifier:(int64_t)identifier clientContext:(id)context
{
  contextCopy = context;
  _initSUUILoadProductPageOperation = [(SUUILoadProductPageOperation *)self _initSUUILoadProductPageOperation];
  v9 = _initSUUILoadProductPageOperation;
  if (_initSUUILoadProductPageOperation)
  {
    objc_storeStrong(_initSUUILoadProductPageOperation + 31, context);
    v9->_itemID = identifier;
  }

  return v9;
}

- (SUUILoadProductPageOperation)initWithProductPageURLRequest:(id)request clientContext:(id)context
{
  requestCopy = request;
  contextCopy = context;
  _initSUUILoadProductPageOperation = [(SUUILoadProductPageOperation *)self _initSUUILoadProductPageOperation];
  v9 = _initSUUILoadProductPageOperation;
  if (_initSUUILoadProductPageOperation)
  {
    objc_storeStrong(_initSUUILoadProductPageOperation + 31, context);
    v10 = [requestCopy copy];
    urlRequest = v9->_urlRequest;
    v9->_urlRequest = v10;
  }

  return v9;
}

- (SSMetricsPageEvent)metricsPageEvent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SUUILoadProductPageOperation_metricsPageEvent__block_invoke;
  v5[3] = &unk_2798F5B48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)outputBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__SUUILoadProductPageOperation_outputBlock__block_invoke;
  v5[3] = &unk_2798F5B48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = _Block_copy(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __43__SUUILoadProductPageOperation_outputBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 280) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SUUILoadProductPageOperation_setOutputBlock___block_invoke;
  v7[3] = &unk_2798F6030;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(dispatchQueue, v7);
}

void *__47__SUUILoadProductPageOperation_setOutputBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 280) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 280);
    *(v5 + 280) = v4;

    return MEMORY[0x2821F96F8](v4, v6);
  }

  return result;
}

- (void)main
{
  v45[1] = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__1;
  v43 = __Block_byref_object_dispose__1;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1;
  v37 = __Block_byref_object_dispose__1;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = self->_urlRequest;
  if (v28[5] || (v3 = objc_autoreleasePoolPush(), [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", self->_itemID], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_alloc(MEMORY[0x277D69CF0]), -[SUUIClientContext platformContext](self->_clientContext, "platformContext"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "initWithPlatformContext:", v6), v6, v45[0] = v4, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v45, 1), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "setItemIdentifiers:", v8), v8, objc_msgSend(v7, "setKeyProfile:", *MEMORY[0x277D6A2D8]), -[SUUIClientContext valueForConfigurationKey:](self->_clientContext, "valueForConfigurationKey:", @"sfsuffix"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "setStoreFrontSuffix:", v9), v9, v23[0] = MEMORY[0x277D85DD0], v23[1] = 3221225472, v23[2] = __36__SUUILoadProductPageOperation_main__block_invoke, v23[3] = &unk_2798F6058, v10 = v4, v24 = v10, v25 = &v27, v26 = &v39, objc_msgSend(v7, "setResponseBlock:", v23), objc_msgSend(v7, "main"), v24, v7, v10, objc_autoreleasePoolPop(v3), v28[5]))
  {
    v11 = objc_autoreleasePoolPush();
    v12 = objc_alloc(MEMORY[0x277D69CD8]);
    v13 = [v12 initWithURLRequest:v28[5]];
    v14 = +[(SSVURLDataConsumer *)SUUIProductPageDataConsumer];
    [v13 setDataConsumer:v14];

    v15 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
    [v13 setStoreFrontSuffix:v15];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __36__SUUILoadProductPageOperation_main__block_invoke_2;
    v22[3] = &unk_2798F6080;
    v22[4] = &v39;
    v22[5] = &v33;
    [v13 setOutputBlock:v22];
    [v13 main];
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__SUUILoadProductPageOperation_main__block_invoke_3;
    block[3] = &unk_2798F5AF8;
    block[4] = self;
    v21 = v13;
    v17 = v13;
    dispatch_sync(dispatchQueue, block);

    objc_autoreleasePoolPop(v11);
  }

  outputBlock = [(SUUILoadProductPageOperation *)self outputBlock];
  v19 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, v34[5], v40[5]);
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
}

void __36__SUUILoadProductPageOperation_main__block_invoke(void *a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = [a2 itemForKey:a1[4]];
  v6 = [v5 productPageURL];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBABA0]) initWithURL:v6];
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = [v13 copy];
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void __36__SUUILoadProductPageOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 copy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

uint64_t __36__SUUILoadProductPageOperation_main__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 40) metricsPageEvent];
  v3 = *(a1 + 32);
  v4 = *(v3 + 272);
  *(v3 + 272) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

@end