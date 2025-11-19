@interface NPKPaymentProvisioningFlowControllerChooseProductStepContext
- (NPKPaymentProvisioningFlowControllerChooseProductStepContext)initWithCoder:(id)a3;
- (NPKPaymentProvisioningFlowControllerChooseProductStepContext)initWithRequestContext:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPKPaymentProvisioningFlowControllerChooseProductStepContext

- (NPKPaymentProvisioningFlowControllerChooseProductStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerChooseProductStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  v5 = [(NPKPaymentProvisioningFlowControllerChooseProductStepContext *)self products];
  v6 = [v3 stringWithFormat:@"<%@ products %@>", v4, v5];

  return v6;
}

- (NPKPaymentProvisioningFlowControllerChooseProductStepContext)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NPKPaymentProvisioningFlowControllerChooseProductStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"products"];
    products = v5->_products;
    v5->_products = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerChooseProductStepContext;
  v4 = a3;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_products forKey:{@"products", v5.receiver, v5.super_class}];
}

@end