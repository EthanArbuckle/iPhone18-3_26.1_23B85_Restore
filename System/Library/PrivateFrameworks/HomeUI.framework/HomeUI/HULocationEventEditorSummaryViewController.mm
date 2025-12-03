@interface HULocationEventEditorSummaryViewController
+ (id)defaultLocationEventBuilderForHome:(id)home eventType:(unint64_t)type;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)section;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HULocationEventEditorSummaryViewController)initWithFlow:(id)flow stepIdentifier:(id)identifier;
- (HULocationEventEditorSummaryViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (id)buildItemModuleControllerForModule:(id)module;
- (void)_doneButtonPressed:(id)pressed;
- (void)regionEditor:(id)editor didFinishWithRegion:(id)region;
- (void)resetSelectedLocationToHomeForPresenceUserPickerItemModuleController:(id)controller;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation HULocationEventEditorSummaryViewController

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

- (HULocationEventEditorSummaryViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithTriggerBuilder_mode_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HULocationEventEditorSummaryViewController.m" lineNumber:56 description:{@"%s is unavailable; use %@ instead", "-[HULocationEventEditorSummaryViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HULocationEventEditorSummaryViewController)initWithFlow:(id)flow stepIdentifier:(id)identifier
{
  flowCopy = flow;
  identifierCopy = identifier;
  v8 = [[HULocationEventEditorSummaryItemManager alloc] initWithDelegate:self flow:flowCopy];
  v12.receiver = self;
  v12.super_class = HULocationEventEditorSummaryViewController;
  v9 = [(HUItemTableViewController *)&v12 initWithItemManager:v8 tableViewStyle:1];
  v10 = v9;
  if (v9)
  {
    [(HULocationEventEditorSummaryViewController *)v9 setFlow:flowCopy];
    [(HULocationEventEditorSummaryViewController *)v10 setStepIdentifier:identifierCopy];
  }

  return v10;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HULocationEventEditorSummaryViewController;
  [(HUItemTableViewController *)&v10 viewDidLoad];
  flow = [(HULocationEventEditorSummaryViewController *)self flow];
  stepIdentifier = [(HULocationEventEditorSummaryViewController *)self stepIdentifier];
  v5 = [flow shouldShowDoneButtonForStep:stepIdentifier];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D751E0]);
    v7 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
    v8 = [v6 initWithTitle:v7 style:2 target:self action:sel__doneButtonPressed_];
    navigationItem = [(HULocationEventEditorSummaryViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v8];
  }
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  itemManager = [(HUItemTableViewController *)self itemManager];
  userPickerModule = [itemManager userPickerModule];
  v7 = [moduleCopy isEqual:userPickerModule];

  if (v7)
  {
    v8 = [(HUItemModuleController *)[HUPresenceUserPickerItemModuleController alloc] initWithModule:moduleCopy];
    userPickerModuleController = self->_userPickerModuleController;
    self->_userPickerModuleController = v8;

    [(HUPresenceUserPickerItemModuleController *)self->_userPickerModuleController setDelegate:self];
    userPickerModuleController = [(HULocationEventEditorSummaryViewController *)self userPickerModuleController];
LABEL_5:
    v16 = userPickerModuleController;
    goto LABEL_7;
  }

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  conditionEditorModule = [itemManager2 conditionEditorModule];
  v13 = [moduleCopy isEqual:conditionEditorModule];

  if (v13)
  {
    v14 = [[HUTriggerConditionEditorItemModuleController alloc] initWithModule:moduleCopy delegate:self];
    conditionEditorModuleController = self->_conditionEditorModuleController;
    self->_conditionEditorModuleController = v14;

    userPickerModuleController = [(HULocationEventEditorSummaryViewController *)self conditionEditorModuleController];
    goto LABEL_5;
  }

  v16 = 0;
LABEL_7:

  return v16;
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
  v13.super_class = HULocationEventEditorSummaryViewController;
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
  v15.super_class = HULocationEventEditorSummaryViewController;
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
  if (_MergedGlobals_4_5 != -1)
  {
    dispatch_once(&_MergedGlobals_4_5, &__block_literal_global_33_2);
  }

  v5 = qword_27C838050;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager displayedSectionIdentifierForSectionIndex:section];

  LOBYTE(itemManager) = [v5 containsObject:v7];
  return itemManager;
}

void __75__HULocationEventEditorSummaryViewController_shouldHideHeaderAboveSection___block_invoke_2()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = +[HULocationEventEditorSummaryItemManager usersHeaderSectionID];
  v6[0] = v1;
  v2 = +[HULocationEventEditorSummaryItemManager usersListSectionID];
  v6[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = [v0 setWithArray:v3];
  v5 = qword_27C838050;
  qword_27C838050 = v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = HULocationEventEditorSummaryViewController;
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

- (void)_doneButtonPressed:(id)pressed
{
  flow = [(HULocationEventEditorSummaryViewController *)self flow];
  stepIdentifier = [(HULocationEventEditorSummaryViewController *)self stepIdentifier];
  [flow viewController:self didFinishStepWithIdentifier:stepIdentifier];
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
  v14[2] = __79__HULocationEventEditorSummaryViewController_regionEditor_didFinishWithRegion___block_invoke;
  v14[3] = &unk_277DB7E68;
  v14[4] = self;
  v15 = regionCopy;
  v12 = regionCopy;
  v13 = [futureWithNoResult addSuccessBlock:v14];
}

uint64_t __79__HULocationEventEditorSummaryViewController_regionEditor_didFinishWithRegion___block_invoke(uint64_t a1)
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

@end