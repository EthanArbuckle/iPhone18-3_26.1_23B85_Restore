@interface WDRemoteFeatureAvailabilityInternalSettingsViewController
- (WDRemoteFeatureAvailabilityInternalSettingsViewController)initWithConditions:(id)conditions;
- (id)currentlocaleCountryCode;
- (id)evaluateRulesForCondition:(id)condition;
- (id)jsonStringFromDictionary:(id)dictionary;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_featureAvailabilityConditionsDidUpdate;
- (void)_registerForNotifications;
- (void)_unregisterForNotifications;
- (void)dealloc;
- (void)reloadUserDefaultsContent;
- (void)viewDidLoad;
@end

@implementation WDRemoteFeatureAvailabilityInternalSettingsViewController

- (WDRemoteFeatureAvailabilityInternalSettingsViewController)initWithConditions:(id)conditions
{
  conditionsCopy = conditions;
  v11.receiver = self;
  v11.super_class = WDRemoteFeatureAvailabilityInternalSettingsViewController;
  v6 = [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)&v11 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conditions, conditions);
    hk_remoteFeatureAvailabilityUserDefaults = [MEMORY[0x277CBEBD0] hk_remoteFeatureAvailabilityUserDefaults];
    userDefaults = v7->_userDefaults;
    v7->_userDefaults = hk_remoteFeatureAvailabilityUserDefaults;

    [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)v7 setTitle:@"Remote Conditions"];
    [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)v7 _registerForNotifications];
  }

  return v7;
}

- (void)dealloc
{
  [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self _unregisterForNotifications];
  v3.receiver = self;
  v3.super_class = WDRemoteFeatureAvailabilityInternalSettingsViewController;
  [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WDRemoteFeatureAvailabilityInternalSettingsViewController;
  [(HKTableViewController *)&v4 viewDidLoad];
  [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self reloadUserDefaultsContent];
  tableView = [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self tableView];
  [tableView reloadData];
}

- (void)_registerForNotifications
{
  objc_initWeak(&location, self);
  v3 = *MEMORY[0x277CCCD08];
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__WDRemoteFeatureAvailabilityInternalSettingsViewController__registerForNotifications__block_invoke;
  v6[3] = &unk_2796E8088;
  objc_copyWeak(&v7, &location);
  notify_register_dispatch(v3, &self->_featureAvailabilityConditionsDidUpdateNotificationToken, v4, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __86__WDRemoteFeatureAvailabilityInternalSettingsViewController__registerForNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _featureAvailabilityConditionsDidUpdate];
}

- (void)_unregisterForNotifications
{
  if (notify_is_valid_token(self->_featureAvailabilityConditionsDidUpdateNotificationToken))
  {
    featureAvailabilityConditionsDidUpdateNotificationToken = self->_featureAvailabilityConditionsDidUpdateNotificationToken;

    notify_cancel(featureAvailabilityConditionsDidUpdateNotificationToken);
  }
}

- (void)_featureAvailabilityConditionsDidUpdate
{
  [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self reloadUserDefaultsContent];
  tableView = [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self tableView];
  [tableView reloadData];
}

- (void)reloadUserDefaultsContent
{
  userDefaults = [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self userDefaults];
  dictionaryRepresentation = [userDefaults dictionaryRepresentation];
  [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self setUserDefaultsContent:dictionaryRepresentation];

  userDefaultsContent = [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self userDefaultsContent];
  allKeys = [userDefaultsContent allKeys];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__WDRemoteFeatureAvailabilityInternalSettingsViewController_reloadUserDefaultsContent__block_invoke;
  v9[3] = &unk_2796E80B0;
  v9[4] = self;
  v7 = [allKeys hk_filter:v9];
  v8 = [v7 sortedArrayUsingSelector:sel_compare_];
  [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self setUserDefaultsContentKeys:v8];
}

uint64_t __86__WDRemoteFeatureAvailabilityInternalSettingsViewController_reloadUserDefaultsContent__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 conditions];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (id)jsonStringFromDictionary:(id)dictionary
{
  v6 = 0;
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionary options:1 error:&v6];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
  }

  else
  {
    v4 = @"⚠️ Parsing data error";
  }

  return v4;
}

- (id)evaluateRulesForCondition:(id)condition
{
  v20[1] = *MEMORY[0x277D85DE8];
  conditionCopy = condition;
  v5 = NSClassFromString(&cfstr_Hkactivewatchr.isa);
  if (v5)
  {
    v6 = objc_alloc_init(v5);
    currentlocaleCountryCode = [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self currentlocaleCountryCode];
    [v6 setValue:currentlocaleCountryCode forKey:@"onboardingCountryCode"];

    v8 = objc_alloc(MEMORY[0x277CCD8A0]);
    userDefaultsContent = [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self userDefaultsContent];
    v10 = MEMORY[0x277CBEB98];
    v20[0] = conditionCopy;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v12 = [v10 setWithArray:v11];
    v13 = [v8 initWithRawValue:userDefaultsContent dataSource:v6 supportedConditions:v12];

    evaluateAll = [v13 evaluateAll];
    v15 = [evaluateAll objectForKeyedSubscript:conditionCopy];
    bOOLValue = [v15 BOOLValue];

    v17 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)currentlocaleCountryCode
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [currentLocale countryCode];

  return countryCode;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  userDefaultsContentKeys = [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self userDefaultsContentKeys];
  v4 = [userDefaultsContentKeys count];

  if (v4 <= 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self userDefaultsContentKeys:view];
  v5 = [v4 count];

  if (v5)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  userDefaultsContentKeys = [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self userDefaultsContentKeys];
  v7 = [userDefaultsContentKeys count] - 1;

  if (v7 == section)
  {
    v8 = MEMORY[0x277CCACA8];
    currentlocaleCountryCode = [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self currentlocaleCountryCode];
    v10 = [v8 stringWithFormat:@"The current device region from the locale has been used to evaluate the conditions here (%@).", currentlocaleCountryCode];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"default_cell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"default_cell"];
  }

  userDefaultsContentKeys = [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self userDefaultsContentKeys];
  v9 = [userDefaultsContentKeys count];

  if (!v9)
  {
    textLabel = [v7 textLabel];
    [textLabel setText:@"N/A"];

    textLabel2 = [v7 textLabel];
    [textLabel2 setNumberOfLines:1];

    detailTextLabel = [v7 detailTextLabel];
    [detailTextLabel setText:0];
    goto LABEL_14;
  }

  userDefaultsContentKeys2 = [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self userDefaultsContentKeys];
  detailTextLabel = [userDefaultsContentKeys2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  if ([pathCopy row])
  {
    userDefaultsContent = [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self userDefaultsContent];
    v13 = [userDefaultsContent objectForKeyedSubscript:detailTextLabel];

    v14 = [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self jsonStringFromDictionary:v13];
    textLabel3 = [v7 textLabel];
    [textLabel3 setText:v14];

    textLabel4 = [v7 textLabel];
    [textLabel4 setNumberOfLines:0];
  }

  else
  {
    textLabel5 = [v7 textLabel];
    [textLabel5 setText:detailTextLabel];

    textLabel6 = [v7 textLabel];
    [textLabel6 setNumberOfLines:1];

    v24 = [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)self evaluateRulesForCondition:detailTextLabel];
    v13 = v24;
    if (v24)
    {
      if ([v24 BOOLValue])
      {
        v25 = @"🟢";
      }

      else
      {
        v25 = @"🔴";
      }

      detailTextLabel2 = [v7 detailTextLabel];
      v18 = detailTextLabel2;
      v19 = v25;
      goto LABEL_13;
    }
  }

  detailTextLabel2 = [v7 detailTextLabel];
  v18 = detailTextLabel2;
  v19 = 0;
LABEL_13:
  [detailTextLabel2 setText:v19];

LABEL_14:

  return v7;
}

@end