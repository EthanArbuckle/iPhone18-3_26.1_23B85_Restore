@interface NPKPaymentProvisioningFlowControllerIssuerVerificationCodeStepContext
- (NPKPaymentProvisioningFlowControllerIssuerVerificationCodeStepContext)initWithRequestContext:(id)context;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowControllerIssuerVerificationCodeStepContext

- (NPKPaymentProvisioningFlowControllerIssuerVerificationCodeStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerIssuerVerificationCodeStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  paymentPass = [(NPKPaymentProvisioningFlowControllerIssuerVerificationCodeStepContext *)self paymentPass];
  uniqueID = [paymentPass uniqueID];
  verificationChannel = [(NPKPaymentProvisioningFlowControllerIssuerVerificationCodeStepContext *)self verificationChannel];
  v8 = [v3 stringWithFormat:@"<%@ pass unique ID %@ channel %@>", _baseFlowStepDescription, uniqueID, verificationChannel];

  return v8;
}

@end