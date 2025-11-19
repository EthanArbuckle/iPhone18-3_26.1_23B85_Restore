@interface NPKPaymentProvisioningFlowControllerProvisioningProgressStepContext
- (NPKPaymentProvisioningFlowControllerProvisioningProgressStepContext)initWithRequestContext:(id)a3;
@end

@implementation NPKPaymentProvisioningFlowControllerProvisioningProgressStepContext

- (NPKPaymentProvisioningFlowControllerProvisioningProgressStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerProvisioningProgressStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

@end