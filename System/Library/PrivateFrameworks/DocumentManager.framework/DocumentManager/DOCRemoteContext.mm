@interface DOCRemoteContext
- (id)serviceProxyWithErrorHandler:(id)a3;
- (void)updateAppearance:(id)a3 shouldFlushCA:(BOOL)a4 completionBlock:(id)a5;
- (void)updateEditingTo:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation DOCRemoteContext

- (id)serviceProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(DOCRemoteContext *)self _auxiliaryConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (void)updateAppearance:(id)a3 shouldFlushCA:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(DOCRemoteContext *)self serviceProxyWithErrorHandler:&__block_literal_global_2];
  [v10 updateAppearance:v9 shouldFlushCA:v5 completionBlock:v8];
}

void __67__DOCRemoteContext_updateAppearance_shouldFlushCA_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x1E699A450];
  v4 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __67__DOCRemoteContext_updateAppearance_shouldFlushCA_completionBlock___block_invoke_cold_1();
  }
}

- (void)updateEditingTo:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(DOCRemoteContext *)self serviceProxyWithErrorHandler:&__block_literal_global_20];
  [v6 updateEditingTo:v5 animated:v4];
}

void __45__DOCRemoteContext_updateEditingTo_animated___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x1E699A450];
  v4 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __67__DOCRemoteContext_updateAppearance_shouldFlushCA_completionBlock___block_invoke_cold_1();
  }
}

void __67__DOCRemoteContext_updateAppearance_shouldFlushCA_completionBlock___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1E57D8000, v0, OS_LOG_TYPE_FAULT, "Failed to get the service proxy object with error %@", v1, 0xCu);
}

@end