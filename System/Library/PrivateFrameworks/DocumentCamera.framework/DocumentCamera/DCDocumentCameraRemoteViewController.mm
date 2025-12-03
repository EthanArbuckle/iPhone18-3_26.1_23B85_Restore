@interface DCDocumentCameraRemoteViewController
+ (id)exportedInterface;
- (DCDocumentCameraPublicViewController)publicViewController;
- (void)didCancel;
- (void)didFailWithError:(id)error;
- (void)didFinishWithDocumentInfoCollection:(id)collection;
- (void)dismiss;
- (void)viewControllerWasDismissed;
- (void)viewServiceDidTerminateWithError:(id)error;
- (void)viewServicePreferredSizeDidChange:(CGSize)change;
@end

@implementation DCDocumentCameraRemoteViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  v5 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(DCDocumentCameraRemoteViewController *)errorCopy viewServiceDidTerminateWithError:v5];
  }

  [(DCDocumentCameraRemoteViewController *)self dismiss];
}

+ (id)exportedInterface
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285CA5358];
  v3 = MEMORY[0x277CBEB98];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_didFinishWithDocumentInfoCollection_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)viewServicePreferredSizeDidChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  publicViewController = [(DCDocumentCameraRemoteViewController *)self publicViewController];
  [publicViewController viewServicePreferredSizeDidChange:{width, height}];
}

- (void)dismiss
{
  publicViewController = [(DCDocumentCameraRemoteViewController *)self publicViewController];
  [publicViewController dismiss];
}

- (void)viewControllerWasDismissed
{
  viewServiceViewController = [(DCDocumentCameraRemoteViewController *)self viewServiceViewController];
  [viewServiceViewController viewControllerWasDismissed];

  [(DCDocumentCameraRemoteViewController *)self setPublicViewController:0];
}

- (void)didCancel
{
  publicViewController = [(DCDocumentCameraRemoteViewController *)self publicViewController];
  [publicViewController didCancel];
}

- (void)didFinishWithDocumentInfoCollection:(id)collection
{
  collectionCopy = collection;
  publicViewController = [(DCDocumentCameraRemoteViewController *)self publicViewController];
  [publicViewController didFinishWithDocumentInfoCollection:collectionCopy];
}

- (void)didFailWithError:(id)error
{
  errorCopy = error;
  publicViewController = [(DCDocumentCameraRemoteViewController *)self publicViewController];
  [publicViewController didFailWithError:errorCopy];
}

- (DCDocumentCameraPublicViewController)publicViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_publicViewController);

  return WeakRetained;
}

- (void)viewServiceDidTerminateWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_249253000, a2, OS_LOG_TYPE_ERROR, "Remote view service terminated with error: %@", &v2, 0xCu);
}

@end