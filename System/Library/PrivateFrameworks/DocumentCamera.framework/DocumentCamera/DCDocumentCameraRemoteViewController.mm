@interface DCDocumentCameraRemoteViewController
+ (id)exportedInterface;
- (DCDocumentCameraPublicViewController)publicViewController;
- (void)didCancel;
- (void)didFailWithError:(id)a3;
- (void)didFinishWithDocumentInfoCollection:(id)a3;
- (void)dismiss;
- (void)viewControllerWasDismissed;
- (void)viewServiceDidTerminateWithError:(id)a3;
- (void)viewServicePreferredSizeDidChange:(CGSize)a3;
@end

@implementation DCDocumentCameraRemoteViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(DCDocumentCameraRemoteViewController *)v4 viewServiceDidTerminateWithError:v5];
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

- (void)viewServicePreferredSizeDidChange:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(DCDocumentCameraRemoteViewController *)self publicViewController];
  [v5 viewServicePreferredSizeDidChange:{width, height}];
}

- (void)dismiss
{
  v2 = [(DCDocumentCameraRemoteViewController *)self publicViewController];
  [v2 dismiss];
}

- (void)viewControllerWasDismissed
{
  v3 = [(DCDocumentCameraRemoteViewController *)self viewServiceViewController];
  [v3 viewControllerWasDismissed];

  [(DCDocumentCameraRemoteViewController *)self setPublicViewController:0];
}

- (void)didCancel
{
  v2 = [(DCDocumentCameraRemoteViewController *)self publicViewController];
  [v2 didCancel];
}

- (void)didFinishWithDocumentInfoCollection:(id)a3
{
  v4 = a3;
  v5 = [(DCDocumentCameraRemoteViewController *)self publicViewController];
  [v5 didFinishWithDocumentInfoCollection:v4];
}

- (void)didFailWithError:(id)a3
{
  v4 = a3;
  v5 = [(DCDocumentCameraRemoteViewController *)self publicViewController];
  [v5 didFailWithError:v4];
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