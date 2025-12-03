@interface PKIssuerProvisioningExtensionProviderContext
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)connect;
- (void)generateRequestWithEntryIdentifier:(id)identifier configuration:(id)configuration certificateChain:(id)chain nonce:(id)nonce nonceSignature:(id)signature completionHandler:(id)handler;
- (void)passEntriesWithCompletion:(id)completion;
- (void)remotePassEntriesWithCompletion:(id)completion;
- (void)statusWithCompletion:(id)completion;
@end

@implementation PKIssuerProvisioningExtensionProviderContext

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _auxiliaryConnection = [(PKIssuerProvisioningExtensionProviderContext *)self _auxiliaryConnection];
  v6 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _auxiliaryConnection = [(PKIssuerProvisioningExtensionProviderContext *)self _auxiliaryConnection];
  v6 = [_auxiliaryConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (void)statusWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = completionCopy;
    v5 = objc_autoreleasePoolPush();
    handler = self->_handler;
    if (handler)
    {
      [(PKIssuerProvisioningExtensionHandler *)handler statusWithCompletion:v7];
    }

    else
    {
      v7[2](v7, 0);
    }

    objc_autoreleasePoolPop(v5);
    completionCopy = v7;
  }
}

- (void)passEntriesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = completionCopy;
    v5 = objc_autoreleasePoolPush();
    handler = self->_handler;
    if (handler)
    {
      [(PKIssuerProvisioningExtensionHandler *)handler passEntriesWithCompletion:v7];
    }

    else
    {
      v7[2](v7, MEMORY[0x1E695E0F0]);
    }

    objc_autoreleasePoolPop(v5);
    completionCopy = v7;
  }
}

- (void)remotePassEntriesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = completionCopy;
    v5 = objc_autoreleasePoolPush();
    handler = self->_handler;
    if (handler)
    {
      [(PKIssuerProvisioningExtensionHandler *)handler remotePassEntriesWithCompletion:v7];
    }

    else
    {
      v7[2](v7, MEMORY[0x1E695E0F0]);
    }

    objc_autoreleasePoolPop(v5);
    completionCopy = v7;
  }
}

- (void)generateRequestWithEntryIdentifier:(id)identifier configuration:(id)configuration certificateChain:(id)chain nonce:(id)nonce nonceSignature:(id)signature completionHandler:(id)handler
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  chainCopy = chain;
  nonceCopy = nonce;
  signatureCopy = signature;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v19 = objc_autoreleasePoolPush();
    handler = self->_handler;
    if (handler)
    {
      [(PKIssuerProvisioningExtensionHandler *)handler generateAddPaymentPassRequestForPassEntryWithIdentifier:identifierCopy configuration:configurationCopy certificateChain:chainCopy nonce:nonceCopy nonceSignature:signatureCopy completionHandler:handlerCopy];
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }

    objc_autoreleasePoolPop(v19);
  }
}

- (void)connect
{
  v2 = [(PKIssuerProvisioningExtensionProviderContext *)self synchronousRemoteObjectProxyWithErrorHandler:0];
  [v2 connectWithCompletion:&__block_literal_global_75];
}

@end