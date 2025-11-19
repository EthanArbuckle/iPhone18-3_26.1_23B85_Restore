@interface DCDocumentCameraViewController
+ (BOOL)isAvailable;
+ (id)defaultViewControllerWithDelegate:(id)a3;
+ (id)inProcessViewControllerWithDelegate:(id)a3;
+ (id)viewServiceViewControllerWithDelegate:(id)a3;
- (DCDocumentCameraViewController)initWithDelegate:(id)a3;
- (DCDocumentCameraViewController)initWithDelegate:(id)a3 childViewController:(id)a4;
- (DCDocumentCameraViewControllerDelegate)docCamDelegate;
- (void)setChildViewController:(id)a3;
@end

@implementation DCDocumentCameraViewController

- (DCDocumentCameraViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  if (([objc_opt_class() isAvailable] & 1) == 0)
  {
    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Document camera is not available" userInfo:0];
    objc_exception_throw(v7);
  }

  v5 = [DCDocumentCameraViewController defaultViewControllerWithDelegate:v4];

  return v5;
}

- (DCDocumentCameraViewController)initWithDelegate:(id)a3 childViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DCDocumentCameraViewController;
  v8 = [(DCDocumentCameraViewController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      [(DCDocumentCameraViewController *)v8 setChildViewController:v7];
    }

    [(DCDocumentCameraViewController *)v9 setDocCamDelegate:v6];
  }

  return v9;
}

+ (id)defaultViewControllerWithDelegate:(id)a3
{
  v4 = a3;
  v5 = +[DCSettings sharedSettings];
  v6 = [v5 enableViewService];

  if (v6)
  {
    [a1 viewServiceViewControllerWithDelegate:v4];
  }

  else
  {
    [a1 inProcessViewControllerWithDelegate:v4];
  }
  v7 = ;

  return v7;
}

+ (id)viewServiceViewControllerWithDelegate:(id)a3
{
  v3 = a3;
  v4 = [[DCDocumentCameraViewController_ViewService alloc] initWithDelegate:v3];

  return v4;
}

+ (id)inProcessViewControllerWithDelegate:(id)a3
{
  v3 = a3;
  v4 = [[DCDocumentCameraViewController_InProcess alloc] initWithDelegate:v3];

  return v4;
}

+ (BOOL)isAvailable
{
  v2 = MGGetBoolAnswer();
  if (v2)
  {
    LOBYTE(v2) = MGGetBoolAnswer() ^ 1;
  }

  return v2;
}

- (void)setChildViewController:(id)a3
{
  v31[4] = *MEMORY[0x277D85DE8];
  objc_storeStrong(&self->_childViewController, a3);
  v5 = a3;
  [v5 beginAppearanceTransition:1 animated:0];
  [(DCDocumentCameraViewController *)self addChildViewController:v5];
  v6 = [v5 view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(DCDocumentCameraViewController *)self view];
  v8 = [v5 view];
  [v7 addSubview:v8];

  v21 = MEMORY[0x277CCAAD0];
  v30 = [v5 view];
  v28 = [v30 leadingAnchor];
  v29 = [(DCDocumentCameraViewController *)self view];
  v27 = [v29 leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v31[0] = v26;
  v25 = [v5 view];
  v23 = [v25 trailingAnchor];
  v24 = [(DCDocumentCameraViewController *)self view];
  v22 = [v24 trailingAnchor];
  v20 = [v23 constraintEqualToAnchor:v22];
  v31[1] = v20;
  v19 = [v5 view];
  v17 = [v19 topAnchor];
  v18 = [(DCDocumentCameraViewController *)self view];
  v9 = [v18 topAnchor];
  v10 = [v17 constraintEqualToAnchor:v9];
  v31[2] = v10;
  v11 = [v5 view];
  v12 = [v11 bottomAnchor];
  v13 = [(DCDocumentCameraViewController *)self view];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v31[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  [v21 activateConstraints:v16];

  [v5 didMoveToParentViewController:self];
  [v5 endAppearanceTransition];
}

- (DCDocumentCameraViewControllerDelegate)docCamDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_docCamDelegate);

  return WeakRetained;
}

void __57__DCDocumentCameraViewController_ViewService_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
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
    v19[2] = __57__DCDocumentCameraViewController_ViewService_viewDidLoad__block_invoke_10;
    v19[3] = &unk_278F93660;
    v17 = *(a1 + 40);
    v19[4] = *(a1 + 32);
    v20 = v15;
    v21 = v17;
    v18 = v15;
    [v18 startSessionWithClientContext:v16 completion:v19];
  }
}

uint64_t __57__DCDocumentCameraViewController_ViewService_viewDidLoad__block_invoke_10(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setViewServiceSession:a2];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) accelerometer];
  [v3 setOrientation:objc_msgSend(v4 animated:{"currentDeviceOrientation"), 0}];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__DCDocumentCameraViewController_ViewService_viewDidLoad__block_invoke_2;
  v8[3] = &unk_278F93638;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[4] = *(a1 + 32);
  v8[5] = v6;
  return [v5 prepareForDisplayWithCompletion:v8];
}

uint64_t __57__DCDocumentCameraViewController_ViewService_viewDidLoad__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setPreferredContentSize:?];
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 endDelayingDisplayOfRemoteController];
}

@end