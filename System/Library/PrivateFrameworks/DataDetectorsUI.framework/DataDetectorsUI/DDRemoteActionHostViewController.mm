@interface DDRemoteActionHostViewController
- (DDRemoteActionHostViewControllerDelegate)delegate;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation DDRemoteActionHostViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  delegate = [(DDRemoteActionHostViewController *)self delegate];
  [delegate DDRemoteActionDidTerminateWithError:errorCopy];
}

- (DDRemoteActionHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end