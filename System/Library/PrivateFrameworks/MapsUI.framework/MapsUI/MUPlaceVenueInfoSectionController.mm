@interface MUPlaceVenueInfoSectionController
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (MUPlaceVenueInfoSectionController)initWithMapItem:(id)item;
- (void)_setupSectionView;
@end

@implementation MUPlaceVenueInfoSectionController

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  sectionHeaderViewModel = self->_sectionHeaderViewModel;
  if (!sectionHeaderViewModel)
  {
    v4 = [MUPlaceSectionHeaderViewModel alloc];
    mapItem = [(MUPlaceSectionController *)self mapItem];
    _venueInfo = [mapItem _venueInfo];
    contents = [_venueInfo contents];
    title = [contents title];
    v9 = [(MUPlaceSectionHeaderViewModel *)v4 initWithTitleString:title];
    v10 = self->_sectionHeaderViewModel;
    self->_sectionHeaderViewModel = v9;

    sectionHeaderViewModel = self->_sectionHeaderViewModel;
  }

  return sectionHeaderViewModel;
}

- (void)_setupSectionView
{
  mapItem = [(MUPlaceSectionController *)self mapItem];
  _venueInfo = [mapItem _venueInfo];
  contents = [_venueInfo contents];

  items = [contents items];
  v6 = [MUTextPairViewModel textPairViewModelsFromStrings:items];

  v7 = [MUTextPairVerticalCardView alloc];
  v8 = [(MUTextPairVerticalCardView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  contentView = self->_contentView;
  self->_contentView = v8;

  [(MUTextPairVerticalCardView *)self->_contentView setViewModels:v6];
  v10 = self->_contentView;
  sectionHeaderViewModel = [(MUPlaceVenueInfoSectionController *)self sectionHeaderViewModel];
  v12 = [MUPlaceSectionView insetTextSectionViewForContentView:v10 sectionHeaderViewModel:sectionHeaderViewModel sectionFooterViewModel:0];
  sectionView = self->_sectionView;
  self->_sectionView = v12;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
}

- (MUPlaceVenueInfoSectionController)initWithMapItem:(id)item
{
  v8.receiver = self;
  v8.super_class = MUPlaceVenueInfoSectionController;
  v3 = [(MUPlaceSectionController *)&v8 initWithMapItem:item];
  if (v3)
  {
    v4 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v4))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlaceVenueInfoSectionControllerInit", "", v7, 2u);
    }

    [(MUPlaceVenueInfoSectionController *)v3 _setupSectionView];
    v5 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v5))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlaceVenueInfoSectionControllerInit", "", v7, 2u);
    }
  }

  return v3;
}

@end