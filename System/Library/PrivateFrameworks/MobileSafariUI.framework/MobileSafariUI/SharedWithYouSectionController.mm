@interface SharedWithYouSectionController
- (SharedWithYouSectionController)initWithConfiguration:(id)configuration;
- (id)itemControllers;
- (void)registerItemsWithRegistration:(id)registration;
@end

@implementation SharedWithYouSectionController

- (SharedWithYouSectionController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = SharedWithYouSectionController;
  v5 = [(LibrarySectionController *)&v12 initWithConfiguration:configurationCopy];
  if (v5)
  {
    v6 = [[CloudTabsLibraryItemController alloc] initWithConfiguration:configurationCopy];
    cloudTabsItemController = v5->_cloudTabsItemController;
    v5->_cloudTabsItemController = v6;

    v8 = [[SharedWithYouLibraryItemController alloc] initWithConfiguration:configurationCopy];
    friendsItemController = v5->_friendsItemController;
    v5->_friendsItemController = v8;

    v10 = v5;
  }

  return v5;
}

- (id)itemControllers
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = array;
  if (self->_friendsItemController)
  {
    [array addObject:?];
  }

  v5 = +[Application sharedApplication];
  browserWindowController = [v5 browserWindowController];
  cloudTabsEnabled = [browserWindowController cloudTabsEnabled];

  if (cloudTabsEnabled)
  {
    [v4 addObject:self->_cloudTabsItemController];
  }

  return v4;
}

- (void)registerItemsWithRegistration:(id)registration
{
  cloudTabsItemController = self->_cloudTabsItemController;
  registrationCopy = registration;
  [registrationCopy registerItem:cloudTabsItemController forCollectionType:@"CloudTabsCollection"];
  [registrationCopy registerItem:self->_friendsItemController forCollectionType:@"SharedWithYouCollection"];
}

@end