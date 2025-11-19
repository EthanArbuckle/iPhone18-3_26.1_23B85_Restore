@interface ENUIHostViewController
+ (id)requestRemoteViewControllerWithConnectionHandler:(id)a3;
- (ENUIHostViewControllerDelegate)delegate;
- (void)didFinishWithError:(id)a3;
- (void)setPresentationRequest:(id)a3;
- (void)show;
- (void)viewDidLoad;
@end

@implementation ENUIHostViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = ENUIHostViewController;
  [(ENUIHostViewController *)&v2 viewDidLoad];
}

- (void)setPresentationRequest:(id)a3
{
  v4 = a3;
  v5 = [(ENUIHostViewController *)self _remoteViewControllerProxy];
  [v5 setPresentationRequest:v4];
}

- (void)show
{
  v2 = [(ENUIHostViewController *)self _remoteViewControllerProxy];
  [v2 show];
}

- (void)didFinishWithError:(id)a3
{
  v4 = a3;
  v5 = [(ENUIHostViewController *)self delegate];
  [v5 hostViewControllerDidFinishWithError:v4];
}

+ (id)requestRemoteViewControllerWithConnectionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() requestViewController:@"ENUIRemotePresentationViewController" fromServiceWithBundleIdentifier:@"com.apple.PublicHealthRemoteUI" connectionHandler:v3];

  return v4;
}

- (ENUIHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end