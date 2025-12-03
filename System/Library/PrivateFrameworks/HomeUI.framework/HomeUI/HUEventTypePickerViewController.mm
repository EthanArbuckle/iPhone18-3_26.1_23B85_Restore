@interface HUEventTypePickerViewController
- (BOOL)shouldHideFooterBelowSection:(int64_t)section;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)section;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUEventTypePickerViewController)initWithFlow:(id)flow stepIdentifier:(id)identifier;
- (void)_cancel:(id)_cancel;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
@end

@implementation HUEventTypePickerViewController

- (HUEventTypePickerViewController)initWithFlow:(id)flow stepIdentifier:(id)identifier
{
  flowCopy = flow;
  identifierCopy = identifier;
  v8 = [HUEventTypePickerItemManager alloc];
  triggerBuilder = [flowCopy triggerBuilder];
  v10 = [(HUEventTypePickerItemManager *)v8 initWithTriggerBuilder:triggerBuilder delegate:self];

  v17.receiver = self;
  v17.super_class = HUEventTypePickerViewController;
  v11 = [(HUItemTableViewController *)&v17 initWithItemManager:v10 tableViewStyle:1];
  v12 = v11;
  if (v11)
  {
    [(HUEventTypePickerViewController *)v11 setFlow:flowCopy];
    [(HUEventTypePickerViewController *)v12 setStepIdentifier:identifierCopy];
    v13 = _HULocalizedStringWithDefaultValue(@"HUEventTypePickerTitle", @"HUEventTypePickerTitle", 1);
    [(HUEventTypePickerViewController *)v12 setTitle:v13];

    v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v12 action:sel__cancel_];
    navigationItem = [(HUEventTypePickerViewController *)v12 navigationItem];
    [navigationItem setLeftBarButtonItem:v14];
  }

  return v12;
}

- (void)_cancel:(id)_cancel
{
  flow = [(HUEventTypePickerViewController *)self flow];
  stepIdentifier = [(HUEventTypePickerViewController *)self stepIdentifier];
  [flow viewController:self didCancelStepWithIdentifier:stepIdentifier];
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  objc_opt_class();
  objc_opt_isKindOfClass();

  v5 = objc_opt_class();

  return v5;
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    latestResults = [itemCopy latestResults];
    v14 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    bOOLValue = [v14 BOOLValue];

    v16 = cellCopy;
    [v16 setDisabled:bOOLValue];
    [v16 setAccessoryType:bOOLValue ^ 1];
    if (bOOLValue)
    {
      v17 = 0.200000003;
    }

    else
    {
      v17 = 1.0;
    }

    [v16 setIconAlpha:v17];
    [v16 setTextAlpha:v17];
    [v16 setIconDisplayStyle:1];
  }

  v18.receiver = self;
  v18.super_class = HUEventTypePickerViewController;
  [(HUItemTableViewController *)&v18 updateCell:cellCopy forItem:itemCopy indexPath:pathCopy animated:animatedCopy];
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v5 = [itemManager displayedSectionIdentifierForSectionIndex:section];
  v6 = [v5 isEqualToString:@"HUEventTypePickerSectionIdentifierInstructions"];

  return v6;
}

- (BOOL)shouldHideFooterBelowSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v5 = [itemManager displayedSectionIdentifierForSectionIndex:section];
  v6 = [v5 isEqualToString:@"HUEventTypePickerSectionIdentifierInstructions"];

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v27.receiver = self;
  v27.super_class = HUEventTypePickerViewController;
  [(HUItemTableViewController *)&v27 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  latestResults = [v9 latestResults];
  v11 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue || (-[HUItemTableViewController itemManager](self, "itemManager"), v13 = objc_claimAutoreleasedReturnValue(), [v13 instructionsItem], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v9 == v14))
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
  }

  else
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    timerEventItem = [itemManager2 timerEventItem];

    if (v9 == timerEventItem)
    {
      v25 = 3;
      goto LABEL_14;
    }

    itemManager3 = [(HUItemTableViewController *)self itemManager];
    leavingLocationEventItem = [itemManager3 leavingLocationEventItem];

    if (v9 == leavingLocationEventItem)
    {
      v25 = 2;
      goto LABEL_14;
    }

    itemManager4 = [(HUItemTableViewController *)self itemManager];
    arrivingAtLocationEventItem = [itemManager4 arrivingAtLocationEventItem];

    if (v9 == arrivingAtLocationEventItem)
    {
      v25 = 1;
      goto LABEL_14;
    }

    itemManager5 = [(HUItemTableViewController *)self itemManager];
    characteristicEventItem = [itemManager5 characteristicEventItem];

    if (v9 == characteristicEventItem)
    {
      v25 = 4;
      goto LABEL_14;
    }

    itemManager6 = [(HUItemTableViewController *)self itemManager];
    alarmEventItem = [itemManager6 alarmEventItem];

    if (v9 == alarmEventItem)
    {
      v25 = 5;
LABEL_14:
      flow = [(HUEventTypePickerViewController *)self flow];
      [flow viewController:self didSelectEventType:v25];
    }
  }
}

@end