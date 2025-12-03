@interface HUAccessorySettingsProfileItem
- (HUAccessorySettingsProfileItem)initWithProfile:(id)profile setting:(id)setting;
- (NSUUID)uniqueIdentifier;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUAccessorySettingsProfileItem

- (HUAccessorySettingsProfileItem)initWithProfile:(id)profile setting:(id)setting
{
  profileCopy = profile;
  settingCopy = setting;
  if (!settingCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsProfileItem.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"setting"}];
  }

  v14.receiver = self;
  v14.super_class = HUAccessorySettingsProfileItem;
  v10 = [(HUAccessorySettingsProfileItem *)&v14 init];
  if (v10)
  {
    if (!profileCopy)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v10 file:@"HUAccessorySettingsProfileItem.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"profile"}];
    }

    objc_storeStrong(&v10->_profile, profile);
    objc_storeStrong(&v10->_setting, setting);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  profile = [(HUAccessorySettingsProfileItem *)self profile];
  setting = [(HUAccessorySettingsProfileItem *)self setting];
  v7 = [v4 initWithProfile:profile setting:setting];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (NSUUID)uniqueIdentifier
{
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  profile = [(HUAccessorySettingsProfileItem *)self profile];
  uUID = [profile UUID];
  v6 = [v3 initWithUUIDString:uUID];

  return v6;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_alloc_init(MEMORY[0x277D14858]);
  v5 = MEMORY[0x277CBEB98];
  setting = [(HUAccessorySettingsProfileItem *)self setting];
  v7 = [v5 setWithObjects:{setting, 0}];
  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  profile = [(HUAccessorySettingsProfileItem *)self profile];
  displayName = [profile displayName];

  if (displayName)
  {
    profile2 = [(HUAccessorySettingsProfileItem *)self profile];
    displayName2 = [profile2 displayName];
    [v4 setObject:displayName2 forKeyedSubscript:*MEMORY[0x277D13F60]];
  }

  v15 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v15;
}

@end