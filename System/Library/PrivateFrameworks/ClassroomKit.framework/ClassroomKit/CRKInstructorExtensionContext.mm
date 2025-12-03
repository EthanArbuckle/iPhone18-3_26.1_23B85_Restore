@interface CRKInstructorExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)listenerEndpointWithCompletion:(id)completion;
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

- (void)listenerEndpointWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (!self->mListener)
  {
    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    mListener = self->mListener;
    self->mListener = anonymousListener;

    [(NSXPCListener *)self->mListener setDelegate:self];
    [(NSXPCListener *)self->mListener resume];
    completionCopy = v8;
  }

  if (completionCopy)
  {
    endpoint = [(NSXPCListener *)self->mListener endpoint];
    (*(v8 + 2))(v8, endpoint);

    completionCopy = v8;
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = MEMORY[0x277CF95B8];
  connectionCopy = connection;
  v7 = [[v5 alloc] initWithXPCConnection:connectionCopy];

  _principalObject = [(CRKInstructorExtensionContext *)self _principalObject];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    _principalObject2 = [(CRKInstructorExtensionContext *)self _principalObject];
    [_principalObject2 didAcceptAdminTransport:v7];
  }

  else
  {
    [v7 invalidate];
  }

  return v9 & 1;
}

@end