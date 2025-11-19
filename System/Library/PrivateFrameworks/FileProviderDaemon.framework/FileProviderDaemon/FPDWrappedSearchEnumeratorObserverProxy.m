@interface FPDWrappedSearchEnumeratorObserverProxy
- (FPDWrappedSearchEnumeratorObserverProxy)initWithTarget:(id)a3 maximumNumberOfResultsPerPage:(int64_t)a4;
- (void)didEnumerateSearchResults:(id)a3;
- (void)finishEnumeratingUpToPage:(id)a3;
- (void)finishEnumeratingWithError:(id)a3;
@end

@implementation FPDWrappedSearchEnumeratorObserverProxy

- (FPDWrappedSearchEnumeratorObserverProxy)initWithTarget:(id)a3 maximumNumberOfResultsPerPage:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FPDWrappedSearchEnumeratorObserverProxy;
  v8 = [(FPDWrappedSearchEnumeratorObserverProxy *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_target, a3);
    v9->_maximumNumberOfResultsPerPage = a4;
  }

  return v9;
}

- (void)didEnumerateSearchResults:(id)a3
{
  target = self->_target;
  v4 = a3;
  v5 = [(NSFileProviderSearchEnumerationObserver *)target remoteObjectProxyWithErrorHandler:&__block_literal_global_1];
  [v5 didEnumerateSearchResults:v4];
}

void __69__FPDWrappedSearchEnumeratorObserverProxy_didEnumerateSearchResults___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __69__FPDWrappedSearchEnumeratorObserverProxy_didEnumerateSearchResults___block_invoke_cold_1(v2);
  }
}

- (void)finishEnumeratingUpToPage:(id)a3
{
  target = self->_target;
  v4 = a3;
  v5 = [(NSFileProviderSearchEnumerationObserver *)target remoteObjectProxyWithErrorHandler:&__block_literal_global_2];
  [v5 finishEnumeratingUpToPage:v4];
}

void __69__FPDWrappedSearchEnumeratorObserverProxy_finishEnumeratingUpToPage___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __69__FPDWrappedSearchEnumeratorObserverProxy_finishEnumeratingUpToPage___block_invoke_cold_1(v2);
  }
}

- (void)finishEnumeratingWithError:(id)a3
{
  v4 = a3;
  target = self->_target;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__FPDWrappedSearchEnumeratorObserverProxy_finishEnumeratingWithError___block_invoke;
  v8[3] = &unk_1E83BDFC8;
  v9 = v4;
  v6 = v4;
  v7 = [(NSFileProviderSearchEnumerationObserver *)target remoteObjectProxyWithErrorHandler:v8];
  [v7 finishEnumeratingWithError:v6];
}

void __70__FPDWrappedSearchEnumeratorObserverProxy_finishEnumeratingWithError___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __70__FPDWrappedSearchEnumeratorObserverProxy_finishEnumeratingWithError___block_invoke_cold_1(a1);
  }
}

void __69__FPDWrappedSearchEnumeratorObserverProxy_didEnumerateSearchResults___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __69__FPDWrappedSearchEnumeratorObserverProxy_finishEnumeratingUpToPage___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __70__FPDWrappedSearchEnumeratorObserverProxy_finishEnumeratingWithError___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_8(a1) fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

@end