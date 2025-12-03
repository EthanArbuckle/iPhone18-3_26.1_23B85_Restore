@interface MUPlaceListItemSectionController
- (MUPlaceListItemSectionController)initWithMapItem:(id)item annotatedList:(id)list;
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (void)_performPunchout;
- (void)_setupSubviews;
@end

@implementation MUPlaceListItemSectionController

- (void)_performPunchout
{
  v12 = *MEMORY[0x1E69E9840];
  [(MUPlaceListItemSectionController *)self _captureUserAction:6054];
  v3 = self->_annotatedList;
  v4 = mkAttributionForAnnotatedList();
  v5 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    providerName = [v4 providerName];
    v10 = 138412290;
    v11 = providerName;
    _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_INFO, "Attempting to punch our with attribution with provider %@", &v10, 0xCu);
  }

  v7 = MEMORY[0x1E696F198];
  attributionURLs = [v4 attributionURLs];
  [v7 launchAttributionURLs:attributionURLs withAttribution:v4 completionHandler:&__block_literal_global_23963];

  v9 = *MEMORY[0x1E69E9840];
}

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  sectionHeaderViewModel = self->_sectionHeaderViewModel;
  if (!sectionHeaderViewModel)
  {
    annotatedList = self->_annotatedList;
    selfCopy = self;
    v6 = annotatedList;
    v7 = mkAttributionForAnnotatedList();
    title = [(GEOAnnotatedItemList *)v6 title];
    v9 = [MUPlaceSectionHeaderViewModel viewModelForTitle:title attribution:v7 target:selfCopy action:sel__performPunchout];

    [(MUPlaceSectionHeaderViewModel *)v9 setTarget:selfCopy selector:sel__performPunchout];
    v10 = self->_sectionHeaderViewModel;
    self->_sectionHeaderViewModel = v9;

    sectionHeaderViewModel = self->_sectionHeaderViewModel;
  }

  return sectionHeaderViewModel;
}

- (void)_setupSubviews
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  textItemContainer = [(GEOAnnotatedItemList *)self->_annotatedList textItemContainer];
  textItems = [textItemContainer textItems];
  v6 = [v3 initWithCapacity:{objc_msgSend(textItems, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  textItemContainer2 = [(GEOAnnotatedItemList *)self->_annotatedList textItemContainer];
  textItems2 = [textItemContainer2 textItems];

  v9 = [textItems2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(textItems2);
        }

        primaryText = [*(*(&v23 + 1) + 8 * v12) primaryText];
        [v6 addObject:primaryText];

        ++v12;
      }

      while (v10 != v12);
      v10 = [textItems2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v14 = [MUTextPairViewModel textPairViewModelsFromStrings:v6];
  v15 = [MUTextPairVerticalCardView alloc];
  v16 = [(MUTextPairVerticalCardView *)v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  textVerticalCardView = self->_textVerticalCardView;
  self->_textVerticalCardView = v16;

  [(MUTextPairVerticalCardView *)self->_textVerticalCardView setViewModels:v14];
  v18 = self->_textVerticalCardView;
  sectionHeaderViewModel = [(MUPlaceListItemSectionController *)self sectionHeaderViewModel];
  v20 = [MUPlaceSectionView insetTextSectionViewForContentView:v18 sectionHeaderViewModel:sectionHeaderViewModel sectionFooterViewModel:0];
  sectionView = self->_sectionView;
  self->_sectionView = v20;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
  v22 = *MEMORY[0x1E69E9840];
}

- (MUPlaceListItemSectionController)initWithMapItem:(id)item annotatedList:(id)list
{
  listCopy = list;
  v13.receiver = self;
  v13.super_class = MUPlaceListItemSectionController;
  v8 = [(MUPlaceSectionController *)&v13 initWithMapItem:item];
  if (v8)
  {
    v9 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v9))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlaceListItemSectionControllerInit", "", v12, 2u);
    }

    objc_storeStrong(&v8->_annotatedList, list);
    [(MUPlaceListItemSectionController *)v8 _setupSubviews];
    v10 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v10))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlaceListItemSectionControllerInit", "", v12, 2u);
    }
  }

  return v8;
}

@end