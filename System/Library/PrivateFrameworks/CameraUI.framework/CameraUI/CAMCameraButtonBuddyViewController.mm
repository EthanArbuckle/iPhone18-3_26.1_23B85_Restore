@interface CAMCameraButtonBuddyViewController
- (CAMCameraButtonBuddyViewController)init;
- (CAMCameraButtonBuddyViewControllerDelegate)delegate;
- (void)cameraButtonBuddyViewControllerDidFinish:(id)finish;
- (void)composeInterface;
- (void)loadAssetsWithCompletion:(id)completion;
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
  _onboardingManager = [(CAMCameraButtonBuddyViewController *)self _onboardingManager];
  v22 = [_onboardingManager createViewControllerWithDelegate:self];

  view = [v22 view];
  [(CAMCameraButtonBuddyViewController *)self addChildViewController:v22];
  view2 = [(CAMCameraButtonBuddyViewController *)self view];
  [view2 addSubview:view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [view topAnchor];
  view3 = [(CAMCameraButtonBuddyViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v9 setActive:1];

  leadingAnchor = [view leadingAnchor];
  view4 = [(CAMCameraButtonBuddyViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v13 setActive:1];

  trailingAnchor = [view trailingAnchor];
  view5 = [(CAMCameraButtonBuddyViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v17 setActive:1];

  bottomAnchor = [view bottomAnchor];
  view6 = [(CAMCameraButtonBuddyViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v21 setActive:1];

  [v22 didMoveToParentViewController:self];
  [(CAMCameraButtonBuddyViewController *)self set_contentViewController:v22];
}

- (void)loadAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  _onboardingManager = [(CAMCameraButtonBuddyViewController *)self _onboardingManager];
  modelLoadingStatus = [_onboardingManager modelLoadingStatus];

  if (modelLoadingStatus == 2)
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    objc_initWeak(&location, self);
    _onboardingManager2 = [(CAMCameraButtonBuddyViewController *)self _onboardingManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__CAMCameraButtonBuddyViewController_loadAssetsWithCompletion___block_invoke;
    v8[3] = &unk_1E76F85A8;
    objc_copyWeak(&v10, &location);
    v9 = completionCopy;
    [_onboardingManager2 createViewModel:v8];

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

- (void)cameraButtonBuddyViewControllerDidFinish:(id)finish
{
  delegate = [(CAMCameraButtonBuddyViewController *)self delegate];
  [delegate cameraButtonBuddyViewControllerDidFinish:self];
}

- (CAMCameraButtonBuddyViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end