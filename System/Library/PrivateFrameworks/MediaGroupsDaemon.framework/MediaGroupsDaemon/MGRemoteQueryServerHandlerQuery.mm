@interface MGRemoteQueryServerHandlerQuery
+ (id)handlerForRequest:(id)request;
- (BOOL)validateRequest;
- (NSArray)queryGroups;
- (NSError)queryError;
- (NSString)description;
- (id)_initWithRequest:(id)request;
- (id)payloadProvider;
- (int)prepareResponse:(id)response;
- (void)_queryHandleResults:(id)results error:(id)error;
- (void)_querySendResults;
- (void)_queryStart;
- (void)_requestParse;
- (void)_withLock:(id)lock;
- (void)dealloc;
- (void)provideResponseData:(id)data;
- (void)setPayloadProvider:(id)provider;
- (void)setPendingUpdate:(BOOL)update;
- (void)setQueryError:(id)error;
- (void)setQueryGroups:(id)groups;
@end

@implementation MGRemoteQueryServerHandlerQuery

- (id)_initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = MGRemoteQueryServerHandlerQuery;
  v6 = [(MGRemoteQueryServerHandlerQuery *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_request, request);
    [(MGRemoteQueryServerHandlerQuery *)v7 _requestParse];
  }

  return v7;
}

- (void)dealloc
{
  [(MGRemoteQueryServerHandlerQuery *)self setQuery:0];
  v3.receiver = self;
  v3.super_class = MGRemoteQueryServerHandlerQuery;
  [(MGRemoteQueryServerHandlerQuery *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestPredicate = [(MGRemoteQueryServerHandlerQuery *)self requestPredicate];
  query = [(MGRemoteQueryServerHandlerQuery *)self query];
  v8 = [v3 stringWithFormat:@"<%@: %p, _predicate = %@, _query = %@>", v5, self, requestPredicate, query];

  return v8;
}

+ (id)handlerForRequest:(id)request
{
  requestCopy = request;
  v5 = [[self alloc] _initWithRequest:requestCopy];

  return v5;
}

- (BOOL)validateRequest
{
  urlPath = [objc_opt_class() urlPath];
  request = [(MGRemoteQueryServerHandlerQuery *)self request];
  v5 = [request URL];
  path = [v5 path];
  v7 = [urlPath isEqual:path];

  requestPredicate = [(MGRemoteQueryServerHandlerQuery *)self requestPredicate];
  LOBYTE(request) = requestPredicate != 0;

  requestPredicate2 = [(MGRemoteQueryServerHandlerQuery *)self requestPredicate];
  LOBYTE(urlPath) = [requestPredicate2 mg_containsCurrentDevice];

  return request & ~urlPath & v7;
}

- (int)prepareResponse:(id)response
{
  v4 = MEMORY[0x277CCAD78];
  responseCopy = response;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  [(MGRemoteQueryServerHandlerQuery *)self setResponseBoundary:uUIDString];

  v8 = MEMORY[0x277CCACA8];
  responseBoundary = [(MGRemoteQueryServerHandlerQuery *)self responseBoundary];
  v10 = [v8 stringWithFormat:@"multipart/x-mixed-replace boundary=%@", responseBoundary];;

  v11 = *MEMORY[0x277CD9278];
  [v10 UTF8String];
  nw_http_fields_append();

  [(MGRemoteQueryServerHandlerQuery *)self _queryStart];
  return 200;
}

- (void)provideResponseData:(id)data
{
  dataCopy = data;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__MGRemoteQueryServerHandlerQuery_provideResponseData___block_invoke;
  v6[3] = &unk_27989F038;
  v6[4] = self;
  v5 = dataCopy;
  v7 = v5;
  v8 = &v9;
  [(MGRemoteQueryServerHandlerQuery *)self _withLock:v6];
  if (*(v10 + 24) == 1)
  {
    [(MGRemoteQueryServerHandlerQuery *)self _querySendResults];
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __55__MGRemoteQueryServerHandlerQuery_provideResponseData___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPayloadProvider:*(a1 + 40)];
  result = [*(a1 + 32) pendingUpdate];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_requestParse
{
  v25 = *MEMORY[0x277D85DE8];
  request = [(MGRemoteQueryServerHandlerQuery *)self request];
  v3 = [request URL];

  if (v3)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:0];
  }

  else
  {
    v4 = 0;
  }

  v19 = v4;
  [v4 queryItems];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v8 = *v21;
    *&v7 = 134218498;
    v17 = v7;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        name = [v10 name];
        v12 = [@"predicate" isEqual:name];

        if (v12)
        {
          value = [v10 value];
          v14 = value;
          if (value)
          {
            if ([value length])
            {
              v15 = [MEMORY[0x277CCAC30] predicateWithFormat:v14];
              if (v15)
              {
                [(MGRemoteQueryServerHandlerQuery *)self setRequestPredicate:v15];

                goto LABEL_18;
              }
            }
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_queryStart
{
  v27[5] = *MEMORY[0x277D85DE8];
  query = [(MGRemoteQueryServerHandlerQuery *)self query];

  if (query)
  {
    v4 = MGLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_error_impl(&dword_25863A000, v4, OS_LOG_TYPE_ERROR, "%p handler already started query", buf, 0xCu);
    }
  }

  else
  {
    v5 = MEMORY[0x277CCA920];
    rq_predicateForHaveCurrentHome = [MEMORY[0x277D27440] rq_predicateForHaveCurrentHome];
    v27[0] = rq_predicateForHaveCurrentHome;
    rq_predicateForLocal = [MEMORY[0x277D27440] rq_predicateForLocal];
    v27[1] = rq_predicateForLocal;
    rq_predicateForRestrictedTypes = [MEMORY[0x277D27440] rq_predicateForRestrictedTypes];
    v27[2] = rq_predicateForRestrictedTypes;
    rq_predicateForInCurrentHome = [MEMORY[0x277D27440] rq_predicateForInCurrentHome];
    v27[3] = rq_predicateForInCurrentHome;
    requestPredicate = [(MGRemoteQueryServerHandlerQuery *)self requestPredicate];
    v27[4] = requestPredicate;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:5];
    v4 = [v5 andPredicateWithSubpredicates:v11];

    v12 = MGLogForCategory(5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      selfCopy3 = self;
      v25 = 2112;
      v26 = v4;
      _os_log_debug_impl(&dword_25863A000, v12, OS_LOG_TYPE_DEBUG, "%p handler starting query with predicate %@", buf, 0x16u);
    }

    objc_initWeak(&location, self);
    v13 = MEMORY[0x277D27458];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __46__MGRemoteQueryServerHandlerQuery__queryStart__block_invoke;
    v20 = &unk_27989F060;
    objc_copyWeak(&v21, &location);
    v14 = [v13 queryWithPredicate:v4 updateHandler:&v17];
    [(MGRemoteQueryServerHandlerQuery *)self setQuery:v14, v17, v18, v19, v20];
    v15 = MGLogForCategory(5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy3 = self;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_25863A000, v15, OS_LOG_TYPE_DEFAULT, "%p handler started query %@", buf, 0x16u);
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __46__MGRemoteQueryServerHandlerQuery__queryStart__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _queryHandleResults:v8 error:v5];
  }
}

- (void)_queryHandleResults:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __61__MGRemoteQueryServerHandlerQuery__queryHandleResults_error___block_invoke;
  v13 = &unk_27989F088;
  selfCopy = self;
  v8 = resultsCopy;
  v15 = v8;
  v9 = errorCopy;
  v16 = v9;
  v17 = &v18;
  [(MGRemoteQueryServerHandlerQuery *)self _withLock:&v10];
  if (v19[5])
  {
    [(MGRemoteQueryServerHandlerQuery *)self _querySendResults:v10];
  }

  _Block_object_dispose(&v18, 8);
}

uint64_t __61__MGRemoteQueryServerHandlerQuery__queryHandleResults_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setQueryGroups:*(a1 + 40)];
  [*(a1 + 32) setQueryError:*(a1 + 48)];
  [*(a1 + 32) setPendingUpdate:1];
  v2 = [*(a1 + 32) payloadProvider];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_querySendResults
{
  v39 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__21;
  v35 = __Block_byref_object_dispose__22;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__21;
  v29 = __Block_byref_object_dispose__22;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52__MGRemoteQueryServerHandlerQuery__querySendResults__block_invoke;
  v18[3] = &unk_27989F0B0;
  v18[4] = self;
  v18[5] = &v31;
  v18[6] = &v25;
  v18[7] = &v19;
  [(MGRemoteQueryServerHandlerQuery *)self _withLock:v18];
  if (v20[5])
  {
    if (v32[5])
    {
      v3 = [MGRemoteQueryReply replyWithGroups:?];
    }

    else
    {
      if (!v26[5])
      {
        v4 = 0;
        goto LABEL_9;
      }

      v3 = [MGRemoteQueryReply replyWithError:?];
    }

    v4 = v3;
LABEL_9:
    v5 = MEMORY[0x277CCAAA0];
    rq_coded = [v4 rq_coded];
    v17 = 0;
    v7 = [v5 dataWithJSONObject:rq_coded options:0 error:&v17];
    v8 = v17;

    if (v8)
    {
      (*(v20[5] + 16))();
    }

    else
    {
      v9 = MEMORY[0x277CCACA8];
      responseBoundary = [(MGRemoteQueryServerHandlerQuery *)self responseBoundary];
      v11 = [v9 stringWithFormat:@"\r\n--%@\r\n", responseBoundary];

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"content-length: %lu\r\ncontent-type: application/json charset=utf8\r\n\r\n", objc_msgSend(v7, "length")];;
      v13 = [v11 dataUsingEncoding:5];
      v14 = [v12 dataUsingEncoding:5];
      v15 = [v13 mutableCopy];
      [v15 appendData:v14];
      [v15 appendData:v7];
      (*(v20[5] + 16))();
    }

    goto LABEL_13;
  }

  v4 = MGLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_error_impl(&dword_25863A000, v4, OS_LOG_TYPE_ERROR, "%p handler not sending query results without payload provider", buf, 0xCu);
  }

LABEL_13:

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  v16 = *MEMORY[0x277D85DE8];
}

void __52__MGRemoteQueryServerHandlerQuery__querySendResults__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) pendingUpdate] & 1) == 0)
  {
    v13 = MGLogForCategory(5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 32);
      v17 = 134217984;
      v18 = v16;
      _os_log_debug_impl(&dword_25863A000, v13, OS_LOG_TYPE_DEBUG, "%p transaction not sending query results without update", &v17, 0xCu);
    }

    goto LABEL_10;
  }

  v2 = [*(a1 + 32) queryGroups];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) queryError];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40) && !*(*(*(a1 + 48) + 8) + 40))
  {
    v13 = MGLogForCategory(5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v17 = 134217984;
      v18 = v15;
      _os_log_error_impl(&dword_25863A000, v13, OS_LOG_TYPE_ERROR, "%p transaction has no result or error to send", &v17, 0xCu);
    }

LABEL_10:

    goto LABEL_11;
  }

  v8 = [*(a1 + 32) payloadProvider];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  [*(a1 + 32) setPayloadProvider:0];
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
LABEL_11:
    v14 = *MEMORY[0x277D85DE8];
    return;
  }

  v11 = *(a1 + 32);
  v12 = *MEMORY[0x277D85DE8];

  [v11 setPendingUpdate:0];
}

- (NSArray)queryGroups
{
  os_unfair_lock_assert_owner(&self->_lock);
  queryGroups = self->_queryGroups;

  return queryGroups;
}

- (void)setQueryGroups:(id)groups
{
  groupsCopy = groups;
  os_unfair_lock_assert_owner(&self->_lock);
  queryGroups = self->_queryGroups;
  p_queryGroups = &self->_queryGroups;
  if (queryGroups != groupsCopy && ([(NSArray *)groupsCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(p_queryGroups, groups);
  }

  MEMORY[0x2821F96F8]();
}

- (NSError)queryError
{
  os_unfair_lock_assert_owner(&self->_lock);
  queryError = self->_queryError;

  return queryError;
}

- (void)setQueryError:(id)error
{
  errorCopy = error;
  os_unfair_lock_assert_owner(&self->_lock);
  queryError = self->_queryError;
  p_queryError = &self->_queryError;
  if (queryError != errorCopy && ([(NSError *)errorCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(p_queryError, error);
  }

  MEMORY[0x2821F96F8]();
}

- (id)payloadProvider
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = MEMORY[0x259C85F90](self->_payloadProvider);

  return v3;
}

- (void)setPayloadProvider:(id)provider
{
  providerCopy = provider;
  os_unfair_lock_assert_owner(&self->_lock);
  v4 = providerCopy;
  if (self->_payloadProvider != providerCopy)
  {
    v5 = MEMORY[0x259C85F90](providerCopy);
    payloadProvider = self->_payloadProvider;
    self->_payloadProvider = v5;

    v4 = providerCopy;
  }
}

- (void)setPendingUpdate:(BOOL)update
{
  updateCopy = update;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_pendingUpdate != updateCopy)
  {
    self->_pendingUpdate = updateCopy;
  }
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

@end