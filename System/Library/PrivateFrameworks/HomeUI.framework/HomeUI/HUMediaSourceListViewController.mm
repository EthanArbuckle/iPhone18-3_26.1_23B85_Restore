@interface HUMediaSourceListViewController
- (HUMediaSourceListDelegate)delegate;
- (id)errorAlertControllerForResolveError:(id)error;
- (id)initForMediaProfileContainers:(id)containers forTarget:(unint64_t)target;
- (void)dismissViewController;
- (void)mediaPickerDidCancel;
- (void)mediaPickerDidPickPlaybackArchive:(id)archive;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUMediaSourceListViewController

- (id)initForMediaProfileContainers:(id)containers forTarget:(unint64_t)target
{
  containersCopy = containers;
  v7 = [[HUMediaSourceListItemManager alloc] initForMediaProfileContainers:containersCopy delegate:self forTarget:target];

  v19.receiver = self;
  v19.super_class = HUMediaSourceListViewController;
  v8 = [(HUItemTableViewController *)&v19 initWithItemManager:v7 tableViewStyle:0];
  if (v8)
  {
    v9 = HFLocalizedString();
    navigationItem = [(HUMediaSourceListViewController *)v8 navigationItem];
    [navigationItem setTitle:v9];

    v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v8 action:sel_dismissViewController];
    navigationItem2 = [(HUMediaSourceListViewController *)v8 navigationItem];
    [navigationItem2 setLeftBarButtonItem:v11];

    tableView = [(HUMediaSourceListViewController *)v8 tableView];
    [tableView setSectionHeaderTopPadding:0.0];

    tableView2 = [(HUMediaSourceListViewController *)v8 tableView];
    separatorColor = [tableView2 separatorColor];

    v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 0.0, 0.5}];
    [v16 setBackgroundColor:separatorColor];
    tableView3 = [(HUMediaSourceListViewController *)v8 tableView];
    [tableView3 setTableHeaderView:v16];
  }

  return v8;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = HUMediaSourceListViewController;
  [(HUItemTableViewController *)&v6 viewWillAppear:appear];
  navigationController = [(HUMediaSourceListViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setPrefersLargeTitles:1];
}

- (void)dismissViewController
{
  navigationController = [(HUMediaSourceListViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  [cellCopy setIconDisplayStyle:1];
  contentMetrics = [cellCopy contentMetrics];
  [contentMetrics setIconSize:{32.0, 32.0}];

  [cellCopy setHideDescriptionIcon:1];
  [cellCopy setSeparatorInsetLinesUpWithText:1];
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  v11.receiver = self;
  v11.super_class = HUMediaSourceListViewController;
  [(HUItemTableViewController *)&v11 updateCell:cellCopy forItem:item indexPath:path animated:animatedCopy];
  [cellCopy updateUIWithAnimation:animatedCopy];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v38 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = HUMediaSourceListViewController;
  pathCopy = path;
  viewCopy = view;
  [(HUItemTableViewController *)&v35 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:{1, v35.receiver, v35.super_class}];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  objc_opt_class();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    if ([v12 success])
    {
      pickerViewController = [v12 pickerViewController];
      if (pickerViewController)
      {
        v14 = pickerViewController;
        [v12 setDelegate:self];
        if ([v12 continuousPicker])
        {
          view = [(HUMediaSourceListViewController *)self view];
          [view frame];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          view2 = [v14 view];
          [view2 setFrame:{v17, v19, v21, v23}];

          navigationController = [(HUMediaSourceListViewController *)self navigationController];
          [navigationController pushViewController:v14 animated:1];

LABEL_24:
          goto LABEL_25;
        }

        [v14 setModalPresentationStyle:2];
        view3 = [(HUMediaSourceListViewController *)self view];
        [view3 frame];
        [v14 setPreferredContentSize:{v32, v33}];

LABEL_18:
        [(HUMediaSourceListViewController *)self presentViewController:v14 animated:1 completion:0];
        goto LABEL_24;
      }

      v28 = HFLogForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v12;
        _os_log_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_DEFAULT, "Media source %@ resolved successfully, but no picker view controller", buf, 0xCu);
      }

      resolveError = [v12 resolveError];
      v30 = [(HUMediaSourceListViewController *)self errorAlertControllerForResolveError:resolveError];

      if (v30)
      {
        [(HUMediaSourceListViewController *)self presentViewController:v30 animated:1 completion:0];
      }

      else
      {
        v34 = HFLogForCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v37 = v12;
          _os_log_impl(&dword_20CEB6000, v34, OS_LOG_TYPE_DEFAULT, "Media source %@ failed to resolve, but no alert view controller for the error", buf, 0xCu);
        }
      }
    }

    else
    {
      resolveError2 = [v12 resolveError];
      v14 = [(HUMediaSourceListViewController *)self errorAlertControllerForResolveError:resolveError2];

      if (v14)
      {
        goto LABEL_18;
      }

      v27 = HFLogForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v12;
        _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "Media source %@ failed to resolve, but no alert view controller for the error", buf, 0xCu);
      }
    }

    v14 = 0;
    goto LABEL_24;
  }

LABEL_25:
}

- (id)errorAlertControllerForResolveError:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (errorCopy)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = errorCopy;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Media source failed to resolve, show alert view controller for parameters %@", buf, 0xCu);
    }

    objc_opt_class();
    v5 = [errorCopy objectForKeyedSubscript:@"HUMediaPickerUnavailablePromptActionTitleKey"];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [errorCopy objectForKeyedSubscript:@"HUMediaPickerUnavailablePromptMessageKey"];
    if (!(v7 | v8))
    {
      v7 = _HULocalizedStringWithDefaultValue(@"HUUnknownError", @"HUUnknownError", 1);
      v8 = HFLocalizedString();
    }

    v9 = v8;
    v10 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v8 preferredStyle:1];
    v11 = MEMORY[0x277D750F8];
    v12 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
    v13 = [v11 actionWithTitle:v12 style:0 handler:0];
    [v10 addAction:v13];

    objc_opt_class();
    v14 = [errorCopy objectForKeyedSubscript:@"HUMediaPickerUnavailablePromptActionTitleKey"];
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    objc_opt_class();
    v17 = [errorCopy objectForKeyedSubscript:@"HUMediaPickerUnavailablePromptActionURLKey"];
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if (v16 && v19)
    {
      v20 = MEMORY[0x277D750F8];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __71__HUMediaSourceListViewController_errorAlertControllerForResolveError___block_invoke;
      v23[3] = &unk_277DB7600;
      v24 = v19;
      v21 = [v20 actionWithTitle:v16 style:0 handler:v23];
      [v10 addAction:v21];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __71__HUMediaSourceListViewController_errorAlertControllerForResolveError___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D148E8] sharedInstance];
  v2 = [v3 openURL:*(a1 + 32)];
}

- (void)mediaPickerDidPickPlaybackArchive:(id)archive
{
  archiveCopy = archive;
  [(HUMediaSourceListViewController *)self presentedViewController];

  delegate = [(HUMediaSourceListViewController *)self delegate];
  [delegate mediaPickerDidPickPlaybackArchive:archiveCopy];
}

- (void)mediaPickerDidCancel
{
  presentedViewController = [(HUMediaSourceListViewController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(HUMediaSourceListViewController *)self presentedViewController];
    [presentedViewController2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (HUMediaSourceListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end