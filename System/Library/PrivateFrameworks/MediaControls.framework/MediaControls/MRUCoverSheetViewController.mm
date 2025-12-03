@interface MRUCoverSheetViewController
- (CGSize)preferredContentSize;
- (MRUCoverSheetViewControllerDelegate)delegate;
- (MRUNowPlayingViewController)nowPlayingViewController;
- (id)_childViewControllersForAlwaysOnTimelines;
- (void)coordinatedUpdateController:(id)controller processCoordinatedUpdates:(id)updates completion:(id)completion;
- (void)didReceiveInteraction:(id)interaction;
- (void)loadView;
- (void)nowPlayingViewController:(id)controller didChangeSizeWithAnimations:(id)animations completion:(id)completion;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)traitCollectionDidChange:(id)change;
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
  view = [(MRUCoverSheetViewController *)self view];
  [view addGestureRecognizer:self->_interactionRecognizer];

  nowPlayingViewController = [(MRUCoverSheetViewController *)self nowPlayingViewController];
  [nowPlayingViewController setDelegate:self];

  nowPlayingViewController2 = [(MRUCoverSheetViewController *)self nowPlayingViewController];
  [(MRUCoverSheetViewController *)self addChildViewController:nowPlayingViewController2];

  nowPlayingViewController3 = [(MRUCoverSheetViewController *)self nowPlayingViewController];
  view2 = [nowPlayingViewController3 view];
  view3 = [(MRUCoverSheetViewController *)self view];
  [view3 setContentView:view2];

  nowPlayingViewController4 = [(MRUCoverSheetViewController *)self nowPlayingViewController];
  [nowPlayingViewController4 didMoveToParentViewController:self];

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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v11.receiver = self;
  v11.super_class = MRUCoverSheetViewController;
  [(MRUCoverSheetViewController *)&v11 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];
  traitCollection = [(MRUCoverSheetViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(MRUCoverSheetViewController *)self updateVisualStyling];
  }

  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
  traitCollection2 = [(MRUCoverSheetViewController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
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

- (void)didReceiveInteraction:(id)interaction
{
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained coverSheetViewController:self didReceiveInteractionEvent:interactionCopy];
  }
}

- (void)nowPlayingViewController:(id)controller didChangeSizeWithAnimations:(id)animations completion:(id)completion
{
  controllerCopy = controller;
  animationsCopy = animations;
  completionCopy = completion;
  layout = [(MRUCoverSheetViewController *)self layout];
  if ([controllerCopy isShowingMediaSuggestions] && !objc_msgSend(controllerCopy, "shouldShowMediaSuggestions"))
  {
    layout = 0;
  }

  else if ([controllerCopy shouldShowMediaSuggestions] && !objc_msgSend(controllerCopy, "isShowingMediaSuggestions"))
  {
    layout = 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    if (completionCopy)
    {
      v12 = completionCopy;
    }

    else
    {
      v12 = &__block_literal_global_30;
    }

    v13 = _Block_copy(v12);
    [WeakRetained coverSheetViewController:self willChangeToLayout:layout animations:animationsCopy completion:v13];
  }

  else
  {
    [(MRUCoordinatedUpdateController *)self->_coordinatedUpdateController addUpdate:animationsCopy completion:completionCopy];
  }
}

- (void)coordinatedUpdateController:(id)controller processCoordinatedUpdates:(id)updates completion:(id)completion
{
  updatesCopy = updates;
  completionCopy = completion;
  v9 = MEMORY[0x1E69DD250];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__MRUCoverSheetViewController_coordinatedUpdateController_processCoordinatedUpdates_completion___block_invoke;
  v14[3] = &unk_1E7663FD8;
  v14[4] = self;
  v15 = updatesCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__MRUCoverSheetViewController_coordinatedUpdateController_processCoordinatedUpdates_completion___block_invoke_2;
  v12[3] = &unk_1E7664700;
  v12[4] = self;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = updatesCopy;
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

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  v6 = [[MRUVisualStylingProvider alloc] initWithVisualStylingProvider:providerCopy];

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
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  Width = CGRectGetWidth(v13);

  view = [(MRUCoverSheetViewController *)self view];
  [view sizeThatFits:{Width, 1.79769313e308}];
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
    view = [(MRUCoverSheetViewController *)self view];
    [view frame];
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

  delegate = [(MRUCoverSheetViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate coverSheetViewController:self didUpdatePreferredContentSize:{v4, v6}];
  }
}

- (void)updateRestrictedRects
{
  delegate = [(MRUCoverSheetViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    restrictedRects = [(MRUNowPlayingViewController *)self->_nowPlayingViewController restrictedRects];
    [delegate coverSheetViewController:self didUpdateRestrictedRects:restrictedRects];
  }
}

- (void)updateVisualStyling
{
  if (+[MRUFeatureFlagProvider isAutobahnEnabled])
  {
    v3 = MEMORY[0x1E69AE170];
    traitCollection = [(MRUCoverSheetViewController *)self traitCollection];
    stylingProvider = [v3 _visualStylingProviderForRecipe:1 category:1 andUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

    v5 = [[MRUVisualStylingProvider alloc] initWithVisualStylingProvider:stylingProvider];
    nowPlayingViewController = [(MRUCoverSheetViewController *)self nowPlayingViewController];
    [nowPlayingViewController setStylingProvider:v5];
  }

  else
  {
    stylingProvider = [(MRUCoverSheetViewController *)self stylingProvider];
    [(MRUNowPlayingViewController *)self->_nowPlayingViewController setStylingProvider:?];
  }
}

- (MRUCoverSheetViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end