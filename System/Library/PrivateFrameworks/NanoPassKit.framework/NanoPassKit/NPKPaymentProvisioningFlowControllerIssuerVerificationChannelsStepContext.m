@interface NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext
- (NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext)initWithRequestContext:(id)a3;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext

- (NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  v5 = [(NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext *)self paymentPass];
  v6 = [v5 uniqueID];
  v7 = [(NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext *)self verificationChannels];
  v8 = [v3 stringWithFormat:@"<%@ pass unique ID %@ channels %@>", v4, v6, v7];

  return v8;
}

@end