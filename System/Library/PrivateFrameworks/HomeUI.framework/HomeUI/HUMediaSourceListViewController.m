@interface HUMediaSourceListViewController
- (HUMediaSourceListDelegate)delegate;
- (id)errorAlertControllerForResolveError:(id)a3;
- (id)initForMediaProfileContainers:(id)a3 forTarget:(unint64_t)a4;
- (void)dismissViewController;
- (void)mediaPickerDidCancel;
- (void)mediaPickerDidPickPlaybackArchive:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HUMediaSourceListViewController

- (id)initForMediaProfileContainers:(id)a3 forTarget:(unint64_t)a4
{
  v6 = a3;
  v7 = [[HUMediaSourceListItemManager alloc] initForMediaProfileContainers:v6 delegate:self forTarget:a4];

  v19.receiver = self;
  v19.super_class = HUMediaSourceListViewController;
  v8 = [(HUItemTableViewController *)&v19 initWithItemManager:v7 tableViewStyle:0];
  if (v8)
  {
    v9 = HFLocalizedString();
    v10 = [(HUMediaSourceListViewController *)v8 navigationItem];
    [v10 setTitle:v9];

    v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v8 action:sel_dismissViewController];
    v12 = [(HUMediaSourceListViewController *)v8 navigationItem];
    [v12 setLeftBarButtonItem:v11];

    v13 = [(HUMediaSourceListViewController *)v8 tableView];
    [v13 setSectionHeaderTopPadding:0.0];

    v14 = [(HUMediaSourceListViewController *)v8 tableView];
    v15 = [v14 separatorColor];

    v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 0.0, 0.5}];
    [v16 setBackgroundColor:v15];
    v17 = [(HUMediaSourceListViewController *)v8 tableView];
    [v17 setTableHeaderView:v16];
  }

  return v8;
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = HUMediaSourceListViewController;
  [(HUItemTableViewController *)&v6 viewWillAppear:a3];
  v4 = [(HUMediaSourceListViewController *)self navigationController];
  v5 = [v4 navigationBar];
  [v5 setPrefersLargeTitles:1];
}

- (void)dismissViewController
{
  v2 = [(HUMediaSourceListViewController *)self navigationController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v6 = a3;
  [v6 setIconDisplayStyle:1];
  v5 = [v6 contentMetrics];
  [v5 setIconSize:{32.0, 32.0}];

  [v6 setHideDescriptionIcon:1];
  [v6 setSeparatorInsetLinesUpWithText:1];
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11.receiver = self;
  v11.super_class = HUMediaSourceListViewController;
  [(HUItemTableViewController *)&v11 updateCell:v10 forItem:a4 indexPath:a5 animated:v6];
  [v10 updateUIWithAnimation:v6];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = HUMediaSourceListViewController;
  v6 = a4;
  v7 = a3;
  [(HUItemTableViewController *)&v35 tableView:v7 didSelectRowAtIndexPath:v6];
  [v7 deselectRowAtIndexPath:v6 animated:{1, v35.receiver, v35.super_class}];

  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v6];

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
      v13 = [v12 pickerViewController];
      if (v13)
      {
        v14 = v13;
        [v12 setDelegate:self];
        if ([v12 continuousPicker])
        {
          v15 = [(HUMediaSourceListViewController *)self view];
          [v15 frame];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v24 = [v14 view];
          [v24 setFrame:{v17, v19, v21, v23}];

          v25 = [(HUMediaSourceListViewController *)self navigationController];
          [v25 pushViewController:v14 animated:1];

LABEL_24:
          goto LABEL_25;
        }

        [v14 setModalPresentationStyle:2];
        v31 = [(HUMediaSourceListViewController *)self view];
        [v31 frame];
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

      v29 = [v12 resolveError];
      v30 = [(HUMediaSourceListViewController *)self errorAlertControllerForResolveError:v29];

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
      v26 = [v12 resolveError];
      v14 = [(HUMediaSourceListViewController *)self errorAlertControllerForResolveError:v26];

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

- (id)errorAlertControllerForResolveError:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v3;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Media source failed to resolve, show alert view controller for parameters %@", buf, 0xCu);
    }

    objc_opt_class();
    v5 = [v3 objectForKeyedSubscript:@"HUMediaPickerUnavailablePromptActionTitleKey"];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [v3 objectForKeyedSubscript:@"HUMediaPickerUnavailablePromptMessageKey"];
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
    v14 = [v3 objectForKeyedSubscript:@"HUMediaPickerUnavailablePromptActionTitleKey"];
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
    v17 = [v3 objectForKeyedSubscript:@"HUMediaPickerUnavailablePromptActionURLKey"];
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

- (void)mediaPickerDidPickPlaybackArchive:(id)a3
{
  v4 = a3;
  [(HUMediaSourceListViewController *)self presentedViewController];

  v5 = [(HUMediaSourceListViewController *)self delegate];
  [v5 mediaPickerDidPickPlaybackArchive:v4];
}

- (void)mediaPickerDidCancel
{
  v3 = [(HUMediaSourceListViewController *)self presentedViewController];

  if (v3)
  {
    v4 = [(HUMediaSourceListViewController *)self presentedViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (HUMediaSourceListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end