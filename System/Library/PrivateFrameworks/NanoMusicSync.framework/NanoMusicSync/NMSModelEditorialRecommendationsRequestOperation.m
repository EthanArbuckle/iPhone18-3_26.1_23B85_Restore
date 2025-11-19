@interface NMSModelEditorialRecommendationsRequestOperation
- (id)configurationForLoadingModelDataWithStoreURLBag:(id)a3 error:(id *)a4;
- (void)execute;
- (void)produceResponseWithLoadedOutput:(id)a3 completion:(id)a4;
@end

@implementation NMSModelEditorialRecommendationsRequestOperation

- (void)execute
{
  v3 = [(MPStoreModelRequestOperation *)self request];
  if ([v3 nms_useCachedDataOnly])
  {
    v4 = [v3 nms_cachedLoadedOutput];

    if (v4)
    {
      v5 = [v3 nms_cachedLoadedOutput];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __59__NMSModelEditorialRecommendationsRequestOperation_execute__block_invoke;
      v10[3] = &unk_27993EAB0;
      v10[4] = self;
      [(NMSModelEditorialRecommendationsRequestOperation *)self produceResponseWithLoadedOutput:v5 completion:v10];
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x277CD5F78]);
      v7 = [(MPStoreModelRequestOperation *)self request];
      v8 = [v6 initWithRequest:v7];
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

- (id)configurationForLoadingModelDataWithStoreURLBag:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 dictionaryForBagKey:@"musicSubscription"];
  v8 = [MEMORY[0x277CF0130] sharedInstance];
  v9 = [v8 primaryAuthKitAccount];
  v10 = [v8 userUnderAgeForAccount:v9];

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
    v15 = [(MPStoreModelRequestOperation *)self request];
    [v15 setLoadAdditionalContentURL:v14];
  }

  else
  {
    v16 = NMLogForCategory(5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [NMSModelEditorialRecommendationsRequestOperation configurationForLoadingModelDataWithStoreURLBag:v12 error:v16];
    }

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7201 userInfo:0];
    }
  }

  v19.receiver = self;
  v19.super_class = NMSModelEditorialRecommendationsRequestOperation;
  v17 = [(MPModelStoreBrowseRequestOperation *)&v19 configurationForLoadingModelDataWithStoreURLBag:v6 error:a4];

  return v17;
}

- (void)produceResponseWithLoadedOutput:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPStoreModelRequestOperation *)self request];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__NMSModelEditorialRecommendationsRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke;
  v13[3] = &unk_27993DF50;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v12.receiver = self;
  v12.super_class = NMSModelEditorialRecommendationsRequestOperation;
  v9 = v7;
  v10 = v6;
  v11 = v8;
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