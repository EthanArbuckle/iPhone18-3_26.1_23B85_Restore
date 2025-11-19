@interface NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext
- (NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext)initWithRequestContext:(id)a3;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext

- (NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  v5 = [(NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext *)self termsURL];
  v6 = [v3 stringWithFormat:@"<%@ terms URL %@ allow non-secure HTTP %d>", v4, v5, -[NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext allowNonSecureHTTP](self, "allowNonSecureHTTP")];

  return v6;
}

@end