@interface NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext
- (NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext)initWithRequestContext:(id)context;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext

- (NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  termsURL = [(NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext *)self termsURL];
  v6 = [v3 stringWithFormat:@"<%@ terms URL %@ allow non-secure HTTP %d>", _baseFlowStepDescription, termsURL, -[NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext allowNonSecureHTTP](self, "allowNonSecureHTTP")];

  return v6;
}

@end