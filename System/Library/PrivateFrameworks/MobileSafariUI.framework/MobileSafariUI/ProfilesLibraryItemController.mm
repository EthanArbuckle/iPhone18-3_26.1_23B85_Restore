@interface ProfilesLibraryItemController
- (id)accessories;
- (id)tabGroupProvider;
- (void)updateListContentConfiguration:(id)configuration;
@end

@implementation ProfilesLibraryItemController

- (void)updateListContentConfiguration:(id)configuration
{
  v4 = MEMORY[0x277D755B8];
  configurationCopy = configuration;
  v5 = [v4 _systemImageNamed:@"person.crop.rectangle.stack"];
  [configurationCopy setImage:v5];

  v6 = _WBSLocalizedString();
  [configurationCopy setText:v6];

  tabGroupProvider = [(ProfilesLibraryItemController *)self tabGroupProvider];
  activeProfile = [tabGroupProvider activeProfile];
  title = [activeProfile title];
  [configurationCopy setSecondaryText:title];

  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  secondaryTextProperties = [configurationCopy secondaryTextProperties];
  [secondaryTextProperties setFont:v10];

  [configurationCopy setPrefersSideBySideTextAndSecondaryText:1];
}

- (id)accessories
{
  v8[1] = *MEMORY[0x277D85DE8];
  tabGroupProvider = [(ProfilesLibraryItemController *)self tabGroupProvider];
  v3 = objc_alloc(MEMORY[0x277D75278]);
  menuForSwitchingProfiles = [tabGroupProvider menuForSwitchingProfiles];
  v5 = [v3 initWithMenu:menuForSwitchingProfiles];

  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (id)tabGroupProvider
{
  configuration = [(LibraryItemController *)self configuration];
  tabGroupProvider = [configuration tabGroupProvider];

  return tabGroupProvider;
}

@end