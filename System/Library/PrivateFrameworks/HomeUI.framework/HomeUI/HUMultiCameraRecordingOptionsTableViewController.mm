@interface HUMultiCameraRecordingOptionsTableViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HUMultiCameraRecordingOptionsTableViewController)initWithHome:(id)home;
- (id)itemModuleControllers;
- (void)dismissTextViewController;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation HUMultiCameraRecordingOptionsTableViewController

- (HUMultiCameraRecordingOptionsTableViewController)initWithHome:(id)home
{
  homeCopy = home;
  v6 = [objc_alloc(MEMORY[0x277D146D0]) initWithHome:homeCopy];
  v7 = [(HFItemManager *)[HUMultiCameraRecordingOptionsItemManager alloc] initWithDelegate:self sourceItem:v6];
  v11.receiver = self;
  v11.super_class = HUMultiCameraRecordingOptionsTableViewController;
  v8 = [(HUItemTableViewController *)&v11 initWithItemManager:v7 tableViewStyle:2];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
    objc_storeStrong(&v9->_recordingOptionsItemManager, v7);
  }

  return v9;
}

- (id)itemModuleControllers
{
  v3 = objc_opt_new();
  v12.receiver = self;
  v12.super_class = HUMultiCameraRecordingOptionsTableViewController;
  itemModuleControllers = [(HUCameraRecordingOptionsTableViewController *)&v12 itemModuleControllers];
  [v3 unionSet:itemModuleControllers];

  cameraSettingsModuleControllers = [(HUMultiCameraRecordingOptionsTableViewController *)self cameraSettingsModuleControllers];

  if (!cameraSettingsModuleControllers)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(HUMultiCameraRecordingOptionsTableViewController *)self setCameraSettingsModuleControllers:array];

    recordingOptionsItemManager = [(HUMultiCameraRecordingOptionsTableViewController *)self recordingOptionsItemManager];
    cameraRecordingItemModules = [recordingOptionsItemManager cameraRecordingItemModules];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __73__HUMultiCameraRecordingOptionsTableViewController_itemModuleControllers__block_invoke;
    v11[3] = &unk_277DC1898;
    v11[4] = self;
    [cameraRecordingItemModules na_each:v11];
  }

  cameraSettingsModuleControllers2 = [(HUMultiCameraRecordingOptionsTableViewController *)self cameraSettingsModuleControllers];
  [v3 addObjectsFromArray:cameraSettingsModuleControllers2];

  return v3;
}

void __73__HUMultiCameraRecordingOptionsTableViewController_itemModuleControllers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[HUCameraSettingsModuleController alloc] initWithModule:v3];

  [(HUCameraSettingsModuleController *)v5 setUseProxSetupPresentationStyle:1];
  [(HUCameraSettingsModuleController *)v5 setHost:*(a1 + 32)];
  v4 = [*(a1 + 32) cameraSettingsModuleControllers];
  [v4 addObject:v5];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = HUMultiCameraRecordingOptionsTableViewController;
  [(HUCameraRecordingOptionsTableViewController *)&v2 viewDidLoad];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = HUMultiCameraRecordingOptionsTableViewController;
  coordinatorCopy = coordinator;
  [(HUCameraRecordingOptionsTableViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __103__HUMultiCameraRecordingOptionsTableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_277DB79B8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

void __103__HUMultiCameraRecordingOptionsTableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) cameraSettingsModuleControllers];
  [v1 na_each:&__block_literal_global_210];
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
    buttonTray = [v14 buttonTray];
    [buttonTray addButton:boldButton];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __103__HUMultiCameraRecordingOptionsTableViewController_textView_shouldInteractWithURL_inRange_interaction___block_invoke;
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

void __103__HUMultiCameraRecordingOptionsTableViewController_textView_shouldInteractWithURL_inRange_interaction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)dismissTextViewController
{
  navigationController = [(HUMultiCameraRecordingOptionsTableViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

@end