@interface DEExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (BOOL)hasEntitlement;
- (void)annotatedAttachmentsForParameters:(id)a3 withHandler:(id)a4;
- (void)attachmentListWithHandler:(id)a3;
- (void)attachmentsForParameters:(id)a3 withHandler:(id)a4;
- (void)isExtensionEnhancedLoggingStateOnWithHandler:(id)a3;
- (void)setupWithParameters:(id)a3 withHandler:(id)a4;
- (void)teardownWithParameters:(id)a3 withHandler:(id)a4;
@end

@implementation DEExtensionContext

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken_0 != -1)
  {
    +[DEExtensionContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol___interface_0;

  return v3;
}

uint64_t __55__DEExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol___interface_0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B75250];

  return MEMORY[0x2821F96F8]();
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken_0 != -1)
  {
    +[DEExtensionContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol___interface_0;

  return v3;
}

uint64_t __53__DEExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol___interface_0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B73448];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)hasEntitlement
{
  v2 = [(DEExtensionContext *)self _auxiliaryConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.DiagnosticExtensions.extensionHost"];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (void)attachmentListWithHandler:(id)a3
{
  v6 = a3;
  if ([(DEExtensionContext *)self hasEntitlement])
  {
    v4 = [(DEExtensionContext *)self _principalObject];
    v5 = [v4 attachmentList];
    v6[2](v6, v5);
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)attachmentsForParameters:(id)a3 withHandler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(DEExtensionContext *)self hasEntitlement])
  {
    v8 = [(DEExtensionContext *)self _auxiliaryConnection];
    v9 = [v8 processIdentifier];

    objc_initWeak(&location, self);
    v10 = [(DEExtensionContext *)self _principalObject];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __59__DEExtensionContext_attachmentsForParameters_withHandler___block_invoke;
    v21[3] = &unk_278F63B88;
    objc_copyWeak(&v22, &location);
    v11 = [v10 attachmentsForParameters:v6 withProgressHandler:v21];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v24 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v17 + 1) + 8 * v15++) _generateSandboxExtensionTokenForPID:{v9, v17}];
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v17 objects:v24 count:16];
      }

      while (v13);
    }

    v7[2](v7, v12);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    v7[2](v7, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __59__DEExtensionContext_attachmentsForParameters_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _auxiliaryConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:&__block_literal_global_129];

  [v6 collectionDidUpdateWithProgress:v3];
}

void __59__DEExtensionContext_attachmentsForParameters_withHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[DELogging fwHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __59__DEExtensionContext_attachmentsForParameters_withHandler___block_invoke_2_cold_1(v2, v3);
  }
}

- (void)annotatedAttachmentsForParameters:(id)a3 withHandler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(DEExtensionContext *)self hasEntitlement])
  {
    v8 = [(DEExtensionContext *)self _auxiliaryConnection];
    v9 = [v8 processIdentifier];

    v10 = [(DEExtensionContext *)self _principalObject];
    v11 = [v10 annotatedAttachmentsForParameters:v6];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [v11 items];
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v18 + 1) + 8 * v16++) _generateSandboxExtensionTokenForPID:v9];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }

    v7[2](v7, v11);
  }

  else
  {
    v7[2](v7, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setupWithParameters:(id)a3 withHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(DEExtensionContext *)self hasEntitlement])
  {
    v7 = [(DEExtensionContext *)self _principalObject];
    [v7 setupWithParameters:v8];

    v6[2](v6);
  }
}

- (void)teardownWithParameters:(id)a3 withHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(DEExtensionContext *)self hasEntitlement])
  {
    v7 = [(DEExtensionContext *)self _principalObject];
    [v7 teardownWithParameters:v8];

    v6[2](v6);
  }
}

- (void)isExtensionEnhancedLoggingStateOnWithHandler:(id)a3
{
  v5 = a3;
  if ([(DEExtensionContext *)self hasEntitlement])
  {
    v4 = [(DEExtensionContext *)self _principalObject];
    [v4 isExtensionEnhancedLoggingStateOnWithHandler:v5];
  }
}

void __59__DEExtensionContext_attachmentsForParameters_withHandler___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_248AB3000, a2, OS_LOG_TYPE_ERROR, "error calling collectionDidUpdateWithProgress - %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end