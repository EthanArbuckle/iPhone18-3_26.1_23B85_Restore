@interface VNDocumentCameraViewController_InProcess
- (VNDocumentCameraViewController_InProcess)init;
- (void)_autoDismiss;
- (void)didReceiveMemoryWarning;
- (void)documentCameraController:(id)controller didFinishWithDocInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user;
- (void)documentCameraController:(id)controller didFinishWithImage:(id)image;
- (void)documentCameraControllerDidCancel:(id)cancel;
- (void)remoteDocumentCameraController:(id)controller didFailWithError:(id)error;
- (void)remoteDocumentCameraController:(id)controller didFinishWithInfoCollection:(id)collection;
- (void)remoteDocumentCameraControllerDidCancel:(id)cancel;
- (void)removeSaveActionBlockerForFiles;
@end

@implementation VNDocumentCameraViewController_InProcess

- (VNDocumentCameraViewController_InProcess)init
{
  v3 = [[ICDocCamImageCache alloc] initWithDataCryptorDelegate:0];
  if (DCDebugInterfaceEnabled())
  {
    v4 = [[ICRemoteDocCamViewController alloc] initWithImageCache:v3];
    v5 = objc_opt_class();
    v6 = DCDynamicCast(v5, v4);
    [v6 setDelegate:self];

    v7 = v4;
    v8 = v7;
  }

  else
  {
    v8 = [[ICDocCamViewController alloc] initWithImageCache:v3];
    v9 = objc_opt_class();
    v10 = DCDynamicCast(v9, v8);
    [v10 setDelegate:self];

    v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  }

  v11 = v7;
  v15.receiver = self;
  v15.super_class = VNDocumentCameraViewController_InProcess;
  v12 = [(VNDocumentCameraViewController *)&v15 initWithChildViewController:v7];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_viewController, v8);
    [(VNDocumentCameraViewController_InProcess *)v13 setModalPresentationStyle:0];
  }

  return v13;
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = VNDocumentCameraViewController_InProcess;
  [(VNDocumentCameraViewController_InProcess *)&v2 didReceiveMemoryWarning];
}

- (void)documentCameraController:(id)controller didFinishWithDocInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user
{
  collectionCopy = collection;
  cacheCopy = cache;
  delegate = [(VNDocumentCameraViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [[VNDocumentCameraScan alloc] initWithDocInfoCollection:collectionCopy imageCache:cacheCopy];
    delegate2 = [(VNDocumentCameraViewController *)self delegate];
    [delegate2 documentCameraViewController:self didFinishWithScan:v11];
  }

  else
  {
    [(VNDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)documentCameraController:(id)controller didFinishWithImage:(id)image
{
  v5 = [(VNDocumentCameraViewController *)self delegate:controller];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate = [(VNDocumentCameraViewController *)self delegate];
    [delegate documentCameraViewControllerDidCancel:self];
  }

  else
  {

    [(VNDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)documentCameraControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  if (![cancelCopy setupResult])
  {
    delegate = [(VNDocumentCameraViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(VNDocumentCameraViewController *)self delegate];
      [delegate2 documentCameraViewControllerDidCancel:self];
LABEL_10:

      goto LABEL_12;
    }
  }

  if ([cancelCopy setupResult])
  {
    delegate3 = [(VNDocumentCameraViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      if ([cancelCopy setupResult] == 1)
      {
        v9 = -11852;
      }

      else
      {
        v9 = -11800;
      }

      delegate2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5DC0] code:v9 userInfo:0];
      delegate4 = [(VNDocumentCameraViewController *)self delegate];
      [delegate4 documentCameraViewController:self didFailWithError:delegate2];

      goto LABEL_10;
    }
  }

  [(VNDocumentCameraViewController_InProcess *)self _autoDismiss];
LABEL_12:
}

- (void)remoteDocumentCameraControllerDidCancel:(id)cancel
{
  delegate = [(VNDocumentCameraViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  delegate2 = [(VNDocumentCameraViewController *)self delegate];
  v9 = delegate2;
  if (v5)
  {
    [delegate2 documentCameraViewControllerDidCancel:self];
LABEL_5:

    return;
  }

  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5DC0] code:-11800 userInfo:0];
    delegate3 = [(VNDocumentCameraViewController *)self delegate];
    [delegate3 documentCameraViewController:self didFailWithError:v9];

    goto LABEL_5;
  }

  [(VNDocumentCameraViewController_InProcess *)self _autoDismiss];
}

- (void)remoteDocumentCameraController:(id)controller didFinishWithInfoCollection:(id)collection
{
  controllerCopy = controller;
  collectionCopy = collection;
  delegate = [(VNDocumentCameraViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [VNDocumentCameraScan alloc];
    imageCache = [controllerCopy imageCache];
    v11 = [(VNDocumentCameraScan *)v9 initWithDocInfoCollection:collectionCopy imageCache:imageCache];

    delegate2 = [(VNDocumentCameraViewController *)self delegate];
    [delegate2 documentCameraViewController:self didFinishWithScan:v11];
  }

  else
  {
    [(VNDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)remoteDocumentCameraController:(id)controller didFailWithError:(id)error
{
  errorCopy = error;
  delegate = [(VNDocumentCameraViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(VNDocumentCameraViewController *)self delegate];
    [delegate2 documentCameraViewController:self didFailWithError:errorCopy];
  }

  else
  {
    [(VNDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)_autoDismiss
{
  presentingViewController = [(VNDocumentCameraViewController_InProcess *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)removeSaveActionBlockerForFiles
{
  v3 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(VNDocumentCameraViewController_InProcess *)v3 removeSaveActionBlockerForFiles];
  }

  v4 = objc_opt_class();
  viewController = [(VNDocumentCameraViewController_InProcess *)self viewController];
  v6 = DCDynamicCast(v4, viewController);

  [v6 removeSaveActionBlockerForFiles];
}

@end