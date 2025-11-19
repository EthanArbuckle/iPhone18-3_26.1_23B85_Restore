@interface NPKPaymentProvisioningFlowControllerProductDisambiguationStepContext
- (NPKPaymentProvisioningFlowControllerProductDisambiguationStepContext)initWithRequestContext:(id)a3;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowControllerProductDisambiguationStepContext

- (NPKPaymentProvisioningFlowControllerProductDisambiguationStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerProductDisambiguationStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  v5 = [(NPKPaymentProvisioningFlowControllerProductDisambiguationStepContext *)self products];
  v6 = [v3 stringWithFormat:@"<%@ products %@>", v4, v5];

  return v6;
}

@end