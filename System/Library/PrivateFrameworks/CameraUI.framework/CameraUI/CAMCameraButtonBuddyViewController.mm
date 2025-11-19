@interface CAMCameraButtonBuddyViewController
- (CAMCameraButtonBuddyViewController)init;
- (CAMCameraButtonBuddyViewControllerDelegate)delegate;
- (void)cameraButtonBuddyViewControllerDidFinish:(id)a3;
- (void)composeInterface;
- (void)loadAssetsWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation CAMCameraButtonBuddyViewController

- (CAMCameraButtonBuddyViewController)init
{
  v7.receiver = self;
  v7.super_class = CAMCameraButtonBuddyViewController;
  v2 = [(CAMCameraButtonBuddyViewController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_assetsLoaded = 0;
    v4 = objc_alloc_init(CAMOnboardingBuddyViewManager);
    onboardingManager = v3->__onboardingManager;
    v3->__onboardingManager = v4;
  }

  return v3;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CAMCameraButtonBuddyViewController;
  [(CAMCameraButtonBuddyViewController *)&v6 viewDidLoad];
  if ([(CAMCameraButtonBuddyViewController *)self assetsLoaded])
  {
    [(CAMCameraButtonBuddyViewController *)self composeInterface];
  }

  else
  {
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __49__CAMCameraButtonBuddyViewController_viewDidLoad__block_invoke;
    v3[3] = &unk_1E76F8580;
    objc_copyWeak(&v4, &location);
    [(CAMCameraButtonBuddyViewController *)self loadAssetsWithCompletion:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __49__CAMCameraButtonBuddyViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained composeInterface];
}

- (void)composeInterface
{
  v3 = [(CAMCameraButtonBuddyViewController *)self _onboardingManager];
  v22 = [v3 createViewControllerWithDelegate:self];

  v4 = [v22 view];
  [(CAMCameraButtonBuddyViewController *)self addChildViewController:v22];
  v5 = [(CAMCameraButtonBuddyViewController *)self view];
  [v5 addSubview:v4];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [v4 topAnchor];
  v7 = [(CAMCameraButtonBuddyViewController *)self view];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [v4 leadingAnchor];
  v11 = [(CAMCameraButtonBuddyViewController *)self view];
  v12 = [v11 leadingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [v4 trailingAnchor];
  v15 = [(CAMCameraButtonBuddyViewController *)self view];
  v16 = [v15 trailingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [v4 bottomAnchor];
  v19 = [(CAMCameraButtonBuddyViewController *)self view];
  v20 = [v19 bottomAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  [v22 didMoveToParentViewController:self];
  [(CAMCameraButtonBuddyViewController *)self set_contentViewController:v22];
}

- (void)loadAssetsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CAMCameraButtonBuddyViewController *)self _onboardingManager];
  v6 = [v5 modelLoadingStatus];

  if (v6 == 2)
  {
    v4[2](v4);
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = [(CAMCameraButtonBuddyViewController *)self _onboardingManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__CAMCameraButtonBuddyViewController_loadAssetsWithCompletion___block_invoke;
    v8[3] = &unk_1E76F85A8;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    [v7 createViewModel:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

uint64_t __63__CAMCameraButtonBuddyViewController_loadAssetsWithCompletion___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 == 2)
  {
    v3 = result;
    WeakRetained = objc_loadWeakRetained((result + 40));
    [WeakRetained setAssetsLoaded:1];

    v5 = *(*(v3 + 32) + 16);

    return v5();
  }

  return result;
}

- (void)cameraButtonBuddyViewControllerDidFinish:(id)a3
{
  v4 = [(CAMCameraButtonBuddyViewController *)self delegate];
  [v4 cameraButtonBuddyViewControllerDidFinish:self];
}

- (CAMCameraButtonBuddyViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end