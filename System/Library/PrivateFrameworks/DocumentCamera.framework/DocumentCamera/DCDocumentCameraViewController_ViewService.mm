@interface DCDocumentCameraViewController_ViewService
- (DCDocumentCameraRemoteViewController)remoteViewController;
- (DCDocumentCameraViewController_ViewService)initWithDelegate:(id)a3;
- (DCDocumentCameraViewServiceViewController)viewServiceViewController;
- (id)castedChildViewController;
- (void)accelerometer:(id)a3 didChangeDeviceOrientation:(int64_t)a4;
- (void)dealloc;
- (void)didCancel;
- (void)didFailWithError:(id)a3;
- (void)didFinishWithDocumentInfoCollection:(id)a3;
- (void)dismiss;
- (void)viewDidLoad;
@end

@implementation DCDocumentCameraViewController_ViewService

- (DCDocumentCameraViewController_ViewService)initWithDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = DCDocumentCameraViewController_ViewService;
  v3 = [(DCDocumentCameraViewController *)&v6 initWithDelegate:a3 childViewController:0];
  v4 = v3;
  if (v3)
  {
    [(DCDocumentCameraViewController_ViewService *)v3 setModalPresentationStyle:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(DCDocumentCameraViewController_ViewService *)self accelerometer];
  [v3 setOrientationEventsEnabled:0];

  v4 = [(DCDocumentCameraViewController_ViewService *)self accelerometer];
  [v4 setPassiveOrientationEvents:1];

  v5 = [(DCDocumentCameraViewController_ViewService *)self accelerometer];
  [v5 setDelegate:0];

  v6.receiver = self;
  v6.super_class = DCDocumentCameraViewController_ViewService;
  [(DCDocumentCameraViewController_ViewService *)&v6 dealloc];
}

- (void)accelerometer:(id)a3 didChangeDeviceOrientation:(int64_t)a4
{
  v5 = [(DCDocumentCameraViewController_ViewService *)self viewServiceViewController];
  [v5 setOrientation:a4 animated:1];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = DCDocumentCameraViewController_ViewService;
  [(DCDocumentCameraViewController_ViewService *)&v15 viewDidLoad];
  v14 = 0;
  v3 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.DocumentCamera.ViewService" error:&v14];
  v4 = v14;
  if (v3)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__7;
    v12 = __Block_byref_object_dispose__7;
    v13 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__DCDocumentCameraViewController_ViewService_viewDidLoad__block_invoke;
    v7[3] = &unk_278F93688;
    v7[4] = self;
    v7[5] = &v8;
    v5 = [MEMORY[0x277D761B8] instantiateWithExtension:v3 completion:v7];
    v6 = v9[5];
    v9[5] = v5;

    [v9[5] delayDisplayOfRemoteController];
    [(DCDocumentCameraViewController *)self setChildViewController:v9[5]];
    _Block_object_dispose(&v8, 8);
  }
}

- (id)castedChildViewController
{
  v2 = [(DCDocumentCameraViewController *)self childViewController];
  v3 = objc_opt_class();
  v9 = DCClassAndProtocolCast(v2, v3, 1, v4, v5, v6, v7, v8, &unk_285CA5358);

  return v9;
}

- (DCDocumentCameraViewServiceViewController)viewServiceViewController
{
  v2 = [(DCDocumentCameraViewController_ViewService *)self remoteViewController];
  v3 = [v2 viewServiceViewController];

  return v3;
}

- (DCDocumentCameraRemoteViewController)remoteViewController
{
  v2 = [(DCDocumentCameraViewController_ViewService *)self castedChildViewController];
  v3 = [v2 remoteViewController];

  return v3;
}

- (void)dismiss
{
  v3 = [(DCDocumentCameraViewController_ViewService *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];

  v4 = [(DCDocumentCameraViewController_ViewService *)self remoteViewController];
  [v4 viewControllerWasDismissed];
}

- (void)didCancel
{
  v3 = [(DCDocumentCameraViewController *)self docCamDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(DCDocumentCameraViewController *)self docCamDelegate];
    [v5 documentCameraViewControllerDidCancel:self];
  }
}

- (void)didFinishWithDocumentInfoCollection:(id)a3
{
  v11 = a3;
  v4 = [(DCDocumentCameraViewController *)self docCamDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [DCScannedDocument alloc];
    v7 = [(DCDocumentCameraViewController_ViewService *)self viewServiceSession];
    v8 = [v7 docCamImageCache];
    v9 = [(DCScannedDocument *)v6 initWithDocInfoCollection:v11 imageCache:v8];

    v10 = [(DCDocumentCameraViewController *)self docCamDelegate];
    [v10 documentCameraViewController:self didFinishWithDocument:v9];
  }
}

- (void)didFailWithError:(id)a3
{
  v4 = [(DCDocumentCameraViewController *)self docCamDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(DCDocumentCameraViewController *)self docCamDelegate];
    [v6 documentCameraViewControllerDidCancel:self];
  }
}

@end