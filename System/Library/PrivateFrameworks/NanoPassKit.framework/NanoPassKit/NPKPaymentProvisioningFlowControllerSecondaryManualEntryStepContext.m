@interface NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext
- (NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext)initWithCoder:(id)a3;
- (NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext)initWithRequestContext:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext

- (NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext;
  return [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)&v4 initWithRequestContext:a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  v5 = [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)self cameraFirstProvisioningEnabled];
  v6 = [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)self setupFields];
  v7 = [(NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext *)self credential];
  v8 = [v3 stringWithFormat:@"<%@ camera first provisioning enabled %d setup fields %@ credential %@>", v4, v5, v6, v7];

  return v8;
}

- (NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext;
  v5 = [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credential"];
    credential = v5->_credential;
    v5->_credential = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext;
  v4 = a3;
  [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_credential forKey:{@"credential", v5.receiver, v5.super_class}];
}

@end