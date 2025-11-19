@interface _DASExtensionRemoteContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (_DASExtension)extension;
- (_DASExtensionRemoteContext)init;
- (id)createExtensionRunnerWithClassName:(id)a3;
- (id)hostContextWithError:(id *)a3;
- (void)performActivity:(id)a3;
- (void)suspend;
@end

@implementation _DASExtensionRemoteContext

- (_DASExtensionRemoteContext)init
{
  v6.receiver = self;
  v6.super_class = _DASExtensionRemoteContext;
  v2 = [(_DASExtensionRemoteContext *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.duetactivityscheduler", "extensionContext");
    log = v2->_log;
    v2->_log = v3;
  }

  return v2;
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken != -1)
  {
    +[_DASExtensionRemoteContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol___interface;

  return v3;
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken != -1)
  {
    +[_DASExtensionRemoteContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol___interface;

  return v3;
}

- (id)hostContextWithError:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  v5 = [(_DASExtensionRemoteContext *)self _auxiliaryConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51___DASExtensionRemoteContext_hostContextWithError___block_invoke;
  v8[3] = &unk_1E7C8FCE0;
  v8[4] = self;
  v8[5] = &v9;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v8];

  if (a3)
  {
    *a3 = v10[5];
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (_DASExtension)extension
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39___DASExtensionRemoteContext_extension__block_invoke;
  block[3] = &unk_1E7C8F0B0;
  block[4] = self;
  if (extension_onceToken != -1)
  {
    dispatch_once(&extension_onceToken, block);
  }

  return extension_extension;
}

- (id)createExtensionRunnerWithClassName:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v5 = [objc_opt_class() extensionRunnerClassAllowList];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = NSClassFromString(v4);
    if (v7)
    {
      v8 = v7;
      if (([(objc_class *)v7 conformsToProtocol:&unk_1F2EE1388]& 1) != 0)
      {
        v9 = objc_alloc_init(v8);
        v10 = [(_DASExtensionRemoteContext *)self log];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v13 = 138543362;
          v14 = v8;
          _os_log_impl(&dword_1B6E2F000, v10, OS_LOG_TYPE_INFO, "Created _DASExtensionRunner of class %{public}@", &v13, 0xCu);
        }

        goto LABEL_15;
      }

      v10 = [(_DASExtensionRemoteContext *)self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [_DASExtensionRemoteContext createExtensionRunnerWithClassName:];
      }
    }

    else
    {
      v10 = [(_DASExtensionRemoteContext *)self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [_DASExtensionRemoteContext createExtensionRunnerWithClassName:];
      }
    }
  }

  else
  {
    v10 = [(_DASExtensionRemoteContext *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_DASExtensionRemoteContext createExtensionRunnerWithClassName:];
    }
  }

  v9 = 0;
LABEL_15:

LABEL_16:
  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)performActivity:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 infoDictionary];
  v7 = [v6 objectForKeyedSubscript:@"ExtensionRunnerClass"];

  v8 = [(_DASExtensionRemoteContext *)self createExtensionRunnerWithClassName:v7];
  v9 = [(_DASExtensionRemoteContext *)self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v4 name];
    *buf = 138412546;
    v20 = v10;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_1B6E2F000, v9, OS_LOG_TYPE_DEFAULT, "Remote extension performing activity %@ with runner %@.", buf, 0x16u);
  }

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create("Extension Execution Queue", v11);

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___DASExtensionRemoteContext_performActivity___block_invoke;
  block[3] = &unk_1E7C8F9E8;
  block[4] = self;
  v17 = v8;
  v18 = v4;
  v13 = v4;
  v14 = v8;
  dispatch_async(v12, block);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)suspend
{
  v3 = [(_DASExtensionRemoteContext *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B6E2F000, v3, OS_LOG_TYPE_DEFAULT, "Request for extension to stop activity", v5, 2u);
  }

  v4 = [(_DASExtensionRemoteContext *)self extension];
  [v4 suspend];
}

- (void)createExtensionRunnerWithClassName:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_4(&dword_1B6E2F000, v0, v1, "Info.plist key %{public}@ has value %{public}@, which is not an allowed extension runner class.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)createExtensionRunnerWithClassName:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_4(&dword_1B6E2F000, v0, v1, "Info.plist key %{public}@ has value %{public}@, but that class doesn't conform to the MLBackgroundDataSource protocol", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)createExtensionRunnerWithClassName:.cold.3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_4(&dword_1B6E2F000, v0, v1, "Info.plist key %{public}@ has value %{public}@, but no class with that name was found.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end