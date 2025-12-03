@interface PKProvisioningAnalyticsSessionUIReporter
- (PKProvisioningAnalyticsSessionUIReporter)initWithResponder:(id)responder sessionID:(id)d pageTag:(id)tag;
- (void)reportButtonPressed:(unint64_t)pressed;
- (void)reportButtonPressed:(unint64_t)pressed context:(id)context;
- (void)reportOtherButtonPressed:(id)pressed;
- (void)reportOtherButtonPressed:(id)pressed context:(id)context;
- (void)reportPageCompleted:(BOOL)completed context:(id)context;
- (void)reportStateChangedWithContext:(id)context;
- (void)reportViewAppearedWithContext:(id)context;
- (void)setPass:(id)pass;
@end

@implementation PKProvisioningAnalyticsSessionUIReporter

- (PKProvisioningAnalyticsSessionUIReporter)initWithResponder:(id)responder sessionID:(id)d pageTag:(id)tag
{
  tagCopy = tag;
  v13.receiver = self;
  v13.super_class = PKProvisioningAnalyticsSessionUIReporter;
  v10 = [(PKProvisioningAnalyticsSessionReporter *)&v13 initWithResponder:responder sessionID:d];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_pageTag, tag);
  }

  return v11;
}

- (void)setPass:(id)pass
{
  passCopy = pass;
  responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [responder setPass:passCopy];
}

- (void)reportViewAppearedWithContext:(id)context
{
  contextCopy = context;
  responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [responder reportViewAppearedForReporter:self context:contextCopy];
}

- (void)reportPageCompleted:(BOOL)completed context:(id)context
{
  completedCopy = completed;
  contextCopy = context;
  responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [responder reportPageCompletedForReporter:self success:completedCopy context:contextCopy];
}

- (void)reportButtonPressed:(unint64_t)pressed
{
  responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [responder reportButtonPressedForReporter:self buttonTag:pressed context:0];
}

- (void)reportButtonPressed:(unint64_t)pressed context:(id)context
{
  contextCopy = context;
  responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [responder reportButtonPressedForReporter:self buttonTag:pressed context:contextCopy];
}

- (void)reportOtherButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [responder reportOtherButtonPressedForReporter:self otherButtonTag:pressedCopy context:0];
}

- (void)reportOtherButtonPressed:(id)pressed context:(id)context
{
  contextCopy = context;
  pressedCopy = pressed;
  responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [responder reportOtherButtonPressedForReporter:self otherButtonTag:pressedCopy context:contextCopy];
}

- (void)reportStateChangedWithContext:(id)context
{
  contextCopy = context;
  responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
  [responder reportStateChangedForReporter:self context:contextCopy];
}

@end