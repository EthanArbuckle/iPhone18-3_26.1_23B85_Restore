@interface HKHealthPrivacyHostObjectPickerViewController
+ (id)requestRemoteViewControllerWithConnectionHandler:(id)handler;
- (HKHealthPrivacyHostObjectPickerViewControllerDelegate)delegate;
- (void)didFinishWithError:(id)error;
- (void)setPromptSession:(id)session presentationRequests:(id)requests;
@end

@implementation HKHealthPrivacyHostObjectPickerViewController

- (void)setPromptSession:(id)session presentationRequests:(id)requests
{
  requestsCopy = requests;
  sessionCopy = session;
  _healthPrivacyServiceViewControllerProxy = [(HKHealthPrivacyHostObjectPickerViewController *)self _healthPrivacyServiceViewControllerProxy];
  [_healthPrivacyServiceViewControllerProxy setPromptSession:sessionCopy presentationRequests:requestsCopy];
}

- (void)didFinishWithError:(id)error
{
  errorCopy = error;
  delegate = [(HKHealthPrivacyHostObjectPickerViewController *)self delegate];
  [delegate healthPrivacyHostObjectPickerViewController:self didFinishWithError:errorCopy];
}

+ (id)requestRemoteViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [objc_opt_class() requestViewController:@"HKHealthPrivacyServiceObjectPickerViewController" fromServiceWithBundleIdentifier:*MEMORY[0x1E696C888] connectionHandler:handlerCopy];

  return v4;
}

- (HKHealthPrivacyHostObjectPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end