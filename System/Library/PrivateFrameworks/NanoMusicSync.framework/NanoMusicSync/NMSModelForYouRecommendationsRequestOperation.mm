@interface NMSModelForYouRecommendationsRequestOperation
- (void)_produceResponseWithRecommendationsArray:(id)array storeItemMetadataResults:(id)results completion:(id)completion;
- (void)execute;
@end

@implementation NMSModelForYouRecommendationsRequestOperation

- (void)execute
{
  request = [(MPStoreModelRequestOperation *)self request];
  if ([request nms_useCachedDataOnly])
  {
    kdebug_trace();
    nms_cachedRecommendationsArray = [request nms_cachedRecommendationsArray];
    if (nms_cachedRecommendationsArray && (v5 = nms_cachedRecommendationsArray, [request nms_cachedStoreItemMetadataResults], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
    {
      nms_cachedRecommendationsArray2 = [request nms_cachedRecommendationsArray];
      nms_cachedStoreItemMetadataResults = [request nms_cachedStoreItemMetadataResults];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __56__NMSModelForYouRecommendationsRequestOperation_execute__block_invoke;
      v14[3] = &unk_27993EAB0;
      v14[4] = self;
      v13.receiver = self;
      v13.super_class = NMSModelForYouRecommendationsRequestOperation;
      [(MPModelForYouRecommendationsRequestOperation *)&v13 _produceResponseWithRecommendationsArray:nms_cachedRecommendationsArray2 storeItemMetadataResults:nms_cachedStoreItemMetadataResults completion:v14];
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x277CD5E80]);
      request2 = [(MPStoreModelRequestOperation *)self request];
      v11 = [v9 initWithRequest:request2];
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

- (void)_produceResponseWithRecommendationsArray:(id)array storeItemMetadataResults:(id)results completion:(id)completion
{
  arrayCopy = array;
  resultsCopy = results;
  completionCopy = completion;
  request = [(MPStoreModelRequestOperation *)self request];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __126__NMSModelForYouRecommendationsRequestOperation__produceResponseWithRecommendationsArray_storeItemMetadataResults_completion___block_invoke;
  v17[3] = &unk_27993EAD8;
  v18 = request;
  v19 = arrayCopy;
  v20 = resultsCopy;
  v21 = completionCopy;
  v16.receiver = self;
  v16.super_class = NMSModelForYouRecommendationsRequestOperation;
  v12 = completionCopy;
  v13 = resultsCopy;
  v14 = arrayCopy;
  v15 = request;
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