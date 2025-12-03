@interface WDWatchStoredDataViewController
- (BOOL)_shouldDisplayPrivacySection;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_updateFont;
- (void)addUnpairedWatchHeaderView;
- (void)handlePairedDevicesSnapshot:(id)snapshot;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTableHeaderViewForUnpairedWatch;
@end

@implementation WDWatchStoredDataViewController

- (void)addUnpairedWatchHeaderView
{
  profile = [(WDStoredDataByCategoryViewController *)self profile];
  healthStore = [profile healthStore];
  profileIdentifier = [healthStore profileIdentifier];
  type = [profileIdentifier type];

  if (type != 3)
  {
    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(UILabel *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v7 setTextColor:secondaryLabelColor];

    [(UILabel *)v7 setNumberOfLines:0];
    [(UILabel *)v7 setTextAlignment:1];
    v9 = WDBundle();
    v32 = [v9 localizedStringForKey:@"SOURCES_WATCH_UNPAIRED" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

    v10 = MEMORY[0x277CCACA8];
    source = [(WDSourceStoredDataViewController *)self source];
    name = [source name];
    v13 = [v10 localizedStringWithFormat:v32, name];
    [(UILabel *)v7 setText:v13];

    v14 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 addSubview:v7];
    topAnchor = [(UILabel *)v7 topAnchor];
    topAnchor2 = [v14 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:30.0];
    [v17 setActive:1];

    bottomAnchor = [(UILabel *)v7 bottomAnchor];
    bottomAnchor2 = [v14 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v20 setActive:1];

    leadingAnchor = [(UILabel *)v7 leadingAnchor];
    leadingAnchor2 = [v14 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:40.0];
    [v23 setActive:1];

    trailingAnchor = [(UILabel *)v7 trailingAnchor];
    trailingAnchor2 = [v14 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-40.0];
    [v26 setActive:1];

    widthAnchor = [v14 widthAnchor];
    view = [(WDWatchStoredDataViewController *)self view];
    [view frame];
    v29 = [widthAnchor constraintEqualToConstant:CGRectGetWidth(v34)];
    [v29 setActive:1];

    messageLabel = self->_messageLabel;
    self->_messageLabel = v7;

    [(WDWatchStoredDataViewController *)self _updateFont];
    [v14 layoutIfNeeded];
    tableView = [(WDWatchStoredDataViewController *)self tableView];
    [tableView setTableHeaderView:v14];
  }
}

- (void)updateTableHeaderViewForUnpairedWatch
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277CCD6A8]);
  profile = [(WDStoredDataByCategoryViewController *)self profile];
  healthStore = [profile healthStore];
  v6 = [v3 initWithHealthStore:healthStore];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__WDWatchStoredDataViewController_updateTableHeaderViewForUnpairedWatch__block_invoke;
  v7[3] = &unk_2796E6E08;
  objc_copyWeak(&v8, &location);
  [v6 fetchNanoSyncPairedDevicesWithCompletion:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void __72__WDWatchStoredDataViewController_updateTableHeaderViewForUnpairedWatch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__WDWatchStoredDataViewController_updateTableHeaderViewForUnpairedWatch__block_invoke_2;
  v5[3] = &unk_2796E6DE0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __72__WDWatchStoredDataViewController_updateTableHeaderViewForUnpairedWatch__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handlePairedDevicesSnapshot:*(a1 + 32)];
}

- (void)handlePairedDevicesSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  source = [(WDSourceStoredDataViewController *)self source];
  bundleIdentifier = [source bundleIdentifier];
  v7 = [snapshotCopy deviceInfoForSourceBundleIdentifier:bundleIdentifier];

  if (v7)
  {
    if (![(WDWatchStoredDataViewController *)self watchPaired])
    {
      [(WDWatchStoredDataViewController *)self setWatchPaired:1];
      tableView = [(WDWatchStoredDataViewController *)self tableView];
      [tableView setTableHeaderView:0];

      tableView2 = [(WDWatchStoredDataViewController *)self tableView];
      [tableView2 beginUpdates];

      tableView3 = [(WDWatchStoredDataViewController *)self tableView];
      v11 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
      [tableView3 insertSections:v11 withRowAnimation:3];

      tableView4 = [(WDWatchStoredDataViewController *)self tableView];
      [tableView4 endUpdates];
    }
  }

  else
  {

    [(WDWatchStoredDataViewController *)self addUnpairedWatchHeaderView];
  }
}

- (void)_updateFont
{
  v3 = MEMORY[0x277D74300];
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v5 _scaledValueForValue:20.0];
  v4 = [v3 systemFontOfSize:?];
  [(UILabel *)self->_messageLabel setFont:v4];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = WDWatchStoredDataViewController;
  [(WDStoredDataByCategoryViewController *)&v13 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(WDWatchStoredDataViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(WDWatchStoredDataViewController *)self _updateFont];
      tableView = [(WDWatchStoredDataViewController *)self tableView];
      [tableView beginUpdates];

      tableView2 = [(WDWatchStoredDataViewController *)self tableView];
      tableHeaderView = [tableView2 tableHeaderView];
      [tableHeaderView setNeedsLayout];

      tableView3 = [(WDWatchStoredDataViewController *)self tableView];
      [tableView3 endUpdates];
    }
  }
}

- (BOOL)_shouldDisplayPrivacySection
{
  profile = [(WDStoredDataByCategoryViewController *)self profile];
  healthStore = [profile healthStore];
  profileIdentifier = [healthStore profileIdentifier];
  v5 = [profileIdentifier type] != 3;

  return v5;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  viewCopy = view;
  if ([(WDWatchStoredDataViewController *)self watchPaired]&& [(WDWatchStoredDataViewController *)self _shouldDisplayPrivacySection])
  {
    v7.receiver = self;
    v7.super_class = WDWatchStoredDataViewController;
    v5 = [(WDStoredDataByCategoryViewController *)&v7 numberOfSectionsInTableView:viewCopy]+ 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WDWatchStoredDataViewController;
    v5 = [(WDStoredDataByCategoryViewController *)&v8 numberOfSectionsInTableView:viewCopy];
  }

  return v5;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if ([(WDWatchStoredDataViewController *)self watchPaired]&& [(WDWatchStoredDataViewController *)self _shouldDisplayPrivacySection])
  {
    if (!section)
    {
      v8 = 1;
      goto LABEL_7;
    }

    wDWatchStoredDataViewController = [(WDStoredDataByCategoryViewController *)&v10 tableView:viewCopy numberOfRowsInSection:section - 1, self, WDWatchStoredDataViewController, v11.receiver, v11.super_class];
  }

  else
  {
    wDWatchStoredDataViewController = [(WDStoredDataByCategoryViewController *)&v11 tableView:viewCopy numberOfRowsInSection:section, v10.receiver, v10.super_class, self, WDWatchStoredDataViewController];
  }

  v8 = wDWatchStoredDataViewController;
LABEL_7:

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(WDWatchStoredDataViewController *)self watchPaired]&& [(WDWatchStoredDataViewController *)self _shouldDisplayPrivacySection])
  {
    if ([pathCopy section])
    {
      v8 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(pathCopy inSection:{"row"), objc_msgSend(pathCopy, "section") - 1}];
      v19.receiver = self;
      v19.super_class = WDWatchStoredDataViewController;
      v9 = [(WDStoredDataByCategoryViewController *)&v19 tableView:viewCopy cellForRowAtIndexPath:v8];
    }

    else
    {
      v9 = [viewCopy dequeueReusableCellWithIdentifier:@"WDWatchStoredDataViewControllerPrivacyCellIdentifier"];
      if (!v9)
      {
        v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WDWatchStoredDataViewControllerPrivacyCellIdentifier"];
      }

      v11 = WDBundle();
      v12 = [v11 localizedStringForKey:@"PRIVACY_SETTINGS" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
      textLabel = [v9 textLabel];
      [textLabel setText:v12];

      view = [(WDWatchStoredDataViewController *)self view];
      tintColor = [view tintColor];
      textLabel2 = [v9 textLabel];
      [textLabel2 setTextColor:tintColor];

      bodyFont = [(WDStoredDataByCategoryViewController *)self bodyFont];
      textLabel3 = [v9 textLabel];
      [textLabel3 setFont:bodyFont];
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = WDWatchStoredDataViewController;
    v9 = [(WDStoredDataByCategoryViewController *)&v20 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  }

  return v9;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([(WDWatchStoredDataViewController *)self watchPaired]&& [(WDWatchStoredDataViewController *)self _shouldDisplayPrivacySection])
  {
    if (!section)
    {
      goto LABEL_7;
    }

    [(WDStoredDataByCategoryViewController *)&v8 tableView:viewCopy titleForHeaderInSection:section - 1, self, WDWatchStoredDataViewController, v9.receiver, v9.super_class];
  }

  else
  {
    [(WDStoredDataByCategoryViewController *)&v9 tableView:viewCopy titleForHeaderInSection:section, v8.receiver, v8.super_class, self, WDWatchStoredDataViewController];
  }
  section = ;
LABEL_7:

  return section;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  reuseIdentifier = [v8 reuseIdentifier];
  v10 = [reuseIdentifier isEqualToString:@"WDWatchStoredDataViewControllerPrivacyCellIdentifier"];

  if (v10)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v12 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=PRIVACY_ID"];
    [defaultWorkspace openSensitiveURL:v12 withOptions:0];

    [v8 setSelected:0];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WDWatchStoredDataViewController;
    [(WDStoredDataByCategoryViewController *)&v13 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

@end