@interface NPKPaymentProvisioningFlowControllerProvisioningResultStepContext
- (NPKPaymentProvisioningFlowControllerProvisioningResultStepContext)initWithRequestContext:(id)a3;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowControllerProvisioningResultStepContext

- (NPKPaymentProvisioningFlowControllerProvisioningResultStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerProvisioningResultStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  v5 = [(NPKPaymentProvisioningFlowControllerProvisioningResultStepContext *)self cardAdded];
  v6 = [(NPKPaymentProvisioningFlowControllerProvisioningResultStepContext *)self error];
  v7 = [v3 stringWithFormat:@"<%@ card added %d error %@>", v4, v5, v6];

  return v7;
}

@end