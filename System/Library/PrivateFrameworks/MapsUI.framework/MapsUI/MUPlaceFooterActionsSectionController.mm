@interface MUPlaceFooterActionsSectionController
- (MUPlaceFooterActionsSectionController)initWithMapItem:(id)item actionManager:(id)manager;
@end

@implementation MUPlaceFooterActionsSectionController

- (MUPlaceFooterActionsSectionController)initWithMapItem:(id)item actionManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = MUPlaceFooterActionsSectionController;
  v7 = [(MUPlaceSectionController *)&v11 initWithMapItem:item];
  if (v7)
  {
    v8 = [[MUFooterActionsSectionController alloc] initWithActionManager:managerCopy];
    underlyingSectionController = v7->_underlyingSectionController;
    v7->_underlyingSectionController = v8;
  }

  return v7;
}

@end