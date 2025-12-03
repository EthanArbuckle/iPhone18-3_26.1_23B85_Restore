@interface HUNetworkConfigurationMismatchViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUNetworkConfigurationMismatchViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (HUNetworkConfigurationMismatchViewController)initWithProfiles:(id)profiles;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
@end

@implementation HUNetworkConfigurationMismatchViewController

- (HUNetworkConfigurationMismatchViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithProfiles_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUNetworkConfigurationMismatchViewController.m" lineNumber:27 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkConfigurationMismatchViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUNetworkConfigurationMismatchViewController)initWithProfiles:(id)profiles
{
  profilesCopy = profiles;
  v5 = [[HUNetworkConfigurationMismatchItemManager alloc] initWithProfiles:profilesCopy delegate:self];

  v8.receiver = self;
  v8.super_class = HUNetworkConfigurationMismatchViewController;
  v6 = [(HUItemTableViewController *)&v8 initWithItemManager:v5 tableViewStyle:1];

  return v6;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v8 = [itemManager isItemNetworkConfigurationItem:itemCopy];

  if (v8)
  {
    v9 = objc_opt_class();
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUNetworkConfigurationMismatchViewController.m" lineNumber:43 description:{@"Couldn't find a cell class for item: %@", itemCopy}];

    v9 = 0;
  }

  return v9;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  v11.receiver = self;
  v11.super_class = HUNetworkConfigurationMismatchViewController;
  itemCopy = item;
  [(HUItemTableViewController *)&v11 setupCell:cellCopy forItem:itemCopy indexPath:path];
  v10 = [(HUItemTableViewController *)self itemManager:v11.receiver];
  LODWORD(self) = [v10 isItemNetworkConfigurationItem:itemCopy];

  if (self)
  {
    [cellCopy setHideIcon:1];
  }
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v23.receiver = self;
  v23.super_class = HUNetworkConfigurationMismatchViewController;
  [(HUItemTableViewController *)&v23 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  LODWORD(path) = [itemManager isItemNetworkConfigurationItem:itemCopy];

  if (path)
  {
    v13 = objc_opt_class();
    v14 = itemCopy;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v14;
      if (v15)
      {
        goto LABEL_9;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v18 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v13, objc_opt_class()}];
    }

    v16 = 0;
LABEL_9:

    v19 = cellCopy;
    accessory = [v16 accessory];
    room = [accessory room];
    name = [room name];
    [v19 setDescriptionText:name];
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  v11 = [itemManager2 isItemNetworkConfigurationItem:v9];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HUNetworkConfigurationMismatchViewController;
    v12 = [(HUItemTableViewController *)&v14 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
  }

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = HUNetworkConfigurationMismatchViewController;
  pathCopy = path;
  viewCopy = view;
  [(HUItemTableViewController *)&v7 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:{1, v7.receiver, v7.super_class}];
}

@end