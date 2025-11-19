@interface CKAppManagerViewController
- (BOOL)_pluginIsHidden:(id)a3;
- (BOOL)_pluginIsSystemApp:(id)a3;
- (BOOL)allowEnablingDisabledApps;
- (BOOL)hasAppStore;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (BOOL)togglePluginAtIndex:(unint64_t)a3 enabled:(BOOL)a4;
- (CKAppManagerViewControllerDelegate)delegate;
- (NSArray)appContainedPlugins;
- (NSArray)deletableIMessageApps;
- (NSArray)plugins;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)getStickersOnAppStoreTableViewCell;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)appCell:(id)a3 wasToggledOn:(BOOL)a4;
- (void)doneButtonTapped:(id)a3;
- (void)reloadPluginsImmediately;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)updateEditDoneButton;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CKAppManagerViewController

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CKAppManagerViewController;
  [(CKAppManagerViewController *)&v5 viewDidLayoutSubviews];
  tableView = self->_tableView;
  v4 = [(CKAppManagerViewController *)self view];
  [v4 bounds];
  [(UITableView *)tableView setFrame:?];
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = CKAppManagerViewController;
  [(CKAppManagerViewController *)&v22 viewDidLoad];
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"MANAGE_STICKER_APPS" value:&stru_1F04268F8 table:@"ChatKit"];
  [(CKAppManagerViewController *)self setTitle:v4];

  v5 = [(CKAppManagerViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonTapped_];
  dismissButton = self->_dismissButton;
  self->_dismissButton = v14;

  v16 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:2 style:{v7, v9, v11, v13}];
  tableView = self->_tableView;
  self->_tableView = v16;

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setCellLayoutMarginsFollowReadableWidth:1];
  v18 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(UITableView *)self->_tableView setTableFooterView:v18];

  [(UITableView *)self->_tableView _setAllowsReorderingWhenNotEditing:1];
  [v5 addSubview:self->_tableView];
  v19 = self->_tableView;
  v20 = objc_opt_class();
  v21 = +[CKAppManagerAppTableViewCell reuseIdentifier];
  [(UITableView *)v19 registerClass:v20 forCellReuseIdentifier:v21];

  [(UITableView *)self->_tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"AppManagerSectionHeaderReuseIdentifier"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"AppManagerSectionFooterReuseIdentifier"];
  [(CKAppManagerViewController *)self setDefinesPresentationContext:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKAppManagerViewController;
  [(CKAppManagerViewController *)&v4 viewWillAppear:a3];
  [(CKAppManagerViewController *)self updateEditDoneButton];
  [(CKAppManagerViewController *)self reloadPluginsImmediately];
  [(UITableView *)self->_tableView reloadData];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKAppManagerViewController;
  [(CKAppManagerViewController *)&v4 viewDidDisappear:a3];
  [(CKAppManagerViewController *)self setEditing:0];
  [(CKAppManagerViewController *)self reloadPluginsImmediately];
  [(UITableView *)self->_tableView reloadData];
}

- (void)doneButtonTapped:(id)a3
{
  v4 = [(CKAppManagerViewController *)self delegate];
  [v4 appManagerViewControllerDidFinish:self];
}

- (void)updateEditDoneButton
{
  if (([(CKAppManagerViewController *)self isEditing]& 1) != 0)
  {
    dismissButton = 0;
  }

  else
  {
    dismissButton = self->_dismissButton;
  }

  v4 = [(CKAppManagerViewController *)self navigationItem];
  [v4 setRightBarButtonItem:dismissButton];

  v5 = [(CKAppManagerViewController *)self editButtonItem];
  v6 = [(CKAppManagerViewController *)self navigationItem];
  [v6 setLeftBarButtonItem:v5];

  v7 = [(CKAppManagerViewController *)self editButtonItem];
  [v7 setEnabled:{-[CKAppManagerViewController _hasPluginsToHideOrDelete](self, "_hasPluginsToHideOrDelete")}];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(CKAppManagerViewController *)self isEditing]!= a3)
  {
    v16.receiver = self;
    v16.super_class = CKAppManagerViewController;
    [(CKAppManagerViewController *)&v16 setEditing:v5 animated:v4];
    [(UITableView *)self->_tableView setEditing:v5 animated:1];
    if (v5)
    {
      dismissButton = 0;
    }

    else
    {
      dismissButton = self->_dismissButton;
    }

    v8 = [(CKAppManagerViewController *)self navigationItem];
    [v8 setRightBarButtonItem:dismissButton];

    [(UITableView *)self->_tableView beginUpdates];
    v9 = [(CKAppManagerViewController *)self hasAppStore];
    tableView = self->_tableView;
    if (v9)
    {
      v11 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, 2}];
      [(UITableView *)tableView reloadSections:v11 withRowAnimation:100];
    }

    else
    {
      v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
      [(UITableView *)tableView reloadSections:v12 withRowAnimation:0];

      v13 = self->_tableView;
      v11 = [MEMORY[0x1E696AC90] indexSetWithIndex:1];
      if (v5)
      {
        [(UITableView *)v13 insertSections:v11 withRowAnimation:0];
      }

      else
      {
        [(UITableView *)v13 deleteSections:v11 withRowAnimation:0];
      }
    }

    [(UITableView *)self->_tableView endUpdates];
    v14 = [(UITableView *)self->_tableView indexPathsForVisibleRows];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__CKAppManagerViewController_setEditing_animated___block_invoke;
    v15[3] = &unk_1E72F42A8;
    v15[4] = self;
    [v14 enumerateObjectsUsingBlock:v15];

    [(UITableView *)self->_tableView _setAllowsReorderingWhenNotEditing:[(CKAppManagerViewController *)self isEditing]^ 1];
  }
}

void __50__CKAppManagerViewController_setEditing_animated___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(a1 + 32) + 992) cellForRowAtIndexPath:?];
  if (([*(a1 + 32) isEditing] & 1) != 0 || objc_msgSend(v5, "section"))
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) tableView:*(*(a1 + 32) + 992) canMoveRowAtIndexPath:v5];
  }

  [v3 setShowsReorderControl:v4];
}

- (NSArray)plugins
{
  plugins = self->_plugins;
  if (!plugins)
  {
    v4 = [(CKAppManagerViewController *)self balloonPluginManager];
    v5 = [v4 orderedCombinedStickerApps];
    v6 = [v5 mutableCopy];

    [(NSArray *)v6 removeLastObject];
    v7 = self->_plugins;
    self->_plugins = v6;

    plugins = self->_plugins;
  }

  return plugins;
}

- (NSArray)deletableIMessageApps
{
  deletableIMessageApps = self->_deletableIMessageApps;
  if (!deletableIMessageApps)
  {
    v4 = [(CKAppManagerViewController *)self balloonPluginManager];
    v5 = [v4 allOrderedCombinedStickerApps];
    v6 = [v5 mutableCopy];

    [v6 removeLastObject];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__CKAppManagerViewController_deletableIMessageApps__block_invoke;
    v10[3] = &unk_1E72F0A88;
    v10[4] = self;
    v7 = [v6 __imArrayByFilteringWithBlock:v10];
    v8 = self->_deletableIMessageApps;
    self->_deletableIMessageApps = v7;

    deletableIMessageApps = self->_deletableIMessageApps;
  }

  return deletableIMessageApps;
}

uint64_t __51__CKAppManagerViewController_deletableIMessageApps__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _pluginIsStandaloneApp:v3])
  {
    v4 = [*(a1 + 32) _pluginIsSystemApp:v3] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)appContainedPlugins
{
  appContainedPlugins = self->_appContainedPlugins;
  if (!appContainedPlugins)
  {
    v4 = [(CKAppManagerViewController *)self balloonPluginManager];
    v5 = [v4 allOrderedCombinedStickerApps];
    v6 = [v5 mutableCopy];

    [v6 removeLastObject];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__CKAppManagerViewController_appContainedPlugins__block_invoke;
    v11[3] = &unk_1E72F0A88;
    v11[4] = self;
    v7 = [v6 __imArrayByFilteringWithBlock:v11];
    v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_185];
    v9 = self->_appContainedPlugins;
    self->_appContainedPlugins = v8;

    appContainedPlugins = self->_appContainedPlugins;
  }

  return appContainedPlugins;
}

uint64_t __49__CKAppManagerViewController_appContainedPlugins__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _pluginIsStandaloneApp:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) _pluginIsSystemApp:v3] ^ 1;
  }

  return v4;
}

uint64_t __49__CKAppManagerViewController_appContainedPlugins__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 browserDisplayName];
  v6 = [v4 browserDisplayName];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)_pluginIsHidden:(id)a3
{
  v4 = a3;
  v5 = [(CKAppManagerViewController *)self balloonPluginManager];
  v6 = [v5 isPluginHiddenFromSendMenuAndStickers:v4];

  return v6;
}

- (BOOL)_pluginIsSystemApp:(id)a3
{
  v4 = a3;
  v5 = [(CKAppManagerViewController *)self balloonPluginManager];
  v6 = [v5 isPluginSystemApp:v4];

  return v6;
}

- (BOOL)hasAppStore
{
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v4 = [v3 applicationIsInstalled:@"com.apple.AppStore"];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CKAppManagerViewController *)self balloonPluginManager];
  v6 = [v5 isAppStoreEnabled];

  v7 = [(CKAppManagerViewController *)self balloonPluginManager];
  v8 = [v7 pluginForIdentifier:@"com.apple.appstore.MessagesProvider"];

  if (v8)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (void)reloadPluginsImmediately
{
  [(CKAppManagerViewController *)self setPlugins:0];
  [(CKAppManagerViewController *)self setDeletableIMessageApps:0];
  [(CKAppManagerViewController *)self setAppContainedPlugins:0];
  [(CKAppManagerViewController *)self plugins];

  [(CKAppManagerViewController *)self deletableIMessageApps];
  [(CKAppManagerViewController *)self appContainedPlugins];

  [(CKAppManagerViewController *)self updateEditDoneButton];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v6;
  if (v6 && [v6 row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v12 deselectRowAtIndexPath:v7 animated:1];
  }

  if ((-[CKAppManagerViewController isEditing](self, "isEditing") & 1) == 0 && [v7 section] == 1)
  {
    v8 = IMBalloonExtensionIDWithSuffix();
    v9 = [(CKAppManagerViewController *)self balloonPluginManager];
    v10 = [v9 pluginForExtensionIdentifier:v8];

    if (v10)
    {
      v11 = [(CKAppManagerViewController *)self delegate];
      [v11 browserAppManagerDidSelectPlugin:v10];
    }
  }
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CKAppManagerViewController *)self isEditing];
  v7 = [v5 section];
  if (v6)
  {
    if (!v7)
    {
      v10 = [v5 row];
      v11 = [(CKAppManagerViewController *)self deletableIMessageApps];
      v12 = [v11 count];

      if (v10 >= v12)
      {
        goto LABEL_5;
      }

      v13 = [(CKAppManagerViewController *)self deletableIMessageApps];
      v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

      objc_opt_class();
      LOBYTE(v13) = objc_opt_isKindOfClass();

      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v7 = [v5 section];
  }

  if (v7 != 1)
  {
    v8 = 1;
    goto LABEL_7;
  }

LABEL_5:
  v8 = 0;
LABEL_7:

  return v8;
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (-[CKAppManagerViewController isEditing](self, "isEditing") && ![v5 section])
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E69DCFC0] configurationWithActions:MEMORY[0x1E695E0F0]];
  }

  return v6;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(CKAppManagerViewController *)self isEditing])
  {
    v10 = [v9 section];
    if (a4 == 1 && !v10)
    {
      v11 = [(CKAppManagerViewController *)self deletableIMessageApps];
      v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v9, "row")}];

      v13 = [v12 identifier];
      objc_initWeak(&location, self);
      v14 = [(CKAppManagerViewController *)self balloonPluginManager];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __77__CKAppManagerViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
      v16[3] = &unk_1E72F5020;
      objc_copyWeak(&v21, &location);
      v15 = v14;
      v17 = v15;
      v18 = v8;
      v19 = v9;
      v20 = self;
      [v15 deleteAppWithIdentifier:v13 completion:v16];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }
}

void __77__CKAppManagerViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke(uint64_t a1, int a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (a2)
    {
      [*(a1 + 32) refreshPlugins];
      [*(a1 + 32) saveWithNotification:1];
      [*(a1 + 32) saveCombinedAppsWithNotification:1];
      [WeakRetained reloadPluginsImmediately];
      v5 = *(a1 + 40);
      v7[0] = *(a1 + 48);
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
      [v5 deleteRowsAtIndexPaths:v6 withRowAnimation:100];

      if (([*(a1 + 56) _hasPluginsToHideOrDelete] & 1) == 0)
      {
        [*(a1 + 56) setEditing:0 animated:1];
      }
    }
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (([(CKAppManagerViewController *)self isEditing]& 1) != 0)
  {
    return 2;
  }

  if ([(CKAppManagerViewController *)self hasAppStore])
  {
    return 2;
  }

  return 1;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (![(CKAppManagerViewController *)self isEditing])
  {
    if (a4 == 1)
    {
      return [(CKAppManagerViewController *)self hasAppStore];
    }

    if (!a4)
    {
      v6 = 1024;
      goto LABEL_10;
    }

    return 0;
  }

  if (a4 == 1)
  {
    v6 = 1040;
    goto LABEL_10;
  }

  if (a4)
  {
    return 0;
  }

  v6 = 1032;
LABEL_10:
  v8 = *(&self->super.super.super.isa + v6);

  return [v8 count];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKAppManagerViewController *)self isEditing];
  v9 = [v7 section];
  if (v8)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        v13 = 0;
        v12 = 0;
        goto LABEL_13;
      }

      v10 = &OBJC_IVAR___CKAppManagerViewController__appContainedPlugins;
    }

    else
    {
      v10 = &OBJC_IVAR___CKAppManagerViewController__deletableIMessageApps;
    }

    v14 = +[CKAppManagerAppTableViewCell reuseIdentifier];
    v12 = [v6 dequeueReusableCellWithIdentifier:v14];

    v13 = [*(&self->super.super.super.isa + *v10) objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
    [v12 updateCellWithPluginInfo:v13];
    [v12 setDelegate:self];
LABEL_13:
    [v12 setToggleVisible:objc_msgSend(v7 editable:"section") == 1 isOn:{1, -[CKAppManagerViewController _pluginIsHidden:](self, "_pluginIsHidden:", v13) ^ 1}];
LABEL_15:
    v15 = v12;

    goto LABEL_16;
  }

  if (v9 != 1)
  {
    if (v9)
    {
      v13 = 0;
      v12 = 0;
    }

    else
    {
      v11 = +[CKAppManagerAppTableViewCell reuseIdentifier];
      v12 = [v6 dequeueReusableCellWithIdentifier:v11];

      v13 = -[NSArray objectAtIndexedSubscript:](self->_plugins, "objectAtIndexedSubscript:", [v7 row]);
      [v12 updateCellWithPluginInfo:v13];
      [v12 setDelegate:self];
    }

    goto LABEL_15;
  }

  if ([(CKAppManagerViewController *)self hasAppStore])
  {
    v15 = [(CKAppManagerViewController *)self getStickersOnAppStoreTableViewCell];
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  return v15;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v4 = [(CKAppManagerViewController *)self tableView:a3 numberOfRowsInSection:a4];
  result = *MEMORY[0x1E69DE3D0];
  if (v4 <= 0)
  {
    return 0.0;
  }

  return result;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v4 = [(CKAppManagerViewController *)self tableView:a3 numberOfRowsInSection:a4];
  result = *MEMORY[0x1E69DE3D0];
  if (v4 <= 0)
  {
    return 0.0;
  }

  return result;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if ([(CKAppManagerViewController *)self tableView:v6 numberOfRowsInSection:a4]< 1)
  {
    goto LABEL_7;
  }

  if ([(CKAppManagerViewController *)self isEditing])
  {
    v7 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"AppManagerSectionHeaderReuseIdentifier"];
    if (a4 == 1)
    {
      v8 = CKFrameworkBundle();
      v9 = v8;
      v10 = @"APPS_WITH_STICKER_APPS_SECTION_HEADER";
    }

    else
    {
      if (a4)
      {
        goto LABEL_12;
      }

      v8 = CKFrameworkBundle();
      v9 = v8;
      v10 = @"STICKERS_ONLY_APPS_SECTION_HEADER";
    }

    v11 = [v8 localizedStringForKey:v10 value:&stru_1F04268F8 table:@"ChatKit"];
    v12 = [v11 localizedUppercaseString];
    v13 = [v7 textLabel];
    [v13 setText:v12];

    goto LABEL_11;
  }

  if (a4)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_12;
  }

  v7 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"AppManagerSectionHeaderReuseIdentifier"];
  v9 = CKFrameworkBundle();
  v11 = [v9 localizedStringForKey:@"STICKER_APPS" value:&stru_1F04268F8 table:@"ChatKit"];
  v12 = [v7 textLabel];
  [v12 setText:v11];
LABEL_11:

LABEL_12:

  return v7;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(CKAppManagerViewController *)self isEditing];
  v8 = 0;
  if (a4 == 1 && v7)
  {
    if ([(CKAppManagerViewController *)self tableView:v6 numberOfRowsInSection:1]< 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"AppManagerSectionFooterReuseIdentifier"];
      v9 = CKFrameworkBundle();
      v10 = [v9 localizedStringForKey:@"APPS_WITH_STICKER_APPS_SECTION_FOOTER" value:&stru_1F04268F8 table:@"ChatKit"];
      v11 = [v8 textLabel];
      [v11 setText:v10];
    }
  }

  return v8;
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = (-[CKAppManagerViewController isEditing](self, "isEditing") & 1) == 0 && [v5 section] == 0;

  return v6;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v14 = a4;
  v7 = a5;
  if ((-[CKAppManagerViewController isEditing](self, "isEditing") & 1) == 0 && ![v14 section] && !objc_msgSend(v7, "section"))
  {
    v8 = [v14 row];
    v9 = [(CKAppManagerViewController *)self plugins];
    v10 = [v9 count];

    if (v8 < v10)
    {
      v11 = [(CKAppManagerViewController *)self plugins];
      v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v14, "row")}];

      v13 = [(CKAppManagerViewController *)self balloonPluginManager];
      [v13 updateIndexPath:v7 forCombinedStickerApp:v12];

      [(CKAppManagerViewController *)self reloadPluginsImmediately];
    }
  }
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v8 section])
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForRow:-[CKAppManagerViewController tableView:numberOfRowsInSection:](self inSection:{"tableView:numberOfRowsInSection:", v7, 0) - 1, 0}];
  }

  else
  {
    v9 = v8;
  }

  v10 = v9;

  return v10;
}

- (id)getStickersOnAppStoreTableViewCell
{
  v2 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
  v3 = [v2 defaultContentConfiguration];
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"GET_STICKER_APPS" value:&stru_1F04268F8 table:@"ChatKit"];
  [v3 setText:v5];

  v6 = [MEMORY[0x1E69DC888] linkColor];
  v7 = [v3 textProperties];
  [v7 setColor:v6];

  [v2 setContentConfiguration:v3];

  return v2;
}

- (void)appCell:(id)a3 wasToggledOn:(BOOL)a4
{
  v4 = a4;
  v6 = [(UITableView *)self->_tableView indexPathForCell:a3];
  if (-[CKAppManagerViewController isEditing](self, "isEditing") && [v6 section] == 1)
  {
    -[CKAppManagerViewController togglePluginAtIndex:enabled:](self, "togglePluginAtIndex:enabled:", [v6 row], v4);
  }
}

- (BOOL)allowEnablingDisabledApps
{
  v2 = [(CKAppManagerViewController *)self balloonPluginManager];
  v3 = [v2 isAppInstallationEnabled];

  return v3;
}

- (BOOL)togglePluginAtIndex:(unint64_t)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v7 = [(CKAppManagerViewController *)self appContainedPlugins];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CKAppManagerViewController *)self togglePluginAtIndex:a3 enabled:v13];
    }

    return 0;
  }

  if (v4 && ![(CKAppManagerViewController *)self allowEnablingDisabledApps])
  {
    return 0;
  }

  v9 = [(CKAppManagerViewController *)self appContainedPlugins];
  v10 = [v9 objectAtIndexedSubscript:a3];

  v11 = [(CKAppManagerViewController *)self balloonPluginManager];
  [v11 setPlugin:v10 hiddenInSendMenuAndStickers:v4];
  [(CKAppManagerViewController *)self reloadPluginsImmediately];
  v12 = 1;
  [v11 saveCombinedAppsWithNotification:1];

  return v12;
}

- (CKAppManagerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)togglePluginAtIndex:(NSObject *)a3 enabled:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 plugins];
  v6 = 134218240;
  v7 = a2;
  v8 = 2048;
  v9 = [v5 count];
  _os_log_error_impl(&dword_19020E000, a3, OS_LOG_TYPE_ERROR, "togglePluginAtIndex: called with invalid index %lu. Count of plugins is %lu", &v6, 0x16u);
}

@end