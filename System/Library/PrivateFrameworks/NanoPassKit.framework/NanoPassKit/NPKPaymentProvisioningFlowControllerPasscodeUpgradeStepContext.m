@interface NPKPaymentProvisioningFlowControllerPasscodeUpgradeStepContext
- (NPKPaymentProvisioningFlowControllerPasscodeUpgradeStepContext)initWithRequestContext:(id)a3;
@end

@implementation NPKPaymentProvisioningFlowControllerPasscodeUpgradeStepContext

- (NPKPaymentProvisioningFlowControllerPasscodeUpgradeStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerPasscodeUpgradeStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

@end