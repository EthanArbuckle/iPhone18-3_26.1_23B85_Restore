@interface IRDataContainer
+ (id)containerForPersona:(id)a3;
+ (id)containerForPrimaryPersona;
- (id)_initWithPersona:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation IRDataContainer

+ (id)containerForPrimaryPersona
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D85ED0]];
  v4 = [v2 _initWithPersona:v3];

  return v4;
}

+ (id)containerForPersona:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithPersona:v4];

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  v7 = [(IRDataContainer *)self persona];
  [v6 appendFormat:@", persona: %@", v7];

  v8 = [(IRDataContainer *)self containerBaseURL];
  [v6 appendFormat:@", containerBaseURL: %@", v8];

  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[IRDataContainer extensionHandle](self, "extensionHandle")}];
  [v6 appendFormat:@", extensionHandle: %@", v9];

  [v6 appendString:@">"];

  return v6;
}

- (void)dealloc
{
  [(IRDataContainer *)self extensionHandle];
  sandbox_extension_release();
  v3.receiver = self;
  v3.super_class = IRDataContainer;
  [(IRDataContainer *)&v3 dealloc];
}

- (id)_initWithPersona:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = IRDataContainer;
  v5 = [(IRDataContainer *)&v40 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  [(IRDataContainer *)v5 setPersona:v4];
  if (!container_query_create())
  {
    v15 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [(IRDataContainer *)v4 _initWithPersona:v15, v16, v17, v18, v19, v20, v21];
    }

    goto LABEL_22;
  }

  container_query_set_class();
  container_query_operation_set_flags();
  [v4 UTF8String];
  container_query_set_persona_unique_string();
  if (!container_query_get_single_result())
  {
    container_query_get_last_error();
    v22 = container_error_copy_unlocalized_description();
    v23 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [(IRDataContainer *)v4 _initWithPersona:v23, v22];
    }

    free(v22);
    goto LABEL_21;
  }

  v7 = container_copy_sandbox_token();
  if (!v7)
  {
    v24 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [(IRDataContainer *)v4 _initWithPersona:v24, v25, v26, v27, v28, v29, v30];
    }

    goto LABEL_21;
  }

  v8 = v7;
  [(IRDataContainer *)v6 setExtensionHandle:sandbox_extension_consume()];
  free(v8);
  if ([(IRDataContainer *)v6 extensionHandle]< 0)
  {
    v31 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [(IRDataContainer *)v4 _initWithPersona:v31];
    }

    goto LABEL_21;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:container_get_path()];
  v10 = MEMORY[0x277CBEBC0];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:container_get_path()];
  v12 = [v10 fileURLWithPath:v11 isDirectory:1];
  [(IRDataContainer *)v6 setContainerBaseURL:v12];

  v13 = [(IRDataContainer *)v6 containerBaseURL];

  if (!v13)
  {
    v32 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [(IRDataContainer *)v4 _initWithPersona:v32, v33, v34, v35, v36, v37, v38];
    }

    [(IRDataContainer *)v6 extensionHandle];
    sandbox_extension_release();
LABEL_21:
    container_query_free();
LABEL_22:
    v14 = 0;
    goto LABEL_23;
  }

  container_query_free();
LABEL_8:
  v14 = v6;
LABEL_23:

  return v14;
}

- (void)_initWithPersona:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3(&dword_25543D000, a2, a3, "#data-container, [ErrorId - container_get_path error] container_get_path failed for persona: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_initWithPersona:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *__error();
  v6 = 138412546;
  v7 = a1;
  v8 = 1024;
  v9 = v4;
  _os_log_error_impl(&dword_25543D000, v3, OS_LOG_TYPE_ERROR, "#data-container, [ErrorId - sandbox_extension_consume] sandbox_extension_consume failed for persona: %@, error: %{darwin.errno}d", &v6, 0x12u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_initWithPersona:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3(&dword_25543D000, a2, a3, "#data-container, [ErrorId - container_copy_sandbox_token error] container_copy_sandbox_token failed for persona: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_initWithPersona:(uint64_t)a3 .cold.4(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v7 = [v5 stringWithUTF8String:a3];
  v9 = 138412546;
  v10 = a1;
  v11 = 2112;
  v12 = v7;
  _os_log_error_impl(&dword_25543D000, v6, OS_LOG_TYPE_ERROR, "#data-container, [ErrorId - container_query_get_single_result error] container_query_get_single_result failed for persona: %@, error: %@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_initWithPersona:(uint64_t)a3 .cold.5(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3(&dword_25543D000, a2, a3, "#data-container, [ErrorId - container_query_create error] container_query_create fail for persona: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end