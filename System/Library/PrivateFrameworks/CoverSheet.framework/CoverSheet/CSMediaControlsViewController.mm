@interface CSMediaControlsViewController
- (BOOL)handleEvent:(id)event;
- (CGRect)_suggestedFrameForMediaControls;
- (CSMediaControlsViewController)init;
- (NSArray)requiredVisualStyleCategories;
- (double)_preferredMediaRemoteHeight;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)_layoutMediaControls;
- (void)_updatePersistentUpdatesEnabled:(BOOL)enabled;
- (void)_updatePreferredContentSize;
- (void)coverSheetViewController:(id)controller didReceiveInteractionEvent:(id)event;
- (void)coverSheetViewController:(id)controller willChangeToLayout:(int64_t)layout animations:(id)animations completion:(id)completion;
- (void)setContainerSize:(CGSize)size;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)viewDidDisappear:(BOOL)disappear;
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
  view = [(MRUCoverSheetViewController *)self->_mediaRemoteViewController view];
  mediaRemoteViewController = self->_mediaRemoteViewController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__CSMediaControlsViewController_viewDidLoad__block_invoke;
  v7[3] = &unk_27838BA70;
  v7[4] = self;
  v8 = view;
  v5 = view;
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CSMediaControlsViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidDisappear:disappear];
  [(CSMediaControlsViewController *)self bs_endAppearanceTransitionForChildViewController:self->_mediaRemoteViewController toVisible:0];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CSMediaControlsViewController;
  [(CSCoverSheetViewControllerBase *)&v3 viewWillLayoutSubviews];
  [(CSMediaControlsViewController *)self _layoutMediaControls];
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v10.receiver = self;
  v10.super_class = CSMediaControlsViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v10, sel_handleEvent_, eventCopy) || ([eventCopy isConsumable] & 1) == 0)
  {
    type = [eventCopy type];
    if (type == 25)
    {
      selfCopy2 = self;
      v8 = 0;
    }

    else
    {
      if (type != 24)
      {
LABEL_9:
        isConsumable = 0;
        goto LABEL_10;
      }

      selfCopy2 = self;
      v8 = 1;
    }

    [(CSMediaControlsViewController *)selfCopy2 _updatePersistentUpdatesEnabled:v8];
    goto LABEL_9;
  }

  isConsumable = [eventCopy isConsumable];
LABEL_10:

  return isConsumable;
}

- (void)coverSheetViewController:(id)controller didReceiveInteractionEvent:(id)event
{
  event = [CSAction actionWithType:3, event];
  [(CSCoverSheetViewControllerBase *)self sendAction:event];
}

- (void)coverSheetViewController:(id)controller willChangeToLayout:(int64_t)layout animations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  completionCopy = completion;
  if (_os_feature_enabled_impl())
  {
    self->_mediaRemoteLayout = layout;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __99__CSMediaControlsViewController_coverSheetViewController_willChangeToLayout_animations_completion___block_invoke;
    v15[3] = &unk_27838BA98;
    v15[4] = self;
    v16 = animationsCopy;
    v11 = MEMORY[0x223D698D0](v15);
    v12 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __99__CSMediaControlsViewController_coverSheetViewController_willChangeToLayout_animations_completion___block_invoke_2;
    v13[3] = &unk_27838BAC0;
    v14 = completionCopy;
    [v12 animateWithDuration:v11 animations:v13 completion:0.5];
  }

  else
  {
    animationsCopy[2](animationsCopy);
    completionCopy[2](completionCopy);
  }
}

uint64_t __99__CSMediaControlsViewController_coverSheetViewController_willChangeToLayout_animations_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updatePreferredContentSize];
  [*(a1 + 32) _layoutMediaControls];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)setContainerSize:(CGSize)size
{
  if (self->_containerSize.width != size.width || self->_containerSize.height != size.height)
  {
    self->_containerSize = size;
    [(CSMediaControlsViewController *)self _updatePreferredContentSize];
  }
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  if (objc_opt_respondsToSelector())
  {
    v5 = [(MRUCoverSheetViewController *)self->_mediaRemoteViewController visualStylingProviderForCategory:category];
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
    requiredVisualStyleCategories = [(MRUCoverSheetViewController *)self->_mediaRemoteViewController requiredVisualStyleCategories];
  }

  else
  {
    requiredVisualStyleCategories = MEMORY[0x277CBEBF8];
  }

  return requiredVisualStyleCategories;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  if (objc_opt_respondsToSelector())
  {
    [(MRUCoverSheetViewController *)self->_mediaRemoteViewController setVisualStylingProvider:providerCopy forCategory:category];
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
  view = [(MRUCoverSheetViewController *)self->_mediaRemoteViewController view];
  [(CSMediaControlsViewController *)self _suggestedFrameForMediaControls];
  [view setFrame:?];
}

- (void)_updatePersistentUpdatesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6 = self->_mediaRemoteViewController;
  v5 = [(CSMediaControlsViewController *)self _appearState]== 2 && enabledCopy;
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