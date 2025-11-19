@interface NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext
- (NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext)initWithCoder:(id)a3;
- (NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext)initWithRequestContext:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext

- (NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  v5 = [(NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext *)self title];
  v6 = [(NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext *)self subtitle];
  v7 = [(NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext *)self setupFields];
  v8 = [(NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext *)self product];
  v9 = [v3 stringWithFormat:@"<%@ title %@ subtitle %@ setup fields %@ product %@>", v4, v5, v6, v7, v8];

  return v9;
}

- (NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"setupFields"];
    setupFields = v5->_setupFields;
    v5->_setupFields = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"product"];
    product = v5->_product;
    v5->_product = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext;
  v4 = a3;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_title forKey:{@"title", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v4 encodeObject:self->_setupFields forKey:@"setupFields"];
  [v4 encodeObject:self->_product forKey:@"product"];
}

@end