@interface CloudTabsLibraryItemController
- (BOOL)isSelected;
- (void)didSelectItem;
- (void)updateListContentConfiguration:(id)a3;
@end

@implementation CloudTabsLibraryItemController

- (void)updateListContentConfiguration:(id)a3
{
  v3 = MEMORY[0x277D755B8];
  v4 = a3;
  v5 = [v3 systemImageNamed:@"icloud"];
  [v4 setImage:v5];

  v6 = startPageTitleForCollectionType(@"CloudTabsCollection");
  [v4 setText:v6];
}

- (void)didSelectItem
{
  v2 = [(LibraryItemController *)self configuration];
  v3 = [v2 libraryItemOpenHandler];
  [v3 openLibrary:@"CloudTabsCollection"];

  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 didUseSidebarAction:9];
}

- (BOOL)isSelected
{
  v2 = [(LibraryItemController *)self configuration];
  v3 = [v2 libraryItemOpenHandler];
  v4 = [v3 activeLibraryType];
  v5 = [v4 isEqualToString:@"CloudTabsCollection"];

  return v5;
}

@end