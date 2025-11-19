@interface NPKPaymentProvisioningFlowControllerManualEntryStepContext
- (NPKPaymentProvisioningFlowControllerManualEntryStepContext)initWithCoder:(id)a3;
- (NPKPaymentProvisioningFlowControllerManualEntryStepContext)initWithRequestContext:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPKPaymentProvisioningFlowControllerManualEntryStepContext

- (NPKPaymentProvisioningFlowControllerManualEntryStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerManualEntryStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  v5 = [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)self cameraFirstProvisioningEnabled];
  v6 = [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)self setupFields];
  v7 = [v3 stringWithFormat:@"<%@ camera first provisioning enabled %d setup fields %@>", v4, v5, v6];

  return v7;
}

- (NPKPaymentProvisioningFlowControllerManualEntryStepContext)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NPKPaymentProvisioningFlowControllerManualEntryStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v12 initWithCoder:v4];
  if (v5)
  {
    v5->_cameraFirstProvisioningEnabled = [v4 decodeBoolForKey:@"cameraFirstProvisioningEnabled"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"setupFields"];
    setupFields = v5->_setupFields;
    v5->_setupFields = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerManualEntryStepContext;
  v4 = a3;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_cameraFirstProvisioningEnabled forKey:{@"cameraFirstProvisioningEnabled", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_setupFields forKey:@"setupFields"];
}

@end