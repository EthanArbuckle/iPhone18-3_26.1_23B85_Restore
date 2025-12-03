@interface PHMediaFormatChainedConversionRequest
+ (id)chainedRequestForAdjustmentRenderRequest:(id)request dependingOnRequest:(id)onRequest error:(id *)error;
+ (id)chainedRequestForRequest:(id)request dependingOnRequest:(id)onRequest error:(id *)error successUpdateHandler:(id)handler;
+ (id)requestForSource:(id)source destinationCapabilities:(id)capabilities error:(id *)error;
- (void)enqueueSubrequestsOnConversionManager:(id)manager;
- (void)enumerateSubrequests:(id)subrequests;
- (void)postProcessSuccessfulCompositeRequest;
@end

@implementation PHMediaFormatChainedConversionRequest

+ (id)chainedRequestForAdjustmentRenderRequest:(id)request dependingOnRequest:(id)onRequest error:(id *)error
{
  requestCopy = request;
  onRequestCopy = onRequest;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __107__PHMediaFormatChainedConversionRequest_chainedRequestForAdjustmentRenderRequest_dependingOnRequest_error___block_invoke;
  v14[3] = &unk_27989B6F0;
  v15 = onRequestCopy;
  v16 = requestCopy;
  v10 = requestCopy;
  v11 = onRequestCopy;
  v12 = [self chainedRequestForRequest:v10 dependingOnRequest:v11 error:error successUpdateHandler:v14];

  return v12;
}

void __107__PHMediaFormatChainedConversionRequest_chainedRequestForAdjustmentRenderRequest_dependingOnRequest_error___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) destination];
  v3 = [v2 fileSignature];

  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to get output file signature of previous request %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) source];
  [v4 setRenderOriginatingSignature:v3];

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)chainedRequestForRequest:(id)request dependingOnRequest:(id)onRequest error:(id *)error successUpdateHandler:(id)handler
{
  requestCopy = request;
  onRequestCopy = onRequest;
  handlerCopy = handler;
  if (onRequestCopy)
  {
    if (requestCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1983 description:{@"Invalid parameter not satisfying: %@", @"dependentRequest"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1982 description:{@"Invalid parameter not satisfying: %@", @"independentRequest"}];

  if (!requestCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1984 description:{@"Invalid parameter not satisfying: %@", @"updateHandler"}];

LABEL_4:
  v14 = objc_opt_new();
  [v14 setIndependentRequest:onRequestCopy];
  [onRequestCopy setParentRequest:v14];
  [v14 setDependentRequest:requestCopy];
  [requestCopy setParentRequest:v14];
  [v14 setSuccessUpdateHandler:handlerCopy];
  v15 = [v14 compositeRequestCommonInitWithError:error];

  return v15;
}

+ (id)requestForSource:(id)source destinationCapabilities:(id)capabilities error:(id *)error
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = NSStringFromSelector(a2);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v5 raise:v6 format:{@"The constructor %@ is unavailable for %@", v7, v9}];

  return 0;
}

- (void)postProcessSuccessfulCompositeRequest
{
  dependentRequest = [(PHMediaFormatChainedConversionRequest *)self dependentRequest];
  destination = [dependentRequest destination];
  [(PHMediaFormatConversionRequest *)self setDestination:destination];
}

- (void)enumerateSubrequests:(id)subrequests
{
  subrequestsCopy = subrequests;
  independentRequest = [(PHMediaFormatChainedConversionRequest *)self independentRequest];
  (*(subrequests + 2))(subrequestsCopy, independentRequest);

  dependentRequest = [(PHMediaFormatChainedConversionRequest *)self dependentRequest];
  (*(subrequests + 2))(subrequestsCopy, dependentRequest);
}

- (void)enqueueSubrequestsOnConversionManager:(id)manager
{
  managerCopy = manager;
  independentRequest = [(PHMediaFormatChainedConversionRequest *)self independentRequest];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__PHMediaFormatChainedConversionRequest_enqueueSubrequestsOnConversionManager___block_invoke;
  v8[3] = &unk_27989BA48;
  v8[4] = self;
  [managerCopy enqueueConversionRequest:independentRequest completionHandler:v8];

  dependentRequest = [(PHMediaFormatChainedConversionRequest *)self dependentRequest];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__PHMediaFormatChainedConversionRequest_enqueueSubrequestsOnConversionManager___block_invoke_805;
  v7[3] = &unk_27989BA48;
  v7[4] = self;
  [managerCopy enqueueConversionRequest:dependentRequest completionHandler:v7];
}

uint64_t __79__PHMediaFormatChainedConversionRequest_enqueueSubrequestsOnConversionManager___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = [*(a1 + 32) independentRequest];
    v9 = 138412290;
    v10 = v2;
    _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Chained request independent request finished: %@", &v9, 0xCu);
  }

  v3 = [*(a1 + 32) independentRequest];
  v4 = [v3 status];

  if (v4 == 4)
  {
    v5 = [*(a1 + 32) successUpdateHandler];
    v5[2]();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) dependentRequest];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Chained request independent request unsuccessful, cancelling dependent request %@", &v9, 0xCu);
    }

    v5 = [*(a1 + 32) dependentRequest];
    [v5 markAsCancelled];
  }

  result = [*(a1 + 32) setSuccessUpdateHandler:0];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __79__PHMediaFormatChainedConversionRequest_enqueueSubrequestsOnConversionManager___block_invoke_805(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = [*(a1 + 32) dependentRequest];
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Chained request dependent request finished: %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end