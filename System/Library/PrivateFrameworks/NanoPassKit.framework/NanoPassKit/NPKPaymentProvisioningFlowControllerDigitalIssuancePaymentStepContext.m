@interface NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext
- (NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext)initWithCoder:(id)a3;
- (NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext)initWithRequestContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext

- (NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

- (NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"product"];
    product = v5->_product;
    v5->_product = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext;
  v4 = a3;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_product forKey:{@"product", v5.receiver, v5.super_class}];
}

@end