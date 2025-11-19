@interface WDLocalDeviceStoredDataViewController
- (BOOL)_shouldDisplayPrivacySection;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation WDLocalDeviceStoredDataViewController

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
  v6.receiver = self;
  v6.super_class = WDLocalDeviceStoredDataViewController;
  v4 = [(WDStoredDataByCategoryViewController *)&v6 numberOfSectionsInTableView:a3];
  return v4 + [(WDLocalDeviceStoredDataViewController *)self _shouldDisplayPrivacySection];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if ([(WDLocalDeviceStoredDataViewController *)self _shouldDisplayPrivacySection])
  {
    if (!a4)
    {
      v8 = 1;
      goto LABEL_6;
    }

    v7 = [(WDStoredDataByCategoryViewController *)&v10 tableView:v6 numberOfRowsInSection:a4 - 1, self, WDLocalDeviceStoredDataViewController, v11.receiver, v11.super_class];
  }

  else
  {
    v7 = [(WDStoredDataByCategoryViewController *)&v11 tableView:v6 numberOfRowsInSection:a4, v10.receiver, v10.super_class, self, WDLocalDeviceStoredDataViewController];
  }

  v8 = v7;
LABEL_6:

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(WDLocalDeviceStoredDataViewController *)self _shouldDisplayPrivacySection])
  {
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v7 inSection:{"row"), objc_msgSend(v7, "section")}];
    [(WDStoredDataByCategoryViewController *)&v20 tableView:v6 cellForRowAtIndexPath:v8, v19.receiver, v19.super_class, self, WDLocalDeviceStoredDataViewController];
    goto LABEL_5;
  }

  if ([v7 section])
  {
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v7 inSection:{"row"), objc_msgSend(v7, "section") - 1}];
    [(WDStoredDataByCategoryViewController *)&v19 tableView:v6 cellForRowAtIndexPath:v8, self, WDLocalDeviceStoredDataViewController, v20.receiver, v20.super_class];
    v9 = LABEL_5:;

    goto LABEL_6;
  }

  v9 = [v6 dequeueReusableCellWithIdentifier:@"WDLocalDeviceStoredDataViewControllerCellIdentifier"];
  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WDLocalDeviceStoredDataViewControllerCellIdentifier"];
  }

  v11 = WDBundle();
  v12 = [v11 localizedStringForKey:@"PRIVACY_SETTINGS" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v13 = [v9 textLabel];
  [v13 setText:v12];

  v14 = [(WDLocalDeviceStoredDataViewController *)self view];
  v15 = [v14 tintColor];
  v16 = [v9 textLabel];
  [v16 setTextColor:v15];

  v17 = [(WDStoredDataByCategoryViewController *)self bodyFont];
  v18 = [v9 textLabel];
  [v18 setFont:v17];

LABEL_6:

  return v9;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if ([(WDLocalDeviceStoredDataViewController *)self _shouldDisplayPrivacySection])
  {
    if (!a4)
    {
      goto LABEL_6;
    }

    [(WDStoredDataByCategoryViewController *)&v8 tableView:v6 titleForHeaderInSection:a4 - 1, self, WDLocalDeviceStoredDataViewController, v9.receiver, v9.super_class];
  }

  else
  {
    [(WDStoredDataByCategoryViewController *)&v9 tableView:v6 titleForHeaderInSection:a4, v8.receiver, v8.super_class, self, WDLocalDeviceStoredDataViewController];
  }
  a4 = ;
LABEL_6:

  return a4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 cellForRowAtIndexPath:v7];
  v9 = [v8 reuseIdentifier];
  v10 = [v9 isEqualToString:@"WDLocalDeviceStoredDataViewControllerCellIdentifier"];

  if (v10)
  {
    v11 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v12 = MEMORY[0x277CBEBC0];
    v13 = [MEMORY[0x277D0FD48] internalPrivacySettingsURLString];
    v14 = [v12 URLWithString:v13];
    [v11 openSensitiveURL:v14 withOptions:0];

    [v8 setSelected:0];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = WDLocalDeviceStoredDataViewController;
    [(WDStoredDataByCategoryViewController *)&v15 tableView:v6 didSelectRowAtIndexPath:v7];
  }
}

@end