@interface CSConfirmMicCardViewController
- (CSConfirmMicCardViewController)initWithType:(unint64_t)type confirmationHandler:(id)handler;
- (void)_confirmAndDismiss;
- (void)_setupViews;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation CSConfirmMicCardViewController

- (CSConfirmMicCardViewController)initWithType:(unint64_t)type confirmationHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [objc_alloc(MEMORY[0x277D43328]) initWithCardStyle:1];
  v13.receiver = self;
  v13.super_class = CSConfirmMicCardViewController;
  v8 = [(CSConfirmMicCardViewController *)&v13 initWithContentView:v7];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    v10 = _Block_copy(handlerCopy);
    handler = v9->_handler;
    v9->_handler = v10;
  }

  return v9;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CSConfirmMicCardViewController;
  [(CSConfirmMicCardViewController *)&v3 viewDidLoad];
  [(CSConfirmMicCardViewController *)self setOverrideUserInterfaceStyle:2];
  [(CSConfirmMicCardViewController *)self setDismissalType:3];
  [(CSConfirmMicCardViewController *)self _setupViews];
}

- (void)dealloc
{
  handler = self->_handler;
  if (handler)
  {
    handler[2](handler, 0);
    v4 = self->_handler;
    self->_handler = 0;
  }

  v5.receiver = self;
  v5.super_class = CSConfirmMicCardViewController;
  [(CSConfirmMicCardViewController *)&v5 dealloc];
}

- (void)_setupViews
{
  type = [(CSConfirmMicCardViewController *)self type];
  v4 = @"MIC_DROP_MESSAGE";
  v5 = @"MIC_TAKE_TITLE";
  v6 = @"MIC_TAKE_MESSAGE";
  if (type)
  {
    v6 = 0;
    v5 = 0;
  }

  if (type != 1)
  {
    v4 = v6;
  }

  v57 = v4;
  if (type == 1)
  {
    v7 = @"MIC_DROP_TITLE";
  }

  else
  {
    v7 = v5;
  }

  contentView = [(CSConfirmMicCardViewController *)self contentView];
  v9 = [MEMORY[0x277D43358] labelWithStyle:0];
  v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v11 = [v10 localizedStringForKey:v7 value:&stru_285797E10 table:0];
  [v9 setText:v11];

  [v9 setTextAlignment:1];
  [v9 setNumberOfLines:0];
  v12 = [MEMORY[0x277D74300] systemFontOfSize:30.0 weight:*MEMORY[0x277D743F8] width:*MEMORY[0x277D74458]];
  [v9 setFont:v12];

  [contentView setTitleView:v9];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v53 = MEMORY[0x277CCAAD0];
  topAnchor = [v9 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:60.0];
  v64[0] = v14;
  leadingAnchor = [v9 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v64[1] = v17;
  v47 = v9;
  trailingAnchor = [v9 trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  v64[2] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:3];
  [v53 activateConstraints:v21];

  v22 = [MEMORY[0x277D43358] labelWithStyle:5];
  v23 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v24 = [v23 localizedStringForKey:v57 value:&stru_285797E10 table:0];
  [v22 setText:v24];

  [v22 setTextAlignment:1];
  [v22 setNumberOfLines:0];
  [contentView addSubview:v22];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v49 = MEMORY[0x277CCAAD0];
  leadingAnchor3 = [v22 leadingAnchor];
  leadingAnchor4 = [contentView leadingAnchor];
  v54 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:55.0];
  v63[0] = v54;
  trailingAnchor3 = [v22 trailingAnchor];
  trailingAnchor4 = [contentView trailingAnchor];
  v50 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-55.0];
  v63[1] = v50;
  topAnchor3 = [v22 topAnchor];
  mainContentGuide = [contentView mainContentGuide];
  topAnchor4 = [mainContentGuide topAnchor];
  v28 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v63[2] = v28;
  bottomAnchor = [v22 bottomAnchor];
  v48 = contentView;
  mainContentGuide2 = [contentView mainContentGuide];
  bottomAnchor2 = [mainContentGuide2 bottomAnchor];
  v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v63[3] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:4];
  [v49 activateConstraints:v33];

  objc_initWeak(&location, self);
  v34 = MEMORY[0x277D43300];
  systemRedColor = [MEMORY[0x277D75340] systemRedColor];
  systemWhiteColor = [MEMORY[0x277D75340] systemWhiteColor];
  v37 = [v34 initWithBackgroundColor:systemRedColor textColor:systemWhiteColor];

  type2 = [(CSConfirmMicCardViewController *)self type];
  v39 = MEMORY[0x277D432F8];
  v40 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v41 = v40;
  v42 = @"MIC_CONFIRMATION_DROP_CONFIRM";
  if (type2 != 1)
  {
    v42 = 0;
  }

  if (type2)
  {
    v43 = v42;
  }

  else
  {
    v43 = @"MIC_CONFIRMATION_TAKE_CONFIRM";
  }

  v44 = [v40 localizedStringForKey:v43 value:&stru_285797E10 table:0];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __45__CSConfirmMicCardViewController__setupViews__block_invoke;
  v60[3] = &unk_278E0BED8;
  objc_copyWeak(&v61, &location);
  v45 = [v39 actionWithTitle:v44 customColors:v37 handler:v60];

  v46 = [(CSConfirmMicCardViewController *)self addAction:v45];
  [(PRXCardContentViewController *)self setAccessibilityIdentifier:@"ConfirmMicButton" forAction:v45];

  objc_destroyWeak(&v61);
  objc_destroyWeak(&location);
}

void __45__CSConfirmMicCardViewController__setupViews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _confirmAndDismiss];
}

- (void)_confirmAndDismiss
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSConfirmMicCardViewController _confirmAndDismiss]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: User confirmed mic request", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  presentingViewController = [(CSConfirmMicCardViewController *)self presentingViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__CSConfirmMicCardViewController__confirmAndDismiss__block_invoke;
  v5[3] = &unk_278E0ABD0;
  objc_copyWeak(&v6, buf);
  [presentingViewController dismissViewControllerAnimated:1 completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __52__CSConfirmMicCardViewController__confirmAndDismiss__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _callCompletionBlockIfNeeded:1];
}

@end