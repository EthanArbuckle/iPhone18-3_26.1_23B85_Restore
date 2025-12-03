@interface MOSuggestionSheetPrivateAccessSettingsController
- (id)specifiers;
- (void)didTapSuggestionNotificationSettings:(id)settings;
- (void)didTapSuggestionPrivacySettings:(id)settings;
@end

@implementation MOSuggestionSheetPrivateAccessSettingsController

- (id)specifiers
{
  array = [MEMORY[0x277CBEB18] array];
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  specifier = [(MOSuggestionSheetPrivateAccessSettingsController *)self specifier];
  v4 = [specifier objectForKeyedSubscript:*MEMORY[0x277D3FD90]];
  v35 = v4;
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:v4];
    bundleIdentifier = [v5 bundleIdentifier];
    v7 = [v5 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
    if (isValidString(v7))
    {
      v8 = v7;

      bundleIdentifier = v8;
    }

    v9 = [v5 objectForInfoDictionaryKey:@"CFBundleName"];

    if (isValidString(v9))
    {
      v10 = v9;

      bundleIdentifier = v10;
    }
  }

  else
  {
    bundleIdentifier = @"Unknown";
  }

  v32 = bundleIdentifier;
  v11 = +[MOSuggestionSheetSettingsController onboardingSettingsBundle];
  v34 = [v11 localizedStringForKey:@"Private Access" value:&stru_286BDDEB8 table:0];
  v12 = MEMORY[0x277CCACA8];
  v13 = v11;
  v14 = [v11 localizedStringForKey:@"“%@” can show your moments but can only access the items you select." value:&stru_286BDDEB8 table:0];
  v33 = [v12 stringWithFormat:v14, bundleIdentifier];

  v15 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
  [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x277D40140]];

  [v15 setObject:NSClassFromString(&cfstr_Modataaccessin.isa) forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v15 setObject:v34 forKeyedSubscript:@"MOTitle"];
  [v15 setObject:v33 forKeyedSubscript:@"MOBody"];
  emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v17 = MEMORY[0x277D3FAD8];
  v18 = [v13 localizedStringForKey:@"Privacy & Security" value:&stru_286BDDEB8 table:0];
  v19 = [v17 preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:13 edit:0];

  v20 = *MEMORY[0x277D3FD80];
  v21 = MEMORY[0x277CBEC38];
  [v19 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  [v19 setButtonAction:sel_didTapSuggestionPrivacySettings_];
  v22 = MEMORY[0x277D3FAD8];
  v23 = [v13 localizedStringForKey:@"Notifications" value:&stru_286BDDEB8 table:0];
  v24 = [v22 preferenceSpecifierNamed:v23 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v24 setProperty:v21 forKey:v20];
  [v24 setButtonAction:sel_didTapSuggestionNotificationSettings_];
  [array addObject:emptyGroupSpecifier];
  [array addObject:v15];
  [array addObject:emptyGroupSpecifier2];
  [array addObject:v19];
  [array addObject:v24];
  v25 = *MEMORY[0x277D3FC48];
  v26 = *(&self->super.super.super.super.super.isa + v25);
  *(&self->super.super.super.super.super.isa + v25) = array;
  v27 = array;

  v28 = *(&self->super.super.super.super.super.isa + v25);
  v29 = v28;

  return v28;
}

- (void)didTapSuggestionPrivacySettings:(id)settings
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Privacy&path=JOURNALING_SUGGESTIONS"];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v4 withOptions:0];
}

- (void)didTapSuggestionNotificationSettings:(id)settings
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"app-prefs:com.apple.momentsd.MOUserNotifications&target=com.apple.settings.notifications"];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v4 withOptions:0];
}

@end