@interface PKProvisioningAnalyticsSessionUIReporter
- (PKProvisioningAnalyticsSessionUIReporter)initWithResponder:(id)a3 sessionID:(id)a4 pageTag:(id)a5;
- (void)reportButtonPressed:(unint64_t)a3;
- (void)reportButtonPressed:(unint64_t)a3 context:(id)a4;
- (void)reportOtherButtonPressed:(id)a3;
- (void)reportOtherButtonPressed:(id)a3 context:(id)a4;
- (void)reportPageCompleted:(BOOL)a3 context:(id)a4;
- (void)reportStateChangedWithContext:(id)a3;
- (void)reportViewAppearedWithContext:(id)a3;
- (void)setPass:(id)a3;
@end

@implementation PKProvisioningAnalyticsSessionUIReporter

- (PKProvisioningAnalyticsSessionUIReporter)initWithResponder:(id)a3 sessionID:(id)a4 pageTag:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PKProvisioningAnalyticsSessionUIReporter;
  v10 = [(PKProvisioningAnalyticsSessionReporter *)&v13 initWithResponder:a3 sessionID:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_pageTag, a5);
  }

  return v11;
}

- (void)setPass:(id)a3
{
  v4 = a3;
  v5 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [v5 setPass:v4];
}

- (void)reportViewAppearedWithContext:(id)a3
{
  v4 = a3;
  v5 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [v5 reportViewAppearedForReporter:self context:v4];
}

- (void)reportPageCompleted:(BOOL)a3 context:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [v7 reportPageCompletedForReporter:self success:v4 context:v6];
}

- (void)reportButtonPressed:(unint64_t)a3
{
  v5 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [v5 reportButtonPressedForReporter:self buttonTag:a3 context:0];
}

- (void)reportButtonPressed:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [v7 reportButtonPressedForReporter:self buttonTag:a3 context:v6];
}

- (void)reportOtherButtonPressed:(id)a3
{
  v4 = a3;
  v5 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [v5 reportOtherButtonPressedForReporter:self otherButtonTag:v4 context:0];
}

- (void)reportOtherButtonPressed:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [v8 reportOtherButtonPressedForReporter:self otherButtonTag:v7 context:v6];
}

- (void)reportStateChangedWithContext:(id)a3
{
  v4 = a3;
  v5 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [v5 reportStateChangedForReporter:self context:v4];
}

@end