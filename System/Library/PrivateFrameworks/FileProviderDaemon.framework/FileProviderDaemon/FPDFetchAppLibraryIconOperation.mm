@interface FPDFetchAppLibraryIconOperation
+ (NSOperationQueue)sharedOperationQueue;
- (BOOL)_checkIsNotPrefixedByTeamID:(id)d;
- (BOOL)_checkTypeIsValid:(id)valid;
- (FPDFetchAppLibraryIconOperation)initWithAppBundleIDs:(id)ds desiredSize:(CGSize)size screenScale:(double)scale;
- (void)_perAppBundleCompletion:(id)completion iconData:(id)data contentType:(id)type error:(id)error;
- (void)_retrieveIconsFromAppStore;
- (void)_retrieveIconsFromLocalDevice;
- (void)_verifyAppBundleIDsFormat;
- (void)main;
- (void)operationDidProgressWithInfo:(id)info error:(id)error completionHandler:(id)handler;
@end

@implementation FPDFetchAppLibraryIconOperation

- (FPDFetchAppLibraryIconOperation)initWithAppBundleIDs:(id)ds desiredSize:(CGSize)size screenScale:(double)scale
{
  height = size.height;
  width = size.width;
  dsCopy = ds;
  if (![dsCopy count] || (width >= 1.0 ? (v12 = width == height) : (v12 = 0), v12 ? (v13 = scale < 1.0) : (v13 = 1), v13))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v30.width = width;
    v30.height = height;
    v16 = NSStringFromSize(v30);
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPDFetchAppLibraryIconOperation.m" lineNumber:68 description:{@"invalid parameter to initialize %@ (appBundleIDs:%@, desiredSize:%@, screenScale:%f)", v15, dsCopy, v16, *&scale}];

    selfCopy = 0;
  }

  else
  {
    v29.receiver = self;
    v29.super_class = FPDFetchAppLibraryIconOperation;
    v18 = [(FPOperation *)&v29 init];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_appBundleIDs, ds);
      v20 = [dsCopy mutableCopy];
      appBundleIDsNotFound = v19->_appBundleIDsNotFound;
      v19->_appBundleIDsNotFound = v20;

      v22 = objc_alloc_init(MEMORY[0x1E696AE38]);
      progress = v19->_progress;
      v19->_progress = v22;

      [(NSProgress *)v19->_progress setTotalUnitCount:[(NSArray *)v19->_appBundleIDs count]];
      [(NSProgress *)v19->_progress setCancellable:1];
      objc_initWeak(&location, v19);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __80__FPDFetchAppLibraryIconOperation_initWithAppBundleIDs_desiredSize_screenScale___block_invoke;
      v26[3] = &unk_1E83BE0B8;
      objc_copyWeak(&v27, &location);
      [(NSProgress *)v19->_progress setCancellationHandler:v26];
      v24 = fmin(width, 144.0);
      v19->_desiredSize.width = v24;
      v19->_desiredSize.height = v24;
      v19->_screenScale = scale;
      v19->_allowLocalLookup = 1;
      v19->_allowAppStoreLookup = 1;
      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }

    self = v19;
    selfCopy = self;
  }

  return selfCopy;
}

void __80__FPDFetchAppLibraryIconOperation_initWithAppBundleIDs_desiredSize_screenScale___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

- (void)operationDidProgressWithInfo:(id)info error:(id)error completionHandler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  v9 = [infoCopy objectForKeyedSubscript:@"appBundleID"];
  v10 = [infoCopy objectForKeyedSubscript:@"mappedData"];
  v11 = [infoCopy objectForKeyedSubscript:@"undecorated"];

  bOOLValue = [v11 BOOLValue];
  if (v9 && v10)
  {
    callbackQueue = [(FPOperation *)self callbackQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__FPDFetchAppLibraryIconOperation_operationDidProgressWithInfo_error_completionHandler___block_invoke;
    v14[3] = &unk_1E83BEB68;
    v14[4] = self;
    v15 = v9;
    v16 = v10;
    v17 = bOOLValue;
    dispatch_async(callbackQueue, v14);
  }

  handlerCopy[2](handlerCopy);
}

uint64_t __88__FPDFetchAppLibraryIconOperation_operationDidProgressWithInfo_error_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 56))
  {
    v2 = *MEMORY[0x1E6967140];
  }

  else
  {
    v2 = 0;
  }

  return [*(a1 + 32) _perAppBundleCompletion:*(a1 + 40) iconData:*(a1 + 48) contentType:v2 error:0];
}

- (void)main
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(self + 304);
  v4 = *(self + 312);
  v5 = *(self + 320);
  v6 = [*(self + 344) componentsJoinedByString:{@", "}];
  v8[0] = 67109890;
  v8[1] = v3;
  v9 = 1024;
  v10 = v4;
  v11 = 1024;
  v12 = v5;
  v13 = 2112;
  v14 = v6;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] fetching thumbnail %dx%d@%dx for [%@] ", v8, 0x1Eu);

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __39__FPDFetchAppLibraryIconOperation_main__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(*(a1 + 32) + 328) copy];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:{@"can't retrieve icon for app bundleID '%@'", v7}];
        [*(a1 + 32) _perAppBundleCompletion:v7 iconData:0 contentType:0 error:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 32) completedWithResult:0 error:0];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

+ (NSOperationQueue)sharedOperationQueue
{
  if (sharedOperationQueue_onceToken != -1)
  {
    +[FPDFetchAppLibraryIconOperation sharedOperationQueue];
  }

  v3 = sharedOperationQueue_operationQueue;

  return v3;
}

uint64_t __55__FPDFetchAppLibraryIconOperation_sharedOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = sharedOperationQueue_operationQueue;
  sharedOperationQueue_operationQueue = v0;

  [sharedOperationQueue_operationQueue setMaxConcurrentOperationCount:1];
  v2 = sharedOperationQueue_operationQueue;

  return [v2 setName:@"com.apple.FileProvider.FetchAppIcon"];
}

- (void)_verifyAppBundleIDsFormat
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [FPDFetchAppLibraryIconOperation _verifyAppBundleIDsFormat];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(NSMutableArray *)self->_appBundleIDsNotFound copy];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [(FPDFetchAppLibraryIconOperation *)self _checkTypeIsValid:v9];
        v12 = @"app bundleID '%@' is not a string";
        if (!v11 || (v13 = [(FPDFetchAppLibraryIconOperation *)self _checkIsNotPrefixedByTeamID:v9], v12 = @"app bundleID '%@' is prefixed by teamID", !v13))
        {
          v14 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:{v12, v9}];
          if (v14)
          {
            v15 = v14;
            [(FPDFetchAppLibraryIconOperation *)self _perAppBundleCompletion:v9 iconData:0 contentType:0 error:v14];
          }
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)_checkTypeIsValid:(id)valid
{
  validCopy = valid;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_checkIsNotPrefixedByTeamID:(id)d
{
  dCopy = d;
  if (([dCopy hasPrefix:@"com.apple."] & 1) != 0 || objc_msgSend(dCopy, "length") < 0xB || objc_msgSend(dCopy, "characterAtIndex:", 10) != 46)
  {
    v5 = 1;
  }

  else
  {
    if (_checkIsNotPrefixedByTeamID__onceToken != -1)
    {
      [FPDFetchAppLibraryIconOperation _checkIsNotPrefixedByTeamID:];
    }

    v4 = [dCopy substringToIndex:10];
    v5 = [v4 rangeOfCharacterFromSet:_checkIsNotPrefixedByTeamID__teamIDCharacterSet] == 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

void __63__FPDFetchAppLibraryIconOperation__checkIsNotPrefixedByTeamID___block_invoke()
{
  v0 = [MEMORY[0x1E696AD48] capitalizedLetterCharacterSet];
  v1 = _checkIsNotPrefixedByTeamID__teamIDCharacterSet;
  _checkIsNotPrefixedByTeamID__teamIDCharacterSet = v0;

  v2 = _checkIsNotPrefixedByTeamID__teamIDCharacterSet;
  v3 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  [v2 formUnionWithCharacterSet:v3];
}

- (void)_retrieveIconsFromLocalDevice
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *self;
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__FPDFetchAppLibraryIconOperation__retrieveIconsFromLocalDevice__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

- (void)_retrieveIconsFromAppStore
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_perAppBundleCompletion:(id)completion iconData:(id)data contentType:(id)type error:(id)error
{
  completionCopy = completion;
  dataCopy = data;
  typeCopy = type;
  errorCopy = error;
  callbackQueue = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  if (([(FPDFetchAppLibraryIconOperation *)self isCancelled]& 1) == 0)
  {
    perAppBundleCompletion = [(FPDFetchAppLibraryIconOperation *)self perAppBundleCompletion];

    if (completionCopy)
    {
      if (perAppBundleCompletion)
      {
        if (([(NSMutableArray *)self->_appBundleIDsNotFound containsObject:completionCopy]& 1) != 0)
        {
          [(NSMutableArray *)self->_appBundleIDsNotFound removeObject:completionCopy];
          if ([dataCopy length])
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"found (%lu bytes, ct:%@)", objc_msgSend(dataCopy, "length"), typeCopy];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"not found; %@", errorCopy, v23];
          }
          v16 = ;
          v17 = fp_current_or_default_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [FPDFetchAppLibraryIconOperation _perAppBundleCompletion:iconData:contentType:error:];
          }

          completedUnitCount = [(NSProgress *)self->_progress completedUnitCount];
          if (completedUnitCount >= [(NSProgress *)self->_progress totalUnitCount])
          {
            v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ perAppBundleCompletion was invoked more than once per item"];
            v22 = fp_current_or_default_log();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
            {
              __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_5();
            }

            __assert_rtn("-[FPDFetchAppLibraryIconOperation _perAppBundleCompletion:iconData:contentType:error:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/app-library/FPDFetchAppLibraryIconOperation.m", 304, [v21 UTF8String]);
          }

          completedUnitCount2 = [(NSProgress *)self->_progress completedUnitCount];
          if (completedUnitCount2 < [(NSProgress *)self->_progress totalUnitCount])
          {
            [(NSProgress *)self->_progress setCompletedUnitCount:[(NSProgress *)self->_progress completedUnitCount]+ 1];
          }

          perAppBundleCompletion2 = [(FPDFetchAppLibraryIconOperation *)self perAppBundleCompletion];
          (perAppBundleCompletion2)[2](perAppBundleCompletion2, completionCopy, dataCopy, typeCopy, errorCopy);
        }

        else
        {
          v16 = fp_current_or_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [FPDFetchAppLibraryIconOperation _perAppBundleCompletion:iconData:contentType:error:];
          }
        }
      }
    }
  }
}

- (void)_perAppBundleCompletion:iconData:contentType:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1CEFC7000, v0, OS_LOG_TYPE_ERROR, "[ERROR] perAppBundleCompletion already called for %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_perAppBundleCompletion:iconData:contentType:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_1CEFC7000, v1, OS_LOG_TYPE_DEBUG, "[DEBUG] icon for %@ %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end