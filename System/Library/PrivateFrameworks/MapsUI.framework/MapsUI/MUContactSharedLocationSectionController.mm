@interface MUContactSharedLocationSectionController
- (MUContactSharedLocationSectionController)initWithPlaceItem:(id)item availability:(id)availability;
- (MUContactSharedLocationSectionControllerDelegate)contactSharedLocationSectionDelegate;
- (NSArray)sectionViews;
- (id)_loadPlaceInfoAddress:(id)address contact:(id)contact;
- (id)draggableContent;
- (id)mapItemCoordinateViewModel;
- (void)_buildSections;
@end

@implementation MUContactSharedLocationSectionController

- (MUContactSharedLocationSectionControllerDelegate)contactSharedLocationSectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contactSharedLocationSectionDelegate);

  return WeakRetained;
}

- (id)mapItemCoordinateViewModel
{
  if ([(MUPlaceDataAvailability *)self->_availability supportsShowingCoordinates])
  {
    v3 = [MUCoordinateViewModel alloc];
    mapItem = [(MUPlaceSectionController *)self mapItem];
    v5 = [(MUCoordinateViewModel *)v3 initWithMapItem:mapItem isUserLocation:[(_MKPlaceItem *)self->_placeItem options]& 1];

    v6 = objc_alloc_init(MULabeledValueActionViewModel);
    titleString = [(MUCoordinateViewModel *)v5 titleString];
    [(MULabeledValueActionViewModel *)v6 setTitleString:titleString];

    valueString = [(MUCoordinateViewModel *)v5 valueString];
    [(MULabeledValueActionViewModel *)v6 setValueString:valueString];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_loadPlaceInfoAddress:(id)address contact:(id)contact
{
  v36 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  contactCopy = contact;
  v8 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    identifier = [addressCopy identifier];
    *buf = 138412546;
    v33 = identifier;
    v34 = 2112;
    v35 = contactCopy;
    _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_DEBUG, "Building section view for address: %@, contact: %@", buf, 0x16u);
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__MUContactSharedLocationSectionController__loadPlaceInfoAddress_contact___block_invoke;
  aBlock[3] = &unk_1E821A330;
  v11 = v10;
  v31 = v11;
  v12 = _Block_copy(aBlock);
  v13 = [(MUContactsViewModelGenerator *)self->_contactViewModelGenerator viewModelForAddress:addressCopy];
  objc_initWeak(buf, self);
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __74__MUContactSharedLocationSectionController__loadPlaceInfoAddress_contact___block_invoke_2;
  v26 = &unk_1E821A358;
  objc_copyWeak(&v29, buf);
  v14 = addressCopy;
  v27 = v14;
  v15 = contactCopy;
  v28 = v15;
  v12[2](v12, v13, &v23);
  v16 = [(MUContactSharedLocationSectionController *)self mapItemCoordinateViewModel:v23];
  v12[2](v12, v16, 0);

  v17 = [MUPlaceInfoSectionView alloc];
  v18 = +[MUInfoCardStyle preferredVerticalCardConfiguration];
  v19 = [(MUPlaceVerticalCardContainerView *)v17 initWithConfiguration:v18];

  [(MUPlaceInfoSectionView *)v19 setAccessibilityIdentifier:@"PlaceDetailsInfo"];
  v20 = [v11 copy];
  [(MUPlaceInfoSectionView *)v19 setViewModels:v20];

  [(NSMutableArray *)self->_sectionStackViews addObject:v19];
  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);

  v21 = *MEMORY[0x1E69E9840];

  return v19;
}

void __74__MUContactSharedLocationSectionController__loadPlaceInfoAddress_contact___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v6 = a2;
    v5 = [a3 copy];
    [v6 setActionBlock:v5];

    [*(a1 + 32) addObject:v6];
  }
}

void __74__MUContactSharedLocationSectionController__loadPlaceInfoAddress_contact___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_alloc_init(MUPresentationOptions);
    v4 = [v5 contactSharedLocationSectionDelegate];
    [v4 contactSharedLocationSectionController:v5 selectedDirectionsWithAddress:*(a1 + 32) forContact:*(a1 + 40) options:v3];

    WeakRetained = v5;
  }
}

- (void)_buildSections
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sectionViews = self->_sectionViews;
  self->_sectionViews = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sectionStackViews = self->_sectionStackViews;
  self->_sectionStackViews = v5;

  contact = [(_MKPlaceItem *)self->_placeItem contact];
  if (contact && MapsFeature_IsEnabled_MapsWally() && [(_MKPlaceItem *)self->_placeItem representsPerson])
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    postalAddresses = [contact postalAddresses];
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(postalAddresses, "count")}];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __58__MUContactSharedLocationSectionController__buildSections__block_invoke;
    v21 = &unk_1E821A2B8;
    v22 = v8;
    selfCopy = self;
    v24 = contact;
    v25 = v10;
    v11 = v10;
    v12 = v8;
    [postalAddresses enumerateObjectsUsingBlock:&v18];
    v13 = [(MUContactsViewModelGenerator *)self->_contactViewModelGenerator sectionViewsFromContentViews:v12 headerLabels:v11, v18, v19, v20, v21];
    v14 = [v12 copy];
    v15 = self->_sectionStackViews;
    self->_sectionStackViews = v14;

    v16 = [v13 copy];
    v17 = self->_sectionViews;
    self->_sectionViews = v16;
  }
}

void __58__MUContactSharedLocationSectionController__buildSections__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 identifier];
  v4 = [MEMORY[0x1E695CD58] _mapkit_sharedLocationContactIdentifer];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) _loadPlaceInfoAddress:v10 contact:*(a1 + 48)];
    [v6 _mapsui_addObjectIfNotNil:v7];

    v8 = *(a1 + 56);
    v9 = [*(*(a1 + 40) + 104) headerLabelFromAddress:v10];
    [v8 addObject:v9];
  }
}

- (id)draggableContent
{
  firstObject = [(NSArray *)self->_sectionViews firstObject];
  v4 = MUIdiomInTraitEnvironment(firstObject);

  if (v4 == 5)
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sectionStackViews = self->_sectionStackViews;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__MUContactSharedLocationSectionController_draggableContent__block_invoke;
    v10[3] = &unk_1E821A420;
    v11 = v6;
    v8 = v6;
    [(NSMutableArray *)sectionStackViews enumerateObjectsUsingBlock:v10];
    v5 = [v8 copy];
  }

  return v5;
}

uint64_t __60__MUContactSharedLocationSectionController_draggableContent__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 draggableContent];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObjectsFromArray:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (NSArray)sectionViews
{
  v2 = [(NSArray *)self->_sectionViews copy];

  return v2;
}

- (MUContactSharedLocationSectionController)initWithPlaceItem:(id)item availability:(id)availability
{
  itemCopy = item;
  availabilityCopy = availability;
  mapItem = [itemCopy mapItem];
  v20.receiver = self;
  v20.super_class = MUContactSharedLocationSectionController;
  v10 = [(MUPlaceSectionController *)&v20 initWithMapItem:mapItem];

  if (v10)
  {
    v11 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v11))
    {
      *v19 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUContactSharedLocationSectionController", "", v19, 2u);
    }

    objc_storeStrong(&v10->_placeItem, item);
    objc_storeStrong(&v10->_availability, availability);
    contact = [(_MKPlaceItem *)v10->_placeItem contact];

    if (contact)
    {
      v13 = [MUContactsViewModelGenerator alloc];
      contact2 = [(_MKPlaceItem *)v10->_placeItem contact];
      v15 = [(MUContactsViewModelGenerator *)v13 initWithContact:contact2];
      contactViewModelGenerator = v10->_contactViewModelGenerator;
      v10->_contactViewModelGenerator = v15;
    }

    [(MUContactSharedLocationSectionController *)v10 _buildSections];
    v17 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v17))
    {
      *v19 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUContactSharedLocationSectionController", "", v19, 2u);
    }
  }

  return v10;
}

@end