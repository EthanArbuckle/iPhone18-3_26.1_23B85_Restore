@interface NPKPaymentProvisioningFlowControllerChooseProductStepContext
- (NPKPaymentProvisioningFlowControllerChooseProductStepContext)initWithCoder:(id)coder;
- (NPKPaymentProvisioningFlowControllerChooseProductStepContext)initWithRequestContext:(id)context;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKPaymentProvisioningFlowControllerChooseProductStepContext

- (NPKPaymentProvisioningFlowControllerChooseProductStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerChooseProductStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  products = [(NPKPaymentProvisioningFlowControllerChooseProductStepContext *)self products];
  v6 = [v3 stringWithFormat:@"<%@ products %@>", _baseFlowStepDescription, products];

  return v6;
}

- (NPKPaymentProvisioningFlowControllerChooseProductStepContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = NPKPaymentProvisioningFlowControllerChooseProductStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"products"];
    products = v5->_products;
    v5->_products = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerChooseProductStepContext;
  coderCopy = coder;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_products forKey:{@"products", v5.receiver, v5.super_class}];
}

@end