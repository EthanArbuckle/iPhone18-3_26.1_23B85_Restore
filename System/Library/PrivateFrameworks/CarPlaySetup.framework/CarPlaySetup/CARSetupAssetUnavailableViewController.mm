@interface CARSetupAssetUnavailableViewController
- (CARSetupAssetUnavailableViewController)initWithDescription:(id)a3 responseHandler:(id)a4;
- (void)_cancel;
- (void)_checkForUpdates;
- (void)viewDidLoad;
@end

@implementation CARSetupAssetUnavailableViewController

- (CARSetupAssetUnavailableViewController)initWithDescription:(id)a3 responseHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CARSetupAssetUnavailableViewController;
  v9 = [(CARSetupAssetUnavailableViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetDescription, a3);
    v11 = MEMORY[0x245D29570](v8);
    responseHandler = v10->_responseHandler;
    v10->_responseHandler = v11;
  }

  return v10;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = CARSetupAssetUnavailableViewController;
  [(CARSetupAssetPrompt *)&v24 viewDidLoad];
  v3 = [(CARSetupAssetUnavailableViewController *)self navigationItem];
  [v3 setHidesBackButton:1];

  v4 = objc_alloc(MEMORY[0x277D751E0]);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CANCEL" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  v7 = [v4 initWithTitle:v6 style:0 target:self action:sel__cancel];
  v8 = [MEMORY[0x277D75348] whiteColor];
  [v7 setTintColor:v8];

  v9 = [(CARSetupAssetUnavailableViewController *)self navigationItem];
  [v9 setLeftBarButtonItem:v7];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"UNAVAILABLE_CARD_TITLE" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  [(CARSetupAssetPrompt *)self addTitleLabelForText:v11];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"UNAVAILABLE_CARD_MESSAGE" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  v14 = [(CARSetupAssetUnavailableViewController *)self assetDescription];

  if (v14)
  {
    v15 = [(CARSetupAssetUnavailableViewController *)self assetDescription];
    v16 = [v13 stringByAppendingFormat:@"\n\n\n%@", v15];

    v13 = v16;
  }

  [(CARSetupAssetPrompt *)self addSubtitleLabelForText:v13];
  objc_initWeak(&location, self);
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"UNAVAILABLE_CARD_CHECK_UPDATES" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  v19 = MEMORY[0x277D750C8];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__CARSetupAssetUnavailableViewController_viewDidLoad__block_invoke;
  v21[3] = &unk_278D8F558;
  objc_copyWeak(&v22, &location);
  v20 = [v19 actionWithTitle:v18 image:0 identifier:0 handler:v21];
  [(CARSetupAssetPrompt *)self addPrimaryAction:v20 secondaryAction:0];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __53__CARSetupAssetUnavailableViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkForUpdates];
}

- (void)_checkForUpdates
{
  v3 = CARSetupLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_242FD5000, v3, OS_LOG_TYPE_DEFAULT, "asset ready: check for updates", v6, 2u);
  }

  v4 = [(CARSetupAssetUnavailableViewController *)self responseHandler];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, 1);
  }
}

- (void)_cancel
{
  v3 = CARSetupLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_242FD5000, v3, OS_LOG_TYPE_DEFAULT, "asset ready: cancel", v6, 2u);
  }

  v4 = [(CARSetupAssetUnavailableViewController *)self responseHandler];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }
}

@end