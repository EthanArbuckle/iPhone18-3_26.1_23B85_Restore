@interface HULocationEventEditorSummaryViewController
+ (id)defaultLocationEventBuilderForHome:(id)a3 eventType:(unint64_t)a4;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HULocationEventEditorSummaryViewController)initWithFlow:(id)a3 stepIdentifier:(id)a4;
- (HULocationEventEditorSummaryViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (id)buildItemModuleControllerForModule:(id)a3;
- (void)_doneButtonPressed:(id)a3;
- (void)regionEditor:(id)a3 didFinishWithRegion:(id)a4;
- (void)resetSelectedLocationToHomeForPresenceUserPickerItemModuleController:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidLoad;
@end

@implementation HULocationEventEditorSummaryViewController

+ (id)defaultLocationEventBuilderForHome:(id)a3 eventType:(unint64_t)a4
{
  v5 = a3;
  if ([MEMORY[0x277CD1D20] hf_presenceDisableReasonsForHome:v5])
  {
    v6 = objc_alloc_init(MEMORY[0x277D147B0]);
    v7 = [HULocationTriggerRegion homeRegionWithHome:v5 eventType:a4];
    v8 = [v7 defaultCircularRegionForCoordinate];
    [v6 setRegion:v8];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D14978]);
    [v6 setLocationEventType:a4];
    v9 = [MEMORY[0x277D14A70] allUsersCollection];
    [v6 setUsers:v9];

    [v6 setActivationGranularity:0];
  }

  return v6;
}

- (HULocationEventEditorSummaryViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithTriggerBuilder_mode_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HULocationEventEditorSummaryViewController.m" lineNumber:56 description:{@"%s is unavailable; use %@ instead", "-[HULocationEventEditorSummaryViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HULocationEventEditorSummaryViewController)initWithFlow:(id)a3 stepIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[HULocationEventEditorSummaryItemManager alloc] initWithDelegate:self flow:v6];
  v12.receiver = self;
  v12.super_class = HULocationEventEditorSummaryViewController;
  v9 = [(HUItemTableViewController *)&v12 initWithItemManager:v8 tableViewStyle:1];
  v10 = v9;
  if (v9)
  {
    [(HULocationEventEditorSummaryViewController *)v9 setFlow:v6];
    [(HULocationEventEditorSummaryViewController *)v10 setStepIdentifier:v7];
  }

  return v10;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HULocationEventEditorSummaryViewController;
  [(HUItemTableViewController *)&v10 viewDidLoad];
  v3 = [(HULocationEventEditorSummaryViewController *)self flow];
  v4 = [(HULocationEventEditorSummaryViewController *)self stepIdentifier];
  v5 = [v3 shouldShowDoneButtonForStep:v4];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D751E0]);
    v7 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
    v8 = [v6 initWithTitle:v7 style:2 target:self action:sel__doneButtonPressed_];
    v9 = [(HULocationEventEditorSummaryViewController *)self navigationItem];
    [v9 setRightBarButtonItem:v8];
  }
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 userPickerModule];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = [(HUItemModuleController *)[HUPresenceUserPickerItemModuleController alloc] initWithModule:v4];
    userPickerModuleController = self->_userPickerModuleController;
    self->_userPickerModuleController = v8;

    [(HUPresenceUserPickerItemModuleController *)self->_userPickerModuleController setDelegate:self];
    v10 = [(HULocationEventEditorSummaryViewController *)self userPickerModuleController];
LABEL_5:
    v16 = v10;
    goto LABEL_7;
  }

  v11 = [(HUItemTableViewController *)self itemManager];
  v12 = [v11 conditionEditorModule];
  v13 = [v4 isEqual:v12];

  if (v13)
  {
    v14 = [[HUTriggerConditionEditorItemModuleController alloc] initWithModule:v4 delegate:self];
    conditionEditorModuleController = self->_conditionEditorModuleController;
    self->_conditionEditorModuleController = v14;

    v10 = [(HULocationEventEditorSummaryViewController *)self conditionEditorModuleController];
    goto LABEL_5;
  }

  v16 = 0;
LABEL_7:

  return v16;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 isInstructionsItem:v5];

  if ((v7 & 1) != 0 || (-[HUItemTableViewController itemManager](self, "itemManager"), v8 = objc_claimAutoreleasedReturnValue(), [v8 locationItem], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 == v5))
  {
    v10 = objc_opt_class();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = HULocationEventEditorSummaryViewController;
  [(HUItemTableViewController *)&v13 setupCell:v8 forItem:v9 indexPath:a5];
  v10 = [(HUItemTableViewController *)self itemManager];
  LODWORD(self) = [v10 isInstructionsItem:v9];

  if (self)
  {
    v11 = [HUListContentConfigurationUtilities instructionsConfigurationForItem:v9];
    [v8 setContentConfiguration:v11];
    v12 = [MEMORY[0x277D751C0] clearConfiguration];
    [v8 setBackgroundConfiguration:v12];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v15.receiver = self;
  v15.super_class = HULocationEventEditorSummaryViewController;
  v11 = a4;
  [(HUItemTableViewController *)&v15 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  v12 = [(HUItemTableViewController *)self itemManager:v15.receiver];
  v13 = [v12 locationItem];

  if (v13 == v11)
  {
    v14 = v10;
    [v14 setHideIcon:1];
    [v14 setValueColorFollowsTintColor:1];
  }
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3
{
  if (_MergedGlobals_4_5 != -1)
  {
    dispatch_once(&_MergedGlobals_4_5, &__block_literal_global_33_2);
  }

  v5 = qword_27C838050;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 displayedSectionIdentifierForSectionIndex:a3];

  LOBYTE(v6) = [v5 containsObject:v7];
  return v6;
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = HULocationEventEditorSummaryViewController;
  [(HUItemTableViewController *)&v21 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

  v10 = [(HUItemTableViewController *)self moduleControllerForItem:v9];

  if (!v10)
  {
    [v6 deselectRowAtIndexPath:v7 animated:1];
    v11 = [(HUItemTableViewController *)self itemManager];
    v12 = [v11 locationItem];

    if (v9 == v12)
    {
      v13 = [(HUItemTableViewController *)self itemManager];
      v14 = [v13 locationEventRegion];

      v15 = [HULocationTriggerRegionEditorViewController alloc];
      v16 = [(HUItemTableViewController *)self itemManager];
      v17 = [v16 home];
      v18 = [(HULocationTriggerRegionEditorViewController *)v15 initWithRegion:v14 home:v17 delegate:self];

      v19 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v18];
      [v19 setModalPresentationStyle:2];
      [v19 setModalInPresentation:1];
      v20 = [(UIViewController *)self hu_presentPreloadableViewController:v19 animated:1];
    }
  }
}

- (void)_doneButtonPressed:(id)a3
{
  v5 = [(HULocationEventEditorSummaryViewController *)self flow];
  v4 = [(HULocationEventEditorSummaryViewController *)self stepIdentifier];
  [v5 viewController:self didFinishStepWithIdentifier:v4];
}

- (void)regionEditor:(id)a3 didFinishWithRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D2C900] futureWithNoResult];
  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 canAddRegionToTriggerBuilder];

  if ((v10 & 1) == 0)
  {
    v11 = [v6 showLocationRegionInvalidAlert];

    v8 = v11;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__HULocationEventEditorSummaryViewController_regionEditor_didFinishWithRegion___block_invoke;
  v14[3] = &unk_277DB7E68;
  v14[4] = self;
  v15 = v7;
  v12 = v7;
  v13 = [v8 addSuccessBlock:v14];
}

uint64_t __79__HULocationEventEditorSummaryViewController_regionEditor_didFinishWithRegion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemManager];
  [v2 updateLocationEventWithRegion:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)resetSelectedLocationToHomeForPresenceUserPickerItemModuleController:(id)a3
{
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 home];
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 locationEventRegion];
  v9 = +[HULocationTriggerRegion homeRegionWithHome:eventType:](HULocationTriggerRegion, "homeRegionWithHome:eventType:", v5, [v7 eventType]);

  v8 = [(HUItemTableViewController *)self itemManager];
  [v8 updateLocationEventWithRegion:v9];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v12, 0x16u);
  }

  v9 = [MEMORY[0x277D148E8] sharedInstance];
  v10 = [v9 openURL:v7];

  return 0;
}

@end