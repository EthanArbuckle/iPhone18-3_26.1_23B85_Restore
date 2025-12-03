@interface VNDocumentCameraViewController
+ (BOOL)isSupported;
+ (id)newDefaultViewController;
- (VNDocumentCameraViewController)init;
- (VNDocumentCameraViewController)initWithChildViewController:(id)controller;
- (id)delegate;
- (void)setChildViewController:(id)controller;
@end

@implementation VNDocumentCameraViewController

+ (BOOL)isSupported
{
  if (DCDebugInterfaceEnabled())
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = MGGetBoolAnswer();
    if (v2)
    {
      LOBYTE(v2) = MGGetBoolAnswer() ^ 1;
    }
  }

  return v2;
}

- (VNDocumentCameraViewController)init
{
  if (([objc_opt_class() isSupported] & 1) == 0)
  {
    v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Document camera is not available" userInfo:0];
    objc_exception_throw(v5);
  }

  v3 = +[VNDocumentCameraViewController newDefaultViewController];

  return v3;
}

- (VNDocumentCameraViewController)initWithChildViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = VNDocumentCameraViewController;
  v5 = [(VNDocumentCameraViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (controllerCopy && v5)
  {
    [(VNDocumentCameraViewController *)v5 setChildViewController:controllerCopy];
  }

  return v6;
}

+ (id)newDefaultViewController
{
  v3 = +[DCSettings sharedSettings];
  enableViewService = [v3 enableViewService];

  if (enableViewService)
  {

    return [self newViewServiceViewController];
  }

  else
  {

    return [self newInProcessViewController];
  }
}

- (void)setChildViewController:(id)controller
{
  v31[4] = *MEMORY[0x277D85DE8];
  objc_storeStrong(&self->_childViewController, controller);
  controllerCopy = controller;
  [controllerCopy beginAppearanceTransition:1 animated:0];
  [(VNDocumentCameraViewController *)self addChildViewController:controllerCopy];
  view = [controllerCopy view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(VNDocumentCameraViewController *)self view];
  view3 = [controllerCopy view];
  [view2 addSubview:view3];

  v21 = MEMORY[0x277CCAAD0];
  view4 = [controllerCopy view];
  leadingAnchor = [view4 leadingAnchor];
  view5 = [(VNDocumentCameraViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v31[0] = v26;
  view6 = [controllerCopy view];
  trailingAnchor = [view6 trailingAnchor];
  view7 = [(VNDocumentCameraViewController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v31[1] = v20;
  view8 = [controllerCopy view];
  topAnchor = [view8 topAnchor];
  view9 = [(VNDocumentCameraViewController *)self view];
  topAnchor2 = [view9 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v31[2] = v10;
  view10 = [controllerCopy view];
  bottomAnchor = [view10 bottomAnchor];
  view11 = [(VNDocumentCameraViewController *)self view];
  bottomAnchor2 = [view11 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v31[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  [v21 activateConstraints:v16];

  [controllerCopy didMoveToParentViewController:self];
  [controllerCopy endAppearanceTransition];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __57__VNDocumentCameraViewController_ViewService_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __57__VNDocumentCameraViewController_ViewService_viewDidLoad__block_invoke_cold_1(v7, v8);
  }

  if (v7)
  {
    v9 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __57__VNDocumentCameraViewController_ViewService_viewDidLoad__block_invoke_cold_2(a1, v7, v9);
    }

    [*(*(*(a1 + 40) + 8) + 40) endDelayingDisplayOfRemoteController];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CF05B0]);
    [*(a1 + 32) setAccelerometer:v10];

    v11 = *(a1 + 32);
    v12 = [v11 accelerometer];
    [v12 setDelegate:v11];

    v13 = [*(a1 + 32) accelerometer];
    [v13 setOrientationEventsEnabled:1];

    v14 = [*(a1 + 32) accelerometer];
    [v14 setPassiveOrientationEvents:0];

    [v6 setPublicViewController:*(a1 + 32)];
    v15 = [v6 serviceViewControllerProxy];
    v16 = objc_alloc_init(DCDocumentCameraViewServiceSessionRequest);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__VNDocumentCameraViewController_ViewService_viewDidLoad__block_invoke_10;
    v19[3] = &unk_278F93660;
    v17 = *(a1 + 40);
    v19[4] = *(a1 + 32);
    v20 = v15;
    v21 = v17;
    v18 = v15;
    [v18 startSessionWithClientContext:v16 completion:v19];
  }
}

uint64_t __57__VNDocumentCameraViewController_ViewService_viewDidLoad__block_invoke_10(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setViewServiceSession:a2];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) accelerometer];
  [v3 setOrientation:objc_msgSend(v4 animated:{"currentDeviceOrientation"), 0}];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__VNDocumentCameraViewController_ViewService_viewDidLoad__block_invoke_2;
  v8[3] = &unk_278F93638;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[4] = *(a1 + 32);
  v8[5] = v6;
  return [v5 prepareForDisplayWithCompletion:v8];
}

uint64_t __57__VNDocumentCameraViewController_ViewService_viewDidLoad__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setPreferredContentSize:?];
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 endDelayingDisplayOfRemoteController];
}

void __57__VNDocumentCameraViewController_ViewService_viewDidLoad__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_249253000, a2, OS_LOG_TYPE_DEBUG, "_UIResilientRemoteViewContainerViewController initialized (%@)", &v2, 0xCu);
}

void __57__VNDocumentCameraViewController_ViewService_viewDidLoad__block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 138412546;
  v7 = objc_opt_class();
  v8 = 2112;
  v9 = a2;
  v5 = v7;
  _os_log_error_impl(&dword_249253000, a3, OS_LOG_TYPE_ERROR, "Remote view controller error while displaying %@: %@", &v6, 0x16u);
}

@end