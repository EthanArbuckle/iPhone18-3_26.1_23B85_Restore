@interface FLExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (id)_shadowPrincipalObject;
- (id)extensionLogicProvider;
- (id)hostContextWithErrorHandler:(id)a3;
- (id)syncHostContextWithErrorHandler:(id)a3;
- (void)followUpPerformUpdateWithCompletionHandler:(id)a3;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
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
  v3 = [(FLExtensionContext *)self _principalObject];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FLExtensionContext *)self _shadowPrincipalObject];
  }

  v6 = v5;

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
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 infoDictionary];
    v6 = [v5 objectForKeyedSubscript:@"NSExtension"];
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

- (id)hostContextWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(FLExtensionContext *)self _auxiliaryConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)syncHostContextWithErrorHandler:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(FLExtensionContext *)self _auxiliaryConnection];
    v13 = 136315394;
    v14 = "[FLExtensionContext syncHostContextWithErrorHandler:]";
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_245383000, v5, OS_LOG_TYPE_DEFAULT, "%s self._auxiliaryConnection: %@", &v13, 0x16u);
  }

  v7 = [(FLExtensionContext *)self _auxiliaryConnection];
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v4];

  v9 = _FLLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(FLExtensionContext *)self _auxiliaryConnection];
    v13 = 136315650;
    v14 = "[FLExtensionContext syncHostContextWithErrorHandler:]";
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_245383000, v9, OS_LOG_TYPE_DEFAULT, "%s return hostContext: %@ self._auxiliaryConnection: %@", &v13, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _FLLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_245383000, v11, OS_LOG_TYPE_DEFAULT, "FLExtensionContext: process action", v14, 2u);
  }

  v12 = [(FLExtensionContext *)self extensionLogicProvider];
  v13 = v12;
  if (v12)
  {
    [v12 processFollowUpItem:v8 selectedAction:v9 completion:v10];
  }

  else
  {
    v10[2](v10, 1);
  }
}

- (void)followUpPerformUpdateWithCompletionHandler:(id)a3
{
  v4 = a3;
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
  v6 = v4;
  v11 = v6;
  v7 = MEMORY[0x245D69850](v10);
  v8 = [(FLExtensionContext *)self extensionLogicProvider];
  if (objc_opt_respondsToSelector())
  {
    [v8 followUpPerformUpdateWithCompletionHandler:v7];
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