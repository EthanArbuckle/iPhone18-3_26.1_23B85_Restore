@interface MUAmenitiesSectionController
- (MUAmenitiesSectionController)initWithMapItem:(id)a3 moduleConiguration:(id)a4;
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (id)infoCardChildUnactionableUIElements;
- (void)_setupAmenitiyRows;
@end

@implementation MUAmenitiesSectionController

- (id)infoCardChildUnactionableUIElements
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 addObject:&unk_1F450DC28];
  v4 = [(MUPlaceSectionController *)self mapItem];
  if ([v4 hasAmenityType:21])
  {
    v5 = [(MUPlaceSectionController *)self mapItem];
    v6 = [v5 valueForAmenityType:21];

    if (v6)
    {
      [v3 addObject:&unk_1F450DC40];
    }
  }

  else
  {
  }

  v7 = [v3 copy];

  return v7;
}

- (void)_setupAmenitiyRows
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MUAmenityListSectionConfiguration);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [(GEOBusinessInfoModuleConfiguration *)self->_moduleConfig factoidItemIndexes];
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        v11 = [(MUPlaceSectionController *)self mapItem];
        v12 = [v11 _encyclopedicInfo];
        v13 = [v12 factoidAtIndex:{objc_msgSend(v10, "intValue")}];

        if (v13)
        {
          [v4 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v7);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = [(MUPlaceSectionController *)self mapItem];
  v15 = [v14 _amenities];

  v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v31;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v30 + 1) + 8 * j);
        if ([v21 isApplePayAmenity])
        {
          v22 = v21;

          v18 = v22;
        }

        else
        {
          [v4 addObject:v21];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  [(MUAmenityListSectionConfiguration *)v3 setNumberInlineAmenities:GEOConfigGetUInteger()];
  v23 = [v4 copy];
  [(MUAmenityListSectionConfiguration *)v3 setViewModels:v23];

  if (v18)
  {
    v24 = [MUAmenityApplePayConfiguration configurationFromAmenityItem:v18];
    [(MUAmenityListSectionConfiguration *)v3 setApplePayConfiguration:v24];
  }

  v25 = [[MUAmenityListSectionView alloc] initWithAmenityListConfiguration:v3];
  [(MUStackView *)v25 setSpacing:8.0];
  [(MUStackView *)v25 setContentEdgeInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  v26 = [(MUAmenitiesSectionController *)self sectionHeaderViewModel];
  v27 = [MUPlaceSectionView insetTextSectionViewForContentView:v25 sectionHeaderViewModel:v26 sectionFooterViewModel:0];
  sectionView = self->_sectionView;
  self->_sectionView = v27;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
  v29 = *MEMORY[0x1E69E9840];
}

- (MUAmenitiesSectionController)initWithMapItem:(id)a3 moduleConiguration:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MUAmenitiesSectionController;
  v8 = [(MUPlaceSectionController *)&v13 initWithMapItem:a3];
  if (v8)
  {
    v9 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v9))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUAmenitiesSectionControllerInit", "", v12, 2u);
    }

    objc_storeStrong(&v8->_moduleConfig, a4);
    [(MUAmenitiesSectionController *)v8 _setupAmenitiyRows];
    v10 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v10))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUAmenitiesSectionControllerInit", "", v12, 2u);
    }
  }

  return v8;
}

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  sectionHeaderViewModel = self->_sectionHeaderViewModel;
  if (!sectionHeaderViewModel)
  {
    v4 = [MUPlaceSectionHeaderViewModel alloc];
    v5 = _MULocalizedStringFromThisBundle(@"Good to Know [Placecard]");
    v6 = [(MUPlaceSectionHeaderViewModel *)v4 initWithTitleString:v5];
    v7 = self->_sectionHeaderViewModel;
    self->_sectionHeaderViewModel = v6;

    sectionHeaderViewModel = self->_sectionHeaderViewModel;
  }

  return sectionHeaderViewModel;
}

@end