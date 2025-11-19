@interface DDRemoteActionHostViewController
- (DDRemoteActionHostViewControllerDelegate)delegate;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation DDRemoteActionHostViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  v5 = [(DDRemoteActionHostViewController *)self delegate];
  [v5 DDRemoteActionDidTerminateWithError:v4];
}

- (DDRemoteActionHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end