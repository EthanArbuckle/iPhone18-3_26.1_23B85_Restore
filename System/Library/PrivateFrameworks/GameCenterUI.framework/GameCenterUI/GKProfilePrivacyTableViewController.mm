@interface GKProfilePrivacyTableViewController
- (GKProfilePrivacyTableViewControllerDelegate)delegate;
- (id)tableFooterForPrivacy:(int)privacy;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)titleForPrivacy:(int)privacy;
- (void)setIsSendingRequest:(BOOL)request;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)updateCell:(id)cell withCheckmark:(BOOL)checkmark;
- (void)updateTableViewLayoutMargins;
- (void)viewDidLoad;
@end

@implementation GKProfilePrivacyTableViewController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = GKProfilePrivacyTableViewController;
  [(GKProfilePrivacyTableViewController *)&v10 viewDidLoad];
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  [(GKProfilePrivacyTableViewController *)self setTitle:v4];

  [(GKProfilePrivacyTableViewController *)self setIsSendingRequest:0];
  [(GKProfilePrivacyTableViewController *)self updateTableViewLayoutMargins];
  objc_initWeak(&location, self);
  proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  profileServicePrivate = [proxyForLocalPlayer profileServicePrivate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__GKProfilePrivacyTableViewController_viewDidLoad__block_invoke;
  v7[3] = &unk_27966A5E8;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [profileServicePrivate getProfilePrivacyWithHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __50__GKProfilePrivacyTableViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCurrentPrivacySettings:a2];
  [WeakRetained setInitialPrivacySettings:{objc_msgSend(*(v3 + 32), "currentPrivacySettings")}];
  v4 = [MEMORY[0x277CBEB18] array];
  [WeakRetained setAvailblePrivacySettings:v4];

  v5 = [MEMORY[0x277D0C138] local];
  LOBYTE(v3) = [v5 isUnderage];

  if (v3)
  {
    if (![WeakRetained currentPrivacySettings])
    {
      [WeakRetained setCurrentPrivacySettings:2];
    }
  }

  else
  {
    v6 = [WeakRetained availblePrivacySettings];
    [v6 addObject:&unk_286188D60];
  }

  v7 = [WeakRetained availblePrivacySettings];
  [v7 addObject:&unk_286188D78];

  v8 = [WeakRetained availblePrivacySettings];
  [v8 addObject:&unk_286188D90];

  v9 = [WeakRetained tableView];
  [v9 reloadData];
}

- (void)updateTableViewLayoutMargins
{
  traitCollection = [(GKProfilePrivacyTableViewController *)self traitCollection];
  if ([traitCollection verticalSizeClass] == 1)
  {

    if (!_os_feature_enabled_impl())
    {
      goto LABEL_6;
    }
  }

  else
  {
    traitCollection2 = [(GKProfilePrivacyTableViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      if (userInterfaceIdiom == 1)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    }
  }

  v6 = objc_opt_new();
  view = [v6 view];
  v8 = PSShouldInsetListView();

  if (v8)
  {
LABEL_6:
    v9 = 20.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 20.0;
    goto LABEL_9;
  }

LABEL_8:
  v11 = *MEMORY[0x277D768C8];
  v9 = *(MEMORY[0x277D768C8] + 8);
  v10 = *(MEMORY[0x277D768C8] + 16);
  v12 = *(MEMORY[0x277D768C8] + 24);
LABEL_9:
  tableView = [(GKProfilePrivacyTableViewController *)self tableView];
  [tableView _setSectionContentInset:{v11, v9, v10, v12}];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = GKProfilePrivacyTableViewController;
  [(GKProfilePrivacyTableViewController *)&v4 traitCollectionDidChange:change];
  [(GKProfilePrivacyTableViewController *)self updateTableViewLayoutMargins];
}

- (id)titleForPrivacy:(int)privacy
{
  if (privacy > 2)
  {
    v4 = &stru_28612D290;
  }

  else
  {
    v3 = GKGameCenterUIFrameworkBundle();
    v4 = GKGetLocalizedStringFromTableInBundle();
  }

  return v4;
}

- (id)tableFooterForPrivacy:(int)privacy
{
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  return v4;
}

- (void)setIsSendingRequest:(BOOL)request
{
  requestCopy = request;
  self->_isSendingRequest = request;
  navigationController = [(GKProfilePrivacyTableViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setUserInteractionEnabled:!requestCopy];

  navigationController2 = [(GKProfilePrivacyTableViewController *)self navigationController];
  LOBYTE(navigationController) = objc_opt_respondsToSelector();

  if (navigationController)
  {
    isSendingRequest = self->_isSendingRequest;
    navigationController3 = [(GKProfilePrivacyTableViewController *)self navigationController];
    interactivePopGestureRecognizer = [navigationController3 interactivePopGestureRecognizer];
    [interactivePopGestureRecognizer setEnabled:!isSendingRequest];
  }
}

- (void)updateCell:(id)cell withCheckmark:(BOOL)checkmark
{
  checkmarkCopy = checkmark;
  cellCopy = cell;
  v11 = cellCopy;
  if (checkmarkCopy)
  {
    [cellCopy setAccessoryType:3];
    [v11 setAccessoryView:0];
    v6 = v11;
  }

  else
  {
    [cellCopy setAccessoryType:0];
    v7 = objc_opt_new();
    defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics scaledValueForValue:20.0];
    v10 = v9;

    [v7 setFrame:{0.0, 0.0, v10, 20.0}];
    [v11 setAccessoryView:v7];

    v6 = v7;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"GKProfilePrivacyTableCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"GKProfilePrivacyTableCell"];
    detailTextLabel = [v7 detailTextLabel];
    [detailTextLabel setNumberOfLines:0];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    detailTextLabel2 = [v7 detailTextLabel];
    [detailTextLabel2 setTextColor:secondaryLabelColor];
  }

  v11 = -[NSMutableArray objectAtIndexedSubscript:](self->_availblePrivacySettings, "objectAtIndexedSubscript:", [pathCopy row]);
  intValue = [v11 intValue];

  v13 = [(GKProfilePrivacyTableViewController *)self titleForPrivacy:intValue];
  textLabel = [v7 textLabel];
  [textLabel setText:v13];

  v15 = [(GKProfilePrivacyTableViewController *)self tableFooterForPrivacy:intValue];
  detailTextLabel3 = [v7 detailTextLabel];
  [detailTextLabel3 setText:v15];

  [(GKProfilePrivacyTableViewController *)self updateCell:v7 withCheckmark:[(GKProfilePrivacyTableViewController *)self currentPrivacySettings]== intValue];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v33 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_availblePrivacySettings, "objectAtIndexedSubscript:", [pathCopy row]);
  intValue = [v6 intValue];

  if (intValue == [(GKProfilePrivacyTableViewController *)self currentPrivacySettings])
  {
    tableView = [(GKProfilePrivacyTableViewController *)self tableView];
    [tableView deselectRowAtIndexPath:pathCopy animated:0];
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    tableView2 = [(GKProfilePrivacyTableViewController *)self tableView];
    visibleCells = [tableView2 visibleCells];

    v11 = [visibleCells countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        v14 = 0;
        do
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(visibleCells);
          }

          [(GKProfilePrivacyTableViewController *)self updateCell:*(*(&v28 + 1) + 8 * v14++) withCheckmark:0];
        }

        while (v12 != v14);
        v12 = [visibleCells countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    traitCollection = [(GKProfilePrivacyTableViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
    {
      v17 = 101;
    }

    else
    {
      v17 = 100;
    }

    tableView3 = [(GKProfilePrivacyTableViewController *)self tableView];
    v19 = [tableView3 cellForRowAtIndexPath:pathCopy];

    v20 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:v17];
    [v20 startAnimating];
    defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics scaledValueForValue:20.0];
    v23 = v22;

    [v20 frame];
    [v20 setFrame:{0.0, 0.0, v23}];
    [v19 setAccessoryView:v20];
    [v19 setAccessoryType:0];
    [(GKProfilePrivacyTableViewController *)self setIsSendingRequest:1];
    proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
    profileServicePrivate = [proxyForLocalPlayer profileServicePrivate];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __73__GKProfilePrivacyTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v26[3] = &unk_27966A610;
    v26[4] = self;
    v27 = intValue;
    [profileServicePrivate setProfilePrivacy:intValue handler:v26];
  }
}

void __73__GKProfilePrivacyTableViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setIsSendingRequest:0];
  if (a2)
  {
    v13 = [*(a1 + 32) tableView];
    [v13 reloadData];
  }

  else
  {
    v4 = [MEMORY[0x277D0C1F8] reporter];
    v5 = *MEMORY[0x277D0BEC8];
    v6 = *MEMORY[0x277D0BF50];
    v14[0] = *MEMORY[0x277D0BF58];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "initialPrivacySettings")}];
    v15[0] = v7;
    v14[1] = *MEMORY[0x277D0BF60];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "currentPrivacySettings")}];
    v15[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    [v4 reportEvent:v5 type:v6 payload:v9];

    [*(a1 + 32) setCurrentPrivacySettings:*(a1 + 40)];
    v10 = [*(a1 + 32) tableView];
    [v10 reloadData];

    v11 = [*(a1 + 32) delegate];

    if (v11)
    {
      v12 = [*(a1 + 32) delegate];
      [v12 didUpdateProfilePrivacy:0];
    }
  }
}

- (GKProfilePrivacyTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end