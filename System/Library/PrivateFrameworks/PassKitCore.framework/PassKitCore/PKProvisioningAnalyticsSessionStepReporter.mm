@interface PKProvisioningAnalyticsSessionStepReporter
- (void)_reportProvisioningStep:(id)step finishedWithStatus:(BOOL)status error:(id)error context:(id)context;
- (void)reportProvisioningCompleteWithSuccess:(BOOL)success;
- (void)reportProvisioningStepStart:(id)start;
- (void)reportProvisioningStepStart:(id)start context:(id)context;
- (void)setProvisionedPass:(id)pass;
@end

@implementation PKProvisioningAnalyticsSessionStepReporter

- (void)reportProvisioningStepStart:(id)start
{
  startCopy = start;
  responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [responder reportProvisioningStepStartForReporter:self step:startCopy context:0];
}

- (void)reportProvisioningStepStart:(id)start context:(id)context
{
  contextCopy = context;
  startCopy = start;
  responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [responder reportProvisioningStepStartForReporter:self step:startCopy context:contextCopy];
}

- (void)_reportProvisioningStep:(id)step finishedWithStatus:(BOOL)status error:(id)error context:(id)context
{
  statusCopy = status;
  contextCopy = context;
  errorCopy = error;
  stepCopy = step;
  responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [responder reportProvisioningStepForReporter:self step:stepCopy success:statusCopy error:errorCopy context:contextCopy];
}

- (void)reportProvisioningCompleteWithSuccess:(BOOL)success
{
  successCopy = success;
  responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [responder reportProvisioningCompleteForReporter:self success:successCopy];
}

- (void)setProvisionedPass:(id)pass
{
  passCopy = pass;
  responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [responder setPass:passCopy];
}

@end