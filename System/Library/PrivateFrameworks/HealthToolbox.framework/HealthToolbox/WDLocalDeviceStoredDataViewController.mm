@interface WDLocalDeviceStoredDataViewController
- (BOOL)_shouldDisplayPrivacySection;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation WDLocalDeviceStoredDataViewController

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
  v6.receiver = self;
  v6.super_class = WDLocalDeviceStoredDataViewController;
  v4 = [(WDStoredDataByCategoryViewController *)&v6 numberOfSectionsInTableView:view];
  return v4 + [(WDLocalDeviceStoredDataViewController *)self _shouldDisplayPrivacySection];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if ([(WDLocalDeviceStoredDataViewController *)self _shouldDisplayPrivacySection])
  {
    if (!section)
    {
      v8 = 1;
      goto LABEL_6;
    }

    wDLocalDeviceStoredDataViewController = [(WDStoredDataByCategoryViewController *)&v10 tableView:viewCopy numberOfRowsInSection:section - 1, self, WDLocalDeviceStoredDataViewController, v11.receiver, v11.super_class];
  }

  else
  {
    wDLocalDeviceStoredDataViewController = [(WDStoredDataByCategoryViewController *)&v11 tableView:viewCopy numberOfRowsInSection:section, v10.receiver, v10.super_class, self, WDLocalDeviceStoredDataViewController];
  }

  v8 = wDLocalDeviceStoredDataViewController;
LABEL_6:

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![(WDLocalDeviceStoredDataViewController *)self _shouldDisplayPrivacySection])
  {
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(pathCopy inSection:{"row"), objc_msgSend(pathCopy, "section")}];
    [(WDStoredDataByCategoryViewController *)&v20 tableView:viewCopy cellForRowAtIndexPath:v8, v19.receiver, v19.super_class, self, WDLocalDeviceStoredDataViewController];
    goto LABEL_5;
  }

  if ([pathCopy section])
  {
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(pathCopy inSection:{"row"), objc_msgSend(pathCopy, "section") - 1}];
    [(WDStoredDataByCategoryViewController *)&v19 tableView:viewCopy cellForRowAtIndexPath:v8, self, WDLocalDeviceStoredDataViewController, v20.receiver, v20.super_class];
    v9 = LABEL_5:;

    goto LABEL_6;
  }

  v9 = [viewCopy dequeueReusableCellWithIdentifier:@"WDLocalDeviceStoredDataViewControllerCellIdentifier"];
  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WDLocalDeviceStoredDataViewControllerCellIdentifier"];
  }

  v11 = WDBundle();
  v12 = [v11 localizedStringForKey:@"PRIVACY_SETTINGS" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  textLabel = [v9 textLabel];
  [textLabel setText:v12];

  view = [(WDLocalDeviceStoredDataViewController *)self view];
  tintColor = [view tintColor];
  textLabel2 = [v9 textLabel];
  [textLabel2 setTextColor:tintColor];

  bodyFont = [(WDStoredDataByCategoryViewController *)self bodyFont];
  textLabel3 = [v9 textLabel];
  [textLabel3 setFont:bodyFont];

LABEL_6:

  return v9;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([(WDLocalDeviceStoredDataViewController *)self _shouldDisplayPrivacySection])
  {
    if (!section)
    {
      goto LABEL_6;
    }

    [(WDStoredDataByCategoryViewController *)&v8 tableView:viewCopy titleForHeaderInSection:section - 1, self, WDLocalDeviceStoredDataViewController, v9.receiver, v9.super_class];
  }

  else
  {
    [(WDStoredDataByCategoryViewController *)&v9 tableView:viewCopy titleForHeaderInSection:section, v8.receiver, v8.super_class, self, WDLocalDeviceStoredDataViewController];
  }
  section = ;
LABEL_6:

  return section;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  reuseIdentifier = [v8 reuseIdentifier];
  v10 = [reuseIdentifier isEqualToString:@"WDLocalDeviceStoredDataViewControllerCellIdentifier"];

  if (v10)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v12 = MEMORY[0x277CBEBC0];
    internalPrivacySettingsURLString = [MEMORY[0x277D0FD48] internalPrivacySettingsURLString];
    v14 = [v12 URLWithString:internalPrivacySettingsURLString];
    [defaultWorkspace openSensitiveURL:v14 withOptions:0];

    [v8 setSelected:0];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = WDLocalDeviceStoredDataViewController;
    [(WDStoredDataByCategoryViewController *)&v15 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

@end