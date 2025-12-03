@interface FCUIFocusSelectionViewController
+ (id)selectionControllerWithSelectedActivityIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle;
- (FCUIFocusSelectionViewController)initWithSelectedActivityIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle;
- (FCUIFocusSelectionViewControllerDelegate)delegate;
- (id)_activityControlForActivity:(id)activity;
- (void)_configureActivityListView;
- (void)_setSelectedControl:(id)control;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidLoad;
@end

@implementation FCUIFocusSelectionViewController

+ (id)selectionControllerWithSelectedActivityIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  titleCopy = title;
  identifierCopy = identifier;
  v10 = [[FCUIFocusSelectionViewController alloc] initWithSelectedActivityIdentifier:identifierCopy title:titleCopy subtitle:subtitleCopy];

  return v10;
}

- (FCUIFocusSelectionViewController)initWithSelectedActivityIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle
{
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  titleCopy = title;
  subtitleCopy = subtitle;
  v18.receiver = self;
  v18.super_class = FCUIFocusSelectionViewController;
  v12 = [(FCUIFocusSelectionViewController *)&v18 init];
  if (v12)
  {
    mEMORY[0x277D0A9E8] = [MEMORY[0x277D0A9E8] sharedActivityManager];
    activityManager = v12->_activityManager;
    v12->_activityManager = mEMORY[0x277D0A9E8];

    [(FCActivityManager *)v12->_activityManager addObserver:v12];
    objc_storeStrong(&v12->_selectedActivityIdentifier, identifierCopy);
    if (titleCopy)
    {
      [(FCUIFocusSelectionViewController *)v12 setTitle:titleCopy];
    }

    else
    {
      identifierCopy = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [identifierCopy localizedStringForKey:@"FOCUS_SELECTOR_TITLE" value:&stru_285ECE868 table:0];
      [(FCUIFocusSelectionViewController *)v12 setTitle:v15];
    }

    v16 = subtitleCopy;
    if (!subtitleCopy)
    {
      identifierCopy = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [identifierCopy localizedStringForKey:@"FOCUS_SELECTOR_HEADLINE" value:&stru_285ECE868 table:0];
    }

    objc_storeStrong(&v12->_subtitle, v16);
    if (!subtitleCopy)
    {
    }
  }

  return v12;
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = FCUIFocusSelectionViewController;
  [(FCUIFocusSelectionViewController *)&v27 viewDidLoad];
  navigationItem = [(FCUIFocusSelectionViewController *)self navigationItem];
  [navigationItem _setManualScrollEdgeAppearanceProgress:0.0];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:self action:sel__closeButtonTapped_];
  [navigationItem setRightBarButtonItem:v4];
  view = [(FCUIFocusSelectionViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [MEMORY[0x277D26718] materialViewWithRecipe:54];
  backgroundMaterialView = self->_backgroundMaterialView;
  self->_backgroundMaterialView = v14;

  [(MTMaterialView *)self->_backgroundMaterialView setFrame:v7, v9, v11, v13];
  [view addSubview:self->_backgroundMaterialView];
  [(MTMaterialView *)self->_backgroundMaterialView setAutoresizingMask:18];
  v28.origin.x = v7;
  v28.origin.y = v9;
  v28.size.width = v11;
  v28.size.height = v13;
  CGRectInset(v28, 45.0, 0.0);
  traitCollection = [(FCUIFocusSelectionViewController *)self traitCollection];
  [traitCollection displayScale];
  UIRectRoundToScale();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [[FCUIActivityListView alloc] initWithFrame:v18, v20, v22, v24];
  activityListView = self->_activityListView;
  self->_activityListView = v25;

  [(FCUIActivityListView *)self->_activityListView setFooterPinnedToBottom:0];
  [(FCUIActivityListView *)self->_activityListView setDelegate:self];
  [view addSubview:self->_activityListView];
  [(FCUIActivityListView *)self->_activityListView setAutoresizingMask:18];
  [(FCUIFocusSelectionViewController *)self _configureActivityListView];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (([MEMORY[0x277D75D18] _isInAnimationBlock] & 1) == 0)
  {
    [scrollCopy adjustedContentInset];
    v5 = v4;
    [scrollCopy contentOffset];
    v7 = fmin(fmax((v5 + v6) * 0.0625, 0.0), 1.0);
    navigationItem = [(FCUIFocusSelectionViewController *)self navigationItem];
    [navigationItem _setManualScrollEdgeAppearanceProgress:v7];
  }
}

- (void)_setSelectedControl:(id)control
{
  controlCopy = control;
  isSelected = [(FCUIActivityControl *)controlCopy isSelected];
  v5 = controlCopy;
  v6 = isSelected;
  activityDescription = 1040;
  selectedControl = self->_selectedControl;
  if ((v6 & 1) != 0 || selectedControl != controlCopy)
  {
    [(FCUIActivityControl *)selectedControl setSelected:0];
    v9 = self->_selectedControl;
    self->_selectedControl = 0;

    selectedActivityIdentifier = self->_selectedActivityIdentifier;
    self->_selectedActivityIdentifier = 0;

    v5 = controlCopy;
  }

  if (v6)
  {
    v5 = 0;
  }

  objc_storeStrong(&self->_selectedControl, v5);
  [(FCUIActivityControl *)self->_selectedControl setSelected:v6 ^ 1u];
  if (v6)
  {
    activityIdentifier = 0;
  }

  else
  {
    activityDescription = [(FCUIActivityControl *)controlCopy activityDescription];
    activityIdentifier = [activityDescription activityIdentifier];
  }

  objc_storeStrong(&self->_selectedActivityIdentifier, activityIdentifier);
  if ((v6 & 1) == 0)
  {
  }
}

- (void)_configureActivityListView
{
  v25 = *MEMORY[0x277D85DE8];
  activityListView = self->_activityListView;
  v4 = [(_FCUIFocusSelectionHeaderFooterView *)[_FCUIFocusSelectionHeaderView alloc] initWithText:self->_subtitle];
  [(FCUIActivityListView *)activityListView setHeaderView:v4];

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  availableActivities = [(FCActivityManager *)self->_activityManager availableActivities];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [availableActivities countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(availableActivities);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [(FCUIFocusSelectionViewController *)self _activityControlForActivity:v11];
        if (([v11 isPlaceholder] & 1) == 0)
        {
          activityIdentifier = [v11 activityIdentifier];
          v14 = [activityIdentifier isEqual:self->_selectedActivityIdentifier];

          if (v14)
          {
            [(FCUIFocusSelectionViewController *)self _setSelectedControl:v12];
          }
        }

        [v5 addObject:v12];
      }

      v8 = [availableActivities countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  [(FCUIActivityListView *)self->_activityListView setActivityViews:v5];
  v15 = self->_activityListView;
  v16 = [_FCUIFocusSelectionFooterView alloc];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"FOCUS_SELECTOR_SETTINGS" value:&stru_285ECE868 table:0];
  v19 = [(_FCUIFocusSelectionHeaderFooterView *)v16 initWithText:v18];
  [(FCUIActivityListView *)v15 setFooterView:v19];
}

- (id)_activityControlForActivity:(id)activity
{
  activityCopy = activity;
  v5 = [[FCUIActivityControl alloc] initWithActivityDescription:activityCopy style:2];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D750C8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__FCUIFocusSelectionViewController__activityControlForActivity___block_invoke;
  v12[3] = &unk_27901A6D0;
  objc_copyWeak(&v16, &location);
  v7 = activityCopy;
  v13 = v7;
  v8 = v5;
  v14 = v8;
  selfCopy = self;
  v9 = [v6 actionWithHandler:v12];
  [(FCUIActivityControl *)v8 addAction:v9 forControlEvents:64];
  [(FCUIActivityControl *)v8 setOptionsAction:v9];
  v10 = v8;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v10;
}

void __64__FCUIFocusSelectionViewController__activityControlForActivity___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v2 = [WeakRetained _activityManager];
  v3 = [a1[4] activityIdentifier];
  v4 = [v2 activityWithIdentifier:v3];

  if (![v4 isPlaceholder])
  {
    goto LABEL_4;
  }

  v5 = [WeakRetained _activityManager];
  v6 = [a1[5] activityDescription];
  v7 = [v5 promotedPlaceholderActivity:v6];

  if (v7)
  {
    [a1[5] setActivityDescription:v7];

LABEL_4:
    [WeakRetained _setSelectedControl:a1[5]];
    v8 = [WeakRetained delegate];
    v9 = [a1[5] isSelected];
    v10 = [a1[5] activityDescription];
    [v8 focusSelectionViewController:WeakRetained hasSelected:v9 activity:v10];
    goto LABEL_5;
  }

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v8 localizedStringForKey:@"LINK_FOCUS_ALERT_TITLE" value:&stru_285ECE868 table:0];
  v11 = [v8 localizedStringForKey:@"LINK_FOCUS_ALERT_UNABLE_TO_CREATE" value:&stru_285ECE868 table:0];
  v12 = [v8 localizedStringForKey:@"OK" value:&stru_285ECE868 table:0];
  v13 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:v11 preferredStyle:1];
  v14 = [MEMORY[0x277D750F8] actionWithTitle:v12 style:0 handler:0];
  [v13 addAction:v14];
  [WeakRetained presentViewController:v13 animated:1 completion:0];

LABEL_5:
}

- (FCUIFocusSelectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end