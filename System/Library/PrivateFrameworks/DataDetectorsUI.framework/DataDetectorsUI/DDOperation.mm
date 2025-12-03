@interface DDOperation
+ (id)shouldUrlifyBlockForTypes:(unint64_t)types;
+ (id)urlificationBlockForTypes:(unint64_t)types;
- (BOOL)doURLificationOnDocument;
- (BOOL)needsFullScanner;
- (DDOperation)initWithContainer:(id)container;
- (__DDScanQuery)_createScanQueryForBackend;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationForStartingOver;
- (int)_createScanQuery;
- (void)_createScanQuery;
- (void)_setScanQuery:(__DDScanQuery *)query;
- (void)cancel;
- (void)cleanup;
- (void)dealloc;
- (void)dispatchContainerModificationBlock:(id)block;
- (void)dispatchScanQueryCreationWithCompletionBlock:(id)block;
- (void)main;
- (void)newOperationForStartingOver;
@end

@implementation DDOperation

- (void)cancel
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [DDOperation _createScanQuery];
  }

  [(DDOperation *)self setIsDiscarded:1];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [MEMORY[0x277D04220] cancelJob:selfCopy->_jobIdentifier];
  objc_sync_exit(selfCopy);

  v4.receiver = selfCopy;
  v4.super_class = DDOperation;
  [(DDOperation *)&v4 cancel];
}

- (int)_createScanQuery
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [DDOperation _createScanQuery];
    if ([(DDOperation *)self isDiscarded])
    {
LABEL_3:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        [DDOperation _createScanQuery];
        return 22;
      }

      return 22;
    }
  }

  else if ([(DDOperation *)self isDiscarded])
  {
    goto LABEL_3;
  }

  [(DDOperation *)self _applyContainerRestrictionsToTypes];
  if (!self->_types)
  {
    return 22;
  }

  if ([(DDOperation *)self tryCount]== -1 || [(DDOperation *)self _containerReadyForDetection])
  {
    goto LABEL_14;
  }

  containerNotReadyTryCount = self->_containerNotReadyTryCount;
  self->_containerNotReadyTryCount = containerNotReadyTryCount + 1;
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (containerNotReadyTryCount <= 1)
  {
    if (v5)
    {
      [(DDOperation *)self _createScanQuery];
    }

    return 35;
  }

  if (!v5)
  {
LABEL_14:
    [(DDOperation *)self _updateGenerationNumber];
    if (![(DDOperation *)self _rangeValidForContainer])
    {
      goto LABEL_26;
    }
  }

  else
  {
    [(DDOperation *)self _createScanQuery];
    [(DDOperation *)self _updateGenerationNumber];
    if (![(DDOperation *)self _rangeValidForContainer])
    {
LABEL_26:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        [(DDOperation *)self _createScanQuery];
        return 22;
      }

      return 22;
    }
  }

  if (![(DDOperation *)self generationNumber])
  {
    goto LABEL_26;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [DDOperation _createScanQuery];
  }

  _createScanQueryForBackend = [(DDOperation *)self _createScanQueryForBackend];
  [(DDOperation *)self _setScanQuery:_createScanQueryForBackend];
  if (_createScanQueryForBackend)
  {
    CFRelease(_createScanQueryForBackend);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(DDOperation *)self _createScanQuery];
  }

  if ([(DDOperation *)self scanQuery])
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

- (void)main
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Got an exception during scanning: %@", v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

- (void)cleanup
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [DDOperation _createScanQuery];
  }

  [(DDOperation *)self _setScanQuery:0];
  [(DDOperation *)self setContext:0];
  [(DDOperation *)self setContainer:0];
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"DDOperation.m" lineNumber:281 description:@"Scan query should already be nil"];
}

- (BOOL)needsFullScanner
{
  v3 = objc_opt_class();
  types = self->_types;

  return [v3 _needsFullScannerForDetectionTypes:types];
}

- (__DDScanQuery)_createScanQueryForBackend
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DDOperation.m" lineNumber:84 description:@"_createScanQueryForBackend has to be overridden by subclasses"];

  return 0;
}

+ (id)shouldUrlifyBlockForTypes:(unint64_t)types
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__DDOperation_shouldUrlifyBlockForTypes___block_invoke;
  aBlock[3] = &__block_descriptor_40_e206_B32__0____DDResult____CFRuntimeBase_QAQ____DDQueryRange____DDQueryOffset_b16b16b32____DDQueryOffset_b16b16b32_____qq_q____CFArray_____CFString_____CFString__v____CFDictionary_qCf_8__NSDate_16__NSTimeZone_24l;
  aBlock[4] = types;
  v3 = _Block_copy(aBlock);
  v4 = [v3 copy];

  return v4;
}

uint64_t __41__DDOperation_shouldUrlifyBlockForTypes___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  Category = DDResultGetCategory();
  Type = DDResultGetType();
  if (CFStringCompare(*MEMORY[0x277D04170], Type, 0) == kCFCompareEqualTo)
  {
    goto LABEL_16;
  }

  if (!DDResultHasProperties())
  {
    goto LABEL_52;
  }

  v11 = *(a1 + 32);
  if ((v11 & 4) != 0 && Category == 3)
  {
    goto LABEL_16;
  }

  if ((v11 & 0x10) != 0)
  {
    if (CFStringCompare(*MEMORY[0x277D041B0], Type, 0) == kCFCompareEqualTo)
    {
      goto LABEL_16;
    }

    v11 = *(a1 + 32);
  }

  if ((v11 & 0x20) != 0)
  {
    if (CFStringCompare(*MEMORY[0x277D040D0], Type, 0) == kCFCompareEqualTo)
    {
      goto LABEL_16;
    }

    v11 = *(a1 + 32);
  }

  if ((v11 & 0x20000) != 0)
  {
    if (CFStringCompare(*MEMORY[0x277D040E8], Type, 0) == kCFCompareEqualTo)
    {
      goto LABEL_16;
    }

    v11 = *(a1 + 32);
  }

  if ((v11 & 1) != 0 && Category == 2)
  {
    goto LABEL_16;
  }

  if ((v11 & 2) == 0)
  {
LABEL_22:
    if ((v11 & 8) != 0 && Category == 4)
    {
      if (!DDResultIsPastDate())
      {
        goto LABEL_16;
      }

      v11 = *(a1 + 32);
    }

    if (v11 == -1)
    {
      v15 = *MEMORY[0x277D04048];
      if (DDResultHasType())
      {
        v16 = [MEMORY[0x277CCA8D8] mainBundle];
        v17 = [v16 bundleIdentifier];
        v18 = [v17 isEqualToString:@"com.apple.MobileSMS"];

        if (v18)
        {
          goto LABEL_16;
        }
      }
    }

    if ((~*(a1 + 32) & 0x1FFLL) == 0)
    {
      v19 = *MEMORY[0x277D040B8];
      if (DDResultHasType())
      {
        v20 = [MEMORY[0x277CCA8D8] mainBundle];
        v21 = [v20 bundleIdentifier];
        v22 = [v21 isEqualToString:@"com.apple.MobileSMS"];

        if (v22)
        {
          goto LABEL_16;
        }
      }
    }

    v23 = *(a1 + 32);
    if ((v23 & 0x40000) == 0)
    {
      goto LABEL_35;
    }

    v24 = *MEMORY[0x277D04048];
    if ((DDResultHasType() & 1) == 0)
    {
      v23 = *(a1 + 32);
LABEL_35:
      if ((~v23 & 0x1FF) == 0)
      {
        v25 = *MEMORY[0x277D041B8];
        if (DDResultHasType())
        {
          v26 = DDUPIAction;
LABEL_43:
          v27 = [(__objc2_class *)v26 actionAvailableForResult:a2 url:0 context:0];
LABEL_51:
          v12 = v27;
          goto LABEL_53;
        }

        v23 = *(a1 + 32);
      }

      if ((~v23 & 0x1FF) == 0)
      {
        if (DDResultHasType())
        {
          v26 = DDEventsAction;
          goto LABEL_43;
        }

        v23 = *(a1 + 32);
      }

      if ((v23 & 0x80) != 0)
      {
        v28 = *MEMORY[0x277D04140];
        if (DDResultHasType())
        {
LABEL_50:
          v27 = [DDConversionAction actionAvailableForResult:a2];
          goto LABEL_51;
        }

        v23 = *(a1 + 32);
      }

      if ((v23 & 0x100) != 0)
      {
        v29 = *MEMORY[0x277D04168];
        if (DDResultHasType())
        {
          goto LABEL_50;
        }
      }

LABEL_52:
      v12 = 0;
      goto LABEL_53;
    }

LABEL_16:
    v12 = 1;
    goto LABEL_53;
  }

  if ((_DDResultIsURL(a2) & 1) == 0)
  {
    v11 = *(a1 + 32);
    goto LABEL_22;
  }

  v13 = _DDURLFromResult(a2);
  v14 = v13;
  if (v13)
  {
    v12 = dd_urlLooksSuspicious(v13) ^ 1;
  }

  else
  {
    v12 = 0;
  }

LABEL_53:

  return v12;
}

+ (id)urlificationBlockForTypes:(unint64_t)types
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__DDOperation_urlificationBlockForTypes___block_invoke;
  aBlock[3] = &__block_descriptor_40_e229___NSString_40__0____DDResult____CFRuntimeBase_QAQ____DDQueryRange____DDQueryOffset_b16b16b32____DDQueryOffset_b16b16b32_____qq_q____CFArray_____CFString_____CFString__v____CFDictionary_qCf_8__NSString_16__NSDate_24__NSTimeZone_32l;
  aBlock[4] = types;
  v3 = _Block_copy(aBlock);
  v4 = [v3 copy];

  return v4;
}

id __41__DDOperation_urlificationBlockForTypes___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [DDOperation shouldUrlifyBlockForTypes:*(a1 + 32)];
  if ((v12)[2](v12, a2, v10, v11))
  {
    v13 = *(a1 + 32);
    v14 = DDURLStringForResult();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)doURLificationOnDocument
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DDOperation.m" lineNumber:252 description:@"_doURLificationOnDocument must be overridden by DDOperation subclasses"];

  return 0;
}

- (DDOperation)initWithContainer:(id)container
{
  containerCopy = container;
  v10.receiver = self;
  v10.super_class = DDOperation;
  v6 = [(DDOperation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, container);
    v7->_query = 0;
    results = v7->_results;
    v7->_results = 0;

    v7->_tryCount = 0;
    v7->_containerNotReadyTryCount = 0;
    v7->_isDiscarded = 0;
  }

  return v7;
}

- (void)dispatchContainerModificationBlock:(id)block
{
  v4 = dispatch_get_global_queue(0, 0);
  dispatch_async(v4, block);
}

- (void)_setScanQuery:(__DDScanQuery *)query
{
  query = self->_query;
  if (query != query)
  {
    if (query)
    {
      CFRelease(query);
      self->_query = 0;
    }

    if (query)
    {
      self->_query = CFRetain(query);
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  container = [(DDOperation *)self container];
  v6 = [v4 initWithContainer:container];

  [v6 setDetectionTypes:{-[DDOperation detectionTypes](self, "detectionTypes")}];
  context = [(DDOperation *)self context];
  [v6 setContext:context];

  [v6 setTryCount:{-[DDOperation tryCount](self, "tryCount")}];
  return v6;
}

- (id)newOperationForStartingOver
{
  v3 = [(DDOperation *)self copy];
  [v3 setTryCount:{-[DDOperation tryCount](self, "tryCount") + 1}];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(DDOperation *)v3 newOperationForStartingOver];
  }

  return v3;
}

- (void)dispatchScanQueryCreationWithCompletionBlock:(id)block
{
  v4 = [block copy];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __60__DDOperation_dispatchScanQueryCreationWithCompletionBlock___block_invoke;
  v10 = &unk_2782910B0;
  selfCopy = self;
  v12 = v4;
  v5 = v4;
  v6 = _Block_copy(&v7);
  [(DDOperation *)self dispatchContainerModificationBlock:v6, v7, v8, v9, v10, selfCopy];
}

void __60__DDOperation_dispatchScanQueryCreationWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _createScanQuery];
  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v2 == 35)
  {
    if (v3)
    {
      __60__DDOperation_dispatchScanQueryCreationWithCompletionBlock___block_invoke_cold_2((a1 + 32), v4, v5, v6, v7, v8, v9, v10);
    }

    v11 = *(a1 + 32);
    v12 = _Block_copy(*(a1 + 40));
    [v11 performSelector:sel_dispatchScanQueryCreationWithCompletionBlock_ withObject:v12 afterDelay:0.0];
  }

  else
  {
    if (v3)
    {
      __60__DDOperation_dispatchScanQueryCreationWithCompletionBlock___block_invoke_cold_1((a1 + 32), v4, v5, v6, v7, v8, v9, v10);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v2 == 0);
  }
}

- (void)_createScanQuery
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&dword_21AB70000, MEMORY[0x277D86220], v0, "operation %p is discarded", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)newOperationForStartingOver
{
  v8 = *MEMORY[0x277D85DE8];
  container = [self container];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __60__DDOperation_dispatchScanQueryCreationWithCompletionBlock___block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_1(&dword_21AB70000, MEMORY[0x277D86220], a3, "Calling the completion block for %p", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void __60__DDOperation_dispatchScanQueryCreationWithCompletionBlock___block_invoke_cold_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_1(&dword_21AB70000, MEMORY[0x277D86220], a3, "Should retry operation %p", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end