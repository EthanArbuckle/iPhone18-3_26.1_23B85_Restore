@interface FSFileSystemBasis
+ (void)wipeResource:(id)resource extension:(id)extension completionHandler:(id)handler;
@end

@implementation FSFileSystemBasis

+ (void)wipeResource:(id)resource extension:(id)extension completionHandler:(id)handler
{
  resourceCopy = resource;
  extensionCopy = extension;
  handlerCopy = handler;
  v10 = fskit_std_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [FSFileSystemBasis wipeResource:v10 extension:? completionHandler:?];
  }

  if (extensionCopy)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__FSFileSystemBasis_wipeResource_extension_completionHandler___block_invoke;
    v14[3] = &unk_278FECE20;
    v15 = handlerCopy;
    [extensionCopy sendWipeResource:resourceCopy replyHandler:v14];
    v11 = v15;
  }

  else
  {
    v12 = fskit_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [FSFileSystemBasis wipeResource:v12 extension:? completionHandler:?];
    }

    v11 = fs_errorForPOSIXError(45);
    (*(handlerCopy + 2))(handlerCopy, v11);
  }

  v13 = fskit_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [FSFileSystemBasis wipeResource:v13 extension:? completionHandler:?];
  }
}

+ (void)wipeResource:(os_log_t)log extension:completionHandler:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "+[FSFileSystemBasis wipeResource:extension:completionHandler:]";
  _os_log_debug_impl(&dword_24A929000, log, OS_LOG_TYPE_DEBUG, "%s:start", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)wipeResource:(os_log_t)log extension:completionHandler:.cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "+[FSFileSystemBasis wipeResource:extension:completionHandler:]";
  _os_log_fault_impl(&dword_24A929000, log, OS_LOG_TYPE_FAULT, "%s: no extension is available", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)wipeResource:(os_log_t)log extension:completionHandler:.cold.3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "+[FSFileSystemBasis wipeResource:extension:completionHandler:]";
  _os_log_debug_impl(&dword_24A929000, log, OS_LOG_TYPE_DEBUG, "%s:end", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end