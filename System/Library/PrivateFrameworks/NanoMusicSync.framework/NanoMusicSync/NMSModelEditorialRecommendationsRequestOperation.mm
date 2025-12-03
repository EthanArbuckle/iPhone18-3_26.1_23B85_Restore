@interface NMSModelEditorialRecommendationsRequestOperation
- (id)configurationForLoadingModelDataWithStoreURLBag:(id)bag error:(id *)error;
- (void)execute;
- (void)produceResponseWithLoadedOutput:(id)output completion:(id)completion;
@end

@implementation NMSModelEditorialRecommendationsRequestOperation

- (void)execute
{
  request = [(MPStoreModelRequestOperation *)self request];
  if ([request nms_useCachedDataOnly])
  {
    nms_cachedLoadedOutput = [request nms_cachedLoadedOutput];

    if (nms_cachedLoadedOutput)
    {
      nms_cachedLoadedOutput2 = [request nms_cachedLoadedOutput];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __59__NMSModelEditorialRecommendationsRequestOperation_execute__block_invoke;
      v10[3] = &unk_27993EAB0;
      v10[4] = self;
      [(NMSModelEditorialRecommendationsRequestOperation *)self produceResponseWithLoadedOutput:nms_cachedLoadedOutput2 completion:v10];
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x277CD5F78]);
      request2 = [(MPStoreModelRequestOperation *)self request];
      v8 = [v6 initWithRequest:request2];
      [(MPStoreModelRequestOperation *)self _finishWithResponse:v8 error:0];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NMSModelEditorialRecommendationsRequestOperation;
    [(MPModelStoreBrowseRequestOperation *)&v9 execute];
  }
}

- (id)configurationForLoadingModelDataWithStoreURLBag:(id)bag error:(id *)error
{
  bagCopy = bag;
  v7 = [bagCopy dictionaryForBagKey:@"musicSubscription"];
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  primaryAuthKitAccount = [mEMORY[0x277CF0130] primaryAuthKitAccount];
  v10 = [mEMORY[0x277CF0130] userUnderAgeForAccount:primaryAuthKitAccount];

  v11 = @"musicStarterPackOver13";
  if (v10)
  {
    v11 = @"musicStarterPackUnder13";
  }

  v12 = v11;
  v13 = [v7 objectForKey:v12];
  if (v13)
  {
    v14 = [MEMORY[0x277CBEBC0] URLWithString:v13];
    request = [(MPStoreModelRequestOperation *)self request];
    [request setLoadAdditionalContentURL:v14];
  }

  else
  {
    v16 = NMLogForCategory(5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [NMSModelEditorialRecommendationsRequestOperation configurationForLoadingModelDataWithStoreURLBag:v12 error:v16];
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7201 userInfo:0];
    }
  }

  v19.receiver = self;
  v19.super_class = NMSModelEditorialRecommendationsRequestOperation;
  v17 = [(MPModelStoreBrowseRequestOperation *)&v19 configurationForLoadingModelDataWithStoreURLBag:bagCopy error:error];

  return v17;
}

- (void)produceResponseWithLoadedOutput:(id)output completion:(id)completion
{
  outputCopy = output;
  completionCopy = completion;
  request = [(MPStoreModelRequestOperation *)self request];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__NMSModelEditorialRecommendationsRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke;
  v13[3] = &unk_27993DF50;
  v14 = request;
  v15 = outputCopy;
  v16 = completionCopy;
  v12.receiver = self;
  v12.super_class = NMSModelEditorialRecommendationsRequestOperation;
  v9 = completionCopy;
  v10 = outputCopy;
  v11 = request;
  [(MPModelStoreBrowseRequestOperation *)&v12 produceResponseWithLoadedOutput:v10 completion:v13];
}

void __95__NMSModelEditorialRecommendationsRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([*(a1 + 32) nms_useCachedDataOnly] & 1) == 0)
  {
    [v7 nms_setCachedLoadedOutput:*(a1 + 40)];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

- (void)configurationForLoadingModelDataWithStoreURLBag:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25B27B000, a2, OS_LOG_TYPE_ERROR, "[Recommendation] (Editorial) Missing musicStarterPack bag key: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end