@interface MCUISpecifierProvider
- (BOOL)isSectionPopulated:(id)a3 outIsPlural:(BOOL *)a4;
- (MCUISpecifierProvider)initWithDelegate:(id)a3;
- (MCUISpecifierProviderDelegate)delegate;
- (id)specifierWithName:(id)a3 detail:(Class)a4;
- (id)specifiersForInstalledProfiles:(id)a3;
- (id)specifiersForMDMProfiles:(id)a3;
- (id)specifiersForUninstalledProfiles:(id)a3;
- (void)registerCustomCellClassesInTableView:(id)a3;
@end

@implementation MCUISpecifierProvider

- (MCUISpecifierProvider)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MCUISpecifierProvider;
  v5 = [(MCUISpecifierProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (BOOL)isSectionPopulated:(id)a3 outIsPlural:(BOOL *)a4
{
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
  {
    *a4 = [v6 count] > 1;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)specifierWithName:(id)a3 detail:(Class)a4
{
  v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:a3 target:self set:0 get:0 detail:a4 cell:1 edit:0];
  [v4 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [MEMORY[0x277D03250] setGearIconForSpecifier:v4];

  return v4;
}

- (void)registerCustomCellClassesInTableView:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = +[(PSTableCell *)MCUISpecifierCell];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (id)specifiersForMDMProfiles:(id)a3
{
  v4 = a3;
  v5 = MCUILocalizedString(@"MOBILE_DEVICE_MANAGEMENT");
  v6 = MCUILocalizedString(@"MOBILE_DEVICE_MANAGEMENT");
  v7 = [(MCUISpecifierProvider *)self _specifiersForProfiles:v4 singularHeader:v5 pluralHeaader:v6 profilesInstalled:1];

  return v7;
}

- (id)specifiersForUninstalledProfiles:(id)a3
{
  v4 = a3;
  v5 = MCUILocalizedString(@"UNINSTALLED_PROFILE");
  v6 = MCUILocalizedString(@"UNINSTALLED_PROFILE_PLURAL");
  v7 = [(MCUISpecifierProvider *)self _specifiersForProfiles:v4 singularHeader:v5 pluralHeaader:v6 profilesInstalled:0];

  return v7;
}

- (id)specifiersForInstalledProfiles:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
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