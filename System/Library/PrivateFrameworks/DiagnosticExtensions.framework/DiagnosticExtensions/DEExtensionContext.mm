@interface DEExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (BOOL)hasEntitlement;
- (void)annotatedAttachmentsForParameters:(id)parameters withHandler:(id)handler;
- (void)attachmentListWithHandler:(id)handler;
- (void)attachmentsForParameters:(id)parameters withHandler:(id)handler;
- (void)isExtensionEnhancedLoggingStateOnWithHandler:(id)handler;
- (void)setupWithParameters:(id)parameters withHandler:(id)handler;
- (void)teardownWithParameters:(id)parameters withHandler:(id)handler;
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
  _auxiliaryConnection = [(DEExtensionContext *)self _auxiliaryConnection];
  v3 = [_auxiliaryConnection valueForEntitlement:@"com.apple.DiagnosticExtensions.extensionHost"];

  LOBYTE(_auxiliaryConnection) = [v3 BOOLValue];
  return _auxiliaryConnection;
}

- (void)attachmentListWithHandler:(id)handler
{
  handlerCopy = handler;
  if ([(DEExtensionContext *)self hasEntitlement])
  {
    _principalObject = [(DEExtensionContext *)self _principalObject];
    attachmentList = [_principalObject attachmentList];
    handlerCopy[2](handlerCopy, attachmentList);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)attachmentsForParameters:(id)parameters withHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  handlerCopy = handler;
  if ([(DEExtensionContext *)self hasEntitlement])
  {
    _auxiliaryConnection = [(DEExtensionContext *)self _auxiliaryConnection];
    processIdentifier = [_auxiliaryConnection processIdentifier];

    objc_initWeak(&location, self);
    _principalObject = [(DEExtensionContext *)self _principalObject];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __59__DEExtensionContext_attachmentsForParameters_withHandler___block_invoke;
    v21[3] = &unk_278F63B88;
    objc_copyWeak(&v22, &location);
    v11 = [_principalObject attachmentsForParameters:parametersCopy withProgressHandler:v21];

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

          [*(*(&v17 + 1) + 8 * v15++) _generateSandboxExtensionTokenForPID:{processIdentifier, v17}];
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v17 objects:v24 count:16];
      }

      while (v13);
    }

    handlerCopy[2](handlerCopy, v12);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
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

- (void)annotatedAttachmentsForParameters:(id)parameters withHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  handlerCopy = handler;
  if ([(DEExtensionContext *)self hasEntitlement])
  {
    _auxiliaryConnection = [(DEExtensionContext *)self _auxiliaryConnection];
    processIdentifier = [_auxiliaryConnection processIdentifier];

    _principalObject = [(DEExtensionContext *)self _principalObject];
    v11 = [_principalObject annotatedAttachmentsForParameters:parametersCopy];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    items = [v11 items];
    v13 = [items countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(items);
          }

          [*(*(&v18 + 1) + 8 * v16++) _generateSandboxExtensionTokenForPID:processIdentifier];
        }

        while (v14 != v16);
        v14 = [items countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }

    handlerCopy[2](handlerCopy, v11);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setupWithParameters:(id)parameters withHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  if ([(DEExtensionContext *)self hasEntitlement])
  {
    _principalObject = [(DEExtensionContext *)self _principalObject];
    [_principalObject setupWithParameters:parametersCopy];

    handlerCopy[2](handlerCopy);
  }
}

- (void)teardownWithParameters:(id)parameters withHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  if ([(DEExtensionContext *)self hasEntitlement])
  {
    _principalObject = [(DEExtensionContext *)self _principalObject];
    [_principalObject teardownWithParameters:parametersCopy];

    handlerCopy[2](handlerCopy);
  }
}

- (void)isExtensionEnhancedLoggingStateOnWithHandler:(id)handler
{
  handlerCopy = handler;
  if ([(DEExtensionContext *)self hasEntitlement])
  {
    _principalObject = [(DEExtensionContext *)self _principalObject];
    [_principalObject isExtensionEnhancedLoggingStateOnWithHandler:handlerCopy];
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