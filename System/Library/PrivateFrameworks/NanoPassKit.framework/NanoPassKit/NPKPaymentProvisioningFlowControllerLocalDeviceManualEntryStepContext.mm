@interface NPKPaymentProvisioningFlowControllerLocalDeviceManualEntryStepContext
- (NPKPaymentProvisioningFlowControllerLocalDeviceManualEntryStepContext)initWithRequestContext:(id)a3;
@end

@implementation NPKPaymentProvisioningFlowControllerLocalDeviceManualEntryStepContext

- (NPKPaymentProvisioningFlowControllerLocalDeviceManualEntryStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerLocalDeviceManualEntryStepContext;
  return [(NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext *)&v4 initWithRequestContext:a3];
}

@end