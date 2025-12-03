@interface ENUIHostViewController
+ (id)requestRemoteViewControllerWithConnectionHandler:(id)handler;
- (ENUIHostViewControllerDelegate)delegate;
- (void)didFinishWithError:(id)error;
- (void)setPresentationRequest:(id)request;
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

- (void)setPresentationRequest:(id)request
{
  requestCopy = request;
  _remoteViewControllerProxy = [(ENUIHostViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setPresentationRequest:requestCopy];
}

- (void)show
{
  _remoteViewControllerProxy = [(ENUIHostViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy show];
}

- (void)didFinishWithError:(id)error
{
  errorCopy = error;
  delegate = [(ENUIHostViewController *)self delegate];
  [delegate hostViewControllerDidFinishWithError:errorCopy];
}

+ (id)requestRemoteViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [objc_opt_class() requestViewController:@"ENUIRemotePresentationViewController" fromServiceWithBundleIdentifier:@"com.apple.PublicHealthRemoteUI" connectionHandler:handlerCopy];

  return v4;
}

- (ENUIHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end