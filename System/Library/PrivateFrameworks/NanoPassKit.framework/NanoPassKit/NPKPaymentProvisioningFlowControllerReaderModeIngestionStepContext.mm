@interface NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext
- (NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext)initWithCoder:(id)coder;
- (NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext)initWithRequestContext:(id)context;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext

- (NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  title = [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)self title];
  subtitle = [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)self subtitle];
  ingestionState = [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)self ingestionState];
  [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)self ingestionProgress];
  v9 = [v3 stringWithFormat:@"<%@ title %@ subtitle %@ ingestion state %ld ingestion progress %f>", _baseFlowStepDescription, title, subtitle, ingestionState, v8];

  return v9;
}

- (NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v5->_ingestionState = [coderCopy decodeIntegerForKey:@"ingestionState"];
    [coderCopy decodeDoubleForKey:@"ingestionProgress"];
    v5->_ingestionProgress = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext;
  coderCopy = coder;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_title forKey:{@"title", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeInteger:self->_ingestionState forKey:@"ingestionState"];
  [coderCopy encodeDouble:@"ingestionProgress" forKey:self->_ingestionProgress];
}

@end