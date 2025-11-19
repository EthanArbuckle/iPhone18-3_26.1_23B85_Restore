@interface PARRequest
+ (PARRequest)requestWithTopics:(id)a3 triggerEvent:(unint64_t)a4 timeout:(double)a5 queryId:(unint64_t)a6;
+ (id)cardRequestWithURL:(id)a3;
+ (id)cardRequestWithURL:(id)a3 queryId:(unint64_t)a4;
+ (id)flightRequestForQuery:(id)a3 date:(id)a4 appBundleId:(id)a5;
+ (id)lookupRequestWithString:(id)a3 queryContext:(id)a4 domain:(id)a5 lookupSelectionType:(int64_t)a6 appBundleId:(id)a7;
+ (id)lookupRequestWithString:(id)a3 queryContext:(id)a4 domain:(id)a5 lookupSelectionType:(int64_t)a6 appBundleId:(id)a7 queryId:(unint64_t)a8;
+ (id)moreResultsRequestWithURL:(id)a3;
+ (id)moreResultsRequestWithURL:(id)a3 queryId:(unint64_t)a4;
+ (id)prefetchRequestForUrl:(id)a3;
+ (id)prefetchRequestForUrl:(id)a3 locale:(id)a4;
+ (id)prefetchRequestForUrls:(id)a3 locale:(id)a4;
+ (id)searchReplayRequestWithString:(id)a3;
+ (id)searchRequestWithCommand:(id)a3 triggerEvent:(unint64_t)a4 queryId:(unint64_t)a5 queryString:(id)a6;
+ (id)searchRequestWithEngagedSuggestion:(id)a3 triggerEvent:(unint64_t)a4 queryId:(unint64_t)a5;
+ (id)searchRequestWithString:(id)a3 triggerEvent:(unint64_t)a4;
+ (id)searchRequestWithString:(id)a3 triggerEvent:(unint64_t)a4 queryId:(unint64_t)a5;
+ (id)summarizeRequestForUrl:(id)a3;
+ (id)summarizeRequestForUrl:(id)a3 locale:(id)a4;
+ (id)zeroKeywordRequest;
+ (id)zeroKeywordRequest:(unint64_t)a3;
- (PARRequest)initWithCoder:(id)a3;
- (void)beginNWActivity;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PARRequest

- (void)beginNWActivity
{
  v2 = self;
  PARRequest.beginNWActivity()();
}

- (PARRequest)initWithCoder:(id)a3
{
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = PARRequest;
  v5 = [(PARRequest *)&v32 init];
  if (v5)
  {
    v5->_queryId = [v4 decodeInt64ForKey:@"queryId"];
    [v4 decodeDoubleForKey:@"scale"];
    v5->_scale = v6;
    v7 = MEMORY[0x1E695DFD8];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v9 = [v7 setWithArray:v8];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"queryItems"];
    queryItems = v5->_queryItems;
    v5->_queryItems = v10;

    v12 = MEMORY[0x1E695DFD8];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"headerItems"];
    headerItems = v5->_headerItems;
    v5->_headerItems = v15;

    v5->_verboseReply = [v4 decodeBoolForKey:@"verboseReply"];
    v5->_triggerEvent = [v4 decodeIntegerForKey:@"triggerEvent"];
    v5->_pretend = [v4 decodeBoolForKey:@"_pretend"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_keyboardInputMode"];
    keyboardInputMode = v5->_keyboardInputMode;
    v5->_keyboardInputMode = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experimentNamespaceId"];
    experimentNamespaceId = v5->_experimentNamespaceId;
    v5->_experimentNamespaceId = v19;

    v5->_isClientOnlyExperiment = [v4 decodeBoolForKey:@"isClientOnlyExperiment"];
    v5->_isInReservedAllocationForExperiment = [v4 decodeBoolForKey:@"isInReservedAllocationForExperiment"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experimentId"];
    experimentId = v5->_experimentId;
    v5->_experimentId = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"treatmentId"];
    treatmentId = v5->_treatmentId;
    v5->_treatmentId = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"queryCommand"];
    queryCommand = v5->_queryCommand;
    v5->_queryCommand = v25;

    v31 = 0;
    [v4 decodeBytesForKey:@"_nwActivityToken" returnedLength:&v31];
    if (v31 == 16)
    {
      v27 = nw_activity_create_from_token();
      nwActivity = v5->_nwActivity;
      v5->_nwActivity = v27;
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 encodeInt64:self->_queryId forKey:@"queryId"];
  [v4 encodeDouble:@"scale" forKey:self->_scale];
  [v4 encodeObject:self->_queryItems forKey:@"queryItems"];
  [v4 encodeObject:self->_headerItems forKey:@"headerItems"];
  [v4 encodeBool:self->_verboseReply forKey:@"verboseReply"];
  [v4 encodeInteger:self->_triggerEvent forKey:@"triggerEvent"];
  [v4 encodeBool:self->_pretend forKey:@"_pretend"];
  [v4 encodeObject:self->_keyboardInputMode forKey:@"_keyboardInputMode"];
  [v4 encodeObject:self->_experimentNamespaceId forKey:@"experimentNamespaceId"];
  [v4 encodeBool:self->_isClientOnlyExperiment forKey:@"isClientOnlyExperiment"];
  [v4 encodeBool:self->_isInReservedAllocationForExperiment forKey:@"isInReservedAllocationForExperiment"];
  [v4 encodeObject:self->_experimentId forKey:@"experimentId"];
  [v4 encodeObject:self->_treatmentId forKey:@"treatmentId"];
  [v4 encodeObject:self->_queryCommand forKey:@"queryCommand"];
  if (self->_nwActivity)
  {
    *uu = 0;
    v7 = 0;
    nw_activity_get_token();
    if (!uuid_is_null(uu))
    {
      [v4 encodeBytes:uu length:16 forKey:@"_nwActivityToken"];
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (id)summarizeRequestForUrl:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PARSafariSummarizationSummarizeRequest);
  v5 = v4;
  if (v4)
  {
    [(PARSafariSummarizationSummarizeRequest *)v4 setUrlString:v3];
  }

  return v5;
}

+ (id)summarizeRequestForUrl:(id)a3 locale:(id)a4
{
  v5 = a4;
  v6 = [PARRequest summarizeRequestForUrl:a3];
  v7 = v6;
  if (v6)
  {
    [v6 setLocaleString:v5];
  }

  return v7;
}

+ (id)prefetchRequestForUrl:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PARSafariSummarizationPrefetchRequest);
  v5 = v4;
  if (v4)
  {
    [(PARSafariSummarizationPrefetchRequest *)v4 setUrlString:v3];
  }

  return v5;
}

+ (id)prefetchRequestForUrl:(id)a3 locale:(id)a4
{
  v5 = a4;
  v6 = [PARRequest prefetchRequestForUrl:a3];
  v7 = v6;
  if (v6)
  {
    [v6 setLocaleString:v5];
  }

  return v7;
}

+ (id)prefetchRequestForUrls:(id)a3 locale:(id)a4
{
  v5 = a4;
  v6 = [a3 firstObject];
  v7 = [PARRequest prefetchRequestForUrl:v6 locale:v5];

  return v7;
}

+ (id)flightRequestForQuery:(id)a3 date:(id)a4 appBundleId:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(PARFlightSearchRequest);
  if (v10)
  {
    v11 = [v7 copy];
    [(PARFlightSearchRequest *)v10 setFlightQuery:v11];

    v12 = [v8 copy];
    [(PARFlightSearchRequest *)v10 setDate:v12];

    v13 = [v9 copy];
    [(PARFlightSearchRequest *)v10 setAppBundleId:v13];

    [(PARRequest *)v10 setTriggerEvent:0];
  }

  return v10;
}

+ (id)lookupRequestWithString:(id)a3 queryContext:(id)a4 domain:(id)a5 lookupSelectionType:(int64_t)a6 appBundleId:(id)a7 queryId:(unint64_t)a8
{
  v9 = [a1 lookupRequestWithString:a3 queryContext:a4 domain:a5 lookupSelectionType:a6 appBundleId:a7];
  v10 = v9;
  if (v9)
  {
    [v9 setQueryId:a8];
  }

  return v10;
}

+ (id)lookupRequestWithString:(id)a3 queryContext:(id)a4 domain:(id)a5 lookupSelectionType:(int64_t)a6 appBundleId:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = objc_alloc_init(PARLookupRequest);
  if (v15)
  {
    v16 = [v11 copy];
    [(PARLookupRequest *)v15 setQueryString:v16];

    v17 = [v12 copy];
    [(PARLookupRequest *)v15 setQueryContext:v17];

    v18 = [v13 copy];
    [(PARLookupRequest *)v15 setDomain:v18];

    [(PARLookupRequest *)v15 setLookupSelectionType:a6];
    v19 = [v14 copy];
    [(PARLookupRequest *)v15 setAppBundleId:v19];

    [(PARRequest *)v15 setTriggerEvent:11];
  }

  return v15;
}

+ (PARRequest)requestWithTopics:(id)a3 triggerEvent:(unint64_t)a4 timeout:(double)a5 queryId:(unint64_t)a6
{
  v9 = a3;
  v10 = objc_alloc_init(PARTopicRequest);
  [(PARRequest *)v10 setTriggerEvent:a4];
  [(PARTopicRequest *)v10 setTopics:v9];

  [(PARRequest *)v10 setQueryId:a6];
  [(PARTopicRequest *)v10 setTimeoutIntervalForRequest:a5];

  return v10;
}

+ (id)zeroKeywordRequest:(unint64_t)a3
{
  v4 = [a1 zeroKeywordRequest];
  v5 = v4;
  if (v4)
  {
    [v4 setQueryId:a3];
  }

  return v5;
}

+ (id)zeroKeywordRequest
{
  v2 = objc_alloc_init(PARZeroKeywordRequest);
  [(PARRequest *)v2 setTriggerEvent:9];

  return v2;
}

+ (id)cardRequestWithURL:(id)a3 queryId:(unint64_t)a4
{
  v5 = [a1 cardRequestWithURL:a3];
  v6 = v5;
  if (v5)
  {
    [v5 setQueryId:a4];
  }

  return v6;
}

+ (id)cardRequestWithURL:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PARCardRequest);
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MEMORY[0x1E695DFF8] URLWithString:v3];
      [(PARCardRequest *)v4 setCardURL:v5];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PARCardRequest *)v4 setCardURL:v3];
      }
    }

    [(PARRequest *)v4 setTriggerEvent:14];
  }

  return v4;
}

+ (id)moreResultsRequestWithURL:(id)a3 queryId:(unint64_t)a4
{
  v5 = [a1 moreResultsRequestWithURL:a3];
  v6 = v5;
  if (v5)
  {
    [v5 setQueryId:a4];
  }

  return v6;
}

+ (id)moreResultsRequestWithURL:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PARMoreResultsRequest);
  v5 = v4;
  if (v4)
  {
    [(PARMoreResultsRequest *)v4 setMoreResultsURL:v3];
    [(PARRequest *)v5 setTriggerEvent:13];
  }

  return v5;
}

+ (id)searchReplayRequestWithString:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PARSearchReplayRequest);
  v5 = v4;
  if (v4)
  {
    [(PARSearchRequest *)v4 setQueryString:v3];
  }

  return v5;
}

+ (id)searchRequestWithCommand:(id)a3 triggerEvent:(unint64_t)a4 queryId:(unint64_t)a5 queryString:(id)a6
{
  v10 = a3;
  v11 = [a1 searchRequestWithString:a6 triggerEvent:a4 queryId:a5];
  v12 = v11;
  if (v11)
  {
    [v11 setQueryCommand:v10];
  }

  return v12;
}

+ (id)searchRequestWithEngagedSuggestion:(id)a3 triggerEvent:(unint64_t)a4 queryId:(unint64_t)a5
{
  v8 = a3;
  v9 = [v8 suggestion];
  v10 = [a1 searchRequestWithString:v9 triggerEvent:a4 queryId:a5];

  [v10 setEngagedSuggestion:v8];

  return v10;
}

+ (id)searchRequestWithString:(id)a3 triggerEvent:(unint64_t)a4 queryId:(unint64_t)a5
{
  v6 = [a1 searchRequestWithString:a3 triggerEvent:a4];
  v7 = v6;
  if (v6)
  {
    [v6 setQueryId:a5];
  }

  return v7;
}

+ (id)searchRequestWithString:(id)a3 triggerEvent:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(PARSearchRequest);
  v7 = v6;
  if (v6)
  {
    [(PARSearchRequest *)v6 setQueryString:v5];
    [(PARRequest *)v7 setTriggerEvent:a4];
  }

  return v7;
}

@end