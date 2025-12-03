@interface NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext
- (NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext)initWithRequestContext:(id)context;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext

- (NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  certificates = [(NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext *)self certificates];
  nonce = [(NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext *)self nonce];
  nonceSignature = [(NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext *)self nonceSignature];
  v8 = [v3 stringWithFormat:@"<%@ certificates %@ nonce %@ nonce signature %@>", _baseFlowStepDescription, certificates, nonce, nonceSignature];

  return v8;
}

@end