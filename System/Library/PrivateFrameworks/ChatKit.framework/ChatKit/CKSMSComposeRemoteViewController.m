@interface CKSMSComposeRemoteViewController
+ (id)requestViewControllerWithConnectionHandler:(id)a3;
- (CKSMSComposeRemoteViewControllerDelegate)delegate;
- (void)dealloc;
- (void)smsComposeControllerAppeared;
- (void)smsComposeControllerCancelled;
- (void)smsComposeControllerDataInserted;
- (void)smsComposeControllerEntryViewContentInserted;
- (void)smsComposeControllerSendStartedWithText:(id)a3 messageGUID:(id)a4;
- (void)smsComposeControllerShouldSendMessageWithText:(id)a3 toRecipients:(id)a4 completion:(id)a5;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation CKSMSComposeRemoteViewController

- (void)dealloc
{
  [(CKSMSComposeRemoteViewController *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = CKSMSComposeRemoteViewController;
  [(CKSMSComposeRemoteViewController *)&v3 dealloc];
}

+ (id)requestViewControllerWithConnectionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() requestViewController:@"CKSMSComposeViewServiceController" fromServiceWithBundleIdentifier:@"com.apple.mobilesms.compose" connectionHandler:v3];

  return v4;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v6 = a3;
  v4 = [(CKSMSComposeRemoteViewController *)self delegate];

  if (v4)
  {
    v5 = [(CKSMSComposeRemoteViewController *)self delegate];
    [v5 viewServiceDidTerminateWithError:v6];
  }
}

- (void)smsComposeControllerDataInserted
{
  v2 = [(CKSMSComposeRemoteViewController *)self delegate];
  [v2 smsComposeControllerDataInserted];
}

- (void)smsComposeControllerAppeared
{
  v2 = [(CKSMSComposeRemoteViewController *)self delegate];
  [v2 smsComposeControllerAppeared];
}

- (void)smsComposeControllerShouldSendMessageWithText:(id)a3 toRecipients:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CKSMSComposeRemoteViewController *)self delegate];
  [v11 smsComposeControllerShouldSendMessageWithText:v10 toRecipients:v9 completion:v8];
}

- (void)smsComposeControllerSendStartedWithText:(id)a3 messageGUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKSMSComposeRemoteViewController *)self delegate];
  [v8 smsComposeControllerSendStartedWithText:v7 messageGUID:v6];
}

- (void)smsComposeControllerCancelled
{
  v2 = [(CKSMSComposeRemoteViewController *)self delegate];
  [v2 smsComposeControllerCancelled];
}

- (void)smsComposeControllerEntryViewContentInserted
{
  v2 = [(CKSMSComposeRemoteViewController *)self delegate];
  [v2 smsComposeControllerEntryViewContentInserted];
}

- (CKSMSComposeRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end