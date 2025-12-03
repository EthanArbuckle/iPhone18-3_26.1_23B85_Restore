@interface HKHealthPrivacyHostRecalibrateEstimatesViewController
+ (id)requestRemoteViewControllerWithConnectionHandler:(id)handler;
- (HKHealthPrivacyHostRecalibrateEstimatesControllerDelegate)delegate;
- (void)didFinishWithError:(id)error;
- (void)setRequestRecord:(id)record completion:(id)completion;
@end

@implementation HKHealthPrivacyHostRecalibrateEstimatesViewController

- (void)setRequestRecord:(id)record completion:(id)completion
{
  completionCopy = completion;
  recordCopy = record;
  _healthPrivacyServiceViewControllerProxy = [(HKHealthPrivacyHostRecalibrateEstimatesViewController *)self _healthPrivacyServiceViewControllerProxy];
  [_healthPrivacyServiceViewControllerProxy setRequestRecord:recordCopy completion:completionCopy];
}

- (void)didFinishWithError:(id)error
{
  errorCopy = error;
  delegate = [(HKHealthPrivacyHostRecalibrateEstimatesViewController *)self delegate];
  [delegate healthPrivacyHostRecalibrateEstimatesControllerDidFinishWithError:errorCopy];
}

+ (id)requestRemoteViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [objc_opt_class() requestViewController:@"HKHealthPrivacyServiceRecalibrateEstimatesViewController" fromServiceWithBundleIdentifier:*MEMORY[0x1E696C888] connectionHandler:handlerCopy];

  return v4;
}

- (HKHealthPrivacyHostRecalibrateEstimatesControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end