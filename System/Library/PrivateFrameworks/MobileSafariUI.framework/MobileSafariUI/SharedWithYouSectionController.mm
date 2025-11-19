@interface SharedWithYouSectionController
- (SharedWithYouSectionController)initWithConfiguration:(id)a3;
- (id)itemControllers;
- (void)registerItemsWithRegistration:(id)a3;
@end

@implementation SharedWithYouSectionController

- (SharedWithYouSectionController)initWithConfiguration:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SharedWithYouSectionController;
  v5 = [(LibrarySectionController *)&v12 initWithConfiguration:v4];
  if (v5)
  {
    v6 = [[CloudTabsLibraryItemController alloc] initWithConfiguration:v4];
    cloudTabsItemController = v5->_cloudTabsItemController;
    v5->_cloudTabsItemController = v6;

    v8 = [[SharedWithYouLibraryItemController alloc] initWithConfiguration:v4];
    friendsItemController = v5->_friendsItemController;
    v5->_friendsItemController = v8;

    v10 = v5;
  }

  return v5;
}

- (id)itemControllers
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = v3;
  if (self->_friendsItemController)
  {
    [v3 addObject:?];
  }

  v5 = +[Application sharedApplication];
  v6 = [v5 browserWindowController];
  v7 = [v6 cloudTabsEnabled];

  if (v7)
  {
    [v4 addObject:self->_cloudTabsItemController];
  }

  return v4;
}

- (void)registerItemsWithRegistration:(id)a3
{
  cloudTabsItemController = self->_cloudTabsItemController;
  v5 = a3;
  [v5 registerItem:cloudTabsItemController forCollectionType:@"CloudTabsCollection"];
  [v5 registerItem:self->_friendsItemController forCollectionType:@"SharedWithYouCollection"];
}

@end