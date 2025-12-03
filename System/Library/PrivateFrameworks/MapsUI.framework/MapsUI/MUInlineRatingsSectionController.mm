@interface MUInlineRatingsSectionController
- (MUInlineRatingsSectionController)initWithMapItem:(id)item inlineRatingsViewProvider:(id)provider;
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (UIView)sectionView;
- (void)_setupSectionView;
@end

@implementation MUInlineRatingsSectionController

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  v2 = [MUPlaceSectionHeaderViewModel alloc];
  v3 = _MULocalizedStringFromThisBundle(@"Rate This Place [Section Header]");
  v4 = [(MUPlaceSectionHeaderViewModel *)v2 initWithTitleString:v3];

  return v4;
}

- (void)_setupSectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);
  v4 = [WeakRetained inlineRatingsSectionControllerRequestsContentViewController:self];
  inlineRatingsViewController = self->_inlineRatingsViewController;
  self->_inlineRatingsViewController = v4;

  [(UIViewController *)self->_inlineRatingsViewController setViewRespectsSystemMinimumLayoutMargins:0];
  v6 = *MEMORY[0x1E69DC5C0];
  v7 = *(MEMORY[0x1E69DC5C0] + 8);
  v8 = *(MEMORY[0x1E69DC5C0] + 16);
  v9 = *(MEMORY[0x1E69DC5C0] + 24);
  view = [(UIViewController *)self->_inlineRatingsViewController view];
  [view setDirectionalLayoutMargins:{v6, v7, v8, v9}];

  if (self->_inlineRatingsViewController)
  {
    v11 = [MUPlaceSectionView alloc];
    sectionHeaderViewModel = [(MUInlineRatingsSectionController *)self sectionHeaderViewModel];
    v13 = [(MUPlaceSectionView *)v11 initWithStyle:2 sectionHeaderViewModel:sectionHeaderViewModel];
    sectionView = self->_sectionView;
    self->_sectionView = v13;

    v15 = self->_sectionView;
    view2 = [(UIViewController *)self->_inlineRatingsViewController view];
    [(MUPlaceSectionView *)v15 attachViewToContentView:view2];
  }
}

- (UIView)sectionView
{
  sectionView = self->_sectionView;
  if (!sectionView)
  {
    [(MUInlineRatingsSectionController *)self _setupSectionView];
    sectionView = self->_sectionView;
  }

  return sectionView;
}

- (MUInlineRatingsSectionController)initWithMapItem:(id)item inlineRatingsViewProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = MUInlineRatingsSectionController;
  v7 = [(MUPlaceSectionController *)&v10 initWithMapItem:item];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_viewProvider, providerCopy);
    [(MUInlineRatingsSectionController *)v8 _setupSectionView];
  }

  return v8;
}

@end