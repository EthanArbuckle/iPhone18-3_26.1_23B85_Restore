@interface DCDocumentCameraViewController_InProcess
- (DCDocumentCameraViewController_InProcess)initWithDelegate:(id)delegate;
- (void)_autoDismiss;
- (void)didReceiveMemoryWarning;
- (void)documentCameraController:(id)controller didFinishWithDocInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user;
- (void)documentCameraController:(id)controller didFinishWithImage:(id)image;
- (void)documentCameraControllerDidCancel:(id)cancel;
- (void)remoteDocumentCameraController:(id)controller didFailWithError:(id)error;
- (void)remoteDocumentCameraController:(id)controller didFinishWithInfoCollection:(id)collection;
- (void)remoteDocumentCameraControllerDidCancel:(id)cancel;
@end

@implementation DCDocumentCameraViewController_InProcess

- (DCDocumentCameraViewController_InProcess)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
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
  v14 = [(DCDocumentCameraViewController *)&v16 initWithDelegate:delegateCopy childViewController:v9];

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

- (void)documentCameraController:(id)controller didFinishWithDocInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user
{
  collectionCopy = collection;
  cacheCopy = cache;
  docCamDelegate = [(DCDocumentCameraViewController *)self docCamDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [[DCScannedDocument alloc] initWithDocInfoCollection:collectionCopy imageCache:cacheCopy];
    docCamDelegate2 = [(DCDocumentCameraViewController *)self docCamDelegate];
    [docCamDelegate2 documentCameraViewController:self didFinishWithDocument:v11];
  }

  else
  {
    [(DCDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)documentCameraController:(id)controller didFinishWithImage:(id)image
{
  v5 = [(DCDocumentCameraViewController *)self docCamDelegate:controller];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    docCamDelegate = [(DCDocumentCameraViewController *)self docCamDelegate];
    [docCamDelegate documentCameraViewControllerDidCancel:self];
  }

  else
  {

    [(DCDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)documentCameraControllerDidCancel:(id)cancel
{
  docCamDelegate = [(DCDocumentCameraViewController *)self docCamDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    docCamDelegate2 = [(DCDocumentCameraViewController *)self docCamDelegate];
    [docCamDelegate2 documentCameraViewControllerDidCancel:self];
  }

  else
  {

    [(DCDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)remoteDocumentCameraControllerDidCancel:(id)cancel
{
  docCamDelegate = [(DCDocumentCameraViewController *)self docCamDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    docCamDelegate2 = [(DCDocumentCameraViewController *)self docCamDelegate];
    [docCamDelegate2 documentCameraViewControllerDidCancel:self];
  }

  else
  {

    [(DCDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)remoteDocumentCameraController:(id)controller didFinishWithInfoCollection:(id)collection
{
  controllerCopy = controller;
  collectionCopy = collection;
  docCamDelegate = [(DCDocumentCameraViewController *)self docCamDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [DCScannedDocument alloc];
    imageCache = [controllerCopy imageCache];
    v11 = [(DCScannedDocument *)v9 initWithDocInfoCollection:collectionCopy imageCache:imageCache];

    docCamDelegate2 = [(DCDocumentCameraViewController *)self docCamDelegate];
    [docCamDelegate2 documentCameraViewController:self didFinishWithDocument:v11];
  }

  else
  {
    [(DCDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)remoteDocumentCameraController:(id)controller didFailWithError:(id)error
{
  v5 = [(DCDocumentCameraViewController *)self docCamDelegate:controller];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    docCamDelegate = [(DCDocumentCameraViewController *)self docCamDelegate];
    [docCamDelegate documentCameraViewControllerDidCancel:self];
  }

  else
  {

    [(DCDocumentCameraViewController_InProcess *)self _autoDismiss];
  }
}

- (void)_autoDismiss
{
  presentingViewController = [(DCDocumentCameraViewController_InProcess *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

@end