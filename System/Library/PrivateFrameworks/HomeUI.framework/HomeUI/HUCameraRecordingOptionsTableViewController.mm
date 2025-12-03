@interface HUCameraRecordingOptionsTableViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HUCameraRecordingOptionsItemManager)detailsItemManager;
- (HUCameraRecordingOptionsTableViewController)initWithServiceLikeItem:(id)item;
- (id)itemModuleControllers;
- (void)dismissTextViewController;
- (void)setDisplayStyle:(unint64_t)style;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation HUCameraRecordingOptionsTableViewController

- (HUCameraRecordingOptionsTableViewController)initWithServiceLikeItem:(id)item
{
  itemCopy = item;
  v5 = [HUCameraRecordingOptionsItemManager alloc];
  v6 = [itemCopy copy];

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
  itemModuleControllers = [(HUItemTableViewController *)&v14 itemModuleControllers];
  [v3 unionSet:itemModuleControllers];

  detailsItemManager = [(HUCameraRecordingOptionsTableViewController *)self detailsItemManager];
  cameraRecordingItemModule = [detailsItemManager cameraRecordingItemModule];

  if (cameraRecordingItemModule)
  {
    cameraSettingsModuleController = [(HUCameraRecordingOptionsTableViewController *)self cameraSettingsModuleController];

    if (!cameraSettingsModuleController)
    {
      v8 = [[HUCameraSettingsModuleController alloc] initWithModule:cameraRecordingItemModule];
      [(HUCameraRecordingOptionsTableViewController *)self setCameraSettingsModuleController:v8];

      v9 = [(HUCameraRecordingOptionsTableViewController *)self displayStyle]== 2;
      cameraSettingsModuleController2 = [(HUCameraRecordingOptionsTableViewController *)self cameraSettingsModuleController];
      [cameraSettingsModuleController2 setUseProxSetupPresentationStyle:v9];

      cameraSettingsModuleController3 = [(HUCameraRecordingOptionsTableViewController *)self cameraSettingsModuleController];
      [cameraSettingsModuleController3 setHost:self];
    }
  }

  cameraSettingsModuleController4 = [(HUCameraRecordingOptionsTableViewController *)self cameraSettingsModuleController];
  [v3 na_safeAddObject:cameraSettingsModuleController4];

  return v3;
}

- (void)setDisplayStyle:(unint64_t)style
{
  if (self->_displayStyle != style)
  {
    WeakRetained = objc_loadWeakRetained(&self->_detailsItemManager);
    [WeakRetained setDisplayStyle:style];

    self->_displayStyle = style;
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

  navigationItem = [(HUCameraRecordingOptionsTableViewController *)self navigationItem];
  [navigationItem setTitleView:v3];

  [v3 setAccessibilityIdentifier:@"AccessoryDetails.RecordingOptionDisplayTitle"];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = HUCameraRecordingOptionsTableViewController;
  coordinatorCopy = coordinator;
  [(HUItemTableViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __98__HUCameraRecordingOptionsTableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_277DB79B8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

void __98__HUCameraRecordingOptionsTableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) cameraSettingsModuleController];
  [v1 viewSizeDidChanged];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v25 = 2112;
    v26 = lCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", buf, 0x16u);
  }

  hf_cameraRecordingURL = [MEMORY[0x277CBEBC0] hf_cameraRecordingURL];
  v10 = [lCopy isEqual:hf_cameraRecordingURL];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277D37688]);
    v12 = _HULocalizedStringWithDefaultValue(@"HUCameraAndRecordingLearnMoreTitle", @"HUCameraAndRecordingLearnMoreTitle", 1);
    v13 = _HULocalizedStringWithDefaultValue(@"HUCameraAndRecordingLearnMoreBody", @"HUCameraAndRecordingLearnMoreBody", 1);
    v14 = [v11 initWithTitle:v12 detailText:v13 symbolName:0 contentLayout:2];

    boldButton = [MEMORY[0x277D37618] boldButton];
    v16 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
    [boldButton setTitle:v16 forState:0];

    [boldButton addTarget:self action:sel_dismissTextViewController forControlEvents:64];
    [boldButton setAccessibilityIdentifier:@"AccessoryDetails.DoneButton"];
    buttonTray = [v14 buttonTray];
    [buttonTray addButton:boldButton];

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
    boldButton = [MEMORY[0x277D148E8] sharedInstance];
    v19 = [boldButton openURL:lCopy];
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
  navigationController = [(HUCameraRecordingOptionsTableViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (HUCameraRecordingOptionsItemManager)detailsItemManager
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsItemManager);

  return WeakRetained;
}

@end