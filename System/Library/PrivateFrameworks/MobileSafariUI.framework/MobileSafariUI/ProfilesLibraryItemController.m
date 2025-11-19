@interface ProfilesLibraryItemController
- (id)accessories;
- (id)tabGroupProvider;
- (void)updateListContentConfiguration:(id)a3;
@end

@implementation ProfilesLibraryItemController

- (void)updateListContentConfiguration:(id)a3
{
  v4 = MEMORY[0x277D755B8];
  v12 = a3;
  v5 = [v4 _systemImageNamed:@"person.crop.rectangle.stack"];
  [v12 setImage:v5];

  v6 = _WBSLocalizedString();
  [v12 setText:v6];

  v7 = [(ProfilesLibraryItemController *)self tabGroupProvider];
  v8 = [v7 activeProfile];
  v9 = [v8 title];
  [v12 setSecondaryText:v9];

  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v11 = [v12 secondaryTextProperties];
  [v11 setFont:v10];

  [v12 setPrefersSideBySideTextAndSecondaryText:1];
}

- (id)accessories
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(ProfilesLibraryItemController *)self tabGroupProvider];
  v3 = objc_alloc(MEMORY[0x277D75278]);
  v4 = [v2 menuForSwitchingProfiles];
  v5 = [v3 initWithMenu:v4];

  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (id)tabGroupProvider
{
  v2 = [(LibraryItemController *)self configuration];
  v3 = [v2 tabGroupProvider];

  return v3;
}

@end