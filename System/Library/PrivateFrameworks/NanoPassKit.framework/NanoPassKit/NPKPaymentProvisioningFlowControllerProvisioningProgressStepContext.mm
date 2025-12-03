@interface NPKPaymentProvisioningFlowControllerProvisioningProgressStepContext
- (NPKPaymentProvisioningFlowControllerProvisioningProgressStepContext)initWithRequestContext:(id)context;
@end

@implementation NPKPaymentProvisioningFlowControllerProvisioningProgressStepContext

- (NPKPaymentProvisioningFlowControllerProvisioningProgressStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerProvisioningProgressStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

@end