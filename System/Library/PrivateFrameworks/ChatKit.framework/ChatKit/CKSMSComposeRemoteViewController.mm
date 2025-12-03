@interface CKSMSComposeRemoteViewController
+ (id)requestViewControllerWithConnectionHandler:(id)handler;
- (CKSMSComposeRemoteViewControllerDelegate)delegate;
- (void)dealloc;
- (void)smsComposeControllerAppeared;
- (void)smsComposeControllerCancelled;
- (void)smsComposeControllerDataInserted;
- (void)smsComposeControllerEntryViewContentInserted;
- (void)smsComposeControllerSendStartedWithText:(id)text messageGUID:(id)d;
- (void)smsComposeControllerShouldSendMessageWithText:(id)text toRecipients:(id)recipients completion:(id)completion;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation CKSMSComposeRemoteViewController

- (void)dealloc
{
  [(CKSMSComposeRemoteViewController *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = CKSMSComposeRemoteViewController;
  [(CKSMSComposeRemoteViewController *)&v3 dealloc];
}

+ (id)requestViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [objc_opt_class() requestViewController:@"CKSMSComposeViewServiceController" fromServiceWithBundleIdentifier:@"com.apple.mobilesms.compose" connectionHandler:handlerCopy];

  return v4;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  delegate = [(CKSMSComposeRemoteViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(CKSMSComposeRemoteViewController *)self delegate];
    [delegate2 viewServiceDidTerminateWithError:errorCopy];
  }
}

- (void)smsComposeControllerDataInserted
{
  delegate = [(CKSMSComposeRemoteViewController *)self delegate];
  [delegate smsComposeControllerDataInserted];
}

- (void)smsComposeControllerAppeared
{
  delegate = [(CKSMSComposeRemoteViewController *)self delegate];
  [delegate smsComposeControllerAppeared];
}

- (void)smsComposeControllerShouldSendMessageWithText:(id)text toRecipients:(id)recipients completion:(id)completion
{
  completionCopy = completion;
  recipientsCopy = recipients;
  textCopy = text;
  delegate = [(CKSMSComposeRemoteViewController *)self delegate];
  [delegate smsComposeControllerShouldSendMessageWithText:textCopy toRecipients:recipientsCopy completion:completionCopy];
}

- (void)smsComposeControllerSendStartedWithText:(id)text messageGUID:(id)d
{
  dCopy = d;
  textCopy = text;
  delegate = [(CKSMSComposeRemoteViewController *)self delegate];
  [delegate smsComposeControllerSendStartedWithText:textCopy messageGUID:dCopy];
}

- (void)smsComposeControllerCancelled
{
  delegate = [(CKSMSComposeRemoteViewController *)self delegate];
  [delegate smsComposeControllerCancelled];
}

- (void)smsComposeControllerEntryViewContentInserted
{
  delegate = [(CKSMSComposeRemoteViewController *)self delegate];
  [delegate smsComposeControllerEntryViewContentInserted];
}

- (CKSMSComposeRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end