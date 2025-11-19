@interface FMDExtVendorContext
- (BOOL)respondsToSelector:(SEL)a3;
- (FMDExtVendorContext)init;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)connectionStatusForAccessory:(id)a3 withCompletion:(id)a4;
- (void)fetchAllAccessoriesInfo:(id)a3 withCompletion:(id)a4;
- (void)forwardInvocation:(id)a3;
- (void)getStyleForAccessory:(id)a3 info:(id)a4 withCompletion:(id)a5;
- (void)safetyAlertForAccessory:(id)a3 info:(id)a4 withCompletion:(id)a5;
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

- (void)fetchAllAccessoriesInfo:(id)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = LogCategory_Extensions();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[FMDExtVendorContext fetchAllAccessoriesInfo:withCompletion:]";
    _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "EXTENSION API: %s", &v16, 0xCu);
  }

  v9 = [(FMDExtVendorContext *)self accessoryProvider];
  if (v9 && (v10 = v9, [(FMDExtVendorContext *)self accessoryProvider], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, v10, (v12 & 1) != 0))
  {
    v13 = [(FMDExtVendorContext *)self accessoryProvider];
    [v13 fetchAllAccessoriesInfoWithInfo:v6 withCompletion:v7];
  }

  else
  {
    v14 = LogCategory_Extensions();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FMDExtVendorContext fetchAllAccessoriesInfo:? withCompletion:?];
    }

    (*(v7 + 2))(v7, 0, 0);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)connectionStatusForAccessory:(id)a3 withCompletion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = LogCategory_Extensions();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[FMDExtVendorContext connectionStatusForAccessory:withCompletion:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "EXTENSION API: %s called for accessory %@", &v16, 0x16u);
  }

  v9 = [(FMDExtVendorContext *)self accessoryProvider];
  if (v9 && (v10 = v9, [(FMDExtVendorContext *)self accessoryProvider], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, v10, (v12 & 1) != 0))
  {
    v13 = [(FMDExtVendorContext *)self accessoryProvider];
    [v13 connectionStatusForAccessory:v6 withCompletion:v7];
  }

  else
  {
    v14 = LogCategory_Extensions();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FMDExtVendorContext connectionStatusForAccessory:? withCompletion:?];
    }

    v13 = [MEMORY[0x1E696ABC0] fm_cancelledError];
    v7[2](v7, 0, v13);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)getStyleForAccessory:(id)a3 info:(id)a4 withCompletion:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = LogCategory_Extensions();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315394;
    v20 = "[FMDExtVendorContext getStyleForAccessory:info:withCompletion:]";
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_1DF650000, v11, OS_LOG_TYPE_DEFAULT, "EXTENSION API: %s called for accessory %@", &v19, 0x16u);
  }

  v12 = [(FMDExtVendorContext *)self accessoryProvider];
  if (v12 && (v13 = v12, [(FMDExtVendorContext *)self accessoryProvider], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_opt_respondsToSelector(), v14, v13, (v15 & 1) != 0))
  {
    v16 = [(FMDExtVendorContext *)self accessoryProvider];
    [v16 getStyleForAccessory:v8 info:v9 withCompletion:v10];
  }

  else
  {
    v17 = LogCategory_Extensions();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FMDExtVendorContext getStyleForAccessory:? info:? withCompletion:?];
    }

    v16 = [MEMORY[0x1E696ABC0] fm_cancelledError];
    v10[2](v10, 0, v16);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)safetyAlertForAccessory:(id)a3 info:(id)a4 withCompletion:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = LogCategory_Extensions();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315394;
    v20 = "[FMDExtVendorContext safetyAlertForAccessory:info:withCompletion:]";
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_1DF650000, v11, OS_LOG_TYPE_DEFAULT, "EXTENSION API: %s called for accessory %@", &v19, 0x16u);
  }

  v12 = [(FMDExtVendorContext *)self accessoryProvider];
  if (v12 && (v13 = v12, [(FMDExtVendorContext *)self accessoryProvider], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_opt_respondsToSelector(), v14, v13, (v15 & 1) != 0))
  {
    v16 = [(FMDExtVendorContext *)self accessoryProvider];
    [v16 safetyAlertForAccessory:v8 info:v9 withCompletion:v10];
  }

  else
  {
    v17 = LogCategory_Extensions();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FMDExtVendorContext safetyAlertForAccessory:? info:? withCompletion:?];
    }

    v16 = [MEMORY[0x1E696ABC0] fm_cancelledError];
    (*(v10 + 2))(v10, 0, 0, v16);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = FMDExtVendorContext;
  if ([(FMDExtVendorContext *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(FMDExtVendorContext *)self accessoryProvider];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = FMDExtVendorContext;
  v5 = [(FMDExtVendorContext *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    v6 = [(FMDExtVendorContext *)self accessoryProvider];
    v5 = [v6 methodSignatureForSelector:a3];
  }

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FMDExtVendorContext *)self accessoryProvider];
  [v4 selector];
  v6 = objc_opt_respondsToSelector();

  v7 = LogCategory_Extensions();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(FMDExtVendorContext *)self accessoryProvider];
      *buf = 138412546;
      v14 = v4;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "VendorCntext forwardInvocation %@ to delegate %@", buf, 0x16u);
    }

    v10 = [(FMDExtVendorContext *)self accessoryProvider];
    [v4 invokeWithTarget:v10];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FMDExtVendorContext forwardInvocation:v4];
    }

    v12.receiver = self;
    v12.super_class = FMDExtVendorContext;
    [(FMDExtVendorContext *)&v12 forwardInvocation:v4];
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