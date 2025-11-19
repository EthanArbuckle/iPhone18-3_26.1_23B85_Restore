@interface HUPlaybackInfluencesViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (HUPlaybackInfluencesViewController)initWithAccessoryGroupItem:(id)a3;
- (HUPlaybackInfluencesViewController)initWithAccessorySettingItem:(id)a3;
- (HUPlaybackInfluencesViewController)initWithAccessorySettingItem:(id)a3 module:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
@end

@implementation HUPlaybackInfluencesViewController

- (HUPlaybackInfluencesViewController)initWithAccessoryGroupItem:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithAccessoryGroupItem_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUPlaybackInfluencesViewController.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HUPlaybackInfluencesViewController initWithAccessoryGroupItem:]", v6}];

  return 0;
}

- (HUPlaybackInfluencesViewController)initWithAccessorySettingItem:(id)a3
{
  v4 = a3;
  v5 = [[HUPlaybackInfluencesItemManager alloc] initWithDelegate:self settingItem:v4];

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

- (HUPlaybackInfluencesViewController)initWithAccessorySettingItem:(id)a3 module:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HUPlaybackInfluencesItemManager alloc] initWithDelegate:self module:v6 homeKitAccessorySettingItem:v7];

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

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v6 = a3;
  objc_opt_class();
  v9 = v6;
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

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v5 = [(HUPlaybackInfluencesViewController *)self playbackInfluencesItemManager];
  v7 = [v5 updateUseListeningHistorySetting:v4];

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

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = HUPlaybackInfluencesViewController;
  v4 = [(HUItemTableViewController *)&v11 tableView:a3 viewForFooterInSection:a4];
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

  v8 = [v7 messageTextView];
  v9 = [v8 textDragInteraction];
  [v9 setEnabled:1];

  return v5;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v16, 0x16u);
  }

  v9 = [(HUPlaybackInfluencesViewController *)self navigationController];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = self;
  }

  v12 = v11;

  v13 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:*MEMORY[0x277D376B0]];
  v14 = [v13 splashController];
  [v14 setDisplayDeviceType:6];

  [v13 setPresentingViewController:v12];
  [v13 present];

  return 0;
}

@end