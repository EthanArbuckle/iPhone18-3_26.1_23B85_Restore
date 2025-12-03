@interface HUQuickControlMediaPlayerViewController
+ (id)controlItemPredicate;
- (HUQuickControlMediaPlayerViewController)initWithControlItems:(id)items home:(id)home itemUpdater:(id)updater controlOrientation:(unint64_t)orientation preferredControl:(unint64_t)control;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size;
- (void)_addMediaControlView;
- (void)_updateConstraints;
- (void)_updateMediaControlAppearanceForTraitCollection:(id)collection;
- (void)dealloc;
- (void)nowPlayingViewController:(id)controller didChangeSizeWithAnimations:(id)animations completion:(id)completion;
- (void)nowPlayingViewControllerDidChangeLayout:(id)layout;
- (void)platterViewController:(id)controller didReceiveInteractionEvent:(id)event;
- (void)platterViewController:(id)controller didUpdateEndpointWithReason:(id)reason;
- (void)setPreferredFrameLayoutGuide:(id)guide;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation HUQuickControlMediaPlayerViewController

- (HUQuickControlMediaPlayerViewController)initWithControlItems:(id)items home:(id)home itemUpdater:(id)updater controlOrientation:(unint64_t)orientation preferredControl:(unint64_t)control
{
  itemsCopy = items;
  v27.receiver = self;
  v27.super_class = HUQuickControlMediaPlayerViewController;
  v13 = [(HUQuickControlViewController *)&v27 initWithControlItems:itemsCopy home:home itemUpdater:updater controlOrientation:orientation preferredControl:control];
  v14 = v13;
  if (v13)
  {
    mediaControlViewControllerConstraints = v13->_mediaControlViewControllerConstraints;
    v13->_mediaControlViewControllerConstraints = MEMORY[0x277CBEBF8];

    v16 = [itemsCopy na_firstObjectPassingTest:&__block_literal_global_13];
    mediaProfileContainer = [v16 mediaProfileContainer];
    hf_mediaRouteIdentifier = [mediaProfileContainer hf_mediaRouteIdentifier];
    mediaRoutingIdentifier = v14->_mediaRoutingIdentifier;
    v14->_mediaRoutingIdentifier = hf_mediaRouteIdentifier;

    if (!v14->_mediaRoutingIdentifier)
    {
      mediaRoutingIdentifier = [v16 mediaRoutingIdentifier];

      if (mediaRoutingIdentifier)
      {
        mediaRoutingIdentifier2 = [v16 mediaRoutingIdentifier];
        v22 = v14->_mediaRoutingIdentifier;
        v14->_mediaRoutingIdentifier = mediaRoutingIdentifier2;
      }
    }

    v14->_mediaAccessoryItemType = [v16 mediaAccessoryItemType];
    mediaProfileContainer2 = [v16 mediaProfileContainer];
    accessories = [mediaProfileContainer2 accessories];
    anyObject = [accessories anyObject];

    v14->_siriEndPointAccessory = [anyObject hf_isSiriEndpoint];
    v14->_speakerAccessory = [anyObject hf_isDumbSpeaker];
  }

  return v14;
}

uint64_t __117__HUQuickControlMediaPlayerViewController_initWithControlItems_home_itemUpdater_controlOrientation_preferredControl___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)dealloc
{
  v3 = +[HUHomePodMediaUIVendor sharedInstance];
  [v3 setNowPlayingViewController:0];

  v4.receiver = self;
  v4.super_class = HUQuickControlMediaPlayerViewController;
  [(HUQuickControlMediaPlayerViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUQuickControlMediaPlayerViewController;
  [(HUQuickControlMediaPlayerViewController *)&v3 viewDidLoad];
  [(HUQuickControlMediaPlayerViewController *)self _addMediaControlView];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = HUQuickControlMediaPlayerViewController;
  [(HUQuickControlMediaPlayerViewController *)&v5 viewDidLayoutSubviews];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(HUQuickControlMediaPlayerViewController *)self _updateConstraints];
  }
}

+ (id)controlItemPredicate
{
  v2 = objc_opt_class();

  return [HUQuickControlSingleItemPredicate predicateWithControlItemClass:v2];
}

- (void)setPreferredFrameLayoutGuide:(id)guide
{
  v28 = *MEMORY[0x277D85DE8];
  guideCopy = guide;
  objc_opt_class();
  v5 = guideCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  preferredFrameLayoutGuide = [(HUQuickControlViewController *)self preferredFrameLayoutGuide];
  if (objc_opt_isKindOfClass())
  {
    v9 = preferredFrameLayoutGuide;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  objc_opt_class();
  preferredFrameLayoutGuide2 = [(HUQuickControlViewController *)self preferredFrameLayoutGuide];
  if (objc_opt_isKindOfClass())
  {
    v12 = preferredFrameLayoutGuide2;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v7)
  {
    [v7 layoutFrame];
    v32.origin.x = 0.0;
    v32.origin.y = 0.0;
    v32.size.width = 0.0;
    v32.size.height = 0.0;
    v14 = CGRectEqualToRect(v29, v32);
    if (v10)
    {
      goto LABEL_12;
    }

LABEL_15:
    LOBYTE(v15) = 0;
    if (v13)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v14 = 0;
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_12:
  [v10 layoutFrame];
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = 0.0;
  v33.size.height = 0.0;
  v15 = !CGRectEqualToRect(v30, v33);
  if (v13)
  {
LABEL_13:
    [v13 bounds];
    v34.origin.x = 0.0;
    v34.origin.y = 0.0;
    v34.size.width = 0.0;
    v34.size.height = 0.0;
    v16 = !CGRectEqualToRect(v31, v34);
    goto LABEL_17;
  }

LABEL_16:
  LOBYTE(v16) = 0;
LABEL_17:
  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v21 = v5;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "^^^^ preferredFrameLayoutGuide: [%@] newLayoutGuide: [%@] currentLayoutGuide: [%@] currentLayoutGuideView: [%@] ^^^^^", buf, 0x2Au);
  }

  preferredFrameLayoutGuide3 = [(HUQuickControlViewController *)self preferredFrameLayoutGuide];
  if ([v5 isEqual:preferredFrameLayoutGuide3])
  {
  }

  else
  {
    if (v14)
    {

      if (v15 || v16)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v19.receiver = self;
    v19.super_class = HUQuickControlMediaPlayerViewController;
    [(HUQuickControlViewController *)&v19 setPreferredFrameLayoutGuide:v5];
    [(HUQuickControlMediaPlayerViewController *)self _updateConstraints];
  }

LABEL_26:
}

- (void)platterViewController:(id)controller didUpdateEndpointWithReason:(id)reason
{
  v12 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  reasonCopy = reason;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = controllerCopy;
    v10 = 2112;
    v11 = reasonCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Media player view %@ updated endpoint with reason %@", &v8, 0x16u);
  }
}

- (void)platterViewController:(id)controller didReceiveInteractionEvent:(id)event
{
  v12 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  eventCopy = event;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = controllerCopy;
    v10 = 2112;
    v11 = eventCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Media player view %@ received interaction event from %@", &v8, 0x16u);
  }
}

- (void)nowPlayingViewController:(id)controller didChangeSizeWithAnimations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  completionCopy = completion;
  objc_opt_class();
  itemUpdater = [(HUQuickControlViewController *)self itemUpdater];
  if (objc_opt_isKindOfClass())
  {
    v10 = itemUpdater;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  collectionViewLayout = [v11 collectionViewLayout];

  [collectionViewLayout invalidateLayout];
  view = [(HUQuickControlMediaPlayerViewController *)self view];
  [view setNeedsLayout];

  v14 = MEMORY[0x277D75D18];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __107__HUQuickControlMediaPlayerViewController_nowPlayingViewController_didChangeSizeWithAnimations_completion___block_invoke;
  v19[3] = &unk_277DB8068;
  v19[4] = self;
  v20 = animationsCopy;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __107__HUQuickControlMediaPlayerViewController_nowPlayingViewController_didChangeSizeWithAnimations_completion___block_invoke_2;
  v17[3] = &unk_277DB8090;
  v17[4] = self;
  v18 = completionCopy;
  v15 = animationsCopy;
  v16 = completionCopy;
  [v14 animateWithDuration:4 delay:v19 usingSpringWithDamping:v17 initialSpringVelocity:0.7 options:0.0 animations:0.8165 completion:0.0];
}

uint64_t __107__HUQuickControlMediaPlayerViewController_nowPlayingViewController_didChangeSizeWithAnimations_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 _updateConstraints];
}

uint64_t __107__HUQuickControlMediaPlayerViewController_nowPlayingViewController_didChangeSizeWithAnimations_completion___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [*(result + 32) mediaControlsNowPlayingViewController];
    v4 = [v3 view];
    [v4 layoutIfNeeded];

    v5 = [*(v2 + 32) view];
    [v5 layoutIfNeeded];

    result = *(v2 + 40);
    if (result)
    {
      v6 = *(result + 16);

      return v6();
    }
  }

  return result;
}

- (void)nowPlayingViewControllerDidChangeLayout:(id)layout
{
  objc_opt_class();
  itemUpdater = [(HUQuickControlViewController *)self itemUpdater];
  if (objc_opt_isKindOfClass())
  {
    v5 = itemUpdater;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  collectionViewLayout = [v6 collectionViewLayout];

  [collectionViewLayout invalidateLayout];
}

- (void)_addMediaControlView
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mediaRoutingIdentifier = [(HUQuickControlMediaPlayerViewController *)self mediaRoutingIdentifier];
    v31 = 138412290;
    v32 = mediaRoutingIdentifier;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Media Route %@; showing quick controls", &v31, 0xCu);
  }

  v5 = objc_alloc(MEMORY[0x277D268B8]);
  mediaRoutingIdentifier2 = [(HUQuickControlMediaPlayerViewController *)self mediaRoutingIdentifier];
  v7 = [v5 initWithRouteUID:mediaRoutingIdentifier2];
  [(HUQuickControlMediaPlayerViewController *)self setMediaControlsNowPlayingViewController:v7];

  mediaControlsNowPlayingViewController = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  view = [mediaControlsNowPlayingViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  mediaControlsNowPlayingViewController2 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  [mediaControlsNowPlayingViewController2 setLayout:2];

  if ([(HUQuickControlMediaPlayerViewController *)self isSiriEndPointAccessory]&& ![(HUQuickControlMediaPlayerViewController *)self isSpeakerAccessory])
  {
    mediaControlsNowPlayingViewController3 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    [mediaControlsNowPlayingViewController3 setLayout:4];
  }

  mediaControlsNowPlayingViewController4 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  [mediaControlsNowPlayingViewController4 setSupportsHorizontalLayout:1];

  mediaControlsNowPlayingViewController5 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  [mediaControlsNowPlayingViewController5 setContext:3];

  mEMORY[0x277D14670] = [MEMORY[0x277D14670] sharedInstance];
  hostProcess = [mEMORY[0x277D14670] hostProcess];

  if (hostProcess == 100)
  {
    v16 = [MEMORY[0x277D26740] _visualStylingProviderForRecipe:8 andCategory:1];
    mediaControlsNowPlayingViewController7 = [objc_alloc(MEMORY[0x277D268C0]) initWithVisualStylingProvider:v16];
    mediaControlsNowPlayingViewController6 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    [mediaControlsNowPlayingViewController6 setStylingProvider:mediaControlsNowPlayingViewController7];
  }

  else
  {
    v16 = objc_opt_new();
    mediaControlsNowPlayingViewController7 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    [mediaControlsNowPlayingViewController7 setStylingProvider:v16];
  }

  mediaControlsNowPlayingViewController8 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  [mediaControlsNowPlayingViewController8 setContentEdgeInsets:{24.0, 40.0, 24.0, 40.0}];

  traitCollection = [(HUQuickControlMediaPlayerViewController *)self traitCollection];
  [(HUQuickControlMediaPlayerViewController *)self _updateMediaControlAppearanceForTraitCollection:traitCollection];

  mediaControlsNowPlayingViewController9 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  [(HUQuickControlMediaPlayerViewController *)self addChildViewController:mediaControlsNowPlayingViewController9];

  view2 = [(HUQuickControlMediaPlayerViewController *)self view];
  mediaControlsNowPlayingViewController10 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  view3 = [mediaControlsNowPlayingViewController10 view];
  [view2 addSubview:view3];

  [(HUQuickControlMediaPlayerViewController *)self _updateConstraints];
  mediaControlsNowPlayingViewController11 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  [mediaControlsNowPlayingViewController11 didMoveToParentViewController:self];

  mediaControlsNowPlayingViewController12 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  [mediaControlsNowPlayingViewController12 setDelegate:self];

  v27 = HFLogForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    mediaControlsNowPlayingViewController13 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    v31 = 138412290;
    v32 = mediaControlsNowPlayingViewController13;
    _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "Setting HUHomePodMediaUIVendor to ->  self.mediaControlsNowPlayingViewController = %@", &v31, 0xCu);
  }

  mediaControlsNowPlayingViewController14 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  v30 = +[HUHomePodMediaUIVendor sharedInstance];
  [v30 setNowPlayingViewController:mediaControlsNowPlayingViewController14];
}

- (void)_updateMediaControlAppearanceForTraitCollection:(id)collection
{
  userInterfaceStyle = [collection userInterfaceStyle];
  mediaControlViewController = [(HUQuickControlMediaPlayerViewController *)self mediaControlViewController];
  v6 = mediaControlViewController;
  if (userInterfaceStyle == 2)
  {
    [mediaControlViewController setStyle:0];

    [MEMORY[0x277D75348] systemDarkGrayColor];
  }

  else
  {
    [mediaControlViewController setStyle:4];

    [MEMORY[0x277D75348] hf_mediaPlatterBackgroundColor];
  }
  v12 = ;
  v7 = v12;
  cGColor = [v12 CGColor];
  mediaControlViewController2 = [(HUQuickControlMediaPlayerViewController *)self mediaControlViewController];
  view = [mediaControlViewController2 view];
  layer = [view layer];
  [layer setBackgroundColor:cGColor];
}

- (void)_updateConstraints
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = 0x277CCA000uLL;
  v4 = MEMORY[0x277CCAAD0];
  mediaControlViewControllerConstraints = [(HUQuickControlMediaPlayerViewController *)self mediaControlViewControllerConstraints];
  [v4 deactivateConstraints:mediaControlViewControllerConstraints];

  viewHeightConstraint = [(HUQuickControlMediaPlayerViewController *)self viewHeightConstraint];
  [viewHeightConstraint setActive:0];

  mEMORY[0x277D14670] = [MEMORY[0x277D14670] sharedInstance];
  if ([mEMORY[0x277D14670] hostProcess] == 100)
  {
  }

  else
  {
    mEMORY[0x277D14670]2 = [MEMORY[0x277D14670] sharedInstance];
    hostProcess = [mEMORY[0x277D14670]2 hostProcess];

    if (hostProcess != 3)
    {
      v20 = 3.40282347e38;
      goto LABEL_9;
    }
  }

  view = [(HUQuickControlMediaPlayerViewController *)self view];
  [view bounds];
  v12 = v11;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  fixedCoordinateSpace = [mainScreen fixedCoordinateSpace];
  [fixedCoordinateSpace bounds];
  v16 = v15;

  if (v12 <= v16)
  {
    v17 = 2.0;
  }

  else
  {
    v17 = 4.0;
  }

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  v20 = v19 + v17 * -20.0;

LABEL_9:
  mediaControlsNowPlayingViewController = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  view2 = [mediaControlsNowPlayingViewController view];
  view3 = [(HUQuickControlMediaPlayerViewController *)self view];
  [view3 bounds];
  [view2 sizeThatFits:{v24, v20}];
  v26 = v25;
  v28 = v27;

  v29 = HFLogForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    mediaControlsNowPlayingViewController2 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    v79.width = v26;
    v79.height = v28;
    v31 = NSStringFromCGSize(v79);
    view4 = [(HUQuickControlMediaPlayerViewController *)self view];
    [view4 bounds];
    v33 = NSStringFromCGRect(v80);
    *buf = 138412802;
    v73 = mediaControlsNowPlayingViewController2;
    v74 = 2112;
    v75 = v31;
    v76 = 2112;
    v77 = v33;
    _os_log_impl(&dword_20CEB6000, v29, OS_LOG_TYPE_DEFAULT, "** Inside _updateConstraints. self.mediaControlsNowPlayingViewController = %@, sizeThatFits returned by mediaControlsNowPlayingViewController = %@; self.view.bounds.size = %@", buf, 0x20u);
  }

  preferredFrameLayoutGuide = [(HUQuickControlViewController *)self preferredFrameLayoutGuide];

  if (preferredFrameLayoutGuide)
  {
    v35 = HFLogForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      preferredFrameLayoutGuide2 = [(HUQuickControlViewController *)self preferredFrameLayoutGuide];
      *buf = 138412290;
      v73 = preferredFrameLayoutGuide2;
      _os_log_impl(&dword_20CEB6000, v35, OS_LOG_TYPE_DEFAULT, "*** self.preferredFrameLayoutGuide = %@ ***", buf, 0xCu);
    }

    mediaControlsNowPlayingViewController3 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    view5 = [mediaControlsNowPlayingViewController3 view];
    topAnchor = [view5 topAnchor];
    view6 = [(HUQuickControlMediaPlayerViewController *)self view];
    safeAreaLayoutGuide = [view6 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v64 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v71[0] = v64;
    mediaControlsNowPlayingViewController4 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    view7 = [mediaControlsNowPlayingViewController4 view];
    heightAnchor = [view7 heightAnchor];
    v60 = [heightAnchor constraintEqualToConstant:v28];
    v71[1] = v60;
    mediaControlsNowPlayingViewController5 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    view8 = [mediaControlsNowPlayingViewController5 view];
    leadingAnchor = [view8 leadingAnchor];
    view9 = [(HUQuickControlMediaPlayerViewController *)self view];
    safeAreaLayoutGuide2 = [view9 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v71[2] = v37;
    mediaControlsNowPlayingViewController6 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    view10 = [mediaControlsNowPlayingViewController6 view];
    trailingAnchor = [view10 trailingAnchor];
    view11 = [(HUQuickControlMediaPlayerViewController *)self view];
    safeAreaLayoutGuide3 = [view11 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
    v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v71[3] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:4];
    [(HUQuickControlMediaPlayerViewController *)self setMediaControlViewControllerConstraints:v45];

    view12 = [(HUQuickControlMediaPlayerViewController *)self view];
    heightAnchor2 = [view12 heightAnchor];
    v48 = [heightAnchor2 constraintEqualToConstant:v28];
    [(HUQuickControlMediaPlayerViewController *)self setViewHeightConstraint:v48];

    viewHeightConstraint2 = [(HUQuickControlMediaPlayerViewController *)self viewHeightConstraint];
    [viewHeightConstraint2 setActive:1];

    v3 = 0x277CCA000;
  }

  else
  {
    [(HUQuickControlMediaPlayerViewController *)self setMediaControlViewControllerConstraints:MEMORY[0x277CBEBF8]];
  }

  v50 = HFLogForCategory();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    mediaControlViewControllerConstraints2 = [(HUQuickControlMediaPlayerViewController *)self mediaControlViewControllerConstraints];
    *buf = 138412290;
    v73 = mediaControlViewControllerConstraints2;
    _os_log_impl(&dword_20CEB6000, v50, OS_LOG_TYPE_DEFAULT, "*** Activating constraints = %@ ***", buf, 0xCu);
  }

  v52 = *(v3 + 2768);
  mediaControlViewControllerConstraints3 = [(HUQuickControlMediaPlayerViewController *)self mediaControlViewControllerConstraints];
  [v52 activateConstraints:mediaControlViewControllerConstraints3];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  mediaControlsNowPlayingViewController = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  if (mediaControlsNowPlayingViewController)
  {
  }

  else
  {
    mediaControlViewController = [(HUQuickControlMediaPlayerViewController *)self mediaControlViewController];

    v7 = collectionCopy;
    if (!mediaControlViewController)
    {
      goto LABEL_5;
    }
  }

  [(HUQuickControlMediaPlayerViewController *)self _updateMediaControlAppearanceForTraitCollection:collectionCopy];
  v7 = collectionCopy;
LABEL_5:
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size
{
  parentViewController = [(HUQuickControlMediaPlayerViewController *)self parentViewController];
  do
  {
    v5 = parentViewController;
    parentViewController = [parentViewController parentViewController];

    parentViewController2 = [(HUQuickControlMediaPlayerViewController *)self parentViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      if (parentViewController)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }

    v4ParentViewController = [parentViewController parentViewController];
  }

  while (v4ParentViewController);
  if (parentViewController)
  {
LABEL_5:
    view = [parentViewController view];
    [view frame];
    v10 = v9;

    mediaControlsNowPlayingViewController = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    view2 = [mediaControlsNowPlayingViewController view];
    [view2 frame];
    v14 = v13;

    v15 = [HUIntrinsicSizeDescriptor descriptorWithIntrinsicSize:0 flexType:v10, v14];
    goto LABEL_8;
  }

LABEL_7:
  mediaControlsNowPlayingViewController2 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  view3 = [mediaControlsNowPlayingViewController2 view];
  [view3 frame];
  v15 = [HUIntrinsicSizeDescriptor descriptorWithIntrinsicSize:0 flexType:v18, v19];

LABEL_8:

  return v15;
}

@end