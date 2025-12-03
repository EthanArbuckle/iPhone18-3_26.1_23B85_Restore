@interface CKAppManagerViewController
- (BOOL)_pluginIsHidden:(id)hidden;
- (BOOL)_pluginIsSystemApp:(id)app;
- (BOOL)allowEnablingDisabledApps;
- (BOOL)hasAppStore;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (BOOL)togglePluginAtIndex:(unint64_t)index enabled:(BOOL)enabled;
- (CKAppManagerViewControllerDelegate)delegate;
- (NSArray)appContainedPlugins;
- (NSArray)deletableIMessageApps;
- (NSArray)plugins;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)getStickersOnAppStoreTableViewCell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)appCell:(id)cell wasToggledOn:(BOOL)on;
- (void)doneButtonTapped:(id)tapped;
- (void)reloadPluginsImmediately;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)updateEditDoneButton;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CKAppManagerViewController

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CKAppManagerViewController;
  [(CKAppManagerViewController *)&v5 viewDidLayoutSubviews];
  tableView = self->_tableView;
  view = [(CKAppManagerViewController *)self view];
  [view bounds];
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

  view = [(CKAppManagerViewController *)self view];
  [view bounds];
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
  [view addSubview:self->_tableView];
  v19 = self->_tableView;
  v20 = objc_opt_class();
  v21 = +[CKAppManagerAppTableViewCell reuseIdentifier];
  [(UITableView *)v19 registerClass:v20 forCellReuseIdentifier:v21];

  [(UITableView *)self->_tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"AppManagerSectionHeaderReuseIdentifier"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"AppManagerSectionFooterReuseIdentifier"];
  [(CKAppManagerViewController *)self setDefinesPresentationContext:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CKAppManagerViewController;
  [(CKAppManagerViewController *)&v4 viewWillAppear:appear];
  [(CKAppManagerViewController *)self updateEditDoneButton];
  [(CKAppManagerViewController *)self reloadPluginsImmediately];
  [(UITableView *)self->_tableView reloadData];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CKAppManagerViewController;
  [(CKAppManagerViewController *)&v4 viewDidDisappear:disappear];
  [(CKAppManagerViewController *)self setEditing:0];
  [(CKAppManagerViewController *)self reloadPluginsImmediately];
  [(UITableView *)self->_tableView reloadData];
}

- (void)doneButtonTapped:(id)tapped
{
  delegate = [(CKAppManagerViewController *)self delegate];
  [delegate appManagerViewControllerDidFinish:self];
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

  navigationItem = [(CKAppManagerViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:dismissButton];

  editButtonItem = [(CKAppManagerViewController *)self editButtonItem];
  navigationItem2 = [(CKAppManagerViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:editButtonItem];

  editButtonItem2 = [(CKAppManagerViewController *)self editButtonItem];
  [editButtonItem2 setEnabled:{-[CKAppManagerViewController _hasPluginsToHideOrDelete](self, "_hasPluginsToHideOrDelete")}];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if ([(CKAppManagerViewController *)self isEditing]!= editing)
  {
    v16.receiver = self;
    v16.super_class = CKAppManagerViewController;
    [(CKAppManagerViewController *)&v16 setEditing:editingCopy animated:animatedCopy];
    [(UITableView *)self->_tableView setEditing:editingCopy animated:1];
    if (editingCopy)
    {
      dismissButton = 0;
    }

    else
    {
      dismissButton = self->_dismissButton;
    }

    navigationItem = [(CKAppManagerViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:dismissButton];

    [(UITableView *)self->_tableView beginUpdates];
    hasAppStore = [(CKAppManagerViewController *)self hasAppStore];
    tableView = self->_tableView;
    if (hasAppStore)
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
      if (editingCopy)
      {
        [(UITableView *)v13 insertSections:v11 withRowAnimation:0];
      }

      else
      {
        [(UITableView *)v13 deleteSections:v11 withRowAnimation:0];
      }
    }

    [(UITableView *)self->_tableView endUpdates];
    indexPathsForVisibleRows = [(UITableView *)self->_tableView indexPathsForVisibleRows];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__CKAppManagerViewController_setEditing_animated___block_invoke;
    v15[3] = &unk_1E72F42A8;
    v15[4] = self;
    [indexPathsForVisibleRows enumerateObjectsUsingBlock:v15];

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
    balloonPluginManager = [(CKAppManagerViewController *)self balloonPluginManager];
    orderedCombinedStickerApps = [balloonPluginManager orderedCombinedStickerApps];
    v6 = [orderedCombinedStickerApps mutableCopy];

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
    balloonPluginManager = [(CKAppManagerViewController *)self balloonPluginManager];
    allOrderedCombinedStickerApps = [balloonPluginManager allOrderedCombinedStickerApps];
    v6 = [allOrderedCombinedStickerApps mutableCopy];

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
    balloonPluginManager = [(CKAppManagerViewController *)self balloonPluginManager];
    allOrderedCombinedStickerApps = [balloonPluginManager allOrderedCombinedStickerApps];
    v6 = [allOrderedCombinedStickerApps mutableCopy];

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

- (BOOL)_pluginIsHidden:(id)hidden
{
  hiddenCopy = hidden;
  balloonPluginManager = [(CKAppManagerViewController *)self balloonPluginManager];
  v6 = [balloonPluginManager isPluginHiddenFromSendMenuAndStickers:hiddenCopy];

  return v6;
}

- (BOOL)_pluginIsSystemApp:(id)app
{
  appCopy = app;
  balloonPluginManager = [(CKAppManagerViewController *)self balloonPluginManager];
  v6 = [balloonPluginManager isPluginSystemApp:appCopy];

  return v6;
}

- (BOOL)hasAppStore
{
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v4 = [defaultWorkspace applicationIsInstalled:@"com.apple.AppStore"];

  if (!v4)
  {
    return 0;
  }

  balloonPluginManager = [(CKAppManagerViewController *)self balloonPluginManager];
  isAppStoreEnabled = [balloonPluginManager isAppStoreEnabled];

  balloonPluginManager2 = [(CKAppManagerViewController *)self balloonPluginManager];
  v8 = [balloonPluginManager2 pluginForIdentifier:@"com.apple.appstore.MessagesProvider"];

  if (v8)
  {
    return isAppStoreEnabled;
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = pathCopy;
  if (pathCopy && [pathCopy row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [viewCopy deselectRowAtIndexPath:v7 animated:1];
  }

  if ((-[CKAppManagerViewController isEditing](self, "isEditing") & 1) == 0 && [v7 section] == 1)
  {
    v8 = IMBalloonExtensionIDWithSuffix();
    balloonPluginManager = [(CKAppManagerViewController *)self balloonPluginManager];
    v10 = [balloonPluginManager pluginForExtensionIdentifier:v8];

    if (v10)
    {
      delegate = [(CKAppManagerViewController *)self delegate];
      [delegate browserAppManagerDidSelectPlugin:v10];
    }
  }
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  isEditing = [(CKAppManagerViewController *)self isEditing];
  section = [pathCopy section];
  if (isEditing)
  {
    if (!section)
    {
      v10 = [pathCopy row];
      deletableIMessageApps = [(CKAppManagerViewController *)self deletableIMessageApps];
      v12 = [deletableIMessageApps count];

      if (v10 >= v12)
      {
        goto LABEL_5;
      }

      deletableIMessageApps2 = [(CKAppManagerViewController *)self deletableIMessageApps];
      v14 = [deletableIMessageApps2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

      objc_opt_class();
      LOBYTE(deletableIMessageApps2) = objc_opt_isKindOfClass();

      if ((deletableIMessageApps2 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    section = [pathCopy section];
  }

  if (section != 1)
  {
    v8 = 1;
    goto LABEL_7;
  }

LABEL_5:
  v8 = 0;
LABEL_7:

  return v8;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[CKAppManagerViewController isEditing](self, "isEditing") && ![pathCopy section])
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E69DCFC0] configurationWithActions:MEMORY[0x1E695E0F0]];
  }

  return v6;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(CKAppManagerViewController *)self isEditing])
  {
    section = [pathCopy section];
    if (style == 1 && !section)
    {
      deletableIMessageApps = [(CKAppManagerViewController *)self deletableIMessageApps];
      v12 = [deletableIMessageApps objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

      identifier = [v12 identifier];
      objc_initWeak(&location, self);
      balloonPluginManager = [(CKAppManagerViewController *)self balloonPluginManager];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __77__CKAppManagerViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
      v16[3] = &unk_1E72F5020;
      objc_copyWeak(&v21, &location);
      v15 = balloonPluginManager;
      v17 = v15;
      v18 = viewCopy;
      v19 = pathCopy;
      selfCopy = self;
      [v15 deleteAppWithIdentifier:identifier completion:v16];

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

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (![(CKAppManagerViewController *)self isEditing])
  {
    if (section == 1)
    {
      return [(CKAppManagerViewController *)self hasAppStore];
    }

    if (!section)
    {
      v6 = 1024;
      goto LABEL_10;
    }

    return 0;
  }

  if (section == 1)
  {
    v6 = 1040;
    goto LABEL_10;
  }

  if (section)
  {
    return 0;
  }

  v6 = 1032;
LABEL_10:
  v8 = *(&self->super.super.super.isa + v6);

  return [v8 count];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  isEditing = [(CKAppManagerViewController *)self isEditing];
  section = [pathCopy section];
  if (isEditing)
  {
    if (section)
    {
      if (section != 1)
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
    v12 = [viewCopy dequeueReusableCellWithIdentifier:v14];

    v13 = [*(&self->super.super.super.isa + *v10) objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    [v12 updateCellWithPluginInfo:v13];
    [v12 setDelegate:self];
LABEL_13:
    [v12 setToggleVisible:objc_msgSend(pathCopy editable:"section") == 1 isOn:{1, -[CKAppManagerViewController _pluginIsHidden:](self, "_pluginIsHidden:", v13) ^ 1}];
LABEL_15:
    getStickersOnAppStoreTableViewCell = v12;

    goto LABEL_16;
  }

  if (section != 1)
  {
    if (section)
    {
      v13 = 0;
      v12 = 0;
    }

    else
    {
      v11 = +[CKAppManagerAppTableViewCell reuseIdentifier];
      v12 = [viewCopy dequeueReusableCellWithIdentifier:v11];

      v13 = -[NSArray objectAtIndexedSubscript:](self->_plugins, "objectAtIndexedSubscript:", [pathCopy row]);
      [v12 updateCellWithPluginInfo:v13];
      [v12 setDelegate:self];
    }

    goto LABEL_15;
  }

  if ([(CKAppManagerViewController *)self hasAppStore])
  {
    getStickersOnAppStoreTableViewCell = [(CKAppManagerViewController *)self getStickersOnAppStoreTableViewCell];
  }

  else
  {
    getStickersOnAppStoreTableViewCell = 0;
  }

LABEL_16:

  return getStickersOnAppStoreTableViewCell;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v4 = [(CKAppManagerViewController *)self tableView:view numberOfRowsInSection:section];
  result = *MEMORY[0x1E69DE3D0];
  if (v4 <= 0)
  {
    return 0.0;
  }

  return result;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  v4 = [(CKAppManagerViewController *)self tableView:view numberOfRowsInSection:section];
  result = *MEMORY[0x1E69DE3D0];
  if (v4 <= 0)
  {
    return 0.0;
  }

  return result;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([(CKAppManagerViewController *)self tableView:viewCopy numberOfRowsInSection:section]< 1)
  {
    goto LABEL_7;
  }

  if ([(CKAppManagerViewController *)self isEditing])
  {
    v7 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"AppManagerSectionHeaderReuseIdentifier"];
    if (section == 1)
    {
      v8 = CKFrameworkBundle();
      v9 = v8;
      v10 = @"APPS_WITH_STICKER_APPS_SECTION_HEADER";
    }

    else
    {
      if (section)
      {
        goto LABEL_12;
      }

      v8 = CKFrameworkBundle();
      v9 = v8;
      v10 = @"STICKERS_ONLY_APPS_SECTION_HEADER";
    }

    v11 = [v8 localizedStringForKey:v10 value:&stru_1F04268F8 table:@"ChatKit"];
    localizedUppercaseString = [v11 localizedUppercaseString];
    textLabel = [v7 textLabel];
    [textLabel setText:localizedUppercaseString];

    goto LABEL_11;
  }

  if (section)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_12;
  }

  v7 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"AppManagerSectionHeaderReuseIdentifier"];
  v9 = CKFrameworkBundle();
  v11 = [v9 localizedStringForKey:@"STICKER_APPS" value:&stru_1F04268F8 table:@"ChatKit"];
  localizedUppercaseString = [v7 textLabel];
  [localizedUppercaseString setText:v11];
LABEL_11:

LABEL_12:

  return v7;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  isEditing = [(CKAppManagerViewController *)self isEditing];
  v8 = 0;
  if (section == 1 && isEditing)
  {
    if ([(CKAppManagerViewController *)self tableView:viewCopy numberOfRowsInSection:1]< 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"AppManagerSectionFooterReuseIdentifier"];
      v9 = CKFrameworkBundle();
      v10 = [v9 localizedStringForKey:@"APPS_WITH_STICKER_APPS_SECTION_FOOTER" value:&stru_1F04268F8 table:@"ChatKit"];
      textLabel = [v8 textLabel];
      [textLabel setText:v10];
    }
  }

  return v8;
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = (-[CKAppManagerViewController isEditing](self, "isEditing") & 1) == 0 && [pathCopy section] == 0;

  return v6;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  if ((-[CKAppManagerViewController isEditing](self, "isEditing") & 1) == 0 && ![pathCopy section] && !objc_msgSend(indexPathCopy, "section"))
  {
    v8 = [pathCopy row];
    plugins = [(CKAppManagerViewController *)self plugins];
    v10 = [plugins count];

    if (v8 < v10)
    {
      plugins2 = [(CKAppManagerViewController *)self plugins];
      v12 = [plugins2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

      balloonPluginManager = [(CKAppManagerViewController *)self balloonPluginManager];
      [balloonPluginManager updateIndexPath:indexPathCopy forCombinedStickerApp:v12];

      [(CKAppManagerViewController *)self reloadPluginsImmediately];
    }
  }
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  viewCopy = view;
  indexPathCopy = indexPath;
  if ([indexPathCopy section])
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForRow:-[CKAppManagerViewController tableView:numberOfRowsInSection:](self inSection:{"tableView:numberOfRowsInSection:", viewCopy, 0) - 1, 0}];
  }

  else
  {
    v9 = indexPathCopy;
  }

  v10 = v9;

  return v10;
}

- (id)getStickersOnAppStoreTableViewCell
{
  v2 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
  defaultContentConfiguration = [v2 defaultContentConfiguration];
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"GET_STICKER_APPS" value:&stru_1F04268F8 table:@"ChatKit"];
  [defaultContentConfiguration setText:v5];

  linkColor = [MEMORY[0x1E69DC888] linkColor];
  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setColor:linkColor];

  [v2 setContentConfiguration:defaultContentConfiguration];

  return v2;
}

- (void)appCell:(id)cell wasToggledOn:(BOOL)on
{
  onCopy = on;
  v6 = [(UITableView *)self->_tableView indexPathForCell:cell];
  if (-[CKAppManagerViewController isEditing](self, "isEditing") && [v6 section] == 1)
  {
    -[CKAppManagerViewController togglePluginAtIndex:enabled:](self, "togglePluginAtIndex:enabled:", [v6 row], onCopy);
  }
}

- (BOOL)allowEnablingDisabledApps
{
  balloonPluginManager = [(CKAppManagerViewController *)self balloonPluginManager];
  isAppInstallationEnabled = [balloonPluginManager isAppInstallationEnabled];

  return isAppInstallationEnabled;
}

- (BOOL)togglePluginAtIndex:(unint64_t)index enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  appContainedPlugins = [(CKAppManagerViewController *)self appContainedPlugins];
  v8 = [appContainedPlugins count];

  if (v8 <= index)
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CKAppManagerViewController *)self togglePluginAtIndex:index enabled:v13];
    }

    return 0;
  }

  if (enabledCopy && ![(CKAppManagerViewController *)self allowEnablingDisabledApps])
  {
    return 0;
  }

  appContainedPlugins2 = [(CKAppManagerViewController *)self appContainedPlugins];
  v10 = [appContainedPlugins2 objectAtIndexedSubscript:index];

  balloonPluginManager = [(CKAppManagerViewController *)self balloonPluginManager];
  [balloonPluginManager setPlugin:v10 hiddenInSendMenuAndStickers:enabledCopy];
  [(CKAppManagerViewController *)self reloadPluginsImmediately];
  v12 = 1;
  [balloonPluginManager saveCombinedAppsWithNotification:1];

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