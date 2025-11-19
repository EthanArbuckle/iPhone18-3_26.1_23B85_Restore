@interface NMSModelForYouRecommendationsRequestOperation
- (void)_produceResponseWithRecommendationsArray:(id)a3 storeItemMetadataResults:(id)a4 completion:(id)a5;
- (void)execute;
@end

@implementation NMSModelForYouRecommendationsRequestOperation

- (void)execute
{
  v3 = [(MPStoreModelRequestOperation *)self request];
  if ([v3 nms_useCachedDataOnly])
  {
    kdebug_trace();
    v4 = [v3 nms_cachedRecommendationsArray];
    if (v4 && (v5 = v4, [v3 nms_cachedStoreItemMetadataResults], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
    {
      v7 = [v3 nms_cachedRecommendationsArray];
      v8 = [v3 nms_cachedStoreItemMetadataResults];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __56__NMSModelForYouRecommendationsRequestOperation_execute__block_invoke;
      v14[3] = &unk_27993EAB0;
      v14[4] = self;
      v13.receiver = self;
      v13.super_class = NMSModelForYouRecommendationsRequestOperation;
      [(MPModelForYouRecommendationsRequestOperation *)&v13 _produceResponseWithRecommendationsArray:v7 storeItemMetadataResults:v8 completion:v14];
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x277CD5E80]);
      v10 = [(MPStoreModelRequestOperation *)self request];
      v11 = [v9 initWithRequest:v10];
      [(MPStoreModelRequestOperation *)self _finishWithResponse:v11 error:0];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NMSModelForYouRecommendationsRequestOperation;
    [(MPStoreModelRequestOperation *)&v12 execute];
  }
}

void __56__NMSModelForYouRecommendationsRequestOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  [*(a1 + 32) _finishWithResponse:v6 error:v5];
}

- (void)_produceResponseWithRecommendationsArray:(id)a3 storeItemMetadataResults:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MPStoreModelRequestOperation *)self request];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __126__NMSModelForYouRecommendationsRequestOperation__produceResponseWithRecommendationsArray_storeItemMetadataResults_completion___block_invoke;
  v17[3] = &unk_27993EAD8;
  v18 = v11;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v16.receiver = self;
  v16.super_class = NMSModelForYouRecommendationsRequestOperation;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v11;
  [(MPModelForYouRecommendationsRequestOperation *)&v16 _produceResponseWithRecommendationsArray:v14 storeItemMetadataResults:v13 completion:v17];
}

void __126__NMSModelForYouRecommendationsRequestOperation__produceResponseWithRecommendationsArray_storeItemMetadataResults_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([*(a1 + 32) nms_useCachedDataOnly] & 1) == 0)
  {
    [v7 nms_setCachedRecommendationsArray:*(a1 + 40)];
    [v7 nms_setCachedStoreItemMetadataResults:*(a1 + 48)];
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

@end