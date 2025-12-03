@interface NPKPaymentProvisioningFlowControllerPreconditionsStepContext
- (NPKPaymentProvisioningFlowControllerPreconditionsStepContext)initWithCoder:(id)coder;
- (NPKPaymentProvisioningFlowControllerPreconditionsStepContext)initWithRequestContext:(id)context;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKPaymentProvisioningFlowControllerPreconditionsStepContext

- (NPKPaymentProvisioningFlowControllerPreconditionsStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerPreconditionsStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  v5 = [v3 stringWithFormat:@"<%@ preconditionsState %ld>", _baseFlowStepDescription, -[NPKPaymentProvisioningFlowControllerPreconditionsStepContext preconditionsState](self, "preconditionsState")];

  return v5;
}

- (NPKPaymentProvisioningFlowControllerPreconditionsStepContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = NPKPaymentProvisioningFlowControllerPreconditionsStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_preconditionsState = [coderCopy decodeIntegerForKey:@"preconditionsState"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerPreconditionsStepContext;
  coderCopy = coder;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_preconditionsState forKey:{@"preconditionsState", v5.receiver, v5.super_class}];
}

@end