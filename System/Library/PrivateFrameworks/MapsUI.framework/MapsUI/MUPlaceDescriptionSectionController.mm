@interface MUPlaceDescriptionSectionController
- (MUPlaceDescriptionSectionController)initWithMapItem:(id)item configuration:(id)configuration;
- (MUPlaceDescriptionSectionControllerDelegate)actionDelegate;
- (id)infoCardChildPossibleActions;
- (id)sectionFooterViewModel;
- (id)sectionHeaderViewModel;
- (void)_attributionTapped;
- (void)_setupTextBlurb;
@end

@implementation MUPlaceDescriptionSectionController

- (MUPlaceDescriptionSectionControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (id)infoCardChildPossibleActions
{
  attribution = [(MUPlaceDescriptionConfiguration *)self->_configuration attribution];

  if (attribution)
  {
    return &unk_1F450E380;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)_attributionTapped
{
  attribution = [(MUPlaceDescriptionConfiguration *)self->_configuration attribution];
  providerID = [attribution providerID];
  mapItem = [(MUPlaceSectionController *)self mapItem];
  _reviewsAttribution = [mapItem _reviewsAttribution];
  providerID2 = [_reviewsAttribution providerID];
  [(MUPlaceSectionController *)self captureInfoCardAction:6020 eventValue:providerID feedbackType:0 actionRichProviderId:providerID2 classification:0];

  actionDelegate = [(MUPlaceDescriptionSectionController *)self actionDelegate];
  [actionDelegate placeDescriptionSectionControllerDidTapAttribution:self];
}

- (id)sectionFooterViewModel
{
  attribution = [(MUPlaceDescriptionConfiguration *)self->_configuration attribution];

  if (attribution)
  {
    footerViewModel = self->_footerViewModel;
    if (!footerViewModel)
    {
      attribution2 = [(MUPlaceDescriptionConfiguration *)self->_configuration attribution];
      v6 = [MUPlaceFooterAtributionViewModel viewModelForGeoMapItemAttribution:attribution2];
      v7 = self->_footerViewModel;
      self->_footerViewModel = v6;

      objc_initWeak(&location, self);
      v8 = self->_footerViewModel;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __61__MUPlaceDescriptionSectionController_sectionFooterViewModel__block_invoke;
      v11[3] = &unk_1E821BAC8;
      objc_copyWeak(&v12, &location);
      [(MUPlaceSectionFooterViewModel *)v8 setActionBlock:v11];
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
      footerViewModel = self->_footerViewModel;
    }

    v9 = footerViewModel;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __61__MUPlaceDescriptionSectionController_sectionFooterViewModel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _attributionTapped];
    WeakRetained = v2;
  }
}

- (id)sectionHeaderViewModel
{
  if ([(MUPlaceDescriptionConfiguration *)self->_configuration showSectionTitle])
  {
    v2 = [MUPlaceSectionHeaderViewModel alloc];
    v3 = _MULocalizedStringFromThisBundle(@"About [Placecard]");
    v4 = [(MUPlaceSectionHeaderViewModel *)v2 initWithTitleString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setupTextBlurb
{
  v3 = [MUExpandableBlurbView alloc];
  v4 = [(MUExpandableBlurbView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  blurbView = self->_blurbView;
  self->_blurbView = v4;

  textBlockText = [(MUPlaceDescriptionConfiguration *)self->_configuration textBlockText];
  [(MUExpandableBlurbView *)self->_blurbView setText:textBlockText];

  objc_initWeak(&location, self);
  v7 = self->_blurbView;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __54__MUPlaceDescriptionSectionController__setupTextBlurb__block_invoke;
  v16 = &unk_1E821BAC8;
  objc_copyWeak(&v17, &location);
  [(MUExpandableBlurbView *)v7 setResizeBlock:&v13];
  v8 = self->_blurbView;
  v9 = [(MUPlaceDescriptionSectionController *)self sectionHeaderViewModel:v13];
  sectionFooterViewModel = [(MUPlaceDescriptionSectionController *)self sectionFooterViewModel];
  v11 = [MUPlaceSectionView insetTextSectionViewForContentView:v8 sectionHeaderViewModel:v9 sectionFooterViewModel:sectionFooterViewModel];
  sectionView = self->_sectionView;
  self->_sectionView = v11;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __54__MUPlaceDescriptionSectionController__setupTextBlurb__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained delegate];
    v4 = [v3 placeSectionControllerRequestsRootView:v2];

    v5 = MEMORY[0x1E69DD250];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__MUPlaceDescriptionSectionController__setupTextBlurb__block_invoke_2;
    v8[3] = &unk_1E821A268;
    v9 = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__MUPlaceDescriptionSectionController__setupTextBlurb__block_invoke_3;
    v7[3] = &unk_1E821A1F0;
    v7[4] = v2;
    v6 = v4;
    [v5 animateWithDuration:4 delay:v8 options:v7 animations:0.3 completion:0.0];
  }
}

void __54__MUPlaceDescriptionSectionController__setupTextBlurb__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 placeSectionControllerRequestsLayoutChange:*(a1 + 32)];
}

- (MUPlaceDescriptionSectionController)initWithMapItem:(id)item configuration:(id)configuration
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = MUPlaceDescriptionSectionController;
  v8 = [(MUPlaceSectionController *)&v13 initWithMapItem:item];
  if (v8)
  {
    v9 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v9))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlaceDescriptionSectionControllerInit", "", v12, 2u);
    }

    objc_storeStrong(&v8->_configuration, configuration);
    [(MUPlaceDescriptionSectionController *)v8 _setupTextBlurb];
    v10 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v10))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlaceDescriptionSectionControllerInit", "", v12, 2u);
    }
  }

  return v8;
}

@end