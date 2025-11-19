@interface DCDocumentCameraViewServiceViewController
- (DCDocumentCameraViewServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismiss;
- (void)documentCameraController:(id)a3 didFinishWithDocInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6;
- (void)documentCameraController:(id)a3 didFinishWithImage:(id)a4;
- (void)documentCameraControllerDidCancel:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)prepareForDisplayWithCompletion:(id)a3;
- (void)remoteDocumentCameraController:(id)a3 didFailWithError:(id)a4;
- (void)remoteDocumentCameraController:(id)a3 didFinishWithInfoCollection:(id)a4;
- (void)remoteDocumentCameraControllerDidCancel:(id)a3;
- (void)removeSaveActionBlockerForFiles;
- (void)setChildViewController:(id)a3;
- (void)startSessionWithClientContext:(id)a3 completion:(id)a4;
- (void)viewControllerWasDismissed;
@end

@implementation DCDocumentCameraViewServiceViewController

- (DCDocumentCameraViewServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = DCDocumentCameraViewServiceViewController;
  v4 = [(DCDocumentCameraViewServiceViewController *)&v7 initWithNibName:a3 bundle:a4];
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

- (void)startSessionWithClientContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[DCDocumentCameraViewServiceSession alloc] initWithSessionRequest:v7];

  [(DCDocumentCameraViewServiceViewController *)self setSession:v8];
  v9 = [(DCDocumentCameraViewServiceViewController *)self session];
  v6[2](v6, v9);
}

- (void)setChildViewController:(id)a3
{
  objc_storeStrong(&self->_childViewController, a3);
  v33 = a3;
  [(UIViewController *)self->_childViewController beginAppearanceTransition:1 animated:0];
  [(DCDocumentCameraViewServiceViewController *)self addChildViewController:self->_childViewController];
  v5 = [(UIViewController *)self->_childViewController view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(DCDocumentCameraViewServiceViewController *)self view];
  v7 = [(UIViewController *)self->_childViewController view];
  [v6 addSubview:v7];

  v32 = [(DCDocumentCameraViewServiceViewController *)self childViewController];
  v31 = [v32 view];
  v29 = [v31 leadingAnchor];
  v30 = [(DCDocumentCameraViewServiceViewController *)self view];
  v28 = [v30 leadingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v34[0] = v27;
  v26 = [(DCDocumentCameraViewServiceViewController *)self childViewController];
  v25 = [v26 view];
  v23 = [v25 trailingAnchor];
  v24 = [(DCDocumentCameraViewServiceViewController *)self view];
  v22 = [v24 trailingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v34[1] = v21;
  v20 = [(DCDocumentCameraViewServiceViewController *)self childViewController];
  v19 = [v20 view];
  v17 = [v19 topAnchor];
  v18 = [(DCDocumentCameraViewServiceViewController *)self view];
  v8 = [v18 topAnchor];
  v9 = [v17 constraintEqualToAnchor:v8];
  v34[2] = v9;
  v10 = [(DCDocumentCameraViewServiceViewController *)self childViewController];
  v11 = [v10 view];
  v12 = [v11 bottomAnchor];
  v13 = [(DCDocumentCameraViewServiceViewController *)self view];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v34[3] = v15;
  v16 = [NSArray arrayWithObjects:v34 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  [(UIViewController *)self->_childViewController didMoveToParentViewController:self];
  [(UIViewController *)self->_childViewController endAppearanceTransition];
}

- (void)dismiss
{
  v2 = [(DCDocumentCameraViewServiceViewController *)self remoteViewController];
  [v2 dismiss];
}

- (void)documentCameraController:(id)a3 didFinishWithDocInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6
{
  v7 = a4;
  v8 = [(DCDocumentCameraViewServiceViewController *)self remoteViewController];
  [v8 didFinishWithDocumentInfoCollection:v7];

  [(DCDocumentCameraViewServiceViewController *)self dismiss];
}

- (void)documentCameraController:(id)a3 didFinishWithImage:(id)a4
{
  v5 = [(DCDocumentCameraViewServiceViewController *)self remoteViewController:a3];
  [v5 didCancel];

  [(DCDocumentCameraViewServiceViewController *)self dismiss];
}

- (void)documentCameraControllerDidCancel:(id)a3
{
  v7 = a3;
  if ([v7 setupResult])
  {
    if ([v7 setupResult] == 1)
    {
      v4 = -11852;
    }

    else
    {
      v4 = -11800;
    }

    v5 = [NSError errorWithDomain:AVFoundationErrorDomain code:v4 userInfo:0];
    v6 = [(DCDocumentCameraViewServiceViewController *)self remoteViewController];
    [v6 didFailWithError:v5];
  }

  else
  {
    v5 = [(DCDocumentCameraViewServiceViewController *)self remoteViewController];
    [v5 didCancel];
  }

  [(DCDocumentCameraViewServiceViewController *)self dismiss];
}

- (void)remoteDocumentCameraControllerDidCancel:(id)a3
{
  v4 = [(DCDocumentCameraViewServiceViewController *)self remoteViewController];
  [v4 didCancel];

  [(DCDocumentCameraViewServiceViewController *)self dismiss];
}

- (void)remoteDocumentCameraController:(id)a3 didFinishWithInfoCollection:(id)a4
{
  v5 = a4;
  v6 = [(DCDocumentCameraViewServiceViewController *)self remoteViewController];
  [v6 didFinishWithDocumentInfoCollection:v5];

  [(DCDocumentCameraViewServiceViewController *)self dismiss];
}

- (void)remoteDocumentCameraController:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = [(DCDocumentCameraViewServiceViewController *)self remoteViewController];
  [v6 didFailWithError:v5];

  [(DCDocumentCameraViewServiceViewController *)self dismiss];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v10.receiver = self;
  v10.super_class = DCDocumentCameraViewServiceViewController;
  v4 = a3;
  [(DCDocumentCameraViewServiceViewController *)&v10 preferredContentSizeDidChangeForChildContentContainer:v4];
  v5 = [(DCDocumentCameraViewServiceViewController *)self remoteViewController:v10.receiver];
  [v4 preferredContentSize];
  v7 = v6;
  v9 = v8;

  [v5 viewServicePreferredSizeDidChange:{v7, v9}];
}

- (void)prepareForDisplayWithCompletion:(id)a3
{
  v16 = a3;
  v4 = [(DCDocumentCameraViewServiceViewController *)self view];
  v5 = [v4 window];
  [v5 frame];
  [(DCDocumentCameraViewServiceViewController *)self setPreferredContentSize:v6, v7];

  if (DCDebugInterfaceEnabled())
  {
    v8 = [ICRemoteDocCamViewController alloc];
    v9 = [(DCDocumentCameraViewServiceViewController *)self session];
    v10 = [v9 docCamImageCache];
    v11 = [v8 initWithImageCache:v10];

    [v11 setDelegate:self];
    [(DCDocumentCameraViewServiceViewController *)self setChildViewController:v11];
  }

  else
  {
    v12 = [ICDocCamViewController alloc];
    v13 = [(DCDocumentCameraViewServiceViewController *)self session];
    v14 = [v13 docCamImageCache];
    v11 = [v12 initWithImageCache:v14];

    [v11 setDelegate:self];
    [(DCDocumentCameraViewServiceViewController *)self setDocCamViewController:v11];
    v15 = [[UINavigationController alloc] initWithRootViewController:v11];
    [v15 setNavigationBarHidden:1 animated:0];
    [(DCDocumentCameraViewServiceViewController *)self setChildViewController:v15];
  }

  [(DCDocumentCameraViewServiceViewController *)self preferredContentSize];
  v16[2]();
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

  v4 = [(DCDocumentCameraViewServiceViewController *)self docCamViewController];
  [v4 removeSaveActionBlockerForFiles];
}

@end