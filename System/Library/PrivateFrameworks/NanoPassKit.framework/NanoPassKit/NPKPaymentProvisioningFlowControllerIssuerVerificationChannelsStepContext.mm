@interface NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext
- (NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext)initWithRequestContext:(id)context;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext

- (NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  paymentPass = [(NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext *)self paymentPass];
  uniqueID = [paymentPass uniqueID];
  verificationChannels = [(NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext *)self verificationChannels];
  v8 = [v3 stringWithFormat:@"<%@ pass unique ID %@ channels %@>", _baseFlowStepDescription, uniqueID, verificationChannels];

  return v8;
}

@end