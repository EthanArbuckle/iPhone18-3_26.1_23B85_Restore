@interface SharedWithYouLibraryItemController
- (BOOL)isEqual:(id)equal;
- (BOOL)isSelected;
- (void)didSelectItem;
- (void)updateListContentConfiguration:(id)configuration;
@end

@implementation SharedWithYouLibraryItemController

- (void)updateListContentConfiguration:(id)configuration
{
  v3 = MEMORY[0x277D755B8];
  configurationCopy = configuration;
  v5 = [v3 _systemImageNamed:@"shared.with.you"];
  [configurationCopy setImage:v5];

  v6 = startPageTitleForCollectionType(@"SharedWithYouCollection");
  [configurationCopy setText:v6];
}

- (void)didSelectItem
{
  configuration = [(LibraryItemController *)self configuration];
  libraryItemOpenHandler = [configuration libraryItemOpenHandler];
  [libraryItemOpenHandler openLibrary:@"SharedWithYouCollection"];

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didUseSidebarAction:8];
}

- (BOOL)isSelected
{
  configuration = [(LibraryItemController *)self configuration];
  libraryItemOpenHandler = [configuration libraryItemOpenHandler];
  activeLibraryType = [libraryItemOpenHandler activeLibraryType];
  v5 = [activeLibraryType isEqualToString:@"SharedWithYouCollection"];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end