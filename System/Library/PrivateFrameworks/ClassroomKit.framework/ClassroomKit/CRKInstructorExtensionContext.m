@interface CRKInstructorExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)listenerEndpointWithCompletion:(id)a3;
@end

@implementation CRKInstructorExtensionContext

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken_0 != -1)
  {
    +[CRKInstructorExtensionContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol_vendorInterface;

  return v3;
}

uint64_t __66__CRKInstructorExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol_vendorInterface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856818C8];

  return MEMORY[0x2821F96F8]();
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken_0 != -1)
  {
    +[CRKInstructorExtensionContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol_hostInterface;

  return v3;
}

uint64_t __64__CRKInstructorExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol_hostInterface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856813F0];

  return MEMORY[0x2821F96F8]();
}

- (void)listenerEndpointWithCompletion:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!self->mListener)
  {
    v5 = [MEMORY[0x277CCAE98] anonymousListener];
    mListener = self->mListener;
    self->mListener = v5;

    [(NSXPCListener *)self->mListener setDelegate:self];
    [(NSXPCListener *)self->mListener resume];
    v4 = v8;
  }

  if (v4)
  {
    v7 = [(NSXPCListener *)self->mListener endpoint];
    (*(v8 + 2))(v8, v7);

    v4 = v8;
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = MEMORY[0x277CF95B8];
  v6 = a4;
  v7 = [[v5 alloc] initWithXPCConnection:v6];

  v8 = [(CRKInstructorExtensionContext *)self _principalObject];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CRKInstructorExtensionContext *)self _principalObject];
    [v10 didAcceptAdminTransport:v7];
  }

  else
  {
    [v7 invalidate];
  }

  return v9 & 1;
}

@end