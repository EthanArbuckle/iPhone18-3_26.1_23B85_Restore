@interface MUPlaceRibbonSectionController
- (BOOL)_supportsAddRatingsCallToAction;
- (MUPlaceRibbonSectionController)initWithMapItem:(id)item configuration:(id)configuration;
- (MUPlaceRibbonSectionControllerDelegate)ribbonDelegate;
- (void)_setupRibbonView;
- (void)_updateWithPreviousState:(BOOL)state;
- (void)buildContent;
- (void)ribbonView:(id)view didTapItemWithViewModel:(id)model withPresentationOptions:(id)options;
@end

@implementation MUPlaceRibbonSectionController

- (MUPlaceRibbonSectionControllerDelegate)ribbonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_ribbonDelegate);

  return WeakRetained;
}

- (void)ribbonView:(id)view didTapItemWithViewModel:(id)model withPresentationOptions:(id)options
{
  optionsCopy = options;
  type = [model type];
  if (type == 2)
  {
    ribbonDelegate = [(MUPlaceRibbonSectionController *)self ribbonDelegate];
    [ribbonDelegate ribbonSectionControllerDidTapHours:self];
  }

  else
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    ribbonDelegate = [(MUPlaceRibbonSectionController *)self ribbonDelegate];
    submissionStatus = [(MUPlaceRibbonSectionController *)self submissionStatus];
    [ribbonDelegate ribbonSectionControllerDidTapAddRatings:self initialRatingState:objc_msgSend(submissionStatus withPresentationOptions:{"ratingState"), optionsCopy}];
  }

LABEL_6:
}

- (void)_updateWithPreviousState:(BOOL)state
{
  stateCopy = state;
  v11 = *MEMORY[0x1E69E9840];
  if ([(MUPlaceRibbonSectionController *)self hasContent]!= state)
  {
    v5 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109376;
      v8[1] = stateCopy;
      v9 = 1024;
      hasContent = [(MUPlaceRibbonSectionController *)self hasContent];
      _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_INFO, "MUPlaceHeaderButtonsSectionController: hasContent changed from %d to %d, will tell parent to update.", v8, 0xEu);
    }

    delegate = [(MUPlaceSectionController *)self delegate];
    [delegate placeSectionControllerDidUpdateContent:self];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)_supportsAddRatingsCallToAction
{
  availability = [(MUPlaceRibbonSectionControllerConfiguration *)self->_configuration availability];
  supportsPhotoOnlyDataCollection = [availability supportsPhotoOnlyDataCollection];

  if (supportsPhotoOnlyDataCollection)
  {
    return 0;
  }

  availability2 = [(MUPlaceRibbonSectionControllerConfiguration *)self->_configuration availability];
  supportsCallToAction = [availability2 supportsCallToAction];

  return supportsCallToAction;
}

- (void)buildContent
{
  v86 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__MUPlaceRibbonSectionController_buildContent__block_invoke;
  aBlock[3] = &unk_1E8219398;
  v4 = v3;
  v79 = v4;
  v5 = _Block_copy(aBlock);
  mapItem = [(MUPlaceSectionController *)self mapItem];
  ribbonConfig = [(MUPlaceRibbonSectionController *)self ribbonConfig];

  if (ribbonConfig)
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    ribbonConfig2 = [(MUPlaceRibbonSectionController *)self ribbonConfig];
    ribbonItems = [ribbonConfig2 ribbonItems];

    v10 = [ribbonItems countByEnumeratingWithState:&v74 objects:v85 count:16];
    if (v10)
    {
      v11 = v10;
      v69 = mapItem;
      v67 = v4;
      v12 = *v75;
      selfCopy = self;
      while (1)
      {
        v13 = 0;
        do
        {
          if (*v75 != v12)
          {
            objc_enumerationMutation(ribbonItems);
          }

          v14 = *(*(&v74 + 1) + 8 * v13);
          isValid = [v14 isValid];
          v16 = MUGetPlaceCardLog();
          v17 = v16;
          if ((isValid & 1) == 0)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v26 = [v14 type] - 1;
              v27 = @"RIBBON_ITEM_TYPE_UNKNOWN";
              if (v26 <= 0xA)
              {
                v27 = off_1E82193B8[v26];
              }

              *buf = 138412546;
              v82 = v14;
              v83 = 2112;
              v84 = v27;
              _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_ERROR, "Ribbon item %@ of type %@ is invalid", buf, 0x16u);
            }

            goto LABEL_20;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            type = [v14 type];
            *buf = 67109120;
            LODWORD(v82) = type;
            _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_INFO, "Creating a ribbon from ribbon type %d", buf, 8u);
          }

          type2 = [v14 type];
          if (type2 <= 4)
          {
            if (type2 > 1)
            {
              if (type2 != 2)
              {
                if (type2 == 3)
                {
                  amenityItem = [v14 amenityItem];
                  v32 = [MUPlaceRibbonItemViewModel amenityItemViewForMapItem:v69 amenityItemConfiguration:amenityItem];
                  v5[2](v5, v32);

                  goto LABEL_44;
                }

                v28 = [MUPlaceRibbonItemViewModel costItemViewForMapItem:v69];
LABEL_43:
                amenityItem = v28;
                v5[2](v5, v28);
                goto LABEL_44;
              }

              v37 = [[MUPlaceRatingRibbonViewModel alloc] initWithMapItem:v69];
              v24 = 96;
              ratingViewModel = self->_ratingViewModel;
              self->_ratingViewModel = v37;

              goto LABEL_49;
            }

            if (type2)
            {
              if (type2 != 1)
              {
                goto LABEL_50;
              }

              v28 = [MUPlaceRibbonItemViewModel hoursItemViewModelForMapItem:v69];
              goto LABEL_43;
            }

            v31 = MUGetPlaceCardLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v82 = v14;
              _os_log_impl(&dword_1C5620000, v31, OS_LOG_TYPE_ERROR, "Encountered a ribbon item %@ with an unknown type", buf, 0xCu);
            }
          }

          else
          {
            if (type2 <= 8)
            {
              if (type2 == 5)
              {
                v28 = [MUPlaceRibbonItemViewModel guidesItemViewModelForMapItem:v69];
                goto LABEL_43;
              }

              if (type2 == 6)
              {
                mapItem2 = [(MUPlaceSectionController *)self mapItem];
                _encyclopedicInfo = [mapItem2 _encyclopedicInfo];
                factoidItem = [v14 factoidItem];
                v17 = [_encyclopedicInfo factoidAtIndex:{objc_msgSend(factoidItem, "indexWithinFactoidComponent")}];

                if (v17)
                {
                  v36 = [MUPlaceRibbonItemViewModel factoidItemForFactoid:v17];
                  v5[2](v5, v36);
                }

                else
                {
                  v36 = MUGetPlaceCardLog();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                  {
                    factoidItem2 = [v14 factoidItem];
                    indexWithinFactoidComponent = [factoidItem2 indexWithinFactoidComponent];
                    *buf = 67109120;
                    LODWORD(v82) = indexWithinFactoidComponent;
                    _os_log_impl(&dword_1C5620000, v36, OS_LOG_TYPE_ERROR, "Failed to find a factoid with index %d", buf, 8u);
                  }
                }

                self = selfCopy;

LABEL_20:
                goto LABEL_50;
              }

              if (type2 != 8)
              {
                goto LABEL_50;
              }

              v20 = [MUPlaceDistanceRibbonViewModel alloc];
              mapItem3 = [(MUPlaceSectionController *)self mapItem];
              etaProvider = [(MUPlaceRibbonSectionControllerConfiguration *)self->_configuration etaProvider];
              v23 = [(MUPlaceDistanceRibbonViewModel *)v20 initWithMapItem:mapItem3 etaProvider:etaProvider];
              v24 = 104;
              distanceViewModel = self->_distanceViewModel;
              self->_distanceViewModel = v23;

LABEL_48:
LABEL_49:
              v5[2](v5, *(&self->super.super.isa + v24));
              goto LABEL_50;
            }

            if (type2 == 9)
            {
              amenityItem = [(MUPlaceRibbonSectionControllerConfiguration *)self->_configuration availability];
              if (([amenityItem supportsEVCharging] & 1) == 0)
              {
                goto LABEL_44;
              }

              evChargerAvailabilityProvider = [(MUPlaceRibbonSectionControllerConfiguration *)self->_configuration evChargerAvailabilityProvider];

              if (evChargerAvailabilityProvider)
              {
                v40 = [MUPlaceRibbonEVChargingViewModel alloc];
                mapItem3 = [(MUPlaceRibbonSectionControllerConfiguration *)self->_configuration evChargerAvailabilityProvider];
                v41 = [(MUPlaceRibbonEVChargingViewModel *)v40 initWithAvailabilityProvider:mapItem3];
                v24 = 112;
                evChargingViewModel = self->_evChargingViewModel;
                self->_evChargingViewModel = v41;

                goto LABEL_48;
              }
            }

            else
            {
              if (type2 == 10)
              {
                if (!MapsFeature_IsEnabled_ExpertPartners())
                {
                  goto LABEL_50;
                }

                v28 = [MUPlaceRibbonItemViewModel accoladesItemViewModelForMapItem:v69];
                goto LABEL_43;
              }

              if (type2 == 11 && MapsFeature_IsEnabled_ApplePayEnhancementsEnabled())
              {
                amenityItem = [v14 contactlessPaymentsItem];
                v30 = [MUPlaceRibbonItemViewModel acceptsPaymentsViewForMapItem:v69 contactlessPaymentsRibbonItem:amenityItem];
                v5[2](v5, v30);

LABEL_44:
              }
            }
          }

LABEL_50:
          ++v13;
        }

        while (v11 != v13);
        v45 = [ribbonItems countByEnumeratingWithState:&v74 objects:v85 count:16];
        v11 = v45;
        if (!v45)
        {
          v4 = v67;
          goto LABEL_65;
        }
      }
    }
  }

  else
  {
    v46 = [MUPlaceRibbonItemViewModel hoursItemViewModelForMapItem:mapItem];
    v5[2](v5, v46);

    v47 = [[MUPlaceRatingRibbonViewModel alloc] initWithMapItem:mapItem];
    v48 = self->_ratingViewModel;
    self->_ratingViewModel = v47;

    v5[2](v5, self->_ratingViewModel);
    v49 = [MUPlaceRibbonItemViewModel guidesItemViewModelForMapItem:mapItem];
    v5[2](v5, v49);

    v50 = [MUPlaceRibbonItemViewModel costItemViewForMapItem:mapItem];
    v5[2](v5, v50);

    v69 = mapItem;
    v51 = [MUPlaceRibbonItemViewModel amenityItemViewForMapItem:mapItem amenityItemConfiguration:0];
    v5[2](v5, v51);

    v52 = [MUPlaceDistanceRibbonViewModel alloc];
    mapItem4 = [(MUPlaceSectionController *)self mapItem];
    etaProvider2 = [(MUPlaceRibbonSectionControllerConfiguration *)self->_configuration etaProvider];
    v55 = [(MUPlaceDistanceRibbonViewModel *)v52 initWithMapItem:mapItem4 etaProvider:etaProvider2];
    v56 = self->_distanceViewModel;
    self->_distanceViewModel = v55;

    v5[2](v5, self->_distanceViewModel);
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    mapItem5 = [(MUPlaceSectionController *)self mapItem];
    _geoMapItem = [mapItem5 _geoMapItem];
    _encyclopedicInfo2 = [_geoMapItem _encyclopedicInfo];
    ribbonItems = [_encyclopedicInfo2 factoids];

    v60 = [ribbonItems countByEnumeratingWithState:&v70 objects:v80 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = v4;
      v63 = *v71;
      do
      {
        for (i = 0; i != v61; ++i)
        {
          if (*v71 != v63)
          {
            objc_enumerationMutation(ribbonItems);
          }

          v65 = [MUPlaceRibbonItemViewModel factoidItemForFactoid:*(*(&v70 + 1) + 8 * i)];
          v5[2](v5, v65);
        }

        v61 = [ribbonItems countByEnumeratingWithState:&v70 objects:v80 count:16];
      }

      while (v61);
      v4 = v62;
    }

LABEL_65:
    mapItem = v69;
  }

  [(MUPlaceRibbonView *)self->_ribbonView setViewModels:v4];
  v66 = *MEMORY[0x1E69E9840];
}

uint64_t __46__MUPlaceRibbonSectionController_buildContent__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

- (void)_setupRibbonView
{
  v3 = [MUPlaceRibbonView alloc];
  v4 = [(MUPlaceRibbonView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  ribbonView = self->_ribbonView;
  self->_ribbonView = v4;

  [(MUPlaceRibbonView *)self->_ribbonView setDelegate:self];
  [(MUPlaceRibbonView *)self->_ribbonView setAnalyticsDelegate:self];
  v6 = [[MUPlaceSectionView alloc] initWithStyle:0 alwaysHideSeparators:1];
  sectionView = self->_sectionView;
  self->_sectionView = v6;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
  [(MUPlaceSectionView *)self->_sectionView attachViewToContentView:self->_ribbonView];

  [(MUPlaceRibbonSectionController *)self buildContent];
}

- (MUPlaceRibbonSectionController)initWithMapItem:(id)item configuration:(id)configuration
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = MUPlaceRibbonSectionController;
  v8 = [(MUPlaceSectionController *)&v13 initWithMapItem:item];
  if (v8)
  {
    v9 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v9))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlaceRibbonSectionControllerInit", "", v12, 2u);
    }

    objc_storeStrong(&v8->_configuration, configuration);
    [(MUPlaceRibbonSectionController *)v8 _setupRibbonView];
    v10 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v10))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlaceRibbonSectionControllerInit", "", v12, 2u);
    }
  }

  return v8;
}

@end