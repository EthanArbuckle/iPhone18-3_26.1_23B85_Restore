@interface MUPlaceFooterActionsSectionController
- (MUPlaceFooterActionsSectionController)initWithMapItem:(id)a3 actionManager:(id)a4;
@end

@implementation MUPlaceFooterActionsSectionController

- (MUPlaceFooterActionsSectionController)initWithMapItem:(id)a3 actionManager:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = MUPlaceFooterActionsSectionController;
  v7 = [(MUPlaceSectionController *)&v11 initWithMapItem:a3];
  if (v7)
  {
    v8 = [[MUFooterActionsSectionController alloc] initWithActionManager:v6];
    underlyingSectionController = v7->_underlyingSectionController;
    v7->_underlyingSectionController = v8;
  }

  return v7;
}

@end