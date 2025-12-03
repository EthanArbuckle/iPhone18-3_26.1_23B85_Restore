@interface NPKPaymentProvisioningFlowControllerManualEntryStepContext
- (NPKPaymentProvisioningFlowControllerManualEntryStepContext)initWithCoder:(id)coder;
- (NPKPaymentProvisioningFlowControllerManualEntryStepContext)initWithRequestContext:(id)context;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKPaymentProvisioningFlowControllerManualEntryStepContext

- (NPKPaymentProvisioningFlowControllerManualEntryStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerManualEntryStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  cameraFirstProvisioningEnabled = [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)self cameraFirstProvisioningEnabled];
  setupFields = [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)self setupFields];
  v7 = [v3 stringWithFormat:@"<%@ camera first provisioning enabled %d setup fields %@>", _baseFlowStepDescription, cameraFirstProvisioningEnabled, setupFields];

  return v7;
}

- (NPKPaymentProvisioningFlowControllerManualEntryStepContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = NPKPaymentProvisioningFlowControllerManualEntryStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_cameraFirstProvisioningEnabled = [coderCopy decodeBoolForKey:@"cameraFirstProvisioningEnabled"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"setupFields"];
    setupFields = v5->_setupFields;
    v5->_setupFields = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerManualEntryStepContext;
  coderCopy = coder;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_cameraFirstProvisioningEnabled forKey:{@"cameraFirstProvisioningEnabled", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_setupFields forKey:@"setupFields"];
}

@end