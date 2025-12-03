@interface HULocationTriggerEditorSummaryViewController
+ (id)defaultLocationEventBuilderForHome:(id)home eventType:(unint64_t)type;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)section;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HULocationTriggerEditorSummaryViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (HULocationTriggerEditorSummaryViewController)initWithTriggerBuilder:(id)builder mode:(unint64_t)mode delegate:(id)delegate;
- (HUTriggerEditorDelegate)delegate;
- (id)itemModuleControllers;
- (void)_showActionEditor:(id)editor;
- (void)_showSummary:(id)summary;
- (void)regionEditor:(id)editor didFinishWithRegion:(id)region;
- (void)resetSelectedLocationToHomeForPresenceUserPickerItemModuleController:(id)controller;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation HULocationTriggerEditorSummaryViewController

+ (id)defaultLocationEventBuilderForHome:(id)home eventType:(unint64_t)type
{
  homeCopy = home;
  if ([MEMORY[0x277CD1D20] hf_presenceDisableReasonsForHome:homeCopy])
  {
    v6 = objc_alloc_init(MEMORY[0x277D147B0]);
    v7 = [HULocationTriggerRegion homeRegionWithHome:homeCopy eventType:type];
    defaultCircularRegionForCoordinate = [v7 defaultCircularRegionForCoordinate];
    [v6 setRegion:defaultCircularRegionForCoordinate];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D14978]);
    [v6 setLocationEventType:type];
    allUsersCollection = [MEMORY[0x277D14A70] allUsersCollection];
    [v6 setUsers:allUsersCollection];

    [v6 setActivationGranularity:0];
  }

  return v6;
}

- (HULocationTriggerEditorSummaryViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithTriggerBuilder_mode_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HULocationTriggerEditorSummaryViewController.m" lineNumber:43 description:{@"%s is unavailable; use %@ instead", "-[HULocationTriggerEditorSummaryViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HULocationTriggerEditorSummaryViewController)initWithTriggerBuilder:(id)builder mode:(unint64_t)mode delegate:(id)delegate
{
  builderCopy = builder;
  delegateCopy = delegate;
  v11 = [[HULocationTriggerEditorSummaryItemManager alloc] initWithDelegate:self triggerBuilder:builderCopy];
  v23.receiver = self;
  v23.super_class = HULocationTriggerEditorSummaryViewController;
  v12 = [(HUItemTableViewController *)&v23 initWithItemManager:v11 tableViewStyle:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_triggerBuilder, builder);
    v13->_mode = mode;
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14 = [HUTriggerConditionEditorItemModuleController alloc];
    conditionEditorModule = [(HULocationTriggerEditorSummaryItemManager *)v11 conditionEditorModule];
    v16 = [(HUTriggerConditionEditorItemModuleController *)v14 initWithModule:conditionEditorModule delegate:v13];
    conditionEditorModuleController = v13->_conditionEditorModuleController;
    v13->_conditionEditorModuleController = v16;

    v18 = [HUPresenceUserPickerItemModuleController alloc];
    userPickerModule = [(HULocationTriggerEditorSummaryItemManager *)v11 userPickerModule];
    v20 = [(HUItemModuleController *)v18 initWithModule:userPickerModule];
    userPickerModuleController = v13->_userPickerModuleController;
    v13->_userPickerModuleController = v20;

    [(HUPresenceUserPickerItemModuleController *)v13->_userPickerModuleController setDelegate:v13];
  }

  return v13;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = HULocationTriggerEditorSummaryViewController;
  [(HUItemTableViewController *)&v12 viewDidLoad];
  if (![(HULocationTriggerEditorSummaryViewController *)self mode])
  {
    triggerBuilder = [(HULocationTriggerEditorSummaryViewController *)self triggerBuilder];
    triggerActionSets = [triggerBuilder triggerActionSets];
    hasActions = [triggerActionSets hasActions];
    v6 = &selRef__showSummary_;
    if (!hasActions)
    {
      v6 = &selRef__showActionEditor_;
    }

    v7 = *v6;

    v8 = objc_alloc(MEMORY[0x277D751E0]);
    v9 = _HULocalizedStringWithDefaultValue(@"HUTimerTriggerEditorNextButton", @"HUTimerTriggerEditorNextButton", 1);
    v10 = [v8 initWithTitle:v9 style:2 target:self action:v7];
    navigationItem = [(HULocationTriggerEditorSummaryViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v10];
  }
}

- (id)itemModuleControllers
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  conditionEditorModuleController = [(HULocationTriggerEditorSummaryViewController *)self conditionEditorModuleController];
  v9[0] = conditionEditorModuleController;
  userPickerModuleController = [(HULocationTriggerEditorSummaryViewController *)self userPickerModuleController];
  v9[1] = userPickerModuleController;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v7 = [v3 setWithArray:v6];

  return v7;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager isInstructionsItem:itemCopy];

  if ((v7 & 1) != 0 || (-[HUItemTableViewController itemManager](self, "itemManager"), v8 = objc_claimAutoreleasedReturnValue(), [v8 locationItem], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 == itemCopy))
  {
    v10 = objc_opt_class();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = HULocationTriggerEditorSummaryViewController;
  [(HUItemTableViewController *)&v13 setupCell:cellCopy forItem:itemCopy indexPath:path];
  itemManager = [(HUItemTableViewController *)self itemManager];
  LODWORD(self) = [itemManager isInstructionsItem:itemCopy];

  if (self)
  {
    v11 = [HUListContentConfigurationUtilities instructionsConfigurationForItem:itemCopy];
    [cellCopy setContentConfiguration:v11];
    clearConfiguration = [MEMORY[0x277D751C0] clearConfiguration];
    [cellCopy setBackgroundConfiguration:clearConfiguration];
  }
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  v15.receiver = self;
  v15.super_class = HULocationTriggerEditorSummaryViewController;
  itemCopy = item;
  [(HUItemTableViewController *)&v15 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  v12 = [(HUItemTableViewController *)self itemManager:v15.receiver];
  locationItem = [v12 locationItem];

  if (locationItem == itemCopy)
  {
    v14 = cellCopy;
    [v14 setHideIcon:1];
    [v14 setValueColorFollowsTintColor:1];
  }
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)section
{
  v10[2] = *MEMORY[0x277D85DE8];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v5 = [itemManager displayedSectionIdentifierForSectionIndex:section];

  v6 = +[HULocationTriggerEditorSummaryItemManager usersHeaderSectionID];
  v10[0] = v6;
  v7 = +[HULocationTriggerEditorSummaryItemManager usersListSectionID];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  LOBYTE(itemManager) = [v8 containsObject:v5];

  return itemManager;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = HULocationTriggerEditorSummaryViewController;
  [(HUItemTableViewController *)&v21 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  v10 = [(HUItemTableViewController *)self moduleControllerForItem:v9];

  if (!v10)
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    locationItem = [itemManager2 locationItem];

    if (v9 == locationItem)
    {
      itemManager3 = [(HUItemTableViewController *)self itemManager];
      locationEventRegion = [itemManager3 locationEventRegion];

      v15 = [HULocationTriggerRegionEditorViewController alloc];
      itemManager4 = [(HUItemTableViewController *)self itemManager];
      home = [itemManager4 home];
      v18 = [(HULocationTriggerRegionEditorViewController *)v15 initWithRegion:locationEventRegion home:home delegate:self];

      v19 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v18];
      [v19 setModalPresentationStyle:2];
      [v19 setModalInPresentation:1];
      v20 = [(UIViewController *)self hu_presentPreloadableViewController:v19 animated:1];
    }
  }
}

- (void)_showActionEditor:(id)editor
{
  v4 = [HUTriggerActionPickerViewController alloc];
  triggerBuilder = [(HULocationTriggerEditorSummaryViewController *)self triggerBuilder];
  mode = [(HULocationTriggerEditorSummaryViewController *)self mode];
  delegate = [(HULocationTriggerEditorSummaryViewController *)self delegate];
  v10 = [(HUTriggerActionPickerViewController *)v4 initWithTriggerBuilder:triggerBuilder mode:mode delegate:delegate];

  navigationController = [(HULocationTriggerEditorSummaryViewController *)self navigationController];
  v9 = [navigationController hu_pushPreloadableViewController:v10 animated:1];
}

- (void)_showSummary:(id)summary
{
  v4 = [HUTriggerSummaryViewController alloc];
  triggerBuilder = [(HULocationTriggerEditorSummaryViewController *)self triggerBuilder];
  mode = [(HULocationTriggerEditorSummaryViewController *)self mode];
  delegate = [(HULocationTriggerEditorSummaryViewController *)self delegate];
  v10 = [(HUTriggerSummaryViewController *)v4 initWithTriggerBuilder:triggerBuilder mode:mode isPresentedModally:0 delegate:delegate];

  navigationController = [(HULocationTriggerEditorSummaryViewController *)self navigationController];
  v9 = [navigationController hu_pushPreloadableViewController:v10 animated:1];
}

- (void)regionEditor:(id)editor didFinishWithRegion:(id)region
{
  editorCopy = editor;
  regionCopy = region;
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  itemManager = [(HUItemTableViewController *)self itemManager];
  canAddRegionToTriggerBuilder = [itemManager canAddRegionToTriggerBuilder];

  if ((canAddRegionToTriggerBuilder & 1) == 0)
  {
    showLocationRegionInvalidAlert = [editorCopy showLocationRegionInvalidAlert];

    futureWithNoResult = showLocationRegionInvalidAlert;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__HULocationTriggerEditorSummaryViewController_regionEditor_didFinishWithRegion___block_invoke;
  v14[3] = &unk_277DB7E68;
  v14[4] = self;
  v15 = regionCopy;
  v12 = regionCopy;
  v13 = [futureWithNoResult addSuccessBlock:v14];
}

uint64_t __81__HULocationTriggerEditorSummaryViewController_regionEditor_didFinishWithRegion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemManager];
  [v2 updateLocationEventWithRegion:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)resetSelectedLocationToHomeForPresenceUserPickerItemModuleController:(id)controller
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  home = [itemManager home];
  itemManager2 = [(HUItemTableViewController *)self itemManager];
  locationEventRegion = [itemManager2 locationEventRegion];
  v9 = +[HULocationTriggerRegion homeRegionWithHome:eventType:](HULocationTriggerRegion, "homeRegionWithHome:eventType:", home, [locationEventRegion eventType]);

  itemManager3 = [(HUItemTableViewController *)self itemManager];
  [itemManager3 updateLocationEventWithRegion:v9];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v16 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = lCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v12, 0x16u);
  }

  mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
  v10 = [mEMORY[0x277D148E8] openURL:lCopy];

  return 0;
}

- (HUTriggerEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end