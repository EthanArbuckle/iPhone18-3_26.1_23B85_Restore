@interface MUBrowseCategorySectionController
- (MUBrowseCategorySectionController)initWithMapItem:(id)a3;
- (MUBrowseCategorySectionControllerDelegate)browseCategoryDelegate;
- (void)_setupSectionView;
- (void)categoryBrowseViewController:(id)a3 didTapOnSearchCategory:(id)a4;
@end

@implementation MUBrowseCategorySectionController

- (MUBrowseCategorySectionControllerDelegate)browseCategoryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_browseCategoryDelegate);

  return WeakRetained;
}

- (void)categoryBrowseViewController:(id)a3 didTapOnSearchCategory:(id)a4
{
  v5 = a4;
  v6 = [(MUBrowseCategorySectionController *)self browseCategoryDelegate];
  [v6 browseCategorySectionController:self didTapOnSearchCategory:v5];
}

- (void)_setupSectionView
{
  v3 = [MUBrowseCategoryViewController alloc];
  v4 = [(MUPlaceSectionController *)self mapItem];
  v5 = [(MUBrowseCategoryViewController *)v3 initWithMapItem:v4];
  browseCategoryVC = self->_browseCategoryVC;
  self->_browseCategoryVC = v5;

  [(MUBrowseCategoryViewController *)self->_browseCategoryVC setDisableBottomPadding:1];
  v7 = [(MUBrowseCategoryViewController *)self->_browseCategoryVC view];
  [v7 setPreservesSuperviewLayoutMargins:0];

  v8 = *MEMORY[0x1E69DDCE0];
  v9 = *(MEMORY[0x1E69DDCE0] + 8);
  v10 = *(MEMORY[0x1E69DDCE0] + 16);
  v11 = *(MEMORY[0x1E69DDCE0] + 24);
  v12 = [(MUBrowseCategoryViewController *)self->_browseCategoryVC view];
  [v12 setLayoutMargins:{v8, v9, v10, v11}];

  [(MUBrowseCategoryViewController *)self->_browseCategoryVC setDelegate:self];
  v13 = [[MUPlaceSectionView alloc] initWithStyle:0 sectionHeaderViewModel:0];
  sectionView = self->_sectionView;
  self->_sectionView = v13;

  [(MUPlaceSectionView *)self->_sectionView setAccessibilityIdentifier:@"VenuesBrowseCategorySection"];
  v15 = self->_sectionView;
  v16 = [(MUBrowseCategoryViewController *)self->_browseCategoryVC view];
  [(MUPlaceSectionView *)v15 attachViewToContentView:v16];
}

- (MUBrowseCategorySectionController)initWithMapItem:(id)a3
{
  v8.receiver = self;
  v8.super_class = MUBrowseCategorySectionController;
  v3 = [(MUPlaceSectionController *)&v8 initWithMapItem:a3];
  if (v3)
  {
    v4 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v4))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUBrowseCategorySectionControllerInit", "", v7, 2u);
    }

    [(MUBrowseCategorySectionController *)v3 _setupSectionView];
    v5 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v5))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUBrowseCategorySectionControllerInit", "", v7, 2u);
    }
  }

  return v3;
}

@end