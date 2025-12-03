@interface DCDocumentCameraViewController_ViewService
- (DCDocumentCameraRemoteViewController)remoteViewController;
- (DCDocumentCameraViewController_ViewService)initWithDelegate:(id)delegate;
- (DCDocumentCameraViewServiceViewController)viewServiceViewController;
- (id)castedChildViewController;
- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation;
- (void)dealloc;
- (void)didCancel;
- (void)didFailWithError:(id)error;
- (void)didFinishWithDocumentInfoCollection:(id)collection;
- (void)dismiss;
- (void)viewDidLoad;
@end

@implementation DCDocumentCameraViewController_ViewService

- (DCDocumentCameraViewController_ViewService)initWithDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = DCDocumentCameraViewController_ViewService;
  v3 = [(DCDocumentCameraViewController *)&v6 initWithDelegate:delegate childViewController:0];
  v4 = v3;
  if (v3)
  {
    [(DCDocumentCameraViewController_ViewService *)v3 setModalPresentationStyle:0];
  }

  return v4;
}

- (void)dealloc
{
  accelerometer = [(DCDocumentCameraViewController_ViewService *)self accelerometer];
  [accelerometer setOrientationEventsEnabled:0];

  accelerometer2 = [(DCDocumentCameraViewController_ViewService *)self accelerometer];
  [accelerometer2 setPassiveOrientationEvents:1];

  accelerometer3 = [(DCDocumentCameraViewController_ViewService *)self accelerometer];
  [accelerometer3 setDelegate:0];

  v6.receiver = self;
  v6.super_class = DCDocumentCameraViewController_ViewService;
  [(DCDocumentCameraViewController_ViewService *)&v6 dealloc];
}

- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation
{
  viewServiceViewController = [(DCDocumentCameraViewController_ViewService *)self viewServiceViewController];
  [viewServiceViewController setOrientation:orientation animated:1];
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
  childViewController = [(DCDocumentCameraViewController *)self childViewController];
  v3 = objc_opt_class();
  v9 = DCClassAndProtocolCast(childViewController, v3, 1, v4, v5, v6, v7, v8, &unk_285CA5358);

  return v9;
}

- (DCDocumentCameraViewServiceViewController)viewServiceViewController
{
  remoteViewController = [(DCDocumentCameraViewController_ViewService *)self remoteViewController];
  viewServiceViewController = [remoteViewController viewServiceViewController];

  return viewServiceViewController;
}

- (DCDocumentCameraRemoteViewController)remoteViewController
{
  castedChildViewController = [(DCDocumentCameraViewController_ViewService *)self castedChildViewController];
  remoteViewController = [castedChildViewController remoteViewController];

  return remoteViewController;
}

- (void)dismiss
{
  presentingViewController = [(DCDocumentCameraViewController_ViewService *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  remoteViewController = [(DCDocumentCameraViewController_ViewService *)self remoteViewController];
  [remoteViewController viewControllerWasDismissed];
}

- (void)didCancel
{
  docCamDelegate = [(DCDocumentCameraViewController *)self docCamDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    docCamDelegate2 = [(DCDocumentCameraViewController *)self docCamDelegate];
    [docCamDelegate2 documentCameraViewControllerDidCancel:self];
  }
}

- (void)didFinishWithDocumentInfoCollection:(id)collection
{
  collectionCopy = collection;
  docCamDelegate = [(DCDocumentCameraViewController *)self docCamDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [DCScannedDocument alloc];
    viewServiceSession = [(DCDocumentCameraViewController_ViewService *)self viewServiceSession];
    docCamImageCache = [viewServiceSession docCamImageCache];
    v9 = [(DCScannedDocument *)v6 initWithDocInfoCollection:collectionCopy imageCache:docCamImageCache];

    docCamDelegate2 = [(DCDocumentCameraViewController *)self docCamDelegate];
    [docCamDelegate2 documentCameraViewController:self didFinishWithDocument:v9];
  }
}

- (void)didFailWithError:(id)error
{
  docCamDelegate = [(DCDocumentCameraViewController *)self docCamDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    docCamDelegate2 = [(DCDocumentCameraViewController *)self docCamDelegate];
    [docCamDelegate2 documentCameraViewControllerDidCancel:self];
  }
}

@end