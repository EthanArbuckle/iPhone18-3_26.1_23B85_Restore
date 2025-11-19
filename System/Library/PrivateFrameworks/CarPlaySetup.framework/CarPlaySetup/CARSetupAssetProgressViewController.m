@interface CARSetupAssetProgressViewController
- (CARSetupAssetProgressViewController)initWithProgressReporter:(id)a3 cancelHandler:(id)a4;
- (void)_cancel;
- (void)_invalidateUseLaterTimer;
- (void)_showUseLater;
- (void)_startUseLaterTimer;
- (void)_useLater;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation CARSetupAssetProgressViewController

- (CARSetupAssetProgressViewController)initWithProgressReporter:(id)a3 cancelHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CARSetupAssetProgressViewController;
  v9 = [(CARSetupAssetProgressViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_progressReporter, a3);
    v11 = MEMORY[0x245D29570](v8);
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
  v3 = [(CARSetupAssetProgressViewController *)self view];
  [(CARSetupAssetProgressViewController *)self setOverrideUserInterfaceStyle:2];
  v4 = [MEMORY[0x277D75348] blackColor];
  [v3 setBackgroundColor:v4];

  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CANCEL" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  v8 = [v5 initWithTitle:v7 style:0 target:self action:sel__cancel];
  v9 = [MEMORY[0x277D75348] whiteColor];
  v58 = v8;
  [v8 setTintColor:v9];

  v10 = [(CARSetupAssetProgressViewController *)self navigationItem];
  [v10 setLeftBarButtonItem:v8];

  v11 = objc_alloc_init(CARSetupAppIconProgressView);
  [(CARSetupAppIconProgressView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v11];
  progressView = self->_progressView;
  self->_progressView = v11;
  v13 = v11;

  v56 = [(CARSetupAppIconProgressView *)v13 centerXAnchor];
  v14 = v3;
  v53 = [v3 centerXAnchor];
  v51 = [v56 constraintEqualToAnchor:v53];
  v61[0] = v51;
  v15 = v13;
  v55 = v13;
  v48 = [(CARSetupAppIconProgressView *)v13 centerYAnchor];
  v46 = [v3 centerYAnchor];
  v16 = [v48 constraintEqualToAnchor:v46 constant:-30.0];
  v61[1] = v16;
  v17 = [(CARSetupAppIconProgressView *)v13 widthAnchor];
  v18 = v14;
  v50 = v14;
  v19 = [v14 widthAnchor];
  v20 = [v17 constraintEqualToAnchor:v19 multiplier:1.0];
  v61[2] = v20;
  v21 = [(CARSetupAppIconProgressView *)v15 heightAnchor];
  v22 = [(CARSetupAppIconProgressView *)v15 widthAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  v61[3] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:4];
  [v18 addConstraints:v24];

  v25 = objc_alloc_init(MEMORY[0x277D756B8]);
  v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v57 = [v26 localizedStringForKey:@"SETTING_UP_CARD_TITLE" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  [(UILabel *)v25 setText:v57];
  v27 = MEMORY[0x277D74310];
  v28 = *MEMORY[0x277D76A20];
  v29 = [(CARSetupAssetProgressViewController *)self traitCollection];
  v30 = [v27 preferredFontDescriptorWithTextStyle:v28 compatibleWithTraitCollection:v29];

  v54 = [v30 fontDescriptorWithSymbolicTraits:2];

  v52 = [MEMORY[0x277D74300] fontWithDescriptor:v54 size:0.0];
  [(UILabel *)v25 setFont:v52];
  v31 = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v25 setTextColor:v31];

  [(UILabel *)v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v50 addSubview:v25];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v25;
  v33 = v25;

  v49 = [(UILabel *)v33 centerXAnchor];
  v47 = [v50 centerXAnchor];
  v45 = [v49 constraintEqualToAnchor:v47];
  v60[0] = v45;
  v44 = [(UILabel *)v33 widthAnchor];
  v43 = [v50 widthAnchor];
  v42 = [v44 constraintLessThanOrEqualToAnchor:v43];
  v60[1] = v42;
  v34 = [(UILabel *)v33 topAnchor];
  v35 = [(CARSetupAppIconProgressView *)v55 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:30.0];
  v60[2] = v36;
  v37 = [(UILabel *)v33 bottomAnchor];
  v38 = [v50 bottomAnchor];
  v39 = [v37 constraintLessThanOrEqualToAnchor:v38 constant:-30.0];
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
  v3 = [(CARSetupAssetProgressViewController *)self useLaterTimer];
  if (v3)
  {
    v4 = v3;
    [v3 invalidate];
    [(CARSetupAssetProgressViewController *)self setUseLaterTimer:0];
    v3 = v4;
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

  v4 = [(CARSetupAssetProgressViewController *)self useLaterTimer];
  [v4 invalidate];

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
  v10 = [(CARSetupAssetProgressViewController *)self view];
  [v10 addSubview:v9];
  objc_storeStrong(&self->_useLaterButton, v9);
  v26 = [v9 centerXAnchor];
  v25 = [v10 centerXAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v31[0] = v24;
  v22 = [v9 topAnchor];
  v23 = [(CARSetupAssetProgressViewController *)self titleLabel];
  v21 = [v23 bottomAnchor];
  v20 = [v22 constraintGreaterThanOrEqualToAnchor:v21];
  v31[1] = v20;
  v11 = [v9 bottomAnchor];
  v12 = [v10 safeAreaLayoutGuide];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:-30.0];
  v31[2] = v14;
  v15 = [v9 widthAnchor];
  v16 = [v10 widthAnchor];
  v17 = [v15 constraintLessThanOrEqualToAnchor:v16];
  v31[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  [v10 addConstraints:v18];

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

  v4 = [(CARSetupAssetProgressViewController *)self cancelHandler];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
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

  v4 = [(CARSetupAssetProgressViewController *)self cancelHandler];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, 1);
  }
}

@end