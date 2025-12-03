@interface MUTransitLineItemSectionController
- (MUInfoCardAnalyticsDelegate)analyticsDelegate;
- (MUTransitLineItemSectionController)initWithTransitLineItem:(id)item;
- (NSArray)sectionViews;
- (UIView)sectionView;
- (id)analyticsModuleForAction:(int)action presentationOptions:(id)options;
@end

@implementation MUTransitLineItemSectionController

- (MUInfoCardAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (id)analyticsModuleForAction:(int)action presentationOptions:(id)options
{
  v4 = objc_opt_new();

  return v4;
}

- (NSArray)sectionViews
{
  v6[1] = *MEMORY[0x1E69E9840];
  sectionView = [(MUTransitLineItemSectionController *)self sectionView];
  v6[0] = sectionView;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (UIView)sectionView
{
  sectionView = self->_sectionView;
  if (!sectionView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_sectionView;
    self->_sectionView = v5;

    sectionView = self->_sectionView;
  }

  return sectionView;
}

- (MUTransitLineItemSectionController)initWithTransitLineItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = MUTransitLineItemSectionController;
  v6 = [(MUTransitLineItemSectionController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lineItem, item);
  }

  return v7;
}

@end