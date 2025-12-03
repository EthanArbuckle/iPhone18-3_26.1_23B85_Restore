@interface DKPromptCloudUploadViewController
- (DKPromptCloudUploadViewController)init;
- (void)_eraseTapped:(id)tapped;
- (void)_uploadTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation DKPromptCloudUploadViewController

- (DKPromptCloudUploadViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CLOUD_UPLOAD_TITLE" value:&stru_285BC2A70 table:@"Localizable"];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CLOUD_UPLOAD_DETAIL" value:&stru_285BC2A70 table:@"Localizable"];
  v9.receiver = self;
  v9.super_class = DKPromptCloudUploadViewController;
  v7 = [(DKPromptCloudUploadViewController *)&v9 initWithTitle:v4 detailText:v6 symbolName:@"icloud.and.arrow.up" contentLayout:2];

  return v7;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = DKPromptCloudUploadViewController;
  [(OBBaseWelcomeController *)&v11 viewDidLoad];
  boldButton = [MEMORY[0x277D37618] boldButton];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"FINISH_UPLOAD_THEN_ERASE" value:&stru_285BC2A70 table:@"Localizable"];
  [boldButton setTitle:v5 forState:0];

  [boldButton addTarget:self action:sel__uploadTapped_ forControlEvents:64];
  buttonTray = [(DKPromptCloudUploadViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  linkButton = [MEMORY[0x277D37650] linkButton];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ERASE_NOW" value:&stru_285BC2A70 table:@"Localizable"];
  [linkButton setTitle:v9 forState:0];

  [linkButton addTarget:self action:sel__eraseTapped_ forControlEvents:64];
  buttonTray2 = [(DKPromptCloudUploadViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];
}

- (void)_uploadTapped:(id)tapped
{
  hasInternetConnectivity = [(DKPromptCloudUploadViewController *)self hasInternetConnectivity];
  if (!hasInternetConnectivity || (v5 = hasInternetConnectivity, [(DKPromptCloudUploadViewController *)self hasInternetConnectivity], v6 = objc_claimAutoreleasedReturnValue(), v7 = v6[2](), v6, v5, !v7))
  {
    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = SFLocalizableWAPIStringKeyForKey();
    v36 = [v26 localizedStringForKey:v27 value:&stru_285BC2A70 table:@"Localizable"];

    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v29 = SFLocalizableWAPIStringKeyForKey();
    v16 = [v28 localizedStringForKey:v29 value:&stru_285BC2A70 table:@"Localizable"];

    v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v36 message:v16 preferredStyle:1];
    v30 = MEMORY[0x277D750F8];
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:@"CANCEL" value:&stru_285BC2A70 table:@"Localizable"];
    v33 = [v30 actionWithTitle:v32 style:1 handler:0];
    [v17 addAction:v33];

    v22 = MEMORY[0x277D750F8];
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:@"SETTINGS" value:&stru_285BC2A70 table:@"Localizable"];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __51__DKPromptCloudUploadViewController__uploadTapped___block_invoke_2;
    v38[3] = &unk_278F7DBE8;
    v38[4] = self;
    v25 = v38;
    goto LABEL_7;
  }

  shouldWarnForDataUsage = [(DKPromptCloudUploadViewController *)self shouldWarnForDataUsage];
  if (shouldWarnForDataUsage)
  {
    v9 = shouldWarnForDataUsage;
    shouldWarnForDataUsage2 = [(DKPromptCloudUploadViewController *)self shouldWarnForDataUsage];
    v11 = shouldWarnForDataUsage2[2]();

    if (v11)
    {
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = SFLocalizableWAPIStringKeyForKey();
      v36 = [v12 localizedStringForKey:v13 value:&stru_285BC2A70 table:@"Localizable"];

      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = SFLocalizableWAPIStringKeyForKey();
      v16 = [v14 localizedStringForKey:v15 value:&stru_285BC2A70 table:@"Localizable"];

      v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v36 message:v16 preferredStyle:1];
      v18 = MEMORY[0x277D750F8];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"CANCEL" value:&stru_285BC2A70 table:@"Localizable"];
      v21 = [v18 actionWithTitle:v20 style:1 handler:0];
      [v17 addAction:v21];

      v22 = MEMORY[0x277D750F8];
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"CONTINUE" value:&stru_285BC2A70 table:@"Localizable"];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __51__DKPromptCloudUploadViewController__uploadTapped___block_invoke;
      v39[3] = &unk_278F7DBE8;
      v39[4] = self;
      v25 = v39;
LABEL_7:
      v34 = [v22 actionWithTitle:v24 style:0 handler:v25];
      [v17 addAction:v34];

      [(DKPromptCloudUploadViewController *)self presentViewController:v17 animated:1 completion:0];
      return;
    }
  }

  uploadThenEraseBlock = [(DKPromptCloudUploadViewController *)self uploadThenEraseBlock];

  if (uploadThenEraseBlock)
  {
    uploadThenEraseBlock2 = [(DKPromptCloudUploadViewController *)self uploadThenEraseBlock];
    uploadThenEraseBlock2[2](uploadThenEraseBlock2, 0);
  }
}

void __51__DKPromptCloudUploadViewController__uploadTapped___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uploadThenEraseBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) uploadThenEraseBlock];
    v3[2](v3, 1);
  }
}

void __51__DKPromptCloudUploadViewController__uploadTapped___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) presentNetworkSettings];

  if (v2)
  {
    v3 = [*(a1 + 32) presentNetworkSettings];
    v3[2]();
  }
}

- (void)_eraseTapped:(id)tapped
{
  eraseNowBlock = [(DKPromptCloudUploadViewController *)self eraseNowBlock];

  if (eraseNowBlock)
  {
    eraseNowBlock2 = [(DKPromptCloudUploadViewController *)self eraseNowBlock];
    eraseNowBlock2[2]();
  }
}

@end