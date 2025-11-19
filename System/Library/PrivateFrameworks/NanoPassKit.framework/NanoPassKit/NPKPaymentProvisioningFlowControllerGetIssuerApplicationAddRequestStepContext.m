@interface NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext
- (NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext)initWithRequestContext:(id)a3;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext

- (NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  v5 = [(NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext *)self certificates];
  v6 = [(NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext *)self nonce];
  v7 = [(NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext *)self nonceSignature];
  v8 = [v3 stringWithFormat:@"<%@ certificates %@ nonce %@ nonce signature %@>", v4, v5, v6, v7];

  return v8;
}

@end