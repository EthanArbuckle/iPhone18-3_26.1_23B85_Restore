@interface DOCRemoteContext
- (id)serviceProxyWithErrorHandler:(id)handler;
- (void)updateAppearance:(id)appearance shouldFlushCA:(BOOL)a completionBlock:(id)block;
- (void)updateEditingTo:(BOOL)to animated:(BOOL)animated;
@end

@implementation DOCRemoteContext

- (id)serviceProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _auxiliaryConnection = [(DOCRemoteContext *)self _auxiliaryConnection];
  v6 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (void)updateAppearance:(id)appearance shouldFlushCA:(BOOL)a completionBlock:(id)block
{
  aCopy = a;
  blockCopy = block;
  appearanceCopy = appearance;
  v10 = [(DOCRemoteContext *)self serviceProxyWithErrorHandler:&__block_literal_global_2];
  [v10 updateAppearance:appearanceCopy shouldFlushCA:aCopy completionBlock:blockCopy];
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

- (void)updateEditingTo:(BOOL)to animated:(BOOL)animated
{
  animatedCopy = animated;
  toCopy = to;
  v6 = [(DOCRemoteContext *)self serviceProxyWithErrorHandler:&__block_literal_global_20];
  [v6 updateEditingTo:toCopy animated:animatedCopy];
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