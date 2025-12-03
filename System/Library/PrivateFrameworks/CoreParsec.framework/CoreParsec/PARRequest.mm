@interface PARRequest
+ (PARRequest)requestWithTopics:(id)topics triggerEvent:(unint64_t)event timeout:(double)timeout queryId:(unint64_t)id;
+ (id)cardRequestWithURL:(id)l;
+ (id)cardRequestWithURL:(id)l queryId:(unint64_t)id;
+ (id)flightRequestForQuery:(id)query date:(id)date appBundleId:(id)id;
+ (id)lookupRequestWithString:(id)string queryContext:(id)context domain:(id)domain lookupSelectionType:(int64_t)type appBundleId:(id)id;
+ (id)lookupRequestWithString:(id)string queryContext:(id)context domain:(id)domain lookupSelectionType:(int64_t)type appBundleId:(id)id queryId:(unint64_t)queryId;
+ (id)moreResultsRequestWithURL:(id)l;
+ (id)moreResultsRequestWithURL:(id)l queryId:(unint64_t)id;
+ (id)prefetchRequestForUrl:(id)url;
+ (id)prefetchRequestForUrl:(id)url locale:(id)locale;
+ (id)prefetchRequestForUrls:(id)urls locale:(id)locale;
+ (id)searchReplayRequestWithString:(id)string;
+ (id)searchRequestWithCommand:(id)command triggerEvent:(unint64_t)event queryId:(unint64_t)id queryString:(id)string;
+ (id)searchRequestWithEngagedSuggestion:(id)suggestion triggerEvent:(unint64_t)event queryId:(unint64_t)id;
+ (id)searchRequestWithString:(id)string triggerEvent:(unint64_t)event;
+ (id)searchRequestWithString:(id)string triggerEvent:(unint64_t)event queryId:(unint64_t)id;
+ (id)summarizeRequestForUrl:(id)url;
+ (id)summarizeRequestForUrl:(id)url locale:(id)locale;
+ (id)zeroKeywordRequest;
+ (id)zeroKeywordRequest:(unint64_t)request;
- (PARRequest)initWithCoder:(id)coder;
- (void)beginNWActivity;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PARRequest

- (void)beginNWActivity
{
  selfCopy = self;
  PARRequest.beginNWActivity()();
}

- (PARRequest)initWithCoder:(id)coder
{
  v34[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = PARRequest;
  v5 = [(PARRequest *)&v32 init];
  if (v5)
  {
    v5->_queryId = [coderCopy decodeInt64ForKey:@"queryId"];
    [coderCopy decodeDoubleForKey:@"scale"];
    v5->_scale = v6;
    v7 = MEMORY[0x1E695DFD8];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v9 = [v7 setWithArray:v8];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"queryItems"];
    queryItems = v5->_queryItems;
    v5->_queryItems = v10;

    v12 = MEMORY[0x1E695DFD8];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"headerItems"];
    headerItems = v5->_headerItems;
    v5->_headerItems = v15;

    v5->_verboseReply = [coderCopy decodeBoolForKey:@"verboseReply"];
    v5->_triggerEvent = [coderCopy decodeIntegerForKey:@"triggerEvent"];
    v5->_pretend = [coderCopy decodeBoolForKey:@"_pretend"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_keyboardInputMode"];
    keyboardInputMode = v5->_keyboardInputMode;
    v5->_keyboardInputMode = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"experimentNamespaceId"];
    experimentNamespaceId = v5->_experimentNamespaceId;
    v5->_experimentNamespaceId = v19;

    v5->_isClientOnlyExperiment = [coderCopy decodeBoolForKey:@"isClientOnlyExperiment"];
    v5->_isInReservedAllocationForExperiment = [coderCopy decodeBoolForKey:@"isInReservedAllocationForExperiment"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"experimentId"];
    experimentId = v5->_experimentId;
    v5->_experimentId = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"treatmentId"];
    treatmentId = v5->_treatmentId;
    v5->_treatmentId = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryCommand"];
    queryCommand = v5->_queryCommand;
    v5->_queryCommand = v25;

    v31 = 0;
    [coderCopy decodeBytesForKey:@"_nwActivityToken" returnedLength:&v31];
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

- (void)encodeWithCoder:(id)coder
{
  v8 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [coderCopy encodeInt64:self->_queryId forKey:@"queryId"];
  [coderCopy encodeDouble:@"scale" forKey:self->_scale];
  [coderCopy encodeObject:self->_queryItems forKey:@"queryItems"];
  [coderCopy encodeObject:self->_headerItems forKey:@"headerItems"];
  [coderCopy encodeBool:self->_verboseReply forKey:@"verboseReply"];
  [coderCopy encodeInteger:self->_triggerEvent forKey:@"triggerEvent"];
  [coderCopy encodeBool:self->_pretend forKey:@"_pretend"];
  [coderCopy encodeObject:self->_keyboardInputMode forKey:@"_keyboardInputMode"];
  [coderCopy encodeObject:self->_experimentNamespaceId forKey:@"experimentNamespaceId"];
  [coderCopy encodeBool:self->_isClientOnlyExperiment forKey:@"isClientOnlyExperiment"];
  [coderCopy encodeBool:self->_isInReservedAllocationForExperiment forKey:@"isInReservedAllocationForExperiment"];
  [coderCopy encodeObject:self->_experimentId forKey:@"experimentId"];
  [coderCopy encodeObject:self->_treatmentId forKey:@"treatmentId"];
  [coderCopy encodeObject:self->_queryCommand forKey:@"queryCommand"];
  if (self->_nwActivity)
  {
    *uu = 0;
    v7 = 0;
    nw_activity_get_token();
    if (!uuid_is_null(uu))
    {
      [coderCopy encodeBytes:uu length:16 forKey:@"_nwActivityToken"];
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (id)summarizeRequestForUrl:(id)url
{
  urlCopy = url;
  v4 = objc_alloc_init(PARSafariSummarizationSummarizeRequest);
  v5 = v4;
  if (v4)
  {
    [(PARSafariSummarizationSummarizeRequest *)v4 setUrlString:urlCopy];
  }

  return v5;
}

+ (id)summarizeRequestForUrl:(id)url locale:(id)locale
{
  localeCopy = locale;
  v6 = [PARRequest summarizeRequestForUrl:url];
  v7 = v6;
  if (v6)
  {
    [v6 setLocaleString:localeCopy];
  }

  return v7;
}

+ (id)prefetchRequestForUrl:(id)url
{
  urlCopy = url;
  v4 = objc_alloc_init(PARSafariSummarizationPrefetchRequest);
  v5 = v4;
  if (v4)
  {
    [(PARSafariSummarizationPrefetchRequest *)v4 setUrlString:urlCopy];
  }

  return v5;
}

+ (id)prefetchRequestForUrl:(id)url locale:(id)locale
{
  localeCopy = locale;
  v6 = [PARRequest prefetchRequestForUrl:url];
  v7 = v6;
  if (v6)
  {
    [v6 setLocaleString:localeCopy];
  }

  return v7;
}

+ (id)prefetchRequestForUrls:(id)urls locale:(id)locale
{
  localeCopy = locale;
  firstObject = [urls firstObject];
  v7 = [PARRequest prefetchRequestForUrl:firstObject locale:localeCopy];

  return v7;
}

+ (id)flightRequestForQuery:(id)query date:(id)date appBundleId:(id)id
{
  queryCopy = query;
  dateCopy = date;
  idCopy = id;
  v10 = objc_alloc_init(PARFlightSearchRequest);
  if (v10)
  {
    v11 = [queryCopy copy];
    [(PARFlightSearchRequest *)v10 setFlightQuery:v11];

    v12 = [dateCopy copy];
    [(PARFlightSearchRequest *)v10 setDate:v12];

    v13 = [idCopy copy];
    [(PARFlightSearchRequest *)v10 setAppBundleId:v13];

    [(PARRequest *)v10 setTriggerEvent:0];
  }

  return v10;
}

+ (id)lookupRequestWithString:(id)string queryContext:(id)context domain:(id)domain lookupSelectionType:(int64_t)type appBundleId:(id)id queryId:(unint64_t)queryId
{
  v9 = [self lookupRequestWithString:string queryContext:context domain:domain lookupSelectionType:type appBundleId:id];
  v10 = v9;
  if (v9)
  {
    [v9 setQueryId:queryId];
  }

  return v10;
}

+ (id)lookupRequestWithString:(id)string queryContext:(id)context domain:(id)domain lookupSelectionType:(int64_t)type appBundleId:(id)id
{
  stringCopy = string;
  contextCopy = context;
  domainCopy = domain;
  idCopy = id;
  v15 = objc_alloc_init(PARLookupRequest);
  if (v15)
  {
    v16 = [stringCopy copy];
    [(PARLookupRequest *)v15 setQueryString:v16];

    v17 = [contextCopy copy];
    [(PARLookupRequest *)v15 setQueryContext:v17];

    v18 = [domainCopy copy];
    [(PARLookupRequest *)v15 setDomain:v18];

    [(PARLookupRequest *)v15 setLookupSelectionType:type];
    v19 = [idCopy copy];
    [(PARLookupRequest *)v15 setAppBundleId:v19];

    [(PARRequest *)v15 setTriggerEvent:11];
  }

  return v15;
}

+ (PARRequest)requestWithTopics:(id)topics triggerEvent:(unint64_t)event timeout:(double)timeout queryId:(unint64_t)id
{
  topicsCopy = topics;
  v10 = objc_alloc_init(PARTopicRequest);
  [(PARRequest *)v10 setTriggerEvent:event];
  [(PARTopicRequest *)v10 setTopics:topicsCopy];

  [(PARRequest *)v10 setQueryId:id];
  [(PARTopicRequest *)v10 setTimeoutIntervalForRequest:timeout];

  return v10;
}

+ (id)zeroKeywordRequest:(unint64_t)request
{
  zeroKeywordRequest = [self zeroKeywordRequest];
  v5 = zeroKeywordRequest;
  if (zeroKeywordRequest)
  {
    [zeroKeywordRequest setQueryId:request];
  }

  return v5;
}

+ (id)zeroKeywordRequest
{
  v2 = objc_alloc_init(PARZeroKeywordRequest);
  [(PARRequest *)v2 setTriggerEvent:9];

  return v2;
}

+ (id)cardRequestWithURL:(id)l queryId:(unint64_t)id
{
  v5 = [self cardRequestWithURL:l];
  v6 = v5;
  if (v5)
  {
    [v5 setQueryId:id];
  }

  return v6;
}

+ (id)cardRequestWithURL:(id)l
{
  lCopy = l;
  v4 = objc_alloc_init(PARCardRequest);
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MEMORY[0x1E695DFF8] URLWithString:lCopy];
      [(PARCardRequest *)v4 setCardURL:v5];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PARCardRequest *)v4 setCardURL:lCopy];
      }
    }

    [(PARRequest *)v4 setTriggerEvent:14];
  }

  return v4;
}

+ (id)moreResultsRequestWithURL:(id)l queryId:(unint64_t)id
{
  v5 = [self moreResultsRequestWithURL:l];
  v6 = v5;
  if (v5)
  {
    [v5 setQueryId:id];
  }

  return v6;
}

+ (id)moreResultsRequestWithURL:(id)l
{
  lCopy = l;
  v4 = objc_alloc_init(PARMoreResultsRequest);
  v5 = v4;
  if (v4)
  {
    [(PARMoreResultsRequest *)v4 setMoreResultsURL:lCopy];
    [(PARRequest *)v5 setTriggerEvent:13];
  }

  return v5;
}

+ (id)searchReplayRequestWithString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(PARSearchReplayRequest);
  v5 = v4;
  if (v4)
  {
    [(PARSearchRequest *)v4 setQueryString:stringCopy];
  }

  return v5;
}

+ (id)searchRequestWithCommand:(id)command triggerEvent:(unint64_t)event queryId:(unint64_t)id queryString:(id)string
{
  commandCopy = command;
  v11 = [self searchRequestWithString:string triggerEvent:event queryId:id];
  v12 = v11;
  if (v11)
  {
    [v11 setQueryCommand:commandCopy];
  }

  return v12;
}

+ (id)searchRequestWithEngagedSuggestion:(id)suggestion triggerEvent:(unint64_t)event queryId:(unint64_t)id
{
  suggestionCopy = suggestion;
  suggestion = [suggestionCopy suggestion];
  v10 = [self searchRequestWithString:suggestion triggerEvent:event queryId:id];

  [v10 setEngagedSuggestion:suggestionCopy];

  return v10;
}

+ (id)searchRequestWithString:(id)string triggerEvent:(unint64_t)event queryId:(unint64_t)id
{
  v6 = [self searchRequestWithString:string triggerEvent:event];
  v7 = v6;
  if (v6)
  {
    [v6 setQueryId:id];
  }

  return v7;
}

+ (id)searchRequestWithString:(id)string triggerEvent:(unint64_t)event
{
  stringCopy = string;
  v6 = objc_alloc_init(PARSearchRequest);
  v7 = v6;
  if (v6)
  {
    [(PARSearchRequest *)v6 setQueryString:stringCopy];
    [(PARRequest *)v7 setTriggerEvent:event];
  }

  return v7;
}

@end