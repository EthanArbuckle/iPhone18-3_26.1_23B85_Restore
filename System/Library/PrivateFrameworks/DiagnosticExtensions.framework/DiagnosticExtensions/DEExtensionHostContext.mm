@interface DEExtensionHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (BOOL)hasEntitlement;
- (id)updatedParametersWithExtensionFileNameFromParameters:(id)a3;
- (void)annotatedAttachmentsForParameters:(id)a3 withHandler:(id)a4;
- (void)attachmentListWithHandler:(id)a3;
- (void)attachmentsForParameters:(id)a3 withProgressHandler:(id)a4 withHandler:(id)a5;
- (void)collectionDidUpdateWithProgress:(id)a3;
- (void)hasEntitlement;
- (void)isExtensionEnhancedLoggingStateOnWithHandler:(id)a3;
- (void)setupForParameters:(id)a3 withHandler:(id)a4;
- (void)teardownForParameters:(id)a3 withHandler:(id)a4;
@end

@implementation DEExtensionHostContext

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken != -1)
  {
    +[DEExtensionHostContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol___interface;

  return v3;
}

void __59__DEExtensionHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B75250];
  v1 = _extensionAuxiliaryVendorProtocol___interface;
  _extensionAuxiliaryVendorProtocol___interface = v0;

  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  [_extensionAuxiliaryVendorProtocol___interface setClasses:v10 forSelector:sel_attachmentListWithHandler_ argumentIndex:0 ofReply:1];
  [_extensionAuxiliaryVendorProtocol___interface setClasses:v10 forSelector:sel_attachmentsForParameters_withHandler_ argumentIndex:0 ofReply:1];
  [_extensionAuxiliaryVendorProtocol___interface setClasses:v10 forSelector:sel_annotatedAttachmentsForParameters_withHandler_ argumentIndex:0 ofReply:1];
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken != -1)
  {
    +[DEExtensionHostContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol___interface;

  return v3;
}

uint64_t __57__DEExtensionHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol___interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B73448];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)hasEntitlement
{
  v2 = [(DEExtensionHostContext *)self _auxiliaryConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.DiagnosticExtensions.extension"];

  v4 = [v3 BOOLValue];
  if ((v4 & 1) == 0)
  {
    v5 = +[DELogging fwHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(DEExtensionHostContext *)v5 hasEntitlement];
    }
  }

  return v4;
}

- (void)attachmentListWithHandler:(id)a3
{
  v6 = a3;
  if ([(DEExtensionHostContext *)self hasEntitlement])
  {
    v4 = [(DEExtensionHostContext *)self _auxiliaryConnection];
    v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_144];

    if (v5)
    {
      [v5 attachmentListWithHandler:v6];
    }

    else
    {
      v6[2](v6, 0);
    }
  }

  else
  {
    v6[2](v6, 0);
  }
}

void __52__DEExtensionHostContext_attachmentListWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[DELogging fwHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __52__DEExtensionHostContext_attachmentListWithHandler___block_invoke_cold_1(v2);
  }
}

- (void)annotatedAttachmentsForParameters:(id)a3 withHandler:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(DEExtensionHostContext *)self hasEntitlement])
  {
    v8 = [(DEExtensionHostContext *)self updatedParametersWithExtensionFileNameFromParameters:v6];
    v9 = +[DELogging fwHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 objectForKeyedSubscript:@"DEExtensionAttachmentsParamBundleIDKey"];
      v11 = [v8 objectForKeyedSubscript:@"DEExtensionAttachmentsParamDisplayNameKey"];
      *buf = 138413058;
      v21 = @"DEExtensionAttachmentsParamBundleIDKey";
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = @"DEExtensionAttachmentsParamDisplayNameKey";
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_248AB3000, v9, OS_LOG_TYPE_DEFAULT, "annotatedAttachmentsForParameters:withHandler: {%@:%@, %@:%@}", buf, 0x2Au);
    }

    v12 = [(DEExtensionHostContext *)self _auxiliaryConnection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __72__DEExtensionHostContext_annotatedAttachmentsForParameters_withHandler___block_invoke;
    v18[3] = &unk_278F63688;
    v13 = v7;
    v19 = v13;
    v14 = [v12 remoteObjectProxyWithErrorHandler:v18];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__DEExtensionHostContext_annotatedAttachmentsForParameters_withHandler___block_invoke_145;
    v16[3] = &unk_278F636B0;
    v17 = v13;
    [v14 annotatedAttachmentsForParameters:v8 withHandler:v16];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __72__DEExtensionHostContext_annotatedAttachmentsForParameters_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[DELogging fwHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__DEExtensionHostContext_annotatedAttachmentsForParameters_withHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)attachmentsForParameters:(id)a3 withProgressHandler:(id)a4 withHandler:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(DEExtensionHostContext *)self hasEntitlement])
  {
    v11 = [(DEExtensionHostContext *)self updatedParametersWithExtensionFileNameFromParameters:v8];
    v12 = +[DELogging fwHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 objectForKeyedSubscript:@"DEExtensionAttachmentsParamBundleIDKey"];
      v14 = [v11 objectForKeyedSubscript:@"DEExtensionAttachmentsParamDisplayNameKey"];
      *buf = 138413058;
      v25 = @"DEExtensionAttachmentsParamBundleIDKey";
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = @"DEExtensionAttachmentsParamDisplayNameKey";
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_248AB3000, v12, OS_LOG_TYPE_DEFAULT, "attachmentsForParameters:withProgressHandler: {%@:%@, %@:%@}", buf, 0x2Au);
    }

    v15 = [(DEExtensionHostContext *)self _auxiliaryConnection];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __83__DEExtensionHostContext_attachmentsForParameters_withProgressHandler_withHandler___block_invoke;
    v22[3] = &unk_278F63688;
    v16 = v10;
    v23 = v16;
    v17 = [v15 remoteObjectProxyWithErrorHandler:v22];

    [(DEExtensionHostContext *)self setProgressHandler:v9];
    objc_initWeak(buf, self);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __83__DEExtensionHostContext_attachmentsForParameters_withProgressHandler_withHandler___block_invoke_147;
    v19[3] = &unk_278F636D8;
    objc_copyWeak(&v21, buf);
    v20 = v16;
    [v17 attachmentsForParameters:v11 withHandler:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __83__DEExtensionHostContext_attachmentsForParameters_withProgressHandler_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[DELogging fwHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__DEExtensionHostContext_annotatedAttachmentsForParameters_withHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __83__DEExtensionHostContext_attachmentsForParameters_withProgressHandler_withHandler___block_invoke_147(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setProgressHandler:0];

  (*(*(a1 + 32) + 16))();
}

- (void)setupForParameters:(id)a3 withHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(DEExtensionHostContext *)self hasEntitlement])
  {
    v7 = [(DEExtensionHostContext *)self _auxiliaryConnection];
    v8 = [v7 remoteObjectProxyWithErrorHandler:&__block_literal_global_150];

    if (v8)
    {
      [v8 setupWithParameters:v9 withHandler:v6];
    }
  }
}

void __57__DEExtensionHostContext_setupForParameters_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[DELogging fwHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __57__DEExtensionHostContext_setupForParameters_withHandler___block_invoke_cold_1(v2);
  }
}

- (void)teardownForParameters:(id)a3 withHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(DEExtensionHostContext *)self hasEntitlement])
  {
    v7 = [(DEExtensionHostContext *)self _auxiliaryConnection];
    v8 = [v7 remoteObjectProxyWithErrorHandler:&__block_literal_global_152];

    if (v8)
    {
      [v8 teardownWithParameters:v9 withHandler:v6];
    }
  }
}

void __60__DEExtensionHostContext_teardownForParameters_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[DELogging fwHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __60__DEExtensionHostContext_teardownForParameters_withHandler___block_invoke_cold_1(v2);
  }
}

- (void)isExtensionEnhancedLoggingStateOnWithHandler:(id)a3
{
  v6 = a3;
  if ([(DEExtensionHostContext *)self hasEntitlement])
  {
    v4 = [(DEExtensionHostContext *)self _auxiliaryConnection];
    v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_154];

    if (v5)
    {
      [v5 isExtensionEnhancedLoggingStateOnWithHandler:v6];
    }
  }
}

void __71__DEExtensionHostContext_isExtensionEnhancedLoggingStateOnWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[DELogging fwHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __71__DEExtensionHostContext_isExtensionEnhancedLoggingStateOnWithHandler___block_invoke_cold_1(v2);
  }
}

- (void)collectionDidUpdateWithProgress:(id)a3
{
  v6 = a3;
  v4 = [(DEExtensionHostContext *)self progressHandler];

  if (v4)
  {
    v5 = [(DEExtensionHostContext *)self progressHandler];
    (v5)[2](v5, v6);
  }
}

- (id)updatedParametersWithExtensionFileNameFromParameters:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = [v3 objectForKey:@"DEExtensionAttachmentsParamBundleIDKey"];

  if (v5)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = v3;
    v6 = [v3 objectForKeyedSubscript:@"DEExtensionAttachmentsParamBundleIDKey"];
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v7;
    v9 = *v24;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = SBSCopyExecutablePathForDisplayIdentifier();
        v13 = [v12 lastPathComponent];
        v14 = [v4 objectForKey:@"DEExtensionAttachmentsParamDisplayNameKey"];

        if (v14)
        {
          if (v13)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v4 setObject:v16 forKeyedSubscript:@"DEExtensionAttachmentsParamDisplayNameKey"];

          if (v13)
          {
LABEL_9:
            v15 = [v4 objectForKeyedSubscript:@"DEExtensionAttachmentsParamDisplayNameKey"];
            [v15 addObject:v13];
            goto LABEL_12;
          }
        }

        v17 = [v11 componentsSeparatedByString:@"."];
        v15 = [v17 lastObject];

        v18 = [v4 objectForKeyedSubscript:@"DEExtensionAttachmentsParamDisplayNameKey"];
        [v18 addObject:v15];

LABEL_12:
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (!v8)
      {
LABEL_14:

        v3 = v22;
        break;
      }
    }
  }

  v19 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)hasEntitlement
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"com.apple.DiagnosticExtensions.extension";
  _os_log_error_impl(&dword_248AB3000, log, OS_LOG_TYPE_ERROR, "Missing entitlement: %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __52__DEExtensionHostContext_attachmentListWithHandler___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_248AB3000, v2, v3, "error calling attachmentList - %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __72__DEExtensionHostContext_annotatedAttachmentsForParameters_withHandler___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_248AB3000, v2, v3, "error calling attachmentsForParameters: - %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __57__DEExtensionHostContext_setupForParameters_withHandler___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_248AB3000, v2, v3, "error calling setupForParameters: - %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __60__DEExtensionHostContext_teardownForParameters_withHandler___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_248AB3000, v2, v3, "error calling teardownForParameters: - %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __71__DEExtensionHostContext_isExtensionEnhancedLoggingStateOnWithHandler___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_248AB3000, v2, v3, "error calling isExtensionEnhancedLoggingStateOn: - %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end