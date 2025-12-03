@interface NPKPaymentProvisioningFlowControllerChooseFlowStepContext
- (NPKPaymentProvisioningFlowControllerChooseFlowStepContext)initWithCoder:(id)coder;
- (NPKPaymentProvisioningFlowControllerChooseFlowStepContext)initWithRequestContext:(id)context;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKPaymentProvisioningFlowControllerChooseFlowStepContext

- (NPKPaymentProvisioningFlowControllerChooseFlowStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerChooseFlowStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  sections = [(NPKPaymentProvisioningFlowControllerChooseFlowStepContext *)self sections];
  v6 = [v3 stringWithFormat:@"<%@ sections %@>", _baseFlowStepDescription, sections];

  return v6;
}

- (NPKPaymentProvisioningFlowControllerChooseFlowStepContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = NPKPaymentProvisioningFlowControllerChooseFlowStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sections"];
    sections = v5->_sections;
    v5->_sections = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerChooseFlowStepContext;
  coderCopy = coder;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sections forKey:{@"sections", v5.receiver, v5.super_class}];
}

@end