@interface HLPRemoteDataController
- (HLPRemoteDataController)initWithURL:(id)l;
- (void)cancel;
- (void)dealloc;
- (void)fetchDataWithDataType:(int64_t)type identifier:(id)identifier completionHandler:(id)handler;
- (void)processFileURLWithCompletionHandler:(id)handler;
@end

@implementation HLPRemoteDataController

- (void)dealloc
{
  v3 = +[HLPURLSessionManager defaultManager];
  [v3 cancelSessionItem:self->_URLSessionItem];

  v4.receiver = self;
  v4.super_class = HLPRemoteDataController;
  [(HLPRemoteDataController *)&v4 dealloc];
}

- (HLPRemoteDataController)initWithURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = HLPRemoteDataController;
  v5 = [(HLPRemoteDataController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HLPRemoteDataController *)v5 setURL:lCopy];
  }

  return v6;
}

- (void)fetchDataWithDataType:(int64_t)type identifier:(id)identifier completionHandler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (![(HLPRemoteDataController *)self loading])
  {
    [(HLPRemoteDataController *)self setLoading:1];
    v10 = [(HLPRemoteDataController *)self URL];
    isFileURL = [v10 isFileURL];

    if (isFileURL)
    {
      v12 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __78__HLPRemoteDataController_fetchDataWithDataType_identifier_completionHandler___block_invoke;
      block[3] = &unk_279706BE8;
      block[4] = self;
      v34 = handlerCopy;
      dispatch_async(v12, block);

      goto LABEL_17;
    }

    v13 = [(HLPRemoteDataController *)self URL];

    if (!v13)
    {
      [(HLPRemoteDataController *)self setLoading:0];
      goto LABEL_17;
    }

    objc_initWeak(&location, self);
    v14 = MEMORY[0x277CCAB70];
    v15 = [(HLPRemoteDataController *)self URL];
    v16 = [v14 requestWithURL:v15];

    if (self->_headerFields)
    {
      [v16 setCachePolicy:1];
      [v16 setAllHTTPHeaderFields:self->_headerFields];
    }

    v17 = +[HLPURLSessionManager defaultManager];
    if (type == 1)
    {
      v18 = off_2797065D0;
    }

    else
    {
      if (type != 2)
      {
LABEL_16:

        objc_destroyWeak(&location);
        goto LABEL_17;
      }

      v18 = off_279706550;
    }

    sharedInstance = [(__objc2_class *)*v18 sharedInstance];
    if (sharedInstance)
    {
      v20 = HLPLogForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v16;
        _os_log_impl(&dword_2522BC000, v20, OS_LOG_TYPE_DEFAULT, "Fetching: %@", buf, 0xCu);
      }

      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __78__HLPRemoteDataController_fetchDataWithDataType_identifier_completionHandler___block_invoke_7;
      v28 = &unk_279706C60;
      objc_copyWeak(&v31, &location);
      selfCopy = self;
      v30 = handlerCopy;
      v21 = [sharedInstance formattedDataForRequest:v16 identifier:identifierCopy completionHandler:&v25];
      URLSessionItem = self->_URLSessionItem;
      p_URLSessionItem = &self->_URLSessionItem;
      *p_URLSessionItem = v21;

      [v17 resumeSessionItem:{*p_URLSessionItem, v25, v26, v27, v28}];
      objc_destroyWeak(&v31);
    }

    goto LABEL_16;
  }

LABEL_17:

  v24 = *MEMORY[0x277D85DE8];
}

void __78__HLPRemoteDataController_fetchDataWithDataType_identifier_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __78__HLPRemoteDataController_fetchDataWithDataType_identifier_completionHandler___block_invoke_2;
  v2[3] = &unk_279706BC0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 processFileURLWithCompletionHandler:v2];
}

void __78__HLPRemoteDataController_fetchDataWithDataType_identifier_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  [v6 setLoading:0];
  [*(a1 + 32) setHasLoaded:1];
  (*(*(a1 + 40) + 16))();
}

void __78__HLPRemoteDataController_fetchDataWithDataType_identifier_completionHandler___block_invoke_7(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  v10 = a3;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v13 = [WeakRetained URLSessionItem];
  v14 = [v13 sessionTask];
  v15 = [v14 response];

  if (!v9 || v11)
  {
    [WeakRetained setLoading:0];
    (*(*(a1 + 40) + 16))();
    [WeakRetained setURLSessionItem:0];
  }

  else
  {
    v16 = dispatch_get_global_queue(0, 0);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __78__HLPRemoteDataController_fetchDataWithDataType_identifier_completionHandler___block_invoke_2_8;
    v20[3] = &unk_279706C38;
    v20[4] = WeakRetained;
    v21 = v10;
    v17 = v9;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v22 = v17;
    v23 = v18;
    v25 = v19;
    v24 = v15;
    dispatch_async(v16, v20);
  }
}

void __78__HLPRemoteDataController_fetchDataWithDataType_identifier_completionHandler___block_invoke_2_8(uint64_t a1)
{
  [*(a1 + 32) processData:*(a1 + 40) formattedData:*(a1 + 48)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HLPRemoteDataController_fetchDataWithDataType_identifier_completionHandler___block_invoke_3;
  block[3] = &unk_279706C10;
  block[4] = *(a1 + 56);
  v4 = *(a1 + 72);
  v3 = *(a1 + 64);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __78__HLPRemoteDataController_fetchDataWithDataType_identifier_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setLoading:0];
  [*(a1 + 32) setHasLoaded:1];
  v2 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
  v3 = *(a1 + 32);

  return [v3 setURLSessionItem:0];
}

- (void)processFileURLWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HLPRemoteDataController_processFileURLWithCompletionHandler___block_invoke;
  block[3] = &unk_279706C88;
  v6 = handlerCopy;
  v4 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__HLPRemoteDataController_processFileURLWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Not implemented" code:1 userInfo:0];
  (*(v1 + 16))(v1, 0, v2, 0);
}

- (void)cancel
{
  [(HLPRemoteDataController *)self setLoading:0];
  [(HLPURLSessionItem *)self->_URLSessionItem cancel];
  URLSessionItem = self->_URLSessionItem;
  self->_URLSessionItem = 0;
}

@end