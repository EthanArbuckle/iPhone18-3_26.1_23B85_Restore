@interface CSOnboardingCardViewController
- (CSOnboardingCardViewController)initWithCompletion:(id)completion;
- (void)_callCompletionBlockWithAction:(unint64_t)action;
- (void)_dismissAndAudioCheck;
- (void)_dismissAndSing;
- (void)_setupViews;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation CSOnboardingCardViewController

- (CSOnboardingCardViewController)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [objc_alloc(MEMORY[0x277D43348]) initWithCardStyle:1];
  v10.receiver = self;
  v10.super_class = CSOnboardingCardViewController;
  v6 = [(PRXIconContentViewController *)&v10 initWithContentView:v5];
  if (v6)
  {
    v7 = _Block_copy(completionCopy);
    completion = v6->_completion;
    v6->_completion = v7;
  }

  return v6;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CSOnboardingCardViewController;
  [(PRXIconContentViewController *)&v3 viewDidLoad];
  [(CSOnboardingCardViewController *)self setOverrideUserInterfaceStyle:2];
  [(CSOnboardingCardViewController *)self setDismissalType:3];
  [(CSOnboardingCardViewController *)self _setupViews];
}

- (void)dealloc
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, 2);
    v4 = self->_completion;
    self->_completion = 0;
  }

  v5.receiver = self;
  v5.super_class = CSOnboardingCardViewController;
  [(CSOnboardingCardViewController *)&v5 dealloc];
}

- (void)_setupViews
{
  contentView = [(CSOnboardingCardViewController *)self contentView];
  v3 = [MEMORY[0x277D43358] labelWithStyle:0];
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v5 = [v4 localizedStringForKey:@"ONBOARDING_TITLE" value:&stru_285797E10 table:0];
  [v3 setText:v5];

  [v3 setTextAlignment:1];
  [v3 setNumberOfLines:0];
  v6 = [MEMORY[0x277D74300] systemFontOfSize:30.0 weight:*MEMORY[0x277D743F8] width:*MEMORY[0x277D74458]];
  [v3 setFont:v6];

  [contentView setTitleView:v3];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v49 = MEMORY[0x277CCAAD0];
  topAnchor = [v3 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:60.0];
  v61[0] = v8;
  leadingAnchor = [v3 leadingAnchor];
  v10 = contentView;
  v53 = contentView;
  leadingAnchor2 = [contentView leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
  v61[1] = v12;
  trailingAnchor = [v3 trailingAnchor];
  trailingAnchor2 = [v10 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-30.0];
  v61[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
  [v49 activateConstraints:v16];

  v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [MEMORY[0x277D755B0] imageNamed:@"sing_mic" inBundle:? withConfiguration:?];
  v18 = objc_alloc(MEMORY[0x277D43350]);
  v48 = v17;
  v19 = [v17 imageWithRenderingMode:2];
  v20 = [v18 initWithImage:v19];

  labelColor = [MEMORY[0x277D75340] labelColor];
  [v20 setTintColor:labelColor];

  v60 = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
  [v53 setImageViews:v22];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = MEMORY[0x277CCAAD0];
  widthAnchor = [v20 widthAnchor];
  v25 = [widthAnchor constraintEqualToConstant:55.0];
  v59[0] = v25;
  v47 = v20;
  heightAnchor = [v20 heightAnchor];
  v27 = [heightAnchor constraintEqualToConstant:55.0];
  v59[1] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  [v23 activateConstraints:v28];

  objc_initWeak(&location, self);
  v29 = MEMORY[0x277D43300];
  systemRedColor = [MEMORY[0x277D75340] systemRedColor];
  systemWhiteColor = [MEMORY[0x277D75340] systemWhiteColor];
  v32 = [v29 initWithBackgroundColor:systemRedColor textColor:systemWhiteColor];

  v33 = MEMORY[0x277D432F8];
  v34 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v35 = [v34 localizedStringForKey:@"ONBOARDING_ACTION_START_SINGING" value:&stru_285797E10 table:0];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __45__CSOnboardingCardViewController__setupViews__block_invoke;
  v56[3] = &unk_278E0BED8;
  objc_copyWeak(&v57, &location);
  v36 = [v33 actionWithTitle:v35 customColors:v32 handler:v56];

  v37 = MEMORY[0x277D43300];
  clearColor = [MEMORY[0x277D75340] clearColor];
  labelColor2 = [MEMORY[0x277D75340] labelColor];
  v40 = [v37 initWithBackgroundColor:clearColor textColor:labelColor2];

  v41 = MEMORY[0x277D432F8];
  v42 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v43 = [v42 localizedStringForKey:@"ONBOARDING_ACTION_AUDIO_CHECK" value:&stru_285797E10 table:0];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __45__CSOnboardingCardViewController__setupViews__block_invoke_2;
  v54[3] = &unk_278E0BED8;
  objc_copyWeak(&v55, &location);
  v44 = [v41 actionWithTitle:v43 customColors:v40 handler:v54];

  v45 = [(CSOnboardingCardViewController *)self addAction:v36];
  v46 = [(CSOnboardingCardViewController *)self addAction:v44];
  [(PRXCardContentViewController *)self setAccessibilityIdentifier:@"Start.Singing" forAction:v36];
  [(PRXCardContentViewController *)self setAccessibilityIdentifier:@"Audio.Check" forAction:v44];

  objc_destroyWeak(&v55);
  objc_destroyWeak(&v57);

  objc_destroyWeak(&location);
}

void __45__CSOnboardingCardViewController__setupViews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissAndSing];
}

void __45__CSOnboardingCardViewController__setupViews__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissAndAudioCheck];
}

- (void)_dismissAndSing
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSOnboardingCardViewController _dismissAndSing]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: User opted to start singing", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  presentingViewController = [(CSOnboardingCardViewController *)self presentingViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__CSOnboardingCardViewController__dismissAndSing__block_invoke;
  v5[3] = &unk_278E0ABD0;
  objc_copyWeak(&v6, buf);
  [presentingViewController dismissViewControllerAnimated:1 completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __49__CSOnboardingCardViewController__dismissAndSing__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _callCompletionBlockWithAction:0];
}

- (void)_dismissAndAudioCheck
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSOnboardingCardViewController _dismissAndAudioCheck]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: User opted to view audio check", &v5, 0xCu);
  }

  presentingViewController = [(CSOnboardingCardViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  [(CSOnboardingCardViewController *)self _callCompletionBlockWithAction:1];
}

- (void)_callCompletionBlockWithAction:(unint64_t)action
{
  completion = [(CSOnboardingCardViewController *)self completion];

  if (completion)
  {
    completion2 = [(CSOnboardingCardViewController *)self completion];
    completion2[2](completion2, action);

    [(CSOnboardingCardViewController *)self setCompletion:0];
  }

  else
  {
    v7 = ContinuitySingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CSOnboardingCardViewController _callCompletionBlockWithAction:v7];
    }
  }
}

- (void)_callCompletionBlockWithAction:(os_log_t)log .cold.1(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CSOnboardingCardViewController _callCompletionBlockWithAction:]";
  _os_log_error_impl(&dword_2441FB000, log, OS_LOG_TYPE_ERROR, "%s: Could not complete onboarding without completion handler", &v1, 0xCu);
}

@end