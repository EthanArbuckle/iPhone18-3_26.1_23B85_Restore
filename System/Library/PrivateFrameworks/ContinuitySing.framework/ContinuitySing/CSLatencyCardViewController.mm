@interface CSLatencyCardViewController
- (CSLatencyCardViewController)initWithRequestClient:(id)a3;
- (id)_buttonTitleForCurrentState;
- (id)_setUpContentView;
- (id)_setupActionButton;
- (id)_titleForProgressEvent:(unint64_t)a3;
- (void)_cancel;
- (void)_handleButtonAction;
- (void)_setupViews;
- (void)_showLatencyCheckConfirmationIfNeededWithCompletion:(id)a3;
- (void)_startAudioLatencyEstimator;
- (void)_updateCardForEvent:(unint64_t)a3 info:(id)a4;
- (void)_updateContentViewFromCurrentState;
- (void)_updateViewFromCurrentStateAnimated:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CSLatencyCardViewController

- (CSLatencyCardViewController)initWithRequestClient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSLatencyCardViewController;
  v6 = [(CSLatencyCardViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestClient, a3);
    [v5 activateAudioLatencyEstimator];
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
  v3 = [(CSLatencyCardViewController *)self view];
  v4 = [MEMORY[0x277D75340] quaternarySystemFillColor];
  [v3 setBackgroundColor:v4];

  v5 = [(CSLatencyCardViewController *)self view];
  [v5 _setContinuousCornerRadius:27.0];

  v6 = [(CSLatencyCardViewController *)self view];
  [v6 setClipsToBounds:1];

  v45 = [(CSLatencyCardViewController *)self _setUpContentView];
  v7 = [(CSLatencyCardViewController *)self _setupActionButton];
  actionButton = self->_actionButton;
  self->_actionButton = v7;
  v43 = v7;

  v9 = [(CSLatencyCardViewController *)self view];
  v10 = [v9 heightAnchor];
  v11 = [v10 constraintEqualToConstant:0.0];

  LODWORD(v12) = 1112014848;
  v13 = v11;
  v42 = v11;
  [v11 setPriority:v12];
  v14 = objc_alloc(MEMORY[0x277D75A70]);
  v47[0] = v45;
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
  v18 = [(CSLatencyCardViewController *)self view];
  [v18 addSubview:v17];

  [(CSPaddingView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = MEMORY[0x277CCAAD0];
  v41 = [(CSLatencyCardViewController *)self view];
  v40 = [v41 heightAnchor];
  v39 = [v40 constraintGreaterThanOrEqualToConstant:228.0];
  v46[0] = v39;
  v46[1] = v13;
  v38 = [(UIButton *)self->_actionButton heightAnchor];
  v37 = [v38 constraintGreaterThanOrEqualToConstant:48.0];
  v46[2] = v37;
  v35 = [(CSPaddingView *)v17 topAnchor];
  v36 = [(CSLatencyCardViewController *)self view];
  v34 = [v36 topAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v46[3] = v33;
  v30 = [(CSPaddingView *)v17 bottomAnchor];
  v31 = [(CSLatencyCardViewController *)self view];
  v29 = [v31 bottomAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v46[4] = v28;
  v27 = [(CSPaddingView *)v17 leadingAnchor];
  v19 = [(CSLatencyCardViewController *)self view];
  v20 = [v19 leadingAnchor];
  v21 = [v27 constraintEqualToAnchor:v20];
  v46[5] = v21;
  v22 = [(CSPaddingView *)v17 trailingAnchor];
  v23 = [(CSLatencyCardViewController *)self view];
  v24 = [v23 trailingAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
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
  v19 = [MEMORY[0x277D75340] secondaryLabelColor];
  [(UILabel *)v18 setTextColor:v19];

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

  v28 = [MEMORY[0x277D75340] secondaryLabelColor];
  [v25 setTintColor:v28];

  v29 = objc_alloc_init(MEMORY[0x277D756C0]);
  v30 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v31 = [v30 localizedStringForKey:@"MEASUREMENT_FAILED" value:&stru_285797E10 table:0];
  [v29 setText:v31];

  v32 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v16 weight:v26];
  [v29 setFont:v32];

  v33 = [MEMORY[0x277D75340] labelColor];
  v106 = v29;
  [v29 setTextColor:v33];

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
  v105 = [(UILabel *)self->_instructionTitleLabel topAnchor];
  v104 = [v99 topAnchor];
  v103 = [v105 constraintEqualToAnchor:v104 constant:50.0];
  v111[0] = v103;
  v102 = [(UILabel *)self->_instructionTitleLabel centerXAnchor];
  v101 = [v99 centerXAnchor];
  v100 = [v102 constraintEqualToAnchor:v101];
  v111[1] = v100;
  v98 = [(UILabel *)self->_instructionTitleLabel leadingAnchor];
  v97 = [v99 leadingAnchor];
  v96 = [v98 constraintGreaterThanOrEqualToAnchor:v97];
  v111[2] = v96;
  v95 = [(UILabel *)self->_instructionTitleLabel trailingAnchor];
  v94 = [v99 trailingAnchor];
  v93 = [v95 constraintLessThanOrEqualToAnchor:v94];
  v111[3] = v93;
  v92 = [(UILabel *)self->_instructionDescriptionLabel topAnchor];
  v91 = [(UILabel *)self->_instructionTitleLabel bottomAnchor];
  v90 = [v92 constraintEqualToAnchor:v91 constant:12.0];
  v111[4] = v90;
  v89 = [(UILabel *)self->_instructionDescriptionLabel centerXAnchor];
  v88 = [v99 centerXAnchor];
  v87 = [v89 constraintEqualToAnchor:v88];
  v111[5] = v87;
  v85 = [(UILabel *)self->_instructionDescriptionLabel leadingAnchor];
  v84 = [v99 leadingAnchor];
  v83 = [v85 constraintGreaterThanOrEqualToAnchor:v84];
  v111[6] = v83;
  v81 = [(UILabel *)self->_instructionDescriptionLabel trailingAnchor];
  v80 = [v99 trailingAnchor];
  v79 = [v81 constraintLessThanOrEqualToAnchor:v80];
  v111[7] = v79;
  v78 = [(UIActivityIndicatorView *)self->_activityIndicatorView centerXAnchor];
  v77 = [v99 centerXAnchor];
  v76 = [v78 constraintEqualToAnchor:v77];
  v111[8] = v76;
  v75 = [(UIActivityIndicatorView *)self->_activityIndicatorView centerYAnchor];
  v74 = [v99 centerYAnchor];
  v73 = [v75 constraintEqualToAnchor:v74];
  v111[9] = v73;
  v72 = [(CSLatencyCardResultView *)self->_resultView leadingAnchor];
  v71 = [v99 leadingAnchor];
  v70 = [v72 constraintGreaterThanOrEqualToAnchor:v71];
  v111[10] = v70;
  v69 = [(CSLatencyCardResultView *)self->_resultView trailingAnchor];
  v68 = [v99 trailingAnchor];
  v67 = [v69 constraintLessThanOrEqualToAnchor:v68];
  v111[11] = v67;
  v66 = [(CSLatencyCardResultView *)self->_resultView centerXAnchor];
  v65 = [v99 centerXAnchor];
  v64 = [v66 constraintEqualToAnchor:v65];
  v111[12] = v64;
  v63 = [(CSLatencyCardResultView *)self->_resultView bottomAnchor];
  v62 = [v99 bottomAnchor];
  v61 = [v63 constraintEqualToAnchor:v62 constant:-28.0];
  v111[13] = v61;
  v60 = [(UIStackView *)self->_failedInfoView centerXAnchor];
  v59 = [v99 centerXAnchor];
  v58 = [v60 constraintEqualToAnchor:v59];
  v111[14] = v58;
  v38 = [(UIStackView *)self->_failedInfoView bottomAnchor];
  v39 = [v99 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:-46.0];
  v111[15] = v40;
  v86 = v25;
  v41 = [v25 widthAnchor];
  v42 = [v41 constraintEqualToConstant:28.0];
  v111[16] = v42;
  v43 = [v25 heightAnchor];
  v44 = [v43 constraintEqualToConstant:28.0];
  v111[17] = v44;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:18];
  [v82 activateConstraints:v45];

  v46 = [(UILabel *)self->_instructionDescriptionLabel bottomAnchor];
  v47 = [v99 bottomAnchor];
  v48 = [v46 constraintLessThanOrEqualToAnchor:v47 constant:-44.0];
  v110 = v48;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v110 count:1];
  idleStateConstraints = self->_idleStateConstraints;
  self->_idleStateConstraints = v49;

  v51 = [(CSLatencyCardResultView *)self->_resultView topAnchor];
  v52 = [v99 topAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:36.0];
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
  v3 = [MEMORY[0x277D751C8] clearConfiguration];
  v4 = [MEMORY[0x277D75340] tertiarySystemFillColor];
  [v3 setBackgroundColor:v4];

  v5 = [MEMORY[0x277D75228] borderedButtonConfiguration];
  [v5 setCornerStyle:4];
  [v5 setTitleAlignment:2];
  [v5 setBackground:v3];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D75220];
  v7 = MEMORY[0x277D750C0];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __49__CSLatencyCardViewController__setupActionButton__block_invoke;
  v15 = &unk_278E0B3C0;
  objc_copyWeak(&v16, &location);
  v8 = [v7 actionWithHandler:&v12];
  v9 = [v6 buttonWithConfiguration:v5 primaryAction:{v8, v12, v13, v14, v15}];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(CSLatencyCardViewController *)self _buttonTitleForCurrentState];
  [v9 setTitle:v10 forState:0];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v9;
}

void __49__CSLatencyCardViewController__setupActionButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleButtonAction];
}

- (void)_updateViewFromCurrentStateAnimated:(BOOL)a3
{
  v3 = a3;
  actionButton = self->_actionButton;
  v6 = [(CSLatencyCardViewController *)self _buttonTitleForCurrentState];
  [(UIButton *)actionButton setTitle:v6 forState:0];

  [(UIButton *)self->_actionButton layoutIfNeeded];
  if (self->_cardState == 2)
  {
    [(CSLatencyCardResultView *)self->_resultView updateWithLatency:self->_latency];
    [(CSLatencyCardResultView *)self->_resultView layoutIfNeeded];
  }

  if (v3)
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

- (id)_titleForProgressEvent:(unint64_t)a3
{
  if (a3 <= 5)
  {
    v4 = off_278E0B458[a3];
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
    v3 = [v5 localizedStringForKey:v4 value:&stru_285797E10 table:0];
  }

  return v3;
}

- (void)_updateCardForEvent:(unint64_t)a3 info:(id)a4
{
  v6 = a4;
  v7 = ContinuitySingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[CSLatencyCardViewController _updateCardForEvent:info:]";
    v13 = 2080;
    v14 = "[CSLatencyCardViewController _updateCardForEvent:info:]";
    v15 = 2048;
    v16 = a3;
    _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: %s - Audio Latency card updating for event: %ld", &v11, 0x20u);
  }

  v8 = [v6 objectForKey:@"LATENCY"];

  if (a3 == 4 && v8)
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
  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        goto LABEL_6;
      }

      if (a3 != 5)
      {
        goto LABEL_8;
      }
    }

    v10 = 3;
    goto LABEL_7;
  }

  if (a3 - 1 < 2)
  {
    v10 = 1;
    goto LABEL_7;
  }

  if (!a3)
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

- (void)_showLatencyCheckConfirmationIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[CSShieldManager sharedManager];
  v6 = [v5 isMicLocal];

  v7 = ContinuitySingLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 136315138;
      v29 = "[CSLatencyCardViewController _showLatencyCheckConfirmationIfNeededWithCompletion:]";
      _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: Mic is local. Don't need confirmation to start audio latency estimator.", buf, 0xCu);
    }

    v4[2](v4, 1);
  }

  else
  {
    v23 = self;
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
    v15 = v4;
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
    [(CSLatencyCardViewController *)v23 presentViewController:v11 animated:1 completion:&__block_literal_global_5];
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

  v4 = [(CSLatencyCardViewController *)self requestClient];
  [v4 cancelAudioLatencyEstimator];

  self->_cardState = 0;
  [(CSLatencyCardViewController *)self _updateViewFromCurrentStateAnimated:1];
}

@end