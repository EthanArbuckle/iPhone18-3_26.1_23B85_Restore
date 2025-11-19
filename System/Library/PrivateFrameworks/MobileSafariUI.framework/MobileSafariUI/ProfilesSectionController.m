@interface ProfilesSectionController
- (ProfilesSectionController)initWithConfiguration:(id)a3;
- (id)itemControllers;
@end

@implementation ProfilesSectionController

- (ProfilesSectionController)initWithConfiguration:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ProfilesSectionController;
  v5 = [(LibrarySectionController *)&v10 initWithConfiguration:v4];
  if (v5)
  {
    v6 = [[ProfilesLibraryItemController alloc] initWithConfiguration:v4];
    profilesItemController = v5->_profilesItemController;
    v5->_profilesItemController = v6;

    v8 = v5;
  }

  return v5;
}

- (id)itemControllers
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_profilesItemController;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end