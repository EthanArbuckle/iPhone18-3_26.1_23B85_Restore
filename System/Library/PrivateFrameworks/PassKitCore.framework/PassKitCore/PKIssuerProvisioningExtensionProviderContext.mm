@interface PKIssuerProvisioningExtensionProviderContext
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)connect;
- (void)generateRequestWithEntryIdentifier:(id)a3 configuration:(id)a4 certificateChain:(id)a5 nonce:(id)a6 nonceSignature:(id)a7 completionHandler:(id)a8;
- (void)passEntriesWithCompletion:(id)a3;
- (void)remotePassEntriesWithCompletion:(id)a3;
- (void)statusWithCompletion:(id)a3;
@end

@implementation PKIssuerProvisioningExtensionProviderContext

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(PKIssuerProvisioningExtensionProviderContext *)self _auxiliaryConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(PKIssuerProvisioningExtensionProviderContext *)self _auxiliaryConnection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (void)statusWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
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
    v4 = v7;
  }
}

- (void)passEntriesWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
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
    v4 = v7;
  }
}

- (void)remotePassEntriesWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
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
    v4 = v7;
  }
}

- (void)generateRequestWithEntryIdentifier:(id)a3 configuration:(id)a4 certificateChain:(id)a5 nonce:(id)a6 nonceSignature:(id)a7 completionHandler:(id)a8
{
  v21 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v18)
  {
    v19 = objc_autoreleasePoolPush();
    handler = self->_handler;
    if (handler)
    {
      [(PKIssuerProvisioningExtensionHandler *)handler generateAddPaymentPassRequestForPassEntryWithIdentifier:v21 configuration:v14 certificateChain:v15 nonce:v16 nonceSignature:v17 completionHandler:v18];
    }

    else
    {
      v18[2](v18, 0);
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