@interface WDWatchStoredDataViewController
- (BOOL)_shouldDisplayPrivacySection;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_updateFont;
- (void)addUnpairedWatchHeaderView;
- (void)handlePairedDevicesSnapshot:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateTableHeaderViewForUnpairedWatch;
@end

@implementation WDWatchStoredDataViewController

- (void)addUnpairedWatchHeaderView
{
  v3 = [(WDStoredDataByCategoryViewController *)self profile];
  v4 = [v3 healthStore];
  v5 = [v4 profileIdentifier];
  v6 = [v5 type];

  if (v6 != 3)
  {
    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(UILabel *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v7 setTextColor:v8];

    [(UILabel *)v7 setNumberOfLines:0];
    [(UILabel *)v7 setTextAlignment:1];
    v9 = WDBundle();
    v32 = [v9 localizedStringForKey:@"SOURCES_WATCH_UNPAIRED" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

    v10 = MEMORY[0x277CCACA8];
    v11 = [(WDSourceStoredDataViewController *)self source];
    v12 = [v11 name];
    v13 = [v10 localizedStringWithFormat:v32, v12];
    [(UILabel *)v7 setText:v13];

    v14 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 addSubview:v7];
    v15 = [(UILabel *)v7 topAnchor];
    v16 = [v14 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:30.0];
    [v17 setActive:1];

    v18 = [(UILabel *)v7 bottomAnchor];
    v19 = [v14 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v20 setActive:1];

    v21 = [(UILabel *)v7 leadingAnchor];
    v22 = [v14 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:40.0];
    [v23 setActive:1];

    v24 = [(UILabel *)v7 trailingAnchor];
    v25 = [v14 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:-40.0];
    [v26 setActive:1];

    v27 = [v14 widthAnchor];
    v28 = [(WDWatchStoredDataViewController *)self view];
    [v28 frame];
    v29 = [v27 constraintEqualToConstant:CGRectGetWidth(v34)];
    [v29 setActive:1];

    messageLabel = self->_messageLabel;
    self->_messageLabel = v7;

    [(WDWatchStoredDataViewController *)self _updateFont];
    [v14 layoutIfNeeded];
    v31 = [(WDWatchStoredDataViewController *)self tableView];
    [v31 setTableHeaderView:v14];
  }
}

- (void)updateTableHeaderViewForUnpairedWatch
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277CCD6A8]);
  v4 = [(WDStoredDataByCategoryViewController *)self profile];
  v5 = [v4 healthStore];
  v6 = [v3 initWithHealthStore:v5];

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

- (void)handlePairedDevicesSnapshot:(id)a3
{
  v4 = a3;
  v5 = [(WDSourceStoredDataViewController *)self source];
  v6 = [v5 bundleIdentifier];
  v7 = [v4 deviceInfoForSourceBundleIdentifier:v6];

  if (v7)
  {
    if (![(WDWatchStoredDataViewController *)self watchPaired])
    {
      [(WDWatchStoredDataViewController *)self setWatchPaired:1];
      v8 = [(WDWatchStoredDataViewController *)self tableView];
      [v8 setTableHeaderView:0];

      v9 = [(WDWatchStoredDataViewController *)self tableView];
      [v9 beginUpdates];

      v10 = [(WDWatchStoredDataViewController *)self tableView];
      v11 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
      [v10 insertSections:v11 withRowAnimation:3];

      v12 = [(WDWatchStoredDataViewController *)self tableView];
      [v12 endUpdates];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WDWatchStoredDataViewController;
  [(WDStoredDataByCategoryViewController *)&v13 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(WDWatchStoredDataViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(WDWatchStoredDataViewController *)self _updateFont];
      v9 = [(WDWatchStoredDataViewController *)self tableView];
      [v9 beginUpdates];

      v10 = [(WDWatchStoredDataViewController *)self tableView];
      v11 = [v10 tableHeaderView];
      [v11 setNeedsLayout];

      v12 = [(WDWatchStoredDataViewController *)self tableView];
      [v12 endUpdates];
    }
  }
}

- (BOOL)_shouldDisplayPrivacySection
{
  v2 = [(WDStoredDataByCategoryViewController *)self profile];
  v3 = [v2 healthStore];
  v4 = [v3 profileIdentifier];
  v5 = [v4 type] != 3;

  return v5;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = a3;
  if ([(WDWatchStoredDataViewController *)self watchPaired]&& [(WDWatchStoredDataViewController *)self _shouldDisplayPrivacySection])
  {
    v7.receiver = self;
    v7.super_class = WDWatchStoredDataViewController;
    v5 = [(WDStoredDataByCategoryViewController *)&v7 numberOfSectionsInTableView:v4]+ 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WDWatchStoredDataViewController;
    v5 = [(WDStoredDataByCategoryViewController *)&v8 numberOfSectionsInTableView:v4];
  }

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if ([(WDWatchStoredDataViewController *)self watchPaired]&& [(WDWatchStoredDataViewController *)self _shouldDisplayPrivacySection])
  {
    if (!a4)
    {
      v8 = 1;
      goto LABEL_7;
    }

    v7 = [(WDStoredDataByCategoryViewController *)&v10 tableView:v6 numberOfRowsInSection:a4 - 1, self, WDWatchStoredDataViewController, v11.receiver, v11.super_class];
  }

  else
  {
    v7 = [(WDStoredDataByCategoryViewController *)&v11 tableView:v6 numberOfRowsInSection:a4, v10.receiver, v10.super_class, self, WDWatchStoredDataViewController];
  }

  v8 = v7;
LABEL_7:

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WDWatchStoredDataViewController *)self watchPaired]&& [(WDWatchStoredDataViewController *)self _shouldDisplayPrivacySection])
  {
    if ([v7 section])
    {
      v8 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v7 inSection:{"row"), objc_msgSend(v7, "section") - 1}];
      v19.receiver = self;
      v19.super_class = WDWatchStoredDataViewController;
      v9 = [(WDStoredDataByCategoryViewController *)&v19 tableView:v6 cellForRowAtIndexPath:v8];
    }

    else
    {
      v9 = [v6 dequeueReusableCellWithIdentifier:@"WDWatchStoredDataViewControllerPrivacyCellIdentifier"];
      if (!v9)
      {
        v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WDWatchStoredDataViewControllerPrivacyCellIdentifier"];
      }

      v11 = WDBundle();
      v12 = [v11 localizedStringForKey:@"PRIVACY_SETTINGS" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
      v13 = [v9 textLabel];
      [v13 setText:v12];

      v14 = [(WDWatchStoredDataViewController *)self view];
      v15 = [v14 tintColor];
      v16 = [v9 textLabel];
      [v16 setTextColor:v15];

      v17 = [(WDStoredDataByCategoryViewController *)self bodyFont];
      v18 = [v9 textLabel];
      [v18 setFont:v17];
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = WDWatchStoredDataViewController;
    v9 = [(WDStoredDataByCategoryViewController *)&v20 tableView:v6 cellForRowAtIndexPath:v7];
  }

  return v9;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if ([(WDWatchStoredDataViewController *)self watchPaired]&& [(WDWatchStoredDataViewController *)self _shouldDisplayPrivacySection])
  {
    if (!a4)
    {
      goto LABEL_7;
    }

    [(WDStoredDataByCategoryViewController *)&v8 tableView:v6 titleForHeaderInSection:a4 - 1, self, WDWatchStoredDataViewController, v9.receiver, v9.super_class];
  }

  else
  {
    [(WDStoredDataByCategoryViewController *)&v9 tableView:v6 titleForHeaderInSection:a4, v8.receiver, v8.super_class, self, WDWatchStoredDataViewController];
  }
  a4 = ;
LABEL_7:

  return a4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 cellForRowAtIndexPath:v7];
  v9 = [v8 reuseIdentifier];
  v10 = [v9 isEqualToString:@"WDWatchStoredDataViewControllerPrivacyCellIdentifier"];

  if (v10)
  {
    v11 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v12 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=PRIVACY_ID"];
    [v11 openSensitiveURL:v12 withOptions:0];

    [v8 setSelected:0];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WDWatchStoredDataViewController;
    [(WDStoredDataByCategoryViewController *)&v13 tableView:v6 didSelectRowAtIndexPath:v7];
  }
}

@end