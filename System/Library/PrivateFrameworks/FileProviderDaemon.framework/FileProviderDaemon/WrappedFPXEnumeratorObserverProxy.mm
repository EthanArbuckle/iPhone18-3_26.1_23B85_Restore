@interface WrappedFPXEnumeratorObserverProxy
- (WrappedFPXEnumeratorObserverProxy)initWithTarget:(id)target;
- (void)didUpdateItem:(id)item;
- (void)enumerationResultsDidChange;
@end

@implementation WrappedFPXEnumeratorObserverProxy

- (WrappedFPXEnumeratorObserverProxy)initWithTarget:(id)target
{
  targetCopy = target;
  v9.receiver = self;
  v9.super_class = WrappedFPXEnumeratorObserverProxy;
  v6 = [(WrappedFPXEnumeratorObserverProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_target, target);
  }

  return v7;
}

- (void)enumerationResultsDidChange
{
  v2 = [(FPXEnumeratorObserver *)self->_target remoteObjectProxyWithErrorHandler:&__block_literal_global_27_0];
  [v2 enumerationResultsDidChange];
}

void __64__WrappedFPXEnumeratorObserverProxy_enumerationResultsDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __64__WrappedFPXEnumeratorObserverProxy_enumerationResultsDidChange__block_invoke_cold_1(v2);
  }
}

- (void)didUpdateItem:(id)item
{
  target = self->_target;
  itemCopy = item;
  v5 = [(FPXEnumeratorObserver *)target remoteObjectProxyWithErrorHandler:&__block_literal_global_29];
  [v5 didUpdateItem:itemCopy];
}

void __51__WrappedFPXEnumeratorObserverProxy_didUpdateItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __51__WrappedFPXEnumeratorObserverProxy_didUpdateItem___block_invoke_cold_1(v2);
  }
}

void __64__WrappedFPXEnumeratorObserverProxy_enumerationResultsDidChange__block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __51__WrappedFPXEnumeratorObserverProxy_didUpdateItem___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end