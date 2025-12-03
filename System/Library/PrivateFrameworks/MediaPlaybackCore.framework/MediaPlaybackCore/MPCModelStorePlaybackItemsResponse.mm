@interface MPCModelStorePlaybackItemsResponse
- (MPCModelStorePlaybackItemsResponse)initWithRequest:(id)request accumulator:(id)accumulator;
- (MPCModelStorePlaybackItemsResponse)initWithRequest:(id)request personalizationResponse:(id)response results:(id)results performanceMetrics:(id)metrics accumulator:(id)accumulator;
- (void)clearResults;
@end

@implementation MPCModelStorePlaybackItemsResponse

- (void)clearResults
{
  accumulation = self->_accumulation;
  self->_accumulation = 0;

  [(MPModelResponse *)self setResults:0];
}

- (MPCModelStorePlaybackItemsResponse)initWithRequest:(id)request personalizationResponse:(id)response results:(id)results performanceMetrics:(id)metrics accumulator:(id)accumulator
{
  responseCopy = response;
  resultsCopy = results;
  metricsCopy = metrics;
  accumulatorCopy = accumulator;
  requestCopy = request;
  [requestCopy setPreviousResponse:0];
  v18 = [(MPModelResponse *)self initWithRequest:requestCopy];

  if (v18)
  {
    objc_storeStrong(&v18->_personalizationResponse, response);
    objc_storeStrong(&v18->_accumulator, accumulator);
    v18->_pendingIDsCount = [accumulatorCopy pendingIDsCount];
    v18->_failedIDsCount = [accumulatorCopy failedIDsCount];
    results = [(MPStoreLibraryPersonalizationResponse *)v18->_personalizationResponse results];
    v20 = results;
    if (results)
    {
      v21 = results;
    }

    else
    {
      v21 = resultsCopy;
    }

    [(MPModelResponse *)v18 setResults:v21];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v23 = defaultCenter;
    if (v18->_personalizationResponse)
    {
      [defaultCenter addObserver:v18 selector:sel__personalizationResponseDidInvalidateNotification_ name:*MEMORY[0x1E6970240] object:?];
      if (([(MPStoreLibraryPersonalizationResponse *)v18->_personalizationResponse isValid]& 1) == 0)
      {
        v18->_invalidationReason = 1;
        [(MPModelResponse *)v18 _invalidate];
      }
    }

    objc_storeStrong(&v18->_performanceMetrics, metrics);
    v24 = *MEMORY[0x1E69703A0];
    mEMORY[0x1E6970920] = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
    [v23 addObserver:v18 selector:sel__allowsExplicitContentDidChangeNotification_ name:v24 object:mEMORY[0x1E6970920]];

    [v23 addObserver:v18 selector:sel__activeUserDidChangeNotification_ name:*MEMORY[0x1E69E4098] object:0];
  }

  return v18;
}

- (MPCModelStorePlaybackItemsResponse)initWithRequest:(id)request accumulator:(id)accumulator
{
  requestCopy = request;
  accumulatorCopy = accumulator;
  v24.receiver = self;
  v24.super_class = MPCModelStorePlaybackItemsResponse;
  v8 = [(MPModelResponse *)&v24 initWithRequest:requestCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accumulator, accumulator);
    accumulatedResults = [(MPCModelStorePlaybackItemsRequestAccumulator *)v9->_accumulator accumulatedResults];
    accumulation = v9->_accumulation;
    v9->_accumulation = accumulatedResults;

    results = [(MPCModelStorePlaybackItemsRequestAccumulation *)v9->_accumulation results];
    [(MPModelResponse *)v9 setResults:results];

    v9->_pendingIDsCount = [accumulatorCopy pendingIDsCount];
    v9->_failedIDsCount = [accumulatorCopy failedIDsCount];
    performanceMetrics = [(MPCModelStorePlaybackItemsRequestAccumulator *)v9->_accumulator performanceMetrics];
    performanceMetrics = v9->_performanceMetrics;
    v9->_performanceMetrics = performanceMetrics;

    objc_initWeak(&location, v9);
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __66__MPCModelStorePlaybackItemsResponse_initWithRequest_accumulator___block_invoke;
    v21 = &unk_1E8239500;
    objc_copyWeak(&v22, &location);
    [(MPCModelStorePlaybackItemsRequestAccumulation *)v9->_accumulation setOnInvalidate:&v18];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mEMORY[0x1E6970920] = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
    [defaultCenter addObserver:v9 selector:sel__allowsExplicitContentDidChangeNotification_ name:*MEMORY[0x1E69703A0] object:mEMORY[0x1E6970920]];

    [defaultCenter addObserver:v9 selector:sel__activeUserDidChangeNotification_ name:*MEMORY[0x1E69E4098] object:0];
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