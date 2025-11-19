@interface HKHealthPrivacyHostAuthorizationViewController
+ (id)requestRemoteViewControllerWithConnectionHandler:(id)a3;
- (HKHealthPrivacyHostAuthorizationControllerDelegate)delegate;
- (void)didFinishWithError:(id)a3;
- (void)setRequestRecord:(id)a3 presentationRequests:(id)a4;
- (void)show;
@end

@implementation HKHealthPrivacyHostAuthorizationViewController

- (void)setRequestRecord:(id)a3 presentationRequests:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKHealthPrivacyHostAuthorizationViewController *)self _healthPrivacyServiceViewControllerProxy];
  [v8 setRequestRecord:v7 presentationRequests:v6];
}

- (void)show
{
  v2 = [(HKHealthPrivacyHostAuthorizationViewController *)self _healthPrivacyServiceViewControllerProxy];
  [v2 show];
}

- (void)didFinishWithError:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthPrivacyHostAuthorizationViewController *)self delegate];
  [v5 healthPrivacyHostAuthorizationControllerDidFinishWithError:v4];
}

+ (id)requestRemoteViewControllerWithConnectionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() requestViewController:@"HKHealthPrivacyServiceAuthorizationViewController" fromServiceWithBundleIdentifier:*MEMORY[0x1E696C888] connectionHandler:v3];

  return v4;
}

- (HKHealthPrivacyHostAuthorizationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end