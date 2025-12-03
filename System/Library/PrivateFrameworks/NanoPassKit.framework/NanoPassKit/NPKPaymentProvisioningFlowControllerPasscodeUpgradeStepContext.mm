@interface NPKPaymentProvisioningFlowControllerPasscodeUpgradeStepContext
- (NPKPaymentProvisioningFlowControllerPasscodeUpgradeStepContext)initWithRequestContext:(id)context;
@end

@implementation NPKPaymentProvisioningFlowControllerPasscodeUpgradeStepContext

- (NPKPaymentProvisioningFlowControllerPasscodeUpgradeStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerPasscodeUpgradeStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

@end