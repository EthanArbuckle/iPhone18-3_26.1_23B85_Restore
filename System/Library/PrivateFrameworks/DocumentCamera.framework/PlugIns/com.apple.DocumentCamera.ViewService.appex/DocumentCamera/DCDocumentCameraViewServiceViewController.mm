@interface DCDocumentCameraViewServiceViewController
- (DCDocumentCameraViewServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismiss;
- (void)documentCameraController:(id)controller didFinishWithDocInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user;
- (void)documentCameraController:(id)controller didFinishWithImage:(id)image;
- (void)documentCameraControllerDidCancel:(id)cancel;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)prepareForDisplayWithCompletion:(id)completion;
- (void)remoteDocumentCameraController:(id)controller didFailWithError:(id)error;
- (void)remoteDocumentCameraController:(id)controller didFinishWithInfoCollection:(id)collection;
- (void)remoteDocumentCameraControllerDidCancel:(id)cancel;
- (void)removeSaveActionBlockerForFiles;
- (void)setChildViewController:(id)controller;
- (void)startSessionWithClientContext:(id)context completion:(id)completion;
- (void)viewControllerWasDismissed;
@end

@implementation DCDocumentCameraViewServiceViewController

- (DCDocumentCameraViewServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = DCDocumentCameraViewServiceViewController;
  v4 = [(DCDocumentCameraViewServiceViewController *)&v7 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = os_log_create("com.apple.documentcamera", &unk_100002E4F);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000018A0(v5);
    }
  }

  return v4;
}

- (void)startSessionWithClientContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v8 = [[DCDocumentCameraViewServiceSession alloc] initWithSessionRequest:contextCopy];

  [(DCDocumentCameraViewServiceViewController *)self setSession:v8];
  session = [(DCDocumentCameraViewServiceViewController *)self session];
  completionCopy[2](completionCopy, session);
}

- (void)setChildViewController:(id)controller
{
  objc_storeStrong(&self->_childViewController, controller);
  controllerCopy = controller;
  [(UIViewController *)self->_childViewController beginAppearanceTransition:1 animated:0];
  [(DCDocumentCameraViewServiceViewController *)self addChildViewController:self->_childViewController];
  view = [(UIViewController *)self->_childViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(DCDocumentCameraViewServiceViewController *)self view];
  view3 = [(UIViewController *)self->_childViewController view];
  [view2 addSubview:view3];

  childViewController = [(DCDocumentCameraViewServiceViewController *)self childViewController];
  view4 = [childViewController view];
  leadingAnchor = [view4 leadingAnchor];
  view5 = [(DCDocumentCameraViewServiceViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v34[0] = v27;
  childViewController2 = [(DCDocumentCameraViewServiceViewController *)self childViewController];
  view6 = [childViewController2 view];
  trailingAnchor = [view6 trailingAnchor];
  view7 = [(DCDocumentCameraViewServiceViewController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v34[1] = v21;
  childViewController3 = [(DCDocumentCameraViewServiceViewController *)self childViewController];
  view8 = [childViewController3 view];
  topAnchor = [view8 topAnchor];
  view9 = [(DCDocumentCameraViewServiceViewController *)self view];
  topAnchor2 = [view9 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v34[2] = v9;
  childViewController4 = [(DCDocumentCameraViewServiceViewController *)self childViewController];
  view10 = [childViewController4 view];
  bottomAnchor = [view10 bottomAnchor];
  view11 = [(DCDocumentCameraViewServiceViewController *)self view];
  bottomAnchor2 = [view11 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v34[3] = v15;
  v16 = [NSArray arrayWithObjects:v34 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  [(UIViewController *)self->_childViewController didMoveToParentViewController:self];
  [(UIViewController *)self->_childViewController endAppearanceTransition];
}

- (void)dismiss
{
  remoteViewController = [(DCDocumentCameraViewServiceViewController *)self remoteViewController];
  [remoteViewController dismiss];
}

- (void)documentCameraController:(id)controller didFinishWithDocInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user
{
  collectionCopy = collection;
  remoteViewController = [(DCDocumentCameraViewServiceViewController *)self remoteViewController];
  [remoteViewController didFinishWithDocumentInfoCollection:collectionCopy];

  [(DCDocumentCameraViewServiceViewController *)self dismiss];
}

- (void)documentCameraController:(id)controller didFinishWithImage:(id)image
{
  v5 = [(DCDocumentCameraViewServiceViewController *)self remoteViewController:controller];
  [v5 didCancel];

  [(DCDocumentCameraViewServiceViewController *)self dismiss];
}

- (void)documentCameraControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  if ([cancelCopy setupResult])
  {
    if ([cancelCopy setupResult] == 1)
    {
      v4 = -11852;
    }

    else
    {
      v4 = -11800;
    }

    remoteViewController2 = [NSError errorWithDomain:AVFoundationErrorDomain code:v4 userInfo:0];
    remoteViewController = [(DCDocumentCameraViewServiceViewController *)self remoteViewController];
    [remoteViewController didFailWithError:remoteViewController2];
  }

  else
  {
    remoteViewController2 = [(DCDocumentCameraViewServiceViewController *)self remoteViewController];
    [remoteViewController2 didCancel];
  }

  [(DCDocumentCameraViewServiceViewController *)self dismiss];
}

- (void)remoteDocumentCameraControllerDidCancel:(id)cancel
{
  remoteViewController = [(DCDocumentCameraViewServiceViewController *)self remoteViewController];
  [remoteViewController didCancel];

  [(DCDocumentCameraViewServiceViewController *)self dismiss];
}

- (void)remoteDocumentCameraController:(id)controller didFinishWithInfoCollection:(id)collection
{
  collectionCopy = collection;
  remoteViewController = [(DCDocumentCameraViewServiceViewController *)self remoteViewController];
  [remoteViewController didFinishWithDocumentInfoCollection:collectionCopy];

  [(DCDocumentCameraViewServiceViewController *)self dismiss];
}

- (void)remoteDocumentCameraController:(id)controller didFailWithError:(id)error
{
  errorCopy = error;
  remoteViewController = [(DCDocumentCameraViewServiceViewController *)self remoteViewController];
  [remoteViewController didFailWithError:errorCopy];

  [(DCDocumentCameraViewServiceViewController *)self dismiss];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v10.receiver = self;
  v10.super_class = DCDocumentCameraViewServiceViewController;
  containerCopy = container;
  [(DCDocumentCameraViewServiceViewController *)&v10 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  v5 = [(DCDocumentCameraViewServiceViewController *)self remoteViewController:v10.receiver];
  [containerCopy preferredContentSize];
  v7 = v6;
  v9 = v8;

  [v5 viewServicePreferredSizeDidChange:{v7, v9}];
}

- (void)prepareForDisplayWithCompletion:(id)completion
{
  completionCopy = completion;
  view = [(DCDocumentCameraViewServiceViewController *)self view];
  window = [view window];
  [window frame];
  [(DCDocumentCameraViewServiceViewController *)self setPreferredContentSize:v6, v7];

  if (DCDebugInterfaceEnabled())
  {
    v8 = [ICRemoteDocCamViewController alloc];
    session = [(DCDocumentCameraViewServiceViewController *)self session];
    docCamImageCache = [session docCamImageCache];
    v11 = [v8 initWithImageCache:docCamImageCache];

    [v11 setDelegate:self];
    [(DCDocumentCameraViewServiceViewController *)self setChildViewController:v11];
  }

  else
  {
    v12 = [ICDocCamViewController alloc];
    session2 = [(DCDocumentCameraViewServiceViewController *)self session];
    docCamImageCache2 = [session2 docCamImageCache];
    v11 = [v12 initWithImageCache:docCamImageCache2];

    [v11 setDelegate:self];
    [(DCDocumentCameraViewServiceViewController *)self setDocCamViewController:v11];
    v15 = [[UINavigationController alloc] initWithRootViewController:v11];
    [v15 setNavigationBarHidden:1 animated:0];
    [(DCDocumentCameraViewServiceViewController *)self setChildViewController:v15];
  }

  [(DCDocumentCameraViewServiceViewController *)self preferredContentSize];
  completionCopy[2]();
}

- (void)viewControllerWasDismissed
{
  v3 = os_log_create("com.apple.documentcamera", &unk_100002E4F);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000018E4(self, v3);
  }

  [(DCDocumentCameraViewServiceViewController *)self setSession:0];
}

- (void)removeSaveActionBlockerForFiles
{
  v3 = os_log_create("com.apple.documentcamera", &unk_100002E4F);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000019A4(v3);
  }

  docCamViewController = [(DCDocumentCameraViewServiceViewController *)self docCamViewController];
  [docCamViewController removeSaveActionBlockerForFiles];
}

@end