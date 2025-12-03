@interface HPSDeviceVersionDetailController
- (id)getBudVersion;
- (id)getCaseVersion;
- (id)specifiers;
- (void)userDidTapLink:(id)link;
@end

@implementation HPSDeviceVersionDetailController

- (id)getBudVersion
{
  userInfo = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"device-bud-version"];

  return v3;
}

- (id)getCaseVersion
{
  userInfo = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"device-case-version"];

  return v3;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_286339F58 target:self set:0 get:0 detail:0 cell:0 edit:0];
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"ACCESSORY_VERSION_DETAIL_FOOTER" value:&stru_286339F58 table:@"DeviceConfig"];
    v10 = [v7 stringWithFormat:v9, @"support.apple.com"];

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v6 setProperty:v12 forKey:*MEMORY[0x277D3FF48]];

    [v6 setProperty:v10 forKey:*MEMORY[0x277D3FF70]];
    v29.location = [v10 rangeOfString:@"support.apple.com"];
    v13 = NSStringFromRange(v29);
    [v6 setProperty:v13 forKey:*MEMORY[0x277D3FF58]];

    v14 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v6 setProperty:v14 forKey:*MEMORY[0x277D3FF68]];

    [v6 setProperty:@"userDidTapLink:" forKey:*MEMORY[0x277D3FF50]];
    [v5 addObject:v6];
    getBudVersion = [(HPSDeviceVersionDetailController *)self getBudVersion];

    v16 = MEMORY[0x277D3FED8];
    if (getBudVersion)
    {
      v17 = MEMORY[0x277D3FAD8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"ACCESSORY_ABOUT_BUD_VERSION_FIRMWARE" value:&stru_286339F58 table:@"DeviceConfig"];
      v20 = [v17 preferenceSpecifierNamed:v19 target:self set:0 get:sel_getBudVersion detail:0 cell:4 edit:0];

      [v20 setProperty:MEMORY[0x277CBEC38] forKey:*v16];
      [v5 addObject:v20];
    }

    getCaseVersion = [(HPSDeviceVersionDetailController *)self getCaseVersion];

    if (getCaseVersion)
    {
      v22 = MEMORY[0x277D3FAD8];
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"ACCESSORY_ABOUT_CASE_VERSION_FIRMWARE" value:&stru_286339F58 table:@"DeviceConfig"];
      v25 = [v22 preferenceSpecifierNamed:v24 target:self set:0 get:sel_getCaseVersion detail:0 cell:4 edit:0];

      [v25 setProperty:MEMORY[0x277CBEC38] forKey:*v16];
      [v5 addObject:v25];
    }

    v26 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)userDidTapLink:(id)link
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/ht213317?cid=mc-ols-airpods-article_ht213317-ios_ui-06152022"];
  [defaultWorkspace openSensitiveURL:v3 withOptions:0];
}

@end