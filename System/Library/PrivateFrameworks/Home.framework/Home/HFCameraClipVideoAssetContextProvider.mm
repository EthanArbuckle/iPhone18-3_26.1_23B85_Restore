@interface HFCameraClipVideoAssetContextProvider
+ (HFCameraClipVideoAssetContextProvider)defaultProvider;
- (HFCameraClipVideoAssetContextProvider)initWithDelegate:(id)a3;
- (HFCameraClipVideoAssetContextProviderDelegate)delegate;
- (id)fetchVideoAssetContextForClip:(id)a3 clipManager:(id)a4;
- (id)newFetchVideoAssetContextOperationForClip:(id)a3 clipManager:(id)a4;
@end

@implementation HFCameraClipVideoAssetContextProvider

+ (HFCameraClipVideoAssetContextProvider)defaultProvider
{
  if (_MergedGlobals_304 != -1)
  {
    dispatch_once(&_MergedGlobals_304, &__block_literal_global_3_30);
  }

  v3 = qword_280E03AD0;

  return v3;
}

void __56__HFCameraClipVideoAssetContextProvider_defaultProvider__block_invoke_2()
{
  v0 = [[HFCameraClipVideoAssetContextProvider alloc] init];
  v1 = qword_280E03AD0;
  qword_280E03AD0 = v0;
}

- (HFCameraClipVideoAssetContextProvider)initWithDelegate:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HFCameraClipVideoAssetContextProvider;
  v5 = [(HFCameraClipVideoAssetContextProvider *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [objc_alloc(MEMORY[0x277CCABD8]) init];
    operationQueue = v6->_operationQueue;
    v6->_operationQueue = v7;

    [(NSOperationQueue *)v6->_operationQueue setQualityOfService:25];
    v9 = objc_opt_new();
    videoContextFuturesByClipID = v6->_videoContextFuturesByClipID;
    v6->_videoContextFuturesByClipID = v9;

    v11 = [objc_alloc(MEMORY[0x277D0F938]) init];
    lock = v6->_lock;
    v6->_lock = v11;
  }

  return v6;
}

- (id)fetchVideoAssetContextForClip:(id)a3 clipManager:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HFCameraClipVideoAssetContextProvider *)self delegate];
  v9 = [v8 cachedVideoAssetContextForClip:v6 clipManager:v7];

  if (v9)
  {
    v10 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Using cached video context for clip %@", &buf, 0xCu);
    }

    v11 = [MEMORY[0x277D2C900] futureWithResult:v9];
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__24;
    v22 = __Block_byref_object_dispose__24;
    v23 = 0;
    v12 = [(HFCameraClipVideoAssetContextProvider *)self lock];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __83__HFCameraClipVideoAssetContextProvider_fetchVideoAssetContextForClip_clipManager___block_invoke;
    v15[3] = &unk_277E00360;
    p_buf = &buf;
    v15[4] = self;
    v16 = v6;
    v17 = v7;
    [v12 performBlock:v15];

    v11 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&buf, 8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

void __83__HFCameraClipVideoAssetContextProvider_fetchVideoAssetContextForClip_clipManager___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) videoContextFuturesByClipID];
  v3 = [*(a1 + 40) uniqueIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 56) + 8) + 40);
  v8 = HFLogForCategory(0x17uLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 40);
      *buf = 138412290;
      v29 = v10;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Reusing in-flight video context future for clip %@", buf, 0xCu);
    }
  }

  else
  {
    if (v9)
    {
      v11 = *(a1 + 40);
      *buf = 138412290;
      v29 = v11;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Initiating video context fetch operation for clip %@", buf, 0xCu);
    }

    v12 = [*(a1 + 32) delegate];
    v8 = [v12 newFetchVideoAssetContextOperationForClip:*(a1 + 40) clipManager:*(a1 + 48)];

    v13 = [objc_alloc(MEMORY[0x277D2C900]) init];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = *(*(*(a1 + 56) + 8) + 40);
    v17 = [*(a1 + 32) videoContextFuturesByClipID];
    v18 = [*(a1 + 40) uniqueIdentifier];
    [v17 setObject:v16 forKeyedSubscript:v18];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __83__HFCameraClipVideoAssetContextProvider_fetchVideoAssetContextForClip_clipManager___block_invoke_8;
    v24[3] = &unk_277E00338;
    v19 = *(a1 + 40);
    v20 = *(a1 + 56);
    v21 = *(a1 + 32);
    v25 = v19;
    v26 = v21;
    v27 = v20;
    [v8 setFetchVideoAssetContextCompletionBlock:v24];
    v22 = [*(a1 + 32) operationQueue];
    [v22 addOperation:v8];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __83__HFCameraClipVideoAssetContextProvider_fetchVideoAssetContextForClip_clipManager___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [*(a1 + 40) videoContextFuturesByClipID];
    v9 = [*(a1 + 32) uniqueIdentifier];
    [v8 setObject:0 forKeyedSubscript:v9];

    v10 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v17 = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Successfully fetched video context %@ for clip %@", &v17, 0x16u);
    }

    [*(*(*(a1 + 48) + 8) + 40) finishWithResult:v5];
  }

  else
  {
    if (v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = [MEMORY[0x277CCA9B8] hf_errorWithCode:42];
    }

    v13 = v12;
    v14 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = 138412546;
      v18 = v16;
      v19 = 2112;
      v20 = v13;
      _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch video context for clip %@: %@", &v17, 0x16u);
    }

    [*(*(*(a1 + 48) + 8) + 40) finishWithError:v13];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)newFetchVideoAssetContextOperationForClip:(id)a3 clipManager:(id)a4
{
  v5 = MEMORY[0x277CD18E8];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithClipManager:v6 clip:v7];

  return v8;
}

- (HFCameraClipVideoAssetContextProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end