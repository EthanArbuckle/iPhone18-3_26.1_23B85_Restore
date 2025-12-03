@interface CloudTabsLibraryItemController
- (BOOL)isSelected;
- (void)didSelectItem;
- (void)updateListContentConfiguration:(id)configuration;
@end

@implementation CloudTabsLibraryItemController

- (void)updateListContentConfiguration:(id)configuration
{
  v3 = MEMORY[0x277D755B8];
  configurationCopy = configuration;
  v5 = [v3 systemImageNamed:@"icloud"];
  [configurationCopy setImage:v5];

  v6 = startPageTitleForCollectionType(@"CloudTabsCollection");
  [configurationCopy setText:v6];
}

- (void)didSelectItem
{
  configuration = [(LibraryItemController *)self configuration];
  libraryItemOpenHandler = [configuration libraryItemOpenHandler];
  [libraryItemOpenHandler openLibrary:@"CloudTabsCollection"];

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didUseSidebarAction:9];
}

- (BOOL)isSelected
{
  configuration = [(LibraryItemController *)self configuration];
  libraryItemOpenHandler = [configuration libraryItemOpenHandler];
  activeLibraryType = [libraryItemOpenHandler activeLibraryType];
  v5 = [activeLibraryType isEqualToString:@"CloudTabsCollection"];

  return v5;
}

@end