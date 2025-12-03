@interface TKCloudKitFetch
- (TKCloudKitFetch)init;
- (void)cancel;
- (void)dealloc;
- (void)downloadAssetFromCloudKit;
- (void)handleDownloadResponse:(id)response error:(id)error;
- (void)handleResponse:(id)response data:(id)data responseError:(id)error;
- (void)send;
- (void)setResponse:(id)response;
- (void)tmlDispose;
@end

@implementation TKCloudKitFetch

- (TKCloudKitFetch)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = TKCloudKitFetch;
  v6 = [(TKCloudKitFetch *)&v4 init];
  objc_storeStrong(&v6, v6);
  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(TKCloudKitFetch *)self cancel];
  v2.receiver = selfCopy;
  v2.super_class = TKCloudKitFetch;
  [(TKCloudKitFetch *)&v2 dealloc];
}

- (void)tmlDispose
{
  selfCopy = self;
  v3 = a2;
  [(TKCloudKitFetch *)self cancel];
  v2.receiver = selfCopy;
  v2.super_class = TKCloudKitFetch;
  [(TKCloudKitFetch *)&v2 tmlDispose];
}

- (void)setResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  objc_storeStrong(&selfCopy->_response, location[0]);
  objc_storeStrong(location, 0);
}

- (void)send
{
  selfCopy = self;
  location[1] = a2;
  if (!self->_active)
  {
    if (selfCopy->_urlRequest)
    {
      selfCopy->_active = 1;
      objc_storeStrong(&selfCopy->_response, 0);
      selfCopy->_cancelled = 0;
      objc_initWeak(location, selfCopy);
      v4 = +[TKNetwork shared];
      urlRequest = selfCopy->_urlRequest;
      v6 = MEMORY[0x277D85DD0];
      v7 = -1073741824;
      v8 = 0;
      v9 = __23__TKCloudKitFetch_send__block_invoke;
      v10 = &unk_2797EE478;
      objc_copyWeak(v11, location);
      v2 = [v4 loadRequest:urlRequest priority:1 completion:&v6];
      queryTask = selfCopy->_queryTask;
      selfCopy->_queryTask = v2;
      MEMORY[0x277D82BD8](queryTask);
      MEMORY[0x277D82BD8](v4);
      objc_destroyWeak(v11);
      objc_destroyWeak(location);
    }
  }
}

void __23__TKCloudKitFetch_send__block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained handleResponse:location[0] data:v9 responseError:v8];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)cancel
{
  if (self->_queryTask)
  {
    [(TKNetworkTask *)self->_queryTask cancel];
    objc_storeStrong(&self->_queryTask, 0);
  }

  self->_cancelled = 1;
  self->_active = 0;
  objc_storeStrong(&self->_response, 0);
  objc_storeStrong(&self->_downloadURL, 0);
}

- (void)handleResponse:(id)response data:(id)data responseError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v25 = 0;
  objc_storeStrong(&v25, data);
  v24 = 0;
  objc_storeStrong(&v24, error);
  if (selfCopy->_cancelled)
  {
    v23 = 1;
    goto LABEL_14;
  }

  if (!v25)
  {
    objc_initWeak(&v19, selfCopy);
    v8 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    queue = v8;
    v13 = MEMORY[0x277D85DD0];
    v14 = -1073741824;
    v15 = 0;
    v16 = __53__TKCloudKitFetch_handleResponse_data_responseError___block_invoke;
    v17 = &unk_2797EE450;
    objc_copyWeak(&v18, &v19);
    dispatch_async(queue, &v13);
    MEMORY[0x277D82BD8](queue);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v19);
LABEL_10:
    if (selfCopy->_downloadURL)
    {
      [(TKCloudKitFetch *)selfCopy downloadAssetFromCloudKit];
    }

    else
    {
      selfCopy->_active = 0;
    }

    v23 = 0;
    goto LABEL_14;
  }

  v22 = 0;
  v20 = 0;
  v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v25 options:1 error:&v20];
  objc_storeStrong(&v22, v20);
  v21 = v10;
  if (v10)
  {
    v5 = [TKCloudKitWSRecord downloadURLFromCloudKitRecordResponse:v21];
    downloadURL = selfCopy->_downloadURL;
    selfCopy->_downloadURL = v5;
    MEMORY[0x277D82BD8](downloadURL);
    v23 = 0;
  }

  else
  {
    [(TKCloudKitFetch *)selfCopy emitTMLSignal:@"error" withArguments:&unk_286780F10];
    v23 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  if (!v23)
  {
    goto LABEL_10;
  }

LABEL_14:
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

uint64_t __53__TKCloudKitFetch_handleResponse_data_responseError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained emitTMLSignal:@"error" withArguments:&unk_286780F28];
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)downloadAssetFromCloudKit
{
  selfCopy = self;
  location[1] = a2;
  if (self->_downloadURL)
  {
    objc_initWeak(location, selfCopy);
    v9 = objc_alloc(MEMORY[0x277CCAD20]);
    downloadURL = selfCopy->_downloadURL;
    v7 = +[TKNetwork shared];
    [v7 timeoutInterval];
    v16 = [v9 initWithURL:downloadURL cachePolicy:0 timeoutInterval:v2];
    MEMORY[0x277D82BD8](v7);
    v5 = +[TKNetwork shared];
    v6 = v16;
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __44__TKCloudKitFetch_downloadAssetFromCloudKit__block_invoke;
    v14 = &unk_2797EE688;
    objc_copyWeak(v15, location);
    v3 = [v5 downloadRequest:v6 priority:1 completion:&v10];
    queryTask = selfCopy->_queryTask;
    selfCopy->_queryTask = v3;
    MEMORY[0x277D82BD8](queryTask);
    MEMORY[0x277D82BD8](v5);
    objc_destroyWeak(v15);
    objc_storeStrong(&v16, 0);
    objc_destroyWeak(location);
  }
}

void __44__TKCloudKitFetch_downloadAssetFromCloudKit__block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained handleDownloadResponse:location[0] error:v6];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)handleDownloadResponse:(id)response error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v21 = 0;
  objc_storeStrong(&v21, error);
  selfCopy->_active = 0;
  if (location[0] && [location[0] length])
  {
    v20 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:location[0]];
    v19 = 0;
    v17 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v20 options:0 error:&v17];
    objc_storeStrong(&v19, v17);
    v18 = v8;
    if (v8 && !v19)
    {
      v4 = objc_alloc_init(MEMORY[0x277D73408]);
      response = selfCopy->_response;
      selfCopy->_response = v4;
      MEMORY[0x277D82BD8](response);
      objc_initWeak(&v16, selfCopy);
      v6 = selfCopy->_response;
      v7 = v18;
      v10 = MEMORY[0x277D85DD0];
      v11 = -1073741824;
      v12 = 0;
      v13 = __48__TKCloudKitFetch_handleDownloadResponse_error___block_invoke;
      v14 = &unk_2797EE4C8;
      objc_copyWeak(&v15, &v16);
      [(TMLJSONObject *)v6 setRawJSONAsync:v7 completion:&v10];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&v16);
    }

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

void __48__TKCloudKitFetch_handleDownloadResponse_error___block_invoke(id *a1, char a2)
{
  v13 = a1;
  v12 = a2;
  v11[1] = a1;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __48__TKCloudKitFetch_handleDownloadResponse_error___block_invoke_2;
  v10 = &unk_2797EE450;
  objc_copyWeak(v11, a1 + 4);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_destroyWeak(v11);
}

uint64_t __48__TKCloudKitFetch_handleDownloadResponse_error___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 response];
  v7[0] = v4;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [WeakRetained emitTMLSignal:@"load" withArguments:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  result = MEMORY[0x277D82BD8](WeakRetained);
  *MEMORY[0x277D85DE8];
  return result;
}

@end