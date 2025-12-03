@interface MUBrowseCategorySectionController
- (MUBrowseCategorySectionController)initWithMapItem:(id)item;
- (MUBrowseCategorySectionControllerDelegate)browseCategoryDelegate;
- (void)_setupSectionView;
- (void)categoryBrowseViewController:(id)controller didTapOnSearchCategory:(id)category;
@end

@implementation MUBrowseCategorySectionController

- (MUBrowseCategorySectionControllerDelegate)browseCategoryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_browseCategoryDelegate);

  return WeakRetained;
}

- (void)categoryBrowseViewController:(id)controller didTapOnSearchCategory:(id)category
{
  categoryCopy = category;
  browseCategoryDelegate = [(MUBrowseCategorySectionController *)self browseCategoryDelegate];
  [browseCategoryDelegate browseCategorySectionController:self didTapOnSearchCategory:categoryCopy];
}

- (void)_setupSectionView
{
  v3 = [MUBrowseCategoryViewController alloc];
  mapItem = [(MUPlaceSectionController *)self mapItem];
  v5 = [(MUBrowseCategoryViewController *)v3 initWithMapItem:mapItem];
  browseCategoryVC = self->_browseCategoryVC;
  self->_browseCategoryVC = v5;

  [(MUBrowseCategoryViewController *)self->_browseCategoryVC setDisableBottomPadding:1];
  view = [(MUBrowseCategoryViewController *)self->_browseCategoryVC view];
  [view setPreservesSuperviewLayoutMargins:0];

  v8 = *MEMORY[0x1E69DDCE0];
  v9 = *(MEMORY[0x1E69DDCE0] + 8);
  v10 = *(MEMORY[0x1E69DDCE0] + 16);
  v11 = *(MEMORY[0x1E69DDCE0] + 24);
  view2 = [(MUBrowseCategoryViewController *)self->_browseCategoryVC view];
  [view2 setLayoutMargins:{v8, v9, v10, v11}];

  [(MUBrowseCategoryViewController *)self->_browseCategoryVC setDelegate:self];
  v13 = [[MUPlaceSectionView alloc] initWithStyle:0 sectionHeaderViewModel:0];
  sectionView = self->_sectionView;
  self->_sectionView = v13;

  [(MUPlaceSectionView *)self->_sectionView setAccessibilityIdentifier:@"VenuesBrowseCategorySection"];
  v15 = self->_sectionView;
  view3 = [(MUBrowseCategoryViewController *)self->_browseCategoryVC view];
  [(MUPlaceSectionView *)v15 attachViewToContentView:view3];
}

- (MUBrowseCategorySectionController)initWithMapItem:(id)item
{
  v8.receiver = self;
  v8.super_class = MUBrowseCategorySectionController;
  v3 = [(MUPlaceSectionController *)&v8 initWithMapItem:item];
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