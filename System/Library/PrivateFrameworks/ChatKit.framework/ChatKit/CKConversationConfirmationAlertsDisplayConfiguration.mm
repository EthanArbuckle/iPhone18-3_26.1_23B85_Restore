@interface CKConversationConfirmationAlertsDisplayConfiguration
- (CKConversationConfirmationAlertsDisplayConfiguration)init;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (UIView)sourceView;
- (UIViewController)presentationViewController;
- (id)sender;
@end

@implementation CKConversationConfirmationAlertsDisplayConfiguration

- (CKConversationConfirmationAlertsDisplayConfiguration)init
{
  v5.receiver = self;
  v5.super_class = CKConversationConfirmationAlertsDisplayConfiguration;
  v2 = [(CKConversationConfirmationAlertsDisplayConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CKConversationConfirmationAlertsDisplayConfiguration *)v2 applyPreferredAlertControllerStyle];
  }

  return v3;
}

- (UIViewController)presentationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationViewController);

  return WeakRetained;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (UIPopoverPresentationControllerSourceItem)sourceItem
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceItem);

  return WeakRetained;
}

- (id)sender
{
  WeakRetained = objc_loadWeakRetained(&self->_sender);

  return WeakRetained;
}

@end