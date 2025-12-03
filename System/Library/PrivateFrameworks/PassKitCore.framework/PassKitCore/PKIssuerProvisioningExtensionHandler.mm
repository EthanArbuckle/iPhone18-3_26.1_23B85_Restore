@interface PKIssuerProvisioningExtensionHandler
- (void)beginRequestWithExtensionContext:(id)context;
- (void)generateAddPaymentPassRequestForPassEntryWithIdentifier:(NSString *)identifier configuration:(PKAddPaymentPassRequestConfiguration *)configuration certificateChain:(NSArray *)certificates nonce:(NSData *)nonce nonceSignature:(NSData *)nonceSignature completionHandler:(void *)completion;
- (void)passEntriesWithCompletion:(void *)completion;
- (void)remotePassEntriesWithCompletion:(void *)completion;
- (void)statusWithCompletion:(void *)completion;
@end

@implementation PKIssuerProvisioningExtensionHandler

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v6 = contextCopy;
    v5 = objc_autoreleasePoolPush();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 setHandler:self];
      [v6 connect];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid configuration for PKIssuerProvisioningExtensionHandler extension."];
      [v6 completeRequestReturningItems:0 completionHandler:0];
    }

    objc_autoreleasePoolPop(v5);
    contextCopy = v6;
  }
}

- (void)statusWithCompletion:(void *)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)passEntriesWithCompletion:(void *)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)remotePassEntriesWithCompletion:(void *)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)generateAddPaymentPassRequestForPassEntryWithIdentifier:(NSString *)identifier configuration:(PKAddPaymentPassRequestConfiguration *)configuration certificateChain:(NSArray *)certificates nonce:(NSData *)nonce nonceSignature:(NSData *)nonceSignature completionHandler:(void *)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

@end