@interface PKProvisioningAnalyticsSessionStepReporter
- (void)_reportProvisioningStep:(id)a3 finishedWithStatus:(BOOL)a4 error:(id)a5 context:(id)a6;
- (void)reportProvisioningCompleteWithSuccess:(BOOL)a3;
- (void)reportProvisioningStepStart:(id)a3;
- (void)reportProvisioningStepStart:(id)a3 context:(id)a4;
- (void)setProvisionedPass:(id)a3;
@end

@implementation PKProvisioningAnalyticsSessionStepReporter

- (void)reportProvisioningStepStart:(id)a3
{
  v4 = a3;
  v5 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [v5 reportProvisioningStepStartForReporter:self step:v4 context:0];
}

- (void)reportProvisioningStepStart:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [v8 reportProvisioningStepStartForReporter:self step:v7 context:v6];
}

- (void)_reportProvisioningStep:(id)a3 finishedWithStatus:(BOOL)a4 error:(id)a5 context:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [v13 reportProvisioningStepForReporter:self step:v12 success:v7 error:v11 context:v10];
}

- (void)reportProvisioningCompleteWithSuccess:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [v5 reportProvisioningCompleteForReporter:self success:v3];
}

- (void)setProvisionedPass:(id)a3
{
  v4 = a3;
  v5 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [v5 setPass:v4];
}

@end