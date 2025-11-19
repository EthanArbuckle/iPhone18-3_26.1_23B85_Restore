@interface MUTransitLineItemSectionController
- (MUInfoCardAnalyticsDelegate)analyticsDelegate;
- (MUTransitLineItemSectionController)initWithTransitLineItem:(id)a3;
- (NSArray)sectionViews;
- (UIView)sectionView;
- (id)analyticsModuleForAction:(int)a3 presentationOptions:(id)a4;
@end

@implementation MUTransitLineItemSectionController

- (MUInfoCardAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (id)analyticsModuleForAction:(int)a3 presentationOptions:(id)a4
{
  v4 = objc_opt_new();

  return v4;
}

- (NSArray)sectionViews
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(MUTransitLineItemSectionController *)self sectionView];
  v6[0] = v2;
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

- (MUTransitLineItemSectionController)initWithTransitLineItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUTransitLineItemSectionController;
  v6 = [(MUTransitLineItemSectionController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lineItem, a3);
  }

  return v7;
}

@end