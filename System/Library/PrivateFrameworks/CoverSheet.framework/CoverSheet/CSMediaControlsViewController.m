@interface CSMediaControlsViewController
- (BOOL)handleEvent:(id)a3;
- (CGRect)_suggestedFrameForMediaControls;
- (CSMediaControlsViewController)init;
- (NSArray)requiredVisualStyleCategories;
- (double)_preferredMediaRemoteHeight;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (void)_layoutMediaControls;
- (void)_updatePersistentUpdatesEnabled:(BOOL)a3;
- (void)_updatePreferredContentSize;
- (void)coverSheetViewController:(id)a3 didReceiveInteractionEvent:(id)a4;
- (void)coverSheetViewController:(id)a3 willChangeToLayout:(int64_t)a4 animations:(id)a5 completion:(id)a6;
- (void)setContainerSize:(CGSize)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CSMediaControlsViewController

- (CSMediaControlsViewController)init
{
  v6.receiver = self;
  v6.super_class = CSMediaControlsViewController;
  v2 = [(CSMediaControlsViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D268B0]);
    mediaRemoteViewController = v2->_mediaRemoteViewController;
    v2->_mediaRemoteViewController = v3;

    [(MRUCoverSheetViewController *)v2->_mediaRemoteViewController setDelegate:v2];
    v2->_mediaRemoteLayout = [(MRUCoverSheetViewController *)v2->_mediaRemoteViewController layout];
  }

  return v2;
}

- (void)viewDidLoad
{
  v3 = [(MRUCoverSheetViewController *)self->_mediaRemoteViewController view];
  mediaRemoteViewController = self->_mediaRemoteViewController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__CSMediaControlsViewController_viewDidLoad__block_invoke;
  v7[3] = &unk_27838BA70;
  v7[4] = self;
  v8 = v3;
  v5 = v3;
  [(CSMediaControlsViewController *)self bs_addChildViewController:mediaRemoteViewController animated:0 transitionBlock:v7];
  [(CSCoverSheetViewControllerBase *)self registerView:v5 forRole:2];
  v6.receiver = self;
  v6.super_class = CSMediaControlsViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidLoad];
}

void __44__CSMediaControlsViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v3 _layoutMediaControls];
  v4 = [*(a1 + 32) view];
  [v4 addSubview:*(a1 + 40)];

  v5[2]();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSMediaControlsViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidDisappear:a3];
  [(CSMediaControlsViewController *)self bs_endAppearanceTransitionForChildViewController:self->_mediaRemoteViewController toVisible:0];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CSMediaControlsViewController;
  [(CSCoverSheetViewControllerBase *)&v3 viewWillLayoutSubviews];
  [(CSMediaControlsViewController *)self _layoutMediaControls];
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CSMediaControlsViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v10, sel_handleEvent_, v4) || ([v4 isConsumable] & 1) == 0)
  {
    v6 = [v4 type];
    if (v6 == 25)
    {
      v7 = self;
      v8 = 0;
    }

    else
    {
      if (v6 != 24)
      {
LABEL_9:
        v5 = 0;
        goto LABEL_10;
      }

      v7 = self;
      v8 = 1;
    }

    [(CSMediaControlsViewController *)v7 _updatePersistentUpdatesEnabled:v8];
    goto LABEL_9;
  }

  v5 = [v4 isConsumable];
LABEL_10:

  return v5;
}

- (void)coverSheetViewController:(id)a3 didReceiveInteractionEvent:(id)a4
{
  v5 = [CSAction actionWithType:3, a4];
  [(CSCoverSheetViewControllerBase *)self sendAction:v5];
}

- (void)coverSheetViewController:(id)a3 willChangeToLayout:(int64_t)a4 animations:(id)a5 completion:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (_os_feature_enabled_impl())
  {
    self->_mediaRemoteLayout = a4;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __99__CSMediaControlsViewController_coverSheetViewController_willChangeToLayout_animations_completion___block_invoke;
    v15[3] = &unk_27838BA98;
    v15[4] = self;
    v16 = v9;
    v11 = MEMORY[0x223D698D0](v15);
    v12 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __99__CSMediaControlsViewController_coverSheetViewController_willChangeToLayout_animations_completion___block_invoke_2;
    v13[3] = &unk_27838BAC0;
    v14 = v10;
    [v12 animateWithDuration:v11 animations:v13 completion:0.5];
  }

  else
  {
    v9[2](v9);
    v10[2](v10);
  }
}

uint64_t __99__CSMediaControlsViewController_coverSheetViewController_willChangeToLayout_animations_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updatePreferredContentSize];
  [*(a1 + 32) _layoutMediaControls];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)setContainerSize:(CGSize)a3
{
  if (self->_containerSize.width != a3.width || self->_containerSize.height != a3.height)
  {
    self->_containerSize = a3;
    [(CSMediaControlsViewController *)self _updatePreferredContentSize];
  }
}

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  if (objc_opt_respondsToSelector())
  {
    v5 = [(MRUCoverSheetViewController *)self->_mediaRemoteViewController visualStylingProviderForCategory:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)requiredVisualStyleCategories
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(MRUCoverSheetViewController *)self->_mediaRemoteViewController requiredVisualStyleCategories];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(MRUCoverSheetViewController *)self->_mediaRemoteViewController setVisualStylingProvider:v6 forCategory:a4];
  }
}

- (double)_preferredMediaRemoteHeight
{
  mediaRemoteLayout = self->_mediaRemoteLayout;
  v3 = +[CSLockScreenDomain rootSettings];
  if (_os_feature_enabled_impl() && mediaRemoteLayout)
  {
    [v3 nowPlayingHeightExpanded];
  }

  else
  {
    [v3 nowPlayingHeightCompact];
  }

  v5 = v4;

  return v5;
}

- (void)_layoutMediaControls
{
  v3 = [(MRUCoverSheetViewController *)self->_mediaRemoteViewController view];
  [(CSMediaControlsViewController *)self _suggestedFrameForMediaControls];
  [v3 setFrame:?];
}

- (void)_updatePersistentUpdatesEnabled:(BOOL)a3
{
  v3 = a3;
  v6 = self->_mediaRemoteViewController;
  v5 = [(CSMediaControlsViewController *)self _appearState]== 2 && v3;
  [(CSMediaControlsViewController *)self bs_endAppearanceTransitionForChildViewController:v6 toVisible:v5];
}

- (void)_updatePreferredContentSize
{
  [(CSMediaControlsViewController *)self _preferredMediaRemoteHeight];
  v4 = v3;
  width = self->_containerSize.width;

  [(CSMediaControlsViewController *)self setPreferredContentSize:width, v4];
}

- (CGRect)_suggestedFrameForMediaControls
{
  [(CSMediaControlsViewController *)self _preferredMediaRemoteHeight];
  SBFMainScreenScale();

  BSRectRoundForScale();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end