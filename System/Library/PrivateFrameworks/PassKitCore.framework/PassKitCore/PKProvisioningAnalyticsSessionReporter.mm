@interface PKProvisioningAnalyticsSessionReporter
- (PKProvisioningAnalyticsSessionReporter)initWithResponder:(id)responder sessionID:(id)d;
- (PKProvisioningAnalyticsSessionReportingResponder)responder;
- (void)reportError:(id)error context:(id)context;
- (void)reportEvent:(id)event;
- (void)reportOtherError:(id)error context:(id)context;
- (void)resetProductTypes;
- (void)setProductType:(id)type subtype:(id)subtype;
- (void)setSetupProduct:(id)product;
@end

@implementation PKProvisioningAnalyticsSessionReporter

- (PKProvisioningAnalyticsSessionReporter)initWithResponder:(id)responder sessionID:(id)d
{
  responderCopy = responder;
  v10.receiver = self;
  v10.super_class = PKProvisioningAnalyticsSessionReporter;
  v7 = [(PKProvisioningAnalyticsSessionReporter *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_responder, responderCopy);
    v8->_sessionID = d;
  }

  return v8;
}

- (void)reportEvent:(id)event
{
  eventCopy = event;
  responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [responder reportRawEventForReporter:self event:eventCopy];
}

- (void)reportError:(id)error context:(id)context
{
  contextCopy = context;
  errorCopy = error;
  responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [responder reportErrorForReporter:self error:errorCopy context:contextCopy];
}

- (void)reportOtherError:(id)error context:(id)context
{
  contextCopy = context;
  errorCopy = error;
  responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [responder reportOtherErrorForReporter:self error:errorCopy context:contextCopy];
}

- (void)setProductType:(id)type subtype:(id)subtype
{
  subtypeCopy = subtype;
  typeCopy = type;
  WeakRetained = objc_loadWeakRetained(&self->_responder);
  [WeakRetained setProductType:typeCopy subtype:subtypeCopy];
}

- (void)resetProductTypes
{
  WeakRetained = objc_loadWeakRetained(&self->_responder);
  [WeakRetained resetProductTypes];
}

- (void)setSetupProduct:(id)product
{
  productCopy = product;
  WeakRetained = objc_loadWeakRetained(&self->_responder);
  [WeakRetained setSetupProduct:productCopy];
}

- (PKProvisioningAnalyticsSessionReportingResponder)responder
{
  WeakRetained = objc_loadWeakRetained(&self->_responder);

  return WeakRetained;
}

@end