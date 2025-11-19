@interface NPKPaymentProvisioningFlowControllerLocalDeviceManualEntryProgressStepContext
- (NPKPaymentProvisioningFlowControllerLocalDeviceManualEntryProgressStepContext)initWithRequestContext:(id)a3;
@end

@implementation NPKPaymentProvisioningFlowControllerLocalDeviceManualEntryProgressStepContext

- (NPKPaymentProvisioningFlowControllerLocalDeviceManualEntryProgressStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerLocalDeviceManualEntryProgressStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

@end