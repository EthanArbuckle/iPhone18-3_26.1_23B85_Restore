@interface _BMSandboxExtension
- (_BMSandboxExtension)initWithDescriptor:(id)descriptor extensionToken:(id)token container:(id)container path:(id)path;
- (void)dealloc;
@end

@implementation _BMSandboxExtension

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = BMAccessModePrintableDescription([*(self + 16) mode]);
  resource = [*(self + 16) resource];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (_BMSandboxExtension)initWithDescriptor:(id)descriptor extensionToken:(id)token container:(id)container path:(id)path
{
  v33 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  tokenCopy = token;
  containerCopy = container;
  pathCopy = path;
  v28.receiver = self;
  v28.super_class = _BMSandboxExtension;
  v15 = [(_BMSandboxExtension *)&v28 init];
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = __biome_log_for_category(6);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = BMAccessModePrintableDescription([descriptorCopy mode]);
    resource = [descriptorCopy resource];
    *buf = 138543618;
    v30 = v17;
    v31 = 2114;
    v32 = resource;
    _os_log_impl(&dword_1AC15D000, v16, OS_LOG_TYPE_INFO, "Consuming sandbox extension token for %{public}@ access to %{public}@", buf, 0x16u);
  }

  v19 = tokenCopy;
  [v19 bytes];
  v20 = sandbox_extension_consume();
  v21 = __biome_log_for_category(6);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [_BMSandboxExtension initWithDescriptor:v19 extensionToken:v20 container:? path:?];
  }

  if (v20 != -1)
  {
    objc_storeStrong(&v15->_descriptor, descriptor);
    v15->_handle = v20;
    v22 = [pathCopy copy];
    path = v15->_path;
    v15->_path = v22;

    objc_storeStrong(&v15->_container, container);
LABEL_8:
    v24 = v15;
    goto LABEL_12;
  }

  v25 = __biome_log_for_category(6);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [_BMSandboxExtension initWithDescriptor:descriptorCopy extensionToken:? container:? path:?];
  }

  v24 = 0;
LABEL_12:

  v26 = *MEMORY[0x1E69E9840];
  return v24;
}

- (void)initWithDescriptor:(void *)a1 extensionToken:(uint64_t)a2 container:path:.cold.1(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  [a1 bytes];
  if (a2 == -1)
  {
    v3 = __error();
    strerror(*v3);
  }

  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithDescriptor:(void *)a1 extensionToken:container:path:.cold.2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = BMAccessModePrintableDescription([a1 mode]);
  v3 = [a1 resource];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

@end