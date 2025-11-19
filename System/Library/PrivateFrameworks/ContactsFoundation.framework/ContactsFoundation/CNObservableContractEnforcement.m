@interface CNObservableContractEnforcement
+ (id)os_log;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)a3;
- (void)observerDidReceiveResult:(id)a3;
@end

@implementation CNObservableContractEnforcement

- (void)observerDidComplete
{
  v7 = *MEMORY[0x1E69E9840];
  *a1;
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)observerDidReceiveResult:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_state)
  {
    v5 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidReceiveResult:?];
    }

    v6 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidReceiveResult:];
    }

    v7 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidReceiveResult:?];
    }

    v8 = CNObserverProtocolExceptionNullMarker[0];
    if (v4)
    {
      v8 = v4;
    }

    v15[0] = v8;
    v14[0] = CNObserverProtocolExceptionResultKey[0];
    v14[1] = CNObserverProtocolExceptionStateKey;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_state];
    v15[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    CNObserverThrowProtocolExceptionWithReason(@"Result after termination", v10);
  }

  if (!v4)
  {
    v11 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidReceiveResult:];
    }

    v12 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidReceiveResult:];
    }

    CNObserverThrowProtocolExceptionWithReason(@"Result cannot be nil", 0);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)observerDidFailWithError:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_state)
  {
    v5 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidFailWithError:?];
    }

    v6 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidFailWithError:];
    }

    v7 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidReceiveResult:];
    }

    v8 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidReceiveResult:?];
    }

    v9 = CNObserverProtocolExceptionNullMarker[0];
    if (v4)
    {
      v9 = v4;
    }

    v18[0] = v9;
    v17[0] = CNObserverProtocolExceptionErrorKey[0];
    v17[1] = CNObserverProtocolExceptionStateKey;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_state];
    v18[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    CNObserverThrowProtocolExceptionWithReason(@"Failing after termination", v11);
  }

  self->_state = 2;
  v12 = +[CNObservableContractTerminationContext currentContext];
  terminationContext = self->_terminationContext;
  self->_terminationContext = v12;

  if (!v4)
  {
    v14 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidFailWithError:];
    }

    v15 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CNObservableContractEnforcement observerDidReceiveResult:];
    }

    CNObserverThrowProtocolExceptionWithReason(@"Error cannot be nil", 0);
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (id)os_log
{
  if (os_log_cn_once_token_15 != -1)
  {
    +[CNObservableContractEnforcement os_log];
  }

  v3 = os_log_cn_once_object_15;

  return v3;
}

uint64_t __41__CNObservableContractEnforcement_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.reactive-extensions", "contract-enforcement");
  v1 = os_log_cn_once_object_15;
  os_log_cn_once_object_15 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)observerDidReceiveResult:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *a1;
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)observerDidReceiveResult:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)observerDidReceiveResult:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [*(a1 + 16) threadId];
  [*(a1 + 16) threadId];
  v2 = [*(a1 + 16) callStack];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)observerDidFailWithError:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *a1;
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)observerDidFailWithError:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end