@interface VNDocumentCameraViewController_ViewService
- (DCDocumentCameraRemoteViewController)remoteViewController;
- (DCDocumentCameraViewServiceViewController)viewServiceViewController;
- (VNDocumentCameraViewController_ViewService)init;
- (id)castedChildViewController;
- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation;
- (void)dealloc;
- (void)didCancel;
- (void)didFailWithError:(id)error;
- (void)didFinishWithDocumentInfoCollection:(id)collection;
- (void)dismiss;
- (void)removeSaveActionBlockerForFiles;
- (void)viewDidLoad;
@end

@implementation VNDocumentCameraViewController_ViewService

- (VNDocumentCameraViewController_ViewService)init
{
  v5.receiver = self;
  v5.super_class = VNDocumentCameraViewController_ViewService;
  v2 = [(VNDocumentCameraViewController *)&v5 initWithChildViewController:0];
  v3 = v2;
  if (v2)
  {
    [(VNDocumentCameraViewController_ViewService *)v2 setModalPresentationStyle:0];
  }

  return v3;
}

- (void)dealloc
{
  accelerometer = [(VNDocumentCameraViewController_ViewService *)self accelerometer];
  [accelerometer setOrientationEventsEnabled:0];

  accelerometer2 = [(VNDocumentCameraViewController_ViewService *)self accelerometer];
  [accelerometer2 setPassiveOrientationEvents:1];

  accelerometer3 = [(VNDocumentCameraViewController_ViewService *)self accelerometer];
  [accelerometer3 setDelegate:0];

  v6.receiver = self;
  v6.super_class = VNDocumentCameraViewController_ViewService;
  [(VNDocumentCameraViewController_ViewService *)&v6 dealloc];
}

- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation
{
  viewServiceViewController = [(VNDocumentCameraViewController_ViewService *)self viewServiceViewController];
  [viewServiceViewController setOrientation:orientation animated:1];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = VNDocumentCameraViewController_ViewService;
  [(VNDocumentCameraViewController_ViewService *)&v15 viewDidLoad];
  v14 = 0;
  v3 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.DocumentCamera.ViewService" error:&v14];
  v4 = v14;
  if (v3)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__2;
    v12 = __Block_byref_object_dispose__2;
    v13 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__VNDocumentCameraViewController_ViewService_viewDidLoad__block_invoke;
    v7[3] = &unk_278F93688;
    v7[4] = self;
    v7[5] = &v8;
    v5 = [MEMORY[0x277D761B8] instantiateWithExtension:v3 completion:v7];
    v6 = v9[5];
    v9[5] = v5;

    [v9[5] delayDisplayOfRemoteController];
    [(VNDocumentCameraViewController *)self setChildViewController:v9[5]];
    _Block_object_dispose(&v8, 8);
  }
}

- (id)castedChildViewController
{
  childViewController = [(VNDocumentCameraViewController *)self childViewController];
  v3 = objc_opt_class();
  v9 = DCClassAndProtocolCast(childViewController, v3, 1, v4, v5, v6, v7, v8, &unk_285CA5358);

  return v9;
}

- (DCDocumentCameraViewServiceViewController)viewServiceViewController
{
  remoteViewController = [(VNDocumentCameraViewController_ViewService *)self remoteViewController];
  viewServiceViewController = [remoteViewController viewServiceViewController];

  return viewServiceViewController;
}

- (DCDocumentCameraRemoteViewController)remoteViewController
{
  castedChildViewController = [(VNDocumentCameraViewController_ViewService *)self castedChildViewController];
  remoteViewController = [castedChildViewController remoteViewController];

  return remoteViewController;
}

- (void)dismiss
{
  presentingViewController = [(VNDocumentCameraViewController_ViewService *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  remoteViewController = [(VNDocumentCameraViewController_ViewService *)self remoteViewController];
  [remoteViewController viewControllerWasDismissed];
}

- (void)didCancel
{
  delegate = [(VNDocumentCameraViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  delegate2 = [(VNDocumentCameraViewController *)self delegate];
  v8 = delegate2;
  if (v4)
  {
    [delegate2 documentCameraViewControllerDidCancel:self];
  }

  else
  {
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5DC0] code:-11800 userInfo:0];
    delegate3 = [(VNDocumentCameraViewController *)self delegate];
    [delegate3 documentCameraViewController:self didFailWithError:v8];
  }
}

- (void)didFinishWithDocumentInfoCollection:(id)collection
{
  collectionCopy = collection;
  delegate = [(VNDocumentCameraViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [VNDocumentCameraScan alloc];
    viewServiceSession = [(VNDocumentCameraViewController_ViewService *)self viewServiceSession];
    docCamImageCache = [viewServiceSession docCamImageCache];
    v9 = [(VNDocumentCameraScan *)v6 initWithDocInfoCollection:collectionCopy imageCache:docCamImageCache];

    delegate2 = [(VNDocumentCameraViewController *)self delegate];
    [delegate2 documentCameraViewController:self didFinishWithScan:v9];
  }
}

- (void)didFailWithError:(id)error
{
  errorCopy = error;
  delegate = [(VNDocumentCameraViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VNDocumentCameraViewController *)self delegate];
    [delegate2 documentCameraViewController:self didFailWithError:errorCopy];
  }
}

- (void)removeSaveActionBlockerForFiles
{
  viewServiceViewController = [(VNDocumentCameraViewController_ViewService *)self viewServiceViewController];
  [viewServiceViewController removeSaveActionBlockerForFiles];
}

@end