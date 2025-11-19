@interface PKPaymentInformationEventExtensionBaseContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (id)remoteContextWithErrorHandler:(id)a3;
@end

@implementation PKPaymentInformationEventExtensionBaseContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_MergedGlobals_223 != -1)
  {
    dispatch_once(&_MergedGlobals_223, &__block_literal_global_98);
  }

  v3 = qword_1ED6D1A98;

  return v3;
}

void __80__PKPaymentInformationEventExtensionBaseContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2411DE8];
  v1 = qword_1ED6D1A98;
  qword_1ED6D1A98 = v0;
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (qword_1ED6D1AA0 != -1)
  {
    dispatch_once(&qword_1ED6D1AA0, &__block_literal_global_2);
  }

  v3 = qword_1ED6D1AA8;

  return v3;
}

void __82__PKPaymentInformationEventExtensionBaseContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2411D88];
  v1 = qword_1ED6D1AA8;
  qword_1ED6D1AA8 = v0;
}

void __62__PKPaymentInformationEventExtensionBaseContext_remoteContext__block_invoke(uint64_t a1, uint64_t a2)
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

- (id)remoteContextWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentInformationEventExtensionBaseContext *)self _auxiliaryConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

@end