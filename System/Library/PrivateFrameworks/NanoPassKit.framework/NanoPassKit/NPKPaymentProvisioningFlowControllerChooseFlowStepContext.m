@interface NPKPaymentProvisioningFlowControllerChooseFlowStepContext
- (NPKPaymentProvisioningFlowControllerChooseFlowStepContext)initWithCoder:(id)a3;
- (NPKPaymentProvisioningFlowControllerChooseFlowStepContext)initWithRequestContext:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPKPaymentProvisioningFlowControllerChooseFlowStepContext

- (NPKPaymentProvisioningFlowControllerChooseFlowStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerChooseFlowStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  v5 = [(NPKPaymentProvisioningFlowControllerChooseFlowStepContext *)self sections];
  v6 = [v3 stringWithFormat:@"<%@ sections %@>", v4, v5];

  return v6;
}

- (NPKPaymentProvisioningFlowControllerChooseFlowStepContext)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NPKPaymentProvisioningFlowControllerChooseFlowStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"sections"];
    sections = v5->_sections;
    v5->_sections = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerChooseFlowStepContext;
  v4 = a3;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sections forKey:{@"sections", v5.receiver, v5.super_class}];
}

@end