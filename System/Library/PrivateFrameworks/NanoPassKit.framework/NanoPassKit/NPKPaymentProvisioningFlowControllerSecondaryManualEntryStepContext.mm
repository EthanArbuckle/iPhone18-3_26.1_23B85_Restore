@interface NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext
- (NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext)initWithCoder:(id)coder;
- (NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext)initWithRequestContext:(id)context;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext

- (NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext;
  return [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)&v4 initWithRequestContext:context];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  cameraFirstProvisioningEnabled = [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)self cameraFirstProvisioningEnabled];
  setupFields = [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)self setupFields];
  credential = [(NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext *)self credential];
  v8 = [v3 stringWithFormat:@"<%@ camera first provisioning enabled %d setup fields %@ credential %@>", _baseFlowStepDescription, cameraFirstProvisioningEnabled, setupFields, credential];

  return v8;
}

- (NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext;
  v5 = [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credential"];
    credential = v5->_credential;
    v5->_credential = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext;
  coderCopy = coder;
  [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_credential forKey:{@"credential", v5.receiver, v5.super_class}];
}

@end