@interface HUQuickControlMediaPlayerViewController
+ (id)controlItemPredicate;
- (HUQuickControlMediaPlayerViewController)initWithControlItems:(id)a3 home:(id)a4 itemUpdater:(id)a5 controlOrientation:(unint64_t)a6 preferredControl:(unint64_t)a7;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3;
- (void)_addMediaControlView;
- (void)_updateConstraints;
- (void)_updateMediaControlAppearanceForTraitCollection:(id)a3;
- (void)dealloc;
- (void)nowPlayingViewController:(id)a3 didChangeSizeWithAnimations:(id)a4 completion:(id)a5;
- (void)nowPlayingViewControllerDidChangeLayout:(id)a3;
- (void)platterViewController:(id)a3 didReceiveInteractionEvent:(id)a4;
- (void)platterViewController:(id)a3 didUpdateEndpointWithReason:(id)a4;
- (void)setPreferredFrameLayoutGuide:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation HUQuickControlMediaPlayerViewController

- (HUQuickControlMediaPlayerViewController)initWithControlItems:(id)a3 home:(id)a4 itemUpdater:(id)a5 controlOrientation:(unint64_t)a6 preferredControl:(unint64_t)a7
{
  v12 = a3;
  v27.receiver = self;
  v27.super_class = HUQuickControlMediaPlayerViewController;
  v13 = [(HUQuickControlViewController *)&v27 initWithControlItems:v12 home:a4 itemUpdater:a5 controlOrientation:a6 preferredControl:a7];
  v14 = v13;
  if (v13)
  {
    mediaControlViewControllerConstraints = v13->_mediaControlViewControllerConstraints;
    v13->_mediaControlViewControllerConstraints = MEMORY[0x277CBEBF8];

    v16 = [v12 na_firstObjectPassingTest:&__block_literal_global_13];
    v17 = [v16 mediaProfileContainer];
    v18 = [v17 hf_mediaRouteIdentifier];
    mediaRoutingIdentifier = v14->_mediaRoutingIdentifier;
    v14->_mediaRoutingIdentifier = v18;

    if (!v14->_mediaRoutingIdentifier)
    {
      v20 = [v16 mediaRoutingIdentifier];

      if (v20)
      {
        v21 = [v16 mediaRoutingIdentifier];
        v22 = v14->_mediaRoutingIdentifier;
        v14->_mediaRoutingIdentifier = v21;
      }
    }

    v14->_mediaAccessoryItemType = [v16 mediaAccessoryItemType];
    v23 = [v16 mediaProfileContainer];
    v24 = [v23 accessories];
    v25 = [v24 anyObject];

    v14->_siriEndPointAccessory = [v25 hf_isSiriEndpoint];
    v14->_speakerAccessory = [v25 hf_isDumbSpeaker];
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
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    [(HUQuickControlMediaPlayerViewController *)self _updateConstraints];
  }
}

+ (id)controlItemPredicate
{
  v2 = objc_opt_class();

  return [HUQuickControlSingleItemPredicate predicateWithControlItemClass:v2];
}

- (void)setPreferredFrameLayoutGuide:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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
  v8 = [(HUQuickControlViewController *)self preferredFrameLayoutGuide];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  objc_opt_class();
  v11 = [(HUQuickControlViewController *)self preferredFrameLayoutGuide];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
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

  v18 = [(HUQuickControlViewController *)self preferredFrameLayoutGuide];
  if ([v5 isEqual:v18])
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

- (void)platterViewController:(id)a3 didUpdateEndpointWithReason:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Media player view %@ updated endpoint with reason %@", &v8, 0x16u);
  }
}

- (void)platterViewController:(id)a3 didReceiveInteractionEvent:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Media player view %@ received interaction event from %@", &v8, 0x16u);
  }
}

- (void)nowPlayingViewController:(id)a3 didChangeSizeWithAnimations:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  objc_opt_class();
  v9 = [(HUQuickControlViewController *)self itemUpdater];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 collectionViewLayout];

  [v12 invalidateLayout];
  v13 = [(HUQuickControlMediaPlayerViewController *)self view];
  [v13 setNeedsLayout];

  v14 = MEMORY[0x277D75D18];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __107__HUQuickControlMediaPlayerViewController_nowPlayingViewController_didChangeSizeWithAnimations_completion___block_invoke;
  v19[3] = &unk_277DB8068;
  v19[4] = self;
  v20 = v7;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __107__HUQuickControlMediaPlayerViewController_nowPlayingViewController_didChangeSizeWithAnimations_completion___block_invoke_2;
  v17[3] = &unk_277DB8090;
  v17[4] = self;
  v18 = v8;
  v15 = v7;
  v16 = v8;
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

- (void)nowPlayingViewControllerDidChangeLayout:(id)a3
{
  objc_opt_class();
  v4 = [(HUQuickControlViewController *)self itemUpdater];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 collectionViewLayout];

  [v7 invalidateLayout];
}

- (void)_addMediaControlView
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HUQuickControlMediaPlayerViewController *)self mediaRoutingIdentifier];
    v31 = 138412290;
    v32 = v4;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Media Route %@; showing quick controls", &v31, 0xCu);
  }

  v5 = objc_alloc(MEMORY[0x277D268B8]);
  v6 = [(HUQuickControlMediaPlayerViewController *)self mediaRoutingIdentifier];
  v7 = [v5 initWithRouteUID:v6];
  [(HUQuickControlMediaPlayerViewController *)self setMediaControlsNowPlayingViewController:v7];

  v8 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  v9 = [v8 view];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  [v10 setLayout:2];

  if ([(HUQuickControlMediaPlayerViewController *)self isSiriEndPointAccessory]&& ![(HUQuickControlMediaPlayerViewController *)self isSpeakerAccessory])
  {
    v11 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    [v11 setLayout:4];
  }

  v12 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  [v12 setSupportsHorizontalLayout:1];

  v13 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  [v13 setContext:3];

  v14 = [MEMORY[0x277D14670] sharedInstance];
  v15 = [v14 hostProcess];

  if (v15 == 100)
  {
    v16 = [MEMORY[0x277D26740] _visualStylingProviderForRecipe:8 andCategory:1];
    v17 = [objc_alloc(MEMORY[0x277D268C0]) initWithVisualStylingProvider:v16];
    v18 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    [v18 setStylingProvider:v17];
  }

  else
  {
    v16 = objc_opt_new();
    v17 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    [v17 setStylingProvider:v16];
  }

  v19 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  [v19 setContentEdgeInsets:{24.0, 40.0, 24.0, 40.0}];

  v20 = [(HUQuickControlMediaPlayerViewController *)self traitCollection];
  [(HUQuickControlMediaPlayerViewController *)self _updateMediaControlAppearanceForTraitCollection:v20];

  v21 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  [(HUQuickControlMediaPlayerViewController *)self addChildViewController:v21];

  v22 = [(HUQuickControlMediaPlayerViewController *)self view];
  v23 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  v24 = [v23 view];
  [v22 addSubview:v24];

  [(HUQuickControlMediaPlayerViewController *)self _updateConstraints];
  v25 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  [v25 didMoveToParentViewController:self];

  v26 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  [v26 setDelegate:self];

  v27 = HFLogForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    v31 = 138412290;
    v32 = v28;
    _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "Setting HUHomePodMediaUIVendor to ->  self.mediaControlsNowPlayingViewController = %@", &v31, 0xCu);
  }

  v29 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  v30 = +[HUHomePodMediaUIVendor sharedInstance];
  [v30 setNowPlayingViewController:v29];
}

- (void)_updateMediaControlAppearanceForTraitCollection:(id)a3
{
  v4 = [a3 userInterfaceStyle];
  v5 = [(HUQuickControlMediaPlayerViewController *)self mediaControlViewController];
  v6 = v5;
  if (v4 == 2)
  {
    [v5 setStyle:0];

    [MEMORY[0x277D75348] systemDarkGrayColor];
  }

  else
  {
    [v5 setStyle:4];

    [MEMORY[0x277D75348] hf_mediaPlatterBackgroundColor];
  }
  v12 = ;
  v7 = v12;
  v8 = [v12 CGColor];
  v9 = [(HUQuickControlMediaPlayerViewController *)self mediaControlViewController];
  v10 = [v9 view];
  v11 = [v10 layer];
  [v11 setBackgroundColor:v8];
}

- (void)_updateConstraints
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = 0x277CCA000uLL;
  v4 = MEMORY[0x277CCAAD0];
  v5 = [(HUQuickControlMediaPlayerViewController *)self mediaControlViewControllerConstraints];
  [v4 deactivateConstraints:v5];

  v6 = [(HUQuickControlMediaPlayerViewController *)self viewHeightConstraint];
  [v6 setActive:0];

  v7 = [MEMORY[0x277D14670] sharedInstance];
  if ([v7 hostProcess] == 100)
  {
  }

  else
  {
    v8 = [MEMORY[0x277D14670] sharedInstance];
    v9 = [v8 hostProcess];

    if (v9 != 3)
    {
      v20 = 3.40282347e38;
      goto LABEL_9;
    }
  }

  v10 = [(HUQuickControlMediaPlayerViewController *)self view];
  [v10 bounds];
  v12 = v11;
  v13 = [MEMORY[0x277D759A0] mainScreen];
  v14 = [v13 fixedCoordinateSpace];
  [v14 bounds];
  v16 = v15;

  if (v12 <= v16)
  {
    v17 = 2.0;
  }

  else
  {
    v17 = 4.0;
  }

  v18 = [MEMORY[0x277D759A0] mainScreen];
  [v18 bounds];
  v20 = v19 + v17 * -20.0;

LABEL_9:
  v21 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  v22 = [v21 view];
  v23 = [(HUQuickControlMediaPlayerViewController *)self view];
  [v23 bounds];
  [v22 sizeThatFits:{v24, v20}];
  v26 = v25;
  v28 = v27;

  v29 = HFLogForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    v79.width = v26;
    v79.height = v28;
    v31 = NSStringFromCGSize(v79);
    v32 = [(HUQuickControlMediaPlayerViewController *)self view];
    [v32 bounds];
    v33 = NSStringFromCGRect(v80);
    *buf = 138412802;
    v73 = v30;
    v74 = 2112;
    v75 = v31;
    v76 = 2112;
    v77 = v33;
    _os_log_impl(&dword_20CEB6000, v29, OS_LOG_TYPE_DEFAULT, "** Inside _updateConstraints. self.mediaControlsNowPlayingViewController = %@, sizeThatFits returned by mediaControlsNowPlayingViewController = %@; self.view.bounds.size = %@", buf, 0x20u);
  }

  v34 = [(HUQuickControlViewController *)self preferredFrameLayoutGuide];

  if (v34)
  {
    v35 = HFLogForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [(HUQuickControlViewController *)self preferredFrameLayoutGuide];
      *buf = 138412290;
      v73 = v36;
      _os_log_impl(&dword_20CEB6000, v35, OS_LOG_TYPE_DEFAULT, "*** self.preferredFrameLayoutGuide = %@ ***", buf, 0xCu);
    }

    v70 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    v69 = [v70 view];
    v67 = [v69 topAnchor];
    v68 = [(HUQuickControlMediaPlayerViewController *)self view];
    v66 = [v68 safeAreaLayoutGuide];
    v65 = [v66 topAnchor];
    v64 = [v67 constraintEqualToAnchor:v65];
    v71[0] = v64;
    v63 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    v62 = [v63 view];
    v61 = [v62 heightAnchor];
    v60 = [v61 constraintEqualToConstant:v28];
    v71[1] = v60;
    v59 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    v58 = [v59 view];
    v56 = [v58 leadingAnchor];
    v57 = [(HUQuickControlMediaPlayerViewController *)self view];
    v55 = [v57 safeAreaLayoutGuide];
    v54 = [v55 leadingAnchor];
    v37 = [v56 constraintEqualToAnchor:v54];
    v71[2] = v37;
    v38 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    v39 = [v38 view];
    v40 = [v39 trailingAnchor];
    v41 = [(HUQuickControlMediaPlayerViewController *)self view];
    v42 = [v41 safeAreaLayoutGuide];
    v43 = [v42 trailingAnchor];
    v44 = [v40 constraintEqualToAnchor:v43];
    v71[3] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:4];
    [(HUQuickControlMediaPlayerViewController *)self setMediaControlViewControllerConstraints:v45];

    v46 = [(HUQuickControlMediaPlayerViewController *)self view];
    v47 = [v46 heightAnchor];
    v48 = [v47 constraintEqualToConstant:v28];
    [(HUQuickControlMediaPlayerViewController *)self setViewHeightConstraint:v48];

    v49 = [(HUQuickControlMediaPlayerViewController *)self viewHeightConstraint];
    [v49 setActive:1];

    v3 = 0x277CCA000;
  }

  else
  {
    [(HUQuickControlMediaPlayerViewController *)self setMediaControlViewControllerConstraints:MEMORY[0x277CBEBF8]];
  }

  v50 = HFLogForCategory();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = [(HUQuickControlMediaPlayerViewController *)self mediaControlViewControllerConstraints];
    *buf = 138412290;
    v73 = v51;
    _os_log_impl(&dword_20CEB6000, v50, OS_LOG_TYPE_DEFAULT, "*** Activating constraints = %@ ***", buf, 0xCu);
  }

  v52 = *(v3 + 2768);
  v53 = [(HUQuickControlMediaPlayerViewController *)self mediaControlViewControllerConstraints];
  [v52 activateConstraints:v53];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v8 = a3;
  v5 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  if (v5)
  {
  }

  else
  {
    v6 = [(HUQuickControlMediaPlayerViewController *)self mediaControlViewController];

    v7 = v8;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  [(HUQuickControlMediaPlayerViewController *)self _updateMediaControlAppearanceForTraitCollection:v8];
  v7 = v8;
LABEL_5:
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3
{
  v4 = [(HUQuickControlMediaPlayerViewController *)self parentViewController];
  do
  {
    v5 = v4;
    v4 = [v4 parentViewController];

    v6 = [(HUQuickControlMediaPlayerViewController *)self parentViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      if (v4)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }

    v7 = [v4 parentViewController];
  }

  while (v7);
  if (v4)
  {
LABEL_5:
    v8 = [v4 view];
    [v8 frame];
    v10 = v9;

    v11 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
    v12 = [v11 view];
    [v12 frame];
    v14 = v13;

    v15 = [HUIntrinsicSizeDescriptor descriptorWithIntrinsicSize:0 flexType:v10, v14];
    goto LABEL_8;
  }

LABEL_7:
  v16 = [(HUQuickControlMediaPlayerViewController *)self mediaControlsNowPlayingViewController];
  v17 = [v16 view];
  [v17 frame];
  v15 = [HUIntrinsicSizeDescriptor descriptorWithIntrinsicSize:0 flexType:v18, v19];

LABEL_8:

  return v15;
}

@end