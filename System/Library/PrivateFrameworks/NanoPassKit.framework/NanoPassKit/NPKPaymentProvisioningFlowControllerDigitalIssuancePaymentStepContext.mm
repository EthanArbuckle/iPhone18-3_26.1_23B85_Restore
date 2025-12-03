@interface NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext
- (NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext)initWithCoder:(id)coder;
- (NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext)initWithRequestContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext

- (NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"product"];
    product = v5->_product;
    v5->_product = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext;
  coderCopy = coder;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_product forKey:{@"product", v5.receiver, v5.super_class}];
}

@end