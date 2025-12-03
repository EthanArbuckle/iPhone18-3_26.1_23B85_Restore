@interface NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext
- (NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext)initWithCoder:(id)coder;
- (NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext)initWithRequestContext:(id)context;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext

- (NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  allowsReaderModeEntry = [(NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext *)self allowsReaderModeEntry];
  product = [(NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext *)self product];
  v7 = [v3 stringWithFormat:@"<%@ allows reader mode entry %d product %@>", _baseFlowStepDescription, allowsReaderModeEntry, product];

  return v7;
}

- (NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_allowsReaderModeEntry = [coderCopy decodeBoolForKey:@"allowsReaderModeEntry"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"product"];
    product = v5->_product;
    v5->_product = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext;
  coderCopy = coder;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_allowsReaderModeEntry forKey:{@"allowsReaderModeEntry", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_product forKey:@"product"];
}

@end