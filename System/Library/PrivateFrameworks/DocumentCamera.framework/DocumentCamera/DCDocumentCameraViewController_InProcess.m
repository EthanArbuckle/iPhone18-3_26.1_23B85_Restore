@interface DCDocumentCameraViewController_InProcess
- (DCDocumentCameraViewController_InProcess)initWithDelegate:(id)a3;
- (void)_autoDismiss;
- (void)didReceiveMemoryWarning;
- (void)documentCameraController:(id)a3 didFinishWithDocInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6;
- (void)documentCameraController:(id)a3 didFinishWithImage:(id)a4;
- (void)documentCameraControllerDidCancel:(id)a3;
- (void)remoteDocumentCameraController:(id)a3 didFailWithError:(id)a4;
- (void)remoteDocumentCameraController:(id)a3 didFinishWithInfoCollection:(id)a4;
- (void)remoteDocumentCameraControllerDidCancel:(id)a3;
@end

@implementation DCDocumentCameraViewController_InProcess

- (DCDocumentCameraViewController_InProcess)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [[ICDocCamImageCache alloc] initWithDataCryptorDelegate:0];
  if (DCDebugInterfaceEnabled())
  {
    v6 = [[ICRemoteDocCamViewController alloc] initWithImageCache:v5];
    v7 = objc_opt_class();
    v8 = DCDynamicCast(v7, v6);
    [v8 setDelegate:self];

    v9 = v6;
    v10 = v9;
  }

  else
  {
    v10 = [[ICDocCamViewController alloc] initWithImageCache:v5];
    v11 = objc_opt_class();
    v12 = DCDynamicCast(v11, v10);
    [v12 setDelegate:self];

    v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10];
  }

  v13 = v9;
  v16.receiver = self;
  v16.super_class = DCDocumentCameraViewController_InProcess;
  v14 = [(DCDocumentCameraViewController *)&v16 initWithDelegate:v4 childViewController:v9];

  if (v14)
  {
    objc_storeStrong(&v14->_viewController, v10);
    [(DCDocumentCameraViewController_InProcess *)v14 setModalPresentationStyle:0];
  }

  return v14;
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = DCDocumentCameraViewController_InProcess;
  [(DCDocumentCameraViewController_InProcess *)&v2 didReceiveMemoryWarning];
}

- (void)documentCameraController:(id)a3 didFinishWithDocInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6
{
  v13 = a4;
  v8 = a5;
  v9 = [(DCDocumentCameraViewController *)self docCamDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [[DCScannedDocument alloc] initWithDocInfoCollection:v13 imageCache:v8];
    v12 = [(DCDocumentCameraViewController *)self docCamDelegate];
    [v12 documentCameraViewController:self didFinishWithDocument:v11];
  }

  else
  {
    [(DCDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)documentCameraController:(id)a3 didFinishWithImage:(id)a4
{
  v5 = [(DCDocumentCameraViewController *)self docCamDelegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(DCDocumentCameraViewController *)self docCamDelegate];
    [v7 documentCameraViewControllerDidCancel:self];
  }

  else
  {

    [(DCDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)documentCameraControllerDidCancel:(id)a3
{
  v4 = [(DCDocumentCameraViewController *)self docCamDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(DCDocumentCameraViewController *)self docCamDelegate];
    [v6 documentCameraViewControllerDidCancel:self];
  }

  else
  {

    [(DCDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)remoteDocumentCameraControllerDidCancel:(id)a3
{
  v4 = [(DCDocumentCameraViewController *)self docCamDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(DCDocumentCameraViewController *)self docCamDelegate];
    [v6 documentCameraViewControllerDidCancel:self];
  }

  else
  {

    [(DCDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)remoteDocumentCameraController:(id)a3 didFinishWithInfoCollection:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(DCDocumentCameraViewController *)self docCamDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [DCScannedDocument alloc];
    v10 = [v13 imageCache];
    v11 = [(DCScannedDocument *)v9 initWithDocInfoCollection:v6 imageCache:v10];

    v12 = [(DCDocumentCameraViewController *)self docCamDelegate];
    [v12 documentCameraViewController:self didFinishWithDocument:v11];
  }

  else
  {
    [(DCDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)remoteDocumentCameraController:(id)a3 didFailWithError:(id)a4
{
  v5 = [(DCDocumentCameraViewController *)self docCamDelegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(DCDocumentCameraViewController *)self docCamDelegate];
    [v7 documentCameraViewControllerDidCancel:self];
  }

  else
  {

    [(DCDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)_autoDismiss
{
  v2 = [(DCDocumentCameraViewController_InProcess *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

@end