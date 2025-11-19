@interface HKHealthPrivacyHostObjectPickerViewController
+ (id)requestRemoteViewControllerWithConnectionHandler:(id)a3;
- (HKHealthPrivacyHostObjectPickerViewControllerDelegate)delegate;
- (void)didFinishWithError:(id)a3;
- (void)setPromptSession:(id)a3 presentationRequests:(id)a4;
@end

@implementation HKHealthPrivacyHostObjectPickerViewController

- (void)setPromptSession:(id)a3 presentationRequests:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKHealthPrivacyHostObjectPickerViewController *)self _healthPrivacyServiceViewControllerProxy];
  [v8 setPromptSession:v7 presentationRequests:v6];
}

- (void)didFinishWithError:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthPrivacyHostObjectPickerViewController *)self delegate];
  [v5 healthPrivacyHostObjectPickerViewController:self didFinishWithError:v4];
}

+ (id)requestRemoteViewControllerWithConnectionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() requestViewController:@"HKHealthPrivacyServiceObjectPickerViewController" fromServiceWithBundleIdentifier:*MEMORY[0x1E696C888] connectionHandler:v3];

  return v4;
}

- (HKHealthPrivacyHostObjectPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end