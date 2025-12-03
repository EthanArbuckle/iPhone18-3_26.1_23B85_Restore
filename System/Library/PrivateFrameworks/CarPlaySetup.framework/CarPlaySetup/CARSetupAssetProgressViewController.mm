@interface CARSetupAssetProgressViewController
- (CARSetupAssetProgressViewController)initWithProgressReporter:(id)reporter cancelHandler:(id)handler;
- (void)_cancel;
- (void)_invalidateUseLaterTimer;
- (void)_showUseLater;
- (void)_startUseLaterTimer;
- (void)_useLater;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation CARSetupAssetProgressViewController

- (CARSetupAssetProgressViewController)initWithProgressReporter:(id)reporter cancelHandler:(id)handler
{
  reporterCopy = reporter;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = CARSetupAssetProgressViewController;
  v9 = [(CARSetupAssetProgressViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_progressReporter, reporter);
    v11 = MEMORY[0x245D29570](handlerCopy);
    cancelHandler = v10->_cancelHandler;
    v10->_cancelHandler = v11;
  }

  return v10;
}

- (void)dealloc
{
  [(CARSetupAssetProgressViewController *)self _invalidateUseLaterTimer];
  v3.receiver = self;
  v3.super_class = CARSetupAssetProgressViewController;
  [(CARSetupAssetProgressViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v61[4] = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = CARSetupAssetProgressViewController;
  [(CARSetupAssetProgressViewController *)&v59 viewDidLoad];
  view = [(CARSetupAssetProgressViewController *)self view];
  [(CARSetupAssetProgressViewController *)self setOverrideUserInterfaceStyle:2];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [view setBackgroundColor:blackColor];

  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CANCEL" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  v8 = [v5 initWithTitle:v7 style:0 target:self action:sel__cancel];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v58 = v8;
  [v8 setTintColor:whiteColor];

  navigationItem = [(CARSetupAssetProgressViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v8];

  v11 = objc_alloc_init(CARSetupAppIconProgressView);
  [(CARSetupAppIconProgressView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v11];
  progressView = self->_progressView;
  self->_progressView = v11;
  v13 = v11;

  centerXAnchor = [(CARSetupAppIconProgressView *)v13 centerXAnchor];
  v14 = view;
  centerXAnchor2 = [view centerXAnchor];
  v51 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v61[0] = v51;
  v15 = v13;
  v55 = v13;
  centerYAnchor = [(CARSetupAppIconProgressView *)v13 centerYAnchor];
  centerYAnchor2 = [view centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:-30.0];
  v61[1] = v16;
  widthAnchor = [(CARSetupAppIconProgressView *)v13 widthAnchor];
  v18 = v14;
  v50 = v14;
  widthAnchor2 = [v14 widthAnchor];
  v20 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
  v61[2] = v20;
  heightAnchor = [(CARSetupAppIconProgressView *)v15 heightAnchor];
  widthAnchor3 = [(CARSetupAppIconProgressView *)v15 widthAnchor];
  v23 = [heightAnchor constraintEqualToAnchor:widthAnchor3];
  v61[3] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:4];
  [v18 addConstraints:v24];

  v25 = objc_alloc_init(MEMORY[0x277D756B8]);
  v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v57 = [v26 localizedStringForKey:@"SETTING_UP_CARD_TITLE" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  [(UILabel *)v25 setText:v57];
  v27 = MEMORY[0x277D74310];
  v28 = *MEMORY[0x277D76A20];
  traitCollection = [(CARSetupAssetProgressViewController *)self traitCollection];
  v30 = [v27 preferredFontDescriptorWithTextStyle:v28 compatibleWithTraitCollection:traitCollection];

  v54 = [v30 fontDescriptorWithSymbolicTraits:2];

  v52 = [MEMORY[0x277D74300] fontWithDescriptor:v54 size:0.0];
  [(UILabel *)v25 setFont:v52];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v25 setTextColor:labelColor];

  [(UILabel *)v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v50 addSubview:v25];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v25;
  v33 = v25;

  centerXAnchor3 = [(UILabel *)v33 centerXAnchor];
  centerXAnchor4 = [v50 centerXAnchor];
  v45 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v60[0] = v45;
  widthAnchor4 = [(UILabel *)v33 widthAnchor];
  widthAnchor5 = [v50 widthAnchor];
  v42 = [widthAnchor4 constraintLessThanOrEqualToAnchor:widthAnchor5];
  v60[1] = v42;
  topAnchor = [(UILabel *)v33 topAnchor];
  bottomAnchor = [(CARSetupAppIconProgressView *)v55 bottomAnchor];
  v36 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:30.0];
  v60[2] = v36;
  bottomAnchor2 = [(UILabel *)v33 bottomAnchor];
  bottomAnchor3 = [v50 bottomAnchor];
  v39 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3 constant:-30.0];
  v60[3] = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:4];

  [v50 addConstraints:v40];
  v41 = *MEMORY[0x277D85DE8];
}

- (void)_startUseLaterTimer
{
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__showUseLater selector:0 userInfo:0 repeats:30.0];
  [(CARSetupAssetProgressViewController *)self setUseLaterTimer:v3];
}

- (void)_invalidateUseLaterTimer
{
  useLaterTimer = [(CARSetupAssetProgressViewController *)self useLaterTimer];
  if (useLaterTimer)
  {
    v4 = useLaterTimer;
    [useLaterTimer invalidate];
    [(CARSetupAssetProgressViewController *)self setUseLaterTimer:0];
    useLaterTimer = v4;
  }
}

- (void)_showUseLater
{
  v31[4] = *MEMORY[0x277D85DE8];
  v3 = CARSetupLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_242FD5000, v3, OS_LOG_TYPE_DEFAULT, "showing button for asset ready soon progress", buf, 2u);
  }

  useLaterTimer = [(CARSetupAssetProgressViewController *)self useLaterTimer];
  [useLaterTimer invalidate];

  [(CARSetupAssetProgressViewController *)self setUseLaterTimer:0];
  objc_initWeak(buf, self);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v27 = [v5 localizedStringForKey:@"USE_LATER" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  v6 = MEMORY[0x277D75220];
  v7 = MEMORY[0x277D750C8];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __52__CARSetupAssetProgressViewController__showUseLater__block_invoke;
  v28[3] = &unk_278D8F558;
  objc_copyWeak(&v29, buf);
  v8 = [v7 actionWithTitle:v27 image:0 identifier:0 handler:v28];
  v9 = [v6 systemButtonWithPrimaryAction:v8];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(CARSetupAssetProgressViewController *)self view];
  [view addSubview:v9];
  objc_storeStrong(&self->_useLaterButton, v9);
  centerXAnchor = [v9 centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v24 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v31[0] = v24;
  topAnchor = [v9 topAnchor];
  titleLabel = [(CARSetupAssetProgressViewController *)self titleLabel];
  bottomAnchor = [titleLabel bottomAnchor];
  v20 = [topAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor];
  v31[1] = v20;
  bottomAnchor2 = [v9 bottomAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide bottomAnchor];
  v14 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-30.0];
  v31[2] = v14;
  widthAnchor = [v9 widthAnchor];
  widthAnchor2 = [view widthAnchor];
  v17 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
  v31[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  [view addConstraints:v18];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);
  v19 = *MEMORY[0x277D85DE8];
}

void __52__CARSetupAssetProgressViewController__showUseLater__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _useLater];
}

- (void)_cancel
{
  v3 = CARSetupLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_242FD5000, v3, OS_LOG_TYPE_DEFAULT, "asset progress: canceling", v6, 2u);
  }

  cancelHandler = [(CARSetupAssetProgressViewController *)self cancelHandler];
  v5 = cancelHandler;
  if (cancelHandler)
  {
    (*(cancelHandler + 16))(cancelHandler, 0);
  }
}

- (void)_useLater
{
  v3 = CARSetupLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_242FD5000, v3, OS_LOG_TYPE_DEFAULT, "asset progress: use later", v6, 2u);
  }

  cancelHandler = [(CARSetupAssetProgressViewController *)self cancelHandler];
  v5 = cancelHandler;
  if (cancelHandler)
  {
    (*(cancelHandler + 16))(cancelHandler, 1);
  }
}

@end