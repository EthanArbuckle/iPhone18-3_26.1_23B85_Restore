@interface MUTransitFooterActionsSectionController
- (CGRect)impressionsFrame;
- (MUTransitFooterActionsSectionController)initWithTransitLineItem:(id)a3 actionManager:(id)a4;
@end

@implementation MUTransitFooterActionsSectionController

- (CGRect)impressionsFrame
{
  v2 = [(MUTransitFooterActionsSectionController *)self sectionView];
  [v2 frame];
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

- (MUTransitFooterActionsSectionController)initWithTransitLineItem:(id)a3 actionManager:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = MUTransitFooterActionsSectionController;
  v7 = [(MUTransitLineItemSectionController *)&v11 initWithTransitLineItem:a3];
  if (v7)
  {
    v8 = [[MUFooterActionsSectionController alloc] initWithActionManager:v6];
    underlyingSectionController = v7->_underlyingSectionController;
    v7->_underlyingSectionController = v8;
  }

  return v7;
}

@end