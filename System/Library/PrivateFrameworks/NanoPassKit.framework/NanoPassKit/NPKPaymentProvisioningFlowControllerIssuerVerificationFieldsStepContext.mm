@interface NPKPaymentProvisioningFlowControllerIssuerVerificationFieldsStepContext
- (NPKPaymentProvisioningFlowControllerIssuerVerificationFieldsStepContext)initWithRequestContext:(id)context;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowControllerIssuerVerificationFieldsStepContext

- (NPKPaymentProvisioningFlowControllerIssuerVerificationFieldsStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerIssuerVerificationFieldsStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  paymentPass = [(NPKPaymentProvisioningFlowControllerIssuerVerificationFieldsStepContext *)self paymentPass];
  uniqueID = [paymentPass uniqueID];
  verificationFields = [(NPKPaymentProvisioningFlowControllerIssuerVerificationFieldsStepContext *)self verificationFields];
  v8 = [v3 stringWithFormat:@"<%@ pass unique ID %@ fields %@>", _baseFlowStepDescription, uniqueID, verificationFields];

  return v8;
}

@end