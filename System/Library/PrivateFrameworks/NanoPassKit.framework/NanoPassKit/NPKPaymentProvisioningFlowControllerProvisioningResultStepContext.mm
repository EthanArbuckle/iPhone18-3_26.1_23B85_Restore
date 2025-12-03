@interface NPKPaymentProvisioningFlowControllerProvisioningResultStepContext
- (NPKPaymentProvisioningFlowControllerProvisioningResultStepContext)initWithRequestContext:(id)context;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowControllerProvisioningResultStepContext

- (NPKPaymentProvisioningFlowControllerProvisioningResultStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerProvisioningResultStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  cardAdded = [(NPKPaymentProvisioningFlowControllerProvisioningResultStepContext *)self cardAdded];
  error = [(NPKPaymentProvisioningFlowControllerProvisioningResultStepContext *)self error];
  v7 = [v3 stringWithFormat:@"<%@ card added %d error %@>", _baseFlowStepDescription, cardAdded, error];

  return v7;
}

@end