@interface NPKPaymentProvisioningFlowControllerPreconditionsStepContext
- (NPKPaymentProvisioningFlowControllerPreconditionsStepContext)initWithCoder:(id)a3;
- (NPKPaymentProvisioningFlowControllerPreconditionsStepContext)initWithRequestContext:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPKPaymentProvisioningFlowControllerPreconditionsStepContext

- (NPKPaymentProvisioningFlowControllerPreconditionsStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerPreconditionsStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  v5 = [v3 stringWithFormat:@"<%@ preconditionsState %ld>", v4, -[NPKPaymentProvisioningFlowControllerPreconditionsStepContext preconditionsState](self, "preconditionsState")];

  return v5;
}

- (NPKPaymentProvisioningFlowControllerPreconditionsStepContext)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NPKPaymentProvisioningFlowControllerPreconditionsStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_preconditionsState = [v4 decodeIntegerForKey:@"preconditionsState"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerPreconditionsStepContext;
  v4 = a3;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_preconditionsState forKey:{@"preconditionsState", v5.receiver, v5.super_class}];
}

@end