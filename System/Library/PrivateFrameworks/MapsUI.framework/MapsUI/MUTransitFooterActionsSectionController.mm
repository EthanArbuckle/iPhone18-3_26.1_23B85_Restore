@interface MUTransitFooterActionsSectionController
- (CGRect)impressionsFrame;
- (MUTransitFooterActionsSectionController)initWithTransitLineItem:(id)item actionManager:(id)manager;
@end

@implementation MUTransitFooterActionsSectionController

- (CGRect)impressionsFrame
{
  sectionView = [(MUTransitFooterActionsSectionController *)self sectionView];
  [sectionView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (MUTransitFooterActionsSectionController)initWithTransitLineItem:(id)item actionManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = MUTransitFooterActionsSectionController;
  v7 = [(MUTransitLineItemSectionController *)&v11 initWithTransitLineItem:item];
  if (v7)
  {
    v8 = [[MUFooterActionsSectionController alloc] initWithActionManager:managerCopy];
    underlyingSectionController = v7->_underlyingSectionController;
    v7->_underlyingSectionController = v8;
  }

  return v7;
}

@end