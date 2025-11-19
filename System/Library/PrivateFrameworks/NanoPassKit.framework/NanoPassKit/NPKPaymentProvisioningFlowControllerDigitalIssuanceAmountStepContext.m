@interface NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext
- (NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext)initWithCoder:(id)a3;
- (NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext)initWithRequestContext:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext

- (NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  v5 = [(NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext *)self allowsReaderModeEntry];
  v6 = [(NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext *)self product];
  v7 = [v3 stringWithFormat:@"<%@ allows reader mode entry %d product %@>", v4, v5, v6];

  return v7;
}

- (NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_allowsReaderModeEntry = [v4 decodeBoolForKey:@"allowsReaderModeEntry"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"product"];
    product = v5->_product;
    v5->_product = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext;
  v4 = a3;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_allowsReaderModeEntry forKey:{@"allowsReaderModeEntry", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_product forKey:@"product"];
}

@end