@interface NMSKeepLocalRequestLocal
+ (id)sharedKeepLocalOperationQueue;
- (void)_performRequestWithConstraints:(unint64_t)constraints qualityOfService:(int64_t)service completion:(id)completion;
- (void)performWithOptions:(id)options completion:(id)completion;
@end

@implementation NMSKeepLocalRequestLocal

+ (id)sharedKeepLocalOperationQueue
{
  if (sharedKeepLocalOperationQueue_onceToken != -1)
  {
    +[NMSKeepLocalRequestLocal sharedKeepLocalOperationQueue];
  }

  v3 = sharedKeepLocalOperationQueue_sharedQueue;

  return v3;
}

uint64_t __57__NMSKeepLocalRequestLocal_sharedKeepLocalOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = sharedKeepLocalOperationQueue_sharedQueue;
  sharedKeepLocalOperationQueue_sharedQueue = v0;

  [sharedKeepLocalOperationQueue_sharedQueue setMaxConcurrentOperationCount:1];
  v2 = sharedKeepLocalOperationQueue_sharedQueue;

  return [v2 setName:@"com.apple.NanoMusicSync.NMSKeepLocalRequestLocal"];
}

- (void)performWithOptions:(id)options completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  v8 = [(NMSKeepLocalRequest *)self enableState]+ 1;
  if (v8 > 4)
  {
    v20 = MEMORY[0x277CBEAD8];
    v21 = *MEMORY[0x277CBE658];
    v22 = @"Unsupported KeepLocal enable state specified.";
    goto LABEL_14;
  }

  if (v8 == 2)
  {
    if (![optionsCopy requiresValidation])
    {
      v19 = [optionsCopy resolvedConstraints:{objc_msgSend(MEMORY[0x277CD5EC0], "nms_defaultKeepLocalConstraints")}];
      qualityOfService = [optionsCopy qualityOfService];
      selfCopy2 = self;
      v11 = v19;
      goto LABEL_4;
    }

    v13 = NMLogForCategory(5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      modelObject = [(NMSKeepLocalRequest *)self modelObject];
      *buf = 138412290;
      v28 = modelObject;
      _os_log_impl(&dword_25B27B000, v13, OS_LOG_TYPE_DEFAULT, "[NMSKeepLocalRequestLocal] Running KeepLocal validation for modelObject: %@", buf, 0xCu);
    }

    cellularBundleIdentifier = [optionsCopy cellularBundleIdentifier];

    if (cellularBundleIdentifier)
    {
      v16 = [NMSKeepLocalRequestValidator alloc];
      modelObject2 = [(NMSKeepLocalRequest *)self modelObject];
      v18 = [(NMSKeepLocalRequestValidator *)v16 initWithModelObject:modelObject2];

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __58__NMSKeepLocalRequestLocal_performWithOptions_completion___block_invoke;
      v24[3] = &unk_27993E8F8;
      v26 = completionCopy;
      v24[4] = self;
      v25 = optionsCopy;
      [(NMSKeepLocalRequestValidator *)v18 performWithOptions:v25 completion:v24];

      goto LABEL_5;
    }

    v20 = MEMORY[0x277CBEAD8];
    v21 = *MEMORY[0x277CBE660];
    v22 = @"Required cellular bundle identifier missing during KeepLocalRequest validation.";
LABEL_14:
    v23 = [v20 exceptionWithName:v21 reason:v22 userInfo:0];
    objc_exception_throw(v23);
  }

  qualityOfService = [optionsCopy qualityOfService];
  selfCopy2 = self;
  v11 = 0;
LABEL_4:
  [(NMSKeepLocalRequestLocal *)selfCopy2 _performRequestWithConstraints:v11 qualityOfService:qualityOfService completion:completionCopy];
LABEL_5:

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __58__NMSKeepLocalRequestLocal_performWithOptions_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);

    return v5();
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) qualityOfService];
    v10 = *(a1 + 48);

    return [v8 _performRequestWithConstraints:a2 qualityOfService:v9 completion:v10];
  }
}

- (void)_performRequestWithConstraints:(unint64_t)constraints qualityOfService:(int64_t)service completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = NMLogForCategory(5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    enableState = [(NMSKeepLocalRequest *)self enableState];
    modelObject = [(NMSKeepLocalRequest *)self modelObject];
    *buf = 134218498;
    v26 = enableState;
    v27 = 2048;
    constraintsCopy = constraints;
    v29 = 2112;
    v30 = modelObject;
    _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_DEFAULT, "[NMSKeepLocalRequestLocal] Proceeding with KeepLocal request with state: %ld, constraints: %ld, modelObject: %@", buf, 0x20u);
  }

  v12 = objc_alloc_init(MEMORY[0x277CD5EC0]);
  modelObject2 = [(NMSKeepLocalRequest *)self modelObject];
  [v12 setModelObject:modelObject2];

  [v12 setEnableState:{-[NMSKeepLocalRequest enableState](self, "enableState")}];
  [v12 setConstraints:constraints];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __87__NMSKeepLocalRequestLocal__performRequestWithConstraints_qualityOfService_completion___block_invoke;
  v22[3] = &unk_27993E068;
  v14 = v12;
  v23 = v14;
  v24 = completionCopy;
  v15 = completionCopy;
  v16 = [v14 newOperationWithResponseHandler:v22];
  [v16 setQualityOfService:service];
  v17 = NMLogForCategory(5);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    modelObject3 = [(NMSKeepLocalRequest *)self modelObject];
    *buf = 138412546;
    v26 = v16;
    v27 = 2112;
    constraintsCopy = modelObject3;
    _os_log_impl(&dword_25B27B000, v17, OS_LOG_TYPE_DEFAULT, "[NMSKeepLocalRequestLocal] Adding KeepLocal operation(%@) for modelObject=%@", buf, 0x16u);
  }

  sharedKeepLocalOperationQueue = [objc_opt_class() sharedKeepLocalOperationQueue];
  [sharedKeepLocalOperationQueue addOperation:v16];
  v20 = v14;
  AnalyticsSendEventLazy();

  v21 = *MEMORY[0x277D85DE8];
}

void __87__NMSKeepLocalRequestLocal__performRequestWithConstraints_qualityOfService_completion___block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NMLogForCategory(5);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __87__NMSKeepLocalRequestLocal__performRequestWithConstraints_qualityOfService_completion___block_invoke_cold_1(a1, v5);
    }

    v6 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA7E8];
    v19[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v7 = [v6 errorWithDomain:@"NMSKeepLocalRequestErrorDomain" code:0 userInfo:v5];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) enableState];
      v9 = [*(a1 + 32) constraints];
      v10 = [*(a1 + 32) modelObject];
      v12 = 134218498;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "[NMSKeepLocalRequestLocal] Successfully set KeepLocal state: %ld with constraints: %ld for modelObject: %@", &v12, 0x20u);
    }

    v7 = 0;
  }

  (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

id __87__NMSKeepLocalRequestLocal__performRequestWithConstraints_qualityOfService_completion___block_invoke_18(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"constraints";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "constraints")}];
  v7[1] = @"enableState";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "enableState")}];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

void __87__NMSKeepLocalRequestLocal__performRequestWithConstraints_qualityOfService_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) enableState];
  v5 = [*(a1 + 32) constraints];
  v6 = [*(a1 + 32) modelObject];
  v8 = 134218498;
  v9 = v4;
  v10 = 2048;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  _os_log_error_impl(&dword_25B27B000, a2, OS_LOG_TYPE_ERROR, "[NMSKeepLocalRequestLocal] Error setting KeepLocal state: %ld with constraints: %ld for modelObject: %@", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end