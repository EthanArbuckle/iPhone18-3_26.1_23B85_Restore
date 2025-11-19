@interface MRUCoverSheetViewController
- (CGSize)preferredContentSize;
- (MRUCoverSheetViewControllerDelegate)delegate;
- (MRUNowPlayingViewController)nowPlayingViewController;
- (id)_childViewControllersForAlwaysOnTimelines;
- (void)coordinatedUpdateController:(id)a3 processCoordinatedUpdates:(id)a4 completion:(id)a5;
- (void)didReceiveInteraction:(id)a3;
- (void)loadView;
- (void)nowPlayingViewController:(id)a3 didChangeSizeWithAnimations:(id)a4 completion:(id)a5;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePreferredContentSize;
- (void)updateRestrictedRects;
- (void)updateVisualStyling;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MRUCoverSheetViewController

- (void)loadView
{
  v3 = objc_alloc_init(MRUCoverSheetView);
  [(MRUCoverSheetViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = MRUCoverSheetViewController;
  [(MRUCoverSheetViewController *)&v16 viewDidLoad];
  v3 = [[MediaControlsInteractionRecognizer alloc] initWithTarget:self action:sel_didReceiveInteraction_];
  interactionRecognizer = self->_interactionRecognizer;
  self->_interactionRecognizer = v3;

  [(MediaControlsInteractionRecognizer *)self->_interactionRecognizer setCancelsTouchesInView:0];
  [(MediaControlsInteractionRecognizer *)self->_interactionRecognizer setDelegate:self];
  v5 = [(MRUCoverSheetViewController *)self view];
  [v5 addGestureRecognizer:self->_interactionRecognizer];

  v6 = [(MRUCoverSheetViewController *)self nowPlayingViewController];
  [v6 setDelegate:self];

  v7 = [(MRUCoverSheetViewController *)self nowPlayingViewController];
  [(MRUCoverSheetViewController *)self addChildViewController:v7];

  v8 = [(MRUCoverSheetViewController *)self nowPlayingViewController];
  v9 = [v8 view];
  v10 = [(MRUCoverSheetViewController *)self view];
  [v10 setContentView:v9];

  v11 = [(MRUCoverSheetViewController *)self nowPlayingViewController];
  [v11 didMoveToParentViewController:self];

  v12 = objc_alloc_init(MRUCoordinatedUpdateController);
  coordinatedUpdateController = self->_coordinatedUpdateController;
  self->_coordinatedUpdateController = v12;

  [(MRUCoordinatedUpdateController *)self->_coordinatedUpdateController setCadence:0.25];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [(MRUCoordinatedUpdateController *)self->_coordinatedUpdateController setContext:v15];

  [(MRUCoordinatedUpdateController *)self->_coordinatedUpdateController setDelegate:self];
  [(MRUCoverSheetViewController *)self updatePreferredContentSize];
  [(MRUCoverSheetViewController *)self updateRestrictedRects];
  [(MRUCoverSheetViewController *)self updateVisualStyling];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = MRUCoverSheetViewController;
  [(MRUCoverSheetViewController *)&v3 viewDidLayoutSubviews];
  [(MRUCoverSheetViewController *)self updateRestrictedRects];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MRUCoverSheetViewController;
  [(MRUCoverSheetViewController *)&v11 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];
  v6 = [(MRUCoverSheetViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    [(MRUCoverSheetViewController *)self updateVisualStyling];
  }

  v8 = [v4 preferredContentSizeCategory];
  v9 = [(MRUCoverSheetViewController *)self traitCollection];
  v10 = [v9 preferredContentSizeCategory];

  if (v8 != v10)
  {
    [(MRUCoverSheetViewController *)self updatePreferredContentSize];
  }
}

- (MRUNowPlayingViewController)nowPlayingViewController
{
  nowPlayingViewController = self->_nowPlayingViewController;
  if (!nowPlayingViewController)
  {
    v4 = +[MRUEndpointController proactiveEndpointController];
    v5 = [[MRUNowPlayingController alloc] initWithEndpointController:v4];
    v6 = [[MRUNowPlayingViewController alloc] initWithController:v5 routeControlsPresentation:1];
    v7 = self->_nowPlayingViewController;
    self->_nowPlayingViewController = v6;

    [(MRUNowPlayingViewController *)self->_nowPlayingViewController setContext:2];
    [(MRUNowPlayingViewController *)self->_nowPlayingViewController setLayout:4];

    nowPlayingViewController = self->_nowPlayingViewController;
  }

  return nowPlayingViewController;
}

- (void)didReceiveInteraction:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained coverSheetViewController:self didReceiveInteractionEvent:v5];
  }
}

- (void)nowPlayingViewController:(id)a3 didChangeSizeWithAnimations:(id)a4 completion:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MRUCoverSheetViewController *)self layout];
  if ([v14 isShowingMediaSuggestions] && !objc_msgSend(v14, "shouldShowMediaSuggestions"))
  {
    v10 = 0;
  }

  else if ([v14 shouldShowMediaSuggestions] && !objc_msgSend(v14, "isShowingMediaSuggestions"))
  {
    v10 = 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = &__block_literal_global_30;
    }

    v13 = _Block_copy(v12);
    [WeakRetained coverSheetViewController:self willChangeToLayout:v10 animations:v8 completion:v13];
  }

  else
  {
    [(MRUCoordinatedUpdateController *)self->_coordinatedUpdateController addUpdate:v8 completion:v9];
  }
}

- (void)coordinatedUpdateController:(id)a3 processCoordinatedUpdates:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x1E69DD250];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__MRUCoverSheetViewController_coordinatedUpdateController_processCoordinatedUpdates_completion___block_invoke;
  v14[3] = &unk_1E7663FD8;
  v14[4] = self;
  v15 = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__MRUCoverSheetViewController_coordinatedUpdateController_processCoordinatedUpdates_completion___block_invoke_2;
  v12[3] = &unk_1E7664700;
  v12[4] = self;
  v13 = v8;
  v10 = v8;
  v11 = v7;
  [v9 mru_animateUsingType:0 animations:v14 completion:v12];
}

void __96__MRUCoverSheetViewController_coordinatedUpdateController_processCoordinatedUpdates_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) updatePreferredContentSize];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

uint64_t __96__MRUCoverSheetViewController_coordinatedUpdateController_processCoordinatedUpdates_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) updateRestrictedRects];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v5 = a3;
  v6 = [[MRUVisualStylingProvider alloc] initWithVisualStylingProvider:v5];

  [(MRUCoverSheetViewController *)self setStylingProvider:v6];

  [(MRUCoverSheetViewController *)self updateVisualStyling];
}

- (id)_childViewControllersForAlwaysOnTimelines
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (self->_nowPlayingViewController)
  {
    v4[0] = self->_nowPlayingViewController;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (CGSize)preferredContentSize
{
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 bounds];
  Width = CGRectGetWidth(v13);

  v5 = [(MRUCoverSheetViewController *)self view];
  [v5 sizeThatFits:{Width, 1.79769313e308}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)updatePreferredContentSize
{
  v21 = *MEMORY[0x1E69E9840];
  [(MRUCoverSheetViewController *)self preferredContentSize];
  v4 = v3;
  v6 = v5;
  v7 = MCLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v22.width = v4;
    v22.height = v6;
    v9 = NSStringFromCGSize(v22);
    v10 = [(MRUCoverSheetViewController *)self view];
    [v10 frame];
    v23.width = v11;
    v23.height = v12;
    v13 = NSStringFromCGSize(v23);
    v15 = 138543874;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v13;
    _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ preferred content size: %{public}@ | current: %{public}@", &v15, 0x20u);
  }

  v14 = [(MRUCoverSheetViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v14 coverSheetViewController:self didUpdatePreferredContentSize:{v4, v6}];
  }
}

- (void)updateRestrictedRects
{
  v4 = [(MRUCoverSheetViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(MRUNowPlayingViewController *)self->_nowPlayingViewController restrictedRects];
    [v4 coverSheetViewController:self didUpdateRestrictedRects:v3];
  }
}

- (void)updateVisualStyling
{
  if (+[MRUFeatureFlagProvider isAutobahnEnabled])
  {
    v3 = MEMORY[0x1E69AE170];
    v4 = [(MRUCoverSheetViewController *)self traitCollection];
    v7 = [v3 _visualStylingProviderForRecipe:1 category:1 andUserInterfaceStyle:{objc_msgSend(v4, "userInterfaceStyle")}];

    v5 = [[MRUVisualStylingProvider alloc] initWithVisualStylingProvider:v7];
    v6 = [(MRUCoverSheetViewController *)self nowPlayingViewController];
    [v6 setStylingProvider:v5];
  }

  else
  {
    v7 = [(MRUCoverSheetViewController *)self stylingProvider];
    [(MRUNowPlayingViewController *)self->_nowPlayingViewController setStylingProvider:?];
  }
}

- (MRUCoverSheetViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end