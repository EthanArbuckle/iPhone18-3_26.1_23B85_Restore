@interface CSLatencyCardViewController
- (CSLatencyCardViewController)initWithRequestClient:(id)client;
- (id)_buttonTitleForCurrentState;
- (id)_setUpContentView;
- (id)_setupActionButton;
- (id)_titleForProgressEvent:(unint64_t)event;
- (void)_cancel;
- (void)_handleButtonAction;
- (void)_setupViews;
- (void)_showLatencyCheckConfirmationIfNeededWithCompletion:(id)completion;
- (void)_startAudioLatencyEstimator;
- (void)_updateCardForEvent:(unint64_t)event info:(id)info;
- (void)_updateContentViewFromCurrentState;
- (void)_updateViewFromCurrentStateAnimated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation CSLatencyCardViewController

- (CSLatencyCardViewController)initWithRequestClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = CSLatencyCardViewController;
  v6 = [(CSLatencyCardViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestClient, client);
    [clientCopy activateAudioLatencyEstimator];
    v7->_cardState = 0;
    v7->_latency = 0;
  }

  return v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CSLatencyCardViewController;
  [(CSLatencyCardViewController *)&v3 viewDidLoad];
  [(CSLatencyCardViewController *)self _setupViews];
}

- (void)_setupViews
{
  view = [(CSLatencyCardViewController *)self view];
  quaternarySystemFillColor = [MEMORY[0x277D75340] quaternarySystemFillColor];
  [view setBackgroundColor:quaternarySystemFillColor];

  view2 = [(CSLatencyCardViewController *)self view];
  [view2 _setContinuousCornerRadius:27.0];

  view3 = [(CSLatencyCardViewController *)self view];
  [view3 setClipsToBounds:1];

  _setUpContentView = [(CSLatencyCardViewController *)self _setUpContentView];
  _setupActionButton = [(CSLatencyCardViewController *)self _setupActionButton];
  actionButton = self->_actionButton;
  self->_actionButton = _setupActionButton;
  v43 = _setupActionButton;

  view4 = [(CSLatencyCardViewController *)self view];
  heightAnchor = [view4 heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:0.0];

  LODWORD(v12) = 1112014848;
  v13 = v11;
  v42 = v11;
  [v11 setPriority:v12];
  v14 = objc_alloc(MEMORY[0x277D75A70]);
  v47[0] = _setUpContentView;
  v47[1] = v43;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
  v16 = [v14 initWithArrangedSubviews:v15];

  [v16 setSpacing:0.0];
  [v16 setAxis:1];
  [v16 setAlignment:0];
  v44 = v16;
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [[CSPaddingView alloc] initWithWrappedView:v16];
  [(CSPaddingView *)v17 setHorizontalPadding:20.0];
  [(CSPaddingView *)v17 setBottomPadding:20.0];
  view5 = [(CSLatencyCardViewController *)self view];
  [view5 addSubview:v17];

  [(CSPaddingView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = MEMORY[0x277CCAAD0];
  view6 = [(CSLatencyCardViewController *)self view];
  heightAnchor2 = [view6 heightAnchor];
  v39 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:228.0];
  v46[0] = v39;
  v46[1] = v13;
  heightAnchor3 = [(UIButton *)self->_actionButton heightAnchor];
  v37 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:48.0];
  v46[2] = v37;
  topAnchor = [(CSPaddingView *)v17 topAnchor];
  view7 = [(CSLatencyCardViewController *)self view];
  topAnchor2 = [view7 topAnchor];
  v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v46[3] = v33;
  bottomAnchor = [(CSPaddingView *)v17 bottomAnchor];
  view8 = [(CSLatencyCardViewController *)self view];
  bottomAnchor2 = [view8 bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v46[4] = v28;
  leadingAnchor = [(CSPaddingView *)v17 leadingAnchor];
  view9 = [(CSLatencyCardViewController *)self view];
  leadingAnchor2 = [view9 leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v46[5] = v21;
  trailingAnchor = [(CSPaddingView *)v17 trailingAnchor];
  view10 = [(CSLatencyCardViewController *)self view];
  trailingAnchor2 = [view10 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v46[6] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:7];
  [v32 activateConstraints:v26];

  [(CSLatencyCardViewController *)self _updateContentViewFromCurrentState];
}

- (id)_setUpContentView
{
  v99 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = objc_alloc_init(MEMORY[0x277D756C0]);
  instructionTitleLabel = self->_instructionTitleLabel;
  self->_instructionTitleLabel = v3;

  v5 = self->_instructionTitleLabel;
  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v7 = [v6 localizedStringForKey:@"MEASUREMENT_TITLE" value:&stru_285797E10 table:0];
  [(UILabel *)v5 setText:v7];

  v8 = self->_instructionTitleLabel;
  v9 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76910] weight:*MEMORY[0x277D74420]];
  [(UILabel *)v8 setFont:v9];

  [(UILabel *)self->_instructionTitleLabel setNumberOfLines:0];
  [(UILabel *)self->_instructionTitleLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_instructionTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = objc_alloc_init(MEMORY[0x277D756C0]);
  instructionDescriptionLabel = self->_instructionDescriptionLabel;
  self->_instructionDescriptionLabel = v10;

  v12 = self->_instructionDescriptionLabel;
  v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v14 = [v13 localizedStringForKey:@"MEASUREMENT_INSTRUCTIONS" value:&stru_285797E10 table:0];
  [(UILabel *)v12 setText:v14];

  v15 = self->_instructionDescriptionLabel;
  v16 = *MEMORY[0x277D76970];
  v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76970]];
  [(UILabel *)v15 setFont:v17];

  v18 = self->_instructionDescriptionLabel;
  secondaryLabelColor = [MEMORY[0x277D75340] secondaryLabelColor];
  [(UILabel *)v18 setTextColor:secondaryLabelColor];

  [(UILabel *)self->_instructionDescriptionLabel setNumberOfLines:0];
  [(UILabel *)self->_instructionDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_instructionDescriptionLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_instructionDescriptionLabel setTextAlignment:1];
  v20 = [objc_alloc(MEMORY[0x277D750E0]) initWithActivityIndicatorStyle:101];
  activityIndicatorView = self->_activityIndicatorView;
  self->_activityIndicatorView = v20;

  [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
  [(UIActivityIndicatorView *)self->_activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [[CSLatencyCardResultView alloc] initWithLatency:self->_latency];
  resultView = self->_resultView;
  self->_resultView = v22;

  [(CSLatencyCardResultView *)self->_resultView setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = objc_alloc(MEMORY[0x277D755E8]);
  v25 = [v24 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v25 setContentMode:4];
  v26 = *MEMORY[0x277D743F8];
  v108 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A18] weight:*MEMORY[0x277D743F8]];
  v107 = [MEMORY[0x277D755D8] configurationWithFont:v108 scale:2];
  [v25 setSymbolConfiguration:v107];
  v27 = [MEMORY[0x277D755B0] systemImageNamed:@"arrow.trianglehead.clockwise"];
  [v25 setImage:v27];

  secondaryLabelColor2 = [MEMORY[0x277D75340] secondaryLabelColor];
  [v25 setTintColor:secondaryLabelColor2];

  v29 = objc_alloc_init(MEMORY[0x277D756C0]);
  v30 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v31 = [v30 localizedStringForKey:@"MEASUREMENT_FAILED" value:&stru_285797E10 table:0];
  [v29 setText:v31];

  v32 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v16 weight:v26];
  [v29 setFont:v32];

  labelColor = [MEMORY[0x277D75340] labelColor];
  v106 = v29;
  [v29 setTextColor:labelColor];

  v34 = objc_alloc(MEMORY[0x277D75A70]);
  v112[0] = v25;
  v112[1] = v29;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:2];
  v36 = [v34 initWithArrangedSubviews:v35];
  failedInfoView = self->_failedInfoView;
  self->_failedInfoView = v36;

  [(UIStackView *)self->_failedInfoView setAxis:1];
  [(UIStackView *)self->_failedInfoView setSpacing:10.0];
  [(UIStackView *)self->_failedInfoView setAlignment:3];
  [(UIStackView *)self->_failedInfoView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v99 addSubview:self->_instructionTitleLabel];
  [v99 addSubview:self->_instructionDescriptionLabel];
  [v99 addSubview:self->_activityIndicatorView];
  [v99 addSubview:self->_resultView];
  [v99 addSubview:self->_failedInfoView];
  v82 = MEMORY[0x277CCAAD0];
  topAnchor = [(UILabel *)self->_instructionTitleLabel topAnchor];
  topAnchor2 = [v99 topAnchor];
  v103 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:50.0];
  v111[0] = v103;
  centerXAnchor = [(UILabel *)self->_instructionTitleLabel centerXAnchor];
  centerXAnchor2 = [v99 centerXAnchor];
  v100 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v111[1] = v100;
  leadingAnchor = [(UILabel *)self->_instructionTitleLabel leadingAnchor];
  leadingAnchor2 = [v99 leadingAnchor];
  v96 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v111[2] = v96;
  trailingAnchor = [(UILabel *)self->_instructionTitleLabel trailingAnchor];
  trailingAnchor2 = [v99 trailingAnchor];
  v93 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v111[3] = v93;
  topAnchor3 = [(UILabel *)self->_instructionDescriptionLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_instructionTitleLabel bottomAnchor];
  v90 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:12.0];
  v111[4] = v90;
  centerXAnchor3 = [(UILabel *)self->_instructionDescriptionLabel centerXAnchor];
  centerXAnchor4 = [v99 centerXAnchor];
  v87 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v111[5] = v87;
  leadingAnchor3 = [(UILabel *)self->_instructionDescriptionLabel leadingAnchor];
  leadingAnchor4 = [v99 leadingAnchor];
  v83 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
  v111[6] = v83;
  trailingAnchor3 = [(UILabel *)self->_instructionDescriptionLabel trailingAnchor];
  trailingAnchor4 = [v99 trailingAnchor];
  v79 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
  v111[7] = v79;
  centerXAnchor5 = [(UIActivityIndicatorView *)self->_activityIndicatorView centerXAnchor];
  centerXAnchor6 = [v99 centerXAnchor];
  v76 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v111[8] = v76;
  centerYAnchor = [(UIActivityIndicatorView *)self->_activityIndicatorView centerYAnchor];
  centerYAnchor2 = [v99 centerYAnchor];
  v73 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v111[9] = v73;
  leadingAnchor5 = [(CSLatencyCardResultView *)self->_resultView leadingAnchor];
  leadingAnchor6 = [v99 leadingAnchor];
  v70 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6];
  v111[10] = v70;
  trailingAnchor5 = [(CSLatencyCardResultView *)self->_resultView trailingAnchor];
  trailingAnchor6 = [v99 trailingAnchor];
  v67 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];
  v111[11] = v67;
  centerXAnchor7 = [(CSLatencyCardResultView *)self->_resultView centerXAnchor];
  centerXAnchor8 = [v99 centerXAnchor];
  v64 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  v111[12] = v64;
  bottomAnchor2 = [(CSLatencyCardResultView *)self->_resultView bottomAnchor];
  bottomAnchor3 = [v99 bottomAnchor];
  v61 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-28.0];
  v111[13] = v61;
  centerXAnchor9 = [(UIStackView *)self->_failedInfoView centerXAnchor];
  centerXAnchor10 = [v99 centerXAnchor];
  v58 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
  v111[14] = v58;
  bottomAnchor4 = [(UIStackView *)self->_failedInfoView bottomAnchor];
  bottomAnchor5 = [v99 bottomAnchor];
  v40 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-46.0];
  v111[15] = v40;
  v86 = v25;
  widthAnchor = [v25 widthAnchor];
  v42 = [widthAnchor constraintEqualToConstant:28.0];
  v111[16] = v42;
  heightAnchor = [v25 heightAnchor];
  v44 = [heightAnchor constraintEqualToConstant:28.0];
  v111[17] = v44;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:18];
  [v82 activateConstraints:v45];

  bottomAnchor6 = [(UILabel *)self->_instructionDescriptionLabel bottomAnchor];
  bottomAnchor7 = [v99 bottomAnchor];
  v48 = [bottomAnchor6 constraintLessThanOrEqualToAnchor:bottomAnchor7 constant:-44.0];
  v110 = v48;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v110 count:1];
  idleStateConstraints = self->_idleStateConstraints;
  self->_idleStateConstraints = v49;

  topAnchor4 = [(CSLatencyCardResultView *)self->_resultView topAnchor];
  topAnchor5 = [v99 topAnchor];
  v53 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:36.0];
  v109 = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v109 count:1];
  resultStateConstraints = self->_resultStateConstraints;
  self->_resultStateConstraints = v54;

  failedStateConstraints = self->_failedStateConstraints;
  self->_failedStateConstraints = MEMORY[0x277CBEBF8];

  return v99;
}

- (id)_setupActionButton
{
  clearConfiguration = [MEMORY[0x277D751C8] clearConfiguration];
  tertiarySystemFillColor = [MEMORY[0x277D75340] tertiarySystemFillColor];
  [clearConfiguration setBackgroundColor:tertiarySystemFillColor];

  borderedButtonConfiguration = [MEMORY[0x277D75228] borderedButtonConfiguration];
  [borderedButtonConfiguration setCornerStyle:4];
  [borderedButtonConfiguration setTitleAlignment:2];
  [borderedButtonConfiguration setBackground:clearConfiguration];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D75220];
  v7 = MEMORY[0x277D750C0];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __49__CSLatencyCardViewController__setupActionButton__block_invoke;
  v15 = &unk_278E0B3C0;
  objc_copyWeak(&v16, &location);
  v8 = [v7 actionWithHandler:&v12];
  v9 = [v6 buttonWithConfiguration:borderedButtonConfiguration primaryAction:{v8, v12, v13, v14, v15}];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  _buttonTitleForCurrentState = [(CSLatencyCardViewController *)self _buttonTitleForCurrentState];
  [v9 setTitle:_buttonTitleForCurrentState forState:0];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v9;
}

void __49__CSLatencyCardViewController__setupActionButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleButtonAction];
}

- (void)_updateViewFromCurrentStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  actionButton = self->_actionButton;
  _buttonTitleForCurrentState = [(CSLatencyCardViewController *)self _buttonTitleForCurrentState];
  [(UIButton *)actionButton setTitle:_buttonTitleForCurrentState forState:0];

  [(UIButton *)self->_actionButton layoutIfNeeded];
  if (self->_cardState == 2)
  {
    [(CSLatencyCardResultView *)self->_resultView updateWithLatency:self->_latency];
    [(CSLatencyCardResultView *)self->_resultView layoutIfNeeded];
  }

  if (animatedCopy)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__CSLatencyCardViewController__updateViewFromCurrentStateAnimated___block_invoke;
    v7[3] = &unk_278E0ACD8;
    v7[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:5242880 delay:v7 options:0 animations:0.3 completion:0.0];
  }

  else
  {

    [(CSLatencyCardViewController *)self _updateContentViewFromCurrentState];
  }
}

void __67__CSLatencyCardViewController__updateViewFromCurrentStateAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateContentViewFromCurrentState];
  v3 = [*(a1 + 32) view];
  v2 = [v3 superview];
  [v2 layoutIfNeeded];
}

- (void)_updateContentViewFromCurrentState
{
  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_idleStateConstraints];
  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_resultStateConstraints];
  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_failedStateConstraints];
  [(UILabel *)self->_instructionTitleLabel setAlpha:0.0];
  [(UILabel *)self->_instructionDescriptionLabel setAlpha:0.0];
  [(CSLatencyCardResultView *)self->_resultView setAlpha:0.0];
  [(UIStackView *)self->_failedInfoView setAlpha:0.0];
  [(UIActivityIndicatorView *)self->_activityIndicatorView setAlpha:0.0];
  [(UIActivityIndicatorView *)self->_activityIndicatorView stopAnimating];
  cardState = self->_cardState;
  if (cardState > 1)
  {
    if (cardState == 2)
    {
      [MEMORY[0x277CCAAD0] activateConstraints:self->_resultStateConstraints];
      resultView = self->_resultView;
    }

    else
    {
      if (cardState != 3)
      {
        return;
      }

      [MEMORY[0x277CCAAD0] activateConstraints:self->_failedStateConstraints];
      resultView = self->_failedInfoView;
    }
  }

  else
  {
    if (cardState)
    {
      if (cardState == 1)
      {
        [(UIActivityIndicatorView *)self->_activityIndicatorView setAlpha:1.0];
        activityIndicatorView = self->_activityIndicatorView;

        [(UIActivityIndicatorView *)activityIndicatorView startAnimating];
      }

      return;
    }

    [MEMORY[0x277CCAAD0] activateConstraints:self->_idleStateConstraints];
    [(UILabel *)self->_instructionTitleLabel setAlpha:1.0];
    resultView = self->_instructionDescriptionLabel;
  }

  [resultView setAlpha:1.0];
}

- (id)_buttonTitleForCurrentState
{
  cardState = self->_cardState;
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v4 = v3;
  if (cardState == 1)
  {
    v5 = @"MEASUREMENT_CANCEL";
  }

  else
  {
    v5 = @"MEASUREMENT_CONTINUE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_285797E10 table:0];

  return v6;
}

- (id)_titleForProgressEvent:(unint64_t)event
{
  if (event <= 5)
  {
    v4 = off_278E0B458[event];
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
    v3 = [v5 localizedStringForKey:v4 value:&stru_285797E10 table:0];
  }

  return v3;
}

- (void)_updateCardForEvent:(unint64_t)event info:(id)info
{
  infoCopy = info;
  v7 = ContinuitySingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[CSLatencyCardViewController _updateCardForEvent:info:]";
    v13 = 2080;
    v14 = "[CSLatencyCardViewController _updateCardForEvent:info:]";
    v15 = 2048;
    eventCopy = event;
    _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: %s - Audio Latency card updating for event: %ld", &v11, 0x20u);
  }

  v8 = [infoCopy objectForKey:@"LATENCY"];

  if (event == 4 && v8)
  {
    [v8 floatValue];
    self->_latency = llroundf(v9 * 1000.0);
LABEL_6:
    v10 = 2;
LABEL_7:
    self->_cardState = v10;
    goto LABEL_8;
  }

  self->_cardState = 1;
  self->_latency = 0;
  if (event > 2)
  {
    if (event != 3)
    {
      if (event == 4)
      {
        goto LABEL_6;
      }

      if (event != 5)
      {
        goto LABEL_8;
      }
    }

    v10 = 3;
    goto LABEL_7;
  }

  if (event - 1 < 2)
  {
    v10 = 1;
    goto LABEL_7;
  }

  if (!event)
  {
    self->_cardState = 0;
  }

LABEL_8:
  [(CSLatencyCardViewController *)self _updateViewFromCurrentStateAnimated:1];
}

- (void)_handleButtonAction
{
  cardState = self->_cardState;
  if (cardState - 2 < 2)
  {
LABEL_4:
    [(CSLatencyCardViewController *)self _startAudioLatencyEstimator];
    return;
  }

  if (cardState != 1)
  {
    if (cardState)
    {
      return;
    }

    goto LABEL_4;
  }

  [(CSLatencyCardViewController *)self _cancel];
}

- (void)_startAudioLatencyEstimator
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __58__CSLatencyCardViewController__startAudioLatencyEstimator__block_invoke;
  v2[3] = &unk_278E0B410;
  v2[4] = self;
  [(CSLatencyCardViewController *)self _showLatencyCheckConfirmationIfNeededWithCompletion:v2];
}

void __58__CSLatencyCardViewController__startAudioLatencyEstimator__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = ContinuitySingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[CSLatencyCardViewController _startAudioLatencyEstimator]_block_invoke";
      _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: Start audio latency estimator", buf, 0xCu);
    }

    v4 = [MEMORY[0x277CF6C58] sharedInstance];
    [v4 pauseSessionForEvent:0];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__CSLatencyCardViewController__startAudioLatencyEstimator__block_invoke_59;
    aBlock[3] = &unk_278E0B3E8;
    aBlock[4] = *(a1 + 32);
    v5 = _Block_copy(aBlock);
    v6 = [*(a1 + 32) requestClient];
    [v6 startAudioLatencyEstimator:v5];
  }
}

- (void)_showLatencyCheckConfirmationIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[CSShieldManager sharedManager];
  isMicLocal = [v5 isMicLocal];

  v7 = ContinuitySingLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (isMicLocal)
  {
    if (v8)
    {
      *buf = 136315138;
      v29 = "[CSLatencyCardViewController _showLatencyCheckConfirmationIfNeededWithCompletion:]";
      _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: Mic is local. Don't need confirmation to start audio latency estimator.", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 1);
  }

  else
  {
    selfCopy = self;
    if (v8)
    {
      *buf = 136315138;
      v29 = "[CSLatencyCardViewController _showLatencyCheckConfirmationIfNeededWithCompletion:]";
      _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: Need confirmation to start audio latency estimator.", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
    v22 = [v9 localizedStringForKey:@"MEASUREMENT_CONFIRMATION_TITLE" value:&stru_285797E10 table:0];

    v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
    v21 = [v10 localizedStringForKey:@"MEASUREMENT_CONFIRMATION_MESSAGE" value:&stru_285797E10 table:0];

    v11 = [CSSecureAlertController alertControllerWithTitle:v22 message:v21 preferredStyle:1];
    v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
    v13 = [v12 localizedStringForKey:@"MEASUREMENT_CONFIRMATION_CONTINUE" value:&stru_285797E10 table:0];

    v14 = MEMORY[0x277D75100];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __83__CSLatencyCardViewController__showLatencyCheckConfirmationIfNeededWithCompletion___block_invoke;
    v26[3] = &unk_278E0B438;
    v15 = completionCopy;
    v27 = v15;
    v16 = [v14 actionWithTitle:v13 style:2 handler:v26];
    v17 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
    v18 = [v17 localizedStringForKey:@"MEASUREMENT_CONFIRMATION_CANCEL" value:&stru_285797E10 table:0];

    v19 = MEMORY[0x277D75100];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __83__CSLatencyCardViewController__showLatencyCheckConfirmationIfNeededWithCompletion___block_invoke_78;
    v24[3] = &unk_278E0B438;
    v25 = v15;
    v20 = [v19 actionWithTitle:v18 style:1 handler:v24];
    [v11 addAction:v16];
    [v11 addAction:v20];
    [(CSLatencyCardViewController *)selfCopy presentViewController:v11 animated:1 completion:&__block_literal_global_5];
  }
}

uint64_t __83__CSLatencyCardViewController__showLatencyCheckConfirmationIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSLatencyCardViewController _showLatencyCheckConfirmationIfNeededWithCompletion:]_block_invoke";
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: Audio Latency Estimator confirmed.", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __83__CSLatencyCardViewController__showLatencyCheckConfirmationIfNeededWithCompletion___block_invoke_78(uint64_t a1)
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSLatencyCardViewController _showLatencyCheckConfirmationIfNeededWithCompletion:]_block_invoke";
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: Audio Latency Estimator did not confirm.", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void __83__CSLatencyCardViewController__showLatencyCheckConfirmationIfNeededWithCompletion___block_invoke_79()
{
  v0 = ContinuitySingLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[CSLatencyCardViewController _showLatencyCheckConfirmationIfNeededWithCompletion:]_block_invoke";
    _os_log_impl(&dword_2441FB000, v0, OS_LOG_TYPE_DEFAULT, "%s: Audio Latency Estimator alert presented.", &v1, 0xCu);
  }
}

- (void)_cancel
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSLatencyCardViewController _cancel]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: Cancel audio latency estimator", &v5, 0xCu);
  }

  requestClient = [(CSLatencyCardViewController *)self requestClient];
  [requestClient cancelAudioLatencyEstimator];

  self->_cardState = 0;
  [(CSLatencyCardViewController *)self _updateViewFromCurrentStateAnimated:1];
}

@end