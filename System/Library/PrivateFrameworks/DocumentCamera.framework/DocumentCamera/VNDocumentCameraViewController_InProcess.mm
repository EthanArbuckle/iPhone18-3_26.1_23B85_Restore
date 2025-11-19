@interface VNDocumentCameraViewController_InProcess
- (VNDocumentCameraViewController_InProcess)init;
- (void)_autoDismiss;
- (void)didReceiveMemoryWarning;
- (void)documentCameraController:(id)a3 didFinishWithDocInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6;
- (void)documentCameraController:(id)a3 didFinishWithImage:(id)a4;
- (void)documentCameraControllerDidCancel:(id)a3;
- (void)remoteDocumentCameraController:(id)a3 didFailWithError:(id)a4;
- (void)remoteDocumentCameraController:(id)a3 didFinishWithInfoCollection:(id)a4;
- (void)remoteDocumentCameraControllerDidCancel:(id)a3;
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

- (void)documentCameraController:(id)a3 didFinishWithDocInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6
{
  v13 = a4;
  v8 = a5;
  v9 = [(VNDocumentCameraViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [[VNDocumentCameraScan alloc] initWithDocInfoCollection:v13 imageCache:v8];
    v12 = [(VNDocumentCameraViewController *)self delegate];
    [v12 documentCameraViewController:self didFinishWithScan:v11];
  }

  else
  {
    [(VNDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)documentCameraController:(id)a3 didFinishWithImage:(id)a4
{
  v5 = [(VNDocumentCameraViewController *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(VNDocumentCameraViewController *)self delegate];
    [v7 documentCameraViewControllerDidCancel:self];
  }

  else
  {

    [(VNDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)documentCameraControllerDidCancel:(id)a3
{
  v11 = a3;
  if (![v11 setupResult])
  {
    v4 = [(VNDocumentCameraViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(VNDocumentCameraViewController *)self delegate];
      [v6 documentCameraViewControllerDidCancel:self];
LABEL_10:

      goto LABEL_12;
    }
  }

  if ([v11 setupResult])
  {
    v7 = [(VNDocumentCameraViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      if ([v11 setupResult] == 1)
      {
        v9 = -11852;
      }

      else
      {
        v9 = -11800;
      }

      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5DC0] code:v9 userInfo:0];
      v10 = [(VNDocumentCameraViewController *)self delegate];
      [v10 documentCameraViewController:self didFailWithError:v6];

      goto LABEL_10;
    }
  }

  [(VNDocumentCameraViewController_InProcess *)self _autoDismiss];
LABEL_12:
}

- (void)remoteDocumentCameraControllerDidCancel:(id)a3
{
  v4 = [(VNDocumentCameraViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = [(VNDocumentCameraViewController *)self delegate];
  v9 = v6;
  if (v5)
  {
    [v6 documentCameraViewControllerDidCancel:self];
LABEL_5:

    return;
  }

  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5DC0] code:-11800 userInfo:0];
    v8 = [(VNDocumentCameraViewController *)self delegate];
    [v8 documentCameraViewController:self didFailWithError:v9];

    goto LABEL_5;
  }

  [(VNDocumentCameraViewController_InProcess *)self _autoDismiss];
}

- (void)remoteDocumentCameraController:(id)a3 didFinishWithInfoCollection:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(VNDocumentCameraViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [VNDocumentCameraScan alloc];
    v10 = [v13 imageCache];
    v11 = [(VNDocumentCameraScan *)v9 initWithDocInfoCollection:v6 imageCache:v10];

    v12 = [(VNDocumentCameraViewController *)self delegate];
    [v12 documentCameraViewController:self didFinishWithScan:v11];
  }

  else
  {
    [(VNDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)remoteDocumentCameraController:(id)a3 didFailWithError:(id)a4
{
  v8 = a4;
  v5 = [(VNDocumentCameraViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(VNDocumentCameraViewController *)self delegate];
    [v7 documentCameraViewController:self didFailWithError:v8];
  }

  else
  {
    [(VNDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)_autoDismiss
{
  v2 = [(VNDocumentCameraViewController_InProcess *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)removeSaveActionBlockerForFiles
{
  v3 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(VNDocumentCameraViewController_InProcess *)v3 removeSaveActionBlockerForFiles];
  }

  v4 = objc_opt_class();
  v5 = [(VNDocumentCameraViewController_InProcess *)self viewController];
  v6 = DCDynamicCast(v4, v5);

  [v6 removeSaveActionBlockerForFiles];
}

@end