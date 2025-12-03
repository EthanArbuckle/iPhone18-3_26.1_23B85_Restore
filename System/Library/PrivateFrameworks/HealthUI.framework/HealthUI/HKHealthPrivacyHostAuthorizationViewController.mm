@interface HKHealthPrivacyHostAuthorizationViewController
+ (id)requestRemoteViewControllerWithConnectionHandler:(id)handler;
- (HKHealthPrivacyHostAuthorizationControllerDelegate)delegate;
- (void)didFinishWithError:(id)error;
- (void)setRequestRecord:(id)record presentationRequests:(id)requests;
- (void)show;
@end

@implementation HKHealthPrivacyHostAuthorizationViewController

- (void)setRequestRecord:(id)record presentationRequests:(id)requests
{
  requestsCopy = requests;
  recordCopy = record;
  _healthPrivacyServiceViewControllerProxy = [(HKHealthPrivacyHostAuthorizationViewController *)self _healthPrivacyServiceViewControllerProxy];
  [_healthPrivacyServiceViewControllerProxy setRequestRecord:recordCopy presentationRequests:requestsCopy];
}

- (void)show
{
  _healthPrivacyServiceViewControllerProxy = [(HKHealthPrivacyHostAuthorizationViewController *)self _healthPrivacyServiceViewControllerProxy];
  [_healthPrivacyServiceViewControllerProxy show];
}

- (void)didFinishWithError:(id)error
{
  errorCopy = error;
  delegate = [(HKHealthPrivacyHostAuthorizationViewController *)self delegate];
  [delegate healthPrivacyHostAuthorizationControllerDidFinishWithError:errorCopy];
}

+ (id)requestRemoteViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [objc_opt_class() requestViewController:@"HKHealthPrivacyServiceAuthorizationViewController" fromServiceWithBundleIdentifier:*MEMORY[0x1E696C888] connectionHandler:handlerCopy];

  return v4;
}

- (HKHealthPrivacyHostAuthorizationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end