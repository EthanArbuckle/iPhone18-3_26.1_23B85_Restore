@interface PKExtensionBaseContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (id)remoteContextWithErrorHandler:(id)handler;
@end

@implementation PKExtensionBaseContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_MergedGlobals_242 != -1)
  {
    dispatch_once(&_MergedGlobals_242, &__block_literal_global_150);
  }

  v3 = qword_1ED6D1E78;

  return v3;
}

void __57__PKExtensionBaseContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F23DB8C0];
  v1 = qword_1ED6D1E78;
  qword_1ED6D1E78 = v0;
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (qword_1ED6D1E80 != -1)
  {
    dispatch_once(&qword_1ED6D1E80, &__block_literal_global_92);
  }

  v3 = qword_1ED6D1E88;

  return v3;
}

void __59__PKExtensionBaseContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F242E1C0];
  v1 = qword_1ED6D1E88;
  qword_1ED6D1E88 = v0;

  v2 = qword_1ED6D1E88;

  PKPaymentAuthorizationServiceInterfaceSet(v2);
}

void __39__PKExtensionBaseContext_remoteContext__block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "error getting remote context for extension: %@", &v4, 0xCu);
  }
}

- (id)remoteContextWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _auxiliaryConnection = [(PKExtensionBaseContext *)self _auxiliaryConnection];
  v6 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

@end