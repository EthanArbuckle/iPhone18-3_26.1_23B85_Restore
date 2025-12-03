@interface NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext
- (NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext)initWithCoder:(id)coder;
- (NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext)initWithRequestContext:(id)context;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext

- (NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  title = [(NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext *)self title];
  subtitle = [(NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext *)self subtitle];
  setupFields = [(NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext *)self setupFields];
  product = [(NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext *)self product];
  v9 = [v3 stringWithFormat:@"<%@ title %@ subtitle %@ setup fields %@ product %@>", _baseFlowStepDescription, title, subtitle, setupFields, product];

  return v9;
}

- (NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"setupFields"];
    setupFields = v5->_setupFields;
    v5->_setupFields = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"product"];
    product = v5->_product;
    v5->_product = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext;
  coderCopy = coder;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_title forKey:{@"title", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_setupFields forKey:@"setupFields"];
  [coderCopy encodeObject:self->_product forKey:@"product"];
}

@end