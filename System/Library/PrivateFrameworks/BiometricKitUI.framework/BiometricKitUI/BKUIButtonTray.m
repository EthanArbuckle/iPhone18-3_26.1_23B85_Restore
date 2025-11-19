@interface BKUIButtonTray
- (BKUIButtonTray)initWithFrame:(CGRect)a3 willUseActionDelegate:(BOOL)a4;
- (BKUIButtonTrayActionDelegate)actionDelegate;
- (CGSize)intrinsicContentSize;
- (double)_bottomPadding;
- (id)horizontalLayoutConstraints:(id)a3;
- (id)nextStateButtonContainerHorizontalPositionConstraint:(BOOL)a3;
- (int64_t)displayState;
- (void)_layoutInternalButtonsForDisplayState:(int64_t)a3;
- (void)allButtonsView;
- (void)continueButtonPressed:(id)a3;
- (void)linkButtonPressed:(id)a3;
- (void)noButtonsView;
- (void)oneButtonView:(id)a3;
- (void)resetAlphaForAllButtons;
- (void)resetConstraintsForButtons;
- (void)setupDebugUITraits;
- (void)showRetryButton;
- (void)topLinkButtonPressed:(id)a3;
- (void)twoButtonView:(id)a3 secondButton:(id)a4;
- (void)updateButtonLayout;
- (void)updateInitialButtonLayout;
@end

@implementation BKUIButtonTray

- (BKUIButtonTray)initWithFrame:(CGRect)a3 willUseActionDelegate:(BOOL)a4
{
  v112 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
      v10 = [MEMORY[0x277D37618] boldButton];
      nextStateButton = v8->_nextStateButton;
      v8->_nextStateButton = v10;

      v12 = [MEMORY[0x277D37650] linkButton];
      topLinkButton = v8->_topLinkButton;
      v8->_topLinkButton = v12;

      v14 = [MEMORY[0x277D37650] linkButton];
      bottomLinkButton = v8->_bottomLinkButton;
      v8->_bottomLinkButton = v14;

      [(BKUIButtonTray *)v8 resetAlphaForAllButtons];
      [(BKUIButtonTray *)v8 addSubview:v8->_nextStateButton];
      [(BKUIButtonTray *)v8 addSubview:v8->_topLinkButton];
      [(BKUIButtonTray *)v8 addSubview:v8->_bottomLinkButton];
      [(BKUIButtonTray *)v8 updateInitialButtonLayout];
      [(BKUIButtonTray *)v8 setupDebugUITraits];
      if (v112)
      {
        v8->_willUseActionDelegate = v112;
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

  v27 = [(UIButton *)v8->_nextStateButton layer];
  [v27 setCornerCurve:*MEMORY[0x277CDA138]];

  v28 = [MEMORY[0x277D75220] buttonWithType:1];
  v29 = v8->_bottomLinkButton;
  v8->_bottomLinkButton = v28;

  v30 = MEMORY[0x277D74310];
  v31 = [(BKUIButtonTray *)v8 inSheet];
  v32 = MEMORY[0x277D76A28];
  if (!v31)
  {
    v32 = MEMORY[0x277D76918];
  }

  v111 = [v30 preferredFontDescriptorWithTextStyle:*v32];
  v33 = MEMORY[0x277D74300];
  v34 = [v111 fontDescriptorWithSymbolicTraits:2];
  v113 = [v33 fontWithDescriptor:v34 size:0.0];

  v35 = [(UIButton *)v8->_bottomLinkButton titleLabel];
  [v35 setFont:v113];

  v36 = [(UIButton *)v8->_bottomLinkButton titleLabel];
  [v36 setAdjustsFontSizeToFitWidth:1];

  [(UIButton *)v8->_bottomLinkButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BKUIButtonTray *)v8 addSubview:v8->_bottomLinkButton];
  LODWORD(v37) = 1148846080;
  [(UIButton *)v8->_bottomLinkButton setContentHuggingPriority:1 forAxis:v37];
  v38 = [(UIButton *)v8->_bottomLinkButton leftAnchor];
  v39 = [(BKUIButtonTray *)v8 leftAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:v17];
  escapeHatchButtonLeadingConstraint = v8->_escapeHatchButtonLeadingConstraint;
  v8->_escapeHatchButtonLeadingConstraint = v40;

  v42 = [(UIButton *)v8->_bottomLinkButton rightAnchor];
  v43 = [(BKUIButtonTray *)v8 rightAnchor];
  v44 = -v19;
  v45 = [v42 constraintEqualToAnchor:v43 constant:v44];
  escapeHatchButtonTrailingConstraint = v8->_escapeHatchButtonTrailingConstraint;
  v8->_escapeHatchButtonTrailingConstraint = v45;

  LODWORD(v47) = 1148829696;
  [(NSLayoutConstraint *)v8->_escapeHatchButtonBottomConstraint setPriority:v47];

  v48 = MEMORY[0x277CCAAD0];
  v124[0] = v8->_escapeHatchButtonLeadingConstraint;
  v124[1] = v8->_escapeHatchButtonTrailingConstraint;
  v49 = [(UIButton *)v8->_bottomLinkButton centerXAnchor];
  v50 = [(BKUIButtonTray *)v8 centerXAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];
  v124[2] = v51;
  v52 = [(UIButton *)v8->_bottomLinkButton heightAnchor];
  [(UIButton *)v8->_nextStateButton frame];
  v54 = [v52 constraintEqualToConstant:v53];
  v124[3] = v54;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:4];
  [v48 activateConstraints:v55];

  v56 = [(UIView *)v8->_nextStateButtonContainer rightAnchor];
  v57 = [(BKUIButtonTray *)v8 rightAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];
  nextStateButtonContainerHorizontalPositionConstraint = v8->_nextStateButtonContainerHorizontalPositionConstraint;
  v8->_nextStateButtonContainerHorizontalPositionConstraint = v58;

  v60 = [(BKUIButtonTray *)v8 topAnchor];
  v61 = [(UIView *)v8->_nextStateButtonContainer topAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:-5.0];
  v123 = v62;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:&v123 count:1];
  layoutConstraints = v8->_layoutConstraints;
  v8->_layoutConstraints = v63;

  v65 = MEMORY[0x277CCAAD0];
  v66 = [(BKUIButtonTray *)v8 layoutConstraints];
  [v65 activateConstraints:v66];

  v67 = MEMORY[0x277CCAAD0];
  v122[0] = v8->_nextStateButtonContainerHorizontalPositionConstraint;
  v68 = [(UIView *)v8->_nextStateButtonContainer widthAnchor];
  v69 = [(BKUIButtonTray *)v8 widthAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];
  v122[1] = v70;
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v122 count:2];
  [v67 activateConstraints:v71];

  [(UIButton *)v8->_nextStateButton setAlpha:0.0];
  [(UIButton *)v8->_nextStateButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v8->_nextStateButtonContainer addSubview:v8->_nextStateButton];
  v107 = MEMORY[0x277CCAAD0];
  v110 = [(UIButton *)v8->_nextStateButton topAnchor];
  v109 = [(UIView *)v8->_nextStateButtonContainer topAnchor];
  v108 = [v110 constraintEqualToAnchor:v109];
  v121[0] = v108;
  v72 = [(UIButton *)v8->_nextStateButton bottomAnchor];
  v73 = [(UIView *)v8->_nextStateButtonContainer bottomAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];
  v121[1] = v74;
  v75 = [(UIButton *)v8->_nextStateButton heightAnchor];
  [(UIButton *)v8->_nextStateButton frame];
  v77 = [v75 constraintEqualToConstant:v76];
  v121[2] = v77;
  v78 = [(UIButton *)v8->_nextStateButton bottomAnchor];
  v79 = [(UIView *)v8->_nextStateButtonContainer bottomAnchor];
  v80 = [v78 constraintEqualToAnchor:v79];
  v121[3] = v80;
  v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v121 count:4];
  [v107 activateConstraints:v81];

  v82 = [(UIButton *)v8->_nextStateButton leftAnchor];
  v83 = [(UIView *)v8->_nextStateButtonContainer leftAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:v17];
  v120[0] = v84;
  v85 = [(UIButton *)v8->_nextStateButton rightAnchor];
  v86 = [(UIView *)v8->_nextStateButtonContainer rightAnchor];
  v87 = [v85 constraintEqualToAnchor:v86 constant:v44];
  v120[1] = v87;
  v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v120 count:2];

  v89 = [MEMORY[0x277D75418] currentDevice];
  LODWORD(v83) = [v89 userInterfaceIdiom] == 1;

  if (v83)
  {
    v90 = [(UIButton *)v8->_nextStateButton widthAnchor];
    +[BKUIStyle _buttonSizeForPads];
    v91 = [v90 constraintEqualToConstant:?];
    v119[0] = v91;
    v92 = [(UIButton *)v8->_nextStateButton centerXAnchor];
    v93 = [(BKUIButtonTray *)v8 centerXAnchor];
    v94 = [v92 constraintEqualToAnchor:v93];
    v119[1] = v94;
    v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:2];

    v88 = v95;
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v88];
  [(BKUIButtonTray *)v8 _layoutInternalButtonsForDisplayState:3];
  v96 = [MEMORY[0x277D75220] buttonWithType:1];
  v97 = v8->_topLinkButton;
  v8->_topLinkButton = v96;

  v98 = [(UIButton *)v8->_topLinkButton titleLabel];
  [v98 setFont:v113];

  v99 = [(UIButton *)v8->_topLinkButton titleLabel];
  [v99 setAdjustsFontSizeToFitWidth:1];

  [(UIButton *)v8->_topLinkButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v100 = v8->_topLinkButton;
  v101 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v102 = [v101 localizedStringForKey:@"TRY_AGAIN" value:&stru_2853BB280 table:@"Pearl-periocular"];
  [(UIButton *)v100 setTitle:v102 forState:0];

  [(UIButton *)v8->_topLinkButton setAlpha:0.0];
  if (v112)
  {
    v8->_willUseActionDelegate = v112;
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

- (void)topLinkButtonPressed:(id)a3
{
  v3 = [(BKUIButtonTray *)self actionDelegate];
  [v3 buttonSelectedWithButtonTrayPosition:1];
}

- (void)linkButtonPressed:(id)a3
{
  v3 = [(BKUIButtonTray *)self actionDelegate];
  [v3 buttonSelectedWithButtonTrayPosition:3];
}

- (void)continueButtonPressed:(id)a3
{
  v3 = [(BKUIButtonTray *)self actionDelegate];
  [v3 buttonSelectedWithButtonTrayPosition:2];
}

- (void)_layoutInternalButtonsForDisplayState:(int64_t)a3
{
  v44[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAAD0];
  v6 = [(BKUIButtonTray *)self layoutConstraints];
  [v5 deactivateConstraints:v6];

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v35 = [(BKUIButtonTray *)self nextStateButtonContainer];
      v28 = [v35 topAnchor];
      v39 = [(BKUIButtonTray *)self topAnchor];
      v40 = v28;
      v38 = [v28 constraintEqualToAnchor:5.0 constant:?];
      v42[0] = v38;
      v37 = [(BKUIButtonTray *)self bottomLinkButton];
      v29 = [v37 topAnchor];
      v11 = [(BKUIButtonTray *)self nextStateButtonContainer];
      v12 = [v11 bottomAnchor];
      v36 = v29;
      v13 = [v29 constraintEqualToAnchor:v12 constant:5.0];
      v42[1] = v13;
      v14 = [(BKUIButtonTray *)self bottomLinkButton];
      v15 = [v14 bottomAnchor];
      v17 = [(BKUIButtonTray *)self bottomAnchor];
      [(BKUIButtonTray *)self _bottomPadding];
      v22 = [v15 constraintEqualToAnchor:v17 constant:-v30];
      v42[2] = v22;
      v23 = MEMORY[0x277CBEA60];
      v24 = v42;
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_13;
      }

      v35 = [(BKUIButtonTray *)self nextStateButtonContainer];
      v20 = [v35 topAnchor];
      v39 = [(BKUIButtonTray *)self topAnchor];
      v40 = v20;
      v38 = [v20 constraintEqualToAnchor:0.0 constant:?];
      v41[0] = v38;
      v37 = [(BKUIButtonTray *)self bottomLinkButton];
      v21 = [v37 topAnchor];
      v11 = [(BKUIButtonTray *)self nextStateButtonContainer];
      v12 = [v11 bottomAnchor];
      v36 = v21;
      v13 = [v21 constraintEqualToAnchor:v12 constant:0.0];
      v41[1] = v13;
      v14 = [(BKUIButtonTray *)self bottomLinkButton];
      v15 = [v14 bottomAnchor];
      v17 = [(BKUIButtonTray *)self bottomAnchor];
      v22 = [v15 constraintEqualToAnchor:v17 constant:0.0];
      v41[2] = v22;
      v23 = MEMORY[0x277CBEA60];
      v24 = v41;
    }

    v31 = [v23 arrayWithObjects:v24 count:3];
    [(BKUIButtonTray *)self setLayoutConstraints:v31];

    v8 = v35;
    goto LABEL_12;
  }

  if (a3 == 1)
  {
    v8 = [(BKUIButtonTray *)self nextStateButtonContainer];
    v25 = [v8 topAnchor];
    v39 = [(BKUIButtonTray *)self topAnchor];
    v40 = v25;
    v38 = [v25 constraintEqualToAnchor:5.0 constant:?];
    v44[0] = v38;
    v37 = [(BKUIButtonTray *)self bottomLinkButton];
    v26 = [v37 topAnchor];
    v11 = [(UIView *)self->_nextStateButtonContainer bottomAnchor];
    v36 = v26;
    v12 = [v26 constraintEqualToAnchor:v11 constant:0.0];
    v44[1] = v12;
    v13 = [(BKUIButtonTray *)self nextStateButtonContainer];
    v14 = [v13 bottomAnchor];
    v15 = [(BKUIButtonTray *)self bottomAnchor];
    [(BKUIButtonTray *)self _bottomPadding];
    v17 = [v14 constraintEqualToAnchor:v15 constant:-v27];
    v44[2] = v17;
    v18 = MEMORY[0x277CBEA60];
    v19 = v44;
    goto LABEL_9;
  }

  if (a3 == 2)
  {
    v7 = [(BKUIButtonTray *)self bottomLinkButton];
    [v7 setAlpha:1.0];

    v8 = [(BKUIButtonTray *)self nextStateButtonContainer];
    v9 = [v8 topAnchor];
    v39 = [(BKUIButtonTray *)self topAnchor];
    v40 = v9;
    v38 = [v9 constraintEqualToAnchor:0.0 constant:?];
    v43[0] = v38;
    v37 = [(BKUIButtonTray *)self bottomLinkButton];
    v10 = [v37 topAnchor];
    v11 = [(BKUIButtonTray *)self topAnchor];
    v36 = v10;
    v12 = [v10 constraintEqualToAnchor:v11 constant:5.0];
    v43[1] = v12;
    v13 = [(BKUIButtonTray *)self nextStateButtonContainer];
    v14 = [v13 bottomAnchor];
    v15 = [(BKUIButtonTray *)self bottomAnchor];
    [(BKUIButtonTray *)self _bottomPadding];
    v17 = [v14 constraintEqualToAnchor:v15 constant:-v16];
    v43[2] = v17;
    v18 = MEMORY[0x277CBEA60];
    v19 = v43;
LABEL_9:
    v22 = [v18 arrayWithObjects:v19 count:3];
    [(BKUIButtonTray *)self setLayoutConstraints:v22];
LABEL_12:
  }

LABEL_13:
  v32 = MEMORY[0x277CCAAD0];
  v33 = [(BKUIButtonTray *)self layoutConstraints];
  [v32 activateConstraints:v33];

  v34 = *MEMORY[0x277D85DE8];
}

- (id)nextStateButtonContainerHorizontalPositionConstraint:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKUIButtonTray *)self nextStateButtonContainer];
  [v5 removeConstraint:self->_nextStateButtonContainerHorizontalPositionConstraint];

  v6 = [(BKUIButtonTray *)self nextStateButtonContainerHorizontalPositionConstraint];
  [v6 setActive:0];

  v7 = [(BKUIButtonTray *)self nextStateButtonContainer];
  v8 = v7;
  if (v3)
  {
    v9 = [v7 rightAnchor];
    [(BKUIButtonTray *)self leftAnchor];
  }

  else
  {
    v9 = [v7 leftAnchor];
    [(BKUIButtonTray *)self rightAnchor];
  }
  v10 = ;
  v11 = [v9 constraintEqualToAnchor:v10];
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
      v99 = [(BKUIButtonTray *)self nextStateButton];
      v102 = [v99 currentTitle];
      v4 = MEMORY[0x277CCABB0];
      v98 = [(BKUIButtonTray *)self nextStateButton];
      [v98 alpha];
      v100 = [v4 numberWithDouble:?];
      v5 = MEMORY[0x277CCABB0];
      v97 = [(BKUIButtonTray *)self nextStateButton];
      v6 = [v5 numberWithBool:{objc_msgSend(v97, "isEnabled")}];
      v96 = [(BKUIButtonTray *)self bottomLinkButton];
      v7 = [v96 currentTitle];
      v8 = MEMORY[0x277CCABB0];
      v95 = [(BKUIButtonTray *)self bottomLinkButton];
      [v95 alpha];
      [v8 numberWithDouble:?];
      v9 = log = v3;
      v10 = MEMORY[0x277CCABB0];
      v94 = [(BKUIButtonTray *)self bottomLinkButton];
      v11 = [v10 numberWithBool:{objc_msgSend(v94, "isEnabled")}];
      v93 = [(BKUIButtonTray *)self topLinkButton];
      v12 = [v93 currentTitle];
      v13 = MEMORY[0x277CCABB0];
      v14 = [(BKUIButtonTray *)self topLinkButton];
      [v14 alpha];
      v15 = [v13 numberWithDouble:?];
      v16 = MEMORY[0x277CCABB0];
      v17 = [(BKUIButtonTray *)self topLinkButton];
      v18 = [v16 numberWithBool:{objc_msgSend(v17, "isEnabled")}];
      *buf = 138414338;
      v105 = v102;
      v106 = 2112;
      v107 = v100;
      v108 = 2112;
      v109 = v6;
      v110 = 2112;
      v111 = v7;
      v112 = 2112;
      v113 = v9;
      v114 = 2112;
      v115 = v11;
      v116 = 2112;
      v117 = v12;
      v118 = 2112;
      v119 = v15;
      v120 = 2112;
      v121 = v18;
      _os_log_impl(&dword_241B0A000, log, OS_LOG_TYPE_DEFAULT, "ButtonTray: Next State button [%@ - willShow:%@ isEnabled:%@] | Bottom Link button [%@ - willShow:%@ isEnabled:%@] | Top Link button [%@ - willShow:%@ isEnabled:%@]", buf, 0x5Cu);

      v3 = log;
    }

    v19 = [(BKUIButtonTray *)self nextStateButton];
    [v19 alpha];
    if (v20 == 0.0)
    {
      v21 = [(BKUIButtonTray *)self bottomLinkButton];
      [v21 alpha];
      if (v22 == 0.0)
      {
        v23 = [(BKUIButtonTray *)self topLinkButton];
        [v23 alpha];
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
          v83 = [(BKUIButtonTray *)self nextStateButton];
          [v83 setNeedsLayout];

          v84 = [(BKUIButtonTray *)self topLinkButton];
          [v84 setNeedsLayout];

          v85 = [(BKUIButtonTray *)self bottomLinkButton];
          [v85 setNeedsLayout];

          v86 = [(BKUIButtonTray *)self layer];
          [v86 setNeedsLayout];

          v87 = *MEMORY[0x277D85DE8];
          return;
        }

LABEL_16:
        v35 = [(BKUIButtonTray *)self nextStateButton];
        [v35 alpha];
        if (v36 == 1.0)
        {
          v37 = [(BKUIButtonTray *)self bottomLinkButton];
          [v37 alpha];
          if (v38 == 0.0)
          {
            v39 = [(BKUIButtonTray *)self topLinkButton];
            [v39 alpha];
            v41 = v40;

            if (v41 == 0.0)
            {
              v42 = [(BKUIButtonTray *)self nextStateButton];
LABEL_38:
              v57 = v42;
              [(BKUIButtonTray *)self oneButtonView:v42];
LABEL_54:

              goto LABEL_55;
            }

LABEL_22:
            v43 = [(BKUIButtonTray *)self nextStateButton];
            [v43 alpha];
            if (v44 == 0.0)
            {
              v45 = [(BKUIButtonTray *)self bottomLinkButton];
              [v45 alpha];
              if (v46 == 1.0)
              {
                v47 = [(BKUIButtonTray *)self topLinkButton];
                [v47 alpha];
                v49 = v48;

                if (v49 == 0.0)
                {
                  v42 = [(BKUIButtonTray *)self bottomLinkButton];
                  goto LABEL_38;
                }

LABEL_28:
                v50 = [(BKUIButtonTray *)self nextStateButton];
                [v50 alpha];
                if (v51 == 1.0)
                {
                  v52 = [(BKUIButtonTray *)self bottomLinkButton];
                  [v52 alpha];
                  if (v53 == 1.0)
                  {
                    v54 = [(BKUIButtonTray *)self topLinkButton];
                    [v54 alpha];
                    v56 = v55;

                    if (v56 == 0.0)
                    {
                      v57 = [(BKUIButtonTray *)self nextStateButton];
                      v58 = [(BKUIButtonTray *)self bottomLinkButton];
LABEL_52:
                      v81 = v58;
                      [(BKUIButtonTray *)self twoButtonView:v57 secondButton:v58];
LABEL_53:

                      goto LABEL_54;
                    }

LABEL_34:
                    v59 = [(BKUIButtonTray *)self nextStateButton];
                    [v59 alpha];
                    if (v60 == 0.0)
                    {
                      v61 = [(BKUIButtonTray *)self bottomLinkButton];
                      [v61 alpha];
                      if (v62 == 0.0)
                      {
                        v63 = [(BKUIButtonTray *)self topLinkButton];
                        [v63 alpha];
                        v65 = v64;

                        if (v65 == 1.0)
                        {
                          v42 = [(BKUIButtonTray *)self topLinkButton];
                          goto LABEL_38;
                        }

LABEL_41:
                        v66 = [(BKUIButtonTray *)self nextStateButton];
                        [v66 alpha];
                        if (v67 == 1.0)
                        {
                          v68 = [(BKUIButtonTray *)self bottomLinkButton];
                          [v68 alpha];
                          if (v69 == 0.0)
                          {
                            v70 = [(BKUIButtonTray *)self topLinkButton];
                            [v70 alpha];
                            v72 = v71;

                            if (v72 == 1.0)
                            {
                              v73 = [(BKUIButtonTray *)self nextStateButton];
LABEL_51:
                              v57 = v73;
                              v58 = [(BKUIButtonTray *)self topLinkButton];
                              goto LABEL_52;
                            }

LABEL_47:
                            v74 = [(BKUIButtonTray *)self nextStateButton];
                            [v74 alpha];
                            if (v75 == 0.0)
                            {
                              v76 = [(BKUIButtonTray *)self bottomLinkButton];
                              [v76 alpha];
                              if (v77 == 1.0)
                              {
                                v78 = [(BKUIButtonTray *)self topLinkButton];
                                [v78 alpha];
                                v80 = v79;

                                if (v80 == 1.0)
                                {
                                  v73 = [(BKUIButtonTray *)self bottomLinkButton];
                                  goto LABEL_51;
                                }

LABEL_60:
                                v57 = [(BKUIButtonTray *)self nextStateButton];
                                [v57 alpha];
                                if (v88 != 1.0)
                                {
                                  goto LABEL_54;
                                }

                                v81 = [(BKUIButtonTray *)self bottomLinkButton];
                                [v81 alpha];
                                if (v89 == 1.0)
                                {
                                  v90 = [(BKUIButtonTray *)self topLinkButton];
                                  [v90 alpha];
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

  v26 = [(BKUIButtonTray *)self topLinkButton];
  [v26 alpha];
  v28 = v27;

  if (v28 == 1.0)
  {
    [(BKUIButtonTray *)self showRetryButton];
    v29 = [(BKUIButtonTray *)self nextStateButton];
    [v29 setHidden:1];

    [(BKUIButtonTray *)self _layoutInternalButtonsForDisplayState:3];
  }

  else
  {
    v30 = [(BKUIButtonTray *)self topLinkButton];
    [v30 removeFromSuperview];

    v31 = [(BKUIButtonTray *)self nextStateButton];
    [v31 setHidden:0];
  }

  v32 = [(BKUIButtonTray *)self nextStateButtonContainer];
  [v32 setNeedsLayout];

  v33 = [(BKUIButtonTray *)self nextStateButton];
  [v33 setNeedsLayout];

  v103 = [(BKUIButtonTray *)self topLinkButton];
  [v103 setNeedsLayout];
  v34 = *MEMORY[0x277D85DE8];
}

- (void)showRetryButton
{
  v30[4] = *MEMORY[0x277D85DE8];
  v3 = [(BKUIButtonTray *)self nextStateButtonContainer];
  v4 = [(BKUIButtonTray *)self topLinkButton];
  [v3 addSubview:v4];

  v20 = MEMORY[0x277CCAAD0];
  v29 = [(BKUIButtonTray *)self topLinkButton];
  v27 = [v29 leadingAnchor];
  v28 = [(BKUIButtonTray *)self nextStateButtonContainer];
  v26 = [v28 leadingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v30[0] = v25;
  v24 = [(BKUIButtonTray *)self topLinkButton];
  v22 = [v24 trailingAnchor];
  v23 = [(BKUIButtonTray *)self nextStateButtonContainer];
  v21 = [v23 trailingAnchor];
  v19 = [v22 constraintEqualToAnchor:v21];
  v30[1] = v19;
  v18 = [(BKUIButtonTray *)self topLinkButton];
  v17 = [v18 topAnchor];
  v5 = [(BKUIButtonTray *)self nextStateButtonContainer];
  v6 = [v5 topAnchor];
  v7 = [v17 constraintEqualToAnchor:v6];
  v30[2] = v7;
  v8 = [(BKUIButtonTray *)self topLinkButton];
  v9 = [v8 bottomAnchor];
  v10 = [(BKUIButtonTray *)self nextStateButtonContainer];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v30[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  [v20 activateConstraints:v13];

  v14 = [(BKUIButtonTray *)self topLinkButton];
  [v14 setAlpha:1.0];

  v15 = [(BKUIButtonTray *)self topLinkButton];
  [v15 setEnabled:1];

  [(BKUIButtonTray *)self _layoutInternalButtonsForDisplayState:3];
  v16 = *MEMORY[0x277D85DE8];
}

- (double)_bottomPadding
{
  v2 = [(BKUIButtonTray *)self inSheet];
  result = 34.0;
  if (v2)
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
    v7 = [(BKUIButtonTray *)self nextStateButtonContainer];
    [v7 bounds];
    v22 = v21;
    v23 = [(BKUIButtonTray *)self bottomLinkButton];
    [v23 bounds];
    v25 = v22 + v24;
    [(BKUIButtonTray *)self _bottomPadding];
    v19 = v26 + v25 + 10.0;

    goto LABEL_16;
  }

  v3 = [(BKUIButtonTray *)self topLinkButton];
  v36[0] = v3;
  v4 = [(BKUIButtonTray *)self nextStateButton];
  v36[1] = v4;
  v5 = [(BKUIButtonTray *)self bottomLinkButton];
  v36[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
        objc_enumerationMutation(v7);
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

    v9 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
  v4 = [(BKUIButtonTray *)self nextStateButton];
  [v4 alpha];
  v6 = v5;
  if (v5 == 1.0 || (-[BKUIButtonTray topLinkButton](self, "topLinkButton"), v2 = objc_claimAutoreleasedReturnValue(), [v2 alpha], v7 == 1.0))
  {
    v8 = [(BKUIButtonTray *)self bottomLinkButton];
    [v8 alpha];
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

  v12 = [(BKUIButtonTray *)self nextStateButton];
  [v12 alpha];
  if (v13 == 0.0)
  {
    v14 = [(BKUIButtonTray *)self bottomLinkButton];
    [v14 alpha];
    v16 = v15;

    if (v16 == 1.0)
    {
      return 2;
    }
  }

  else
  {
  }

  v17 = [(BKUIButtonTray *)self nextStateButton];
  [v17 alpha];
  if (v18 == 1.0)
  {
    v19 = [(BKUIButtonTray *)self bottomLinkButton];
    [v19 alpha];
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
  v3 = [MEMORY[0x277D75348] redColor];
  v4 = [(UIView *)self bkui_debugBorder:v3 withWidth:1];

  v5 = [(BKUIButtonTray *)self nextStateButton];
  v6 = [MEMORY[0x277D75348] greenColor];
  v7 = [v5 bkui_debugBorder:v6 withWidth:1];

  v8 = [(BKUIButtonTray *)self bottomLinkButton];
  v9 = [MEMORY[0x277D75348] blueColor];
  v10 = [v8 bkui_debugBorder:v9 withWidth:1];

  v13 = [(BKUIButtonTray *)self topLinkButton];
  v11 = [MEMORY[0x277D75348] yellowColor];
  v12 = [v13 bkui_debugBorder:v11 withWidth:1];
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

- (void)oneButtonView:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "ButtonTray: will show oneButtonView", v15, 2u);
  }

  [(BKUIButtonTray *)self resetConstraintsForButtons];
  v6 = [(BKUIButtonTray *)self horizontalLayoutConstraints:v4];
  v7 = [v4 bottomAnchor];

  v8 = [(BKUIButtonTray *)self bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:-34.0];
  v16[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

  v11 = [v6 arrayByAddingObjectsFromArray:v10];
  [(BKUIButtonTray *)self setLayoutConstraints:v11];

  v12 = MEMORY[0x277CCAAD0];
  v13 = [(BKUIButtonTray *)self layoutConstraints];
  [v12 activateConstraints:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)twoButtonView:(id)a3 secondButton:(id)a4
{
  v26[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = _BKUILoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_241B0A000, v8, OS_LOG_TYPE_DEFAULT, "ButtonTray: will show twoButtonView", v25, 2u);
  }

  [(BKUIButtonTray *)self resetConstraintsForButtons];
  v9 = [(BKUIButtonTray *)self horizontalLayoutConstraints:v7];
  v10 = [(BKUIButtonTray *)self horizontalLayoutConstraints:v6];
  v11 = [v7 bottomAnchor];
  v12 = [(BKUIButtonTray *)self bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-34.0];
  v26[0] = v13;
  v14 = [v6 bottomAnchor];

  v15 = [(BKUIButtonTray *)self bottomAnchor];
  [v7 bounds];
  v17 = v16;

  v18 = [v14 constraintEqualToAnchor:v15 constant:-(v17 + 34.0 + 10.0)];
  v26[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];

  v20 = objc_opt_new();
  [v20 addObjectsFromArray:v9];
  [v20 addObjectsFromArray:v10];
  [v20 addObjectsFromArray:v19];
  v21 = [v20 copy];
  [(BKUIButtonTray *)self setLayoutConstraints:v21];

  v22 = MEMORY[0x277CCAAD0];
  v23 = [(BKUIButtonTray *)self layoutConstraints];
  [v22 activateConstraints:v23];

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
  v4 = [(BKUIButtonTray *)self nextStateButton];
  v34 = [(BKUIButtonTray *)self horizontalLayoutConstraints:v4];

  v5 = [(BKUIButtonTray *)self topLinkButton];
  v33 = [(BKUIButtonTray *)self horizontalLayoutConstraints:v5];

  v6 = [(BKUIButtonTray *)self bottomLinkButton];
  v32 = [(BKUIButtonTray *)self horizontalLayoutConstraints:v6];

  v31 = [(BKUIButtonTray *)self nextStateButton];
  v30 = [v31 bottomAnchor];
  v29 = [(BKUIButtonTray *)self bottomAnchor];
  v28 = [v30 constraintEqualToAnchor:v29 constant:-34.0];
  v36[0] = v28;
  v27 = [(BKUIButtonTray *)self bottomLinkButton];
  v26 = [v27 bottomAnchor];
  v7 = [(BKUIButtonTray *)self bottomAnchor];
  v8 = [(BKUIButtonTray *)self nextStateButton];
  [v8 bounds];
  v10 = [v26 constraintEqualToAnchor:v7 constant:-(v9 + 34.0 + 10.0)];
  v36[1] = v10;
  v11 = [(BKUIButtonTray *)self topLinkButton];
  v12 = [v11 bottomAnchor];
  v13 = [(BKUIButtonTray *)self bottomAnchor];
  v14 = [(BKUIButtonTray *)self nextStateButton];
  [v14 bounds];
  v16 = v15;
  v17 = [(BKUIButtonTray *)self bottomLinkButton];
  [v17 bounds];
  v19 = [v12 constraintEqualToAnchor:v13 constant:-(v16 + v18 + 34.0 + 10.0 * 2.0)];
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
  v23 = [(BKUIButtonTray *)self layoutConstraints];
  [v22 activateConstraints:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)resetConstraintsForButtons
{
  v3 = [(BKUIButtonTray *)self layoutConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(BKUIButtonTray *)self layoutConstraints];
    [v4 deactivateConstraints:v5];
  }
}

- (id)horizontalLayoutConstraints:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D75418];
  v5 = a3;
  v6 = [v4 currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7)
  {
    v8 = [v5 widthAnchor];
    +[BKUIStyle _buttonSizeForPads];
    v9 = [v8 constraintEqualToConstant:?];
    v21[0] = v9;
    v10 = [v5 centerXAnchor];

    v11 = [(BKUIButtonTray *)self centerXAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v21[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  }

  else
  {
    +[BKUIStyle buttonMarginsForPhones];
    v15 = v14;
    v17 = v16;
    v8 = [v5 leftAnchor];
    v9 = [(BKUIButtonTray *)self leftAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:v15];
    v22[0] = v10;
    v11 = [v5 rightAnchor];

    v12 = [(BKUIButtonTray *)self rightAnchor];
    v18 = [v11 constraintEqualToAnchor:v12 constant:-v17];
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