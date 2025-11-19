@interface HKHealthPrivacyHostRecalibrateEstimatesViewController
+ (id)requestRemoteViewControllerWithConnectionHandler:(id)a3;
- (HKHealthPrivacyHostRecalibrateEstimatesControllerDelegate)delegate;
- (void)didFinishWithError:(id)a3;
- (void)setRequestRecord:(id)a3 completion:(id)a4;
@end

@implementation HKHealthPrivacyHostRecalibrateEstimatesViewController

- (void)setRequestRecord:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKHealthPrivacyHostRecalibrateEstimatesViewController *)self _healthPrivacyServiceViewControllerProxy];
  [v8 setRequestRecord:v7 completion:v6];
}

- (void)didFinishWithError:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthPrivacyHostRecalibrateEstimatesViewController *)self delegate];
  [v5 healthPrivacyHostRecalibrateEstimatesControllerDidFinishWithError:v4];
}

+ (id)requestRemoteViewControllerWithConnectionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() requestViewController:@"HKHealthPrivacyServiceRecalibrateEstimatesViewController" fromServiceWithBundleIdentifier:*MEMORY[0x1E696C888] connectionHandler:v3];

  return v4;
}

- (HKHealthPrivacyHostRecalibrateEstimatesControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end