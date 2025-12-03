@interface SFAutoFillInternalFeedbackActivityNotificationViewController
- (SFAutoFillInternalFeedbackActivityNotificationViewController)initWithDiagnosticsData:(id)data;
- (SFAutoFillInternalFeedbackActivityNotificationViewControllerDelegate)delegate;
- (void)_handleThumbsDown:(id)down;
- (void)_handleThumbsUp:(id)up;
@end

@implementation SFAutoFillInternalFeedbackActivityNotificationViewController

- (SFAutoFillInternalFeedbackActivityNotificationViewController)initWithDiagnosticsData:(id)data
{
  dataCopy = data;
  v6 = _WBSLocalizedString();
  v7 = _WBSLocalizedString();
  v13.receiver = self;
  v13.super_class = SFAutoFillInternalFeedbackActivityNotificationViewController;
  v8 = [(SFActivityNotificationViewController *)&v13 initWithTitleText:v6 messageText:v7];

  if (v8)
  {
    objc_storeStrong(&v8->_diagnosticsData, data);
    v9 = createButton(@"hand.thumbsup", v8, sel__handleThumbsUp_);
    [(SFActivityNotificationViewController *)v8 setLeadingAccessoryView:v9];

    v10 = createButton(@"hand.thumbsdown", v8, sel__handleThumbsDown_);
    [(SFActivityNotificationViewController *)v8 setTrailingAccessoryView:v10];

    v11 = v8;
  }

  return v8;
}

- (void)_handleThumbsUp:(id)up
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained autoFillInternalFeedbackActivityNotice:self shouldPresentFeedbackForm:0];
}

- (void)_handleThumbsDown:(id)down
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained autoFillInternalFeedbackActivityNotice:self shouldPresentFeedbackForm:1];
}

- (SFAutoFillInternalFeedbackActivityNotificationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end