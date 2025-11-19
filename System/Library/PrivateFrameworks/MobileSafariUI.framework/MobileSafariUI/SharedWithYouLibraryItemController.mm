@interface SharedWithYouLibraryItemController
- (BOOL)isEqual:(id)a3;
- (BOOL)isSelected;
- (void)didSelectItem;
- (void)updateListContentConfiguration:(id)a3;
@end

@implementation SharedWithYouLibraryItemController

- (void)updateListContentConfiguration:(id)a3
{
  v3 = MEMORY[0x277D755B8];
  v4 = a3;
  v5 = [v3 _systemImageNamed:@"shared.with.you"];
  [v4 setImage:v5];

  v6 = startPageTitleForCollectionType(@"SharedWithYouCollection");
  [v4 setText:v6];
}

- (void)didSelectItem
{
  v2 = [(LibraryItemController *)self configuration];
  v3 = [v2 libraryItemOpenHandler];
  [v3 openLibrary:@"SharedWithYouCollection"];

  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 didUseSidebarAction:8];
}

- (BOOL)isSelected
{
  v2 = [(LibraryItemController *)self configuration];
  v3 = [v2 libraryItemOpenHandler];
  v4 = [v3 activeLibraryType];
  v5 = [v4 isEqualToString:@"SharedWithYouCollection"];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end