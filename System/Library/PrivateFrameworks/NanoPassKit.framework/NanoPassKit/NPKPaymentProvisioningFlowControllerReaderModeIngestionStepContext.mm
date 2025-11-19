@interface NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext
- (NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext)initWithCoder:(id)a3;
- (NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext)initWithRequestContext:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext

- (NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  v5 = [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)self title];
  v6 = [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)self subtitle];
  v7 = [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)self ingestionState];
  [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)self ingestionProgress];
  v9 = [v3 stringWithFormat:@"<%@ title %@ subtitle %@ ingestion state %ld ingestion progress %f>", v4, v5, v6, v7, v8];

  return v9;
}

- (NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v5->_ingestionState = [v4 decodeIntegerForKey:@"ingestionState"];
    [v4 decodeDoubleForKey:@"ingestionProgress"];
    v5->_ingestionProgress = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext;
  v4 = a3;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_title forKey:{@"title", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v4 encodeInteger:self->_ingestionState forKey:@"ingestionState"];
  [v4 encodeDouble:@"ingestionProgress" forKey:self->_ingestionProgress];
}

@end