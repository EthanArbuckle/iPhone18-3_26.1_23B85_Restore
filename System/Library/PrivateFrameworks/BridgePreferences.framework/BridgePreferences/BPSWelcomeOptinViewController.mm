@interface BPSWelcomeOptinViewController
+ (id)expressModeSettingsItem:(id)item;
+ (int64_t)obkContentLayout;
+ (unint64_t)contentLayout;
- (BPSBuddyControllerDelegate)delegate;
- (BPSWelcomeOptinViewController)init;
- (id)_baseIdentifier;
- (id)_learnMoreButtonPrivacyTitle;
- (id)alternateButtonTitle;
- (id)learnMoreButtonTitle;
- (id)localizedInformativeText;
- (id)localizedTitle;
- (id)okayButtonTitle;
- (id)suggestedButtonTitle;
- (id)tapToRadarMetadata;
- (void)_addButtonObservers;
- (void)_didTapPrivacyAccept:(id)accept;
- (void)_endTapToRadarActivity;
- (void)_learnMoreButtonPrivacyPressed:(id)pressed;
- (void)_refreshButtonTray;
- (void)_removeButtonObservers;
- (void)_startTapToRadarActivity;
- (void)addFollowUpForPageAndDevice:(id)device withCompletion:(id)completion;
- (void)addFollowUpForPageWithCompletion:(id)completion;
- (void)alternateButtonPressed:(id)pressed;
- (void)applyConfirmedOptin:(BOOL)optin;
- (void)dealloc;
- (void)learnMoreButtonPressed:(id)pressed;
- (void)markPaneAsSkipped;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)okayButtonPressed:(id)pressed;
- (void)openTapToRadar;
- (void)refreshViews;
- (void)removeFollowupForPageWithCompletion:(id)completion;
- (void)showOptinConfirmationAlert:(id)alert optinChoice:(BOOL)choice;
- (void)suggestedButtonPressed:(id)pressed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BPSWelcomeOptinViewController

- (BPSWelcomeOptinViewController)init
{
  obkContentLayout = [objc_opt_class() obkContentLayout];
  v9.receiver = self;
  v9.super_class = BPSWelcomeOptinViewController;
  v4 = [(BPSWelcomeOptinViewController *)&v9 initWithTitle:&stru_285406330 detailText:0 icon:0 contentLayout:obkContentLayout];
  v5 = v4;
  if (v4 && [(BPSWelcomeOptinViewController *)v4 wantsAlternateChoicePillButton]&& [(BPSWelcomeOptinViewController *)v5 wantsAlternateChoiceSystemButton])
  {
    v6 = bps_setup_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_241E74000, v6, OS_LOG_TYPE_DEFAULT, "Declared CONFLICTING Alternate Button Choices! Choose either BPSWelcomeOptinLayoutStyleAlternateChoicePillButton or BPSWelcomeOptinLayoutStyleAlternateChoiceSystemButton", v8, 2u);
    }
  }

  return v5;
}

- (void)dealloc
{
  [(BPSWelcomeOptinViewController *)self _removeButtonObservers];
  v3.receiver = self;
  v3.super_class = BPSWelcomeOptinViewController;
  [(BPSWelcomeOptinViewController *)&v3 dealloc];
}

- (id)suggestedButtonTitle
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(BPSWelcomeOptinViewController *)self wantsSuggestedChoicePillButton]|| [(BPSWelcomeOptinViewController *)self wantsSuggestedChoiceLinkButton])
  {
    v3 = bps_setup_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[BPSWelcomeOptinViewController suggestedButtonTitle]";
      _os_log_impl(&dword_241E74000, v3, OS_LOG_TYPE_DEFAULT, "Wants Suggested Choice Button so %s should be overridden by subclasses", &v5, 0xCu);
    }
  }

  return 0;
}

- (id)alternateButtonTitle
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(BPSWelcomeOptinViewController *)self wantsAlternateChoicePillButton]|| [(BPSWelcomeOptinViewController *)self wantsAlternateChoiceSystemButton])
  {
    v3 = bps_setup_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[BPSWelcomeOptinViewController alternateButtonTitle]";
      _os_log_impl(&dword_241E74000, v3, OS_LOG_TYPE_DEFAULT, "Wants Alternate Choice Button so %s should be overridden by subclasses", &v5, 0xCu);
    }
  }

  return 0;
}

- (id)learnMoreButtonTitle
{
  v8 = *MEMORY[0x277D85DE8];
  if ([(BPSWelcomeOptinViewController *)self wantsLearnMoreButton])
  {
    if ([(BPSWelcomeOptinViewController *)self wantsToUseLearnMoreButtonForPrivacyBundles])
    {
      _learnMoreButtonPrivacyTitle = [(BPSWelcomeOptinViewController *)self _learnMoreButtonPrivacyTitle];
      goto LABEL_9;
    }

    v4 = bps_setup_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[BPSWelcomeOptinViewController learnMoreButtonTitle]";
      _os_log_impl(&dword_241E74000, v4, OS_LOG_TYPE_DEFAULT, "Wants Learn More Button so %s should be overridden by subclasses", &v6, 0xCu);
    }
  }

  _learnMoreButtonPrivacyTitle = 0;
LABEL_9:

  return _learnMoreButtonPrivacyTitle;
}

- (id)okayButtonTitle
{
  v6 = *MEMORY[0x277D85DE8];
  if ([(BPSWelcomeOptinViewController *)self wantsOkayPillButton])
  {
    v2 = bps_setup_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[BPSWelcomeOptinViewController okayButtonTitle]";
      _os_log_impl(&dword_241E74000, v2, OS_LOG_TYPE_DEFAULT, "Wants OkayPillButton Button so %s should be overridden by subclasses", &v4, 0xCu);
    }
  }

  return 0;
}

- (void)suggestedButtonPressed:(id)pressed
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(BPSWelcomeOptinViewController *)self wantsSuggestedChoicePillButton]|| [(BPSWelcomeOptinViewController *)self wantsSuggestedChoiceLinkButton])
  {
    v4 = bps_setup_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[BPSWelcomeOptinViewController suggestedButtonPressed:]";
      _os_log_impl(&dword_241E74000, v4, OS_LOG_TYPE_DEFAULT, "Wants Suggested Choice Button so %s should be overridden by subclasses", &v5, 0xCu);
    }
  }
}

- (void)alternateButtonPressed:(id)pressed
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(BPSWelcomeOptinViewController *)self wantsAlternateChoicePillButton]&& [(BPSWelcomeOptinViewController *)self wantsAlternateChoiceSystemButton])
  {
    v4 = bps_setup_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[BPSWelcomeOptinViewController alternateButtonPressed:]";
      _os_log_impl(&dword_241E74000, v4, OS_LOG_TYPE_DEFAULT, "Wants Alternate Choice Button so %s should be overridden by subclasses", &v5, 0xCu);
    }
  }
}

- (void)learnMoreButtonPressed:(id)pressed
{
  v8 = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  if ([(BPSWelcomeOptinViewController *)self wantsLearnMoreButton])
  {
    if ([(BPSWelcomeOptinViewController *)self wantsToUseLearnMoreButtonForPrivacyBundles])
    {
      [(BPSWelcomeOptinViewController *)self _learnMoreButtonPrivacyPressed:pressedCopy];
    }

    else
    {
      v5 = bps_setup_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "[BPSWelcomeOptinViewController learnMoreButtonPressed:]";
        _os_log_impl(&dword_241E74000, v5, OS_LOG_TYPE_DEFAULT, "Wants Learn More Button so %s should be overridden by subclasses", &v6, 0xCu);
      }
    }
  }
}

- (void)okayButtonPressed:(id)pressed
{
  v6 = *MEMORY[0x277D85DE8];
  if ([(BPSWelcomeOptinViewController *)self wantsOkayPillButton])
  {
    v3 = bps_setup_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[BPSWelcomeOptinViewController okayButtonPressed:]";
      _os_log_impl(&dword_241E74000, v3, OS_LOG_TYPE_DEFAULT, "Wants OkayPillButton Button so %s should be overridden by subclasses", &v4, 0xCu);
    }
  }
}

+ (int64_t)obkContentLayout
{
  if ([self contentLayout] == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (unint64_t)contentLayout
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_28540EEE0];
  v4 = NSStringFromClass(self);
  v5 = [v3 containsObject:v4];

  v6 = bps_setup_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = NSStringFromClass(self);
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_241E74000, v6, OS_LOG_TYPE_DEFAULT, "%@ opted into BPSWelcomeOptinContentLayoutContentViewAboveHeader", &v12, 0xCu);
    }

    v9 = 1;
  }

  else
  {
    if (v7)
    {
      v10 = NSStringFromClass(self);
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_241E74000, v6, OS_LOG_TYPE_DEFAULT, "%@ opted into BPSWelcomeOptinContentLayoutHeaderAboveContentView", &v12, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (void)viewDidLoad
{
  v74 = *MEMORY[0x277D85DE8];
  v71.receiver = self;
  v71.super_class = BPSWelcomeOptinViewController;
  [(OBBaseWelcomeController *)&v71 viewDidLoad];
  clearColor = [MEMORY[0x277D75348] clearColor];
  contentView = [(BPSWelcomeOptinViewController *)self contentView];
  [contentView setBackgroundColor:clearColor];

  headerView = [(BPSWelcomeOptinViewController *)self headerView];
  LODWORD(v6) = 1036831949;
  [headerView setTitleHyphenationFactor:v6];

  if ([(BPSWelcomeOptinViewController *)self wantsToShowWatchHW])
  {
    v7 = [BPSIllustratedWatchView alloc];
    v8 = [(BPSIllustratedWatchView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    illustratedWatchView = self->_illustratedWatchView;
    self->_illustratedWatchView = v8;

    contentView2 = [(BPSWelcomeOptinViewController *)self contentView];
    [contentView2 addSubview:self->_illustratedWatchView];

    [(BPSIllustratedWatchView *)self->_illustratedWatchView setTranslatesAutoresizingMaskIntoConstraints:0];
    if ([(BPSWelcomeOptinViewController *)self optOutOfSemiCompactWatchHardwareAsset])
    {
      [(BPSIllustratedWatchView *)self->_illustratedWatchView setUsingSemiCompactWatchAsset:0];
    }

    if (-[BPSIllustratedWatchView usingSemiCompactWatchAsset](self->_illustratedWatchView, "usingSemiCompactWatchAsset") && [objc_opt_class() contentLayout] == 1)
    {
      [(BPSIllustratedWatchView *)self->_illustratedWatchView setAllowUpScaling:1];
      [(BPSIllustratedWatchView *)self->_illustratedWatchView setShouldBeVerticallyCentered:1];
      [(BPSIllustratedWatchView *)self->_illustratedWatchView idealAssetHeight];
      v12 = v11;
      view = [(BPSWelcomeOptinViewController *)self view];
      [view bounds];
      v15 = v14;

      v16 = [MEMORY[0x277CCAE60] valueWithCGSize:{v15, v12}];
      [(BPSIllustratedWatchView *)self->_illustratedWatchView setPreferredCGSizeValue:v16];

      contentView3 = [(BPSWelcomeOptinViewController *)self contentView];
      heightAnchor = [contentView3 heightAnchor];
      [(BPSIllustratedWatchView *)self->_illustratedWatchView idealContainerHeight];
      v19 = [heightAnchor constraintEqualToConstant:?];
      [v19 setActive:1];
    }

    topAnchor = [(BPSIllustratedWatchView *)self->_illustratedWatchView topAnchor];
    contentView4 = [(BPSWelcomeOptinViewController *)self contentView];
    topAnchor2 = [contentView4 topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v23 setActive:1];

    bottomAnchor = [(BPSIllustratedWatchView *)self->_illustratedWatchView bottomAnchor];
    contentView5 = [(BPSWelcomeOptinViewController *)self contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    watchViewBottomConstraint = self->_watchViewBottomConstraint;
    self->_watchViewBottomConstraint = v27;

    [(NSLayoutConstraint *)self->_watchViewBottomConstraint setActive:1];
    centerXAnchor = [(BPSIllustratedWatchView *)self->_illustratedWatchView centerXAnchor];
    view2 = [(BPSWelcomeOptinViewController *)self view];
    centerXAnchor2 = [view2 centerXAnchor];
    v32 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v32 setActive:1];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__BPSWelcomeOptinViewController_viewDidLoad__block_invoke;
  aBlock[3] = &unk_278D23510;
  aBlock[4] = self;
  v33 = _Block_copy(aBlock);
  suggestedButtonTitle = [(BPSWelcomeOptinViewController *)self suggestedButtonTitle];
  if (suggestedButtonTitle || [(BPSWelcomeOptinViewController *)self wantsSuggestedChoicePillButton])
  {
  }

  else if (![(BPSWelcomeOptinViewController *)self wantsSuggestedChoiceLinkButton])
  {
    v42 = 0;
    goto LABEL_17;
  }

  wantsSuggestedChoicePillButton = [(BPSWelcomeOptinViewController *)self wantsSuggestedChoicePillButton];
  if (wantsSuggestedChoicePillButton)
  {
    boldButton = [MEMORY[0x277D37618] boldButton];
    [(BPSWelcomeOptinViewController *)self setSuggestedChoiceButton:boldButton];

    suggestedChoiceButton = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
    v33[2](v33, suggestedChoiceButton);
  }

  else
  {
    suggestedChoiceButton = [MEMORY[0x277D37650] linkButton];
    [(BPSWelcomeOptinViewController *)self setSuggestedChoiceButton:suggestedChoiceButton];
  }

  privacyBundles = [(BPSWelcomeOptinViewController *)self privacyBundles];
  v39 = [privacyBundles count];

  if (v39)
  {
    suggestedChoiceButton2 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
    [suggestedChoiceButton2 addTarget:self action:sel__didTapPrivacyAccept_ forEvents:64];
  }

  suggestedChoiceButton3 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton3 addTarget:self action:sel_suggestedButtonPressed_ forControlEvents:64];

  v42 = !wantsSuggestedChoicePillButton;
LABEL_17:
  alternateButtonTitle = [(BPSWelcomeOptinViewController *)self alternateButtonTitle];
  if (alternateButtonTitle || [(BPSWelcomeOptinViewController *)self wantsAlternateChoicePillButton])
  {
  }

  else if (![(BPSWelcomeOptinViewController *)self wantsAlternateChoiceSystemButton])
  {
    goto LABEL_25;
  }

  if ((v42 & 1) != 0 || ![(BPSWelcomeOptinViewController *)self wantsAlternateChoicePillButton])
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    [(BPSWelcomeOptinViewController *)self setAlternateChoiceButton:linkButton];
    v46 = 1;
  }

  else
  {
    boldButton2 = [MEMORY[0x277D37618] boldButton];
    [(BPSWelcomeOptinViewController *)self setAlternateChoiceButton:boldButton2];

    linkButton = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
    v33[2](v33, linkButton);
    v46 = 0;
  }

  alternateChoiceButton = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton addTarget:self action:sel_alternateButtonPressed_ forControlEvents:64];

  v42 |= v46;
LABEL_25:
  okayButtonTitle = [(BPSWelcomeOptinViewController *)self okayButtonTitle];
  if (okayButtonTitle)
  {

    goto LABEL_28;
  }

  if ([(BPSWelcomeOptinViewController *)self wantsOkayPillButton])
  {
LABEL_28:
    suggestedChoiceButton4 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
    if (suggestedChoiceButton4)
    {
    }

    else
    {
      alternateChoiceButton2 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];

      if (alternateChoiceButton2)
      {
        v51 = 1;
      }

      else
      {
        v51 = v42;
      }

      if ((v51 & 1) == 0 && [(BPSWelcomeOptinViewController *)self wantsOkayPillButton])
      {
        boldButton3 = [MEMORY[0x277D37618] boldButton];
        [(BPSWelcomeOptinViewController *)self setOkayButton:boldButton3];

        okayButton = [(BPSWelcomeOptinViewController *)self okayButton];
        v33[2](v33, okayButton);
LABEL_37:

        okayButton2 = [(BPSWelcomeOptinViewController *)self okayButton];
        [okayButton2 addTarget:self action:sel_okayButtonPressed_ forControlEvents:64];

        goto LABEL_38;
      }
    }

    okayButton = [MEMORY[0x277D37650] linkButton];
    [(BPSWelcomeOptinViewController *)self setOkayButton:okayButton];
    goto LABEL_37;
  }

LABEL_38:
  [(BPSWelcomeOptinViewController *)self refreshViews];
  learnMoreButtonTitle = [(BPSWelcomeOptinViewController *)self learnMoreButtonTitle];
  if (learnMoreButtonTitle)
  {
    v56 = learnMoreButtonTitle;
    wantsLearnMoreButton = [(BPSWelcomeOptinViewController *)self wantsLearnMoreButton];

    if (wantsLearnMoreButton)
    {
      if ([(BPSWelcomeOptinViewController *)self hasDetailText])
      {
        accessoryButton = [MEMORY[0x277D37638] accessoryButton];
        [(BPSWelcomeOptinViewController *)self setLearnMoreButton:accessoryButton];

        learnMoreButton = [(BPSWelcomeOptinViewController *)self learnMoreButton];
        learnMoreButtonTitle2 = [(BPSWelcomeOptinViewController *)self learnMoreButtonTitle];
        [learnMoreButton setTitle:learnMoreButtonTitle2 forState:0];

        learnMoreButton2 = [(BPSWelcomeOptinViewController *)self learnMoreButton];
        [learnMoreButton2 addTarget:self action:sel_learnMoreButtonPressed_ forControlEvents:64];

        headerView2 = [(BPSWelcomeOptinViewController *)self headerView];
        learnMoreButton3 = [(BPSWelcomeOptinViewController *)self learnMoreButton];
        [headerView2 addAccessoryButton:learnMoreButton3];
      }

      else
      {
        headerView2 = bps_setup_log();
        if (!os_log_type_enabled(headerView2, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(headerView2, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        v64 = objc_opt_class();
        learnMoreButton3 = NSStringFromClass(v64);
        *buf = 138412290;
        v73 = learnMoreButton3;
        _os_log_impl(&dword_241E74000, headerView2, OS_LOG_TYPE_DEFAULT, "Error: %@ wants learnMoreButton but no detail text was provided, this is not supported", buf, 0xCu);
      }

LABEL_50:
    }
  }

  privacyBundles2 = [(BPSWelcomeOptinViewController *)self privacyBundles];
  v66 = [privacyBundles2 count];

  if (v66)
  {
    if (![(BPSWelcomeOptinViewController *)self wantsToUseLearnMoreButtonForPrivacyBundles])
    {
      buttonTray = [(BPSWelcomeOptinViewController *)self buttonTray];
      privacyBundles3 = [(BPSWelcomeOptinViewController *)self privacyBundles];
      [buttonTray addPrivacyLinkForBundles:privacyBundles3];
LABEL_56:
    }
  }

  else
  {
    captionText = [(BPSWelcomeOptinViewController *)self captionText];

    if (captionText)
    {
      buttonTray = [(BPSWelcomeOptinViewController *)self buttonTray];
      privacyBundles3 = [(BPSWelcomeOptinViewController *)self captionText];
      [buttonTray addCaptionText:privacyBundles3];
      goto LABEL_56;
    }
  }

  [(BPSWelcomeOptinViewController *)self _addButtonObservers];
  self->_hasFinishedLoadingView = 1;
}

void __44__BPSWelcomeOptinViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(a1 + 32) useBridgeStyling])
  {
    v3 = BPSPillSelectedColor();
    [v7 setTintColor:v3];

    v4 = BPSPillDeselectedColor();
    v5 = BPSPillButtonBackground(v4);
    [v7 setBackgroundImage:v5 forState:2];

    v6 = [MEMORY[0x277D75348] colorWithWhite:0.7 alpha:1.0];
    [v7 setTitleColor:v6 forState:2];
  }
}

- (void)refreshViews
{
  if (![(BPSWelcomeOptinViewController *)self isViewLoaded])
  {
    return;
  }

  headerView = [(BPSWelcomeOptinViewController *)self headerView];
  titleString = [(BPSWelcomeOptinViewController *)self titleString];
  [headerView setTitle:titleString];

  detailString = [(BPSWelcomeOptinViewController *)self detailString];
  v6 = detailString;
  if (detailString)
  {
    string = detailString;
  }

  else
  {
    detailAtrributedString = [(BPSWelcomeOptinViewController *)self detailAtrributedString];
    string = [detailAtrributedString string];
  }

  headerView2 = [(BPSWelcomeOptinViewController *)self headerView];
  [headerView2 setDetailText:string];

  [(BPSWelcomeOptinViewController *)self setHasDetailText:string != 0];
  view = [(BPSWelcomeOptinViewController *)self view];
  [view layoutIfNeeded];

  suggestedChoiceButton = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  suggestedButtonTitle = [(BPSWelcomeOptinViewController *)self suggestedButtonTitle];
  [suggestedChoiceButton setTitle:suggestedButtonTitle forState:0];

  alternateChoiceButton = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  alternateButtonTitle = [(BPSWelcomeOptinViewController *)self alternateButtonTitle];
  [alternateChoiceButton setTitle:alternateButtonTitle forState:0];

  okayButton = [(BPSWelcomeOptinViewController *)self okayButton];
  okayButtonTitle = [(BPSWelcomeOptinViewController *)self okayButtonTitle];
  [okayButton setTitle:okayButtonTitle forState:0];

  [(BPSWelcomeOptinViewController *)self _refreshButtonTray];
  animationController = [(BPSWelcomeOptinViewController *)self animationController];
  videoController = [(BPSWelcomeOptinViewController *)self videoController];
  if ([(BPSWelcomeOptinViewController *)self wantsToShowWatchHW]&& videoController)
  {
    illustratedWatchView = self->_illustratedWatchView;
    v19 = videoController;
LABEL_12:
    view2 = [v19 view];
    [(BPSIllustratedWatchView *)illustratedWatchView addScreenView:view2];
    goto LABEL_13;
  }

  if ([(BPSWelcomeOptinViewController *)self wantsToShowWatchHW]&& animationController)
  {
    illustratedWatchView = self->_illustratedWatchView;
    v19 = animationController;
    goto LABEL_12;
  }

  if ([(BPSWelcomeOptinViewController *)self wantsToShowWatchHW]&& ([(BPSWelcomeOptinViewController *)self imageResource], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
  {
    v22 = self->_illustratedWatchView;
    imageResourceBundleIdentifier = [(BPSWelcomeOptinViewController *)self imageResourceBundleIdentifier];
    [(BPSIllustratedWatchView *)v22 setScreenImageSearchBundleIdentifier:imageResourceBundleIdentifier];

    v24 = self->_illustratedWatchView;
    view2 = [(BPSWelcomeOptinViewController *)self imageResource];
    [(BPSIllustratedWatchView *)v24 setScreenImageName:view2];
  }

  else
  {
    imageResource = [(BPSWelcomeOptinViewController *)self imageResource];

    if (!imageResource)
    {
      goto LABEL_14;
    }

    view2 = [MEMORY[0x277CCA8D8] mainBundle];
    imageResourceBundleIdentifier2 = [(BPSWelcomeOptinViewController *)self imageResourceBundleIdentifier];

    if (imageResourceBundleIdentifier2)
    {
      v27 = MEMORY[0x277CCA8D8];
      imageResourceBundleIdentifier3 = [(BPSWelcomeOptinViewController *)self imageResourceBundleIdentifier];
      v29 = [v27 bundleWithIdentifier:imageResourceBundleIdentifier3];

      view2 = v29;
    }

    v30 = MEMORY[0x277D755B8];
    imageResource2 = [(BPSWelcomeOptinViewController *)self imageResource];
    v32 = [v30 imageNamed:imageResource2 inBundle:view2];

    if (!v32)
    {
      v33 = MEMORY[0x277D755B8];
      imageResource3 = [(BPSWelcomeOptinViewController *)self imageResource];
      v32 = [v33 systemImageNamed:imageResource3];
    }

    imageTintColor = [(BPSWelcomeOptinViewController *)self imageTintColor];

    if (imageTintColor)
    {
      imageTintColor2 = [(BPSWelcomeOptinViewController *)self imageTintColor];
      v37 = [v32 imageWithTintColor:imageTintColor2];

      v32 = v37;
    }

    headerView3 = [(BPSWelcomeOptinViewController *)self headerView];
    [headerView3 setIcon:v32 accessibilityLabel:0];
  }

LABEL_13:

LABEL_14:
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BPSWelcomeOptinViewController;
  [(OBBaseWelcomeController *)&v4 viewDidAppear:appear];
  [(BPSWelcomeOptinViewController *)self _startTapToRadarActivity];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BPSWelcomeOptinViewController;
  [(OBBaseWelcomeController *)&v4 viewWillDisappear:disappear];
  [(BPSWelcomeOptinViewController *)self _endTapToRadarActivity];
}

- (void)_addButtonObservers
{
  suggestedChoiceButton = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton addObserver:self forKeyPath:@"hidden" options:1 context:BPSWelcomeOptinViewControllerKVOContext];

  alternateChoiceButton = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton addObserver:self forKeyPath:@"hidden" options:1 context:BPSWelcomeOptinViewControllerKVOContext];

  okayButton = [(BPSWelcomeOptinViewController *)self okayButton];
  [okayButton addObserver:self forKeyPath:@"hidden" options:1 context:BPSWelcomeOptinViewControllerKVOContext];
}

- (void)_removeButtonObservers
{
  suggestedChoiceButton = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton removeObserver:self forKeyPath:@"hidden"];

  alternateChoiceButton = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton removeObserver:self forKeyPath:@"hidden"];

  okayButton = [(BPSWelcomeOptinViewController *)self okayButton];
  [okayButton removeObserver:self forKeyPath:@"hidden"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (BPSWelcomeOptinViewControllerKVOContext == context)
  {
    if ([@"hidden" isEqualToString:{path, object, change}])
    {

      [(BPSWelcomeOptinViewController *)self _refreshButtonTray];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BPSWelcomeOptinViewController;
    [(BPSWelcomeOptinViewController *)&v7 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_refreshButtonTray
{
  v38 = *MEMORY[0x277D85DE8];
  suggestedButtonTitle = [(BPSWelcomeOptinViewController *)self suggestedButtonTitle];
  if (suggestedButtonTitle && ([(BPSWelcomeOptinViewController *)self wantsSuggestedChoicePillButton]|| [(BPSWelcomeOptinViewController *)self wantsSuggestedChoiceLinkButton]))
  {
    suggestedChoiceButton = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
    v5 = [suggestedChoiceButton isHidden] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  alternateButtonTitle = [(BPSWelcomeOptinViewController *)self alternateButtonTitle];
  if (alternateButtonTitle && ([(BPSWelcomeOptinViewController *)self wantsAlternateChoiceSystemButton]|| [(BPSWelcomeOptinViewController *)self wantsAlternateChoicePillButton]))
  {
    alternateChoiceButton = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
    v8 = [alternateChoiceButton isHidden] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  okayButtonTitle = [(BPSWelcomeOptinViewController *)self okayButtonTitle];
  if (okayButtonTitle && [(BPSWelcomeOptinViewController *)self wantsOkayPillButton])
  {
    okayButton = [(BPSWelcomeOptinViewController *)self okayButton];
    v11 = [okayButton isHidden] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  if (v5 == [(BPSWelcomeOptinViewController *)self showSuggestedButton]&& v8 == [(BPSWelcomeOptinViewController *)self showAlternateButton]&& v11 == [(BPSWelcomeOptinViewController *)self showOkayButton]&& self->_hasFinishedLoadingView)
  {
    goto LABEL_50;
  }

  suggestedChoiceButton2 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  superview = [suggestedChoiceButton2 superview];

  if (superview)
  {
    buttonTray = [(BPSWelcomeOptinViewController *)self buttonTray];
    suggestedChoiceButton3 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
    [buttonTray removeButton:suggestedChoiceButton3];
  }

  alternateChoiceButton2 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  superview2 = [alternateChoiceButton2 superview];

  if (superview2)
  {
    buttonTray2 = [(BPSWelcomeOptinViewController *)self buttonTray];
    alternateChoiceButton3 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
    [buttonTray2 removeButton:alternateChoiceButton3];
  }

  okayButton2 = [(BPSWelcomeOptinViewController *)self okayButton];
  superview3 = [okayButton2 superview];

  if (superview3)
  {
    buttonTray3 = [(BPSWelcomeOptinViewController *)self buttonTray];
    okayButton3 = [(BPSWelcomeOptinViewController *)self okayButton];
    [buttonTray3 removeButton:okayButton3];
  }

  if (!v5)
  {
    if (!v8)
    {
      goto LABEL_27;
    }

    goto LABEL_36;
  }

  suggestedChoiceButton4 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];

  if (suggestedChoiceButton4)
  {
    buttonTray4 = [(BPSWelcomeOptinViewController *)self buttonTray];
    suggestedChoiceButton5 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
    [buttonTray4 addButton:suggestedChoiceButton5];
LABEL_31:

    goto LABEL_35;
  }

  buttonTray4 = bps_setup_log();
  if (os_log_type_enabled(buttonTray4, OS_LOG_TYPE_ERROR) && os_log_type_enabled(buttonTray4, OS_LOG_TYPE_DEFAULT))
  {
    v27 = objc_opt_class();
    suggestedChoiceButton5 = NSStringFromClass(v27);
    v36 = 138412290;
    v37 = suggestedChoiceButton5;
    _os_log_impl(&dword_241E74000, buttonTray4, OS_LOG_TYPE_DEFAULT, "Error: %@ wants suggestedChoiceButton but none was initialized", &v36, 0xCu);
    goto LABEL_31;
  }

LABEL_35:

  if (!v8)
  {
LABEL_27:
    if (!v11)
    {
      goto LABEL_50;
    }

LABEL_43:
    okayButton4 = [(BPSWelcomeOptinViewController *)self okayButton];

    if (okayButton4)
    {
      buttonTray5 = [(BPSWelcomeOptinViewController *)self buttonTray];
      okayButton5 = [(BPSWelcomeOptinViewController *)self okayButton];
      [buttonTray5 addButton:okayButton5];
    }

    else
    {
      buttonTray5 = bps_setup_log();
      if (!os_log_type_enabled(buttonTray5, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(buttonTray5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v35 = objc_opt_class();
      okayButton5 = NSStringFromClass(v35);
      v36 = 138412290;
      v37 = okayButton5;
      _os_log_impl(&dword_241E74000, buttonTray5, OS_LOG_TYPE_DEFAULT, "Error: %@ wants okayButton but none was initialized", &v36, 0xCu);
    }

LABEL_49:
    goto LABEL_50;
  }

LABEL_36:
  alternateChoiceButton4 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];

  if (alternateChoiceButton4)
  {
    buttonTray6 = [(BPSWelcomeOptinViewController *)self buttonTray];
    alternateChoiceButton5 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
    [buttonTray6 addButton:alternateChoiceButton5];
LABEL_38:

    goto LABEL_42;
  }

  buttonTray6 = bps_setup_log();
  if (os_log_type_enabled(buttonTray6, OS_LOG_TYPE_ERROR) && os_log_type_enabled(buttonTray6, OS_LOG_TYPE_DEFAULT))
  {
    v31 = objc_opt_class();
    alternateChoiceButton5 = NSStringFromClass(v31);
    v36 = 138412290;
    v37 = alternateChoiceButton5;
    _os_log_impl(&dword_241E74000, buttonTray6, OS_LOG_TYPE_DEFAULT, "Error: %@ wants alternateChoiceButton but none was initialized", &v36, 0xCu);
    goto LABEL_38;
  }

LABEL_42:

  if (v11)
  {
    goto LABEL_43;
  }

LABEL_50:
  [(BPSWelcomeOptinViewController *)self setShowSuggestedButton:v5];
  [(BPSWelcomeOptinViewController *)self setShowAlternateButton:v8];
  [(BPSWelcomeOptinViewController *)self setShowOkayButton:v11];
}

- (id)localizedTitle
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = bps_setup_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[BPSWelcomeOptinViewController localizedTitle]";
    _os_log_impl(&dword_241E74000, v2, OS_LOG_TYPE_DEFAULT, "%s should be overridden by subclasses", &v4, 0xCu);
  }

  return 0;
}

- (id)localizedInformativeText
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = bps_setup_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[BPSWelcomeOptinViewController localizedInformativeText]";
    _os_log_impl(&dword_241E74000, v2, OS_LOG_TYPE_DEFAULT, "%s should be overridden by subclasses", &v4, 0xCu);
  }

  return 0;
}

- (void)showOptinConfirmationAlert:(id)alert optinChoice:(BOOL)choice
{
  v5 = MEMORY[0x277CCACA8];
  alertCopy = alert;
  alertCopy = [v5 stringWithFormat:@"%@_ENABLE_ALERT_TITLE", alertCopy];
  alertCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_ENABLE_ALERT_BODY", alertCopy];
  alertCopy3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_ENABLE_ALERT_CANCEL", alertCopy];
  alertCopy4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_ENABLE_ALERT_OK", alertCopy];

  v10 = MEMORY[0x277D75110];
  optinLocalizationBundle = [(BPSWelcomeOptinViewController *)self optinLocalizationBundle];
  optinLocalizationStringsFile = [(BPSWelcomeOptinViewController *)self optinLocalizationStringsFile];
  v32 = alertCopy;
  v13 = [optinLocalizationBundle localizedStringForKey:alertCopy value:&stru_285406330 table:optinLocalizationStringsFile];
  optinLocalizationBundle2 = [(BPSWelcomeOptinViewController *)self optinLocalizationBundle];
  optinLocalizationStringsFile2 = [(BPSWelcomeOptinViewController *)self optinLocalizationStringsFile];
  v31 = alertCopy2;
  v16 = [optinLocalizationBundle2 localizedStringForKey:alertCopy2 value:&stru_285406330 table:optinLocalizationStringsFile2];
  v17 = [v10 alertControllerWithTitle:v13 message:v16 preferredStyle:1];

  v18 = MEMORY[0x277D750F8];
  optinLocalizationBundle3 = [(BPSWelcomeOptinViewController *)self optinLocalizationBundle];
  optinLocalizationStringsFile3 = [(BPSWelcomeOptinViewController *)self optinLocalizationStringsFile];
  v21 = [optinLocalizationBundle3 localizedStringForKey:alertCopy3 value:&stru_285406330 table:optinLocalizationStringsFile3];
  v22 = [v18 actionWithTitle:v21 style:1 handler:0];
  [v17 addAction:v22];

  v23 = MEMORY[0x277D750F8];
  optinLocalizationBundle4 = [(BPSWelcomeOptinViewController *)self optinLocalizationBundle];
  optinLocalizationStringsFile4 = [(BPSWelcomeOptinViewController *)self optinLocalizationStringsFile];
  v26 = [optinLocalizationBundle4 localizedStringForKey:alertCopy4 value:&stru_285406330 table:optinLocalizationStringsFile4];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __72__BPSWelcomeOptinViewController_showOptinConfirmationAlert_optinChoice___block_invoke;
  v34[3] = &unk_278D234C0;
  v34[4] = self;
  choiceCopy = choice;
  v27 = [v23 actionWithTitle:v26 style:0 handler:v34];
  [v17 addAction:v27];

  v28 = bps_setup_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241E74000, v28, OS_LOG_TYPE_DEFAULT, "Presenting 'opt-in confirmation' alert", buf, 2u);
  }

  [(BPSWelcomeOptinViewController *)self presentViewController:v17 animated:1 completion:0];
}

- (void)applyConfirmedOptin:(BOOL)optin
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = bps_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[BPSWelcomeOptinViewController applyConfirmedOptin:]";
    _os_log_impl(&dword_241E74000, v3, OS_LOG_TYPE_DEFAULT, "%s should be overridden by subclasses", &v4, 0xCu);
  }
}

- (id)_baseIdentifier
{
  v3 = +[BPSFollowUpController baseDomainIdentifier];
  followUpIdentifier = [(BPSWelcomeOptinViewController *)self followUpIdentifier];
  if (followUpIdentifier)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v3, followUpIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addFollowUpForPageAndDevice:(id)device withCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  _baseIdentifier = [(BPSWelcomeOptinViewController *)self _baseIdentifier];
  if (_baseIdentifier)
  {
    v18 = completionCopy;
    v9 = [deviceCopy valueForProperty:*MEMORY[0x277D2BC30]];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", _baseIdentifier, v9];
    v11 = bps_setup_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v10;
      _os_log_impl(&dword_241E74000, v11, OS_LOG_TYPE_DEFAULT, "Add FollowUp for identifier %{public}@...", buf, 0xCu);
    }

    v12 = bps_setup_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = deviceCopy;
      _os_log_impl(&dword_241E74000, v12, OS_LOG_TYPE_DEFAULT, "...for device: %{public}@", buf, 0xCu);
    }

    v21[0] = @"title";
    localizedTitle = [(BPSWelcomeOptinViewController *)self localizedTitle];
    v22[0] = localizedTitle;
    v21[1] = @"description";
    localizedInformativeText = [(BPSWelcomeOptinViewController *)self localizedInformativeText];
    v22[1] = localizedInformativeText;
    v21[2] = @"followUpActions";
    followUpActions = [(BPSWelcomeOptinViewController *)self followUpActions];
    v22[2] = followUpActions;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v17 = [BPSFollowUpAttributes attributeWithOptions:v16];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__BPSWelcomeOptinViewController_addFollowUpForPageAndDevice_withCompletion___block_invoke;
    v19[3] = &unk_278D23430;
    completionCopy = v18;
    v20 = v18;
    [BPSFollowUpController addFollowUpForIdentifier:v10 withAttributes:v17 withCompletion:v19];
  }

  else
  {
    v9 = bps_setup_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241E74000, v9, OS_LOG_TYPE_DEFAULT, "Error!! Issuing a FollowUp requires dictating an identifier!", buf, 2u);
    }
  }
}

uint64_t __76__BPSWelcomeOptinViewController_addFollowUpForPageAndDevice_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addFollowUpForPageWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _baseIdentifier = [(BPSWelcomeOptinViewController *)self _baseIdentifier];
  v6 = bps_setup_log();
  v7 = v6;
  if (_baseIdentifier)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = _baseIdentifier;
      _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "Add Global FollowUp for %{public}@", buf, 0xCu);
    }

    v14[0] = @"title";
    localizedTitle = [(BPSWelcomeOptinViewController *)self localizedTitle];
    v15[0] = localizedTitle;
    v14[1] = @"description";
    localizedInformativeText = [(BPSWelcomeOptinViewController *)self localizedInformativeText];
    v15[1] = localizedInformativeText;
    v14[2] = @"followUpActions";
    followUpActions = [(BPSWelcomeOptinViewController *)self followUpActions];
    v15[2] = followUpActions;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v7 = [BPSFollowUpAttributes attributeWithOptions:v11];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__BPSWelcomeOptinViewController_addFollowUpForPageWithCompletion___block_invoke;
    v12[3] = &unk_278D23430;
    v13 = completionCopy;
    [BPSFollowUpController addFollowUpForIdentifier:_baseIdentifier withAttributes:v7 withCompletion:v12];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "Error!! Issuing a FollowUp requires dictating an identifier!", buf, 2u);
  }
}

uint64_t __66__BPSWelcomeOptinViewController_addFollowUpForPageWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeFollowupForPageWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  followUpIdentifier = [(BPSWelcomeOptinViewController *)self followUpIdentifier];
  v6 = bps_setup_log();
  v7 = v6;
  if (followUpIdentifier)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = followUpIdentifier;
      _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "Remove identifier %{public}@", buf, 0xCu);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__BPSWelcomeOptinViewController_removeFollowupForPageWithCompletion___block_invoke;
    v8[3] = &unk_278D23430;
    v9 = completionCopy;
    [BPSFollowUpController removeFollowUpForIdentifier:followUpIdentifier withCompletion:v8];
    v7 = v9;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "Error!! Removing a FollowUp requires dictating an identifier!", buf, 2u);
  }
}

uint64_t __69__BPSWelcomeOptinViewController_removeFollowupForPageWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)markPaneAsSkipped
{
  if (![(BPSWelcomeOptinViewController *)self isDisplayingInSkippedMiniFlow])
  {
    v2 = objc_opt_class();

    [BPSFollowUpController markSkippedSetupPaneClassForCurrentDevice:v2];
  }
}

- (id)tapToRadarMetadata
{
  v2 = [[BPSTTRMetadata alloc] initWithComponent:0];

  return v2;
}

- (void)openTapToRadar
{
  tapToRadarMetadata = [(BPSWelcomeOptinViewController *)self tapToRadarMetadata];
  if (tapToRadarMetadata)
  {
    [BPSTapToRadarCoordinator openTapToRadarWithInitialMetadata:tapToRadarMetadata];
  }

  else
  {
    v3 = bps_setup_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_241E74000, v3, OS_LOG_TYPE_DEFAULT, "Error!! Could not retrieve metadata for tap to radar!", v4, 2u);
    }
  }
}

- (void)_startTapToRadarActivity
{
  if (PBIsInternalInstall())
  {
    tapToRadarMetadata = [(BPSWelcomeOptinViewController *)self tapToRadarMetadata];

    if (tapToRadarMetadata)
    {
      tapToRadarMetadata2 = [(BPSWelcomeOptinViewController *)self tapToRadarMetadata];
      v5 = [BPSTapToRadarCoordinator tapToRadarUserActivityWithInitialMetadata:tapToRadarMetadata2];
      tapToRadarActivity = self->_tapToRadarActivity;
      self->_tapToRadarActivity = v5;

      v7 = self->_tapToRadarActivity;
      if (v7)
      {

        [(NSUserActivity *)v7 becomeCurrent];
      }

      else
      {
        v8 = bps_setup_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_241E74000, v8, OS_LOG_TYPE_DEFAULT, "Error: We're eligible to raise a TTR NSUserActivity but it could not be generated, so we're aborting.", v9, 2u);
        }
      }
    }
  }
}

- (void)_endTapToRadarActivity
{
  tapToRadarActivity = self->_tapToRadarActivity;
  if (tapToRadarActivity)
  {
    [(NSUserActivity *)tapToRadarActivity invalidate];
    v4 = self->_tapToRadarActivity;
    self->_tapToRadarActivity = 0;
  }
}

- (void)_didTapPrivacyAccept:(id)accept
{
  v40 = *MEMORY[0x277D85DE8];
  acceptCopy = accept;
  privacyBundles = [(BPSWelcomeOptinViewController *)self privacyBundles];

  if (privacyBundles)
  {
    delegate = [(BPSWelcomeOptinViewController *)self delegate];
    setupFlowUserInfo = [delegate setupFlowUserInfo];

    v6 = [setupFlowUserInfo objectForKey:@"BPSPairingFlowIsTinkerPairing"];
    bOOLValue = [v6 BOOLValue];

    if (bOOLValue)
    {
      v8 = [setupFlowUserInfo objectForKey:@"BPSPairingFlowFamilyMember"];
      dsid = [v8 dsid];
      if (!dsid || ([MEMORY[0x277CB8F48] ams_sharedAccountStore], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "ams_iTunesAccountWithDSID:", dsid), aa_primaryAppleAccount = objc_claimAutoreleasedReturnValue(), v10, !aa_primaryAppleAccount))
      {
        v12 = bps_setup_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241E74000, v12, OS_LOG_TYPE_DEFAULT, "Error acknowledging privacy bundle: alt account pairing but we could not map an alt ACAccount", buf, 2u);
        }

        aa_primaryAppleAccount = 0;
      }
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277CB8F48]);
      aa_primaryAppleAccount = [v13 aa_primaryAppleAccount];
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [(BPSWelcomeOptinViewController *)self privacyBundles];
    v14 = [obj countByEnumeratingWithState:&v26 objects:v39 count:16];
    if (v14)
    {
      v15 = *v27;
      do
      {
        v16 = 0;
        do
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v26 + 1) + 8 * v16);
          v35 = 0;
          v36 = &v35;
          v37 = 0x2050000000;
          v18 = getAMSAcknowledgePrivacyTaskClass_softClass;
          v38 = getAMSAcknowledgePrivacyTaskClass_softClass;
          if (!getAMSAcknowledgePrivacyTaskClass_softClass)
          {
            *buf = MEMORY[0x277D85DD0];
            v31 = 3221225472;
            v32 = __getAMSAcknowledgePrivacyTaskClass_block_invoke;
            v33 = &unk_278D232F0;
            v34 = &v35;
            __getAMSAcknowledgePrivacyTaskClass_block_invoke(buf);
            v18 = v36[3];
          }

          v19 = v18;
          _Block_object_dispose(&v35, 8);
          v20 = [[v18 alloc] initWithPrivacyIdentifier:v17 account:aa_primaryAppleAccount];
          acknowledgePrivacy = [v20 acknowledgePrivacy];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __54__BPSWelcomeOptinViewController__didTapPrivacyAccept___block_invoke;
          v25[3] = &unk_278D23538;
          v25[4] = v17;
          [acknowledgePrivacy addFinishBlock:v25];

          ++v16;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v26 objects:v39 count:16];
      }

      while (v14);
    }
  }
}

void __54__BPSWelcomeOptinViewController__didTapPrivacyAccept___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = bps_setup_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_241E74000, v6, OS_LOG_TYPE_DEFAULT, "Successfully acknowledged privacy for %{public}@", &v11, 0xCu);
    }
  }

  else if (v7)
  {
    v9 = *(a1 + 32);
    v10 = [v5 localizedDescription];
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_241E74000, v6, OS_LOG_TYPE_DEFAULT, "Error acknowledging privacy for %{public}@: %{public}@", &v11, 0x16u);
  }
}

+ (id)expressModeSettingsItem:(id)item
{
  itemCopy = item;
  if (objc_opt_respondsToSelector())
  {
    v5 = objc_opt_new();
    v6 = [self expressModeSettingsString:itemCopy];
    [v5 setTitle:v6];

    if (objc_opt_respondsToSelector())
    {
      imageForExpressSetting = [self imageForExpressSetting];
      [v5 setImage:imageForExpressSetting];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_learnMoreButtonPrivacyTitle
{
  privacyBundles = [(BPSWelcomeOptinViewController *)self privacyBundles];
  firstObject = [privacyBundles firstObject];

  if (firstObject)
  {
    v4 = [MEMORY[0x277D37630] bundleWithIdentifier:firstObject];
    privacyFlow = [v4 privacyFlow];
    localizedButtonTitle = [privacyFlow localizedButtonTitle];
  }

  else
  {
    localizedButtonTitle = 0;
  }

  return localizedButtonTitle;
}

- (void)_learnMoreButtonPrivacyPressed:(id)pressed
{
  privacyBundles = [(BPSWelcomeOptinViewController *)self privacyBundles];
  v4 = [privacyBundles count];
  v5 = MEMORY[0x277D37678];
  if (v4 == 1)
  {
    firstObject = [privacyBundles firstObject];
    v7 = [v5 presenterForPrivacySplashWithIdentifier:firstObject];
  }

  else
  {
    v7 = [MEMORY[0x277D37678] presenterForPrivacyUnifiedAboutWithIdentifiers:privacyBundles];
  }

  [v7 setPresentingViewController:self];
  [v7 present];
}

- (BPSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end