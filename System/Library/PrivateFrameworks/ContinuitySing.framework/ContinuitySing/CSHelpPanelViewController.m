@interface CSHelpPanelViewController
- (CSHelpPanelViewController)initWithRequestClient:(id)a3;
- (id)_labelWithLocalizationKey:(id)a3 textStyle:(id)a4 weight:(double)a5 color:(id)a6 variant:(int64_t)a7;
- (id)_linkWithAttributedString:(id)a3 textStyle:(id)a4 weight:(double)a5 color:(id)a6;
- (void)_createViews;
- (void)_handleSDRSwitch;
- (void)_setupConstraints;
- (void)_setupStackView;
- (void)_updateSDRTexts;
- (void)dealloc;
- (void)setSdrMode:(int64_t)a3;
- (void)shieldManager:(id)a3 didUpdateSessionState:(id)a4;
- (void)viewDidLoad;
@end

@implementation CSHelpPanelViewController

- (CSHelpPanelViewController)initWithRequestClient:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CSHelpPanelViewController;
  v6 = [(CSHelpPanelViewController *)&v13 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestClient, a3);
    v8 = [[CSLatencyCardViewController alloc] initWithRequestClient:v7->_requestClient];
    latencyCardViewController = v7->_latencyCardViewController;
    v7->_latencyCardViewController = v8;

    v10 = +[CSShieldManager sharedManager];
    [v10 addObserver:v7];
    v11 = [v10 sessionState];
    v7->_sdrMode = [v11 sdrMode];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[CSShieldManager sharedManager];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSHelpPanelViewController;
  [(CSHelpPanelViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = CSHelpPanelViewController;
  [(CSHelpPanelViewController *)&v12 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v4 = [v3 localizedStringForKey:@"AUDIO_HELP_NAV_TITLE" value:&stru_285797E10 table:0];
  [(CSHelpPanelViewController *)self setTitle:v4];

  v5 = objc_alloc(MEMORY[0x277D751E8]);
  v6 = [MEMORY[0x277D755B0] _systemImageNamed:@"xmark"];
  v7 = [v5 initWithImage:v6 style:7 target:self action:sel__handleDismiss];

  v8 = [(CSHelpPanelViewController *)self navigationItem];
  [v8 setRightBarButtonItem:v7];

  [(CSHelpPanelViewController *)self _createViews];
  [(CSHelpPanelViewController *)self _setupStackView];
  v9 = objc_alloc_init(MEMORY[0x277D759D0]);
  scrollView = self->_scrollView;
  self->_scrollView = v9;

  [(UIScrollView *)self->_scrollView addSubview:self->_stackView];
  v11 = [(CSHelpPanelViewController *)self view];
  [v11 addSubview:self->_scrollView];

  [(CSHelpPanelViewController *)self _setupConstraints];
}

- (void)setSdrMode:(int64_t)a3
{
  if (self->_sdrMode != a3)
  {
    self->_sdrMode = a3;
    [(CSHelpPanelViewController *)self _updateSDRTexts];
  }
}

- (void)_createViews
{
  v2 = 136315394;
  v3 = "[CSHelpPanelViewController _createViews]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_2441FB000, a2, OS_LOG_TYPE_ERROR, "%s: Placeholder '%%1$@' not found in localized string '%@'", &v2, 0x16u);
}

void __41__CSHelpPanelViewController__createViews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSDRSwitch];
}

- (void)_setupStackView
{
  v12 = [(CSLatencyCardViewController *)self->_latencyCardViewController view];
  v3 = objc_alloc(MEMORY[0x277D75A70]);
  v13[0] = self->_titleLabel;
  v13[1] = v12;
  sdrDescriptionLabel = self->_sdrDescriptionLabel;
  v13[2] = self->_sdrTitleLabel;
  v13[3] = sdrDescriptionLabel;
  sdrSwitchButtonDescription = self->_sdrSwitchButtonDescription;
  v13[4] = self->_sdrSwitchButton;
  v13[5] = sdrSwitchButtonDescription;
  gameModeDescriptionLabel = self->_gameModeDescriptionLabel;
  v13[6] = self->_gameModeTitleLabel;
  v13[7] = gameModeDescriptionLabel;
  divider = self->_divider;
  v13[8] = self->_gameModeNoticeLabel;
  v13[9] = divider;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:10];
  v9 = [v3 initWithArrangedSubviews:v8];

  [(UIStackView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)v9 setAxis:1];
  UIEdgeInsetsMakeWithEdges();
  [(UIStackView *)v9 setLayoutMargins:?];
  [(UIStackView *)v9 setLayoutMarginsRelativeArrangement:1];
  [(UIStackView *)v9 setCustomSpacing:self->_titleLabel afterView:36.0];
  [(UIStackView *)v9 setCustomSpacing:v12 afterView:36.0];
  [(UIStackView *)v9 setCustomSpacing:self->_sdrTitleLabel afterView:7.0];
  [(UIStackView *)v9 setCustomSpacing:self->_sdrDescriptionLabel afterView:16.0];
  [(UIStackView *)v9 setCustomSpacing:self->_sdrSwitchButton afterView:10.0];
  [(UIStackView *)v9 setCustomSpacing:self->_sdrSwitchButtonDescription afterView:32.0];
  [(UIStackView *)v9 setCustomSpacing:self->_gameModeTitleLabel afterView:7.0];
  [(UIStackView *)v9 setCustomSpacing:self->_gameModeDescriptionLabel afterView:7.0];
  [(UIStackView *)v9 setCustomSpacing:self->_gameModeNoticeLabel afterView:32.0];
  [(UIStackView *)v9 setCustomSpacing:self->_divider afterView:32.0];
  stackView = self->_stackView;
  self->_stackView = v9;
  v11 = v9;

  [(CSHelpPanelViewController *)self addChildViewController:self->_latencyCardViewController];
  [(CSLatencyCardViewController *)self->_latencyCardViewController didMoveToParentViewController:self];
}

- (id)_labelWithLocalizationKey:(id)a3 textStyle:(id)a4 weight:(double)a5 color:(id)a6 variant:(int64_t)a7
{
  v10 = a3;
  v11 = a4;
  v12 = MEMORY[0x277D756C0];
  v13 = a6;
  v14 = objc_alloc_init(v12);
  if (v10)
  {
    v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
    v16 = [v15 localizedStringForKey:v10 value:&stru_285797E10 table:0];
    [v14 setText:v16];
  }

  v17 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v11 weight:a5];
  [v14 setFont:v17];

  [v14 setNumberOfLines:0];
  [v14 setTextColor:v13];

  [v14 setAdjustsFontForContentSizeCategory:1];
  v18 = [[CSPaddingView alloc] initWithWrappedView:v14];
  [(CSPaddingView *)v18 setHorizontalPadding:6.0];

  return v18;
}

- (id)_linkWithAttributedString:(id)a3 textStyle:(id)a4 weight:(double)a5 color:(id)a6
{
  v9 = MEMORY[0x277D75C48];
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(v9);
  [v13 setAttributedText:v12];

  v14 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v11 weight:a5];

  [v13 setFont:v14];
  [v13 setTextColor:v10];

  [v13 setAdjustsFontForContentSizeCategory:1];
  [v13 setTextContainerInset:{*MEMORY[0x277D768C0], *(MEMORY[0x277D768C0] + 8), *(MEMORY[0x277D768C0] + 16), *(MEMORY[0x277D768C0] + 24)}];
  v15 = [v13 textContainer];
  [v15 setLineFragmentPadding:0.0];

  [v13 setUserInteractionEnabled:1];
  [v13 setScrollEnabled:0];
  v16 = [[CSPaddingView alloc] initWithWrappedView:v13];
  [(CSPaddingView *)v16 setHorizontalPadding:6.0];

  return v16;
}

- (void)_setupConstraints
{
  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_sdrSwitchButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = MEMORY[0x277CCAAD0];
  v42 = [(UIStackView *)self->_stackView topAnchor];
  v43 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v41 = [v43 topAnchor];
  v40 = [v42 constraintEqualToAnchor:v41 constant:18.0];
  v44[0] = v40;
  v38 = [(UIStackView *)self->_stackView leadingAnchor];
  v39 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v37 = [v39 leadingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v44[1] = v36;
  v34 = [(UIStackView *)self->_stackView trailingAnchor];
  v35 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v33 = [v35 trailingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v44[2] = v32;
  v30 = [(UIStackView *)self->_stackView bottomAnchor];
  v31 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v29 = [v31 bottomAnchor];
  v28 = [v30 constraintLessThanOrEqualToAnchor:v29];
  v44[3] = v28;
  v26 = [(UIStackView *)self->_stackView widthAnchor];
  v25 = [(UIScrollView *)self->_scrollView widthAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v44[4] = v24;
  v22 = [(UIScrollView *)self->_scrollView topAnchor];
  v23 = [(CSHelpPanelViewController *)self view];
  v21 = [v23 topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v44[5] = v20;
  v18 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v19 = [(CSHelpPanelViewController *)self view];
  v17 = [v19 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v44[6] = v16;
  v14 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v15 = [(CSHelpPanelViewController *)self view];
  v13 = [v15 trailingAnchor];
  v3 = [v14 constraintEqualToAnchor:v13];
  v44[7] = v3;
  v4 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v5 = [(CSHelpPanelViewController *)self view];
  v6 = [v5 bottomAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v44[8] = v7;
  v8 = [(UIButton *)self->_sdrSwitchButton heightAnchor];
  v9 = [v8 constraintGreaterThanOrEqualToConstant:48.0];
  v44[9] = v9;
  v10 = [(CSPaddingView *)self->_divider heightAnchor];
  v11 = [v10 constraintEqualToConstant:1.0];
  v44[10] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:11];
  [v27 activateConstraints:v12];
}

- (void)_handleSDRSwitch
{
  v3 = [(CSHelpPanelViewController *)self sdrMode];
  if (v3 != 1)
  {
    v4 = v3 != 2;
    v5 = [(CSHelpPanelViewController *)self requestClient];
    [v5 sendDisplayMode:v4];

    [(CSHelpPanelViewController *)self setSdrMode:2 * v4];
  }
}

- (void)_updateSDRTexts
{
  v3 = MEMORY[0x277D75D18];
  v4 = [(CSHelpPanelViewController *)self view];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__CSHelpPanelViewController__updateSDRTexts__block_invoke;
  v5[3] = &unk_278E0ACD8;
  v5[4] = self;
  [v3 transitionWithView:v4 duration:5242880 options:v5 animations:&__block_literal_global_11 completion:0.2];
}

void __44__CSHelpPanelViewController__updateSDRTexts__block_invoke(uint64_t a1)
{
  v17 = [MEMORY[0x277D75228] borderedButtonConfiguration];
  [v17 setCornerStyle:4];
  v2 = [*(a1 + 32) sdrMode];
  v3 = @"AUDIO_HELP_SDR_APPLIED";
  v4 = @"AUDIO_HELP_SDR_DESCRIPTION_HDR";
  v5 = @"AUDIO_HELP_SDR_TURN_ON";
  v6 = @"AUDIO_HELP_SDR_DESCRIPTION_HDR";
  v7 = v2 == 0;
  if (v2)
  {
    v6 = 0;
    v5 = 0;
  }

  if (v2 == 1)
  {
    v7 = 0;
  }

  else
  {
    v4 = v6;
    v3 = v5;
  }

  v8 = v2 == 2 || v7;
  if (v2 == 2)
  {
    v9 = @"AUDIO_HELP_SDR_DESCRIPTION_SDR";
  }

  else
  {
    v9 = v4;
  }

  if (v2 == 2)
  {
    v10 = @"AUDIO_HELP_SDR_TURN_OFF";
  }

  else
  {
    v10 = v3;
  }

  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v12 = [v11 localizedStringForKey:v10 value:&stru_285797E10 table:0];
  [v17 setTitle:v12];

  [*(*(a1 + 32) + 1024) setConfiguration:v17];
  [*(*(a1 + 32) + 1024) setEnabled:v8];
  if (v8)
  {
    [MEMORY[0x277D75340] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x277D75340] tertiaryLabelColor];
  }
  v13 = ;
  v14 = [*(*(a1 + 32) + 1016) wrappedView];
  v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v16 = [v15 localizedStringForKey:v9 value:&stru_285797E10 table:0];
  [v14 setText:v16];

  [v14 setTextColor:v13];
}

- (void)shieldManager:(id)a3 didUpdateSessionState:(id)a4
{
  v5 = [a4 sdrMode];

  [(CSHelpPanelViewController *)self setSdrMode:v5];
}

@end