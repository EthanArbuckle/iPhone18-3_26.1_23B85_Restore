@interface PKProvisioningAnalyticsSessionReporter
- (PKProvisioningAnalyticsSessionReporter)initWithResponder:(id)a3 sessionID:(id)a4;
- (PKProvisioningAnalyticsSessionReportingResponder)responder;
- (void)reportError:(id)a3 context:(id)a4;
- (void)reportEvent:(id)a3;
- (void)reportOtherError:(id)a3 context:(id)a4;
- (void)resetProductTypes;
- (void)setProductType:(id)a3 subtype:(id)a4;
- (void)setSetupProduct:(id)a3;
@end

@implementation PKProvisioningAnalyticsSessionReporter

- (PKProvisioningAnalyticsSessionReporter)initWithResponder:(id)a3 sessionID:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PKProvisioningAnalyticsSessionReporter;
  v7 = [(PKProvisioningAnalyticsSessionReporter *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_responder, v6);
    v8->_sessionID = a4;
  }

  return v8;
}

- (void)reportEvent:(id)a3
{
  v4 = a3;
  v5 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [v5 reportRawEventForReporter:self event:v4];
}

- (void)reportError:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [v8 reportErrorForReporter:self error:v7 context:v6];
}

- (void)reportOtherError:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [v8 reportOtherErrorForReporter:self error:v7 context:v6];
}

- (void)setProductType:(id)a3 subtype:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_responder);
  [WeakRetained setProductType:v7 subtype:v6];
}

- (void)resetProductTypes
{
  WeakRetained = objc_loadWeakRetained(&self->_responder);
  [WeakRetained resetProductTypes];
}

- (void)setSetupProduct:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_responder);
  [WeakRetained setSetupProduct:v4];
}

- (PKProvisioningAnalyticsSessionReportingResponder)responder
{
  WeakRetained = objc_loadWeakRetained(&self->_responder);

  return WeakRetained;
}

@end