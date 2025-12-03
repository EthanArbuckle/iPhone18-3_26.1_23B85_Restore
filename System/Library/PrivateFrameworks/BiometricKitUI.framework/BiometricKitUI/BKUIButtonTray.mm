@interface BKUIButtonTray
- (BKUIButtonTray)initWithFrame:(CGRect)frame willUseActionDelegate:(BOOL)delegate;
- (BKUIButtonTrayActionDelegate)actionDelegate;
- (CGSize)intrinsicContentSize;
- (double)_bottomPadding;
- (id)horizontalLayoutConstraints:(id)constraints;
- (id)nextStateButtonContainerHorizontalPositionConstraint:(BOOL)constraint;
- (int64_t)displayState;
- (void)_layoutInternalButtonsForDisplayState:(int64_t)state;
- (void)allButtonsView;
- (void)continueButtonPressed:(id)pressed;
- (void)linkButtonPressed:(id)pressed;
- (void)noButtonsView;
- (void)oneButtonView:(id)view;
- (void)resetAlphaForAllButtons;
- (void)resetConstraintsForButtons;
- (void)setupDebugUITraits;
- (void)showRetryButton;
- (void)topLinkButtonPressed:(id)pressed;
- (void)twoButtonView:(id)view secondButton:(id)button;
- (void)updateButtonLayout;
- (void)updateInitialButtonLayout;
@end

@implementation BKUIButtonTray

- (BKUIButtonTray)initWithFrame:(CGRect)frame willUseActionDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v124[4] = *MEMORY[0x277D85DE8];
  v117.receiver = self;
  v117.super_class = BKUIButtonTray;
  v8 = [(BKUIButtonTray *)&v117 initWithFrame:?];
  if (!v8)
  {
    goto LABEL_14;
  }

  if (_os_feature_enabled_impl())
  {
    v9 = _os_feature_enabled_impl();
    v8->_isSolarium = v9;
    if (v9)
    {
      boldButton = [MEMORY[0x277D37618] boldButton];
      nextStateButton = v8->_nextStateButton;
      v8->_nextStateButton = boldButton;

      linkButton = [MEMORY[0x277D37650] linkButton];
      topLinkButton = v8->_topLinkButton;
      v8->_topLinkButton = linkButton;

      linkButton2 = [MEMORY[0x277D37650] linkButton];
      bottomLinkButton = v8->_bottomLinkButton;
      v8->_bottomLinkButton = linkButton2;

      [(BKUIButtonTray *)v8 resetAlphaForAllButtons];
      [(BKUIButtonTray *)v8 addSubview:v8->_nextStateButton];
      [(BKUIButtonTray *)v8 addSubview:v8->_topLinkButton];
      [(BKUIButtonTray *)v8 addSubview:v8->_bottomLinkButton];
      [(BKUIButtonTray *)v8 updateInitialButtonLayout];
      [(BKUIButtonTray *)v8 setupDebugUITraits];
      if (delegateCopy)
      {
        v8->_willUseActionDelegate = delegateCopy;
        [(UIButton *)v8->_topLinkButton addTarget:v8 action:sel_topLinkButtonPressed_ forControlEvents:64];
        [(UIButton *)v8->_nextStateButton addTarget:v8 action:sel_continueButtonPressed_ forControlEvents:64];
        [(UIButton *)v8->_bottomLinkButton addTarget:v8 action:sel_linkButtonPressed_ forControlEvents:64];
      }

      goto LABEL_14;
    }
  }

  else
  {
    v8->_isSolarium = 0;
  }

  [BKUIStyle _obkStyleButtonMarginsForParentBounds:x, y, width, height];
  v17 = v16;
  v19 = v18;
  v20 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, height}];
  nextStateButtonContainer = v8->_nextStateButtonContainer;
  v8->_nextStateButtonContainer = v20;

  [(UIView *)v8->_nextStateButtonContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BKUIButtonTray *)v8 addSubview:v8->_nextStateButtonContainer];
  v22 = +[BKUIStyle sharedStyle];
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"START_ENROLL" value:&stru_2853BB280 table:@"Pearl-periocular"];
  v25 = [v22 continueButtonWithTitle:v24 inView:v8->_nextStateButtonContainer];
  v26 = v8->_nextStateButton;
  v8->_nextStateButton = v25;

  layer = [(UIButton *)v8->_nextStateButton layer];
  [layer setCornerCurve:*MEMORY[0x277CDA138]];

  v28 = [MEMORY[0x277D75220] buttonWithType:1];
  v29 = v8->_bottomLinkButton;
  v8->_bottomLinkButton = v28;

  v30 = MEMORY[0x277D74310];
  inSheet = [(BKUIButtonTray *)v8 inSheet];
  v32 = MEMORY[0x277D76A28];
  if (!inSheet)
  {
    v32 = MEMORY[0x277D76918];
  }

  v111 = [v30 preferredFontDescriptorWithTextStyle:*v32];
  v33 = MEMORY[0x277D74300];
  v34 = [v111 fontDescriptorWithSymbolicTraits:2];
  v113 = [v33 fontWithDescriptor:v34 size:0.0];

  titleLabel = [(UIButton *)v8->_bottomLinkButton titleLabel];
  [titleLabel setFont:v113];

  titleLabel2 = [(UIButton *)v8->_bottomLinkButton titleLabel];
  [titleLabel2 setAdjustsFontSizeToFitWidth:1];

  [(UIButton *)v8->_bottomLinkButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BKUIButtonTray *)v8 addSubview:v8->_bottomLinkButton];
  LODWORD(v37) = 1148846080;
  [(UIButton *)v8->_bottomLinkButton setContentHuggingPriority:1 forAxis:v37];
  leftAnchor = [(UIButton *)v8->_bottomLinkButton leftAnchor];
  leftAnchor2 = [(BKUIButtonTray *)v8 leftAnchor];
  v40 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v17];
  escapeHatchButtonLeadingConstraint = v8->_escapeHatchButtonLeadingConstraint;
  v8->_escapeHatchButtonLeadingConstraint = v40;

  rightAnchor = [(UIButton *)v8->_bottomLinkButton rightAnchor];
  rightAnchor2 = [(BKUIButtonTray *)v8 rightAnchor];
  v44 = -v19;
  v45 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:v44];
  escapeHatchButtonTrailingConstraint = v8->_escapeHatchButtonTrailingConstraint;
  v8->_escapeHatchButtonTrailingConstraint = v45;

  LODWORD(v47) = 1148829696;
  [(NSLayoutConstraint *)v8->_escapeHatchButtonBottomConstraint setPriority:v47];

  v48 = MEMORY[0x277CCAAD0];
  v124[0] = v8->_escapeHatchButtonLeadingConstraint;
  v124[1] = v8->_escapeHatchButtonTrailingConstraint;
  centerXAnchor = [(UIButton *)v8->_bottomLinkButton centerXAnchor];
  centerXAnchor2 = [(BKUIButtonTray *)v8 centerXAnchor];
  v51 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v124[2] = v51;
  heightAnchor = [(UIButton *)v8->_bottomLinkButton heightAnchor];
  [(UIButton *)v8->_nextStateButton frame];
  v54 = [heightAnchor constraintEqualToConstant:v53];
  v124[3] = v54;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:4];
  [v48 activateConstraints:v55];

  rightAnchor3 = [(UIView *)v8->_nextStateButtonContainer rightAnchor];
  rightAnchor4 = [(BKUIButtonTray *)v8 rightAnchor];
  v58 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  nextStateButtonContainerHorizontalPositionConstraint = v8->_nextStateButtonContainerHorizontalPositionConstraint;
  v8->_nextStateButtonContainerHorizontalPositionConstraint = v58;

  topAnchor = [(BKUIButtonTray *)v8 topAnchor];
  topAnchor2 = [(UIView *)v8->_nextStateButtonContainer topAnchor];
  v62 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-5.0];
  v123 = v62;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:&v123 count:1];
  layoutConstraints = v8->_layoutConstraints;
  v8->_layoutConstraints = v63;

  v65 = MEMORY[0x277CCAAD0];
  layoutConstraints = [(BKUIButtonTray *)v8 layoutConstraints];
  [v65 activateConstraints:layoutConstraints];

  v67 = MEMORY[0x277CCAAD0];
  v122[0] = v8->_nextStateButtonContainerHorizontalPositionConstraint;
  widthAnchor = [(UIView *)v8->_nextStateButtonContainer widthAnchor];
  widthAnchor2 = [(BKUIButtonTray *)v8 widthAnchor];
  v70 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v122[1] = v70;
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v122 count:2];
  [v67 activateConstraints:v71];

  [(UIButton *)v8->_nextStateButton setAlpha:0.0];
  [(UIButton *)v8->_nextStateButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v8->_nextStateButtonContainer addSubview:v8->_nextStateButton];
  v107 = MEMORY[0x277CCAAD0];
  topAnchor3 = [(UIButton *)v8->_nextStateButton topAnchor];
  topAnchor4 = [(UIView *)v8->_nextStateButtonContainer topAnchor];
  v108 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v121[0] = v108;
  bottomAnchor = [(UIButton *)v8->_nextStateButton bottomAnchor];
  bottomAnchor2 = [(UIView *)v8->_nextStateButtonContainer bottomAnchor];
  v74 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v121[1] = v74;
  heightAnchor2 = [(UIButton *)v8->_nextStateButton heightAnchor];
  [(UIButton *)v8->_nextStateButton frame];
  v77 = [heightAnchor2 constraintEqualToConstant:v76];
  v121[2] = v77;
  bottomAnchor3 = [(UIButton *)v8->_nextStateButton bottomAnchor];
  bottomAnchor4 = [(UIView *)v8->_nextStateButtonContainer bottomAnchor];
  v80 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v121[3] = v80;
  v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v121 count:4];
  [v107 activateConstraints:v81];

  leftAnchor3 = [(UIButton *)v8->_nextStateButton leftAnchor];
  leftAnchor4 = [(UIView *)v8->_nextStateButtonContainer leftAnchor];
  v84 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:v17];
  v120[0] = v84;
  rightAnchor5 = [(UIButton *)v8->_nextStateButton rightAnchor];
  rightAnchor6 = [(UIView *)v8->_nextStateButtonContainer rightAnchor];
  v87 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6 constant:v44];
  v120[1] = v87;
  v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v120 count:2];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  LODWORD(leftAnchor4) = [currentDevice userInterfaceIdiom] == 1;

  if (leftAnchor4)
  {
    widthAnchor3 = [(UIButton *)v8->_nextStateButton widthAnchor];
    +[BKUIStyle _buttonSizeForPads];
    v91 = [widthAnchor3 constraintEqualToConstant:?];
    v119[0] = v91;
    centerXAnchor3 = [(UIButton *)v8->_nextStateButton centerXAnchor];
    centerXAnchor4 = [(BKUIButtonTray *)v8 centerXAnchor];
    v94 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v119[1] = v94;
    v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:2];

    v88 = v95;
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v88];
  [(BKUIButtonTray *)v8 _layoutInternalButtonsForDisplayState:3];
  v96 = [MEMORY[0x277D75220] buttonWithType:1];
  v97 = v8->_topLinkButton;
  v8->_topLinkButton = v96;

  titleLabel3 = [(UIButton *)v8->_topLinkButton titleLabel];
  [titleLabel3 setFont:v113];

  titleLabel4 = [(UIButton *)v8->_topLinkButton titleLabel];
  [titleLabel4 setAdjustsFontSizeToFitWidth:1];

  [(UIButton *)v8->_topLinkButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v100 = v8->_topLinkButton;
  v101 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v102 = [v101 localizedStringForKey:@"TRY_AGAIN" value:&stru_2853BB280 table:@"Pearl-periocular"];
  [(UIButton *)v100 setTitle:v102 forState:0];

  [(UIButton *)v8->_topLinkButton setAlpha:0.0];
  if (delegateCopy)
  {
    v8->_willUseActionDelegate = delegateCopy;
    [(UIButton *)v8->_topLinkButton addTarget:v8 action:sel_topLinkButtonPressed_ forControlEvents:64];
    [(UIButton *)v8->_nextStateButton addTarget:v8 action:sel_continueButtonPressed_ forControlEvents:64];
    [(UIButton *)v8->_bottomLinkButton addTarget:v8 action:sel_linkButtonPressed_ forControlEvents:64];
  }

  objc_initWeak(&location, v8);
  v118[0] = objc_opt_class();
  v118[1] = objc_opt_class();
  v103 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:2];
  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = __54__BKUIButtonTray_initWithFrame_willUseActionDelegate___block_invoke;
  v114[3] = &unk_278D09928;
  objc_copyWeak(&v115, &location);
  v104 = [(BKUIButtonTray *)v8 registerForTraitChanges:v103 withHandler:v114];
  [(BKUIButtonTray *)v8 setTraitChangeRegistration:v104];

  objc_destroyWeak(&v115);
  objc_destroyWeak(&location);

LABEL_14:
  v105 = *MEMORY[0x277D85DE8];
  return v8;
}

void __54__BKUIButtonTray_initWithFrame_willUseActionDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bounds];
  [BKUIStyle _obkStyleButtonMarginsForParentBounds:?];
  v2 = v1;
  v4 = v3;
  v5 = [WeakRetained escapeHatchButtonLeadingConstraint];
  [v5 setConstant:v2];

  v6 = [WeakRetained escapeHatchButtonTrailingConstraint];
  [v6 setConstant:-v4];

  [WeakRetained setNeedsLayout];
  [WeakRetained layoutIfNeeded];
}

- (void)topLinkButtonPressed:(id)pressed
{
  actionDelegate = [(BKUIButtonTray *)self actionDelegate];
  [actionDelegate buttonSelectedWithButtonTrayPosition:1];
}

- (void)linkButtonPressed:(id)pressed
{
  actionDelegate = [(BKUIButtonTray *)self actionDelegate];
  [actionDelegate buttonSelectedWithButtonTrayPosition:3];
}

- (void)continueButtonPressed:(id)pressed
{
  actionDelegate = [(BKUIButtonTray *)self actionDelegate];
  [actionDelegate buttonSelectedWithButtonTrayPosition:2];
}

- (void)_layoutInternalButtonsForDisplayState:(int64_t)state
{
  v44[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAAD0];
  layoutConstraints = [(BKUIButtonTray *)self layoutConstraints];
  [v5 deactivateConstraints:layoutConstraints];

  if (state > 2)
  {
    if (state == 3)
    {
      nextStateButtonContainer = [(BKUIButtonTray *)self nextStateButtonContainer];
      topAnchor = [nextStateButtonContainer topAnchor];
      topAnchor2 = [(BKUIButtonTray *)self topAnchor];
      v40 = topAnchor;
      v38 = [topAnchor constraintEqualToAnchor:5.0 constant:?];
      v42[0] = v38;
      bottomLinkButton = [(BKUIButtonTray *)self bottomLinkButton];
      topAnchor3 = [bottomLinkButton topAnchor];
      nextStateButtonContainer2 = [(BKUIButtonTray *)self nextStateButtonContainer];
      bottomAnchor = [nextStateButtonContainer2 bottomAnchor];
      v36 = topAnchor3;
      nextStateButtonContainer4 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:5.0];
      v42[1] = nextStateButtonContainer4;
      bottomLinkButton2 = [(BKUIButtonTray *)self bottomLinkButton];
      bottomAnchor2 = [bottomLinkButton2 bottomAnchor];
      bottomAnchor3 = [(BKUIButtonTray *)self bottomAnchor];
      [(BKUIButtonTray *)self _bottomPadding];
      v22 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-v30];
      v42[2] = v22;
      v23 = MEMORY[0x277CBEA60];
      v24 = v42;
    }

    else
    {
      if (state != 4)
      {
        goto LABEL_13;
      }

      nextStateButtonContainer = [(BKUIButtonTray *)self nextStateButtonContainer];
      topAnchor4 = [nextStateButtonContainer topAnchor];
      topAnchor2 = [(BKUIButtonTray *)self topAnchor];
      v40 = topAnchor4;
      v38 = [topAnchor4 constraintEqualToAnchor:0.0 constant:?];
      v41[0] = v38;
      bottomLinkButton = [(BKUIButtonTray *)self bottomLinkButton];
      topAnchor5 = [bottomLinkButton topAnchor];
      nextStateButtonContainer2 = [(BKUIButtonTray *)self nextStateButtonContainer];
      bottomAnchor = [nextStateButtonContainer2 bottomAnchor];
      v36 = topAnchor5;
      nextStateButtonContainer4 = [topAnchor5 constraintEqualToAnchor:bottomAnchor constant:0.0];
      v41[1] = nextStateButtonContainer4;
      bottomLinkButton2 = [(BKUIButtonTray *)self bottomLinkButton];
      bottomAnchor2 = [bottomLinkButton2 bottomAnchor];
      bottomAnchor3 = [(BKUIButtonTray *)self bottomAnchor];
      v22 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:0.0];
      v41[2] = v22;
      v23 = MEMORY[0x277CBEA60];
      v24 = v41;
    }

    v31 = [v23 arrayWithObjects:v24 count:3];
    [(BKUIButtonTray *)self setLayoutConstraints:v31];

    nextStateButtonContainer3 = nextStateButtonContainer;
    goto LABEL_12;
  }

  if (state == 1)
  {
    nextStateButtonContainer3 = [(BKUIButtonTray *)self nextStateButtonContainer];
    topAnchor6 = [nextStateButtonContainer3 topAnchor];
    topAnchor2 = [(BKUIButtonTray *)self topAnchor];
    v40 = topAnchor6;
    v38 = [topAnchor6 constraintEqualToAnchor:5.0 constant:?];
    v44[0] = v38;
    bottomLinkButton = [(BKUIButtonTray *)self bottomLinkButton];
    topAnchor7 = [bottomLinkButton topAnchor];
    nextStateButtonContainer2 = [(UIView *)self->_nextStateButtonContainer bottomAnchor];
    v36 = topAnchor7;
    bottomAnchor = [topAnchor7 constraintEqualToAnchor:nextStateButtonContainer2 constant:0.0];
    v44[1] = bottomAnchor;
    nextStateButtonContainer4 = [(BKUIButtonTray *)self nextStateButtonContainer];
    bottomLinkButton2 = [nextStateButtonContainer4 bottomAnchor];
    bottomAnchor2 = [(BKUIButtonTray *)self bottomAnchor];
    [(BKUIButtonTray *)self _bottomPadding];
    bottomAnchor3 = [bottomLinkButton2 constraintEqualToAnchor:bottomAnchor2 constant:-v27];
    v44[2] = bottomAnchor3;
    v18 = MEMORY[0x277CBEA60];
    v19 = v44;
    goto LABEL_9;
  }

  if (state == 2)
  {
    bottomLinkButton3 = [(BKUIButtonTray *)self bottomLinkButton];
    [bottomLinkButton3 setAlpha:1.0];

    nextStateButtonContainer3 = [(BKUIButtonTray *)self nextStateButtonContainer];
    topAnchor8 = [nextStateButtonContainer3 topAnchor];
    topAnchor2 = [(BKUIButtonTray *)self topAnchor];
    v40 = topAnchor8;
    v38 = [topAnchor8 constraintEqualToAnchor:0.0 constant:?];
    v43[0] = v38;
    bottomLinkButton = [(BKUIButtonTray *)self bottomLinkButton];
    topAnchor9 = [bottomLinkButton topAnchor];
    nextStateButtonContainer2 = [(BKUIButtonTray *)self topAnchor];
    v36 = topAnchor9;
    bottomAnchor = [topAnchor9 constraintEqualToAnchor:nextStateButtonContainer2 constant:5.0];
    v43[1] = bottomAnchor;
    nextStateButtonContainer4 = [(BKUIButtonTray *)self nextStateButtonContainer];
    bottomLinkButton2 = [nextStateButtonContainer4 bottomAnchor];
    bottomAnchor2 = [(BKUIButtonTray *)self bottomAnchor];
    [(BKUIButtonTray *)self _bottomPadding];
    bottomAnchor3 = [bottomLinkButton2 constraintEqualToAnchor:bottomAnchor2 constant:-v16];
    v43[2] = bottomAnchor3;
    v18 = MEMORY[0x277CBEA60];
    v19 = v43;
LABEL_9:
    v22 = [v18 arrayWithObjects:v19 count:3];
    [(BKUIButtonTray *)self setLayoutConstraints:v22];
LABEL_12:
  }

LABEL_13:
  v32 = MEMORY[0x277CCAAD0];
  layoutConstraints2 = [(BKUIButtonTray *)self layoutConstraints];
  [v32 activateConstraints:layoutConstraints2];

  v34 = *MEMORY[0x277D85DE8];
}

- (id)nextStateButtonContainerHorizontalPositionConstraint:(BOOL)constraint
{
  constraintCopy = constraint;
  nextStateButtonContainer = [(BKUIButtonTray *)self nextStateButtonContainer];
  [nextStateButtonContainer removeConstraint:self->_nextStateButtonContainerHorizontalPositionConstraint];

  nextStateButtonContainerHorizontalPositionConstraint = [(BKUIButtonTray *)self nextStateButtonContainerHorizontalPositionConstraint];
  [nextStateButtonContainerHorizontalPositionConstraint setActive:0];

  nextStateButtonContainer2 = [(BKUIButtonTray *)self nextStateButtonContainer];
  v8 = nextStateButtonContainer2;
  if (constraintCopy)
  {
    rightAnchor = [nextStateButtonContainer2 rightAnchor];
    [(BKUIButtonTray *)self leftAnchor];
  }

  else
  {
    rightAnchor = [nextStateButtonContainer2 leftAnchor];
    [(BKUIButtonTray *)self rightAnchor];
  }
  v10 = ;
  v11 = [rightAnchor constraintEqualToAnchor:v10];
  [(BKUIButtonTray *)self setNextStateButtonContainerHorizontalPositionConstraint:v11];

  return [(BKUIButtonTray *)self nextStateButtonContainerHorizontalPositionConstraint];
}

- (void)updateButtonLayout
{
  v122 = *MEMORY[0x277D85DE8];
  if (self->_isSolarium)
  {
    v3 = _BKUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      nextStateButton = [(BKUIButtonTray *)self nextStateButton];
      currentTitle = [nextStateButton currentTitle];
      v4 = MEMORY[0x277CCABB0];
      nextStateButton2 = [(BKUIButtonTray *)self nextStateButton];
      [nextStateButton2 alpha];
      v100 = [v4 numberWithDouble:?];
      v5 = MEMORY[0x277CCABB0];
      nextStateButton3 = [(BKUIButtonTray *)self nextStateButton];
      v6 = [v5 numberWithBool:{objc_msgSend(nextStateButton3, "isEnabled")}];
      bottomLinkButton = [(BKUIButtonTray *)self bottomLinkButton];
      currentTitle2 = [bottomLinkButton currentTitle];
      v8 = MEMORY[0x277CCABB0];
      bottomLinkButton2 = [(BKUIButtonTray *)self bottomLinkButton];
      [bottomLinkButton2 alpha];
      [v8 numberWithDouble:?];
      v9 = log = v3;
      v10 = MEMORY[0x277CCABB0];
      bottomLinkButton3 = [(BKUIButtonTray *)self bottomLinkButton];
      v11 = [v10 numberWithBool:{objc_msgSend(bottomLinkButton3, "isEnabled")}];
      topLinkButton = [(BKUIButtonTray *)self topLinkButton];
      currentTitle3 = [topLinkButton currentTitle];
      v13 = MEMORY[0x277CCABB0];
      topLinkButton2 = [(BKUIButtonTray *)self topLinkButton];
      [topLinkButton2 alpha];
      v15 = [v13 numberWithDouble:?];
      v16 = MEMORY[0x277CCABB0];
      topLinkButton3 = [(BKUIButtonTray *)self topLinkButton];
      v18 = [v16 numberWithBool:{objc_msgSend(topLinkButton3, "isEnabled")}];
      *buf = 138414338;
      v105 = currentTitle;
      v106 = 2112;
      v107 = v100;
      v108 = 2112;
      v109 = v6;
      v110 = 2112;
      v111 = currentTitle2;
      v112 = 2112;
      v113 = v9;
      v114 = 2112;
      v115 = v11;
      v116 = 2112;
      v117 = currentTitle3;
      v118 = 2112;
      v119 = v15;
      v120 = 2112;
      v121 = v18;
      _os_log_impl(&dword_241B0A000, log, OS_LOG_TYPE_DEFAULT, "ButtonTray: Next State button [%@ - willShow:%@ isEnabled:%@] | Bottom Link button [%@ - willShow:%@ isEnabled:%@] | Top Link button [%@ - willShow:%@ isEnabled:%@]", buf, 0x5Cu);

      v3 = log;
    }

    nextStateButton4 = [(BKUIButtonTray *)self nextStateButton];
    [nextStateButton4 alpha];
    if (v20 == 0.0)
    {
      bottomLinkButton4 = [(BKUIButtonTray *)self bottomLinkButton];
      [bottomLinkButton4 alpha];
      if (v22 == 0.0)
      {
        topLinkButton4 = [(BKUIButtonTray *)self topLinkButton];
        [topLinkButton4 alpha];
        v25 = v24;

        if (v25 == 0.0)
        {
          [(BKUIButtonTray *)self noButtonsView];
LABEL_55:
          v82 = _BKUILoggingFacility();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241B0A000, v82, OS_LOG_TYPE_DEFAULT, "ButtonTray: Refreshing content", buf, 2u);
          }

          [(BKUIButtonTray *)self invalidateIntrinsicContentSize];
          nextStateButton5 = [(BKUIButtonTray *)self nextStateButton];
          [nextStateButton5 setNeedsLayout];

          topLinkButton5 = [(BKUIButtonTray *)self topLinkButton];
          [topLinkButton5 setNeedsLayout];

          bottomLinkButton5 = [(BKUIButtonTray *)self bottomLinkButton];
          [bottomLinkButton5 setNeedsLayout];

          layer = [(BKUIButtonTray *)self layer];
          [layer setNeedsLayout];

          v87 = *MEMORY[0x277D85DE8];
          return;
        }

LABEL_16:
        nextStateButton6 = [(BKUIButtonTray *)self nextStateButton];
        [nextStateButton6 alpha];
        if (v36 == 1.0)
        {
          bottomLinkButton6 = [(BKUIButtonTray *)self bottomLinkButton];
          [bottomLinkButton6 alpha];
          if (v38 == 0.0)
          {
            topLinkButton6 = [(BKUIButtonTray *)self topLinkButton];
            [topLinkButton6 alpha];
            v41 = v40;

            if (v41 == 0.0)
            {
              nextStateButton7 = [(BKUIButtonTray *)self nextStateButton];
LABEL_38:
              nextStateButton10 = nextStateButton7;
              [(BKUIButtonTray *)self oneButtonView:nextStateButton7];
LABEL_54:

              goto LABEL_55;
            }

LABEL_22:
            nextStateButton8 = [(BKUIButtonTray *)self nextStateButton];
            [nextStateButton8 alpha];
            if (v44 == 0.0)
            {
              bottomLinkButton7 = [(BKUIButtonTray *)self bottomLinkButton];
              [bottomLinkButton7 alpha];
              if (v46 == 1.0)
              {
                topLinkButton7 = [(BKUIButtonTray *)self topLinkButton];
                [topLinkButton7 alpha];
                v49 = v48;

                if (v49 == 0.0)
                {
                  nextStateButton7 = [(BKUIButtonTray *)self bottomLinkButton];
                  goto LABEL_38;
                }

LABEL_28:
                nextStateButton9 = [(BKUIButtonTray *)self nextStateButton];
                [nextStateButton9 alpha];
                if (v51 == 1.0)
                {
                  bottomLinkButton8 = [(BKUIButtonTray *)self bottomLinkButton];
                  [bottomLinkButton8 alpha];
                  if (v53 == 1.0)
                  {
                    topLinkButton8 = [(BKUIButtonTray *)self topLinkButton];
                    [topLinkButton8 alpha];
                    v56 = v55;

                    if (v56 == 0.0)
                    {
                      nextStateButton10 = [(BKUIButtonTray *)self nextStateButton];
                      bottomLinkButton9 = [(BKUIButtonTray *)self bottomLinkButton];
LABEL_52:
                      bottomLinkButton13 = bottomLinkButton9;
                      [(BKUIButtonTray *)self twoButtonView:nextStateButton10 secondButton:bottomLinkButton9];
LABEL_53:

                      goto LABEL_54;
                    }

LABEL_34:
                    nextStateButton11 = [(BKUIButtonTray *)self nextStateButton];
                    [nextStateButton11 alpha];
                    if (v60 == 0.0)
                    {
                      bottomLinkButton10 = [(BKUIButtonTray *)self bottomLinkButton];
                      [bottomLinkButton10 alpha];
                      if (v62 == 0.0)
                      {
                        topLinkButton9 = [(BKUIButtonTray *)self topLinkButton];
                        [topLinkButton9 alpha];
                        v65 = v64;

                        if (v65 == 1.0)
                        {
                          nextStateButton7 = [(BKUIButtonTray *)self topLinkButton];
                          goto LABEL_38;
                        }

LABEL_41:
                        nextStateButton12 = [(BKUIButtonTray *)self nextStateButton];
                        [nextStateButton12 alpha];
                        if (v67 == 1.0)
                        {
                          bottomLinkButton11 = [(BKUIButtonTray *)self bottomLinkButton];
                          [bottomLinkButton11 alpha];
                          if (v69 == 0.0)
                          {
                            topLinkButton10 = [(BKUIButtonTray *)self topLinkButton];
                            [topLinkButton10 alpha];
                            v72 = v71;

                            if (v72 == 1.0)
                            {
                              nextStateButton13 = [(BKUIButtonTray *)self nextStateButton];
LABEL_51:
                              nextStateButton10 = nextStateButton13;
                              bottomLinkButton9 = [(BKUIButtonTray *)self topLinkButton];
                              goto LABEL_52;
                            }

LABEL_47:
                            nextStateButton14 = [(BKUIButtonTray *)self nextStateButton];
                            [nextStateButton14 alpha];
                            if (v75 == 0.0)
                            {
                              bottomLinkButton12 = [(BKUIButtonTray *)self bottomLinkButton];
                              [bottomLinkButton12 alpha];
                              if (v77 == 1.0)
                              {
                                topLinkButton11 = [(BKUIButtonTray *)self topLinkButton];
                                [topLinkButton11 alpha];
                                v80 = v79;

                                if (v80 == 1.0)
                                {
                                  nextStateButton13 = [(BKUIButtonTray *)self bottomLinkButton];
                                  goto LABEL_51;
                                }

LABEL_60:
                                nextStateButton10 = [(BKUIButtonTray *)self nextStateButton];
                                [nextStateButton10 alpha];
                                if (v88 != 1.0)
                                {
                                  goto LABEL_54;
                                }

                                bottomLinkButton13 = [(BKUIButtonTray *)self bottomLinkButton];
                                [bottomLinkButton13 alpha];
                                if (v89 == 1.0)
                                {
                                  topLinkButton12 = [(BKUIButtonTray *)self topLinkButton];
                                  [topLinkButton12 alpha];
                                  v92 = v91;

                                  if (v92 == 1.0)
                                  {
                                    [(BKUIButtonTray *)self allButtonsView];
                                  }

                                  goto LABEL_55;
                                }

                                goto LABEL_53;
                              }
                            }

                            goto LABEL_60;
                          }
                        }

                        goto LABEL_47;
                      }
                    }

                    goto LABEL_41;
                  }
                }

                goto LABEL_34;
              }
            }

            goto LABEL_28;
          }
        }

        goto LABEL_22;
      }
    }

    goto LABEL_16;
  }

  topLinkButton13 = [(BKUIButtonTray *)self topLinkButton];
  [topLinkButton13 alpha];
  v28 = v27;

  if (v28 == 1.0)
  {
    [(BKUIButtonTray *)self showRetryButton];
    nextStateButton15 = [(BKUIButtonTray *)self nextStateButton];
    [nextStateButton15 setHidden:1];

    [(BKUIButtonTray *)self _layoutInternalButtonsForDisplayState:3];
  }

  else
  {
    topLinkButton14 = [(BKUIButtonTray *)self topLinkButton];
    [topLinkButton14 removeFromSuperview];

    nextStateButton16 = [(BKUIButtonTray *)self nextStateButton];
    [nextStateButton16 setHidden:0];
  }

  nextStateButtonContainer = [(BKUIButtonTray *)self nextStateButtonContainer];
  [nextStateButtonContainer setNeedsLayout];

  nextStateButton17 = [(BKUIButtonTray *)self nextStateButton];
  [nextStateButton17 setNeedsLayout];

  topLinkButton15 = [(BKUIButtonTray *)self topLinkButton];
  [topLinkButton15 setNeedsLayout];
  v34 = *MEMORY[0x277D85DE8];
}

- (void)showRetryButton
{
  v30[4] = *MEMORY[0x277D85DE8];
  nextStateButtonContainer = [(BKUIButtonTray *)self nextStateButtonContainer];
  topLinkButton = [(BKUIButtonTray *)self topLinkButton];
  [nextStateButtonContainer addSubview:topLinkButton];

  v20 = MEMORY[0x277CCAAD0];
  topLinkButton2 = [(BKUIButtonTray *)self topLinkButton];
  leadingAnchor = [topLinkButton2 leadingAnchor];
  nextStateButtonContainer2 = [(BKUIButtonTray *)self nextStateButtonContainer];
  leadingAnchor2 = [nextStateButtonContainer2 leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v30[0] = v25;
  topLinkButton3 = [(BKUIButtonTray *)self topLinkButton];
  trailingAnchor = [topLinkButton3 trailingAnchor];
  nextStateButtonContainer3 = [(BKUIButtonTray *)self nextStateButtonContainer];
  trailingAnchor2 = [nextStateButtonContainer3 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v30[1] = v19;
  topLinkButton4 = [(BKUIButtonTray *)self topLinkButton];
  topAnchor = [topLinkButton4 topAnchor];
  nextStateButtonContainer4 = [(BKUIButtonTray *)self nextStateButtonContainer];
  topAnchor2 = [nextStateButtonContainer4 topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v30[2] = v7;
  topLinkButton5 = [(BKUIButtonTray *)self topLinkButton];
  bottomAnchor = [topLinkButton5 bottomAnchor];
  nextStateButtonContainer5 = [(BKUIButtonTray *)self nextStateButtonContainer];
  bottomAnchor2 = [nextStateButtonContainer5 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v30[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  [v20 activateConstraints:v13];

  topLinkButton6 = [(BKUIButtonTray *)self topLinkButton];
  [topLinkButton6 setAlpha:1.0];

  topLinkButton7 = [(BKUIButtonTray *)self topLinkButton];
  [topLinkButton7 setEnabled:1];

  [(BKUIButtonTray *)self _layoutInternalButtonsForDisplayState:3];
  v16 = *MEMORY[0x277D85DE8];
}

- (double)_bottomPadding
{
  inSheet = [(BKUIButtonTray *)self inSheet];
  result = 34.0;
  if (inSheet)
  {
    return 5.0;
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  v36[3] = *MEMORY[0x277D85DE8];
  if (!self->_isSolarium)
  {
    [(BKUIButtonTray *)self frame];
    v18 = v20;
    nextStateButtonContainer = [(BKUIButtonTray *)self nextStateButtonContainer];
    [nextStateButtonContainer bounds];
    v22 = v21;
    bottomLinkButton = [(BKUIButtonTray *)self bottomLinkButton];
    [bottomLinkButton bounds];
    v25 = v22 + v24;
    [(BKUIButtonTray *)self _bottomPadding];
    v19 = v26 + v25 + 10.0;

    goto LABEL_16;
  }

  topLinkButton = [(BKUIButtonTray *)self topLinkButton];
  v36[0] = topLinkButton;
  nextStateButton = [(BKUIButtonTray *)self nextStateButton];
  v36[1] = nextStateButton;
  bottomLinkButton2 = [(BKUIButtonTray *)self bottomLinkButton];
  v36[2] = bottomLinkButton2;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  nextStateButtonContainer = v6;
  v8 = [nextStateButtonContainer countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v8)
  {

LABEL_15:
    [(BKUIButtonTray *)self frame];
    v18 = v27;
    v19 = 0.0;
    goto LABEL_16;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v32;
  v12 = 0.0;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v32 != v11)
      {
        objc_enumerationMutation(nextStateButtonContainer);
      }

      v14 = *(*(&v31 + 1) + 8 * i);
      [v14 alpha];
      if (v15 == 1.0)
      {
        ++v10;
        [v14 bounds];
        v12 = v12 + v16;
      }
    }

    v9 = [nextStateButtonContainer countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v9);

  if (!v10)
  {
    goto LABEL_15;
  }

  [(BKUIButtonTray *)self frame];
  v18 = v17;
  v19 = v12 + 34.0 + (v10 + -1.0) * 10.0;
LABEL_16:

  v28 = *MEMORY[0x277D85DE8];
  v29 = v18;
  v30 = v19;
  result.height = v30;
  result.width = v29;
  return result;
}

- (int64_t)displayState
{
  nextStateButton = [(BKUIButtonTray *)self nextStateButton];
  [nextStateButton alpha];
  v6 = v5;
  if (v5 == 1.0 || (-[BKUIButtonTray topLinkButton](self, "topLinkButton"), v2 = objc_claimAutoreleasedReturnValue(), [v2 alpha], v7 == 1.0))
  {
    bottomLinkButton = [(BKUIButtonTray *)self bottomLinkButton];
    [bottomLinkButton alpha];
    v10 = v9;

    if (v6 != 1.0)
    {
    }

    if (v10 == 1.0)
    {
      return 3;
    }
  }

  else
  {
  }

  nextStateButton2 = [(BKUIButtonTray *)self nextStateButton];
  [nextStateButton2 alpha];
  if (v13 == 0.0)
  {
    bottomLinkButton2 = [(BKUIButtonTray *)self bottomLinkButton];
    [bottomLinkButton2 alpha];
    v16 = v15;

    if (v16 == 1.0)
    {
      return 2;
    }
  }

  else
  {
  }

  nextStateButton3 = [(BKUIButtonTray *)self nextStateButton];
  [nextStateButton3 alpha];
  if (v18 == 1.0)
  {
    bottomLinkButton3 = [(BKUIButtonTray *)self bottomLinkButton];
    [bottomLinkButton3 alpha];
    v21 = v20;

    if (v21 == 0.0)
    {
      return 1;
    }

    else
    {
      return 4;
    }
  }

  else
  {

    return 4;
  }
}

- (void)setupDebugUITraits
{
  redColor = [MEMORY[0x277D75348] redColor];
  v4 = [(UIView *)self bkui_debugBorder:redColor withWidth:1];

  nextStateButton = [(BKUIButtonTray *)self nextStateButton];
  greenColor = [MEMORY[0x277D75348] greenColor];
  v7 = [nextStateButton bkui_debugBorder:greenColor withWidth:1];

  bottomLinkButton = [(BKUIButtonTray *)self bottomLinkButton];
  blueColor = [MEMORY[0x277D75348] blueColor];
  v10 = [bottomLinkButton bkui_debugBorder:blueColor withWidth:1];

  topLinkButton = [(BKUIButtonTray *)self topLinkButton];
  yellowColor = [MEMORY[0x277D75348] yellowColor];
  v12 = [topLinkButton bkui_debugBorder:yellowColor withWidth:1];
}

- (void)noButtonsView
{
  v3 = _BKUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "ButtonTray: will show noButtonsView", v4, 2u);
  }

  [(BKUIButtonTray *)self resetConstraintsForButtons];
}

- (void)oneButtonView:(id)view
{
  v16[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "ButtonTray: will show oneButtonView", v15, 2u);
  }

  [(BKUIButtonTray *)self resetConstraintsForButtons];
  v6 = [(BKUIButtonTray *)self horizontalLayoutConstraints:viewCopy];
  bottomAnchor = [viewCopy bottomAnchor];

  bottomAnchor2 = [(BKUIButtonTray *)self bottomAnchor];
  v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-34.0];
  v16[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

  v11 = [v6 arrayByAddingObjectsFromArray:v10];
  [(BKUIButtonTray *)self setLayoutConstraints:v11];

  v12 = MEMORY[0x277CCAAD0];
  layoutConstraints = [(BKUIButtonTray *)self layoutConstraints];
  [v12 activateConstraints:layoutConstraints];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)twoButtonView:(id)view secondButton:(id)button
{
  v26[2] = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  viewCopy = view;
  v8 = _BKUILoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_241B0A000, v8, OS_LOG_TYPE_DEFAULT, "ButtonTray: will show twoButtonView", v25, 2u);
  }

  [(BKUIButtonTray *)self resetConstraintsForButtons];
  v9 = [(BKUIButtonTray *)self horizontalLayoutConstraints:viewCopy];
  v10 = [(BKUIButtonTray *)self horizontalLayoutConstraints:buttonCopy];
  bottomAnchor = [viewCopy bottomAnchor];
  bottomAnchor2 = [(BKUIButtonTray *)self bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-34.0];
  v26[0] = v13;
  bottomAnchor3 = [buttonCopy bottomAnchor];

  bottomAnchor4 = [(BKUIButtonTray *)self bottomAnchor];
  [viewCopy bounds];
  v17 = v16;

  v18 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-(v17 + 34.0 + 10.0)];
  v26[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];

  v20 = objc_opt_new();
  [v20 addObjectsFromArray:v9];
  [v20 addObjectsFromArray:v10];
  [v20 addObjectsFromArray:v19];
  v21 = [v20 copy];
  [(BKUIButtonTray *)self setLayoutConstraints:v21];

  v22 = MEMORY[0x277CCAAD0];
  layoutConstraints = [(BKUIButtonTray *)self layoutConstraints];
  [v22 activateConstraints:layoutConstraints];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)allButtonsView
{
  v36[3] = *MEMORY[0x277D85DE8];
  v3 = _BKUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "ButtonTray: will show allButtonsView", buf, 2u);
  }

  [(BKUIButtonTray *)self resetConstraintsForButtons];
  nextStateButton = [(BKUIButtonTray *)self nextStateButton];
  v34 = [(BKUIButtonTray *)self horizontalLayoutConstraints:nextStateButton];

  topLinkButton = [(BKUIButtonTray *)self topLinkButton];
  v33 = [(BKUIButtonTray *)self horizontalLayoutConstraints:topLinkButton];

  bottomLinkButton = [(BKUIButtonTray *)self bottomLinkButton];
  v32 = [(BKUIButtonTray *)self horizontalLayoutConstraints:bottomLinkButton];

  nextStateButton2 = [(BKUIButtonTray *)self nextStateButton];
  bottomAnchor = [nextStateButton2 bottomAnchor];
  bottomAnchor2 = [(BKUIButtonTray *)self bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-34.0];
  v36[0] = v28;
  bottomLinkButton2 = [(BKUIButtonTray *)self bottomLinkButton];
  bottomAnchor3 = [bottomLinkButton2 bottomAnchor];
  bottomAnchor4 = [(BKUIButtonTray *)self bottomAnchor];
  nextStateButton3 = [(BKUIButtonTray *)self nextStateButton];
  [nextStateButton3 bounds];
  v10 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-(v9 + 34.0 + 10.0)];
  v36[1] = v10;
  topLinkButton2 = [(BKUIButtonTray *)self topLinkButton];
  bottomAnchor5 = [topLinkButton2 bottomAnchor];
  bottomAnchor6 = [(BKUIButtonTray *)self bottomAnchor];
  nextStateButton4 = [(BKUIButtonTray *)self nextStateButton];
  [nextStateButton4 bounds];
  v16 = v15;
  bottomLinkButton3 = [(BKUIButtonTray *)self bottomLinkButton];
  [bottomLinkButton3 bounds];
  v19 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-(v16 + v18 + 34.0 + 10.0 * 2.0)];
  v36[2] = v19;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];

  v20 = objc_opt_new();
  [v20 addObjectsFromArray:v34];
  [v20 addObjectsFromArray:v33];
  [v20 addObjectsFromArray:v32];
  [v20 addObjectsFromArray:v25];
  v21 = [v20 copy];
  [(BKUIButtonTray *)self setLayoutConstraints:v21];

  v22 = MEMORY[0x277CCAAD0];
  layoutConstraints = [(BKUIButtonTray *)self layoutConstraints];
  [v22 activateConstraints:layoutConstraints];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)resetConstraintsForButtons
{
  layoutConstraints = [(BKUIButtonTray *)self layoutConstraints];

  if (layoutConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    layoutConstraints2 = [(BKUIButtonTray *)self layoutConstraints];
    [v4 deactivateConstraints:layoutConstraints2];
  }
}

- (id)horizontalLayoutConstraints:(id)constraints
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D75418];
  constraintsCopy = constraints;
  currentDevice = [v4 currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    widthAnchor = [constraintsCopy widthAnchor];
    +[BKUIStyle _buttonSizeForPads];
    leftAnchor = [widthAnchor constraintEqualToConstant:?];
    v21[0] = leftAnchor;
    centerXAnchor = [constraintsCopy centerXAnchor];

    centerXAnchor2 = [(BKUIButtonTray *)self centerXAnchor];
    rightAnchor = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v21[1] = rightAnchor;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  }

  else
  {
    +[BKUIStyle buttonMarginsForPhones];
    v15 = v14;
    v17 = v16;
    widthAnchor = [constraintsCopy leftAnchor];
    leftAnchor = [(BKUIButtonTray *)self leftAnchor];
    centerXAnchor = [widthAnchor constraintEqualToAnchor:leftAnchor constant:v15];
    v22[0] = centerXAnchor;
    centerXAnchor2 = [constraintsCopy rightAnchor];

    rightAnchor = [(BKUIButtonTray *)self rightAnchor];
    v18 = [centerXAnchor2 constraintEqualToAnchor:rightAnchor constant:-v17];
    v22[1] = v18;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)resetAlphaForAllButtons
{
  [(UIButton *)self->_nextStateButton setAlpha:0.0];
  [(UIButton *)self->_topLinkButton setAlpha:0.0];
  bottomLinkButton = self->_bottomLinkButton;

  [(UIButton *)bottomLinkButton setAlpha:0.0];
}

- (void)updateInitialButtonLayout
{
  [(UIButton *)self->_nextStateButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_topLinkButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_bottomLinkButton setTranslatesAutoresizingMaskIntoConstraints:0];
  topLinkButton = self->_topLinkButton;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"TRY_AGAIN" value:&stru_2853BB280 table:@"Pearl-periocular"];
  [(UIButton *)topLinkButton setTitle:v5 forState:0];

  [(BKUIButtonTray *)self oneButtonView:self->_nextStateButton];
  nextStateButton = self->_nextStateButton;

  [(UIButton *)nextStateButton setNeedsLayout];
}

- (BKUIButtonTrayActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

@end