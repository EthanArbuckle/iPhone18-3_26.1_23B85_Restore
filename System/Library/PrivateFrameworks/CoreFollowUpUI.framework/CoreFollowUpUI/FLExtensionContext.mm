@interface FLExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (id)_shadowPrincipalObject;
- (id)extensionLogicProvider;
- (id)hostContextWithErrorHandler:(id)handler;
- (id)syncHostContextWithErrorHandler:(id)handler;
- (void)followUpPerformUpdateWithCompletionHandler:(id)handler;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
@end

@implementation FLExtensionContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken != -1)
  {
    +[FLExtensionContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol___interface;

  return v3;
}

uint64_t __53__FLExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol___interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2858527B0];

  return MEMORY[0x2821F96F8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken != -1)
  {
    +[FLExtensionContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol___interface;

  return v3;
}

void __55__FLExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28586DB98];
  v1 = _extensionAuxiliaryVendorProtocol___interface;
  _extensionAuxiliaryVendorProtocol___interface = v0;

  v2 = _extensionAuxiliaryVendorProtocol___interface;
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_processFollowUpItem_selectedAction_completion_ argumentIndex:0 ofReply:0];

  v4 = _extensionAuxiliaryVendorProtocol___interface;
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v5 forSelector:sel_processFollowUpItem_selectedAction_completion_ argumentIndex:1 ofReply:0];
}

- (id)extensionLogicProvider
{
  v12 = *MEMORY[0x277D85DE8];
  _principalObject = [(FLExtensionContext *)self _principalObject];
  v4 = _principalObject;
  if (_principalObject)
  {
    _shadowPrincipalObject = _principalObject;
  }

  else
  {
    _shadowPrincipalObject = [(FLExtensionContext *)self _shadowPrincipalObject];
  }

  v6 = _shadowPrincipalObject;

  v7 = _FLLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_245383000, v7, OS_LOG_TYPE_DEFAULT, "Loaded extension principal object: %@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_shadowPrincipalObject
{
  shadowPrincipalObject = self->_shadowPrincipalObject;
  if (!shadowPrincipalObject)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];
    v6 = [infoDictionary objectForKeyedSubscript:@"NSExtension"];
    v7 = [v6 objectForKeyedSubscript:@"NSExtensionPrincipalClass"];

    Class = objc_getClass([v7 UTF8String]);
    if ([(objc_class *)Class conformsToProtocol:&unk_285864EA0]&& [(objc_class *)Class conformsToProtocol:&unk_28586DDE0])
    {
      v9 = objc_alloc_init(Class);
      v10 = self->_shadowPrincipalObject;
      self->_shadowPrincipalObject = v9;
    }

    shadowPrincipalObject = self->_shadowPrincipalObject;
  }

  return shadowPrincipalObject;
}

- (id)hostContextWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _auxiliaryConnection = [(FLExtensionContext *)self _auxiliaryConnection];
  v6 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)syncHostContextWithErrorHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _auxiliaryConnection = [(FLExtensionContext *)self _auxiliaryConnection];
    v13 = 136315394;
    v14 = "[FLExtensionContext syncHostContextWithErrorHandler:]";
    v15 = 2112;
    v16 = _auxiliaryConnection;
    _os_log_impl(&dword_245383000, v5, OS_LOG_TYPE_DEFAULT, "%s self._auxiliaryConnection: %@", &v13, 0x16u);
  }

  _auxiliaryConnection2 = [(FLExtensionContext *)self _auxiliaryConnection];
  v8 = [_auxiliaryConnection2 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  v9 = _FLLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    _auxiliaryConnection3 = [(FLExtensionContext *)self _auxiliaryConnection];
    v13 = 136315650;
    v14 = "[FLExtensionContext syncHostContextWithErrorHandler:]";
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = _auxiliaryConnection3;
    _os_log_impl(&dword_245383000, v9, OS_LOG_TYPE_DEFAULT, "%s return hostContext: %@ self._auxiliaryConnection: %@", &v13, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  itemCopy = item;
  actionCopy = action;
  completionCopy = completion;
  v11 = _FLLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_245383000, v11, OS_LOG_TYPE_DEFAULT, "FLExtensionContext: process action", v14, 2u);
  }

  extensionLogicProvider = [(FLExtensionContext *)self extensionLogicProvider];
  v13 = extensionLogicProvider;
  if (extensionLogicProvider)
  {
    [extensionLogicProvider processFollowUpItem:itemCopy selectedAction:actionCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)followUpPerformUpdateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245383000, v5, OS_LOG_TYPE_DEFAULT, "FLExtensionContext: refresh", buf, 2u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__FLExtensionContext_followUpPerformUpdateWithCompletionHandler___block_invoke;
  v10[3] = &unk_278E35F70;
  v6 = handlerCopy;
  v11 = v6;
  v7 = MEMORY[0x245D69850](v10);
  extensionLogicProvider = [(FLExtensionContext *)self extensionLogicProvider];
  if (objc_opt_respondsToSelector())
  {
    [extensionLogicProvider followUpPerformUpdateWithCompletionHandler:v7];
  }

  else
  {
    v9 = _FLLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_245383000, v9, OS_LOG_TYPE_DEFAULT, "Skipping refresh, extension does not support it", buf, 2u);
    }

    v7[2](v7, 0);
  }
}

uint64_t __65__FLExtensionContext_followUpPerformUpdateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = _FLLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_245383000, v2, OS_LOG_TYPE_DEFAULT, "FLExtensionContext: completing request...", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

@end