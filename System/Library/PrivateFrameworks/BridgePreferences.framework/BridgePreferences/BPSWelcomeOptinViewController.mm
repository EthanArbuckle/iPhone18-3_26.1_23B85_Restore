@interface BPSWelcomeOptinViewController
+ (id)expressModeSettingsItem:(id)a3;
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
- (void)_didTapPrivacyAccept:(id)a3;
- (void)_endTapToRadarActivity;
- (void)_learnMoreButtonPrivacyPressed:(id)a3;
- (void)_refreshButtonTray;
- (void)_removeButtonObservers;
- (void)_startTapToRadarActivity;
- (void)addFollowUpForPageAndDevice:(id)a3 withCompletion:(id)a4;
- (void)addFollowUpForPageWithCompletion:(id)a3;
- (void)alternateButtonPressed:(id)a3;
- (void)applyConfirmedOptin:(BOOL)a3;
- (void)dealloc;
- (void)learnMoreButtonPressed:(id)a3;
- (void)markPaneAsSkipped;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)okayButtonPressed:(id)a3;
- (void)openTapToRadar;
- (void)refreshViews;
- (void)removeFollowupForPageWithCompletion:(id)a3;
- (void)showOptinConfirmationAlert:(id)a3 optinChoice:(BOOL)a4;
- (void)suggestedButtonPressed:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation BPSWelcomeOptinViewController

- (BPSWelcomeOptinViewController)init
{
  v3 = [objc_opt_class() obkContentLayout];
  v9.receiver = self;
  v9.super_class = BPSWelcomeOptinViewController;
  v4 = [(BPSWelcomeOptinViewController *)&v9 initWithTitle:&stru_285406330 detailText:0 icon:0 contentLayout:v3];
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
      v3 = [(BPSWelcomeOptinViewController *)self _learnMoreButtonPrivacyTitle];
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

  v3 = 0;
LABEL_9:

  return v3;
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

- (void)suggestedButtonPressed:(id)a3
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

- (void)alternateButtonPressed:(id)a3
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

- (void)learnMoreButtonPressed:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(BPSWelcomeOptinViewController *)self wantsLearnMoreButton])
  {
    if ([(BPSWelcomeOptinViewController *)self wantsToUseLearnMoreButtonForPrivacyBundles])
    {
      [(BPSWelcomeOptinViewController *)self _learnMoreButtonPrivacyPressed:v4];
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

- (void)okayButtonPressed:(id)a3
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
  if ([a1 contentLayout] == 1)
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
  v4 = NSStringFromClass(a1);
  v5 = [v3 containsObject:v4];

  v6 = bps_setup_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = NSStringFromClass(a1);
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
      v10 = NSStringFromClass(a1);
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
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(BPSWelcomeOptinViewController *)self contentView];
  [v4 setBackgroundColor:v3];

  v5 = [(BPSWelcomeOptinViewController *)self headerView];
  LODWORD(v6) = 1036831949;
  [v5 setTitleHyphenationFactor:v6];

  if ([(BPSWelcomeOptinViewController *)self wantsToShowWatchHW])
  {
    v7 = [BPSIllustratedWatchView alloc];
    v8 = [(BPSIllustratedWatchView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    illustratedWatchView = self->_illustratedWatchView;
    self->_illustratedWatchView = v8;

    v10 = [(BPSWelcomeOptinViewController *)self contentView];
    [v10 addSubview:self->_illustratedWatchView];

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
      v13 = [(BPSWelcomeOptinViewController *)self view];
      [v13 bounds];
      v15 = v14;

      v16 = [MEMORY[0x277CCAE60] valueWithCGSize:{v15, v12}];
      [(BPSIllustratedWatchView *)self->_illustratedWatchView setPreferredCGSizeValue:v16];

      v17 = [(BPSWelcomeOptinViewController *)self contentView];
      v18 = [v17 heightAnchor];
      [(BPSIllustratedWatchView *)self->_illustratedWatchView idealContainerHeight];
      v19 = [v18 constraintEqualToConstant:?];
      [v19 setActive:1];
    }

    v20 = [(BPSIllustratedWatchView *)self->_illustratedWatchView topAnchor];
    v21 = [(BPSWelcomeOptinViewController *)self contentView];
    v22 = [v21 topAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    [v23 setActive:1];

    v24 = [(BPSIllustratedWatchView *)self->_illustratedWatchView bottomAnchor];
    v25 = [(BPSWelcomeOptinViewController *)self contentView];
    v26 = [v25 bottomAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
    watchViewBottomConstraint = self->_watchViewBottomConstraint;
    self->_watchViewBottomConstraint = v27;

    [(NSLayoutConstraint *)self->_watchViewBottomConstraint setActive:1];
    v29 = [(BPSIllustratedWatchView *)self->_illustratedWatchView centerXAnchor];
    v30 = [(BPSWelcomeOptinViewController *)self view];
    v31 = [v30 centerXAnchor];
    v32 = [v29 constraintEqualToAnchor:v31];
    [v32 setActive:1];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__BPSWelcomeOptinViewController_viewDidLoad__block_invoke;
  aBlock[3] = &unk_278D23510;
  aBlock[4] = self;
  v33 = _Block_copy(aBlock);
  v34 = [(BPSWelcomeOptinViewController *)self suggestedButtonTitle];
  if (v34 || [(BPSWelcomeOptinViewController *)self wantsSuggestedChoicePillButton])
  {
  }

  else if (![(BPSWelcomeOptinViewController *)self wantsSuggestedChoiceLinkButton])
  {
    v42 = 0;
    goto LABEL_17;
  }

  v35 = [(BPSWelcomeOptinViewController *)self wantsSuggestedChoicePillButton];
  if (v35)
  {
    v36 = [MEMORY[0x277D37618] boldButton];
    [(BPSWelcomeOptinViewController *)self setSuggestedChoiceButton:v36];

    v37 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
    v33[2](v33, v37);
  }

  else
  {
    v37 = [MEMORY[0x277D37650] linkButton];
    [(BPSWelcomeOptinViewController *)self setSuggestedChoiceButton:v37];
  }

  v38 = [(BPSWelcomeOptinViewController *)self privacyBundles];
  v39 = [v38 count];

  if (v39)
  {
    v40 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
    [v40 addTarget:self action:sel__didTapPrivacyAccept_ forEvents:64];
  }

  v41 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  [v41 addTarget:self action:sel_suggestedButtonPressed_ forControlEvents:64];

  v42 = !v35;
LABEL_17:
  v43 = [(BPSWelcomeOptinViewController *)self alternateButtonTitle];
  if (v43 || [(BPSWelcomeOptinViewController *)self wantsAlternateChoicePillButton])
  {
  }

  else if (![(BPSWelcomeOptinViewController *)self wantsAlternateChoiceSystemButton])
  {
    goto LABEL_25;
  }

  if ((v42 & 1) != 0 || ![(BPSWelcomeOptinViewController *)self wantsAlternateChoicePillButton])
  {
    v45 = [MEMORY[0x277D37650] linkButton];
    [(BPSWelcomeOptinViewController *)self setAlternateChoiceButton:v45];
    v46 = 1;
  }

  else
  {
    v44 = [MEMORY[0x277D37618] boldButton];
    [(BPSWelcomeOptinViewController *)self setAlternateChoiceButton:v44];

    v45 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
    v33[2](v33, v45);
    v46 = 0;
  }

  v47 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [v47 addTarget:self action:sel_alternateButtonPressed_ forControlEvents:64];

  v42 |= v46;
LABEL_25:
  v48 = [(BPSWelcomeOptinViewController *)self okayButtonTitle];
  if (v48)
  {

    goto LABEL_28;
  }

  if ([(BPSWelcomeOptinViewController *)self wantsOkayPillButton])
  {
LABEL_28:
    v49 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
    if (v49)
    {
    }

    else
    {
      v50 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];

      if (v50)
      {
        v51 = 1;
      }

      else
      {
        v51 = v42;
      }

      if ((v51 & 1) == 0 && [(BPSWelcomeOptinViewController *)self wantsOkayPillButton])
      {
        v52 = [MEMORY[0x277D37618] boldButton];
        [(BPSWelcomeOptinViewController *)self setOkayButton:v52];

        v53 = [(BPSWelcomeOptinViewController *)self okayButton];
        v33[2](v33, v53);
LABEL_37:

        v54 = [(BPSWelcomeOptinViewController *)self okayButton];
        [v54 addTarget:self action:sel_okayButtonPressed_ forControlEvents:64];

        goto LABEL_38;
      }
    }

    v53 = [MEMORY[0x277D37650] linkButton];
    [(BPSWelcomeOptinViewController *)self setOkayButton:v53];
    goto LABEL_37;
  }

LABEL_38:
  [(BPSWelcomeOptinViewController *)self refreshViews];
  v55 = [(BPSWelcomeOptinViewController *)self learnMoreButtonTitle];
  if (v55)
  {
    v56 = v55;
    v57 = [(BPSWelcomeOptinViewController *)self wantsLearnMoreButton];

    if (v57)
    {
      if ([(BPSWelcomeOptinViewController *)self hasDetailText])
      {
        v58 = [MEMORY[0x277D37638] accessoryButton];
        [(BPSWelcomeOptinViewController *)self setLearnMoreButton:v58];

        v59 = [(BPSWelcomeOptinViewController *)self learnMoreButton];
        v60 = [(BPSWelcomeOptinViewController *)self learnMoreButtonTitle];
        [v59 setTitle:v60 forState:0];

        v61 = [(BPSWelcomeOptinViewController *)self learnMoreButton];
        [v61 addTarget:self action:sel_learnMoreButtonPressed_ forControlEvents:64];

        v62 = [(BPSWelcomeOptinViewController *)self headerView];
        v63 = [(BPSWelcomeOptinViewController *)self learnMoreButton];
        [v62 addAccessoryButton:v63];
      }

      else
      {
        v62 = bps_setup_log();
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        v64 = objc_opt_class();
        v63 = NSStringFromClass(v64);
        *buf = 138412290;
        v73 = v63;
        _os_log_impl(&dword_241E74000, v62, OS_LOG_TYPE_DEFAULT, "Error: %@ wants learnMoreButton but no detail text was provided, this is not supported", buf, 0xCu);
      }

LABEL_50:
    }
  }

  v65 = [(BPSWelcomeOptinViewController *)self privacyBundles];
  v66 = [v65 count];

  if (v66)
  {
    if (![(BPSWelcomeOptinViewController *)self wantsToUseLearnMoreButtonForPrivacyBundles])
    {
      v67 = [(BPSWelcomeOptinViewController *)self buttonTray];
      v68 = [(BPSWelcomeOptinViewController *)self privacyBundles];
      [v67 addPrivacyLinkForBundles:v68];
LABEL_56:
    }
  }

  else
  {
    v69 = [(BPSWelcomeOptinViewController *)self captionText];

    if (v69)
    {
      v67 = [(BPSWelcomeOptinViewController *)self buttonTray];
      v68 = [(BPSWelcomeOptinViewController *)self captionText];
      [v67 addCaptionText:v68];
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

  v3 = [(BPSWelcomeOptinViewController *)self headerView];
  v4 = [(BPSWelcomeOptinViewController *)self titleString];
  [v3 setTitle:v4];

  v5 = [(BPSWelcomeOptinViewController *)self detailString];
  v6 = v5;
  if (v5)
  {
    v39 = v5;
  }

  else
  {
    v7 = [(BPSWelcomeOptinViewController *)self detailAtrributedString];
    v39 = [v7 string];
  }

  v8 = [(BPSWelcomeOptinViewController *)self headerView];
  [v8 setDetailText:v39];

  [(BPSWelcomeOptinViewController *)self setHasDetailText:v39 != 0];
  v9 = [(BPSWelcomeOptinViewController *)self view];
  [v9 layoutIfNeeded];

  v10 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  v11 = [(BPSWelcomeOptinViewController *)self suggestedButtonTitle];
  [v10 setTitle:v11 forState:0];

  v12 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  v13 = [(BPSWelcomeOptinViewController *)self alternateButtonTitle];
  [v12 setTitle:v13 forState:0];

  v14 = [(BPSWelcomeOptinViewController *)self okayButton];
  v15 = [(BPSWelcomeOptinViewController *)self okayButtonTitle];
  [v14 setTitle:v15 forState:0];

  [(BPSWelcomeOptinViewController *)self _refreshButtonTray];
  v16 = [(BPSWelcomeOptinViewController *)self animationController];
  v17 = [(BPSWelcomeOptinViewController *)self videoController];
  if ([(BPSWelcomeOptinViewController *)self wantsToShowWatchHW]&& v17)
  {
    illustratedWatchView = self->_illustratedWatchView;
    v19 = v17;
LABEL_12:
    v20 = [v19 view];
    [(BPSIllustratedWatchView *)illustratedWatchView addScreenView:v20];
    goto LABEL_13;
  }

  if ([(BPSWelcomeOptinViewController *)self wantsToShowWatchHW]&& v16)
  {
    illustratedWatchView = self->_illustratedWatchView;
    v19 = v16;
    goto LABEL_12;
  }

  if ([(BPSWelcomeOptinViewController *)self wantsToShowWatchHW]&& ([(BPSWelcomeOptinViewController *)self imageResource], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
  {
    v22 = self->_illustratedWatchView;
    v23 = [(BPSWelcomeOptinViewController *)self imageResourceBundleIdentifier];
    [(BPSIllustratedWatchView *)v22 setScreenImageSearchBundleIdentifier:v23];

    v24 = self->_illustratedWatchView;
    v20 = [(BPSWelcomeOptinViewController *)self imageResource];
    [(BPSIllustratedWatchView *)v24 setScreenImageName:v20];
  }

  else
  {
    v25 = [(BPSWelcomeOptinViewController *)self imageResource];

    if (!v25)
    {
      goto LABEL_14;
    }

    v20 = [MEMORY[0x277CCA8D8] mainBundle];
    v26 = [(BPSWelcomeOptinViewController *)self imageResourceBundleIdentifier];

    if (v26)
    {
      v27 = MEMORY[0x277CCA8D8];
      v28 = [(BPSWelcomeOptinViewController *)self imageResourceBundleIdentifier];
      v29 = [v27 bundleWithIdentifier:v28];

      v20 = v29;
    }

    v30 = MEMORY[0x277D755B8];
    v31 = [(BPSWelcomeOptinViewController *)self imageResource];
    v32 = [v30 imageNamed:v31 inBundle:v20];

    if (!v32)
    {
      v33 = MEMORY[0x277D755B8];
      v34 = [(BPSWelcomeOptinViewController *)self imageResource];
      v32 = [v33 systemImageNamed:v34];
    }

    v35 = [(BPSWelcomeOptinViewController *)self imageTintColor];

    if (v35)
    {
      v36 = [(BPSWelcomeOptinViewController *)self imageTintColor];
      v37 = [v32 imageWithTintColor:v36];

      v32 = v37;
    }

    v38 = [(BPSWelcomeOptinViewController *)self headerView];
    [v38 setIcon:v32 accessibilityLabel:0];
  }

LABEL_13:

LABEL_14:
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BPSWelcomeOptinViewController;
  [(OBBaseWelcomeController *)&v4 viewDidAppear:a3];
  [(BPSWelcomeOptinViewController *)self _startTapToRadarActivity];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BPSWelcomeOptinViewController;
  [(OBBaseWelcomeController *)&v4 viewWillDisappear:a3];
  [(BPSWelcomeOptinViewController *)self _endTapToRadarActivity];
}

- (void)_addButtonObservers
{
  v3 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  [v3 addObserver:self forKeyPath:@"hidden" options:1 context:BPSWelcomeOptinViewControllerKVOContext];

  v4 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [v4 addObserver:self forKeyPath:@"hidden" options:1 context:BPSWelcomeOptinViewControllerKVOContext];

  v5 = [(BPSWelcomeOptinViewController *)self okayButton];
  [v5 addObserver:self forKeyPath:@"hidden" options:1 context:BPSWelcomeOptinViewControllerKVOContext];
}

- (void)_removeButtonObservers
{
  v3 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  [v3 removeObserver:self forKeyPath:@"hidden"];

  v4 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [v4 removeObserver:self forKeyPath:@"hidden"];

  v5 = [(BPSWelcomeOptinViewController *)self okayButton];
  [v5 removeObserver:self forKeyPath:@"hidden"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (BPSWelcomeOptinViewControllerKVOContext == a6)
  {
    if ([@"hidden" isEqualToString:{a3, a4, a5}])
    {

      [(BPSWelcomeOptinViewController *)self _refreshButtonTray];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BPSWelcomeOptinViewController;
    [(BPSWelcomeOptinViewController *)&v7 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)_refreshButtonTray
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(BPSWelcomeOptinViewController *)self suggestedButtonTitle];
  if (v3 && ([(BPSWelcomeOptinViewController *)self wantsSuggestedChoicePillButton]|| [(BPSWelcomeOptinViewController *)self wantsSuggestedChoiceLinkButton]))
  {
    v4 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
    v5 = [v4 isHidden] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(BPSWelcomeOptinViewController *)self alternateButtonTitle];
  if (v6 && ([(BPSWelcomeOptinViewController *)self wantsAlternateChoiceSystemButton]|| [(BPSWelcomeOptinViewController *)self wantsAlternateChoicePillButton]))
  {
    v7 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
    v8 = [v7 isHidden] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BPSWelcomeOptinViewController *)self okayButtonTitle];
  if (v9 && [(BPSWelcomeOptinViewController *)self wantsOkayPillButton])
  {
    v10 = [(BPSWelcomeOptinViewController *)self okayButton];
    v11 = [v10 isHidden] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  if (v5 == [(BPSWelcomeOptinViewController *)self showSuggestedButton]&& v8 == [(BPSWelcomeOptinViewController *)self showAlternateButton]&& v11 == [(BPSWelcomeOptinViewController *)self showOkayButton]&& self->_hasFinishedLoadingView)
  {
    goto LABEL_50;
  }

  v12 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  v13 = [v12 superview];

  if (v13)
  {
    v14 = [(BPSWelcomeOptinViewController *)self buttonTray];
    v15 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
    [v14 removeButton:v15];
  }

  v16 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  v17 = [v16 superview];

  if (v17)
  {
    v18 = [(BPSWelcomeOptinViewController *)self buttonTray];
    v19 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
    [v18 removeButton:v19];
  }

  v20 = [(BPSWelcomeOptinViewController *)self okayButton];
  v21 = [v20 superview];

  if (v21)
  {
    v22 = [(BPSWelcomeOptinViewController *)self buttonTray];
    v23 = [(BPSWelcomeOptinViewController *)self okayButton];
    [v22 removeButton:v23];
  }

  if (!v5)
  {
    if (!v8)
    {
      goto LABEL_27;
    }

    goto LABEL_36;
  }

  v24 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];

  if (v24)
  {
    v25 = [(BPSWelcomeOptinViewController *)self buttonTray];
    v26 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
    [v25 addButton:v26];
LABEL_31:

    goto LABEL_35;
  }

  v25 = bps_setup_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v27 = objc_opt_class();
    v26 = NSStringFromClass(v27);
    v36 = 138412290;
    v37 = v26;
    _os_log_impl(&dword_241E74000, v25, OS_LOG_TYPE_DEFAULT, "Error: %@ wants suggestedChoiceButton but none was initialized", &v36, 0xCu);
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
    v32 = [(BPSWelcomeOptinViewController *)self okayButton];

    if (v32)
    {
      v33 = [(BPSWelcomeOptinViewController *)self buttonTray];
      v34 = [(BPSWelcomeOptinViewController *)self okayButton];
      [v33 addButton:v34];
    }

    else
    {
      v33 = bps_setup_log();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v35 = objc_opt_class();
      v34 = NSStringFromClass(v35);
      v36 = 138412290;
      v37 = v34;
      _os_log_impl(&dword_241E74000, v33, OS_LOG_TYPE_DEFAULT, "Error: %@ wants okayButton but none was initialized", &v36, 0xCu);
    }

LABEL_49:
    goto LABEL_50;
  }

LABEL_36:
  v28 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];

  if (v28)
  {
    v29 = [(BPSWelcomeOptinViewController *)self buttonTray];
    v30 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
    [v29 addButton:v30];
LABEL_38:

    goto LABEL_42;
  }

  v29 = bps_setup_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v31 = objc_opt_class();
    v30 = NSStringFromClass(v31);
    v36 = 138412290;
    v37 = v30;
    _os_log_impl(&dword_241E74000, v29, OS_LOG_TYPE_DEFAULT, "Error: %@ wants alternateChoiceButton but none was initialized", &v36, 0xCu);
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

- (void)showOptinConfirmationAlert:(id)a3 optinChoice:(BOOL)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"%@_ENABLE_ALERT_TITLE", v6];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_ENABLE_ALERT_BODY", v6];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_ENABLE_ALERT_CANCEL", v6];
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_ENABLE_ALERT_OK", v6];

  v10 = MEMORY[0x277D75110];
  v11 = [(BPSWelcomeOptinViewController *)self optinLocalizationBundle];
  v12 = [(BPSWelcomeOptinViewController *)self optinLocalizationStringsFile];
  v32 = v7;
  v13 = [v11 localizedStringForKey:v7 value:&stru_285406330 table:v12];
  v14 = [(BPSWelcomeOptinViewController *)self optinLocalizationBundle];
  v15 = [(BPSWelcomeOptinViewController *)self optinLocalizationStringsFile];
  v31 = v8;
  v16 = [v14 localizedStringForKey:v8 value:&stru_285406330 table:v15];
  v17 = [v10 alertControllerWithTitle:v13 message:v16 preferredStyle:1];

  v18 = MEMORY[0x277D750F8];
  v19 = [(BPSWelcomeOptinViewController *)self optinLocalizationBundle];
  v20 = [(BPSWelcomeOptinViewController *)self optinLocalizationStringsFile];
  v21 = [v19 localizedStringForKey:v9 value:&stru_285406330 table:v20];
  v22 = [v18 actionWithTitle:v21 style:1 handler:0];
  [v17 addAction:v22];

  v23 = MEMORY[0x277D750F8];
  v24 = [(BPSWelcomeOptinViewController *)self optinLocalizationBundle];
  v25 = [(BPSWelcomeOptinViewController *)self optinLocalizationStringsFile];
  v26 = [v24 localizedStringForKey:v29 value:&stru_285406330 table:v25];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __72__BPSWelcomeOptinViewController_showOptinConfirmationAlert_optinChoice___block_invoke;
  v34[3] = &unk_278D234C0;
  v34[4] = self;
  v35 = a4;
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

- (void)applyConfirmedOptin:(BOOL)a3
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
  v4 = [(BPSWelcomeOptinViewController *)self followUpIdentifier];
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v3, v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addFollowUpForPageAndDevice:(id)a3 withCompletion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(BPSWelcomeOptinViewController *)self _baseIdentifier];
  if (v8)
  {
    v18 = v7;
    v9 = [v6 valueForProperty:*MEMORY[0x277D2BC30]];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v8, v9];
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
      v24 = v6;
      _os_log_impl(&dword_241E74000, v12, OS_LOG_TYPE_DEFAULT, "...for device: %{public}@", buf, 0xCu);
    }

    v21[0] = @"title";
    v13 = [(BPSWelcomeOptinViewController *)self localizedTitle];
    v22[0] = v13;
    v21[1] = @"description";
    v14 = [(BPSWelcomeOptinViewController *)self localizedInformativeText];
    v22[1] = v14;
    v21[2] = @"followUpActions";
    v15 = [(BPSWelcomeOptinViewController *)self followUpActions];
    v22[2] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v17 = [BPSFollowUpAttributes attributeWithOptions:v16];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__BPSWelcomeOptinViewController_addFollowUpForPageAndDevice_withCompletion___block_invoke;
    v19[3] = &unk_278D23430;
    v7 = v18;
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

- (void)addFollowUpForPageWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BPSWelcomeOptinViewController *)self _baseIdentifier];
  v6 = bps_setup_log();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v5;
      _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "Add Global FollowUp for %{public}@", buf, 0xCu);
    }

    v14[0] = @"title";
    v8 = [(BPSWelcomeOptinViewController *)self localizedTitle];
    v15[0] = v8;
    v14[1] = @"description";
    v9 = [(BPSWelcomeOptinViewController *)self localizedInformativeText];
    v15[1] = v9;
    v14[2] = @"followUpActions";
    v10 = [(BPSWelcomeOptinViewController *)self followUpActions];
    v15[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v7 = [BPSFollowUpAttributes attributeWithOptions:v11];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__BPSWelcomeOptinViewController_addFollowUpForPageWithCompletion___block_invoke;
    v12[3] = &unk_278D23430;
    v13 = v4;
    [BPSFollowUpController addFollowUpForIdentifier:v5 withAttributes:v7 withCompletion:v12];
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

- (void)removeFollowupForPageWithCompletion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BPSWelcomeOptinViewController *)self followUpIdentifier];
  v6 = bps_setup_log();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v5;
      _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "Remove identifier %{public}@", buf, 0xCu);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__BPSWelcomeOptinViewController_removeFollowupForPageWithCompletion___block_invoke;
    v8[3] = &unk_278D23430;
    v9 = v4;
    [BPSFollowUpController removeFollowUpForIdentifier:v5 withCompletion:v8];
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
  v2 = [(BPSWelcomeOptinViewController *)self tapToRadarMetadata];
  if (v2)
  {
    [BPSTapToRadarCoordinator openTapToRadarWithInitialMetadata:v2];
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
    v3 = [(BPSWelcomeOptinViewController *)self tapToRadarMetadata];

    if (v3)
    {
      v4 = [(BPSWelcomeOptinViewController *)self tapToRadarMetadata];
      v5 = [BPSTapToRadarCoordinator tapToRadarUserActivityWithInitialMetadata:v4];
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

- (void)_didTapPrivacyAccept:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v4 = [(BPSWelcomeOptinViewController *)self privacyBundles];

  if (v4)
  {
    v5 = [(BPSWelcomeOptinViewController *)self delegate];
    v23 = [v5 setupFlowUserInfo];

    v6 = [v23 objectForKey:@"BPSPairingFlowIsTinkerPairing"];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = [v23 objectForKey:@"BPSPairingFlowFamilyMember"];
      v9 = [v8 dsid];
      if (!v9 || ([MEMORY[0x277CB8F48] ams_sharedAccountStore], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "ams_iTunesAccountWithDSID:", v9), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
      {
        v12 = bps_setup_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241E74000, v12, OS_LOG_TYPE_DEFAULT, "Error acknowledging privacy bundle: alt account pairing but we could not map an alt ACAccount", buf, 2u);
        }

        v11 = 0;
      }
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277CB8F48]);
      v11 = [v13 aa_primaryAppleAccount];
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
          v20 = [[v18 alloc] initWithPrivacyIdentifier:v17 account:v11];
          v21 = [v20 acknowledgePrivacy];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __54__BPSWelcomeOptinViewController__didTapPrivacyAccept___block_invoke;
          v25[3] = &unk_278D23538;
          v25[4] = v17;
          [v21 addFinishBlock:v25];

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

+ (id)expressModeSettingsItem:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = objc_opt_new();
    v6 = [a1 expressModeSettingsString:v4];
    [v5 setTitle:v6];

    if (objc_opt_respondsToSelector())
    {
      v7 = [a1 imageForExpressSetting];
      [v5 setImage:v7];
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
  v2 = [(BPSWelcomeOptinViewController *)self privacyBundles];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [MEMORY[0x277D37630] bundleWithIdentifier:v3];
    v5 = [v4 privacyFlow];
    v6 = [v5 localizedButtonTitle];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_learnMoreButtonPrivacyPressed:(id)a3
{
  v8 = [(BPSWelcomeOptinViewController *)self privacyBundles];
  v4 = [v8 count];
  v5 = MEMORY[0x277D37678];
  if (v4 == 1)
  {
    v6 = [v8 firstObject];
    v7 = [v5 presenterForPrivacySplashWithIdentifier:v6];
  }

  else
  {
    v7 = [MEMORY[0x277D37678] presenterForPrivacyUnifiedAboutWithIdentifiers:v8];
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