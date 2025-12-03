@interface NPKPaymentProvisioningFlowControllerProductDisambiguationStepContext
- (NPKPaymentProvisioningFlowControllerProductDisambiguationStepContext)initWithRequestContext:(id)context;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowControllerProductDisambiguationStepContext

- (NPKPaymentProvisioningFlowControllerProductDisambiguationStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerProductDisambiguationStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  products = [(NPKPaymentProvisioningFlowControllerProductDisambiguationStepContext *)self products];
  v6 = [v3 stringWithFormat:@"<%@ products %@>", _baseFlowStepDescription, products];

  return v6;
}

@end