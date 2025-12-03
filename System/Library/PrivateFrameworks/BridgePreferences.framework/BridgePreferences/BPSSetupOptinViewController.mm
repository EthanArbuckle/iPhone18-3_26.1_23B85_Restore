@interface BPSSetupOptinViewController
- (BPSSetupOptinViewController)init;
- (double)alternateButtonDetailTextPaddingWithImage;
- (double)imageDetailPadding;
- (double)noHWDetailOffset;
- (double)noHWImageOffset;
- (double)okayButtonTopPadding;
- (double)sidePadding;
- (double)suggestedChoicePillDetailTextLabelVerticalOffset;
- (id)alternateButtonTitle;
- (id)learnMoreButtonTitle;
- (id)okayButtonTitle;
- (id)suggestedButtonTitle;
- (void)alternateButtonPressed:(id)pressed;
- (void)applyConfirmedOptin:(BOOL)optin;
- (void)learnMoreButtonPressed:(id)pressed;
- (void)okayButtonPressed:(id)pressed;
- (void)showOptinConfirmationAlert:(id)alert optinChoice:(BOOL)choice;
- (void)suggestedButtonPressed:(id)pressed;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation BPSSetupOptinViewController

- (BPSSetupOptinViewController)init
{
  v7.receiver = self;
  v7.super_class = BPSSetupOptinViewController;
  v2 = [(BPSSetupOptinViewController *)&v7 initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2 && [(BPSSetupOptinViewController *)v2 wantsAlternateChoicePillButton]&& [(BPSSetupOptinViewController *)v3 wantsAlternateChoiceSystemButton])
  {
    v4 = bps_setup_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_241E74000, v4, OS_LOG_TYPE_DEFAULT, "Declared CONFLICTING Alternate Button Choices! Choose either BPSSetupOptinLayoutStyleAlternateChoicePillButton or BPSSetupOptinLayoutStyleAlternateChoiceSystemButton", v6, 2u);
    }
  }

  return v3;
}

- (id)suggestedButtonTitle
{
  v6 = *MEMORY[0x277D85DE8];
  if ([(BPSSetupOptinViewController *)self wantsSuggestedChoicePillButton])
  {
    v2 = bps_setup_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[BPSSetupOptinViewController suggestedButtonTitle]";
      _os_log_impl(&dword_241E74000, v2, OS_LOG_TYPE_DEFAULT, "Wants Suggested Choice Button so %s should be overridden by subclasses", &v4, 0xCu);
    }
  }

  return 0;
}

- (id)alternateButtonTitle
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(BPSSetupOptinViewController *)self wantsAlternateChoicePillButton]&& [(BPSSetupOptinViewController *)self wantsAlternateChoiceSystemButton])
  {
    v3 = bps_setup_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[BPSSetupOptinViewController alternateButtonTitle]";
      _os_log_impl(&dword_241E74000, v3, OS_LOG_TYPE_DEFAULT, "Wants Alternate Choice Button so %s should be overridden by subclasses", &v5, 0xCu);
    }
  }

  return 0;
}

- (id)learnMoreButtonTitle
{
  v6 = *MEMORY[0x277D85DE8];
  if ([(BPSSetupOptinViewController *)self wantsLearnMoreButton])
  {
    v2 = bps_setup_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[BPSSetupOptinViewController learnMoreButtonTitle]";
      _os_log_impl(&dword_241E74000, v2, OS_LOG_TYPE_DEFAULT, "Wants Learn More Button so %s should be overridden by subclasses", &v4, 0xCu);
    }
  }

  return 0;
}

- (id)okayButtonTitle
{
  v6 = *MEMORY[0x277D85DE8];
  if ([(BPSSetupOptinViewController *)self wantsOkayPillButton])
  {
    v2 = bps_setup_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[BPSSetupOptinViewController okayButtonTitle]";
      _os_log_impl(&dword_241E74000, v2, OS_LOG_TYPE_DEFAULT, "Wants OkayPillButton Button so %s should be overridden by subclasses", &v4, 0xCu);
    }
  }

  return 0;
}

- (void)suggestedButtonPressed:(id)pressed
{
  v6 = *MEMORY[0x277D85DE8];
  if ([(BPSSetupOptinViewController *)self wantsSuggestedChoicePillButton])
  {
    v3 = bps_setup_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[BPSSetupOptinViewController suggestedButtonPressed:]";
      _os_log_impl(&dword_241E74000, v3, OS_LOG_TYPE_DEFAULT, "Wants Suggested Choice Button so %s should be overridden by subclasses", &v4, 0xCu);
    }
  }
}

- (void)alternateButtonPressed:(id)pressed
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(BPSSetupOptinViewController *)self wantsAlternateChoicePillButton]&& [(BPSSetupOptinViewController *)self wantsAlternateChoiceSystemButton])
  {
    v4 = bps_setup_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[BPSSetupOptinViewController alternateButtonPressed:]";
      _os_log_impl(&dword_241E74000, v4, OS_LOG_TYPE_DEFAULT, "Wants Alternate Choice Button so %s should be overridden by subclasses", &v5, 0xCu);
    }
  }
}

- (void)learnMoreButtonPressed:(id)pressed
{
  v6 = *MEMORY[0x277D85DE8];
  if ([(BPSSetupOptinViewController *)self wantsLearnMoreButton])
  {
    v3 = bps_setup_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[BPSSetupOptinViewController learnMoreButtonPressed:]";
      _os_log_impl(&dword_241E74000, v3, OS_LOG_TYPE_DEFAULT, "Wants Learn More Button so %s should be overridden by subclasses", &v4, 0xCu);
    }
  }
}

- (void)okayButtonPressed:(id)pressed
{
  v6 = *MEMORY[0x277D85DE8];
  if ([(BPSSetupOptinViewController *)self wantsOkayPillButton])
  {
    v3 = bps_setup_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[BPSSetupOptinViewController okayButtonPressed:]";
      _os_log_impl(&dword_241E74000, v3, OS_LOG_TYPE_DEFAULT, "Wants OkayPillButton Button so %s should be overridden by subclasses", &v4, 0xCu);
    }
  }
}

- (double)sidePadding
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = &unk_28540EE10;
  v9[0] = &unk_28540EEA0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5[0] = xmmword_241EADD00;
  v5[1] = xmmword_241EADD10;
  v6 = vdupq_n_s64(0x4045C00000000000uLL);
  v7 = v6;
  RelevantZoomValue = BPSScreenValueGetRelevantZoomValue(v5, v2);

  return RelevantZoomValue;
}

- (double)imageDetailPadding
{
  __asm { FMOV            V1.2D, #27.0 }

  v8[0] = xmmword_241EADD20;
  v8[1] = _Q1;
  v8[2] = _Q1;
  v8[3] = _Q1;
  return BPSScreenValueGetRelevantValue(v8);
}

- (double)okayButtonTopPadding
{
  __asm { FMOV            V1.2D, #27.0 }

  v8[0] = xmmword_241EADD20;
  v8[1] = _Q1;
  v8[2] = _Q1;
  v8[3] = _Q1;
  return BPSScreenValueGetRelevantValue(v8);
}

- (double)alternateButtonDetailTextPaddingWithImage
{
  __asm { FMOV            V1.2D, #27.0 }

  v8[0] = xmmword_241EADD20;
  v8[1] = _Q1;
  v9 = 0x4042800000000000;
  v10 = _Q1;
  v11 = 0x4042800000000000;
  return BPSScreenValueGetRelevantValue(v8);
}

- (double)noHWImageOffset
{
  v3 = xmmword_241EADD30;
  v4 = vdupq_n_s64(0x4059000000000000uLL);
  v5 = v4;
  v6 = v4;
  return BPSScreenValueGetRelevantValue(&v3);
}

- (double)noHWDetailOffset
{
  v3 = xmmword_241EADD40;
  v4 = vdupq_n_s64(0x4066800000000000uLL);
  v5 = v4;
  v6 = v4;
  return BPSScreenValueGetRelevantValue(&v3);
}

- (void)viewDidLoad
{
  v97 = *MEMORY[0x277D85DE8];
  v93.receiver = self;
  v93.super_class = BPSSetupOptinViewController;
  [(BPSSetupPageViewController *)&v93 viewDidLoad];
  if (!self->_style)
  {
    v3 = bps_setup_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_241E74000, v3, OS_LOG_TYPE_DEFAULT, "Error: Style should be set in -init! (%@ - %@)", buf, 0x16u);
    }
  }

  v6 = objc_alloc(MEMORY[0x277D759D8]);
  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
  v11 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], v8, v9, v10}];
  scrollView = self->_scrollView;
  self->_scrollView = v11;

  contentView = [(BPSSetupPageViewController *)self contentView];
  __asm { FMOV            V0.2D, #16.0 }

  v86 = xmmword_241EADD50;
  v88 = _Q0;
  *buf = xmmword_241EADD50;
  *&buf[16] = _Q0;
  v95 = _Q0;
  v96 = _Q0;
  RelevantValue = BPSScreenValueGetRelevantValue(buf);
  detailTitleString = [(BPSSetupOptinViewController *)self detailTitleString];
  v21 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
  detailTextTitleLabel = self->_detailTextTitleLabel;
  self->_detailTextTitleLabel = v21;

  v23 = self->_detailTextTitleLabel;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UILabel *)v23 setBackgroundColor:clearColor];

  v25 = self->_detailTextTitleLabel;
  v26 = BPSTextColor();
  [(UILabel *)v25 setTextColor:v26];

  v27 = self->_detailTextTitleLabel;
  v28 = BPSFontWithSize(RelevantValue);
  [(UILabel *)v27 setFont:v28];

  [(UILabel *)self->_detailTextTitleLabel setTextAlignment:1];
  [(UILabel *)self->_detailTextTitleLabel setNumberOfLines:0];
  v92 = detailTitleString;
  [(UILabel *)self->_detailTextTitleLabel setText:detailTitleString];
  [contentView addSubview:self->_detailTextTitleLabel];
  detailString = [(BPSSetupOptinViewController *)self detailString];
  detailAttributedString = [(BPSSetupOptinViewController *)self detailAttributedString];
  if (detailString | detailAttributedString)
  {
    v31 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    detailTextLabel = self->_detailTextLabel;
    self->_detailTextLabel = v31;

    v33 = self->_detailTextLabel;
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v33 setBackgroundColor:clearColor2];

    v35 = self->_detailTextLabel;
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v35 setTextColor:systemGrayColor];

    v37 = self->_detailTextLabel;
    v38 = BPSRegularFontWithSize(RelevantValue);
    [(UILabel *)v37 setFont:v38];

    [(UILabel *)self->_detailTextLabel setTextAlignment:1];
    [(UILabel *)self->_detailTextLabel setNumberOfLines:0];
    v39 = self->_detailTextLabel;
    if (detailString)
    {
      [(UILabel *)v39 setText:detailString];
    }

    else
    {
      [(UILabel *)v39 setAttributedText:detailAttributedString];
    }

    [contentView addSubview:{self->_detailTextLabel, 0x402E000000000000, 0x4030000000000000, v88}];
  }

  if ([(BPSSetupOptinViewController *)self wantsToShowWatchHW:v86])
  {
    imageResource = [(BPSSetupOptinViewController *)self imageResource];
    imageResourceBundleIdentifier = [(BPSSetupOptinViewController *)self imageResourceBundleIdentifier];
    if (imageResource)
    {
      v42 = [[BPSWatchView alloc] initWithStyle:2];
      watchView = self->_watchView;
      self->_watchView = v42;

      [(BPSWatchView *)self->_watchView setWantsLightenBlendedScreen:[(BPSSetupOptinViewController *)self wantsLightenBlendedScreen]];
      [(BPSWatchView *)self->_watchView setScreenImageSearchBundleIdentifier:imageResourceBundleIdentifier];
      [(BPSWatchView *)self->_watchView setScreenImageName:imageResource];
      [contentView addSubview:self->_watchView];
    }
  }

  v90 = detailAttributedString;
  v91 = detailString;
  suggestedButtonTitle = [(BPSSetupOptinViewController *)self suggestedButtonTitle];
  alternateButtonTitle = [(BPSSetupOptinViewController *)self alternateButtonTitle];
  okayButtonTitle = [(BPSSetupOptinViewController *)self okayButtonTitle];
  [contentView frame];
  Width = CGRectGetWidth(v98);
  [(BPSSetupOptinViewController *)self sidePadding];
  v49 = Width + v48 * -2.0;
  BPSPillButtonImageDesiredSize(suggestedButtonTitle);
  BPSPillButtonImageDesiredSize(alternateButtonTitle);
  wantsSuggestedChoicePillButton = [(BPSSetupOptinViewController *)self wantsSuggestedChoicePillButton];
  wantsAlternateChoicePillButton = [(BPSSetupOptinViewController *)self wantsAlternateChoicePillButton];
  wantsAlternateChoiceSystemButton = [(BPSSetupOptinViewController *)self wantsAlternateChoiceSystemButton];
  wantsOkayPillButton = [(BPSSetupOptinViewController *)self wantsOkayPillButton];
  if (wantsSuggestedChoicePillButton)
  {
    if (suggestedButtonTitle)
    {
      v54 = [MEMORY[0x277D75220] buttonWithType:0];
      suggestedChoiceButton = self->_suggestedChoiceButton;
      self->_suggestedChoiceButton = v54;

      [(UIButton *)self->_suggestedChoiceButton addTarget:self action:sel_suggestedButtonPressed_ forControlEvents:64];
    }

    if (wantsAlternateChoicePillButton)
    {
      v56 = [MEMORY[0x277D75220] buttonWithType:0];
      alternateChoiceButton = self->_alternateChoiceButton;
      self->_alternateChoiceButton = v56;

      v58 = self->_alternateChoiceButton;
      v59 = BPSPillButtonImage(alternateButtonTitle, v49, 0.0, 0, 0);
      [(UIButton *)v58 setImage:v59 forState:0];

      v60 = self->_suggestedChoiceButton;
      v61 = BPSPillButtonImage(suggestedButtonTitle, v49, 0.0, 0, 0);
      [(UIButton *)v60 setImage:v61 forState:0];
    }

    else
    {
      v62 = self->_suggestedChoiceButton;
      v63 = BPSPillButtonImage(suggestedButtonTitle, v49, 0.0, 0, 0);
      [(UIButton *)v62 setImage:v63 forState:0];

      if (!wantsAlternateChoiceSystemButton)
      {
        goto LABEL_23;
      }

      v64 = [MEMORY[0x277D75220] buttonWithType:1];
      v65 = self->_alternateChoiceButton;
      self->_alternateChoiceButton = v64;

      [(UIButton *)self->_alternateChoiceButton setTitle:alternateButtonTitle forState:0];
      v66 = self->_alternateChoiceButton;
      v67 = BPSBridgeTintColor();
      v68 = [contentView _accessibilityHigherContrastTintColorForColor:v67];
      [(UIButton *)v66 setTitleColor:v68 forState:0];

      titleLabel = [(UIButton *)self->_alternateChoiceButton titleLabel];
      *buf = v87;
      *&buf[16] = v89;
      v95 = v89;
      v96 = v89;
      v70 = BPSScreenValueGetRelevantValue(buf);
      v71 = BPSRegularFontWithSize(v70);
      [titleLabel setFont:v71];

      v72 = self->_alternateChoiceButton;
      v61 = BPSTextColor();
      [(UIButton *)v72 setTintColor:v61];
    }
  }

LABEL_23:
  if (wantsOkayPillButton)
  {
    v73 = [MEMORY[0x277D75220] buttonWithType:0];
    okayButton = self->_okayButton;
    self->_okayButton = v73;

    v75 = self->_okayButton;
    v76 = BPSPillButtonImage(okayButtonTitle, v49, 0.0, 0, 0);
    [(UIButton *)v75 setImage:v76 forState:0];

    [(UIButton *)self->_okayButton addTarget:self action:sel_okayButtonPressed_ forControlEvents:64];
  }

  [(UIButton *)self->_alternateChoiceButton addTarget:self action:sel_alternateButtonPressed_ forControlEvents:64];
  [contentView addSubview:self->_alternateChoiceButton];
  [contentView addSubview:self->_suggestedChoiceButton];
  [contentView addSubview:self->_okayButton];
  if ([(BPSSetupOptinViewController *)self wantsLearnMoreButton])
  {
    learnMoreButtonTitle = [(BPSSetupOptinViewController *)self learnMoreButtonTitle];
    if (learnMoreButtonTitle)
    {
      v78 = [MEMORY[0x277D75220] buttonWithType:1];
      learnMoreButton = self->_learnMoreButton;
      self->_learnMoreButton = v78;

      [(UIButton *)self->_learnMoreButton setTitle:learnMoreButtonTitle forState:0];
      v80 = self->_learnMoreButton;
      v81 = BPSBridgeTintColor();
      v82 = [contentView _accessibilityHigherContrastTintColorForColor:v81];
      [(UIButton *)v80 setTitleColor:v82 forState:0];

      titleLabel2 = [(UIButton *)self->_learnMoreButton titleLabel];
      v84 = BPSRegularFontWithSize(RelevantValue);
      [titleLabel2 setFont:v84];

      [(UIButton *)self->_learnMoreButton addTarget:self action:sel_learnMoreButtonPressed_ forControlEvents:64];
      [contentView addSubview:self->_learnMoreButton];
    }
  }

  view = [(BPSSetupOptinViewController *)self view];
  [view addSubview:self->_scrollView];

  [(UIScrollView *)self->_scrollView addSubview:contentView];
}

- (double)suggestedChoicePillDetailTextLabelVerticalOffset
{
  [(UILabel *)self->_detailTextTitleLabel _firstLineBaselineFrameOriginY];
  __asm { FMOV            V1.2D, #27.0 }

  v9[0] = xmmword_241EADD60;
  v9[1] = _Q1;
  v9[2] = _Q1;
  v9[3] = _Q1;
  return v7 + BPSScreenValueGetRelevantValue(v9);
}

- (void)viewDidLayoutSubviews
{
  v130[1] = *MEMORY[0x277D85DE8];
  v126.receiver = self;
  v126.super_class = BPSSetupOptinViewController;
  [(BPSSetupPageViewController *)&v126 viewDidLayoutSubviews];
  view = [(BPSSetupOptinViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v129 = &unk_28540EE10;
  v130[0] = &unk_28540EEB0;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:&v129 count:1];
  *v125 = vdupq_n_s64(0x4040000000000000uLL);
  *&v125[16] = *v125;
  *&v125[32] = *v125;
  *&v125[48] = *v125;
  RelevantZoomValue = BPSScreenValueGetRelevantZoomValue(v125, v12);

  v119 = RelevantZoomValue;
  [(UIScrollView *)self->_scrollView setFrame:0.0, RelevantZoomValue, v9, v11 - RelevantZoomValue];
  [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:0];
  v131.origin.x = v5;
  v131.origin.y = v7;
  v131.size.width = v9;
  v118 = v11;
  v131.size.height = v11;
  Width = CGRectGetWidth(v131);
  [(BPSSetupOptinViewController *)self sidePadding];
  v16 = v15;
  v17 = *MEMORY[0x277CBF3A8];
  v18 = *(MEMORY[0x277CBF3A8] + 8);
  [(BPSWatchView *)self->_watchView sizeThatFits:*MEMORY[0x277CBF3A8], v18];
  v20 = v19;
  v22 = v21;
  [(UIButton *)self->_suggestedChoiceButton sizeThatFits:v17, v18];
  rect = v23;
  v109 = v24;
  [(UIButton *)self->_alternateChoiceButton sizeThatFits:v17, v18];
  v113 = v25;
  v107 = v26;
  p_detailTextTitleLabel = &self->_detailTextTitleLabel;
  v120 = v16;
  v28 = Width + v16 * -2.0;
  [(UILabel *)self->_detailTextTitleLabel sizeThatFits:v28, 0.0];
  v116 = v29;
  p_detailTextLabel = &self->_detailTextLabel;
  [(UILabel *)self->_detailTextLabel sizeThatFits:v28, 0.0];
  v121 = v31;
  [(UIButton *)self->_learnMoreButton sizeThatFits:v17, v18];
  v114 = v32;
  v115 = v33;
  [(UIButton *)self->_okayButton sizeThatFits:v17, v18];
  v110 = v35;
  v111 = v34;
  v124 = Width;
  *&v34 = (Width - v20) * 0.5;
  v36 = floorf(*&v34);
  titleLabel = [(BPSSetupPageViewController *)self titleLabel];
  [titleLabel _lastLineBaselineFrameOriginY];
  v39 = v38;
  __asm { FMOV            V0.2D, #20.0 }

  v108 = _Q0;
  *v125 = xmmword_241EADD70;
  *&v125[16] = _Q0;
  *&v125[32] = _Q0;
  *&v125[48] = _Q0;
  v45 = v39 + BPSScreenValueGetRelevantValue(v125);

  [(BPSWatchView *)self->_watchView setFrame:v36, v45, v20, v22];
  imageResource = [(BPSSetupOptinViewController *)self imageResource];

  wantsSuggestedChoicePillButton = [(BPSSetupOptinViewController *)self wantsSuggestedChoicePillButton];
  wantsAlternateChoicePillButton = [(BPSSetupOptinViewController *)self wantsAlternateChoicePillButton];
  wantsAlternateChoiceSystemButton = [(BPSSetupOptinViewController *)self wantsAlternateChoiceSystemButton];
  if (![(BPSSetupOptinViewController *)self wantsToShowWatchHW])
  {
    [(BPSSetupOptinViewController *)self noHWImageOffset];
    v22 = v50;
  }

  v51 = v119 * -2.0;
  if (wantsSuggestedChoicePillButton)
  {
    v112 = v9;
    if (!imageResource)
    {
      [(BPSSetupOptinViewController *)self noHWImageOffset];
      v22 = v52;
    }

    v53 = (v124 - rect) * 0.5;
    v54 = floorf(v53);
    v132.origin.x = v36;
    v132.origin.y = v45;
    v132.size.width = v20;
    v132.size.height = v22;
    MaxY = CGRectGetMaxY(v132);
    *v125 = xmmword_241EADD70;
    *&v125[16] = v108;
    *&v125[32] = v108;
    *&v125[48] = v108;
    v56 = MaxY + BPSScreenValueGetRelevantValue(v125);
    [(UIButton *)self->_suggestedChoiceButton setFrame:v54, v56, rect, v109];
    if (wantsAlternateChoicePillButton || wantsAlternateChoiceSystemButton)
    {
      v57 = (v124 - v113) * 0.5;
      v58 = floorf(v57);
      v133.origin.x = v54;
      v133.origin.y = v56;
      v133.size.width = rect;
      v133.size.height = v109;
      v59 = CGRectGetMaxY(v133) + 8.0;
      v60 = v107;
      [(UIButton *)self->_alternateChoiceButton setFrame:v58, v59, v113, v107];
    }

    else
    {
      v60 = *(MEMORY[0x277CBF3A0] + 24);
      v113 = *(MEMORY[0x277CBF3A0] + 16);
      v58 = *MEMORY[0x277CBF3A0];
      v59 = *(MEMORY[0x277CBF3A0] + 8);
    }

    if (wantsAlternateChoicePillButton || wantsAlternateChoiceSystemButton)
    {
      if (imageResource)
      {
        [(BPSSetupOptinViewController *)self alternateButtonDetailTextPaddingWithImage];
      }

      else
      {
        [(BPSSetupOptinViewController *)self noHWDetailOffset];
      }

      v85 = v80;
      v84 = v119 * -2.0;
      v143.origin.x = v58;
      v143.origin.y = v59;
      v143.size.width = v113;
      v143.size.height = v60;
      v83 = v85 + CGRectGetMaxY(v143);
    }

    else
    {
      v142.origin.x = v54;
      v142.origin.y = v56;
      v142.size.width = rect;
      v142.size.height = v109;
      v81 = CGRectGetMaxY(v142);
      v127 = &unk_28540EE10;
      v128 = &unk_28540EEC0;
      v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
      *v125 = xmmword_241EADD80;
      *&v125[16] = vdupq_n_s64(0x4055800000000000uLL);
      *&v125[32] = *&v125[16];
      *&v125[48] = *&v125[16];
      v83 = v81 + BPSScreenValueGetRelevantZoomValue(v125, v82);

      v84 = v119 * -2.0;
    }

    [(UILabel *)*p_detailTextTitleLabel setFrame:v16, 0.0, v28, v116];
    [(UILabel *)*p_detailTextTitleLabel _setFirstLineCapFrameOriginY:v83];
    v86 = v121;
    [*p_detailTextLabel setFrame:{v16, 0.0, v28, v121}];
    v87 = *p_detailTextLabel;
    [(BPSSetupOptinViewController *)self suggestedChoicePillDetailTextLabelVerticalOffset];
    [v87 _setFirstLineBaselineFrameOriginY:?];
    v88 = 0.0;
    if (self->_learnMoreButton)
    {
      v28 = v114;
      v89 = (v124 - v114) * 0.5;
      v90 = floorf(v89);
      [*p_detailTextLabel frame];
      v88 = CGRectGetMaxY(v144) + 1.0;
      v120 = v90;
      v91 = v90;
      v86 = v115;
      [(UIButton *)self->_learnMoreButton setFrame:v91, v88, v114, v115];
    }

    v145.origin.x = 0.0;
    v145.origin.y = v84;
    v145.size.width = v112;
    v145.size.height = v118;
    Height = CGRectGetHeight(v145);
    v93 = v86;
    v94 = v120;
    v95 = v88;
    v96 = v28;
    v123 = v93;
    if (!self->_learnMoreButton)
    {
      [*p_detailTextLabel frame];
      v94 = v97;
      v95 = v98;
      v96 = v99;
      v93 = v100;
    }

    v146.origin.x = v94;
    v146.origin.y = v95;
    v146.size.width = v96;
    v146.size.height = v93;
    v101 = Height + -5.0;
    if (CGRectGetMaxY(v146) < v101)
    {
      v147.origin.x = v120;
      v147.origin.y = v88;
      v147.size.width = v28;
      v147.size.height = v123;
      if (CGRectGetMaxY(v147) < v101)
      {
        v51 = v119 * -2.0;
        v9 = v112;
        v71 = v118;
        goto LABEL_33;
      }
    }

    v148.origin.x = v94;
    v148.origin.y = v95;
    v148.size.width = v96;
    v148.size.height = v93;
    v102 = CGRectGetMaxY(v148);
    v149.origin.x = v120;
    v149.origin.y = v88;
    v149.size.width = v28;
    v149.size.height = v123;
    v103 = CGRectGetMaxY(v149);
    if (v102 >= v103)
    {
      v103 = v102;
    }

    v104 = v103;
    v71 = v104;
    v79 = v104 + 5.0;
    v51 = v119 * -2.0;
    v9 = v112;
LABEL_32:
    v105 = v79 + v119 * -2.0;
    [(UIScrollView *)self->_scrollView setContentSize:v9, v105];
    goto LABEL_33;
  }

  [(UILabel *)*p_detailTextTitleLabel setFrame:v16, 0.0, v28, v116];
  v61 = *p_detailTextTitleLabel;
  v134.origin.x = v36;
  v134.origin.y = v45;
  v134.size.width = v20;
  v134.size.height = v22;
  v62 = CGRectGetMaxY(v134);
  [(BPSSetupOptinViewController *)self imageDetailPadding];
  [(UILabel *)v61 _setFirstLineCapFrameOriginY:v62 + v63];
  [*p_detailTextLabel setFrame:{v16, 0.0, v28, v121}];
  v64 = *p_detailTextLabel;
  [(UILabel *)*p_detailTextTitleLabel _firstLineBaselineFrameOriginY];
  v66 = v65;
  *v125 = 0x403A000000000000;
  __asm { FMOV            V0.2D, #27.0 }

  v122 = _Q0;
  *&v125[8] = _Q0;
  *&v125[24] = _Q0;
  *&v125[40] = _Q0;
  *&v125[56] = 0x403B000000000000;
  [v64 _setFirstLineBaselineFrameOriginY:v66 + BPSScreenValueGetRelevantValue(v125)];
  v68 = (v124 - v114) * 0.5;
  v69 = floorf(v68);
  [*p_detailTextLabel frame];
  v70 = CGRectGetMaxY(v135);
  *v125 = xmmword_241EADD20;
  *&v125[16] = v122;
  *&v125[32] = v122;
  *&v125[48] = v122;
  [(UIButton *)self->_learnMoreButton setFrame:v69, v70 + BPSScreenValueGetRelevantValue(v125), v114, v115];
  v136.origin.x = 0.0;
  v136.origin.y = v119 * -2.0;
  v136.size.width = v9;
  v71 = v118;
  v136.size.height = v118;
  v72 = CGRectGetHeight(v136);
  [*p_detailTextLabel frame];
  if (CGRectIsEmpty(v137))
  {
    [(UILabel *)*p_detailTextTitleLabel frame];
    if (CGRectIsEmpty(v138))
    {
      p_detailTextLabel = &self->_watchView;
    }

    else
    {
      p_detailTextLabel = &self->_detailTextTitleLabel;
    }
  }

  [*p_detailTextLabel frame];
  v73 = (v124 - v111) * 0.5;
  v74 = floorf(v73);
  v75 = CGRectGetMaxY(v139);
  [(BPSSetupOptinViewController *)self okayButtonTopPadding];
  v77 = v75 + v76;
  [(UIButton *)self->_okayButton setFrame:v74, v77, v111, v110];
  v140.origin.x = v74;
  v140.origin.y = v77;
  v140.size.width = v111;
  v140.size.height = v110;
  if (CGRectGetMaxY(v140) >= v72 + -5.0)
  {
    v141.origin.x = v74;
    v141.origin.y = v77;
    v141.size.width = v111;
    v141.size.height = v110;
    v78 = CGRectGetMaxY(v141) + 5.0;
    v79 = v78;
    v71 = v79;
    goto LABEL_32;
  }

LABEL_33:
  contentView = [(BPSSetupPageViewController *)self contentView];
  [contentView setFrame:{0.0, v51, v9, v71}];
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
  optinLocalizationBundle = [(BPSSetupOptinViewController *)self optinLocalizationBundle];
  optinLocalizationStringsFile = [(BPSSetupOptinViewController *)self optinLocalizationStringsFile];
  v33 = alertCopy;
  v13 = [optinLocalizationBundle localizedStringForKey:alertCopy value:&stru_285406330 table:optinLocalizationStringsFile];
  optinLocalizationBundle2 = [(BPSSetupOptinViewController *)self optinLocalizationBundle];
  optinLocalizationStringsFile2 = [(BPSSetupOptinViewController *)self optinLocalizationStringsFile];
  v32 = alertCopy2;
  v16 = [optinLocalizationBundle2 localizedStringForKey:alertCopy2 value:&stru_285406330 table:optinLocalizationStringsFile2];
  v17 = [v10 alertControllerWithTitle:v13 message:v16 preferredStyle:1];

  v18 = MEMORY[0x277D750F8];
  optinLocalizationBundle3 = [(BPSSetupOptinViewController *)self optinLocalizationBundle];
  optinLocalizationStringsFile3 = [(BPSSetupOptinViewController *)self optinLocalizationStringsFile];
  v21 = [optinLocalizationBundle3 localizedStringForKey:alertCopy3 value:&stru_285406330 table:optinLocalizationStringsFile3];
  v22 = [v18 actionWithTitle:v21 style:1 handler:0];
  [v17 addAction:v22];

  v23 = MEMORY[0x277D750F8];
  optinLocalizationBundle4 = [(BPSSetupOptinViewController *)self optinLocalizationBundle];
  optinLocalizationStringsFile4 = [(BPSSetupOptinViewController *)self optinLocalizationStringsFile];
  v26 = [optinLocalizationBundle4 localizedStringForKey:alertCopy4 value:&stru_285406330 table:optinLocalizationStringsFile4];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __70__BPSSetupOptinViewController_showOptinConfirmationAlert_optinChoice___block_invoke;
  v38[3] = &unk_278D234C0;
  v38[4] = self;
  choiceCopy = choice;
  v27 = [v23 actionWithTitle:v26 style:0 handler:v38];
  [v17 addAction:v27];

  v28 = bps_setup_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241E74000, v28, OS_LOG_TYPE_DEFAULT, "Presenting 'opt-in confirmation' alert", buf, 2u);
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __70__BPSSetupOptinViewController_showOptinConfirmationAlert_optinChoice___block_invoke_61;
  v34[3] = &unk_278D234E8;
  choiceCopy2 = choice;
  v34[4] = self;
  v35 = v17;
  v29 = v17;
  [(BPSSetupOptinViewController *)self presentViewController:v29 animated:1 completion:v34];
}

- (void)applyConfirmedOptin:(BOOL)optin
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = bps_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[BPSSetupOptinViewController applyConfirmedOptin:]";
    _os_log_impl(&dword_241E74000, v3, OS_LOG_TYPE_DEFAULT, "%s should be overridden by subclasses", &v4, 0xCu);
  }
}

@end