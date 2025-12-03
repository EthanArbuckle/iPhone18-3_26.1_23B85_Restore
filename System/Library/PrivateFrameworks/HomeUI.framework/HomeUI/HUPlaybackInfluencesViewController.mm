@interface HUPlaybackInfluencesViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HUPlaybackInfluencesViewController)initWithAccessoryGroupItem:(id)item;
- (HUPlaybackInfluencesViewController)initWithAccessorySettingItem:(id)item;
- (HUPlaybackInfluencesViewController)initWithAccessorySettingItem:(id)item module:(id)module;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
@end

@implementation HUPlaybackInfluencesViewController

- (HUPlaybackInfluencesViewController)initWithAccessoryGroupItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithAccessoryGroupItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUPlaybackInfluencesViewController.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HUPlaybackInfluencesViewController initWithAccessoryGroupItem:]", v6}];

  return 0;
}

- (HUPlaybackInfluencesViewController)initWithAccessorySettingItem:(id)item
{
  itemCopy = item;
  v5 = [[HUPlaybackInfluencesItemManager alloc] initWithDelegate:self settingItem:itemCopy];

  v9.receiver = self;
  v9.super_class = HUPlaybackInfluencesViewController;
  v6 = [(HUItemTableViewController *)&v9 initWithItemManager:v5 tableViewStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playbackInfluencesItemManager, v5);
  }

  return v7;
}

- (HUPlaybackInfluencesViewController)initWithAccessorySettingItem:(id)item module:(id)module
{
  moduleCopy = module;
  itemCopy = item;
  v8 = [[HUPlaybackInfluencesItemManager alloc] initWithDelegate:self module:moduleCopy homeKitAccessorySettingItem:itemCopy];

  v12.receiver = self;
  v12.super_class = HUPlaybackInfluencesViewController;
  v9 = [(HUItemTableViewController *)&v12 initWithItemManager:v8 tableViewStyle:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_playbackInfluencesItemManager, v8);
  }

  return v10;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  v9 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 setDelegate:self];
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  playbackInfluencesItemManager = [(HUPlaybackInfluencesViewController *)self playbackInfluencesItemManager];
  v7 = [playbackInfluencesItemManager updateUseListeningHistorySetting:onCopy];

  v6 = [v7 addFailureBlock:&__block_literal_global_122];
}

void __59__HUPlaybackInfluencesViewController_switchCell_didTurnOn___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 na_isCancelledError];
  v4 = [MEMORY[0x277D14640] sharedHandler];
  v5 = v4;
  if (v3)
  {
    [v4 logError:v2 operationDescription:@"Updating playback influences setting failed."];
  }

  else
  {
    [v4 handleError:v2];
  }
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v11.receiver = self;
  v11.super_class = HUPlaybackInfluencesViewController;
  v4 = [(HUItemTableViewController *)&v11 tableView:view viewForFooterInSection:section];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  messageTextView = [v7 messageTextView];
  textDragInteraction = [messageTextView textDragInteraction];
  [textDragInteraction setEnabled:1];

  return v5;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v20 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    selfCopy = self;
    v18 = 2112;
    v19 = lCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v16, 0x16u);
  }

  navigationController = [(HUPlaybackInfluencesViewController *)self navigationController];
  v10 = navigationController;
  if (navigationController)
  {
    selfCopy2 = navigationController;
  }

  else
  {
    selfCopy2 = self;
  }

  v12 = selfCopy2;

  v13 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:*MEMORY[0x277D376B0]];
  splashController = [v13 splashController];
  [splashController setDisplayDeviceType:6];

  [v13 setPresentingViewController:v12];
  [v13 present];

  return 0;
}

@end