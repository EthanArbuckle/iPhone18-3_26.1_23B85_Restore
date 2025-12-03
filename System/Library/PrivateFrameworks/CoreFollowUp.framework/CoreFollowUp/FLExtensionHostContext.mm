@interface FLExtensionHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (FLExtensionHostContextInterface)delegate;
- (id)remoteContextWithErrorHandler:(id)handler;
- (void)extensionDidFinish;
- (void)extensionDidFinishWithUserInfo:(id)info completionHandler:(id)handler;
@end

@implementation FLExtensionHostContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken != -1)
  {
    +[FLExtensionHostContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol___interface;

  return v3;
}

void __57__FLExtensionHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284337CF8];
  v1 = _extensionAuxiliaryHostProtocol___interface;
  _extensionAuxiliaryHostProtocol___interface = v0;

  v2 = _extensionAuxiliaryHostProtocol___interface;
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_extensionDidFinishWithUserInfo_completionHandler_ argumentIndex:0 ofReply:0];
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken != -1)
  {
    +[FLExtensionHostContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol___interface;

  return v3;
}

void __59__FLExtensionHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28433BE20];
  v1 = _extensionAuxiliaryVendorProtocol___interface;
  _extensionAuxiliaryVendorProtocol___interface = v0;

  v2 = _extensionAuxiliaryVendorProtocol___interface;
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_processFollowUpItem_selectedAction_completion_ argumentIndex:0 ofReply:0];

  v4 = _extensionAuxiliaryVendorProtocol___interface;
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v5 forSelector:sel_processFollowUpItem_selectedAction_completion_ argumentIndex:1 ofReply:0];
}

- (id)remoteContextWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _auxiliaryConnection = [(FLExtensionHostContext *)self _auxiliaryConnection];
  v6 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (void)extensionDidFinish
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[FLExtensionHostContext extensionDidFinish]";
    _os_log_impl(&dword_22E696000, v3, OS_LOG_TYPE_DEFAULT, "-- %s --", &v6, 0xCu);
  }

  [(FLExtensionHostContext *)self extensionDidFinishWithUserInfo:0 completionHandler:0];
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[FLExtensionHostContext extensionDidFinish]";
    _os_log_impl(&dword_22E696000, v4, OS_LOG_TYPE_DEFAULT, "-- %s -- DONE.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)extensionDidFinishWithUserInfo:(id)info completionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  infoCopy = info;
  v8 = _FLLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[FLExtensionHostContext extensionDidFinishWithUserInfo:completionHandler:]";
    _os_log_impl(&dword_22E696000, v8, OS_LOG_TYPE_DEFAULT, "-- %s --", &v13, 0xCu);
  }

  delegate = [(FLExtensionHostContext *)self delegate];
  v10 = _FLLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = delegate;
    _os_log_impl(&dword_22E696000, v10, OS_LOG_TYPE_DEFAULT, "Extension responded to tear down: %@", &v13, 0xCu);
  }

  [delegate extensionDidFinishWithUserInfo:infoCopy completionHandler:handlerCopy];
  v11 = _FLLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[FLExtensionHostContext extensionDidFinishWithUserInfo:completionHandler:]";
    _os_log_impl(&dword_22E696000, v11, OS_LOG_TYPE_DEFAULT, "-- %s -- DONE.", &v13, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (FLExtensionHostContextInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end