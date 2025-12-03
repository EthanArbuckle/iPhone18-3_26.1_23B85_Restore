@interface FMDExtVendorContext
- (BOOL)respondsToSelector:(SEL)selector;
- (FMDExtVendorContext)init;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)connectionStatusForAccessory:(id)accessory withCompletion:(id)completion;
- (void)fetchAllAccessoriesInfo:(id)info withCompletion:(id)completion;
- (void)forwardInvocation:(id)invocation;
- (void)getStyleForAccessory:(id)accessory info:(id)info withCompletion:(id)completion;
- (void)safetyAlertForAccessory:(id)accessory info:(id)info withCompletion:(id)completion;
@end

@implementation FMDExtVendorContext

- (FMDExtVendorContext)init
{
  v3 = LogCategory_Extensions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF650000, v3, OS_LOG_TYPE_DEFAULT, "Initialized vendor context", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = FMDExtVendorContext;
  return [(FMDExtVendorContext *)&v5 init];
}

- (void)fetchAllAccessoriesInfo:(id)info withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  completionCopy = completion;
  v8 = LogCategory_Extensions();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[FMDExtVendorContext fetchAllAccessoriesInfo:withCompletion:]";
    _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "EXTENSION API: %s", &v16, 0xCu);
  }

  accessoryProvider = [(FMDExtVendorContext *)self accessoryProvider];
  if (accessoryProvider && (v10 = accessoryProvider, [(FMDExtVendorContext *)self accessoryProvider], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, v10, (v12 & 1) != 0))
  {
    accessoryProvider2 = [(FMDExtVendorContext *)self accessoryProvider];
    [accessoryProvider2 fetchAllAccessoriesInfoWithInfo:infoCopy withCompletion:completionCopy];
  }

  else
  {
    v14 = LogCategory_Extensions();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FMDExtVendorContext fetchAllAccessoriesInfo:? withCompletion:?];
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)connectionStatusForAccessory:(id)accessory withCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  completionCopy = completion;
  v8 = LogCategory_Extensions();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[FMDExtVendorContext connectionStatusForAccessory:withCompletion:]";
    v18 = 2112;
    v19 = accessoryCopy;
    _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "EXTENSION API: %s called for accessory %@", &v16, 0x16u);
  }

  accessoryProvider = [(FMDExtVendorContext *)self accessoryProvider];
  if (accessoryProvider && (v10 = accessoryProvider, [(FMDExtVendorContext *)self accessoryProvider], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, v10, (v12 & 1) != 0))
  {
    accessoryProvider2 = [(FMDExtVendorContext *)self accessoryProvider];
    [accessoryProvider2 connectionStatusForAccessory:accessoryCopy withCompletion:completionCopy];
  }

  else
  {
    v14 = LogCategory_Extensions();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FMDExtVendorContext connectionStatusForAccessory:? withCompletion:?];
    }

    accessoryProvider2 = [MEMORY[0x1E696ABC0] fm_cancelledError];
    completionCopy[2](completionCopy, 0, accessoryProvider2);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)getStyleForAccessory:(id)accessory info:(id)info withCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  infoCopy = info;
  completionCopy = completion;
  v11 = LogCategory_Extensions();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315394;
    v20 = "[FMDExtVendorContext getStyleForAccessory:info:withCompletion:]";
    v21 = 2112;
    v22 = accessoryCopy;
    _os_log_impl(&dword_1DF650000, v11, OS_LOG_TYPE_DEFAULT, "EXTENSION API: %s called for accessory %@", &v19, 0x16u);
  }

  accessoryProvider = [(FMDExtVendorContext *)self accessoryProvider];
  if (accessoryProvider && (v13 = accessoryProvider, [(FMDExtVendorContext *)self accessoryProvider], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_opt_respondsToSelector(), v14, v13, (v15 & 1) != 0))
  {
    accessoryProvider2 = [(FMDExtVendorContext *)self accessoryProvider];
    [accessoryProvider2 getStyleForAccessory:accessoryCopy info:infoCopy withCompletion:completionCopy];
  }

  else
  {
    v17 = LogCategory_Extensions();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FMDExtVendorContext getStyleForAccessory:? info:? withCompletion:?];
    }

    accessoryProvider2 = [MEMORY[0x1E696ABC0] fm_cancelledError];
    completionCopy[2](completionCopy, 0, accessoryProvider2);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)safetyAlertForAccessory:(id)accessory info:(id)info withCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  infoCopy = info;
  completionCopy = completion;
  v11 = LogCategory_Extensions();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315394;
    v20 = "[FMDExtVendorContext safetyAlertForAccessory:info:withCompletion:]";
    v21 = 2112;
    v22 = accessoryCopy;
    _os_log_impl(&dword_1DF650000, v11, OS_LOG_TYPE_DEFAULT, "EXTENSION API: %s called for accessory %@", &v19, 0x16u);
  }

  accessoryProvider = [(FMDExtVendorContext *)self accessoryProvider];
  if (accessoryProvider && (v13 = accessoryProvider, [(FMDExtVendorContext *)self accessoryProvider], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_opt_respondsToSelector(), v14, v13, (v15 & 1) != 0))
  {
    accessoryProvider2 = [(FMDExtVendorContext *)self accessoryProvider];
    [accessoryProvider2 safetyAlertForAccessory:accessoryCopy info:infoCopy withCompletion:completionCopy];
  }

  else
  {
    v17 = LogCategory_Extensions();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FMDExtVendorContext safetyAlertForAccessory:? info:? withCompletion:?];
    }

    accessoryProvider2 = [MEMORY[0x1E696ABC0] fm_cancelledError];
    (*(completionCopy + 2))(completionCopy, 0, 0, accessoryProvider2);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = FMDExtVendorContext;
  if ([(FMDExtVendorContext *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    accessoryProvider = [(FMDExtVendorContext *)self accessoryProvider];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = FMDExtVendorContext;
  v5 = [(FMDExtVendorContext *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    accessoryProvider = [(FMDExtVendorContext *)self accessoryProvider];
    v5 = [accessoryProvider methodSignatureForSelector:selector];
  }

  return v5;
}

- (void)forwardInvocation:(id)invocation
{
  v17 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  accessoryProvider = [(FMDExtVendorContext *)self accessoryProvider];
  [invocationCopy selector];
  v6 = objc_opt_respondsToSelector();

  v7 = LogCategory_Extensions();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      accessoryProvider2 = [(FMDExtVendorContext *)self accessoryProvider];
      *buf = 138412546;
      v14 = invocationCopy;
      v15 = 2112;
      v16 = accessoryProvider2;
      _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "VendorCntext forwardInvocation %@ to delegate %@", buf, 0x16u);
    }

    accessoryProvider3 = [(FMDExtVendorContext *)self accessoryProvider];
    [invocationCopy invokeWithTarget:accessoryProvider3];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FMDExtVendorContext forwardInvocation:invocationCopy];
    }

    v12.receiver = self;
    v12.super_class = FMDExtVendorContext;
    [(FMDExtVendorContext *)&v12 forwardInvocation:invocationCopy];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllAccessoriesInfo:(void *)a1 withCompletion:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 accessoryProvider];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)connectionStatusForAccessory:(void *)a1 withCompletion:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 accessoryProvider];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)getStyleForAccessory:(void *)a1 info:withCompletion:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 accessoryProvider];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)safetyAlertForAccessory:(void *)a1 info:withCompletion:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 accessoryProvider];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)forwardInvocation:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = NSStringFromSelector([a1 selector]);
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

@end