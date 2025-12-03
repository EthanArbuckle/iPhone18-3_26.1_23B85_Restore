@interface MUPlaceInlineMapSectionController
- (MUPlaceInlineMapSectionController)initWithMapItem:(id)item configuration:(id)configuration;
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (UIView)sectionView;
- (UIViewController)sectionViewController;
- (void)_setupInlineMap;
@end

@implementation MUPlaceInlineMapSectionController

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  if (([(MKPlaceInlineMapViewControllerConfiguration *)self->_configuration suppressSectionHeader]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    v3 = [MUPlaceSectionHeaderViewModel alloc];
    v4 = _MULocalizedStringFromThisBundle(@"Maps [Inline Map Title]");
    v2 = [(MUPlaceSectionHeaderViewModel *)v3 initWithTitleString:v4];
  }

  return v2;
}

- (UIViewController)sectionViewController
{
  inlineMapViewController = self->_inlineMapViewController;
  if (!inlineMapViewController)
  {
    inlineMapViewController = self->_poiInlineMapViewController;
  }

  v3 = inlineMapViewController;

  return v3;
}

- (UIView)sectionView
{
  sectionView = self->_sectionView;
  if (sectionView)
  {
    v3 = sectionView;
  }

  else
  {
    inlineMapViewController = self->_inlineMapViewController;
    if (!inlineMapViewController)
    {
      inlineMapViewController = self->_poiInlineMapViewController;
    }

    view = [(MKPlaceInlineMapViewController *)inlineMapViewController view];
    [view setPreservesSuperviewLayoutMargins:0];
    v7 = [MUPlaceSectionView alloc];
    sectionHeaderViewModel = [(MUPlaceInlineMapSectionController *)self sectionHeaderViewModel];
    v9 = [(MUPlaceSectionView *)v7 initWithStyle:2 sectionHeaderViewModel:sectionHeaderViewModel];
    v10 = self->_sectionView;
    self->_sectionView = v9;

    [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
    [(MUPlaceSectionView *)self->_sectionView attachViewToContentView:view];
    v3 = self->_sectionView;
  }

  return v3;
}

- (void)_setupInlineMap
{
  v3 = MEMORY[0x1E696F328];
  mapItem = [(MUPlaceSectionController *)self mapItem];
  v5 = [v3 inlineMapWithMapItem:mapItem configuration:self->_configuration];
  inlineMapViewController = self->_inlineMapViewController;
  self->_inlineMapViewController = v5;

  [(MKPlaceInlineMapViewController *)self->_inlineMapViewController setBottomHairlineHidden:1];
  [(MKPlaceInlineMapViewController *)self->_inlineMapViewController setDelegate:self];
  v7 = MEMORY[0x1E696F338];
  mapItem2 = [(MUPlaceSectionController *)self mapItem];
  v9 = [v7 inlineMapWithMapItem:mapItem2 configuration:self->_configuration];
  poiInlineMapViewController = self->_poiInlineMapViewController;
  self->_poiInlineMapViewController = v9;

  v11 = self->_poiInlineMapViewController;

  [(MKPlacePoisInlineMapViewController *)v11 setBottomHairlineHidden:1];
}

- (MUPlaceInlineMapSectionController)initWithMapItem:(id)item configuration:(id)configuration
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = MUPlaceInlineMapSectionController;
  v8 = [(MUPlaceSectionController *)&v13 initWithMapItem:item];
  if (v8)
  {
    v9 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v9))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlaceInlineMapSectionControllerInit", "", v12, 2u);
    }

    objc_storeStrong(&v8->_configuration, configuration);
    [(MUPlaceInlineMapSectionController *)v8 _setupInlineMap];
    v10 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v10))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlaceInlineMapSectionControllerInit", "", v12, 2u);
    }
  }

  return v8;
}

@end