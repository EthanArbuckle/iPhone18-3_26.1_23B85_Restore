@interface CSOnboardingCardViewController
- (CSOnboardingCardViewController)initWithCompletion:(id)a3;
- (void)_callCompletionBlockWithAction:(unint64_t)a3;
- (void)_dismissAndAudioCheck;
- (void)_dismissAndSing;
- (void)_setupViews;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation CSOnboardingCardViewController

- (CSOnboardingCardViewController)initWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D43348]) initWithCardStyle:1];
  v10.receiver = self;
  v10.super_class = CSOnboardingCardViewController;
  v6 = [(PRXIconContentViewController *)&v10 initWithContentView:v5];
  if (v6)
  {
    v7 = _Block_copy(v4);
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
  v2 = [(CSOnboardingCardViewController *)self contentView];
  v3 = [MEMORY[0x277D43358] labelWithStyle:0];
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v5 = [v4 localizedStringForKey:@"ONBOARDING_TITLE" value:&stru_285797E10 table:0];
  [v3 setText:v5];

  [v3 setTextAlignment:1];
  [v3 setNumberOfLines:0];
  v6 = [MEMORY[0x277D74300] systemFontOfSize:30.0 weight:*MEMORY[0x277D743F8] width:*MEMORY[0x277D74458]];
  [v3 setFont:v6];

  [v2 setTitleView:v3];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v49 = MEMORY[0x277CCAAD0];
  v51 = [v3 topAnchor];
  v7 = [v2 topAnchor];
  v8 = [v51 constraintEqualToAnchor:v7 constant:60.0];
  v61[0] = v8;
  v9 = [v3 leadingAnchor];
  v10 = v2;
  v53 = v2;
  v11 = [v2 leadingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:30.0];
  v61[1] = v12;
  v13 = [v3 trailingAnchor];
  v14 = [v10 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-30.0];
  v61[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
  [v49 activateConstraints:v16];

  v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [MEMORY[0x277D755B0] imageNamed:@"sing_mic" inBundle:? withConfiguration:?];
  v18 = objc_alloc(MEMORY[0x277D43350]);
  v48 = v17;
  v19 = [v17 imageWithRenderingMode:2];
  v20 = [v18 initWithImage:v19];

  v21 = [MEMORY[0x277D75340] labelColor];
  [v20 setTintColor:v21];

  v60 = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
  [v53 setImageViews:v22];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = MEMORY[0x277CCAAD0];
  v24 = [v20 widthAnchor];
  v25 = [v24 constraintEqualToConstant:55.0];
  v59[0] = v25;
  v47 = v20;
  v26 = [v20 heightAnchor];
  v27 = [v26 constraintEqualToConstant:55.0];
  v59[1] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  [v23 activateConstraints:v28];

  objc_initWeak(&location, self);
  v29 = MEMORY[0x277D43300];
  v30 = [MEMORY[0x277D75340] systemRedColor];
  v31 = [MEMORY[0x277D75340] systemWhiteColor];
  v32 = [v29 initWithBackgroundColor:v30 textColor:v31];

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
  v38 = [MEMORY[0x277D75340] clearColor];
  v39 = [MEMORY[0x277D75340] labelColor];
  v40 = [v37 initWithBackgroundColor:v38 textColor:v39];

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
  v4 = [(CSOnboardingCardViewController *)self presentingViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__CSOnboardingCardViewController__dismissAndSing__block_invoke;
  v5[3] = &unk_278E0ABD0;
  objc_copyWeak(&v6, buf);
  [v4 dismissViewControllerAnimated:1 completion:v5];

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

  v4 = [(CSOnboardingCardViewController *)self presentingViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];

  [(CSOnboardingCardViewController *)self _callCompletionBlockWithAction:1];
}

- (void)_callCompletionBlockWithAction:(unint64_t)a3
{
  v5 = [(CSOnboardingCardViewController *)self completion];

  if (v5)
  {
    v6 = [(CSOnboardingCardViewController *)self completion];
    v6[2](v6, a3);

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