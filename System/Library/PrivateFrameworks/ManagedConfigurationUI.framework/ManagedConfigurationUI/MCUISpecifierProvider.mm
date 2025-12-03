@interface MCUISpecifierProvider
- (BOOL)isSectionPopulated:(id)populated outIsPlural:(BOOL *)plural;
- (MCUISpecifierProvider)initWithDelegate:(id)delegate;
- (MCUISpecifierProviderDelegate)delegate;
- (id)specifierWithName:(id)name detail:(Class)detail;
- (id)specifiersForInstalledProfiles:(id)profiles;
- (id)specifiersForMDMProfiles:(id)profiles;
- (id)specifiersForUninstalledProfiles:(id)profiles;
- (void)registerCustomCellClassesInTableView:(id)view;
@end

@implementation MCUISpecifierProvider

- (MCUISpecifierProvider)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = MCUISpecifierProvider;
  v5 = [(MCUISpecifierProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (BOOL)isSectionPopulated:(id)populated outIsPlural:(BOOL *)plural
{
  populatedCopy = populated;
  v6 = populatedCopy;
  if (populatedCopy && [populatedCopy count])
  {
    *plural = [v6 count] > 1;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)specifierWithName:(id)name detail:(Class)detail
{
  v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:name target:self set:0 get:0 detail:detail cell:1 edit:0];
  [v4 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [MEMORY[0x277D03250] setGearIconForSpecifier:v4];

  return v4;
}

- (void)registerCustomCellClassesInTableView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_class();
  v5 = +[(PSTableCell *)MCUISpecifierCell];
  [viewCopy registerClass:v4 forCellReuseIdentifier:v5];
}

- (id)specifiersForMDMProfiles:(id)profiles
{
  profilesCopy = profiles;
  v5 = MCUILocalizedString(@"MOBILE_DEVICE_MANAGEMENT");
  v6 = MCUILocalizedString(@"MOBILE_DEVICE_MANAGEMENT");
  v7 = [(MCUISpecifierProvider *)self _specifiersForProfiles:profilesCopy singularHeader:v5 pluralHeaader:v6 profilesInstalled:1];

  return v7;
}

- (id)specifiersForUninstalledProfiles:(id)profiles
{
  profilesCopy = profiles;
  v5 = MCUILocalizedString(@"UNINSTALLED_PROFILE");
  v6 = MCUILocalizedString(@"UNINSTALLED_PROFILE_PLURAL");
  v7 = [(MCUISpecifierProvider *)self _specifiersForProfiles:profilesCopy singularHeader:v5 pluralHeaader:v6 profilesInstalled:0];

  return v7;
}

- (id)specifiersForInstalledProfiles:(id)profiles
{
  profilesCopy = profiles;
  v5 = profilesCopy;
  if (profilesCopy && [profilesCopy count])
  {
    v6 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_5];
    v7 = [v5 filteredArrayUsingPredicate:v6];

    v5 = v7;
  }

  v8 = MCUILocalizedString(@"CONFIGURATION_PROFILE");
  v9 = MCUILocalizedString(@"CONFIGURATION_PROFILE_PLURAL");
  v10 = [(MCUISpecifierProvider *)self _specifiersForProfiles:v5 singularHeader:v8 pluralHeaader:v9 profilesInstalled:1];

  return v10;
}

- (MCUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end