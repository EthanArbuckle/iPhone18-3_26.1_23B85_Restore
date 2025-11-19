@interface MPCModelStorePlaybackItemsResponse
- (MPCModelStorePlaybackItemsResponse)initWithRequest:(id)a3 accumulator:(id)a4;
- (MPCModelStorePlaybackItemsResponse)initWithRequest:(id)a3 personalizationResponse:(id)a4 results:(id)a5 performanceMetrics:(id)a6 accumulator:(id)a7;
- (void)clearResults;
@end

@implementation MPCModelStorePlaybackItemsResponse

- (void)clearResults
{
  accumulation = self->_accumulation;
  self->_accumulation = 0;

  [(MPModelResponse *)self setResults:0];
}

- (MPCModelStorePlaybackItemsResponse)initWithRequest:(id)a3 personalizationResponse:(id)a4 results:(id)a5 performanceMetrics:(id)a6 accumulator:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a3;
  [v17 setPreviousResponse:0];
  v18 = [(MPModelResponse *)self initWithRequest:v17];

  if (v18)
  {
    objc_storeStrong(&v18->_personalizationResponse, a4);
    objc_storeStrong(&v18->_accumulator, a7);
    v18->_pendingIDsCount = [v16 pendingIDsCount];
    v18->_failedIDsCount = [v16 failedIDsCount];
    v19 = [(MPStoreLibraryPersonalizationResponse *)v18->_personalizationResponse results];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v14;
    }

    [(MPModelResponse *)v18 setResults:v21];

    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    v23 = v22;
    if (v18->_personalizationResponse)
    {
      [v22 addObserver:v18 selector:sel__personalizationResponseDidInvalidateNotification_ name:*MEMORY[0x1E6970240] object:?];
      if (([(MPStoreLibraryPersonalizationResponse *)v18->_personalizationResponse isValid]& 1) == 0)
      {
        v18->_invalidationReason = 1;
        [(MPModelResponse *)v18 _invalidate];
      }
    }

    objc_storeStrong(&v18->_performanceMetrics, a6);
    v24 = *MEMORY[0x1E69703A0];
    v25 = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
    [v23 addObserver:v18 selector:sel__allowsExplicitContentDidChangeNotification_ name:v24 object:v25];

    [v23 addObserver:v18 selector:sel__activeUserDidChangeNotification_ name:*MEMORY[0x1E69E4098] object:0];
  }

  return v18;
}

- (MPCModelStorePlaybackItemsResponse)initWithRequest:(id)a3 accumulator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = MPCModelStorePlaybackItemsResponse;
  v8 = [(MPModelResponse *)&v24 initWithRequest:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accumulator, a4);
    v10 = [(MPCModelStorePlaybackItemsRequestAccumulator *)v9->_accumulator accumulatedResults];
    accumulation = v9->_accumulation;
    v9->_accumulation = v10;

    v12 = [(MPCModelStorePlaybackItemsRequestAccumulation *)v9->_accumulation results];
    [(MPModelResponse *)v9 setResults:v12];

    v9->_pendingIDsCount = [v7 pendingIDsCount];
    v9->_failedIDsCount = [v7 failedIDsCount];
    v13 = [(MPCModelStorePlaybackItemsRequestAccumulator *)v9->_accumulator performanceMetrics];
    performanceMetrics = v9->_performanceMetrics;
    v9->_performanceMetrics = v13;

    objc_initWeak(&location, v9);
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __66__MPCModelStorePlaybackItemsResponse_initWithRequest_accumulator___block_invoke;
    v21 = &unk_1E8239500;
    objc_copyWeak(&v22, &location);
    [(MPCModelStorePlaybackItemsRequestAccumulation *)v9->_accumulation setOnInvalidate:&v18];
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
    [v15 addObserver:v9 selector:sel__allowsExplicitContentDidChangeNotification_ name:*MEMORY[0x1E69703A0] object:v16];

    [v15 addObserver:v9 selector:sel__activeUserDidChangeNotification_ name:*MEMORY[0x1E69E4098] object:0];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __66__MPCModelStorePlaybackItemsResponse_initWithRequest_accumulator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[9] = 1;
    v2 = WeakRetained;
    [WeakRetained _invalidate];
    WeakRetained = v2;
  }
}

@end