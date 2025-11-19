@interface VNDocumentCameraViewController_ViewService
- (DCDocumentCameraRemoteViewController)remoteViewController;
- (DCDocumentCameraViewServiceViewController)viewServiceViewController;
- (VNDocumentCameraViewController_ViewService)init;
- (id)castedChildViewController;
- (void)accelerometer:(id)a3 didChangeDeviceOrientation:(int64_t)a4;
- (void)dealloc;
- (void)didCancel;
- (void)didFailWithError:(id)a3;
- (void)didFinishWithDocumentInfoCollection:(id)a3;
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
  v3 = [(VNDocumentCameraViewController_ViewService *)self accelerometer];
  [v3 setOrientationEventsEnabled:0];

  v4 = [(VNDocumentCameraViewController_ViewService *)self accelerometer];
  [v4 setPassiveOrientationEvents:1];

  v5 = [(VNDocumentCameraViewController_ViewService *)self accelerometer];
  [v5 setDelegate:0];

  v6.receiver = self;
  v6.super_class = VNDocumentCameraViewController_ViewService;
  [(VNDocumentCameraViewController_ViewService *)&v6 dealloc];
}

- (void)accelerometer:(id)a3 didChangeDeviceOrientation:(int64_t)a4
{
  v5 = [(VNDocumentCameraViewController_ViewService *)self viewServiceViewController];
  [v5 setOrientation:a4 animated:1];
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
  v2 = [(VNDocumentCameraViewController *)self childViewController];
  v3 = objc_opt_class();
  v9 = DCClassAndProtocolCast(v2, v3, 1, v4, v5, v6, v7, v8, &unk_285CA5358);

  return v9;
}

- (DCDocumentCameraViewServiceViewController)viewServiceViewController
{
  v2 = [(VNDocumentCameraViewController_ViewService *)self remoteViewController];
  v3 = [v2 viewServiceViewController];

  return v3;
}

- (DCDocumentCameraRemoteViewController)remoteViewController
{
  v2 = [(VNDocumentCameraViewController_ViewService *)self castedChildViewController];
  v3 = [v2 remoteViewController];

  return v3;
}

- (void)dismiss
{
  v3 = [(VNDocumentCameraViewController_ViewService *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];

  v4 = [(VNDocumentCameraViewController_ViewService *)self remoteViewController];
  [v4 viewControllerWasDismissed];
}

- (void)didCancel
{
  v3 = [(VNDocumentCameraViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  v5 = [(VNDocumentCameraViewController *)self delegate];
  v8 = v5;
  if (v4)
  {
    [v5 documentCameraViewControllerDidCancel:self];
  }

  else
  {
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5DC0] code:-11800 userInfo:0];
    v7 = [(VNDocumentCameraViewController *)self delegate];
    [v7 documentCameraViewController:self didFailWithError:v8];
  }
}

- (void)didFinishWithDocumentInfoCollection:(id)a3
{
  v11 = a3;
  v4 = [(VNDocumentCameraViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [VNDocumentCameraScan alloc];
    v7 = [(VNDocumentCameraViewController_ViewService *)self viewServiceSession];
    v8 = [v7 docCamImageCache];
    v9 = [(VNDocumentCameraScan *)v6 initWithDocInfoCollection:v11 imageCache:v8];

    v10 = [(VNDocumentCameraViewController *)self delegate];
    [v10 documentCameraViewController:self didFinishWithScan:v9];
  }
}

- (void)didFailWithError:(id)a3
{
  v7 = a3;
  v4 = [(VNDocumentCameraViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VNDocumentCameraViewController *)self delegate];
    [v6 documentCameraViewController:self didFailWithError:v7];
  }
}

- (void)removeSaveActionBlockerForFiles
{
  v2 = [(VNDocumentCameraViewController_ViewService *)self viewServiceViewController];
  [v2 removeSaveActionBlockerForFiles];
}

@end