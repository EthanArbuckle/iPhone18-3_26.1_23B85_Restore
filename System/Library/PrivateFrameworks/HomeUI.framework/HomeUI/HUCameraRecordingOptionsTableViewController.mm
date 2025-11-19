@interface HUCameraRecordingOptionsTableViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (HUCameraRecordingOptionsItemManager)detailsItemManager;
- (HUCameraRecordingOptionsTableViewController)initWithServiceLikeItem:(id)a3;
- (id)itemModuleControllers;
- (void)dismissTextViewController;
- (void)setDisplayStyle:(unint64_t)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation HUCameraRecordingOptionsTableViewController

- (HUCameraRecordingOptionsTableViewController)initWithServiceLikeItem:(id)a3
{
  v4 = a3;
  v5 = [HUCameraRecordingOptionsItemManager alloc];
  v6 = [v4 copy];

  v7 = [(HFItemManager *)v5 initWithDelegate:self sourceItem:v6];
  [(HUCameraRecordingOptionsItemManager *)v7 setDisplayStyle:3];
  v11.receiver = self;
  v11.super_class = HUCameraRecordingOptionsTableViewController;
  v8 = [(HUItemTableViewController *)&v11 initWithItemManager:v7 tableViewStyle:1];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_detailsItemManager, v7);
    v9->_displayStyle = 3;
  }

  return v9;
}

- (id)itemModuleControllers
{
  v3 = objc_opt_new();
  v14.receiver = self;
  v14.super_class = HUCameraRecordingOptionsTableViewController;
  v4 = [(HUItemTableViewController *)&v14 itemModuleControllers];
  [v3 unionSet:v4];

  v5 = [(HUCameraRecordingOptionsTableViewController *)self detailsItemManager];
  v6 = [v5 cameraRecordingItemModule];

  if (v6)
  {
    v7 = [(HUCameraRecordingOptionsTableViewController *)self cameraSettingsModuleController];

    if (!v7)
    {
      v8 = [[HUCameraSettingsModuleController alloc] initWithModule:v6];
      [(HUCameraRecordingOptionsTableViewController *)self setCameraSettingsModuleController:v8];

      v9 = [(HUCameraRecordingOptionsTableViewController *)self displayStyle]== 2;
      v10 = [(HUCameraRecordingOptionsTableViewController *)self cameraSettingsModuleController];
      [v10 setUseProxSetupPresentationStyle:v9];

      v11 = [(HUCameraRecordingOptionsTableViewController *)self cameraSettingsModuleController];
      [v11 setHost:self];
    }
  }

  v12 = [(HUCameraRecordingOptionsTableViewController *)self cameraSettingsModuleController];
  [v3 na_safeAddObject:v12];

  return v3;
}

- (void)setDisplayStyle:(unint64_t)a3
{
  if (self->_displayStyle != a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_detailsItemManager);
    [WeakRetained setDisplayStyle:a3];

    self->_displayStyle = a3;
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HUCameraRecordingOptionsTableViewController;
  [(HUItemTableViewController *)&v7 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  v4 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRecordingOptionsDisplayTitle", @"HUServiceDetailsRecordingOptionsDisplayTitle", 1);
  [v3 setText:v4];

  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [v3 setFont:v5];

  v6 = [(HUCameraRecordingOptionsTableViewController *)self navigationItem];
  [v6 setTitleView:v3];

  [v3 setAccessibilityIdentifier:@"AccessoryDetails.RecordingOptionDisplayTitle"];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = HUCameraRecordingOptionsTableViewController;
  v7 = a4;
  [(HUItemTableViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __98__HUCameraRecordingOptionsTableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_277DB79B8;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

void __98__HUCameraRecordingOptionsTableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) cameraSettingsModuleController];
  [v1 viewSizeDidChanged];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = self;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x277CBEBC0] hf_cameraRecordingURL];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277D37688]);
    v12 = _HULocalizedStringWithDefaultValue(@"HUCameraAndRecordingLearnMoreTitle", @"HUCameraAndRecordingLearnMoreTitle", 1);
    v13 = _HULocalizedStringWithDefaultValue(@"HUCameraAndRecordingLearnMoreBody", @"HUCameraAndRecordingLearnMoreBody", 1);
    v14 = [v11 initWithTitle:v12 detailText:v13 symbolName:0 contentLayout:2];

    v15 = [MEMORY[0x277D37618] boldButton];
    v16 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
    [v15 setTitle:v16 forState:0];

    [v15 addTarget:self action:sel_dismissTextViewController forControlEvents:64];
    [v15 setAccessibilityIdentifier:@"AccessoryDetails.DoneButton"];
    v17 = [v14 buttonTray];
    [v17 addButton:v15];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __98__HUCameraRecordingOptionsTableViewController_textView_shouldInteractWithURL_inRange_interaction___block_invoke;
    v21[3] = &unk_277DB7558;
    v21[4] = self;
    v22 = v14;
    v18 = v14;
    dispatch_async(MEMORY[0x277D85CD0], v21);
  }

  else
  {
    v15 = [MEMORY[0x277D148E8] sharedInstance];
    v19 = [v15 openURL:v7];
  }

  return v10 ^ 1;
}

void __98__HUCameraRecordingOptionsTableViewController_textView_shouldInteractWithURL_inRange_interaction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)dismissTextViewController
{
  v2 = [(HUCameraRecordingOptionsTableViewController *)self navigationController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (HUCameraRecordingOptionsItemManager)detailsItemManager
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsItemManager);

  return WeakRetained;
}

@end